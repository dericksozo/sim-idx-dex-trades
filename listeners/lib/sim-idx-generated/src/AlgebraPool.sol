// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function AlgebraPool$Abi() pure returns (Abi memory) {
    return Abi("AlgebraPool");
}
struct AlgebraPool$ActiveIncentiveFunctionOutputs {
    address outArg0;
}

struct AlgebraPool$BurnFunctionInputs {
    int24 bottomTick;
    int24 topTick;
    uint128 amount;
}

struct AlgebraPool$BurnFunctionOutputs {
    uint256 amount0;
    uint256 amount1;
}

struct AlgebraPool$CollectFunctionInputs {
    address recipient;
    int24 bottomTick;
    int24 topTick;
    uint128 amount0Requested;
    uint128 amount1Requested;
}

struct AlgebraPool$CollectFunctionOutputs {
    uint128 amount0;
    uint128 amount1;
}

struct AlgebraPool$DataStorageOperatorFunctionOutputs {
    address outArg0;
}

struct AlgebraPool$FactoryFunctionOutputs {
    address outArg0;
}

struct AlgebraPool$FlashFunctionInputs {
    address recipient;
    uint256 amount0;
    uint256 amount1;
    bytes data;
}

struct AlgebraPool$GetInnerCumulativesFunctionInputs {
    int24 bottomTick;
    int24 topTick;
}

struct AlgebraPool$GetInnerCumulativesFunctionOutputs {
    int56 innerTickCumulative;
    uint160 innerSecondsSpentPerLiquidity;
    uint32 innerSecondsSpent;
}

struct AlgebraPool$GetTimepointsFunctionInputs {
    uint32[] secondsAgos;
}

struct AlgebraPool$GetTimepointsFunctionOutputs {
    int56[] tickCumulatives;
    uint160[] secondsPerLiquidityCumulatives;
    uint112[] volatilityCumulatives;
    uint256[] volumePerAvgLiquiditys;
}

struct AlgebraPool$GlobalStateFunctionOutputs {
    uint160 price;
    int24 tick;
    uint16 feeZto;
    uint16 feeOtz;
    uint16 timepointIndex;
    uint8 communityFeeToken0;
    uint8 communityFeeToken1;
    bool unlocked;
}

struct AlgebraPool$InitializeFunctionInputs {
    uint160 initialPrice;
}

struct AlgebraPool$LiquidityFunctionOutputs {
    uint128 outArg0;
}

struct AlgebraPool$LiquidityCooldownFunctionOutputs {
    uint32 outArg0;
}

struct AlgebraPool$MaxLiquidityPerTickFunctionOutputs {
    uint128 outArg0;
}

struct AlgebraPool$MintFunctionInputs {
    address sender;
    address recipient;
    int24 bottomTick;
    int24 topTick;
    uint128 liquidityDesired;
    bytes data;
}

struct AlgebraPool$MintFunctionOutputs {
    uint256 amount0;
    uint256 amount1;
    uint128 liquidityActual;
}

struct AlgebraPool$PositionsFunctionInputs {
    bytes32 outArg0;
}

struct AlgebraPool$PositionsFunctionOutputs {
    uint128 liquidity;
    uint32 lastLiquidityAddTimestamp;
    uint256 innerFeeGrowth0Token;
    uint256 innerFeeGrowth1Token;
    uint128 fees0;
    uint128 fees1;
}

struct AlgebraPool$SetCommunityFeeFunctionInputs {
    uint8 communityFee0;
    uint8 communityFee1;
}

struct AlgebraPool$SetIncentiveFunctionInputs {
    address virtualPoolAddress;
}

struct AlgebraPool$SetLiquidityCooldownFunctionInputs {
    uint32 newLiquidityCooldown;
}

struct AlgebraPool$SetTickSpacingFunctionInputs {
    int24 newTickSpacing;
}

struct AlgebraPool$SwapFunctionInputs {
    address recipient;
    bool zeroToOne;
    int256 amountRequired;
    uint160 limitSqrtPrice;
    bytes data;
}

struct AlgebraPool$SwapFunctionOutputs {
    int256 amount0;
    int256 amount1;
}

