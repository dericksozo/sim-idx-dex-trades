// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function MaverickPool$Abi() pure returns (Abi memory) {
    return Abi("MaverickPool");
}
struct MaverickPool$IPool$AddLiquidityParams {
    uint8 kind;
    int32 pos;
    bool isDelta;
    uint128 deltaA;
    uint128 deltaB;
}

struct MaverickPool$AddLiquidityFunctionInputs {
    uint256 tokenId;
    MaverickPool$IPool$AddLiquidityParams[] params;
    bytes data;
}

struct MaverickPool$IPool$BinDelta {
    uint128 deltaA;
    uint128 deltaB;
    uint256 deltaLpBalance;
    uint128 binId;
    uint8 kind;
    int32 lowerTick;
    bool isActive;
}

struct MaverickPool$AddLiquidityFunctionOutputs {
    uint256 tokenAAmount;
    uint256 tokenBAmount;
    MaverickPool$IPool$BinDelta[] binDeltas;
}

struct MaverickPool$BalanceOfFunctionInputs {
    uint256 tokenId;
    uint128 binId;
}

struct MaverickPool$BalanceOfFunctionOutputs {
    uint256 lpToken;
}

struct MaverickPool$BinBalanceAFunctionOutputs {
    uint128 outArg0;
}

struct MaverickPool$BinBalanceBFunctionOutputs {
    uint128 outArg0;
}

struct MaverickPool$BinMapFunctionInputs {
    int32 tick;
}

struct MaverickPool$BinMapFunctionOutputs {
    uint256 outArg0;
}

struct MaverickPool$BinPositionsFunctionInputs {
    int32 tick;
    uint256 kind;
}

struct MaverickPool$BinPositionsFunctionOutputs {
    uint128 outArg0;
}

struct MaverickPool$FactoryFunctionOutputs {
    address outArg0;
}

struct MaverickPool$FeeFunctionOutputs {
    uint256 outArg0;
}

struct MaverickPool$GetBinFunctionInputs {
    uint128 binId;
}

struct MaverickPool$IPool$BinState {
    uint128 reserveA;
    uint128 reserveB;
    uint128 mergeBinBalance;
    uint128 mergeId;
    uint128 totalSupply;
    uint8 kind;
    int32 lowerTick;
}

struct MaverickPool$GetBinFunctionOutputs {
    MaverickPool$IPool$BinState bin;
}

struct MaverickPool$GetCurrentTwaFunctionOutputs {
    int256 outArg0;
}

struct MaverickPool$IPool$State {
    int32 activeTick;
    uint8 status;
    uint128 binCounter;
    uint64 protocolFeeRatio;
}

struct MaverickPool$GetStateFunctionOutputs {
    MaverickPool$IPool$State outArg0;
}

struct MaverickPool$IPool$TwaState {
    int96 twa;
    int96 value;
    uint64 lastTimestamp;
}

struct MaverickPool$GetTwaFunctionOutputs {
    MaverickPool$IPool$TwaState outArg0;
}

struct MaverickPool$LookbackFunctionOutputs {
    int256 outArg0;
}

struct MaverickPool$MigrateBinUpStackFunctionInputs {
    uint128 binId;
    uint32 maxRecursion;
}

struct MaverickPool$IPool$RemoveLiquidityParams {
    uint128 binId;
    uint128 amount;
}

struct MaverickPool$RemoveLiquidityFunctionInputs {
    address recipient;
    uint256 tokenId;
    MaverickPool$IPool$RemoveLiquidityParams[] params;
}

struct MaverickPool$RemoveLiquidityFunctionOutputs {
    uint256 tokenAOut;
    uint256 tokenBOut;
    MaverickPool$IPool$BinDelta[] binDeltas;
}

struct MaverickPool$SwapFunctionInputs {
    address recipient;
    uint256 amount;
    bool tokenAIn;
    bool exactOutput;
    uint256 sqrtPriceLimit;
    bytes data;
}

