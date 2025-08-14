// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function PancakeV3Pool$Abi() pure returns (Abi memory) {
    return Abi("PancakeV3Pool");
}
struct PancakeV3Pool$BurnFunctionInputs {
    int24 tickLower;
    int24 tickUpper;
    uint128 amount;
}

struct PancakeV3Pool$BurnFunctionOutputs {
    uint256 amount0;
    uint256 amount1;
}

struct PancakeV3Pool$CollectFunctionInputs {
    address recipient;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount0Requested;
    uint128 amount1Requested;
}

struct PancakeV3Pool$CollectFunctionOutputs {
    uint128 amount0;
    uint128 amount1;
}

struct PancakeV3Pool$CollectProtocolFunctionInputs {
    address recipient;
    uint128 amount0Requested;
    uint128 amount1Requested;
}

struct PancakeV3Pool$CollectProtocolFunctionOutputs {
    uint128 amount0;
    uint128 amount1;
}

struct PancakeV3Pool$FactoryFunctionOutputs {
    address outArg0;
}

struct PancakeV3Pool$FeeFunctionOutputs {
    uint24 outArg0;
}

struct PancakeV3Pool$FeeGrowthGlobal0X128FunctionOutputs {
    uint256 outArg0;
}

struct PancakeV3Pool$FeeGrowthGlobal1X128FunctionOutputs {
    uint256 outArg0;
}

struct PancakeV3Pool$FlashFunctionInputs {
    address recipient;
    uint256 amount0;
    uint256 amount1;
    bytes data;
}

struct PancakeV3Pool$IncreaseObservationCardinalityNextFunctionInputs {
    uint16 observationCardinalityNext;
}

struct PancakeV3Pool$InitializeFunctionInputs {
    uint160 sqrtPriceX96;
}

struct PancakeV3Pool$LiquidityFunctionOutputs {
    uint128 outArg0;
}

struct PancakeV3Pool$LmPoolFunctionOutputs {
    address outArg0;
}

struct PancakeV3Pool$MaxLiquidityPerTickFunctionOutputs {
    uint128 outArg0;
}

struct PancakeV3Pool$MintFunctionInputs {
    address recipient;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount;
    bytes data;
}

struct PancakeV3Pool$MintFunctionOutputs {
    uint256 amount0;
    uint256 amount1;
}

struct PancakeV3Pool$ObservationsFunctionInputs {
    uint256 outArg0;
}

struct PancakeV3Pool$ObservationsFunctionOutputs {
    uint32 blockTimestamp;
    int56 tickCumulative;
    uint160 secondsPerLiquidityCumulativeX128;
    bool initialized;
}

struct PancakeV3Pool$ObserveFunctionInputs {
    uint32[] secondsAgos;
}

struct PancakeV3Pool$ObserveFunctionOutputs {
    int56[] tickCumulatives;
    uint160[] secondsPerLiquidityCumulativeX128s;
}

struct PancakeV3Pool$PositionsFunctionInputs {
    bytes32 outArg0;
}

struct PancakeV3Pool$PositionsFunctionOutputs {
    uint128 liquidity;
    uint256 feeGrowthInside0LastX128;
    uint256 feeGrowthInside1LastX128;
    uint128 tokensOwed0;
    uint128 tokensOwed1;
}

struct PancakeV3Pool$ProtocolFeesFunctionOutputs {
    uint128 token0;
    uint128 token1;
}

struct PancakeV3Pool$SetFeeProtocolFunctionInputs {
    uint32 feeProtocol0;
    uint32 feeProtocol1;
}

struct PancakeV3Pool$SetLmPoolFunctionInputs {
    address _lmPool;
}

struct PancakeV3Pool$Slot0FunctionOutputs {
    uint160 sqrtPriceX96;
    int24 tick;
    uint16 observationIndex;
    uint16 observationCardinality;
    uint16 observationCardinalityNext;
    uint32 feeProtocol;
    bool unlocked;
}

struct PancakeV3Pool$SnapshotCumulativesInsideFunctionInputs {
    int24 tickLower;
    int24 tickUpper;
}

struct PancakeV3Pool$SnapshotCumulativesInsideFunctionOutputs {
    int56 tickCumulativeInside;
    uint160 secondsPerLiquidityInsideX128;
    uint32 secondsInside;
}

