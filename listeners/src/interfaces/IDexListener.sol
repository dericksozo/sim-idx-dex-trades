// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {DexTradeData} from "../types/DexTrades.sol";

interface IDexListener {
    /// @custom:index dex_trades_chainid_blocktimestamp_idx BTREE (chainId, blockTimestamp);
    /// @custom:index dex_trades_blocktimestamp_idx BTREE (blockTimestamp);
    /// @custom:index dex_trades_chainid_dex_blocktimestamp_txhash_idx BTREE (chainId, dex, blockTimestamp, transactionHash);
    /// @custom:index dex_trades_dex_blocktimestamp_idx BTREE (dex, blockTimestamp);
    /// @custom:index dex_trades_transactionhash_idx BTREE (transactionHash);
    /// @custom:index dex_trades_liquiditypool_blocktimestamp_idx BTREE (liquidityPool, blockTimestamp);
    event DexTrade(DexTradeData);
}
