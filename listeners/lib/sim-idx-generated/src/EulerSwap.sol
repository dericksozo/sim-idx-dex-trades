// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function EulerSwap$Abi() pure returns (Abi memory) {
    return Abi("EulerSwap");
}
struct EulerSwap$EvcFunctionOutputs {
    address outArg0;
}

struct EulerSwap$IEulerSwap$InitialState {
    uint112 currReserve0;
    uint112 currReserve1;
}

struct EulerSwap$ActivateFunctionInputs {
    EulerSwap$IEulerSwap$InitialState initialState;
}

struct EulerSwap$PoolKey {
    address currency0;
    address currency1;
    uint24 fee;
    int24 tickSpacing;
    address hooks;
}

struct EulerSwap$IPoolManager$ModifyLiquidityParams {
    int24 tickLower;
    int24 tickUpper;
    int256 liquidityDelta;
    bytes32 salt;
}

struct EulerSwap$AfterAddLiquidityFunctionInputs {
    address sender;
    EulerSwap$PoolKey key;
    EulerSwap$IPoolManager$ModifyLiquidityParams params;
    int256 delta;
    int256 feesAccrued;
    bytes hookData;
}

struct EulerSwap$AfterAddLiquidityFunctionOutputs {
    bytes4 outArg0;
    int256 outArg1;
}

struct EulerSwap$AfterDonateFunctionInputs {
    address sender;
    EulerSwap$PoolKey key;
    uint256 amount0;
    uint256 amount1;
    bytes hookData;
}

struct EulerSwap$AfterDonateFunctionOutputs {
    bytes4 outArg0;
}

struct EulerSwap$AfterInitializeFunctionInputs {
    address sender;
    EulerSwap$PoolKey key;
    uint160 sqrtPriceX96;
    int24 tick;
}

struct EulerSwap$AfterInitializeFunctionOutputs {
    bytes4 outArg0;
}

struct EulerSwap$AfterRemoveLiquidityFunctionInputs {
    address sender;
    EulerSwap$PoolKey key;
    EulerSwap$IPoolManager$ModifyLiquidityParams params;
    int256 delta;
    int256 feesAccrued;
    bytes hookData;
}

struct EulerSwap$AfterRemoveLiquidityFunctionOutputs {
    bytes4 outArg0;
    int256 outArg1;
}

struct EulerSwap$IPoolManager$SwapParams {
    bool zeroForOne;
    int256 amountSpecified;
    uint160 sqrtPriceLimitX96;
}

struct EulerSwap$AfterSwapFunctionInputs {
    address sender;
    EulerSwap$PoolKey key;
    EulerSwap$IPoolManager$SwapParams params;
    int256 delta;
    bytes hookData;
}

struct EulerSwap$AfterSwapFunctionOutputs {
    bytes4 outArg0;
    int128 outArg1;
}

struct EulerSwap$BeforeAddLiquidityFunctionInputs {
    address sender;
    EulerSwap$PoolKey key;
    EulerSwap$IPoolManager$ModifyLiquidityParams params;
    bytes hookData;
}

struct EulerSwap$BeforeAddLiquidityFunctionOutputs {
    bytes4 outArg0;
}

struct EulerSwap$BeforeDonateFunctionInputs {
    address sender;
    EulerSwap$PoolKey key;
    uint256 amount0;
    uint256 amount1;
    bytes hookData;
}

struct EulerSwap$BeforeDonateFunctionOutputs {
    bytes4 outArg0;
}

struct EulerSwap$BeforeInitializeFunctionInputs {
    address sender;
    EulerSwap$PoolKey key;
    uint160 sqrtPriceX96;
}

struct EulerSwap$BeforeInitializeFunctionOutputs {
    bytes4 outArg0;
}

struct EulerSwap$BeforeRemoveLiquidityFunctionInputs {
    address sender;
    EulerSwap$PoolKey key;
    EulerSwap$IPoolManager$ModifyLiquidityParams params;
    bytes hookData;
}

