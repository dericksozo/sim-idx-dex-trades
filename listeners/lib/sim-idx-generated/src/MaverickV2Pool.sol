// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function MaverickV2Pool$Abi() pure returns (Abi memory) {
    return Abi("MaverickV2Pool");
}
struct MaverickV2Pool$AccessorFunctionOutputs {
    address outArg0;
}

struct MaverickV2Pool$IMaverickV2Pool$AddLiquidityParams {
    uint8 kind;
    int32[] ticks;
    uint128[] amounts;
}

struct MaverickV2Pool$AddLiquidityFunctionInputs {
    address recipient;
    uint256 subaccount;
    MaverickV2Pool$IMaverickV2Pool$AddLiquidityParams params;
    bytes data;
}

struct MaverickV2Pool$AddLiquidityFunctionOutputs {
    uint256 tokenAAmount;
    uint256 tokenBAmount;
    uint32[] binIds;
}

struct MaverickV2Pool$AdminActionFunctionInputs {
    uint8 action;
    uint256 value;
}

struct MaverickV2Pool$BalanceOfFunctionInputs {
    address user;
    uint256 subaccount;
    uint32 binId;
}

struct MaverickV2Pool$BalanceOfFunctionOutputs {
    uint128 lpBalance;
}

struct MaverickV2Pool$BinIdByTickKindFunctionInputs {
    int32 tick;
    uint256 kind;
}

struct MaverickV2Pool$BinIdByTickKindFunctionOutputs {
    uint32 binId;
}

struct MaverickV2Pool$FactoryFunctionOutputs {
    address outArg0;
}

struct MaverickV2Pool$FeeFunctionInputs {
    bool tokenAIn;
}

struct MaverickV2Pool$FeeFunctionOutputs {
    uint256 outArg0;
}

struct MaverickV2Pool$FlashLoanFunctionInputs {
    address recipient;
    uint256 amountA;
    uint256 amountB;
    bytes data;
}

struct MaverickV2Pool$FlashLoanFunctionOutputs {
    uint128 lendingFeeA;
    uint128 lendingFeeB;
}

struct MaverickV2Pool$GetBinFunctionInputs {
    uint32 binId;
}

struct MaverickV2Pool$IMaverickV2Pool$BinState {
    uint128 mergeBinBalance;
    uint128 tickBalance;
    uint128 totalSupply;
    uint8 kind;
    int32 tick;
    uint32 mergeId;
}

struct MaverickV2Pool$GetBinFunctionOutputs {
    MaverickV2Pool$IMaverickV2Pool$BinState bin;
}

struct MaverickV2Pool$GetCurrentTwaFunctionOutputs {
    int256 outArg0;
}

struct MaverickV2Pool$IMaverickV2Pool$State {
    uint128 reserveA;
    uint128 reserveB;
    int64 lastTwaD8;
    int64 lastLogPriceD8;
    uint40 lastTimestamp;
    int32 activeTick;
    bool isLocked;
    uint32 binCounter;
    uint8 protocolFeeRatioD3;
}

struct MaverickV2Pool$GetStateFunctionOutputs {
    MaverickV2Pool$IMaverickV2Pool$State outArg0;
}

struct MaverickV2Pool$GetTickFunctionInputs {
    int32 tick;
}

struct MaverickV2Pool$IMaverickV2Pool$TickState {
    uint128 reserveA;
    uint128 reserveB;
    uint128 totalSupply;
    uint32[4] binIdsByTick;
}

struct MaverickV2Pool$GetTickFunctionOutputs {
    MaverickV2Pool$IMaverickV2Pool$TickState _tick;
}

struct MaverickV2Pool$KindsFunctionOutputs {
    uint8 _kinds;
}

struct MaverickV2Pool$LendingFeeRateD18FunctionOutputs {
    uint256 outArg0;
}

struct MaverickV2Pool$LookbackFunctionOutputs {
    uint256 outArg0;
}

struct MaverickV2Pool$MigrateBinUpStackFunctionInputs {
    uint32 binId;
    uint32 maxRecursion;
}

struct MaverickV2Pool$PermissionedLiquidityFunctionOutputs {
    bool _permissionedLiquidity;
}

struct MaverickV2Pool$PermissionedPoolFunctionOutputs {
    bool _permissionedPool;
}

struct MaverickV2Pool$PermissionedSwapFunctionOutputs {
    bool _permissionedSwap;
}