struct PancakeV3Pool$SwapFunctionInputs {
    address recipient;
    bool zeroForOne;
    int256 amountSpecified;
    uint160 sqrtPriceLimitX96;
    bytes data;
}

struct PancakeV3Pool$SwapFunctionOutputs {
    int256 amount0;
    int256 amount1;
}

struct PancakeV3Pool$TickBitmapFunctionInputs {
    int16 outArg0;
}

struct PancakeV3Pool$TickBitmapFunctionOutputs {
    uint256 outArg0;
}

struct PancakeV3Pool$TickSpacingFunctionOutputs {
    int24 outArg0;
}

struct PancakeV3Pool$TicksFunctionInputs {
    int24 outArg0;
}

struct PancakeV3Pool$TicksFunctionOutputs {
    uint128 liquidityGross;
    int128 liquidityNet;
    uint256 feeGrowthOutside0X128;
    uint256 feeGrowthOutside1X128;
    int56 tickCumulativeOutside;
    uint160 secondsPerLiquidityOutsideX128;
    uint32 secondsOutside;
    bool initialized;
}

struct PancakeV3Pool$Token0FunctionOutputs {
    address outArg0;
}

struct PancakeV3Pool$Token1FunctionOutputs {
    address outArg0;
}

struct PancakeV3Pool$BurnEventParams {
    address owner;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount;
    uint256 amount0;
    uint256 amount1;
}

struct PancakeV3Pool$CollectEventParams {
    address owner;
    address recipient;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount0;
    uint128 amount1;
}

struct PancakeV3Pool$CollectProtocolEventParams {
    address sender;
    address recipient;
    uint128 amount0;
    uint128 amount1;
}

struct PancakeV3Pool$FlashEventParams {
    address sender;
    address recipient;
    uint256 amount0;
    uint256 amount1;
    uint256 paid0;
    uint256 paid1;
}

struct PancakeV3Pool$IncreaseObservationCardinalityNextEventParams {
    uint16 observationCardinalityNextOld;
    uint16 observationCardinalityNextNew;
}

struct PancakeV3Pool$InitializeEventParams {
    uint160 sqrtPriceX96;
    int24 tick;
}

struct PancakeV3Pool$MintEventParams {
    address sender;
    address owner;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount;
    uint256 amount0;
    uint256 amount1;
}

struct PancakeV3Pool$SetFeeProtocolEventParams {
    uint32 feeProtocol0Old;
    uint32 feeProtocol1Old;
    uint32 feeProtocol0New;
    uint32 feeProtocol1New;
}

struct PancakeV3Pool$SetLmPoolEventEventParams {
    address addr;
}

struct PancakeV3Pool$SwapEventParams {
    address sender;
    address recipient;
    int256 amount0;
    int256 amount1;
    uint160 sqrtPriceX96;
    uint128 liquidity;
    int24 tick;
    uint128 protocolFeesToken0;
    uint128 protocolFeesToken1;
}

abstract contract PancakeV3Pool$OnBurnEvent {
    function PancakeV3Pool$onBurnEvent(EventContext memory ctx, PancakeV3Pool$BurnEventParams memory inputs) virtual external;

    function PancakeV3Pool$triggerOnBurnEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes32(0x0c396cd989a39f4459b5fa1aed6a9a8dcdbc45908acfd67e028cd568da98982c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onBurnEvent.selector
        });
    }
}

abstract contract PancakeV3Pool$OnCollectEvent {
    function PancakeV3Pool$onCollectEvent(EventContext memory ctx, PancakeV3Pool$CollectEventParams memory inputs) virtual external;

    function PancakeV3Pool$triggerOnCollectEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes32(0x70935338e69775456a85ddef226c395fb668b63fa0115f5f20610b388e6ca9c0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onCollectEvent.selector
        });
    }
}

abstract contract PancakeV3Pool$OnCollectProtocolEvent {
    function PancakeV3Pool$onCollectProtocolEvent(EventContext memory ctx, PancakeV3Pool$CollectProtocolEventParams memory inputs) virtual external;

    function PancakeV3Pool$triggerOnCollectProtocolEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes32(0x596b573906218d3411850b26a6b437d6c4522fdb43d2d2386263f86d50b8b151),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onCollectProtocolEvent.selector
        });
    }
}

