//! This file provides types to allow conversion from an EE `StoredValue` into a similar type
//! which can be serialized to a valid JSON representation.
use std::convert::TryFrom;

use serde::{Deserialize, Serialize};

use casper_execution_engine::shared::{
    account::Account, stored_value::StoredValue as ExecutionEngineStoredValue,
};
use casper_types::{
    bytesrepr::{self, ToBytes},
    CLValue, Transfer,
};

use super::DeployInfo;

/// Representation of a value stored in global state.
///
/// All variants other than `Account` are formed by serializing the variant using `ToBytes` and hex-
/// encoding the resulting byte string.
///
/// `Account` has its own `json_compatibility` representation (see its docs for further info).
#[derive(Clone, Eq, PartialEq, Serialize, Deserialize, Debug)]
pub enum StoredValue {
    /// A CasperLabs value.
    CLValue(CLValue),
    /// An account.
    Account(Account),
    /// A contract's Wasm
    ContractWasm(String),
    /// Methods and type signatures supported by a contract.
    Contract(String),
    /// A contract definition, metadata, and security container.
    ContractPackage(String),
    /// A record of a transfer
    Transfer(Transfer),
    /// A record of a deploy
    DeployInfo(DeployInfo),
}

impl TryFrom<&ExecutionEngineStoredValue> for StoredValue {
    type Error = bytesrepr::Error;

    fn try_from(ee_stored_value: &ExecutionEngineStoredValue) -> Result<Self, Self::Error> {
        let stored_value = match ee_stored_value {
            ExecutionEngineStoredValue::CLValue(cl_value) => StoredValue::CLValue(cl_value.clone()),
            ExecutionEngineStoredValue::Account(account) => StoredValue::Account(account.clone()),
            ExecutionEngineStoredValue::ContractWasm(contract_wasm) => {
                StoredValue::ContractWasm(hex::encode(&contract_wasm.to_bytes()?))
            }
            ExecutionEngineStoredValue::Contract(contract) => {
                StoredValue::Contract(hex::encode(&contract.to_bytes()?))
            }
            ExecutionEngineStoredValue::ContractPackage(contract_package) => {
                StoredValue::ContractPackage(hex::encode(&contract_package.to_bytes()?))
            }
            ExecutionEngineStoredValue::Transfer(transfer) => StoredValue::Transfer(*transfer),
            ExecutionEngineStoredValue::DeployInfo(deploy_info) => {
                StoredValue::DeployInfo(deploy_info.into())
            }
        };

        Ok(stored_value)
    }
}