struct AlgebraPool$SwapSupportingFeeOnInputTokensFunctionInputs {
    address sender;
    address recipient;
    bool zeroToOne;
    int256 amountRequired;
    uint160 limitSqrtPrice;
    bytes data;
}

struct AlgebraPool$SwapSupportingFeeOnInputTokensFunctionOutputs {
    int256 amount0;
    int256 amount1;
}

struct AlgebraPool$TickSpacingFunctionOutputs {
    int24 outArg0;
}

struct AlgebraPool$TickTableFunctionInputs {
    int16 outArg0;
}

struct AlgebraPool$TickTableFunctionOutputs {
    uint256 outArg0;
}

struct AlgebraPool$TicksFunctionInputs {
    int24 outArg0;
}

struct AlgebraPool$TicksFunctionOutputs {
    uint128 liquidityTotal;
    int128 liquidityDelta;
    uint256 outerFeeGrowth0Token;
    uint256 outerFeeGrowth1Token;
    int56 outerTickCumulative;
    uint160 outerSecondsPerLiquidity;
    uint32 outerSecondsSpent;
    bool initialized;
}

struct AlgebraPool$TimepointsFunctionInputs {
    uint256 index;
}

struct AlgebraPool$TimepointsFunctionOutputs {
    bool initialized;
    uint32 blockTimestamp;
    int56 tickCumulative;
    uint160 secondsPerLiquidityCumulative;
    uint88 volatilityCumulative;
    int24 averageTick;
    uint144 volumePerLiquidityCumulative;
}

struct AlgebraPool$Token0FunctionOutputs {
    address outArg0;
}

struct AlgebraPool$Token1FunctionOutputs {
    address outArg0;
}

struct AlgebraPool$TotalFeeGrowth0TokenFunctionOutputs {
    uint256 outArg0;
}

struct AlgebraPool$TotalFeeGrowth1TokenFunctionOutputs {
    uint256 outArg0;
}

struct AlgebraPool$BurnEventParams {
    address owner;
    int24 bottomTick;
    int24 topTick;
    uint128 liquidityAmount;
    uint256 amount0;
    uint256 amount1;
}

struct AlgebraPool$CollectEventParams {
    address owner;
    address recipient;
    int24 bottomTick;
    int24 topTick;
    uint128 amount0;
    uint128 amount1;
}

struct AlgebraPool$CommunityFeeEventParams {
    uint8 communityFee0New;
    uint8 communityFee1New;
}

struct AlgebraPool$FeeEventParams {
    uint16 feeZto;
    uint16 feeOtz;
}

struct AlgebraPool$FlashEventParams {
    address sender;
    address recipient;
    uint256 amount0;
    uint256 amount1;
    uint256 paid0;
    uint256 paid1;
}

struct AlgebraPool$IncentiveEventParams {
    address virtualPoolAddress;
}

struct AlgebraPool$InitializeEventParams {
    uint160 price;
    int24 tick;
}

struct AlgebraPool$LiquidityCooldownEventParams {
    uint32 liquidityCooldown;
}

struct AlgebraPool$MintEventParams {
    address sender;
    address owner;
    int24 bottomTick;
    int24 topTick;
    uint128 liquidityAmount;
    uint256 amount0;
    uint256 amount1;
}

struct AlgebraPool$SwapEventParams {
    address sender;
    address recipient;
    int256 amount0;
    int256 amount1;
    uint160 price;
    uint128 liquidity;
    int24 tick;
}

struct AlgebraPool$TickSpacingEventParams {
    int24 newTickSpacing;
}

abstract contract AlgebraPool$OnBurnEvent {
    function AlgebraPool$onBurnEvent(EventContext memory ctx, AlgebraPool$BurnEventParams memory inputs) virtual external;

    function AlgebraPool$triggerOnBurnEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes32(0x0c396cd989a39f4459b5fa1aed6a9a8dcdbc45908acfd67e028cd568da98982c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onBurnEvent.selector
        });
    }
}

abstract contract AlgebraPool$OnCollectEvent {
    function AlgebraPool$onCollectEvent(EventContext memory ctx, AlgebraPool$CollectEventParams memory inputs) virtual external;

    function AlgebraPool$triggerOnCollectEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes32(0x70935338e69775456a85ddef226c395fb668b63fa0115f5f20610b388e6ca9c0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onCollectEvent.selector
        });
    }
}