abstract contract PancakeV3Pool$OnFlashEvent {
    function PancakeV3Pool$onFlashEvent(EventContext memory ctx, PancakeV3Pool$FlashEventParams memory inputs) virtual external;

    function PancakeV3Pool$triggerOnFlashEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes32(0xbdbdb71d7860376ba52b25a5028beea23581364a40522f6bcfb86bb1f2dca633),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onFlashEvent.selector
        });
    }
}

abstract contract PancakeV3Pool$OnIncreaseObservationCardinalityNextEvent {
    function PancakeV3Pool$onIncreaseObservationCardinalityNextEvent(EventContext memory ctx, PancakeV3Pool$IncreaseObservationCardinalityNextEventParams memory inputs) virtual external;

    function PancakeV3Pool$triggerOnIncreaseObservationCardinalityNextEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes32(0xac49e518f90a358f652e4400164f05a5d8f7e35e7747279bc3a93dbf584e125a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onIncreaseObservationCardinalityNextEvent.selector
        });
    }
}

abstract contract PancakeV3Pool$OnInitializeEvent {
    function PancakeV3Pool$onInitializeEvent(EventContext memory ctx, PancakeV3Pool$InitializeEventParams memory inputs) virtual external;

    function PancakeV3Pool$triggerOnInitializeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes32(0x98636036cb66a9c19a37435efc1e90142190214e8abeb821bdba3f2990dd4c95),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onInitializeEvent.selector
        });
    }
}

abstract contract PancakeV3Pool$OnMintEvent {
    function PancakeV3Pool$onMintEvent(EventContext memory ctx, PancakeV3Pool$MintEventParams memory inputs) virtual external;

    function PancakeV3Pool$triggerOnMintEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes32(0x7a53080ba414158be7ec69b987b5fb7d07dee101fe85488f0853ae16239d0bde),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onMintEvent.selector
        });
    }
}

abstract contract PancakeV3Pool$OnSetFeeProtocolEvent {
    function PancakeV3Pool$onSetFeeProtocolEvent(EventContext memory ctx, PancakeV3Pool$SetFeeProtocolEventParams memory inputs) virtual external;

    function PancakeV3Pool$triggerOnSetFeeProtocolEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes32(0xb3159fed3ddfba67bae294599eafe2d0ec98c08bb38e0e5fb87d33154b6e05aa),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onSetFeeProtocolEvent.selector
        });
    }
}

abstract contract PancakeV3Pool$OnSetLmPoolEventEvent {
    function PancakeV3Pool$onSetLmPoolEventEvent(EventContext memory ctx, PancakeV3Pool$SetLmPoolEventEventParams memory inputs) virtual external;

    function PancakeV3Pool$triggerOnSetLmPoolEventEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes32(0x29983690a85a11696ce8a357993744f8d5a74fde14653e517cc2f8608a7235e9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onSetLmPoolEventEvent.selector
        });
    }
}

abstract contract PancakeV3Pool$OnSwapEvent {
    function PancakeV3Pool$onSwapEvent(EventContext memory ctx, PancakeV3Pool$SwapEventParams memory inputs) virtual external;

    function PancakeV3Pool$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes32(0x19b47279256b2a23a1665c810c8d55a1758940ee09377d4f8d26497a3577dc83),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onSwapEvent.selector
        });
    }
}