struct EulerSwap$BeforeRemoveLiquidityFunctionOutputs {
    bytes4 outArg0;
}

struct EulerSwap$BeforeSwapFunctionInputs {
    address sender;
    EulerSwap$PoolKey key;
    EulerSwap$IPoolManager$SwapParams params;
    bytes hookData;
}

struct EulerSwap$BeforeSwapFunctionOutputs {
    bytes4 outArg0;
    int256 outArg1;
    uint24 outArg2;
}

struct EulerSwap$ComputeQuoteFunctionInputs {
    address tokenIn;
    address tokenOut;
    uint256 amount;
    bool exactIn;
}

struct EulerSwap$ComputeQuoteFunctionOutputs {
    uint256 outArg0;
}

struct EulerSwap$CurveFunctionOutputs {
    bytes32 outArg0;
}

struct EulerSwap$GetAssetsFunctionOutputs {
    address asset0;
    address asset1;
}

struct EulerSwap$Hooks$Permissions {
    bool beforeInitialize;
    bool afterInitialize;
    bool beforeAddLiquidity;
    bool afterAddLiquidity;
    bool beforeRemoveLiquidity;
    bool afterRemoveLiquidity;
    bool beforeSwap;
    bool afterSwap;
    bool beforeDonate;
    bool afterDonate;
    bool beforeSwapReturnDelta;
    bool afterSwapReturnDelta;
    bool afterAddLiquidityReturnDelta;
    bool afterRemoveLiquidityReturnDelta;
}

struct EulerSwap$GetHookPermissionsFunctionOutputs {
    EulerSwap$Hooks$Permissions outArg0;
}

struct EulerSwap$GetLimitsFunctionInputs {
    address tokenIn;
    address tokenOut;
}

struct EulerSwap$GetLimitsFunctionOutputs {
    uint256 outArg0;
    uint256 outArg1;
}

struct EulerSwap$IEulerSwap$Params {
    address vault0;
    address vault1;
    address eulerAccount;
    uint112 equilibriumReserve0;
    uint112 equilibriumReserve1;
    uint256 priceX;
    uint256 priceY;
    uint256 concentrationX;
    uint256 concentrationY;
    uint256 fee;
    uint256 protocolFee;
    address protocolFeeRecipient;
}

struct EulerSwap$GetParamsFunctionOutputs {
    EulerSwap$IEulerSwap$Params outArg0;
}

struct EulerSwap$GetReservesFunctionOutputs {
    uint112 outArg0;
    uint112 outArg1;
    uint32 outArg2;
}

struct EulerSwap$PoolKeyFunctionOutputs {
    EulerSwap$PoolKey outArg0;
}

struct EulerSwap$PoolManagerFunctionOutputs {
    address outArg0;
}

struct EulerSwap$SwapFunctionInputs {
    uint256 amount0Out;
    uint256 amount1Out;
    address to;
    bytes data;
}

struct EulerSwap$EulerSwapActivatedEventParams {
    address asset0;
    address asset1;
}

struct EulerSwap$SwapEventParams {
    address sender;
    uint256 amount0In;
    uint256 amount1In;
    uint256 amount0Out;
    uint256 amount1Out;
    uint112 reserve0;
    uint112 reserve1;
    address to;
}

abstract contract EulerSwap$OnEulerSwapActivatedEvent {
    function EulerSwap$onEulerSwapActivatedEvent(EventContext memory ctx, EulerSwap$EulerSwapActivatedEventParams memory inputs) virtual external;

    function EulerSwap$triggerOnEulerSwapActivatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes32(0xe9944f93cd869a79abb7a39884b29cf3572456b35cd63ac130a2749a0d90d56d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onEulerSwapActivatedEvent.selector
        });
    }
}

