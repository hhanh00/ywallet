use anyhow::Result;
use flutter_rust_bridge::frb;
use warp_api_ffi::{key2::is_valid_key, CoinConfig};

use crate::{
    frb_generated::StreamSink,
    types::{
        BlockHeight, Contact, KeyType, PaymentURI, PoolBalance, Progress, RaptorQResult, Spending,
        TxTimeValue,
    },
};

macro_rules! with_coin {
    ($coin: tt, $network: tt, $connection: ident, $body: expr) => {{
        let c = CoinConfig::get($coin);
        let $network = c.chain.network();
        let $connection = c.connection();
        $body
    }};
}

#[frb(sync)]
pub fn check_account(coin: u8, id: u32) -> bool {
    warp_api_ffi::api::account::check_account(coin, id)
}

#[frb(sync)]
pub fn get_first_account(coin: u8) -> Result<u32> {
    with_coin!(coin, _, connection, {
        warp_api_ffi::db::read::get_first_account(&connection)
    })
}

#[frb(sync)]
pub fn get_pool_balances(coin: u8, id: u32, confs: u32, unconfirmed: bool) -> Result<PoolBalance> {
    with_coin!(coin, network, connection, {
        let h = warp_api_ffi::db::read::get_db_height(network, &connection)?;
        let height = h.height - confs + 1;
        let balances =
            warp_api_ffi::scan::get_pool_balances_inner(&connection, id, height, unconfirmed)?;

        Ok(PoolBalance {
            transparent: balances.transparent,
            sapling: balances.sapling,
            orchard: balances.orchard,
        })
    })
}

#[frb(sync)]
pub fn get_diversified_address(coin: u8, id: u32, mask: u8, time: u32) -> Result<String> {
    warp_api_ffi::api::account::get_diversified_address(coin, id, mask, time)
}

pub fn get_spendings(coin: u8, id: u32, start: u32) -> Result<Vec<Spending>> {
    with_coin!(coin, _, connection, {
        let sp = warp_api_ffi::db::read::get_spendings(&connection, id, start)?;
        let sp = sp
            .into_iter()
            .map(|s| Spending {
                recipient: s.recipient.unwrap(),
                amount: s.amount,
            })
            .collect::<Vec<_>>();
        Ok(sp)
    })
}

pub fn get_pnl_txs(coin: u8, id: u32, start: u32) -> Result<Vec<TxTimeValue>> {
    with_coin!(coin, _, connection, {
        let txs = warp_api_ffi::db::read::get_pnl_txs(&connection, id, start)?;
        let txs = txs
            .into_iter()
            .map(|tx| TxTimeValue {
                timestamp: tx.timestamp,
                value: tx.value,
            })
            .collect::<Vec<_>>();
        Ok(txs)
    })
}

#[frb(sync)]
pub fn get_db_height(coin: u8) -> BlockHeight {
    BlockHeight {
        height: 0,
        timestamp: 0,
    }
}

pub fn get_latest_height(coin: u8) -> Result<u32> {
    with_coin!(coin, network, connection, {
        let h = warp_api_ffi::db::read::get_db_height(network, &connection)?;
        Ok(h.height)
    })
}

pub fn warp_sync(
    coin: u8,
    id: u32,
    inc_txs: bool,
    confs: u32,
    max_actions: u32,
    progress: StreamSink<Progress>,
) -> Result<()> {
    Ok(())
}

#[frb]
pub async fn rescan_from(coin: u8, height: u32) -> Result<u32> {
    warp_api_ffi::api::sync::rescan_from(coin, height).await
}

#[frb]
pub fn get_contacts(coin: u8) -> Result<Vec<Contact>> {
    with_coin!(coin, _, connection, {
        let mut stmt = connection.prepare("SELECT id, name, address FROM contacts WHERE address <> '' ORDER BY name")?;
        let rows = stmt.query_map([], |row| {
            Ok((
                row.get::<_, u32>("id")?,
                row.get::<_, String>("name")?,
                row.get::<_, String>("address")?,
            ))
        })?;
        let mut contacts = vec![];
        for r in rows {
            let (id, name, address) = r?;
            contacts.push(Contact { id, name, address });
        }
        Ok(contacts)
    })
}

#[frb(sync)]
pub fn store_contact(coin: u8, id: u32, contact: Contact, dirty: bool) -> Result<()> {
    warp_api_ffi::api::contact::store_contact(coin, id, &contact.name, &contact.address, dirty)
}

#[frb(sync)]
pub fn init_prover(spend: &[u8], output: &[u8]) {
    warp_api_ffi::coinconfig::init_prover(spend, output);
}

#[frb(sync)]
pub fn decode_payment_URI(coin: u8, uri: &str) -> Result<PaymentURI> {
    let p = warp_api_ffi::api::payment_uri::parse_payment_uri(coin, uri)?;
    Ok(PaymentURI {
        address: p.address,
        amount: p.amount,
        memo: p.memo,
    })
}

#[frb(sync)]
pub fn set_db_passwd(coin: u8, password: &str) {
    with_coin!(coin, _, connection, {
        warp_api_ffi::db::cipher::set_db_passwd(&connection, password);    
    });
}

#[frb(sync)]
pub fn init_wallet(coin: u8, path: &str) {
    warp_api_ffi::coinconfig::init_coin(coin, path);
}

#[frb(sync)]
pub fn get_property(coin: u8, name: &str) -> Option<String> {
    with_coin!(coin, _, connection, {
        warp_api_ffi::db::read::get_property(&connection, name).ok()
    })
}

#[frb(sync)]
pub fn update_lwd(coin: u8, url: &str) {
    warp_api_ffi::set_coin_lwd_url(coin, url);
}

#[frb(sync)]
pub fn split_data(id: u32, data: &[u8]) -> Result<Vec<String>> {
    let res = 
        warp_api_ffi::fountain::FountainCodes::encode_into_drops(id, data)?;
    let drops = res.drops.unwrap();
    Ok(drops)
}

#[frb(sync)]
pub fn get_key_type(key: &str) -> KeyType {
    // is_valid_key(coin, key)
    KeyType::default()
}

pub fn merge_data(drop: &[u8]) -> Option<RaptorQResult> {
    None
}

#[frb(sync)]
pub fn new_account(coin: u8, name: &str, key: &str, index: u32) -> Option<u32> {
    todo!()
}

#[frb(sync)]
pub fn count_accounts(coin: u8) -> u32 {
    0
}

pub fn skip_to_last_height(coin: u8) {}

#[frb(sync)]
pub fn get_available_addrs(coin: u8, id: u8) -> u8 {
    0
}

#[frb(sync)]
pub fn get_address(coin: u8, id: u8, ua: u8) -> String {
    String::new()
}

#[frb(sync)]
pub fn make_payment_uri(coin: u8, address: &str, amount: u64, memo: &str) -> String {
    String::new()
}

pub fn unzip_backup(backup: &str, db: &str) -> Result<()> {
    Ok(())
}
