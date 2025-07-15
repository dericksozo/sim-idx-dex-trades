// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/DexTrades.sol";
import "./utils/ERC20Metadata.sol";

contract BancorCarbonListener is BancorController$OnTokensTradedEvent {
    event DexTrade(DexTradeData);

    function onTokensTradedEvent(EventContext memory ctx, BancorController$TokensTradedEventParams memory params)
        external
        override
    {
        (string memory sourceTokenName, string memory sourceTokenSymbol, uint256 sourceTokenDecimals) = params
            .sourceToken == 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE
            ? ("Ether", "ETH", 18)
            : getMetadata(params.sourceToken);
        (string memory targetTokenName, string memory targetTokenSymbol, uint256 targetTokenDecimals) = params
            .targetToken == 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE
            ? ("Ether", "ETH", 18)
            : getMetadata(params.targetToken);
        DexTradeData memory trade;
        trade.dex = "BancorCarbon";
        trade.fromToken = params.sourceToken;
        trade.fromTokenAmt = params.sourceAmount;
        trade.fromTokenName = sourceTokenName;
        trade.fromTokenSymbol = sourceTokenSymbol;
        trade.fromTokenDecimals = uint8(sourceTokenDecimals);
        trade.toToken = params.targetToken;
        trade.toTokenAmt = params.targetAmount;
        trade.toTokenName = targetTokenName;
        trade.toTokenSymbol = targetTokenSymbol;
        trade.toTokenDecimals = uint8(targetTokenDecimals);
        trade.chainId = uint64(block.chainid);
        trade.blockNumber = block.number;
        trade.blockTimestamp = block.timestamp;
        trade.transactionHash = ctx.txn.hash;
        trade.txnOriginator = tx.origin;
        trade.recipient = params.trader;
        trade.liquidityPool = ctx.txn.call.callee;

        emit DexTrade(trade);
    }
}