abstract contract EulerSwap$OnSwapEvent {
    function EulerSwap$onSwapEvent(EventContext memory ctx, EulerSwap$SwapEventParams memory inputs) virtual external;

    function EulerSwap$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes32(0x4813b0ad1586a6c47f088a07b488c1eadc58e7e7a9c3f1a71b3f33c5379133aa),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onSwapEvent.selector
        });
    }
}

abstract contract EulerSwap$OnEvcFunction {
    function EulerSwap$onEvcFunction(FunctionContext memory ctx, EulerSwap$EvcFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xa70354a1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onEvcFunction.selector
        });
    }
}

abstract contract EulerSwap$PreEvcFunction {
    function EulerSwap$preEvcFunction(PreFunctionContext memory ctx) virtual external;

    function EulerSwap$triggerPreEvcFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xa70354a1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preEvcFunction.selector
        });
    }
}

abstract contract EulerSwap$OnActivateFunction {
    function EulerSwap$onActivateFunction(FunctionContext memory ctx, EulerSwap$ActivateFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerOnActivateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x536aeb72),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onActivateFunction.selector
        });
    }
}

abstract contract EulerSwap$PreActivateFunction {
    function EulerSwap$preActivateFunction(PreFunctionContext memory ctx, EulerSwap$ActivateFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerPreActivateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x536aeb72),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preActivateFunction.selector
        });
    }
}

abstract contract EulerSwap$OnAfterAddLiquidityFunction {
    function EulerSwap$onAfterAddLiquidityFunction(FunctionContext memory ctx, EulerSwap$AfterAddLiquidityFunctionInputs memory inputs, EulerSwap$AfterAddLiquidityFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnAfterAddLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x9f063efc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onAfterAddLiquidityFunction.selector
        });
    }
}

abstract contract EulerSwap$PreAfterAddLiquidityFunction {
    function EulerSwap$preAfterAddLiquidityFunction(PreFunctionContext memory ctx, EulerSwap$AfterAddLiquidityFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerPreAfterAddLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x9f063efc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preAfterAddLiquidityFunction.selector
        });
    }
}

abstract contract EulerSwap$OnAfterDonateFunction {
    function EulerSwap$onAfterDonateFunction(FunctionContext memory ctx, EulerSwap$AfterDonateFunctionInputs memory inputs, EulerSwap$AfterDonateFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnAfterDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xe1b4af69),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onAfterDonateFunction.selector
        });
    }
}

abstract contract EulerSwap$PreAfterDonateFunction {
    function EulerSwap$preAfterDonateFunction(PreFunctionContext memory ctx, EulerSwap$AfterDonateFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerPreAfterDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xe1b4af69),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preAfterDonateFunction.selector
        });
    }
}

abstract contract EulerSwap$OnAfterInitializeFunction {
    function EulerSwap$onAfterInitializeFunction(FunctionContext memory ctx, EulerSwap$AfterInitializeFunctionInputs memory inputs, EulerSwap$AfterInitializeFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnAfterInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x6fe7e6eb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onAfterInitializeFunction.selector
        });
    }
}

abstract contract EulerSwap$PreAfterInitializeFunction {
    function EulerSwap$preAfterInitializeFunction(PreFunctionContext memory ctx, EulerSwap$AfterInitializeFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerPreAfterInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x6fe7e6eb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preAfterInitializeFunction.selector
        });
    }
}

abstract contract EulerSwap$OnAfterRemoveLiquidityFunction {
    function EulerSwap$onAfterRemoveLiquidityFunction(FunctionContext memory ctx, EulerSwap$AfterRemoveLiquidityFunctionInputs memory inputs, EulerSwap$AfterRemoveLiquidityFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnAfterRemoveLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x6c2bbe7e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onAfterRemoveLiquidityFunction.selector
        });
    }
}

abstract contract EulerSwap$PreAfterRemoveLiquidityFunction {
    function EulerSwap$preAfterRemoveLiquidityFunction(PreFunctionContext memory ctx, EulerSwap$AfterRemoveLiquidityFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerPreAfterRemoveLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x6c2bbe7e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preAfterRemoveLiquidityFunction.selector
        });
    }
}

