use anyhow::Result;
use flutter_rust_bridge::frb;

use crate::{frb_generated::StreamSink, types::{BlockHeight, Contact, PaymentURI, PoolBalance, Progress, Spending, TxTimeValue}};

#[frb(sync)]
pub fn check_account(coin: u8, id: u8) -> bool {
    false
}

#[frb(sync)]
pub fn get_first_account(coin: u8) -> u8 {
    0
}

#[frb(sync)]
pub fn get_pool_balances(coin: u8, id: u32, confs: u32, unconfirmed: bool) -> PoolBalance {
    PoolBalance { transparent: 0, sapling: 0, orchard: 0 }
}

#[frb(sync)]
pub fn get_diversified_address(coin: u8, id: u32, mask: u8, time: u32) -> String {
    String::new()
}

pub fn get_spendings(coin: u8, id: u32, start: u32) -> Result<Vec<Spending>> {
    Ok(vec![])
}

pub fn get_pnl_txs(coin: u8, id: u32, start: u32) -> Result<Vec<TxTimeValue>> {
    Ok(vec![])
}

#[frb(sync)]
pub fn get_db_height(coin: u8) -> BlockHeight {
    BlockHeight {
        height: 0,
        timestamp: 0,
    }
}

pub fn get_latest_height(coin: u8) -> Result<u32> {
    Ok(0)
}

pub fn warp_sync(
    coin: u8,
    id: u32,
    inc_txs: bool,
    confs: u32,
    max_actions: u32,
    progress: StreamSink<Progress>
) -> Result<()> {
    Ok(())
}

#[frb(sync)]
pub fn rescan_from(coin: u8, height: u32) {}

pub fn get_contacts(coin: u8) -> Result<Vec<Contact>> {
    Ok(vec![])
}

#[frb(sync)]
pub fn store_contact(coin: u8, id: u32, contact: Contact, dirty: bool) -> Result<()> {
    Ok(())
}

#[frb(sync)]
pub fn init_prover(spend: &[u8], output: &[u8]) -> Result<()> {
    Ok(())
}

#[frb(sync)]
pub fn decode_payment_URI(coin: u8, uri: &str) -> Result<PaymentURI> {
    todo!()
}

#[frb(sync)]
pub fn set_db_passwd(coin: u8, password: &str) {}

#[frb(sync)]
pub fn init_wallet(coin: u8, path: &str) {}

#[frb(sync)]
pub fn get_property(coin: u8, name: &str) -> Option<String> {
    None
}

#[frb(sync)]
pub fn update_lwd(coin: u8, url: &str) {}

#[frb(sync)]
pub fn split_data(id: u32, data: &[u8]) -> Vec<String> {
    vec![]
}