abstract contract PancakeV3Pool$OnBurnFunction {
    function PancakeV3Pool$onBurnFunction(FunctionContext memory ctx, PancakeV3Pool$BurnFunctionInputs memory inputs, PancakeV3Pool$BurnFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xa34123a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onBurnFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreBurnFunction {
    function PancakeV3Pool$preBurnFunction(PreFunctionContext memory ctx, PancakeV3Pool$BurnFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xa34123a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preBurnFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnCollectFunction {
    function PancakeV3Pool$onCollectFunction(FunctionContext memory ctx, PancakeV3Pool$CollectFunctionInputs memory inputs, PancakeV3Pool$CollectFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnCollectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x4f1eb3d8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onCollectFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreCollectFunction {
    function PancakeV3Pool$preCollectFunction(PreFunctionContext memory ctx, PancakeV3Pool$CollectFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreCollectFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x4f1eb3d8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preCollectFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnCollectProtocolFunction {
    function PancakeV3Pool$onCollectProtocolFunction(FunctionContext memory ctx, PancakeV3Pool$CollectProtocolFunctionInputs memory inputs, PancakeV3Pool$CollectProtocolFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnCollectProtocolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x85b66729),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onCollectProtocolFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreCollectProtocolFunction {
    function PancakeV3Pool$preCollectProtocolFunction(PreFunctionContext memory ctx, PancakeV3Pool$CollectProtocolFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreCollectProtocolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x85b66729),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preCollectProtocolFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnFactoryFunction {
    function PancakeV3Pool$onFactoryFunction(FunctionContext memory ctx, PancakeV3Pool$FactoryFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onFactoryFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreFactoryFunction {
    function PancakeV3Pool$preFactoryFunction(PreFunctionContext memory ctx) virtual external;

    function PancakeV3Pool$triggerPreFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preFactoryFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnFeeFunction {
    function PancakeV3Pool$onFeeFunction(FunctionContext memory ctx, PancakeV3Pool$FeeFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xddca3f43),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onFeeFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreFeeFunction {
    function PancakeV3Pool$preFeeFunction(PreFunctionContext memory ctx) virtual external;

    function PancakeV3Pool$triggerPreFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xddca3f43),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preFeeFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnFeeGrowthGlobal0X128Function {
    function PancakeV3Pool$onFeeGrowthGlobal0X128Function(FunctionContext memory ctx, PancakeV3Pool$FeeGrowthGlobal0X128FunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnFeeGrowthGlobal0X128Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xf3058399),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onFeeGrowthGlobal0X128Function.selector
        });
    }
}

abstract contract PancakeV3Pool$PreFeeGrowthGlobal0X128Function {
    function PancakeV3Pool$preFeeGrowthGlobal0X128Function(PreFunctionContext memory ctx) virtual external;

    function PancakeV3Pool$triggerPreFeeGrowthGlobal0X128Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xf3058399),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preFeeGrowthGlobal0X128Function.selector
        });
    }
}

abstract contract PancakeV3Pool$OnFeeGrowthGlobal1X128Function {
    function PancakeV3Pool$onFeeGrowthGlobal1X128Function(FunctionContext memory ctx, PancakeV3Pool$FeeGrowthGlobal1X128FunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnFeeGrowthGlobal1X128Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x46141319),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onFeeGrowthGlobal1X128Function.selector
        });
    }
}

abstract contract PancakeV3Pool$PreFeeGrowthGlobal1X128Function {
    function PancakeV3Pool$preFeeGrowthGlobal1X128Function(PreFunctionContext memory ctx) virtual external;

    function PancakeV3Pool$triggerPreFeeGrowthGlobal1X128Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x46141319),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preFeeGrowthGlobal1X128Function.selector
        });
    }
}