abstract contract EulerSwap$OnAfterSwapFunction {
    function EulerSwap$onAfterSwapFunction(FunctionContext memory ctx, EulerSwap$AfterSwapFunctionInputs memory inputs, EulerSwap$AfterSwapFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnAfterSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xb47b2fb1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onAfterSwapFunction.selector
        });
    }
}

abstract contract EulerSwap$PreAfterSwapFunction {
    function EulerSwap$preAfterSwapFunction(PreFunctionContext memory ctx, EulerSwap$AfterSwapFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerPreAfterSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xb47b2fb1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preAfterSwapFunction.selector
        });
    }
}

abstract contract EulerSwap$OnBeforeAddLiquidityFunction {
    function EulerSwap$onBeforeAddLiquidityFunction(FunctionContext memory ctx, EulerSwap$BeforeAddLiquidityFunctionInputs memory inputs, EulerSwap$BeforeAddLiquidityFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnBeforeAddLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x259982e5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onBeforeAddLiquidityFunction.selector
        });
    }
}

abstract contract EulerSwap$PreBeforeAddLiquidityFunction {
    function EulerSwap$preBeforeAddLiquidityFunction(PreFunctionContext memory ctx, EulerSwap$BeforeAddLiquidityFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerPreBeforeAddLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x259982e5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preBeforeAddLiquidityFunction.selector
        });
    }
}

abstract contract EulerSwap$OnBeforeDonateFunction {
    function EulerSwap$onBeforeDonateFunction(FunctionContext memory ctx, EulerSwap$BeforeDonateFunctionInputs memory inputs, EulerSwap$BeforeDonateFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnBeforeDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xb6a8b0fa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onBeforeDonateFunction.selector
        });
    }
}

abstract contract EulerSwap$PreBeforeDonateFunction {
    function EulerSwap$preBeforeDonateFunction(PreFunctionContext memory ctx, EulerSwap$BeforeDonateFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerPreBeforeDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xb6a8b0fa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preBeforeDonateFunction.selector
        });
    }
}

abstract contract EulerSwap$OnBeforeInitializeFunction {
    function EulerSwap$onBeforeInitializeFunction(FunctionContext memory ctx, EulerSwap$BeforeInitializeFunctionInputs memory inputs, EulerSwap$BeforeInitializeFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnBeforeInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xdc98354e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onBeforeInitializeFunction.selector
        });
    }
}

abstract contract EulerSwap$PreBeforeInitializeFunction {
    function EulerSwap$preBeforeInitializeFunction(PreFunctionContext memory ctx, EulerSwap$BeforeInitializeFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerPreBeforeInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xdc98354e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preBeforeInitializeFunction.selector
        });
    }
}

abstract contract EulerSwap$OnBeforeRemoveLiquidityFunction {
    function EulerSwap$onBeforeRemoveLiquidityFunction(FunctionContext memory ctx, EulerSwap$BeforeRemoveLiquidityFunctionInputs memory inputs, EulerSwap$BeforeRemoveLiquidityFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnBeforeRemoveLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x21d0ee70),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onBeforeRemoveLiquidityFunction.selector
        });
    }
}

abstract contract EulerSwap$PreBeforeRemoveLiquidityFunction {
    function EulerSwap$preBeforeRemoveLiquidityFunction(PreFunctionContext memory ctx, EulerSwap$BeforeRemoveLiquidityFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerPreBeforeRemoveLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x21d0ee70),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preBeforeRemoveLiquidityFunction.selector
        });
    }
}

abstract contract EulerSwap$OnBeforeSwapFunction {
    function EulerSwap$onBeforeSwapFunction(FunctionContext memory ctx, EulerSwap$BeforeSwapFunctionInputs memory inputs, EulerSwap$BeforeSwapFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnBeforeSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x575e24b4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onBeforeSwapFunction.selector
        });
    }
}