struct MaverickV2Pool$ProtocolFeeAFunctionOutputs {
    uint128 outArg0;
}

struct MaverickV2Pool$ProtocolFeeBFunctionOutputs {
    uint128 outArg0;
}

struct MaverickV2Pool$IMaverickV2Pool$RemoveLiquidityParams {
    uint32[] binIds;
    uint128[] amounts;
}

struct MaverickV2Pool$RemoveLiquidityFunctionInputs {
    address recipient;
    uint256 subaccount;
    MaverickV2Pool$IMaverickV2Pool$RemoveLiquidityParams params;
}

struct MaverickV2Pool$RemoveLiquidityFunctionOutputs {
    uint256 tokenAOut;
    uint256 tokenBOut;
}

struct MaverickV2Pool$SetFeeFunctionInputs {
    uint256 outArg0;
    uint256 outArg1;
}

struct MaverickV2Pool$IMaverickV2Pool$SwapParams {
    uint256 amount;
    bool tokenAIn;
    bool exactOutput;
    int32 tickLimit;
}

struct MaverickV2Pool$SwapFunctionInputs {
    address recipient;
    MaverickV2Pool$IMaverickV2Pool$SwapParams params;
    bytes data;
}

struct MaverickV2Pool$SwapFunctionOutputs {
    uint256 amountIn;
    uint256 amountOut;
}

struct MaverickV2Pool$TickSpacingFunctionOutputs {
    uint256 outArg0;
}

struct MaverickV2Pool$TokenAFunctionOutputs {
    address outArg0;
}

struct MaverickV2Pool$TokenAScaleFunctionOutputs {
    uint256 outArg0;
}

struct MaverickV2Pool$TokenBFunctionOutputs {
    address outArg0;
}

struct MaverickV2Pool$TokenBScaleFunctionOutputs {
    uint256 outArg0;
}

struct MaverickV2Pool$PoolAddLiquidityEventParams {
    address sender;
    address recipient;
    uint256 subaccount;
    MaverickV2Pool$IMaverickV2Pool$AddLiquidityParams params;
    uint256 tokenAAmount;
    uint256 tokenBAmount;
    uint32[] binIds;
}

struct MaverickV2Pool$PoolMigrateBinsUpStackEventParams {
    address sender;
    uint32 binId;
    uint32 maxRecursion;
}

struct MaverickV2Pool$PoolProtocolFeeCollectedEventParams {
    uint256 feeCollected;
    bool isTokenA;
}

struct MaverickV2Pool$PoolRemoveLiquidityEventParams {
    address sender;
    address recipient;
    uint256 subaccount;
    MaverickV2Pool$IMaverickV2Pool$RemoveLiquidityParams params;
    uint256 tokenAOut;
    uint256 tokenBOut;
}

struct MaverickV2Pool$PoolSetLendingFeeRateEventParams {
    uint256 lendingFeeRateD18;
}

struct MaverickV2Pool$PoolSetProtocolFeeRatioEventParams {
    uint256 protocolFeeRatioD3;
}

struct MaverickV2Pool$PoolSetVariableFeeEventParams {
    uint256 newFeeAIn;
    uint256 newFeeBIn;
}

struct MaverickV2Pool$PoolSwapEventParams {
    address sender;
    address recipient;
    MaverickV2Pool$IMaverickV2Pool$SwapParams params;
    uint256 amountIn;
    uint256 amountOut;
}

abstract contract MaverickV2Pool$OnPoolAddLiquidityEvent {
    function MaverickV2Pool$onPoolAddLiquidityEvent(EventContext memory ctx, MaverickV2Pool$PoolAddLiquidityEventParams memory inputs) virtual external;

    function MaverickV2Pool$triggerOnPoolAddLiquidityEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes32(0x16768f4ecc93786618270641524e6209d40480302598062adee1bf55a3e7da29),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onPoolAddLiquidityEvent.selector
        });
    }
}

abstract contract MaverickV2Pool$OnPoolMigrateBinsUpStackEvent {
    function MaverickV2Pool$onPoolMigrateBinsUpStackEvent(EventContext memory ctx, MaverickV2Pool$PoolMigrateBinsUpStackEventParams memory inputs) virtual external;

    function MaverickV2Pool$triggerOnPoolMigrateBinsUpStackEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes32(0xb9e7c5717a96d75cf9579180589569b4b4ebd97dcd89d240c3126b85b0b550ba),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onPoolMigrateBinsUpStackEvent.selector
        });
    }
}