abstract contract PancakeV3Pool$OnFlashFunction {
    function PancakeV3Pool$onFlashFunction(FunctionContext memory ctx, PancakeV3Pool$FlashFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerOnFlashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x490e6cbc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onFlashFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreFlashFunction {
    function PancakeV3Pool$preFlashFunction(PreFunctionContext memory ctx, PancakeV3Pool$FlashFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreFlashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x490e6cbc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preFlashFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnIncreaseObservationCardinalityNextFunction {
    function PancakeV3Pool$onIncreaseObservationCardinalityNextFunction(FunctionContext memory ctx, PancakeV3Pool$IncreaseObservationCardinalityNextFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerOnIncreaseObservationCardinalityNextFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x32148f67),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onIncreaseObservationCardinalityNextFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreIncreaseObservationCardinalityNextFunction {
    function PancakeV3Pool$preIncreaseObservationCardinalityNextFunction(PreFunctionContext memory ctx, PancakeV3Pool$IncreaseObservationCardinalityNextFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreIncreaseObservationCardinalityNextFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x32148f67),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preIncreaseObservationCardinalityNextFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnInitializeFunction {
    function PancakeV3Pool$onInitializeFunction(FunctionContext memory ctx, PancakeV3Pool$InitializeFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xf637731d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onInitializeFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreInitializeFunction {
    function PancakeV3Pool$preInitializeFunction(PreFunctionContext memory ctx, PancakeV3Pool$InitializeFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xf637731d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preInitializeFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnLiquidityFunction {
    function PancakeV3Pool$onLiquidityFunction(FunctionContext memory ctx, PancakeV3Pool$LiquidityFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x1a686502),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onLiquidityFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreLiquidityFunction {
    function PancakeV3Pool$preLiquidityFunction(PreFunctionContext memory ctx) virtual external;

    function PancakeV3Pool$triggerPreLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x1a686502),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preLiquidityFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnLmPoolFunction {
    function PancakeV3Pool$onLmPoolFunction(FunctionContext memory ctx, PancakeV3Pool$LmPoolFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnLmPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x540d4918),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onLmPoolFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreLmPoolFunction {
    function PancakeV3Pool$preLmPoolFunction(PreFunctionContext memory ctx) virtual external;

    function PancakeV3Pool$triggerPreLmPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x540d4918),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preLmPoolFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnMaxLiquidityPerTickFunction {
    function PancakeV3Pool$onMaxLiquidityPerTickFunction(FunctionContext memory ctx, PancakeV3Pool$MaxLiquidityPerTickFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnMaxLiquidityPerTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x70cf754a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onMaxLiquidityPerTickFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreMaxLiquidityPerTickFunction {
    function PancakeV3Pool$preMaxLiquidityPerTickFunction(PreFunctionContext memory ctx) virtual external;

    function PancakeV3Pool$triggerPreMaxLiquidityPerTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x70cf754a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preMaxLiquidityPerTickFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnMintFunction {
    function PancakeV3Pool$onMintFunction(FunctionContext memory ctx, PancakeV3Pool$MintFunctionInputs memory inputs, PancakeV3Pool$MintFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x3c8a7d8d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onMintFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreMintFunction {
    function PancakeV3Pool$preMintFunction(PreFunctionContext memory ctx, PancakeV3Pool$MintFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x3c8a7d8d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preMintFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnObservationsFunction {
    function PancakeV3Pool$onObservationsFunction(FunctionContext memory ctx, PancakeV3Pool$ObservationsFunctionInputs memory inputs, PancakeV3Pool$ObservationsFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnObservationsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x252c09d7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onObservationsFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreObservationsFunction {
    function PancakeV3Pool$preObservationsFunction(PreFunctionContext memory ctx, PancakeV3Pool$ObservationsFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreObservationsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x252c09d7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preObservationsFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnObserveFunction {
    function PancakeV3Pool$onObserveFunction(FunctionContext memory ctx, PancakeV3Pool$ObserveFunctionInputs memory inputs, PancakeV3Pool$ObserveFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnObserveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x883bdbfd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onObserveFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreObserveFunction {
    function PancakeV3Pool$preObserveFunction(PreFunctionContext memory ctx, PancakeV3Pool$ObserveFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreObserveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x883bdbfd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preObserveFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnPositionsFunction {
    function PancakeV3Pool$onPositionsFunction(FunctionContext memory ctx, PancakeV3Pool$PositionsFunctionInputs memory inputs, PancakeV3Pool$PositionsFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnPositionsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x514ea4bf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onPositionsFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PrePositionsFunction {
    function PancakeV3Pool$prePositionsFunction(PreFunctionContext memory ctx, PancakeV3Pool$PositionsFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPrePositionsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x514ea4bf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$prePositionsFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnProtocolFeesFunction {
    function PancakeV3Pool$onProtocolFeesFunction(FunctionContext memory ctx, PancakeV3Pool$ProtocolFeesFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnProtocolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x1ad8b03b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onProtocolFeesFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreProtocolFeesFunction {
    function PancakeV3Pool$preProtocolFeesFunction(PreFunctionContext memory ctx) virtual external;

    function PancakeV3Pool$triggerPreProtocolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x1ad8b03b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preProtocolFeesFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnSetFeeProtocolFunction {
    function PancakeV3Pool$onSetFeeProtocolFunction(FunctionContext memory ctx, PancakeV3Pool$SetFeeProtocolFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerOnSetFeeProtocolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xb0d0d211),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onSetFeeProtocolFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreSetFeeProtocolFunction {
    function PancakeV3Pool$preSetFeeProtocolFunction(PreFunctionContext memory ctx, PancakeV3Pool$SetFeeProtocolFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreSetFeeProtocolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xb0d0d211),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preSetFeeProtocolFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnSetLmPoolFunction {
    function PancakeV3Pool$onSetLmPoolFunction(FunctionContext memory ctx, PancakeV3Pool$SetLmPoolFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerOnSetLmPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xcc7e7fa2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onSetLmPoolFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreSetLmPoolFunction {
    function PancakeV3Pool$preSetLmPoolFunction(PreFunctionContext memory ctx, PancakeV3Pool$SetLmPoolFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreSetLmPoolFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xcc7e7fa2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preSetLmPoolFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnSlot0Function {
    function PancakeV3Pool$onSlot0Function(FunctionContext memory ctx, PancakeV3Pool$Slot0FunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnSlot0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x3850c7bd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onSlot0Function.selector
        });
    }
}

abstract contract PancakeV3Pool$PreSlot0Function {
    function PancakeV3Pool$preSlot0Function(PreFunctionContext memory ctx) virtual external;

    function PancakeV3Pool$triggerPreSlot0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x3850c7bd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preSlot0Function.selector
        });
    }
}

abstract contract PancakeV3Pool$OnSnapshotCumulativesInsideFunction {
    function PancakeV3Pool$onSnapshotCumulativesInsideFunction(FunctionContext memory ctx, PancakeV3Pool$SnapshotCumulativesInsideFunctionInputs memory inputs, PancakeV3Pool$SnapshotCumulativesInsideFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnSnapshotCumulativesInsideFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xa38807f2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onSnapshotCumulativesInsideFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreSnapshotCumulativesInsideFunction {
    function PancakeV3Pool$preSnapshotCumulativesInsideFunction(PreFunctionContext memory ctx, PancakeV3Pool$SnapshotCumulativesInsideFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreSnapshotCumulativesInsideFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xa38807f2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preSnapshotCumulativesInsideFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnSwapFunction {
    function PancakeV3Pool$onSwapFunction(FunctionContext memory ctx, PancakeV3Pool$SwapFunctionInputs memory inputs, PancakeV3Pool$SwapFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x128acb08),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onSwapFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreSwapFunction {
    function PancakeV3Pool$preSwapFunction(PreFunctionContext memory ctx, PancakeV3Pool$SwapFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x128acb08),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preSwapFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnTickBitmapFunction {
    function PancakeV3Pool$onTickBitmapFunction(FunctionContext memory ctx, PancakeV3Pool$TickBitmapFunctionInputs memory inputs, PancakeV3Pool$TickBitmapFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnTickBitmapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x5339c296),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onTickBitmapFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreTickBitmapFunction {
    function PancakeV3Pool$preTickBitmapFunction(PreFunctionContext memory ctx, PancakeV3Pool$TickBitmapFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreTickBitmapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x5339c296),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preTickBitmapFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnTickSpacingFunction {
    function PancakeV3Pool$onTickSpacingFunction(FunctionContext memory ctx, PancakeV3Pool$TickSpacingFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xd0c93a7c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onTickSpacingFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreTickSpacingFunction {
    function PancakeV3Pool$preTickSpacingFunction(PreFunctionContext memory ctx) virtual external;

    function PancakeV3Pool$triggerPreTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xd0c93a7c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preTickSpacingFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnTicksFunction {
    function PancakeV3Pool$onTicksFunction(FunctionContext memory ctx, PancakeV3Pool$TicksFunctionInputs memory inputs, PancakeV3Pool$TicksFunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnTicksFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xf30dba93),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onTicksFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$PreTicksFunction {
    function PancakeV3Pool$preTicksFunction(PreFunctionContext memory ctx, PancakeV3Pool$TicksFunctionInputs memory inputs) virtual external;

    function PancakeV3Pool$triggerPreTicksFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xf30dba93),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preTicksFunction.selector
        });
    }
}

abstract contract PancakeV3Pool$OnToken0Function {
    function PancakeV3Pool$onToken0Function(FunctionContext memory ctx, PancakeV3Pool$Token0FunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onToken0Function.selector
        });
    }
}

abstract contract PancakeV3Pool$PreToken0Function {
    function PancakeV3Pool$preToken0Function(PreFunctionContext memory ctx) virtual external;

    function PancakeV3Pool$triggerPreToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preToken0Function.selector
        });
    }
}

abstract contract PancakeV3Pool$OnToken1Function {
    function PancakeV3Pool$onToken1Function(FunctionContext memory ctx, PancakeV3Pool$Token1FunctionOutputs memory outputs) virtual external;

    function PancakeV3Pool$triggerOnToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$onToken1Function.selector
        });
    }
}

abstract contract PancakeV3Pool$PreToken1Function {
    function PancakeV3Pool$preToken1Function(PreFunctionContext memory ctx) virtual external;

    function PancakeV3Pool$triggerPreToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PancakeV3Pool",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.PancakeV3Pool$preToken1Function.selector
        });
    }
}


struct PancakeV3Pool$EmitAllEvents$Burn {
  address owner;
  int24 tickLower;
  int24 tickUpper;
  uint128 amount;
  uint256 amount0;
  uint256 amount1;
}

struct PancakeV3Pool$EmitAllEvents$Collect {
  address owner;
  address recipient;
  int24 tickLower;
  int24 tickUpper;
  uint128 amount0;
  uint128 amount1;
}

struct PancakeV3Pool$EmitAllEvents$CollectProtocol {
  address sender;
  address recipient;
  uint128 amount0;
  uint128 amount1;
}

struct PancakeV3Pool$EmitAllEvents$Flash {
  address sender;
  address recipient;
  uint256 amount0;
  uint256 amount1;
  uint256 paid0;
  uint256 paid1;
}

struct PancakeV3Pool$EmitAllEvents$IncreaseObservationCardinalityNext {
  uint16 observationCardinalityNextOld;
  uint16 observationCardinalityNextNew;
}

struct PancakeV3Pool$EmitAllEvents$Initialize {
  uint160 sqrtPriceX96;
  int24 tick;
}

struct PancakeV3Pool$EmitAllEvents$Mint {
  address sender;
  address owner;
  int24 tickLower;
  int24 tickUpper;
  uint128 amount;
  uint256 amount0;
  uint256 amount1;
}

struct PancakeV3Pool$EmitAllEvents$SetFeeProtocol {
  uint32 feeProtocol0Old;
  uint32 feeProtocol1Old;
  uint32 feeProtocol0New;
  uint32 feeProtocol1New;
}

struct PancakeV3Pool$EmitAllEvents$SetLmPoolEvent {
  address addr;
}

struct PancakeV3Pool$EmitAllEvents$Swap {
  address sender;
  address recipient;
  int256 amount0;
  int256 amount1;
  uint160 sqrtPriceX96;
  uint128 liquidity;
  int24 tick;
  uint128 protocolFeesToken0;
  uint128 protocolFeesToken1;
}

contract PancakeV3Pool$EmitAllEvents is
  PancakeV3Pool$OnBurnEvent,
PancakeV3Pool$OnCollectEvent,
PancakeV3Pool$OnCollectProtocolEvent,
PancakeV3Pool$OnFlashEvent,
PancakeV3Pool$OnIncreaseObservationCardinalityNextEvent,
PancakeV3Pool$OnInitializeEvent,
PancakeV3Pool$OnMintEvent,
PancakeV3Pool$OnSetFeeProtocolEvent,
PancakeV3Pool$OnSetLmPoolEventEvent,
PancakeV3Pool$OnSwapEvent
{
  event Burn(PancakeV3Pool$EmitAllEvents$Burn);
  event Collect(PancakeV3Pool$EmitAllEvents$Collect);
  event CollectProtocol(PancakeV3Pool$EmitAllEvents$CollectProtocol);
  event Flash(PancakeV3Pool$EmitAllEvents$Flash);
  event IncreaseObservationCardinalityNext(PancakeV3Pool$EmitAllEvents$IncreaseObservationCardinalityNext);
  event Initialize(PancakeV3Pool$EmitAllEvents$Initialize);
  event Mint(PancakeV3Pool$EmitAllEvents$Mint);
  event SetFeeProtocol(PancakeV3Pool$EmitAllEvents$SetFeeProtocol);
  event SetLmPoolEvent(PancakeV3Pool$EmitAllEvents$SetLmPoolEvent);
  event Swap(PancakeV3Pool$EmitAllEvents$Swap);

  function PancakeV3Pool$onBurnEvent(EventContext memory ctx, PancakeV3Pool$BurnEventParams memory inputs) virtual external override {
    emit Burn(PancakeV3Pool$EmitAllEvents$Burn(inputs.owner, inputs.tickLower, inputs.tickUpper, inputs.amount, inputs.amount0, inputs.amount1));
  }
function PancakeV3Pool$onCollectEvent(EventContext memory ctx, PancakeV3Pool$CollectEventParams memory inputs) virtual external override {
    emit Collect(PancakeV3Pool$EmitAllEvents$Collect(inputs.owner, inputs.recipient, inputs.tickLower, inputs.tickUpper, inputs.amount0, inputs.amount1));
  }
function PancakeV3Pool$onCollectProtocolEvent(EventContext memory ctx, PancakeV3Pool$CollectProtocolEventParams memory inputs) virtual external override {
    emit CollectProtocol(PancakeV3Pool$EmitAllEvents$CollectProtocol(inputs.sender, inputs.recipient, inputs.amount0, inputs.amount1));
  }
function PancakeV3Pool$onFlashEvent(EventContext memory ctx, PancakeV3Pool$FlashEventParams memory inputs) virtual external override {
    emit Flash(PancakeV3Pool$EmitAllEvents$Flash(inputs.sender, inputs.recipient, inputs.amount0, inputs.amount1, inputs.paid0, inputs.paid1));
  }
function PancakeV3Pool$onIncreaseObservationCardinalityNextEvent(EventContext memory ctx, PancakeV3Pool$IncreaseObservationCardinalityNextEventParams memory inputs) virtual external override {
    emit IncreaseObservationCardinalityNext(PancakeV3Pool$EmitAllEvents$IncreaseObservationCardinalityNext(inputs.observationCardinalityNextOld, inputs.observationCardinalityNextNew));
  }
function PancakeV3Pool$onInitializeEvent(EventContext memory ctx, PancakeV3Pool$InitializeEventParams memory inputs) virtual external override {
    emit Initialize(PancakeV3Pool$EmitAllEvents$Initialize(inputs.sqrtPriceX96, inputs.tick));
  }
function PancakeV3Pool$onMintEvent(EventContext memory ctx, PancakeV3Pool$MintEventParams memory inputs) virtual external override {
    emit Mint(PancakeV3Pool$EmitAllEvents$Mint(inputs.sender, inputs.owner, inputs.tickLower, inputs.tickUpper, inputs.amount, inputs.amount0, inputs.amount1));
  }
function PancakeV3Pool$onSetFeeProtocolEvent(EventContext memory ctx, PancakeV3Pool$SetFeeProtocolEventParams memory inputs) virtual external override {
    emit SetFeeProtocol(PancakeV3Pool$EmitAllEvents$SetFeeProtocol(inputs.feeProtocol0Old, inputs.feeProtocol1Old, inputs.feeProtocol0New, inputs.feeProtocol1New));
  }
function PancakeV3Pool$onSetLmPoolEventEvent(EventContext memory ctx, PancakeV3Pool$SetLmPoolEventEventParams memory inputs) virtual external override {
    emit SetLmPoolEvent(PancakeV3Pool$EmitAllEvents$SetLmPoolEvent(inputs.addr));
  }
function PancakeV3Pool$onSwapEvent(EventContext memory ctx, PancakeV3Pool$SwapEventParams memory inputs) virtual external override {
    emit Swap(PancakeV3Pool$EmitAllEvents$Swap(inputs.sender, inputs.recipient, inputs.amount0, inputs.amount1, inputs.sqrtPriceX96, inputs.liquidity, inputs.tick, inputs.protocolFeesToken0, inputs.protocolFeesToken1));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](10);
    triggers[0] = this.PancakeV3Pool$triggerOnBurnEvent();
    triggers[1] = this.PancakeV3Pool$triggerOnCollectEvent();
    triggers[2] = this.PancakeV3Pool$triggerOnCollectProtocolEvent();
    triggers[3] = this.PancakeV3Pool$triggerOnFlashEvent();
    triggers[4] = this.PancakeV3Pool$triggerOnIncreaseObservationCardinalityNextEvent();
    triggers[5] = this.PancakeV3Pool$triggerOnInitializeEvent();
    triggers[6] = this.PancakeV3Pool$triggerOnMintEvent();
    triggers[7] = this.PancakeV3Pool$triggerOnSetFeeProtocolEvent();
    triggers[8] = this.PancakeV3Pool$triggerOnSetLmPoolEventEvent();
    triggers[9] = this.PancakeV3Pool$triggerOnSwapEvent();
    return triggers;
  }
}