abstract contract EulerSwap$PreBeforeSwapFunction {
    function EulerSwap$preBeforeSwapFunction(PreFunctionContext memory ctx, EulerSwap$BeforeSwapFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerPreBeforeSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x575e24b4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preBeforeSwapFunction.selector
        });
    }
}

abstract contract EulerSwap$OnComputeQuoteFunction {
    function EulerSwap$onComputeQuoteFunction(FunctionContext memory ctx, EulerSwap$ComputeQuoteFunctionInputs memory inputs, EulerSwap$ComputeQuoteFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnComputeQuoteFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x8e0dc28d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onComputeQuoteFunction.selector
        });
    }
}

abstract contract EulerSwap$PreComputeQuoteFunction {
    function EulerSwap$preComputeQuoteFunction(PreFunctionContext memory ctx, EulerSwap$ComputeQuoteFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerPreComputeQuoteFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x8e0dc28d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preComputeQuoteFunction.selector
        });
    }
}

abstract contract EulerSwap$OnCurveFunction {
    function EulerSwap$onCurveFunction(FunctionContext memory ctx, EulerSwap$CurveFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnCurveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x7165485d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onCurveFunction.selector
        });
    }
}

abstract contract EulerSwap$PreCurveFunction {
    function EulerSwap$preCurveFunction(PreFunctionContext memory ctx) virtual external;

    function EulerSwap$triggerPreCurveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x7165485d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preCurveFunction.selector
        });
    }
}

abstract contract EulerSwap$OnGetAssetsFunction {
    function EulerSwap$onGetAssetsFunction(FunctionContext memory ctx, EulerSwap$GetAssetsFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnGetAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x67e4ac2c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onGetAssetsFunction.selector
        });
    }
}

abstract contract EulerSwap$PreGetAssetsFunction {
    function EulerSwap$preGetAssetsFunction(PreFunctionContext memory ctx) virtual external;

    function EulerSwap$triggerPreGetAssetsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x67e4ac2c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preGetAssetsFunction.selector
        });
    }
}

abstract contract EulerSwap$OnGetHookPermissionsFunction {
    function EulerSwap$onGetHookPermissionsFunction(FunctionContext memory ctx, EulerSwap$GetHookPermissionsFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnGetHookPermissionsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xc4e833ce),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onGetHookPermissionsFunction.selector
        });
    }
}

abstract contract EulerSwap$PreGetHookPermissionsFunction {
    function EulerSwap$preGetHookPermissionsFunction(PreFunctionContext memory ctx) virtual external;

    function EulerSwap$triggerPreGetHookPermissionsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xc4e833ce),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preGetHookPermissionsFunction.selector
        });
    }
}

abstract contract EulerSwap$OnGetLimitsFunction {
    function EulerSwap$onGetLimitsFunction(FunctionContext memory ctx, EulerSwap$GetLimitsFunctionInputs memory inputs, EulerSwap$GetLimitsFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnGetLimitsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xaaed87a3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onGetLimitsFunction.selector
        });
    }
}

abstract contract EulerSwap$PreGetLimitsFunction {
    function EulerSwap$preGetLimitsFunction(PreFunctionContext memory ctx, EulerSwap$GetLimitsFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerPreGetLimitsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xaaed87a3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preGetLimitsFunction.selector
        });
    }
}

abstract contract EulerSwap$OnGetParamsFunction {
    function EulerSwap$onGetParamsFunction(FunctionContext memory ctx, EulerSwap$GetParamsFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnGetParamsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x5e615a6b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onGetParamsFunction.selector
        });
    }
}

abstract contract EulerSwap$PreGetParamsFunction {
    function EulerSwap$preGetParamsFunction(PreFunctionContext memory ctx) virtual external;

    function EulerSwap$triggerPreGetParamsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x5e615a6b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preGetParamsFunction.selector
        });
    }
}

