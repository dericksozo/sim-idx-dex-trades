// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-generated/Generated.sol";
import "./types/DexTrades.sol";
import "./utils/ERC20Metadata.sol";
import "./DexUtils.sol";
import {IVault} from "./interfaces/Balancer/BalancerInterfaces.sol";

contract BalancerV2Listener is Vault$PreSwapFunction, Vault$PreBatchSwapFunction, Vault$OnSwapEvent, DexUtils {
    address internal recipient;

    event DexTrade(DexTradeData);

    function Vault$preSwapFunction(PreFunctionContext memory, Vault$SwapFunctionInputs memory inputs)
        external
        override
    {
        recipient = inputs.funds.recipient;
    }

    function Vault$preBatchSwapFunction(PreFunctionContext memory, Vault$BatchSwapFunctionInputs memory inputs)
        external
        override
    {
        recipient = inputs.funds.recipient;
    }

    function Vault$onSwapEvent(EventContext memory ctx, Vault$SwapEventParams memory params) external override {
        (address pool,) = IVault(ctx.txn.call.callee).getPool(params.poolId);
        (string memory tokenInName, string memory tokenInSymbol, uint256 tokenInDecimals) = getMetadata(params.tokenIn);
        (string memory tokenOutName, string memory tokenOutSymbol, uint256 tokenOutDecimals) =
            getMetadata(params.tokenOut);
        DexTradeData memory trade;
        if (ctx.txn.call.callee == DexUtils.getBalancerV2Vault()) {
            trade.dex = "BalancerV2";
        } else if (ctx.txn.call.callee == DexUtils.getSwaapV2Vault()) {
            trade.dex = "SwaapV2";
        } else {
            return;
        }
        trade.fromToken = params.tokenIn;
        trade.fromTokenAmt = params.amountIn;
        trade.fromTokenName = tokenInName;
        trade.fromTokenSymbol = tokenInSymbol;
        trade.fromTokenDecimals = uint8(tokenInDecimals);
        trade.toToken = params.tokenOut;
        trade.toTokenAmt = params.amountOut;
        trade.toTokenName = tokenOutName;
        trade.toTokenSymbol = tokenOutSymbol;
        trade.toTokenDecimals = uint8(tokenOutDecimals);
        trade.chainId = uint64(block.chainid);
        trade.blockNumber = block.number;
        trade.blockTimestamp = block.timestamp;
        trade.transactionHash = ctx.txn.hash;
        trade.txnOriginator = tx.origin;
        trade.recipient = recipient;
        trade.liquidityPool = pool;

        emit DexTrade(trade);
    }
}