struct MaverickPool$SwapFunctionOutputs {
    uint256 amountIn;
    uint256 amountOut;
}

struct MaverickPool$TickSpacingFunctionOutputs {
    uint256 outArg0;
}

struct MaverickPool$TokenAFunctionOutputs {
    address outArg0;
}

struct MaverickPool$TokenAScaleFunctionOutputs {
    uint256 outArg0;
}

struct MaverickPool$TokenBFunctionOutputs {
    address outArg0;
}

struct MaverickPool$TokenBScaleFunctionOutputs {
    uint256 outArg0;
}

struct MaverickPool$TransferLiquidityFunctionInputs {
    uint256 fromTokenId;
    uint256 toTokenId;
    MaverickPool$IPool$RemoveLiquidityParams[] params;
}

struct MaverickPool$AddLiquidityEventParams {
    address sender;
    uint256 tokenId;
    MaverickPool$IPool$BinDelta[] binDeltas;
}

struct MaverickPool$BinMergedEventParams {
    uint128 binId;
    uint128 reserveA;
    uint128 reserveB;
    uint128 mergeId;
}

struct MaverickPool$BinMovedEventParams {
    uint128 binId;
    int128 previousTick;
    int128 newTick;
}

struct MaverickPool$MigrateBinsUpStackEventParams {
    address sender;
    uint128 binId;
    uint32 maxRecursion;
}

struct MaverickPool$ProtocolFeeCollectedEventParams {
    uint256 protocolFee;
    bool isTokenA;
}

struct MaverickPool$RemoveLiquidityEventParams {
    address sender;
    address recipient;
    uint256 tokenId;
    MaverickPool$IPool$BinDelta[] binDeltas;
}

struct MaverickPool$SetProtocolFeeRatioEventParams {
    uint256 protocolFee;
}

struct MaverickPool$SwapEventParams {
    address sender;
    address recipient;
    bool tokenAIn;
    bool exactOutput;
    uint256 amountIn;
    uint256 amountOut;
    int32 activeTick;
}

struct MaverickPool$TransferLiquidityEventParams {
    uint256 fromTokenId;
    uint256 toTokenId;
    MaverickPool$IPool$RemoveLiquidityParams[] params;
}

abstract contract MaverickPool$OnAddLiquidityEvent {
    function MaverickPool$onAddLiquidityEvent(EventContext memory ctx, MaverickPool$AddLiquidityEventParams memory inputs) virtual external;

    function MaverickPool$triggerOnAddLiquidityEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes32(0x133a027327582be2089f6ca47137e3d337be4ca2cd921e5f0b178c9c2d5b8364),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onAddLiquidityEvent.selector
        });
    }
}

abstract contract MaverickPool$OnBinMergedEvent {
    function MaverickPool$onBinMergedEvent(EventContext memory ctx, MaverickPool$BinMergedEventParams memory inputs) virtual external;

    function MaverickPool$triggerOnBinMergedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes32(0x8ecf1f9da718dc4c174482cdb4e334113856b46a85e5694deeec06d512e8f772),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onBinMergedEvent.selector
        });
    }
}

abstract contract MaverickPool$OnBinMovedEvent {
    function MaverickPool$onBinMovedEvent(EventContext memory ctx, MaverickPool$BinMovedEventParams memory inputs) virtual external;

    function MaverickPool$triggerOnBinMovedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes32(0x42e51620e75096344ac889cc1d899ab619aedbe89a4f6b230ee3cecb849c7e2f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onBinMovedEvent.selector
        });
    }
}

abstract contract MaverickPool$OnMigrateBinsUpStackEvent {
    function MaverickPool$onMigrateBinsUpStackEvent(EventContext memory ctx, MaverickPool$MigrateBinsUpStackEventParams memory inputs) virtual external;

    function MaverickPool$triggerOnMigrateBinsUpStackEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes32(0x6deceb91de75f84acd021df8c6410377aa442257495a79a9e3bfc7eba745853e),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onMigrateBinsUpStackEvent.selector
        });
    }
}