abstract contract EulerSwap$OnGetReservesFunction {
    function EulerSwap$onGetReservesFunction(FunctionContext memory ctx, EulerSwap$GetReservesFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnGetReservesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x0902f1ac),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onGetReservesFunction.selector
        });
    }
}

abstract contract EulerSwap$PreGetReservesFunction {
    function EulerSwap$preGetReservesFunction(PreFunctionContext memory ctx) virtual external;

    function EulerSwap$triggerPreGetReservesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x0902f1ac),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preGetReservesFunction.selector
        });
    }
}

abstract contract EulerSwap$OnPoolKeyFunction {
    function EulerSwap$onPoolKeyFunction(FunctionContext memory ctx, EulerSwap$PoolKeyFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnPoolKeyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x182148ef),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onPoolKeyFunction.selector
        });
    }
}

abstract contract EulerSwap$PrePoolKeyFunction {
    function EulerSwap$prePoolKeyFunction(PreFunctionContext memory ctx) virtual external;

    function EulerSwap$triggerPrePoolKeyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x182148ef),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$prePoolKeyFunction.selector
        });
    }
}

abstract contract EulerSwap$OnPoolManagerFunction {
    function EulerSwap$onPoolManagerFunction(FunctionContext memory ctx, EulerSwap$PoolManagerFunctionOutputs memory outputs) virtual external;

    function EulerSwap$triggerOnPoolManagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xdc4c90d3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onPoolManagerFunction.selector
        });
    }
}

abstract contract EulerSwap$PrePoolManagerFunction {
    function EulerSwap$prePoolManagerFunction(PreFunctionContext memory ctx) virtual external;

    function EulerSwap$triggerPrePoolManagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0xdc4c90d3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$prePoolManagerFunction.selector
        });
    }
}

abstract contract EulerSwap$OnSwapFunction {
    function EulerSwap$onSwapFunction(FunctionContext memory ctx, EulerSwap$SwapFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x022c0d9f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$onSwapFunction.selector
        });
    }
}

abstract contract EulerSwap$PreSwapFunction {
    function EulerSwap$preSwapFunction(PreFunctionContext memory ctx, EulerSwap$SwapFunctionInputs memory inputs) virtual external;

    function EulerSwap$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EulerSwap",
            selector: bytes4(0x022c0d9f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EulerSwap$preSwapFunction.selector
        });
    }
}


struct EulerSwap$EmitAllEvents$EulerSwapActivated {
  address asset0;
  address asset1;
}

struct EulerSwap$EmitAllEvents$Swap {
  address sender;
  uint256 amount0In;
  uint256 amount1In;
  uint256 amount0Out;
  uint256 amount1Out;
  uint112 reserve0;
  uint112 reserve1;
  address to;
}

contract EulerSwap$EmitAllEvents is
  EulerSwap$OnEulerSwapActivatedEvent,
EulerSwap$OnSwapEvent
{
  event EulerSwapActivated(EulerSwap$EmitAllEvents$EulerSwapActivated);
  event Swap(EulerSwap$EmitAllEvents$Swap);

  function EulerSwap$onEulerSwapActivatedEvent(EventContext memory ctx, EulerSwap$EulerSwapActivatedEventParams memory inputs) virtual external override {
    emit EulerSwapActivated(EulerSwap$EmitAllEvents$EulerSwapActivated(inputs.asset0, inputs.asset1));
  }
function EulerSwap$onSwapEvent(EventContext memory ctx, EulerSwap$SwapEventParams memory inputs) virtual external override {
    emit Swap(EulerSwap$EmitAllEvents$Swap(inputs.sender, inputs.amount0In, inputs.amount1In, inputs.amount0Out, inputs.amount1Out, inputs.reserve0, inputs.reserve1, inputs.to));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](2);
    triggers[0] = this.EulerSwap$triggerOnEulerSwapActivatedEvent();
    triggers[1] = this.EulerSwap$triggerOnSwapEvent();
    return triggers;
  }
}