abstract contract AlgebraPool$OnCommunityFeeEvent {
    function AlgebraPool$onCommunityFeeEvent(EventContext memory ctx, AlgebraPool$CommunityFeeEventParams memory inputs) virtual external;

    function AlgebraPool$triggerOnCommunityFeeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes32(0x9e22b964b08e25c3aaa72102bb0071c089258fb82d51271a8ddf5c24921356ee),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onCommunityFeeEvent.selector
        });
    }
}

abstract contract AlgebraPool$OnFeeEvent {
    function AlgebraPool$onFeeEvent(EventContext memory ctx, AlgebraPool$FeeEventParams memory inputs) virtual external;

    function AlgebraPool$triggerOnFeeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes32(0x8a89de70856bccec096661388f305b9a75f5f65cb0d8a0e1e803c39dabedb57f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onFeeEvent.selector
        });
    }
}

abstract contract AlgebraPool$OnFlashEvent {
    function AlgebraPool$onFlashEvent(EventContext memory ctx, AlgebraPool$FlashEventParams memory inputs) virtual external;

    function AlgebraPool$triggerOnFlashEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes32(0xbdbdb71d7860376ba52b25a5028beea23581364a40522f6bcfb86bb1f2dca633),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onFlashEvent.selector
        });
    }
}

abstract contract AlgebraPool$OnIncentiveEvent {
    function AlgebraPool$onIncentiveEvent(EventContext memory ctx, AlgebraPool$IncentiveEventParams memory inputs) virtual external;

    function AlgebraPool$triggerOnIncentiveEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes32(0x915c5369e6580733735d1c2e30ca20dcaa395697a041033c9f35f80f53525e84),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onIncentiveEvent.selector
        });
    }
}

abstract contract AlgebraPool$OnInitializeEvent {
    function AlgebraPool$onInitializeEvent(EventContext memory ctx, AlgebraPool$InitializeEventParams memory inputs) virtual external;

    function AlgebraPool$triggerOnInitializeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes32(0x98636036cb66a9c19a37435efc1e90142190214e8abeb821bdba3f2990dd4c95),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onInitializeEvent.selector
        });
    }
}

abstract contract AlgebraPool$OnLiquidityCooldownEvent {
    function AlgebraPool$onLiquidityCooldownEvent(EventContext memory ctx, AlgebraPool$LiquidityCooldownEventParams memory inputs) virtual external;

    function AlgebraPool$triggerOnLiquidityCooldownEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes32(0xb5e51602371b0e74f991b6e965cd7d32b4b14c7e6ede6d1298037650a0e1405f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onLiquidityCooldownEvent.selector
        });
    }
}

abstract contract AlgebraPool$OnMintEvent {
    function AlgebraPool$onMintEvent(EventContext memory ctx, AlgebraPool$MintEventParams memory inputs) virtual external;

    function AlgebraPool$triggerOnMintEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes32(0x7a53080ba414158be7ec69b987b5fb7d07dee101fe85488f0853ae16239d0bde),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onMintEvent.selector
        });
    }
}

abstract contract AlgebraPool$OnSwapEvent {
    function AlgebraPool$onSwapEvent(EventContext memory ctx, AlgebraPool$SwapEventParams memory inputs) virtual external;

    function AlgebraPool$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes32(0xc42079f94a6350d7e6235f29174924f928cc2ac818eb64fed8004e115fbcca67),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onSwapEvent.selector
        });
    }
}

abstract contract AlgebraPool$OnTickSpacingEvent {
    function AlgebraPool$onTickSpacingEvent(EventContext memory ctx, AlgebraPool$TickSpacingEventParams memory inputs) virtual external;

    function AlgebraPool$triggerOnTickSpacingEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes32(0x01413b1d5d4c359e9a0daa7909ecda165f6e8c51fe2ff529d74b22a5a7c02645),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onTickSpacingEvent.selector
        });
    }
}