abstract contract MaverickPool$OnProtocolFeeCollectedEvent {
    function MaverickPool$onProtocolFeeCollectedEvent(EventContext memory ctx, MaverickPool$ProtocolFeeCollectedEventParams memory inputs) virtual external;

    function MaverickPool$triggerOnProtocolFeeCollectedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes32(0x292394e5b7a6b75d01122bb2dc85341cefec10b852325db9d3658a452f5eb211),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onProtocolFeeCollectedEvent.selector
        });
    }
}

abstract contract MaverickPool$OnRemoveLiquidityEvent {
    function MaverickPool$onRemoveLiquidityEvent(EventContext memory ctx, MaverickPool$RemoveLiquidityEventParams memory inputs) virtual external;

    function MaverickPool$triggerOnRemoveLiquidityEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes32(0x65da280c1e973a1c5884c38d63e2c2b3c2a3158a0761e76545b64035e2489dfe),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onRemoveLiquidityEvent.selector
        });
    }
}

abstract contract MaverickPool$OnSetProtocolFeeRatioEvent {
    function MaverickPool$onSetProtocolFeeRatioEvent(EventContext memory ctx, MaverickPool$SetProtocolFeeRatioEventParams memory inputs) virtual external;

    function MaverickPool$triggerOnSetProtocolFeeRatioEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes32(0x06e6ba2b10970ecae3ab2c29feb60ab2503358820756ef14a9827b0fa5add30f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onSetProtocolFeeRatioEvent.selector
        });
    }
}

abstract contract MaverickPool$OnSwapEvent {
    function MaverickPool$onSwapEvent(EventContext memory ctx, MaverickPool$SwapEventParams memory inputs) virtual external;

    function MaverickPool$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes32(0x3b841dc9ab51e3104bda4f61b41e4271192d22cd19da5ee6e292dc8e2744f713),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onSwapEvent.selector
        });
    }
}

abstract contract MaverickPool$OnTransferLiquidityEvent {
    function MaverickPool$onTransferLiquidityEvent(EventContext memory ctx, MaverickPool$TransferLiquidityEventParams memory inputs) virtual external;

    function MaverickPool$triggerOnTransferLiquidityEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes32(0xd384edefdfebd0bb45d82f94aed5ff327fd6510cc6c53ddc78a3ef4a0e7c715c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onTransferLiquidityEvent.selector
        });
    }
}

abstract contract MaverickPool$OnAddLiquidityFunction {
    function MaverickPool$onAddLiquidityFunction(FunctionContext memory ctx, MaverickPool$AddLiquidityFunctionInputs memory inputs, MaverickPool$AddLiquidityFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnAddLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x9d5f20bb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onAddLiquidityFunction.selector
        });
    }
}

abstract contract MaverickPool$PreAddLiquidityFunction {
    function MaverickPool$preAddLiquidityFunction(PreFunctionContext memory ctx, MaverickPool$AddLiquidityFunctionInputs memory inputs) virtual external;

    function MaverickPool$triggerPreAddLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x9d5f20bb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preAddLiquidityFunction.selector
        });
    }
}

abstract contract MaverickPool$OnBalanceOfFunction {
    function MaverickPool$onBalanceOfFunction(FunctionContext memory ctx, MaverickPool$BalanceOfFunctionInputs memory inputs, MaverickPool$BalanceOfFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x6da3bf8b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onBalanceOfFunction.selector
        });
    }
}

abstract contract MaverickPool$PreBalanceOfFunction {
    function MaverickPool$preBalanceOfFunction(PreFunctionContext memory ctx, MaverickPool$BalanceOfFunctionInputs memory inputs) virtual external;

    function MaverickPool$triggerPreBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x6da3bf8b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preBalanceOfFunction.selector
        });
    }
}

abstract contract MaverickPool$OnBinBalanceAFunction {
    function MaverickPool$onBinBalanceAFunction(FunctionContext memory ctx, MaverickPool$BinBalanceAFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnBinBalanceAFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x75bbbd73),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onBinBalanceAFunction.selector
        });
    }
}

