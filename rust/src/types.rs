use flutter_rust_bridge::frb;

#[frb(dart_metadata=("freezed"))]
pub struct Backup {
    pub name: String,
    pub seed: Option<String>,
    pub index: u32,
    pub sk: Option<String>,
    pub fvk: String,
    pub uvk: String,
    pub tsk: Option<String>,
    pub saved: bool,
}

#[frb(dart_metadata=("freezed"))]
pub struct PoolBalance {
    pub transparent: u64,
    pub sapling: u64,
    pub orchard: u64,
}

#[frb(dart_metadata=("freezed"))]
pub struct Spending {
    pub recipient: String,
    pub amount: i64,
}

#[frb(dart_metadata=("freezed"))]
pub struct TxTimeValue {
    pub timestamp: u32,
    pub value: i64,
}

#[frb(dart_metadata=("freezed"))]
pub struct Quote {
    pub timestamp: u32,
    pub price: f64,
}

#[frb(dart_metadata=("freezed"))]
pub struct Fee {
    pub scheme: u8,
    pub fee: u64,
}

#[frb(dart_metadata=("freezed"))]
pub struct BlockHeight {
    pub height: u32,
    pub timestamp: u32,
}

#[frb(dart_metadata=("freezed"))]
pub struct Progress {
    pub timestamp: u32,
    pub trial_decryptions: u32,
    pub height: u32,
    pub downloaded: u32,
}

#[frb(dart_metadata=("freezed"))]
pub struct Contact {
    pub id: u32,
    pub name: String,
    pub address: String,
}

#[frb(dart_metadata=("freezed"))]
pub struct TxMemo {
    pub direction: u8,
    pub address: String,
    pub memo: String,
}

#[frb(dart_metadata=("freezed"))]
pub struct ShieldedNote {
    pub id: u32,
    pub height: u32,
    pub value: u64,
    pub timestamp: u32,
    pub orchard: bool,
    pub excluded: bool,
    pub spent: bool,
}

#[frb(dart_metadata=("freezed"))]
pub struct ParsedMemo {
    pub reply: bool,
    pub subject: String,
    pub memo: String,
}

#[frb(dart_metadata=("freezed"))]
pub struct PaymentURI {
    pub address: String,
    pub amount: u64,
    pub memo: String,
}

#[frb(dart_metadata=("freezed"))]
pub struct SendContext {
    pub address: String,
    pub pools: u8,
    pub amount: u64,
    pub receiver_fee: bool,
    pub memo: ParsedMemo,
}

#[frb(dart_metadata=("freezed"))]
pub struct Recipient {
    pub address: String,
    pub pools: u8,
    pub amount: u64,
    pub message: ParsedMemo,
}

#[frb(dart_metadata=("freezed"))]
pub struct Amount {
    pub value: u64,
    pub deduct_fee: bool,
}

#[frb(dart_metadata=("freezed"))]
pub struct SwapAmount {
    pub amount: String,
    pub currency: String,
}

#[frb(dart_metadata=("freezed"))]
pub struct SwapQuote {
    pub estimated_amount: String,
    pub rate_id: String,
    pub valid_until: String,
}

#[frb(dart_metadata=("freezed"))]
pub struct SwapRequest {
    pub fixed: bool,
    pub rate_id: String,
    pub currency_from: String,
    pub currency_to: String,
    pub amount_from: f64,
    pub address_to: String,
}

#[frb(dart_metadata=("freezed"))]
pub struct SwapLeg {
    pub symbol: String,
    pub name: String,
    pub image: String,
    pub validation_address: String,
    pub address_explorer: String,
    pub tx_explorer: String,
}

#[frb(dart_metadata=("freezed"))]
pub struct SwapResponse {
    pub id: String,
    pub timestamp: String,
    pub currency_from: String,
    pub currency_to: String,
    pub amount_from: String,
    pub amount_to: String,
    pub address_from: String,
    pub address_to: String,
}

#[frb(dart_metadata=("freezed"))]
#[derive(Default)]
pub struct KeyType {
    pub pools: u8,
    pub secret: bool,
    pub diversified: bool,
}

#[frb(dart_metadata=("freezed"))]
pub struct RaptorQResult {
    pub progress: u8,
    pub total: u8,
    pub data: Vec<u8>,
}

#[frb(dart_metadata=("freezed"))]
pub struct SeedInfo {
    pub seed: String,
    pub index: u32,
}
