// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/DexTrades.sol";
import "./utils/ERC20Metadata.sol";
import "./DexUtils.sol";
import "./interfaces/IDexListener.sol";

contract WooFiListener is WooSwap$OnWooSwapEvent, DexUtils, IDexListener {
    function WooSwap$onWooSwapEvent(EventContext memory ctx, WooSwap$WooSwapEventParams memory params)
        external
        override
    {
        (string memory baseTokenName, string memory baseTokenSymbol, uint256 baseTokenDecimals) =
            getMetadata(params.fromToken);
        (string memory quoteTokenName, string memory quoteTokenSymbol, uint256 quoteTokenDecimals) =
            getMetadata(params.toToken);
        DexTradeData memory trade;
        trade.fromToken = params.fromToken;
        trade.fromTokenName = baseTokenName;
        trade.fromTokenSymbol = baseTokenSymbol;
        trade.fromTokenDecimals = uint8(baseTokenDecimals);
        trade.toToken = params.toToken;
        trade.toTokenName = quoteTokenName;
        trade.toTokenSymbol = quoteTokenSymbol;
        trade.toTokenDecimals = uint8(quoteTokenDecimals);
        trade.dex = "WooFi";
        trade.fromTokenAmt = params.fromAmount;
        trade.toTokenAmt = params.toAmount;
        trade.chainId = uint64(block.chainid);
        trade.blockNumber = block.number;
        trade.blockTimestamp = block.timestamp;
        trade.transactionHash = ctx.txn.hash();
        trade.txnOriginator = tx.origin;
        trade.recipient = params.to;
        trade.liquidityPool = ctx.txn.call.callee();

        emit DexTrade(trade);
    }
}