abstract contract AlgebraPool$OnActiveIncentiveFunction {
    function AlgebraPool$onActiveIncentiveFunction(FunctionContext memory ctx, AlgebraPool$ActiveIncentiveFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnActiveIncentiveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xfacb0eb1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onActiveIncentiveFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreActiveIncentiveFunction {
    function AlgebraPool$preActiveIncentiveFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraPool$triggerPreActiveIncentiveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xfacb0eb1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preActiveIncentiveFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnBurnFunction {
    function AlgebraPool$onBurnFunction(FunctionContext memory ctx, AlgebraPool$BurnFunctionInputs memory inputs, AlgebraPool$BurnFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xa34123a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onBurnFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreBurnFunction {
    function AlgebraPool$preBurnFunction(PreFunctionContext memory ctx, AlgebraPool$BurnFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xa34123a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preBurnFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnCollectFunction {
    function AlgebraPool$onCollectFunction(FunctionContext memory ctx, AlgebraPool$CollectFunctionInputs memory inputs, AlgebraPool$CollectFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnCollectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x4f1eb3d8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onCollectFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreCollectFunction {
    function AlgebraPool$preCollectFunction(PreFunctionContext memory ctx, AlgebraPool$CollectFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreCollectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x4f1eb3d8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preCollectFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnDataStorageOperatorFunction {
    function AlgebraPool$onDataStorageOperatorFunction(FunctionContext memory ctx, AlgebraPool$DataStorageOperatorFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnDataStorageOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x29047dfa),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onDataStorageOperatorFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreDataStorageOperatorFunction {
    function AlgebraPool$preDataStorageOperatorFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraPool$triggerPreDataStorageOperatorFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x29047dfa),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preDataStorageOperatorFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnFactoryFunction {
    function AlgebraPool$onFactoryFunction(FunctionContext memory ctx, AlgebraPool$FactoryFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onFactoryFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreFactoryFunction {
    function AlgebraPool$preFactoryFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraPool$triggerPreFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preFactoryFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnFlashFunction {
    function AlgebraPool$onFlashFunction(FunctionContext memory ctx, AlgebraPool$FlashFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerOnFlashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x490e6cbc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onFlashFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreFlashFunction {
    function AlgebraPool$preFlashFunction(PreFunctionContext memory ctx, AlgebraPool$FlashFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreFlashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x490e6cbc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preFlashFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnGetInnerCumulativesFunction {
    function AlgebraPool$onGetInnerCumulativesFunction(FunctionContext memory ctx, AlgebraPool$GetInnerCumulativesFunctionInputs memory inputs, AlgebraPool$GetInnerCumulativesFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnGetInnerCumulativesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x920c34e5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onGetInnerCumulativesFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreGetInnerCumulativesFunction {
    function AlgebraPool$preGetInnerCumulativesFunction(PreFunctionContext memory ctx, AlgebraPool$GetInnerCumulativesFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreGetInnerCumulativesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x920c34e5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preGetInnerCumulativesFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnGetTimepointsFunction {
    function AlgebraPool$onGetTimepointsFunction(FunctionContext memory ctx, AlgebraPool$GetTimepointsFunctionInputs memory inputs, AlgebraPool$GetTimepointsFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnGetTimepointsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x9d3a5241),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onGetTimepointsFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreGetTimepointsFunction {
    function AlgebraPool$preGetTimepointsFunction(PreFunctionContext memory ctx, AlgebraPool$GetTimepointsFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreGetTimepointsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x9d3a5241),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preGetTimepointsFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnGlobalStateFunction {
    function AlgebraPool$onGlobalStateFunction(FunctionContext memory ctx, AlgebraPool$GlobalStateFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnGlobalStateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xe76c01e4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onGlobalStateFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreGlobalStateFunction {
    function AlgebraPool$preGlobalStateFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraPool$triggerPreGlobalStateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xe76c01e4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preGlobalStateFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnInitializeFunction {
    function AlgebraPool$onInitializeFunction(FunctionContext memory ctx, AlgebraPool$InitializeFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xf637731d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onInitializeFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreInitializeFunction {
    function AlgebraPool$preInitializeFunction(PreFunctionContext memory ctx, AlgebraPool$InitializeFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xf637731d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preInitializeFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnLiquidityFunction {
    function AlgebraPool$onLiquidityFunction(FunctionContext memory ctx, AlgebraPool$LiquidityFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x1a686502),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onLiquidityFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreLiquidityFunction {
    function AlgebraPool$preLiquidityFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraPool$triggerPreLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x1a686502),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preLiquidityFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnLiquidityCooldownFunction {
    function AlgebraPool$onLiquidityCooldownFunction(FunctionContext memory ctx, AlgebraPool$LiquidityCooldownFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnLiquidityCooldownFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x17e25b3c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onLiquidityCooldownFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreLiquidityCooldownFunction {
    function AlgebraPool$preLiquidityCooldownFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraPool$triggerPreLiquidityCooldownFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x17e25b3c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preLiquidityCooldownFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnMaxLiquidityPerTickFunction {
    function AlgebraPool$onMaxLiquidityPerTickFunction(FunctionContext memory ctx, AlgebraPool$MaxLiquidityPerTickFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnMaxLiquidityPerTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x70cf754a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onMaxLiquidityPerTickFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreMaxLiquidityPerTickFunction {
    function AlgebraPool$preMaxLiquidityPerTickFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraPool$triggerPreMaxLiquidityPerTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x70cf754a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preMaxLiquidityPerTickFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnMintFunction {
    function AlgebraPool$onMintFunction(FunctionContext memory ctx, AlgebraPool$MintFunctionInputs memory inputs, AlgebraPool$MintFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xaafe29c0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onMintFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreMintFunction {
    function AlgebraPool$preMintFunction(PreFunctionContext memory ctx, AlgebraPool$MintFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xaafe29c0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preMintFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnPositionsFunction {
    function AlgebraPool$onPositionsFunction(FunctionContext memory ctx, AlgebraPool$PositionsFunctionInputs memory inputs, AlgebraPool$PositionsFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnPositionsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x514ea4bf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onPositionsFunction.selector
        });
    }
}

abstract contract AlgebraPool$PrePositionsFunction {
    function AlgebraPool$prePositionsFunction(PreFunctionContext memory ctx, AlgebraPool$PositionsFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPrePositionsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x514ea4bf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$prePositionsFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnSetCommunityFeeFunction {
    function AlgebraPool$onSetCommunityFeeFunction(FunctionContext memory ctx, AlgebraPool$SetCommunityFeeFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerOnSetCommunityFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x7c0112b7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onSetCommunityFeeFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreSetCommunityFeeFunction {
    function AlgebraPool$preSetCommunityFeeFunction(PreFunctionContext memory ctx, AlgebraPool$SetCommunityFeeFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreSetCommunityFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x7c0112b7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preSetCommunityFeeFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnSetIncentiveFunction {
    function AlgebraPool$onSetIncentiveFunction(FunctionContext memory ctx, AlgebraPool$SetIncentiveFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerOnSetIncentiveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x7c1fe0c8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onSetIncentiveFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreSetIncentiveFunction {
    function AlgebraPool$preSetIncentiveFunction(PreFunctionContext memory ctx, AlgebraPool$SetIncentiveFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreSetIncentiveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x7c1fe0c8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preSetIncentiveFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnSetLiquidityCooldownFunction {
    function AlgebraPool$onSetLiquidityCooldownFunction(FunctionContext memory ctx, AlgebraPool$SetLiquidityCooldownFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerOnSetLiquidityCooldownFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x289fe9b0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onSetLiquidityCooldownFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreSetLiquidityCooldownFunction {
    function AlgebraPool$preSetLiquidityCooldownFunction(PreFunctionContext memory ctx, AlgebraPool$SetLiquidityCooldownFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreSetLiquidityCooldownFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x289fe9b0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preSetLiquidityCooldownFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnSetTickSpacingFunction {
    function AlgebraPool$onSetTickSpacingFunction(FunctionContext memory ctx, AlgebraPool$SetTickSpacingFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerOnSetTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xf085a610),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onSetTickSpacingFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreSetTickSpacingFunction {
    function AlgebraPool$preSetTickSpacingFunction(PreFunctionContext memory ctx, AlgebraPool$SetTickSpacingFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreSetTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xf085a610),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preSetTickSpacingFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnSwapFunction {
    function AlgebraPool$onSwapFunction(FunctionContext memory ctx, AlgebraPool$SwapFunctionInputs memory inputs, AlgebraPool$SwapFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x128acb08),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onSwapFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreSwapFunction {
    function AlgebraPool$preSwapFunction(PreFunctionContext memory ctx, AlgebraPool$SwapFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x128acb08),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preSwapFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnSwapSupportingFeeOnInputTokensFunction {
    function AlgebraPool$onSwapSupportingFeeOnInputTokensFunction(FunctionContext memory ctx, AlgebraPool$SwapSupportingFeeOnInputTokensFunctionInputs memory inputs, AlgebraPool$SwapSupportingFeeOnInputTokensFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnSwapSupportingFeeOnInputTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x71334694),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onSwapSupportingFeeOnInputTokensFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreSwapSupportingFeeOnInputTokensFunction {
    function AlgebraPool$preSwapSupportingFeeOnInputTokensFunction(PreFunctionContext memory ctx, AlgebraPool$SwapSupportingFeeOnInputTokensFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreSwapSupportingFeeOnInputTokensFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x71334694),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preSwapSupportingFeeOnInputTokensFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnTickSpacingFunction {
    function AlgebraPool$onTickSpacingFunction(FunctionContext memory ctx, AlgebraPool$TickSpacingFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xd0c93a7c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onTickSpacingFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreTickSpacingFunction {
    function AlgebraPool$preTickSpacingFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraPool$triggerPreTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xd0c93a7c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preTickSpacingFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnTickTableFunction {
    function AlgebraPool$onTickTableFunction(FunctionContext memory ctx, AlgebraPool$TickTableFunctionInputs memory inputs, AlgebraPool$TickTableFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnTickTableFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xc677e3e0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onTickTableFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreTickTableFunction {
    function AlgebraPool$preTickTableFunction(PreFunctionContext memory ctx, AlgebraPool$TickTableFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreTickTableFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xc677e3e0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preTickTableFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnTicksFunction {
    function AlgebraPool$onTicksFunction(FunctionContext memory ctx, AlgebraPool$TicksFunctionInputs memory inputs, AlgebraPool$TicksFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnTicksFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xf30dba93),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onTicksFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreTicksFunction {
    function AlgebraPool$preTicksFunction(PreFunctionContext memory ctx, AlgebraPool$TicksFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreTicksFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xf30dba93),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preTicksFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnTimepointsFunction {
    function AlgebraPool$onTimepointsFunction(FunctionContext memory ctx, AlgebraPool$TimepointsFunctionInputs memory inputs, AlgebraPool$TimepointsFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnTimepointsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x74eceae6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onTimepointsFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreTimepointsFunction {
    function AlgebraPool$preTimepointsFunction(PreFunctionContext memory ctx, AlgebraPool$TimepointsFunctionInputs memory inputs) virtual external;

    function AlgebraPool$triggerPreTimepointsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x74eceae6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preTimepointsFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnToken0Function {
    function AlgebraPool$onToken0Function(FunctionContext memory ctx, AlgebraPool$Token0FunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onToken0Function.selector
        });
    }
}

abstract contract AlgebraPool$PreToken0Function {
    function AlgebraPool$preToken0Function(PreFunctionContext memory ctx) virtual external;

    function AlgebraPool$triggerPreToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preToken0Function.selector
        });
    }
}

abstract contract AlgebraPool$OnToken1Function {
    function AlgebraPool$onToken1Function(FunctionContext memory ctx, AlgebraPool$Token1FunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onToken1Function.selector
        });
    }
}

abstract contract AlgebraPool$PreToken1Function {
    function AlgebraPool$preToken1Function(PreFunctionContext memory ctx) virtual external;

    function AlgebraPool$triggerPreToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preToken1Function.selector
        });
    }
}

abstract contract AlgebraPool$OnTotalFeeGrowth0TokenFunction {
    function AlgebraPool$onTotalFeeGrowth0TokenFunction(FunctionContext memory ctx, AlgebraPool$TotalFeeGrowth0TokenFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnTotalFeeGrowth0TokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x6378ae44),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onTotalFeeGrowth0TokenFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreTotalFeeGrowth0TokenFunction {
    function AlgebraPool$preTotalFeeGrowth0TokenFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraPool$triggerPreTotalFeeGrowth0TokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0x6378ae44),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preTotalFeeGrowth0TokenFunction.selector
        });
    }
}

abstract contract AlgebraPool$OnTotalFeeGrowth1TokenFunction {
    function AlgebraPool$onTotalFeeGrowth1TokenFunction(FunctionContext memory ctx, AlgebraPool$TotalFeeGrowth1TokenFunctionOutputs memory outputs) virtual external;

    function AlgebraPool$triggerOnTotalFeeGrowth1TokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xecdecf42),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$onTotalFeeGrowth1TokenFunction.selector
        });
    }
}

abstract contract AlgebraPool$PreTotalFeeGrowth1TokenFunction {
    function AlgebraPool$preTotalFeeGrowth1TokenFunction(PreFunctionContext memory ctx) virtual external;

    function AlgebraPool$triggerPreTotalFeeGrowth1TokenFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "AlgebraPool",
            selector: bytes4(0xecdecf42),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.AlgebraPool$preTotalFeeGrowth1TokenFunction.selector
        });
    }
}


struct AlgebraPool$EmitAllEvents$Burn {
  address owner;
  int24 bottomTick;
  int24 topTick;
  uint128 liquidityAmount;
  uint256 amount0;
  uint256 amount1;
}

struct AlgebraPool$EmitAllEvents$Collect {
  address owner;
  address recipient;
  int24 bottomTick;
  int24 topTick;
  uint128 amount0;
  uint128 amount1;
}

struct AlgebraPool$EmitAllEvents$CommunityFee {
  uint8 communityFee0New;
  uint8 communityFee1New;
}

struct AlgebraPool$EmitAllEvents$Fee {
  uint16 feeZto;
  uint16 feeOtz;
}

struct AlgebraPool$EmitAllEvents$Flash {
  address sender;
  address recipient;
  uint256 amount0;
  uint256 amount1;
  uint256 paid0;
  uint256 paid1;
}

struct AlgebraPool$EmitAllEvents$Incentive {
  address virtualPoolAddress;
}

struct AlgebraPool$EmitAllEvents$Initialize {
  uint160 price;
  int24 tick;
}

struct AlgebraPool$EmitAllEvents$LiquidityCooldown {
  uint32 liquidityCooldown;
}

struct AlgebraPool$EmitAllEvents$Mint {
  address sender;
  address owner;
  int24 bottomTick;
  int24 topTick;
  uint128 liquidityAmount;
  uint256 amount0;
  uint256 amount1;
}

struct AlgebraPool$EmitAllEvents$Swap {
  address sender;
  address recipient;
  int256 amount0;
  int256 amount1;
  uint160 price;
  uint128 liquidity;
  int24 tick;
}

struct AlgebraPool$EmitAllEvents$TickSpacing {
  int24 newTickSpacing;
}

contract AlgebraPool$EmitAllEvents is
  AlgebraPool$OnBurnEvent,
AlgebraPool$OnCollectEvent,
AlgebraPool$OnCommunityFeeEvent,
AlgebraPool$OnFeeEvent,
AlgebraPool$OnFlashEvent,
AlgebraPool$OnIncentiveEvent,
AlgebraPool$OnInitializeEvent,
AlgebraPool$OnLiquidityCooldownEvent,
AlgebraPool$OnMintEvent,
AlgebraPool$OnSwapEvent,
AlgebraPool$OnTickSpacingEvent
{
  event Burn(AlgebraPool$EmitAllEvents$Burn);
  event Collect(AlgebraPool$EmitAllEvents$Collect);
  event CommunityFee(AlgebraPool$EmitAllEvents$CommunityFee);
  event Fee(AlgebraPool$EmitAllEvents$Fee);
  event Flash(AlgebraPool$EmitAllEvents$Flash);
  event Incentive(AlgebraPool$EmitAllEvents$Incentive);
  event Initialize(AlgebraPool$EmitAllEvents$Initialize);
  event LiquidityCooldown(AlgebraPool$EmitAllEvents$LiquidityCooldown);
  event Mint(AlgebraPool$EmitAllEvents$Mint);
  event Swap(AlgebraPool$EmitAllEvents$Swap);
  event TickSpacing(AlgebraPool$EmitAllEvents$TickSpacing);

  function AlgebraPool$onBurnEvent(EventContext memory ctx, AlgebraPool$BurnEventParams memory inputs) virtual external override {
    emit Burn(AlgebraPool$EmitAllEvents$Burn(inputs.owner, inputs.bottomTick, inputs.topTick, inputs.liquidityAmount, inputs.amount0, inputs.amount1));
  }
function AlgebraPool$onCollectEvent(EventContext memory ctx, AlgebraPool$CollectEventParams memory inputs) virtual external override {
    emit Collect(AlgebraPool$EmitAllEvents$Collect(inputs.owner, inputs.recipient, inputs.bottomTick, inputs.topTick, inputs.amount0, inputs.amount1));
  }
function AlgebraPool$onCommunityFeeEvent(EventContext memory ctx, AlgebraPool$CommunityFeeEventParams memory inputs) virtual external override {
    emit CommunityFee(AlgebraPool$EmitAllEvents$CommunityFee(inputs.communityFee0New, inputs.communityFee1New));
  }
function AlgebraPool$onFeeEvent(EventContext memory ctx, AlgebraPool$FeeEventParams memory inputs) virtual external override {
    emit Fee(AlgebraPool$EmitAllEvents$Fee(inputs.feeZto, inputs.feeOtz));
  }
function AlgebraPool$onFlashEvent(EventContext memory ctx, AlgebraPool$FlashEventParams memory inputs) virtual external override {
    emit Flash(AlgebraPool$EmitAllEvents$Flash(inputs.sender, inputs.recipient, inputs.amount0, inputs.amount1, inputs.paid0, inputs.paid1));
  }
function AlgebraPool$onIncentiveEvent(EventContext memory ctx, AlgebraPool$IncentiveEventParams memory inputs) virtual external override {
    emit Incentive(AlgebraPool$EmitAllEvents$Incentive(inputs.virtualPoolAddress));
  }
function AlgebraPool$onInitializeEvent(EventContext memory ctx, AlgebraPool$InitializeEventParams memory inputs) virtual external override {
    emit Initialize(AlgebraPool$EmitAllEvents$Initialize(inputs.price, inputs.tick));
  }
function AlgebraPool$onLiquidityCooldownEvent(EventContext memory ctx, AlgebraPool$LiquidityCooldownEventParams memory inputs) virtual external override {
    emit LiquidityCooldown(AlgebraPool$EmitAllEvents$LiquidityCooldown(inputs.liquidityCooldown));
  }
function AlgebraPool$onMintEvent(EventContext memory ctx, AlgebraPool$MintEventParams memory inputs) virtual external override {
    emit Mint(AlgebraPool$EmitAllEvents$Mint(inputs.sender, inputs.owner, inputs.bottomTick, inputs.topTick, inputs.liquidityAmount, inputs.amount0, inputs.amount1));
  }
function AlgebraPool$onSwapEvent(EventContext memory ctx, AlgebraPool$SwapEventParams memory inputs) virtual external override {
    emit Swap(AlgebraPool$EmitAllEvents$Swap(inputs.sender, inputs.recipient, inputs.amount0, inputs.amount1, inputs.price, inputs.liquidity, inputs.tick));
  }
function AlgebraPool$onTickSpacingEvent(EventContext memory ctx, AlgebraPool$TickSpacingEventParams memory inputs) virtual external override {
    emit TickSpacing(AlgebraPool$EmitAllEvents$TickSpacing(inputs.newTickSpacing));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](11);
    triggers[0] = this.AlgebraPool$triggerOnBurnEvent();
    triggers[1] = this.AlgebraPool$triggerOnCollectEvent();
    triggers[2] = this.AlgebraPool$triggerOnCommunityFeeEvent();
    triggers[3] = this.AlgebraPool$triggerOnFeeEvent();
    triggers[4] = this.AlgebraPool$triggerOnFlashEvent();
    triggers[5] = this.AlgebraPool$triggerOnIncentiveEvent();
    triggers[6] = this.AlgebraPool$triggerOnInitializeEvent();
    triggers[7] = this.AlgebraPool$triggerOnLiquidityCooldownEvent();
    triggers[8] = this.AlgebraPool$triggerOnMintEvent();
    triggers[9] = this.AlgebraPool$triggerOnSwapEvent();
    triggers[10] = this.AlgebraPool$triggerOnTickSpacingEvent();
    return triggers;
  }
}