abstract contract MaverickV2Pool$OnPoolProtocolFeeCollectedEvent {
    function MaverickV2Pool$onPoolProtocolFeeCollectedEvent(EventContext memory ctx, MaverickV2Pool$PoolProtocolFeeCollectedEventParams memory inputs) virtual external;

    function MaverickV2Pool$triggerOnPoolProtocolFeeCollectedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes32(0x785d1ffef85680b17b93a2322f3b76824d2a10eb1354b5981421fe10dfd5b75f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onPoolProtocolFeeCollectedEvent.selector
        });
    }
}

abstract contract MaverickV2Pool$OnPoolRemoveLiquidityEvent {
    function MaverickV2Pool$onPoolRemoveLiquidityEvent(EventContext memory ctx, MaverickV2Pool$PoolRemoveLiquidityEventParams memory inputs) virtual external;

    function MaverickV2Pool$triggerOnPoolRemoveLiquidityEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes32(0x022484d9ab07e2ea8d2f868574c16404cf7fc639be80032dc1e9a1641bdd2eb1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onPoolRemoveLiquidityEvent.selector
        });
    }
}

abstract contract MaverickV2Pool$OnPoolSetLendingFeeRateEvent {
    function MaverickV2Pool$onPoolSetLendingFeeRateEvent(EventContext memory ctx, MaverickV2Pool$PoolSetLendingFeeRateEventParams memory inputs) virtual external;

    function MaverickV2Pool$triggerOnPoolSetLendingFeeRateEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes32(0x08a624f7710ba1e5c0376921a23d2d2a6757600ccda611a1615a57d1cff218e2),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onPoolSetLendingFeeRateEvent.selector
        });
    }
}

abstract contract MaverickV2Pool$OnPoolSetProtocolFeeRatioEvent {
    function MaverickV2Pool$onPoolSetProtocolFeeRatioEvent(EventContext memory ctx, MaverickV2Pool$PoolSetProtocolFeeRatioEventParams memory inputs) virtual external;

    function MaverickV2Pool$triggerOnPoolSetProtocolFeeRatioEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes32(0x8c315eec9a54adc4a7ff999f8b5230281cd9cf25054c184cc427e60bd02368f6),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onPoolSetProtocolFeeRatioEvent.selector
        });
    }
}

abstract contract MaverickV2Pool$OnPoolSetVariableFeeEvent {
    function MaverickV2Pool$onPoolSetVariableFeeEvent(EventContext memory ctx, MaverickV2Pool$PoolSetVariableFeeEventParams memory inputs) virtual external;

    function MaverickV2Pool$triggerOnPoolSetVariableFeeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes32(0x8ce70d54a53997801d36099160d0e5784bb9c06b7a3d6848dcc3433160062f88),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onPoolSetVariableFeeEvent.selector
        });
    }
}

abstract contract MaverickV2Pool$OnPoolSwapEvent {
    function MaverickV2Pool$onPoolSwapEvent(EventContext memory ctx, MaverickV2Pool$PoolSwapEventParams memory inputs) virtual external;

    function MaverickV2Pool$triggerOnPoolSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes32(0x103ed084e94a44c8f5f6ba8e3011507c41063177e29949083c439777d8d63f60),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onPoolSwapEvent.selector
        });
    }
}