abstract contract MaverickPool$PreBinBalanceAFunction {
    function MaverickPool$preBinBalanceAFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickPool$triggerPreBinBalanceAFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x75bbbd73),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preBinBalanceAFunction.selector
        });
    }
}

abstract contract MaverickPool$OnBinBalanceBFunction {
    function MaverickPool$onBinBalanceBFunction(FunctionContext memory ctx, MaverickPool$BinBalanceBFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnBinBalanceBFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xfa158509),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onBinBalanceBFunction.selector
        });
    }
}

abstract contract MaverickPool$PreBinBalanceBFunction {
    function MaverickPool$preBinBalanceBFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickPool$triggerPreBinBalanceBFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xfa158509),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preBinBalanceBFunction.selector
        });
    }
}

abstract contract MaverickPool$OnBinMapFunction {
    function MaverickPool$onBinMapFunction(FunctionContext memory ctx, MaverickPool$BinMapFunctionInputs memory inputs, MaverickPool$BinMapFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnBinMapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xa2ba172f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onBinMapFunction.selector
        });
    }
}

abstract contract MaverickPool$PreBinMapFunction {
    function MaverickPool$preBinMapFunction(PreFunctionContext memory ctx, MaverickPool$BinMapFunctionInputs memory inputs) virtual external;

    function MaverickPool$triggerPreBinMapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xa2ba172f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preBinMapFunction.selector
        });
    }
}

abstract contract MaverickPool$OnBinPositionsFunction {
    function MaverickPool$onBinPositionsFunction(FunctionContext memory ctx, MaverickPool$BinPositionsFunctionInputs memory inputs, MaverickPool$BinPositionsFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnBinPositionsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x83f9c632),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onBinPositionsFunction.selector
        });
    }
}

abstract contract MaverickPool$PreBinPositionsFunction {
    function MaverickPool$preBinPositionsFunction(PreFunctionContext memory ctx, MaverickPool$BinPositionsFunctionInputs memory inputs) virtual external;

    function MaverickPool$triggerPreBinPositionsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x83f9c632),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preBinPositionsFunction.selector
        });
    }
}

abstract contract MaverickPool$OnFactoryFunction {
    function MaverickPool$onFactoryFunction(FunctionContext memory ctx, MaverickPool$FactoryFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onFactoryFunction.selector
        });
    }
}

abstract contract MaverickPool$PreFactoryFunction {
    function MaverickPool$preFactoryFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickPool$triggerPreFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preFactoryFunction.selector
        });
    }
}

abstract contract MaverickPool$OnFeeFunction {
    function MaverickPool$onFeeFunction(FunctionContext memory ctx, MaverickPool$FeeFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xddca3f43),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onFeeFunction.selector
        });
    }
}

abstract contract MaverickPool$PreFeeFunction {
    function MaverickPool$preFeeFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickPool$triggerPreFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xddca3f43),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preFeeFunction.selector
        });
    }
}

abstract contract MaverickPool$OnGetBinFunction {
    function MaverickPool$onGetBinFunction(FunctionContext memory ctx, MaverickPool$GetBinFunctionInputs memory inputs, MaverickPool$GetBinFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnGetBinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x44a185bb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onGetBinFunction.selector
        });
    }
}

abstract contract MaverickPool$PreGetBinFunction {
    function MaverickPool$preGetBinFunction(PreFunctionContext memory ctx, MaverickPool$GetBinFunctionInputs memory inputs) virtual external;

    function MaverickPool$triggerPreGetBinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x44a185bb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preGetBinFunction.selector
        });
    }
}

abstract contract MaverickPool$OnGetCurrentTwaFunction {
    function MaverickPool$onGetCurrentTwaFunction(FunctionContext memory ctx, MaverickPool$GetCurrentTwaFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnGetCurrentTwaFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xd3d3861a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onGetCurrentTwaFunction.selector
        });
    }
}

