// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import {DexTradeData} from "../types/DexTrades.sol";

interface IDexListener {
    /// @custom:index dex_trades_chainid_blocknumber_idx BTREE (chainId, blockNumber);
    /// @custom:index dex_trades_blocktimestamp_idx BTREE (blockTimestamp);
    event DexTrade(DexTradeData);
}