abstract contract MaverickV2Pool$OnAccessorFunction {
    function MaverickV2Pool$onAccessorFunction(FunctionContext memory ctx, MaverickV2Pool$AccessorFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnAccessorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x56857642),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onAccessorFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreAccessorFunction {
    function MaverickV2Pool$preAccessorFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPreAccessorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x56857642),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preAccessorFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnAddLiquidityFunction {
    function MaverickV2Pool$onAddLiquidityFunction(FunctionContext memory ctx, MaverickV2Pool$AddLiquidityFunctionInputs memory inputs, MaverickV2Pool$AddLiquidityFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnAddLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x42e3d72c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onAddLiquidityFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreAddLiquidityFunction {
    function MaverickV2Pool$preAddLiquidityFunction(PreFunctionContext memory ctx, MaverickV2Pool$AddLiquidityFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerPreAddLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x42e3d72c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preAddLiquidityFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnAdminActionFunction {
    function MaverickV2Pool$onAdminActionFunction(FunctionContext memory ctx, MaverickV2Pool$AdminActionFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerOnAdminActionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xa476e739),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onAdminActionFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreAdminActionFunction {
    function MaverickV2Pool$preAdminActionFunction(PreFunctionContext memory ctx, MaverickV2Pool$AdminActionFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerPreAdminActionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xa476e739),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preAdminActionFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnBalanceOfFunction {
    function MaverickV2Pool$onBalanceOfFunction(FunctionContext memory ctx, MaverickV2Pool$BalanceOfFunctionInputs memory inputs, MaverickV2Pool$BalanceOfFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xf98175c4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onBalanceOfFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreBalanceOfFunction {
    function MaverickV2Pool$preBalanceOfFunction(PreFunctionContext memory ctx, MaverickV2Pool$BalanceOfFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerPreBalanceOfFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xf98175c4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preBalanceOfFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnBinIdByTickKindFunction {
    function MaverickV2Pool$onBinIdByTickKindFunction(FunctionContext memory ctx, MaverickV2Pool$BinIdByTickKindFunctionInputs memory inputs, MaverickV2Pool$BinIdByTickKindFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnBinIdByTickKindFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x9329340d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onBinIdByTickKindFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreBinIdByTickKindFunction {
    function MaverickV2Pool$preBinIdByTickKindFunction(PreFunctionContext memory ctx, MaverickV2Pool$BinIdByTickKindFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerPreBinIdByTickKindFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x9329340d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preBinIdByTickKindFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnFactoryFunction {
    function MaverickV2Pool$onFactoryFunction(FunctionContext memory ctx, MaverickV2Pool$FactoryFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onFactoryFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreFactoryFunction {
    function MaverickV2Pool$preFactoryFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPreFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preFactoryFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnFeeFunction {
    function MaverickV2Pool$onFeeFunction(FunctionContext memory ctx, MaverickV2Pool$FeeFunctionInputs memory inputs, MaverickV2Pool$FeeFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x2d9d1ca6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onFeeFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreFeeFunction {
    function MaverickV2Pool$preFeeFunction(PreFunctionContext memory ctx, MaverickV2Pool$FeeFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerPreFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x2d9d1ca6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preFeeFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnFlashLoanFunction {
    function MaverickV2Pool$onFlashLoanFunction(FunctionContext memory ctx, MaverickV2Pool$FlashLoanFunctionInputs memory inputs, MaverickV2Pool$FlashLoanFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnFlashLoanFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x679f0579),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onFlashLoanFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreFlashLoanFunction {
    function MaverickV2Pool$preFlashLoanFunction(PreFunctionContext memory ctx, MaverickV2Pool$FlashLoanFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerPreFlashLoanFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x679f0579),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preFlashLoanFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnGetBinFunction {
    function MaverickV2Pool$onGetBinFunction(FunctionContext memory ctx, MaverickV2Pool$GetBinFunctionInputs memory inputs, MaverickV2Pool$GetBinFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnGetBinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x22cd85a8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onGetBinFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreGetBinFunction {
    function MaverickV2Pool$preGetBinFunction(PreFunctionContext memory ctx, MaverickV2Pool$GetBinFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerPreGetBinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x22cd85a8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preGetBinFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnGetCurrentTwaFunction {
    function MaverickV2Pool$onGetCurrentTwaFunction(FunctionContext memory ctx, MaverickV2Pool$GetCurrentTwaFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnGetCurrentTwaFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xd3d3861a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onGetCurrentTwaFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreGetCurrentTwaFunction {
    function MaverickV2Pool$preGetCurrentTwaFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPreGetCurrentTwaFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xd3d3861a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preGetCurrentTwaFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnGetStateFunction {
    function MaverickV2Pool$onGetStateFunction(FunctionContext memory ctx, MaverickV2Pool$GetStateFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnGetStateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x1865c57d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onGetStateFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreGetStateFunction {
    function MaverickV2Pool$preGetStateFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPreGetStateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x1865c57d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preGetStateFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnGetTickFunction {
    function MaverickV2Pool$onGetTickFunction(FunctionContext memory ctx, MaverickV2Pool$GetTickFunctionInputs memory inputs, MaverickV2Pool$GetTickFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnGetTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x3256cfa9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onGetTickFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreGetTickFunction {
    function MaverickV2Pool$preGetTickFunction(PreFunctionContext memory ctx, MaverickV2Pool$GetTickFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerPreGetTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x3256cfa9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preGetTickFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnKindsFunction {
    function MaverickV2Pool$onKindsFunction(FunctionContext memory ctx, MaverickV2Pool$KindsFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnKindsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x744ebfd6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onKindsFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreKindsFunction {
    function MaverickV2Pool$preKindsFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPreKindsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x744ebfd6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preKindsFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnLendingFeeRateD18Function {
    function MaverickV2Pool$onLendingFeeRateD18Function(FunctionContext memory ctx, MaverickV2Pool$LendingFeeRateD18FunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnLendingFeeRateD18Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x7aabf453),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onLendingFeeRateD18Function.selector
        });
    }
}

abstract contract MaverickV2Pool$PreLendingFeeRateD18Function {
    function MaverickV2Pool$preLendingFeeRateD18Function(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPreLendingFeeRateD18Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x7aabf453),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preLendingFeeRateD18Function.selector
        });
    }
}

abstract contract MaverickV2Pool$OnLookbackFunction {
    function MaverickV2Pool$onLookbackFunction(FunctionContext memory ctx, MaverickV2Pool$LookbackFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnLookbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xebcbd281),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onLookbackFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreLookbackFunction {
    function MaverickV2Pool$preLookbackFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPreLookbackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xebcbd281),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preLookbackFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnMigrateBinUpStackFunction {
    function MaverickV2Pool$onMigrateBinUpStackFunction(FunctionContext memory ctx, MaverickV2Pool$MigrateBinUpStackFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerOnMigrateBinUpStackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x8e5430a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onMigrateBinUpStackFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreMigrateBinUpStackFunction {
    function MaverickV2Pool$preMigrateBinUpStackFunction(PreFunctionContext memory ctx, MaverickV2Pool$MigrateBinUpStackFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerPreMigrateBinUpStackFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x8e5430a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preMigrateBinUpStackFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnPermissionedLiquidityFunction {
    function MaverickV2Pool$onPermissionedLiquidityFunction(FunctionContext memory ctx, MaverickV2Pool$PermissionedLiquidityFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnPermissionedLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x99013aa8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onPermissionedLiquidityFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PrePermissionedLiquidityFunction {
    function MaverickV2Pool$prePermissionedLiquidityFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPrePermissionedLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x99013aa8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$prePermissionedLiquidityFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnPermissionedPoolFunction {
    function MaverickV2Pool$onPermissionedPoolFunction(FunctionContext memory ctx, MaverickV2Pool$PermissionedPoolFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnPermissionedPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x120de779),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onPermissionedPoolFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PrePermissionedPoolFunction {
    function MaverickV2Pool$prePermissionedPoolFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPrePermissionedPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x120de779),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$prePermissionedPoolFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnPermissionedSwapFunction {
    function MaverickV2Pool$onPermissionedSwapFunction(FunctionContext memory ctx, MaverickV2Pool$PermissionedSwapFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnPermissionedSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x38ef0253),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onPermissionedSwapFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PrePermissionedSwapFunction {
    function MaverickV2Pool$prePermissionedSwapFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPrePermissionedSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x38ef0253),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$prePermissionedSwapFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnProtocolFeeAFunction {
    function MaverickV2Pool$onProtocolFeeAFunction(FunctionContext memory ctx, MaverickV2Pool$ProtocolFeeAFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnProtocolFeeAFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xb9480d4a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onProtocolFeeAFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreProtocolFeeAFunction {
    function MaverickV2Pool$preProtocolFeeAFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPreProtocolFeeAFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xb9480d4a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preProtocolFeeAFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnProtocolFeeBFunction {
    function MaverickV2Pool$onProtocolFeeBFunction(FunctionContext memory ctx, MaverickV2Pool$ProtocolFeeBFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnProtocolFeeBFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x9026b8bc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onProtocolFeeBFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreProtocolFeeBFunction {
    function MaverickV2Pool$preProtocolFeeBFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPreProtocolFeeBFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x9026b8bc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preProtocolFeeBFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnRemoveLiquidityFunction {
    function MaverickV2Pool$onRemoveLiquidityFunction(FunctionContext memory ctx, MaverickV2Pool$RemoveLiquidityFunctionInputs memory inputs, MaverickV2Pool$RemoveLiquidityFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnRemoveLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xf957f1ca),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onRemoveLiquidityFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreRemoveLiquidityFunction {
    function MaverickV2Pool$preRemoveLiquidityFunction(PreFunctionContext memory ctx, MaverickV2Pool$RemoveLiquidityFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerPreRemoveLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xf957f1ca),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preRemoveLiquidityFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnSetFeeFunction {
    function MaverickV2Pool$onSetFeeFunction(FunctionContext memory ctx, MaverickV2Pool$SetFeeFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerOnSetFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x52f7c988),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onSetFeeFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreSetFeeFunction {
    function MaverickV2Pool$preSetFeeFunction(PreFunctionContext memory ctx, MaverickV2Pool$SetFeeFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerPreSetFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x52f7c988),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preSetFeeFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnSwapFunction {
    function MaverickV2Pool$onSwapFunction(FunctionContext memory ctx, MaverickV2Pool$SwapFunctionInputs memory inputs, MaverickV2Pool$SwapFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x3eece7db),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onSwapFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreSwapFunction {
    function MaverickV2Pool$preSwapFunction(PreFunctionContext memory ctx, MaverickV2Pool$SwapFunctionInputs memory inputs) virtual external;

    function MaverickV2Pool$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x3eece7db),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preSwapFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnTickSpacingFunction {
    function MaverickV2Pool$onTickSpacingFunction(FunctionContext memory ctx, MaverickV2Pool$TickSpacingFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xd0c93a7c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onTickSpacingFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreTickSpacingFunction {
    function MaverickV2Pool$preTickSpacingFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPreTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0xd0c93a7c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preTickSpacingFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnTokenAFunction {
    function MaverickV2Pool$onTokenAFunction(FunctionContext memory ctx, MaverickV2Pool$TokenAFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnTokenAFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x0fc63d10),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onTokenAFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreTokenAFunction {
    function MaverickV2Pool$preTokenAFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPreTokenAFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x0fc63d10),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preTokenAFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnTokenAScaleFunction {
    function MaverickV2Pool$onTokenAScaleFunction(FunctionContext memory ctx, MaverickV2Pool$TokenAScaleFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnTokenAScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x3ab72c10),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onTokenAScaleFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreTokenAScaleFunction {
    function MaverickV2Pool$preTokenAScaleFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPreTokenAScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x3ab72c10),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preTokenAScaleFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnTokenBFunction {
    function MaverickV2Pool$onTokenBFunction(FunctionContext memory ctx, MaverickV2Pool$TokenBFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnTokenBFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x5f64b55b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onTokenBFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreTokenBFunction {
    function MaverickV2Pool$preTokenBFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPreTokenBFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x5f64b55b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preTokenBFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$OnTokenBScaleFunction {
    function MaverickV2Pool$onTokenBScaleFunction(FunctionContext memory ctx, MaverickV2Pool$TokenBScaleFunctionOutputs memory outputs) virtual external;

    function MaverickV2Pool$triggerOnTokenBScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x21272d4c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$onTokenBScaleFunction.selector
        });
    }
}

abstract contract MaverickV2Pool$PreTokenBScaleFunction {
    function MaverickV2Pool$preTokenBScaleFunction(PreFunctionContext memory ctx) virtual external;

    function MaverickV2Pool$triggerPreTokenBScaleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "MaverickV2Pool",
            selector: bytes4(0x21272d4c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.MaverickV2Pool$preTokenBScaleFunction.selector
        });
    }
}

contract MaverickV2Pool$EmitAllEvents is
  MaverickV2Pool$OnPoolAddLiquidityEvent,
MaverickV2Pool$OnPoolMigrateBinsUpStackEvent,
MaverickV2Pool$OnPoolProtocolFeeCollectedEvent,
MaverickV2Pool$OnPoolRemoveLiquidityEvent,
MaverickV2Pool$OnPoolSetLendingFeeRateEvent,
MaverickV2Pool$OnPoolSetProtocolFeeRatioEvent,
MaverickV2Pool$OnPoolSetVariableFeeEvent,
MaverickV2Pool$OnPoolSwapEvent
{
  event PoolAddLiquidity(address sender, address recipient, uint256 subaccount, MaverickV2Pool$IMaverickV2Pool$AddLiquidityParams params, uint256 tokenAAmount, uint256 tokenBAmount, uint32[] binIds);
event PoolMigrateBinsUpStack(address sender, uint32 binId, uint32 maxRecursion);
event PoolProtocolFeeCollected(uint256 feeCollected, bool isTokenA);
event PoolRemoveLiquidity(address sender, address recipient, uint256 subaccount, MaverickV2Pool$IMaverickV2Pool$RemoveLiquidityParams params, uint256 tokenAOut, uint256 tokenBOut);
event PoolSetLendingFeeRate(uint256 lendingFeeRateD18);
event PoolSetProtocolFeeRatio(uint256 protocolFeeRatioD3);
event PoolSetVariableFee(uint256 newFeeAIn, uint256 newFeeBIn);
event PoolSwap(address sender, address recipient, MaverickV2Pool$IMaverickV2Pool$SwapParams params, uint256 amountIn, uint256 amountOut);

  function MaverickV2Pool$onPoolAddLiquidityEvent(EventContext memory ctx, MaverickV2Pool$PoolAddLiquidityEventParams memory inputs) virtual external override {
    emit PoolAddLiquidity(inputs.sender, inputs.recipient, inputs.subaccount, inputs.params, inputs.tokenAAmount, inputs.tokenBAmount, inputs.binIds);
  }
function MaverickV2Pool$onPoolMigrateBinsUpStackEvent(EventContext memory ctx, MaverickV2Pool$PoolMigrateBinsUpStackEventParams memory inputs) virtual external override {
    emit PoolMigrateBinsUpStack(inputs.sender, inputs.binId, inputs.maxRecursion);
  }
function MaverickV2Pool$onPoolProtocolFeeCollectedEvent(EventContext memory ctx, MaverickV2Pool$PoolProtocolFeeCollectedEventParams memory inputs) virtual external override {
    emit PoolProtocolFeeCollected(inputs.feeCollected, inputs.isTokenA);
  }
function MaverickV2Pool$onPoolRemoveLiquidityEvent(EventContext memory ctx, MaverickV2Pool$PoolRemoveLiquidityEventParams memory inputs) virtual external override {
    emit PoolRemoveLiquidity(inputs.sender, inputs.recipient, inputs.subaccount, inputs.params, inputs.tokenAOut, inputs.tokenBOut);
  }
function MaverickV2Pool$onPoolSetLendingFeeRateEvent(EventContext memory ctx, MaverickV2Pool$PoolSetLendingFeeRateEventParams memory inputs) virtual external override {
    emit PoolSetLendingFeeRate(inputs.lendingFeeRateD18);
  }
function MaverickV2Pool$onPoolSetProtocolFeeRatioEvent(EventContext memory ctx, MaverickV2Pool$PoolSetProtocolFeeRatioEventParams memory inputs) virtual external override {
    emit PoolSetProtocolFeeRatio(inputs.protocolFeeRatioD3);
  }
function MaverickV2Pool$onPoolSetVariableFeeEvent(EventContext memory ctx, MaverickV2Pool$PoolSetVariableFeeEventParams memory inputs) virtual external override {
    emit PoolSetVariableFee(inputs.newFeeAIn, inputs.newFeeBIn);
  }
function MaverickV2Pool$onPoolSwapEvent(EventContext memory ctx, MaverickV2Pool$PoolSwapEventParams memory inputs) virtual external override {
    emit PoolSwap(inputs.sender, inputs.recipient, inputs.params, inputs.amountIn, inputs.amountOut);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](8);
    triggers[0] = this.MaverickV2Pool$triggerOnPoolAddLiquidityEvent();
    triggers[1] = this.MaverickV2Pool$triggerOnPoolMigrateBinsUpStackEvent();
    triggers[2] = this.MaverickV2Pool$triggerOnPoolProtocolFeeCollectedEvent();
    triggers[3] = this.MaverickV2Pool$triggerOnPoolRemoveLiquidityEvent();
    triggers[4] = this.MaverickV2Pool$triggerOnPoolSetLendingFeeRateEvent();
    triggers[5] = this.MaverickV2Pool$triggerOnPoolSetProtocolFeeRatioEvent();
    triggers[6] = this.MaverickV2Pool$triggerOnPoolSetVariableFeeEvent();
    triggers[7] = this.MaverickV2Pool$triggerOnPoolSwapEvent();
    return triggers;
  }
}