abstract contract MaverickPool$PreGetCurrentTwaFunction {
    function MaverickPool$preGetCurrentTwaFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickPool$triggerPreGetCurrentTwaFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xd3d3861a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preGetCurrentTwaFunction.selector
        });
    }
}

abstract contract MaverickPool$OnGetStateFunction {
    function MaverickPool$onGetStateFunction(FunctionContext memory ctx, MaverickPool$GetStateFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnGetStateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x1865c57d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onGetStateFunction.selector
        });
    }
}

abstract contract MaverickPool$PreGetStateFunction {
    function MaverickPool$preGetStateFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickPool$triggerPreGetStateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x1865c57d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preGetStateFunction.selector
        });
    }
}

abstract contract MaverickPool$OnGetTwaFunction {
    function MaverickPool$onGetTwaFunction(FunctionContext memory ctx, MaverickPool$GetTwaFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnGetTwaFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xa4ed496a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onGetTwaFunction.selector
        });
    }
}

abstract contract MaverickPool$PreGetTwaFunction {
    function MaverickPool$preGetTwaFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickPool$triggerPreGetTwaFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xa4ed496a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preGetTwaFunction.selector
        });
    }
}

abstract contract MaverickPool$OnLookbackFunction {
    function MaverickPool$onLookbackFunction(FunctionContext memory ctx, MaverickPool$LookbackFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnLookbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xebcbd281),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onLookbackFunction.selector
        });
    }
}

abstract contract MaverickPool$PreLookbackFunction {
    function MaverickPool$preLookbackFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickPool$triggerPreLookbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xebcbd281),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preLookbackFunction.selector
        });
    }
}

abstract contract MaverickPool$OnMigrateBinUpStackFunction {
    function MaverickPool$onMigrateBinUpStackFunction(FunctionContext memory ctx, MaverickPool$MigrateBinUpStackFunctionInputs memory inputs) virtual external;

    function MaverickPool$triggerOnMigrateBinUpStackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xc0c5d7fb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onMigrateBinUpStackFunction.selector
        });
    }
}

abstract contract MaverickPool$PreMigrateBinUpStackFunction {
    function MaverickPool$preMigrateBinUpStackFunction(PreFunctionContext memory ctx, MaverickPool$MigrateBinUpStackFunctionInputs memory inputs) virtual external;

    function MaverickPool$triggerPreMigrateBinUpStackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xc0c5d7fb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preMigrateBinUpStackFunction.selector
        });
    }
}

abstract contract MaverickPool$OnRemoveLiquidityFunction {
    function MaverickPool$onRemoveLiquidityFunction(FunctionContext memory ctx, MaverickPool$RemoveLiquidityFunctionInputs memory inputs, MaverickPool$RemoveLiquidityFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnRemoveLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x57c8c7b0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onRemoveLiquidityFunction.selector
        });
    }
}

abstract contract MaverickPool$PreRemoveLiquidityFunction {
    function MaverickPool$preRemoveLiquidityFunction(PreFunctionContext memory ctx, MaverickPool$RemoveLiquidityFunctionInputs memory inputs) virtual external;

    function MaverickPool$triggerPreRemoveLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x57c8c7b0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preRemoveLiquidityFunction.selector
        });
    }
}

abstract contract MaverickPool$OnSwapFunction {
    function MaverickPool$onSwapFunction(FunctionContext memory ctx, MaverickPool$SwapFunctionInputs memory inputs, MaverickPool$SwapFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xc51c9029),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onSwapFunction.selector
        });
    }
}

abstract contract MaverickPool$PreSwapFunction {
    function MaverickPool$preSwapFunction(PreFunctionContext memory ctx, MaverickPool$SwapFunctionInputs memory inputs) virtual external;

    function MaverickPool$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xc51c9029),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preSwapFunction.selector
        });
    }
}

abstract contract MaverickPool$OnTickSpacingFunction {
    function MaverickPool$onTickSpacingFunction(FunctionContext memory ctx, MaverickPool$TickSpacingFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xd0c93a7c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onTickSpacingFunction.selector
        });
    }
}

abstract contract MaverickPool$PreTickSpacingFunction {
    function MaverickPool$preTickSpacingFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickPool$triggerPreTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xd0c93a7c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preTickSpacingFunction.selector
        });
    }
}

abstract contract MaverickPool$OnTokenAFunction {
    function MaverickPool$onTokenAFunction(FunctionContext memory ctx, MaverickPool$TokenAFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnTokenAFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x0fc63d10),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onTokenAFunction.selector
        });
    }
}

abstract contract MaverickPool$PreTokenAFunction {
    function MaverickPool$preTokenAFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickPool$triggerPreTokenAFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x0fc63d10),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preTokenAFunction.selector
        });
    }
}

abstract contract MaverickPool$OnTokenAScaleFunction {
    function MaverickPool$onTokenAScaleFunction(FunctionContext memory ctx, MaverickPool$TokenAScaleFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnTokenAScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x3ab72c10),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onTokenAScaleFunction.selector
        });
    }
}

abstract contract MaverickPool$PreTokenAScaleFunction {
    function MaverickPool$preTokenAScaleFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickPool$triggerPreTokenAScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x3ab72c10),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preTokenAScaleFunction.selector
        });
    }
}

abstract contract MaverickPool$OnTokenBFunction {
    function MaverickPool$onTokenBFunction(FunctionContext memory ctx, MaverickPool$TokenBFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnTokenBFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x5f64b55b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onTokenBFunction.selector
        });
    }
}

abstract contract MaverickPool$PreTokenBFunction {
    function MaverickPool$preTokenBFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickPool$triggerPreTokenBFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x5f64b55b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preTokenBFunction.selector
        });
    }
}

abstract contract MaverickPool$OnTokenBScaleFunction {
    function MaverickPool$onTokenBScaleFunction(FunctionContext memory ctx, MaverickPool$TokenBScaleFunctionOutputs memory outputs) virtual external;

    function MaverickPool$triggerOnTokenBScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x21272d4c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onTokenBScaleFunction.selector
        });
    }
}

abstract contract MaverickPool$PreTokenBScaleFunction {
    function MaverickPool$preTokenBScaleFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickPool$triggerPreTokenBScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0x21272d4c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preTokenBScaleFunction.selector
        });
    }
}

abstract contract MaverickPool$OnTransferLiquidityFunction {
    function MaverickPool$onTransferLiquidityFunction(FunctionContext memory ctx, MaverickPool$TransferLiquidityFunctionInputs memory inputs) virtual external;

    function MaverickPool$triggerOnTransferLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xd279735f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$onTransferLiquidityFunction.selector
        });
    }
}

abstract contract MaverickPool$PreTransferLiquidityFunction {
    function MaverickPool$preTransferLiquidityFunction(PreFunctionContext memory ctx, MaverickPool$TransferLiquidityFunctionInputs memory inputs) virtual external;

    function MaverickPool$triggerPreTransferLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickPool",
            selector: bytes4(0xd279735f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickPool$preTransferLiquidityFunction.selector
        });
    }
}

contract MaverickPool$EmitAllEvents is
  MaverickPool$OnAddLiquidityEvent,
MaverickPool$OnBinMergedEvent,
MaverickPool$OnBinMovedEvent,
MaverickPool$OnMigrateBinsUpStackEvent,
MaverickPool$OnProtocolFeeCollectedEvent,
MaverickPool$OnRemoveLiquidityEvent,
MaverickPool$OnSetProtocolFeeRatioEvent,
MaverickPool$OnSwapEvent,
MaverickPool$OnTransferLiquidityEvent
{
  event AddLiquidity(address sender, uint256 tokenId, MaverickPool$IPool$BinDelta[] binDeltas);
event BinMerged(uint128 binId, uint128 reserveA, uint128 reserveB, uint128 mergeId);
event BinMoved(uint128 binId, int128 previousTick, int128 newTick);
event MigrateBinsUpStack(address sender, uint128 binId, uint32 maxRecursion);
event ProtocolFeeCollected(uint256 protocolFee, bool isTokenA);
event RemoveLiquidity(address sender, address recipient, uint256 tokenId, MaverickPool$IPool$BinDelta[] binDeltas);
event SetProtocolFeeRatio(uint256 protocolFee);
event Swap(address sender, address recipient, bool tokenAIn, bool exactOutput, uint256 amountIn, uint256 amountOut, int32 activeTick);
event TransferLiquidity(uint256 fromTokenId, uint256 toTokenId, MaverickPool$IPool$RemoveLiquidityParams[] params);

  function MaverickPool$onAddLiquidityEvent(EventContext memory ctx, MaverickPool$AddLiquidityEventParams memory inputs) virtual external override {
    emit AddLiquidity(inputs.sender, inputs.tokenId, inputs.binDeltas);
  }
function MaverickPool$onBinMergedEvent(EventContext memory ctx, MaverickPool$BinMergedEventParams memory inputs) virtual external override {
    emit BinMerged(inputs.binId, inputs.reserveA, inputs.reserveB, inputs.mergeId);
  }
function MaverickPool$onBinMovedEvent(EventContext memory ctx, MaverickPool$BinMovedEventParams memory inputs) virtual external override {
    emit BinMoved(inputs.binId, inputs.previousTick, inputs.newTick);
  }
function MaverickPool$onMigrateBinsUpStackEvent(EventContext memory ctx, MaverickPool$MigrateBinsUpStackEventParams memory inputs) virtual external override {
    emit MigrateBinsUpStack(inputs.sender, inputs.binId, inputs.maxRecursion);
  }
function MaverickPool$onProtocolFeeCollectedEvent(EventContext memory ctx, MaverickPool$ProtocolFeeCollectedEventParams memory inputs) virtual external override {
    emit ProtocolFeeCollected(inputs.protocolFee, inputs.isTokenA);
  }
function MaverickPool$onRemoveLiquidityEvent(EventContext memory ctx, MaverickPool$RemoveLiquidityEventParams memory inputs) virtual external override {
    emit RemoveLiquidity(inputs.sender, inputs.recipient, inputs.tokenId, inputs.binDeltas);
  }
function MaverickPool$onSetProtocolFeeRatioEvent(EventContext memory ctx, MaverickPool$SetProtocolFeeRatioEventParams memory inputs) virtual external override {
    emit SetProtocolFeeRatio(inputs.protocolFee);
  }
function MaverickPool$onSwapEvent(EventContext memory ctx, MaverickPool$SwapEventParams memory inputs) virtual external override {
    emit Swap(inputs.sender, inputs.recipient, inputs.tokenAIn, inputs.exactOutput, inputs.amountIn, inputs.amountOut, inputs.activeTick);
  }
function MaverickPool$onTransferLiquidityEvent(EventContext memory ctx, MaverickPool$TransferLiquidityEventParams memory inputs) virtual external override {
    emit TransferLiquidity(inputs.fromTokenId, inputs.toTokenId, inputs.params);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](9);
    triggers[0] = this.MaverickPool$triggerOnAddLiquidityEvent();
    triggers[1] = this.MaverickPool$triggerOnBinMergedEvent();
    triggers[2] = this.MaverickPool$triggerOnBinMovedEvent();
    triggers[3] = this.MaverickPool$triggerOnMigrateBinsUpStackEvent();
    triggers[4] = this.MaverickPool$triggerOnProtocolFeeCollectedEvent();
    triggers[5] = this.MaverickPool$triggerOnRemoveLiquidityEvent();
    triggers[6] = this.MaverickPool$triggerOnSetProtocolFeeRatioEvent();
    triggers[7] = this.MaverickPool$triggerOnSwapEvent();
    triggers[8] = this.MaverickPool$triggerOnTransferLiquidityEvent();
    return triggers;
  }
}