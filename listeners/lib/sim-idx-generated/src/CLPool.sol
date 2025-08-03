// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function CLPool$Abi() pure returns (Abi memory) {
    return Abi("CLPool");
}
struct CLPool$Burn0x6F89244CFunctionInputs {
    int24 tickLower;
    int24 tickUpper;
    uint128 amount;
    address owner;
}

struct CLPool$Burn0x6F89244CFunctionOutputs {
    uint256 amount0;
    uint256 amount1;
}

struct CLPool$Burn0xA34123A7FunctionInputs {
    int24 tickLower;
    int24 tickUpper;
    uint128 amount;
}

struct CLPool$Burn0xA34123A7FunctionOutputs {
    uint256 amount0;
    uint256 amount1;
}

struct CLPool$Collect0x31338374FunctionInputs {
    address recipient;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount0Requested;
    uint128 amount1Requested;
    address owner;
}

struct CLPool$Collect0x31338374FunctionOutputs {
    uint128 amount0;
    uint128 amount1;
}

struct CLPool$Collect0x4F1EB3D8FunctionInputs {
    address recipient;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount0Requested;
    uint128 amount1Requested;
}

struct CLPool$Collect0x4F1EB3D8FunctionOutputs {
    uint128 amount0;
    uint128 amount1;
}

struct CLPool$CollectFeesFunctionOutputs {
    uint128 amount0;
    uint128 amount1;
}

struct CLPool$FactoryFunctionOutputs {
    address outArg0;
}

struct CLPool$FactoryRegistryFunctionOutputs {
    address outArg0;
}

struct CLPool$FeeFunctionOutputs {
    uint24 outArg0;
}

struct CLPool$FeeGrowthGlobal0X128FunctionOutputs {
    uint256 outArg0;
}

struct CLPool$FeeGrowthGlobal1X128FunctionOutputs {
    uint256 outArg0;
}

struct CLPool$FlashFunctionInputs {
    address recipient;
    uint256 amount0;
    uint256 amount1;
    bytes data;
}

struct CLPool$GaugeFunctionOutputs {
    address outArg0;
}

struct CLPool$GaugeFeesFunctionOutputs {
    uint128 token0;
    uint128 token1;
}

struct CLPool$GetRewardGrowthInsideFunctionInputs {
    int24 tickLower;
    int24 tickUpper;
    uint256 _rewardGrowthGlobalX128;
}

struct CLPool$GetRewardGrowthInsideFunctionOutputs {
    uint256 rewardGrowthInside;
}

struct CLPool$IncreaseObservationCardinalityNextFunctionInputs {
    uint16 observationCardinalityNext;
}

struct CLPool$InitializeFunctionInputs {
    address _factory;
    address _token0;
    address _token1;
    int24 _tickSpacing;
    address _factoryRegistry;
    uint160 _sqrtPriceX96;
}

struct CLPool$LastUpdatedFunctionOutputs {
    uint32 outArg0;
}

struct CLPool$LiquidityFunctionOutputs {
    uint128 outArg0;
}

struct CLPool$MaxLiquidityPerTickFunctionOutputs {
    uint128 outArg0;
}

struct CLPool$MintFunctionInputs {
    address recipient;
    int24 tickLower;
    int24 tickUpper;
    uint128 amount;
    bytes data;
}

struct CLPool$MintFunctionOutputs {
    uint256 amount0;
    uint256 amount1;
}

struct CLPool$NftFunctionOutputs {
    address outArg0;
}

struct CLPool$ObservationsFunctionInputs {
    uint256 outArg0;
}

struct CLPool$ObservationsFunctionOutputs {
    uint32 blockTimestamp;
    int56 tickCumulative;
    uint160 secondsPerLiquidityCumulativeX128;
    bool initialized;
}

struct CLPool$ObserveFunctionInputs {
    uint32[] secondsAgos;
}

struct CLPool$ObserveFunctionOutputs {
    int56[] tickCumulatives;
    uint160[] secondsPerLiquidityCumulativeX128s;
}

struct CLPool$PeriodFinishFunctionOutputs {
    uint256 outArg0;
}

struct CLPool$PositionsFunctionInputs {
    bytes32 outArg0;
}

struct CLPool$PositionsFunctionOutputs {
    uint128 liquidity;
    uint256 feeGrowthInside0LastX128;
    uint256 feeGrowthInside1LastX128;
    uint128 tokensOwed0;
    uint128 tokensOwed1;
}

struct CLPool$RewardGrowthGlobalX128FunctionOutputs {
    uint256 outArg0;
}

struct CLPool$RewardRateFunctionOutputs {
    uint256 outArg0;
}

struct CLPool$RewardReserveFunctionOutputs {
    uint256 outArg0;
}

struct CLPool$RolloverFunctionOutputs {
    uint256 outArg0;
}

struct CLPool$SetGaugeAndPositionManagerFunctionInputs {
    address _gauge;
    address _nft;
}

struct CLPool$Slot0FunctionOutputs {
    uint160 sqrtPriceX96;
    int24 tick;
    uint16 observationIndex;
    uint16 observationCardinality;
    uint16 observationCardinalityNext;
    bool unlocked;
}

struct CLPool$SnapshotCumulativesInsideFunctionInputs {
    int24 tickLower;
    int24 tickUpper;
}

struct CLPool$SnapshotCumulativesInsideFunctionOutputs {
    int56 tickCumulativeInside;
    uint160 secondsPerLiquidityInsideX128;
    uint32 secondsInside;
}

struct CLPool$StakeFunctionInputs {
    int128 stakedLiquidityDelta;
    int24 tickLower;
    int24 tickUpper;
    bool positionUpdate;
}

struct CLPool$StakedLiquidityFunctionOutputs {
    uint128 outArg0;
}

struct CLPool$SwapFunctionInputs {
    address recipient;
    bool zeroForOne;
    int256 amountSpecified;
    uint160 sqrtPriceLimitX96;
    bytes data;
}

struct CLPool$SwapFunctionOutputs {
    int256 amount0;
    int256 amount1;
}

struct CLPool$SyncRewardFunctionInputs {
    uint256 _rewardRate;
    uint256 _rewardReserve;
    uint256 _periodFinish;
}

struct CLPool$TickBitmapFunctionInputs {
    int16 outArg0;
}

struct CLPool$TickBitmapFunctionOutputs {
    uint256 outArg0;
}

struct CLPool$TickSpacingFunctionOutputs {
    int24 outArg0;
}

struct CLPool$TicksFunctionInputs {
    int24 outArg0;
}

struct CLPool$TicksFunctionOutputs {
    uint128 liquidityGross;
    int128 liquidityNet;
    int128 stakedLiquidityNet;
    uint256 feeGrowthOutside0X128;
    uint256 feeGrowthOutside1X128;
    uint256 rewardGrowthOutsideX128;
    int56 tickCumulativeOutside;
    uint160 secondsPerLiquidityOutsideX128;
    uint32 secondsOutside;
    bool initialized;
}

struct CLPool$Token0FunctionOutputs {
    address outArg0;
}

struct CLPool$Token1FunctionOutputs {
    address outArg0;
}

struct CLPool$UnstakedFeeFunctionOutputs {
    uint24 outArg0;
}

struct CLPool$SwapEventParams {
    address sender;
    address recipient;
    int256 amount0;
    int256 amount1;
    uint160 sqrtPriceX96;
    uint128 liquidity;
    int24 tick;
}

abstract contract CLPool$OnSwapEvent {
    function CLPool$onSwapEvent(EventContext memory ctx, CLPool$SwapEventParams memory inputs) virtual external;

    function CLPool$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes32(0xc42079f94a6350d7e6235f29174924f928cc2ac818eb64fed8004e115fbcca67),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onSwapEvent.selector
        });
    }
}

abstract contract CLPool$OnBurn0x6F89244CFunction {
    function CLPool$onBurn0x6F89244CFunction(FunctionContext memory ctx, CLPool$Burn0x6F89244CFunctionInputs memory inputs, CLPool$Burn0x6F89244CFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnBurn0x6F89244CFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x6f89244c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onBurn0x6F89244CFunction.selector
        });
    }
}

abstract contract CLPool$PreBurn0x6F89244CFunction {
    function CLPool$preBurn0x6F89244CFunction(PreFunctionContext memory ctx, CLPool$Burn0x6F89244CFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreBurn0x6F89244CFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x6f89244c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preBurn0x6F89244CFunction.selector
        });
    }
}

abstract contract CLPool$OnBurn0xA34123A7Function {
    function CLPool$onBurn0xA34123A7Function(FunctionContext memory ctx, CLPool$Burn0xA34123A7FunctionInputs memory inputs, CLPool$Burn0xA34123A7FunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnBurn0xA34123A7Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xa34123a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onBurn0xA34123A7Function.selector
        });
    }
}

abstract contract CLPool$PreBurn0xA34123A7Function {
    function CLPool$preBurn0xA34123A7Function(PreFunctionContext memory ctx, CLPool$Burn0xA34123A7FunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreBurn0xA34123A7Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xa34123a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preBurn0xA34123A7Function.selector
        });
    }
}

abstract contract CLPool$OnCollect0x31338374Function {
    function CLPool$onCollect0x31338374Function(FunctionContext memory ctx, CLPool$Collect0x31338374FunctionInputs memory inputs, CLPool$Collect0x31338374FunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnCollect0x31338374Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x31338374),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onCollect0x31338374Function.selector
        });
    }
}

abstract contract CLPool$PreCollect0x31338374Function {
    function CLPool$preCollect0x31338374Function(PreFunctionContext memory ctx, CLPool$Collect0x31338374FunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreCollect0x31338374Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x31338374),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preCollect0x31338374Function.selector
        });
    }
}

abstract contract CLPool$OnCollect0x4F1EB3D8Function {
    function CLPool$onCollect0x4F1EB3D8Function(FunctionContext memory ctx, CLPool$Collect0x4F1EB3D8FunctionInputs memory inputs, CLPool$Collect0x4F1EB3D8FunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnCollect0x4F1EB3D8Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x4f1eb3d8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onCollect0x4F1EB3D8Function.selector
        });
    }
}

abstract contract CLPool$PreCollect0x4F1EB3D8Function {
    function CLPool$preCollect0x4F1EB3D8Function(PreFunctionContext memory ctx, CLPool$Collect0x4F1EB3D8FunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreCollect0x4F1EB3D8Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x4f1eb3d8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preCollect0x4F1EB3D8Function.selector
        });
    }
}

abstract contract CLPool$OnCollectFeesFunction {
    function CLPool$onCollectFeesFunction(FunctionContext memory ctx, CLPool$CollectFeesFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnCollectFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xc8796572),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onCollectFeesFunction.selector
        });
    }
}

abstract contract CLPool$PreCollectFeesFunction {
    function CLPool$preCollectFeesFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreCollectFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xc8796572),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preCollectFeesFunction.selector
        });
    }
}

abstract contract CLPool$OnFactoryFunction {
    function CLPool$onFactoryFunction(FunctionContext memory ctx, CLPool$FactoryFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onFactoryFunction.selector
        });
    }
}

abstract contract CLPool$PreFactoryFunction {
    function CLPool$preFactoryFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreFactoryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xc45a0155),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preFactoryFunction.selector
        });
    }
}

abstract contract CLPool$OnFactoryRegistryFunction {
    function CLPool$onFactoryRegistryFunction(FunctionContext memory ctx, CLPool$FactoryRegistryFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnFactoryRegistryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x3bf0c9fb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onFactoryRegistryFunction.selector
        });
    }
}

abstract contract CLPool$PreFactoryRegistryFunction {
    function CLPool$preFactoryRegistryFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreFactoryRegistryFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x3bf0c9fb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preFactoryRegistryFunction.selector
        });
    }
}

abstract contract CLPool$OnFeeFunction {
    function CLPool$onFeeFunction(FunctionContext memory ctx, CLPool$FeeFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xddca3f43),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onFeeFunction.selector
        });
    }
}

abstract contract CLPool$PreFeeFunction {
    function CLPool$preFeeFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xddca3f43),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preFeeFunction.selector
        });
    }
}

abstract contract CLPool$OnFeeGrowthGlobal0X128Function {
    function CLPool$onFeeGrowthGlobal0X128Function(FunctionContext memory ctx, CLPool$FeeGrowthGlobal0X128FunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnFeeGrowthGlobal0X128Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xf3058399),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onFeeGrowthGlobal0X128Function.selector
        });
    }
}

abstract contract CLPool$PreFeeGrowthGlobal0X128Function {
    function CLPool$preFeeGrowthGlobal0X128Function(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreFeeGrowthGlobal0X128Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xf3058399),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preFeeGrowthGlobal0X128Function.selector
        });
    }
}

abstract contract CLPool$OnFeeGrowthGlobal1X128Function {
    function CLPool$onFeeGrowthGlobal1X128Function(FunctionContext memory ctx, CLPool$FeeGrowthGlobal1X128FunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnFeeGrowthGlobal1X128Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x46141319),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onFeeGrowthGlobal1X128Function.selector
        });
    }
}

abstract contract CLPool$PreFeeGrowthGlobal1X128Function {
    function CLPool$preFeeGrowthGlobal1X128Function(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreFeeGrowthGlobal1X128Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x46141319),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preFeeGrowthGlobal1X128Function.selector
        });
    }
}

abstract contract CLPool$OnFlashFunction {
    function CLPool$onFlashFunction(FunctionContext memory ctx, CLPool$FlashFunctionInputs memory inputs) virtual external;

    function CLPool$triggerOnFlashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x490e6cbc),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onFlashFunction.selector
        });
    }
}

abstract contract CLPool$PreFlashFunction {
    function CLPool$preFlashFunction(PreFunctionContext memory ctx, CLPool$FlashFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreFlashFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x490e6cbc),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preFlashFunction.selector
        });
    }
}

abstract contract CLPool$OnGaugeFunction {
    function CLPool$onGaugeFunction(FunctionContext memory ctx, CLPool$GaugeFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnGaugeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xa6f19c84),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onGaugeFunction.selector
        });
    }
}

abstract contract CLPool$PreGaugeFunction {
    function CLPool$preGaugeFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreGaugeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xa6f19c84),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preGaugeFunction.selector
        });
    }
}

abstract contract CLPool$OnGaugeFeesFunction {
    function CLPool$onGaugeFeesFunction(FunctionContext memory ctx, CLPool$GaugeFeesFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnGaugeFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x293833ba),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onGaugeFeesFunction.selector
        });
    }
}

abstract contract CLPool$PreGaugeFeesFunction {
    function CLPool$preGaugeFeesFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreGaugeFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x293833ba),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preGaugeFeesFunction.selector
        });
    }
}

abstract contract CLPool$OnGetRewardGrowthInsideFunction {
    function CLPool$onGetRewardGrowthInsideFunction(FunctionContext memory ctx, CLPool$GetRewardGrowthInsideFunctionInputs memory inputs, CLPool$GetRewardGrowthInsideFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnGetRewardGrowthInsideFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xa16368c9),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onGetRewardGrowthInsideFunction.selector
        });
    }
}

abstract contract CLPool$PreGetRewardGrowthInsideFunction {
    function CLPool$preGetRewardGrowthInsideFunction(PreFunctionContext memory ctx, CLPool$GetRewardGrowthInsideFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreGetRewardGrowthInsideFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xa16368c9),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preGetRewardGrowthInsideFunction.selector
        });
    }
}

abstract contract CLPool$OnIncreaseObservationCardinalityNextFunction {
    function CLPool$onIncreaseObservationCardinalityNextFunction(FunctionContext memory ctx, CLPool$IncreaseObservationCardinalityNextFunctionInputs memory inputs) virtual external;

    function CLPool$triggerOnIncreaseObservationCardinalityNextFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x32148f67),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onIncreaseObservationCardinalityNextFunction.selector
        });
    }
}

abstract contract CLPool$PreIncreaseObservationCardinalityNextFunction {
    function CLPool$preIncreaseObservationCardinalityNextFunction(PreFunctionContext memory ctx, CLPool$IncreaseObservationCardinalityNextFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreIncreaseObservationCardinalityNextFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x32148f67),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preIncreaseObservationCardinalityNextFunction.selector
        });
    }
}

abstract contract CLPool$OnInitializeFunction {
    function CLPool$onInitializeFunction(FunctionContext memory ctx, CLPool$InitializeFunctionInputs memory inputs) virtual external;

    function CLPool$triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x2071d884),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onInitializeFunction.selector
        });
    }
}

abstract contract CLPool$PreInitializeFunction {
    function CLPool$preInitializeFunction(PreFunctionContext memory ctx, CLPool$InitializeFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x2071d884),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preInitializeFunction.selector
        });
    }
}

abstract contract CLPool$OnLastUpdatedFunction {
    function CLPool$onLastUpdatedFunction(FunctionContext memory ctx, CLPool$LastUpdatedFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnLastUpdatedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xd0b06f5d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onLastUpdatedFunction.selector
        });
    }
}

abstract contract CLPool$PreLastUpdatedFunction {
    function CLPool$preLastUpdatedFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreLastUpdatedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xd0b06f5d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preLastUpdatedFunction.selector
        });
    }
}

abstract contract CLPool$OnLiquidityFunction {
    function CLPool$onLiquidityFunction(FunctionContext memory ctx, CLPool$LiquidityFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x1a686502),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onLiquidityFunction.selector
        });
    }
}

abstract contract CLPool$PreLiquidityFunction {
    function CLPool$preLiquidityFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x1a686502),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preLiquidityFunction.selector
        });
    }
}

abstract contract CLPool$OnMaxLiquidityPerTickFunction {
    function CLPool$onMaxLiquidityPerTickFunction(FunctionContext memory ctx, CLPool$MaxLiquidityPerTickFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnMaxLiquidityPerTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x70cf754a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onMaxLiquidityPerTickFunction.selector
        });
    }
}

abstract contract CLPool$PreMaxLiquidityPerTickFunction {
    function CLPool$preMaxLiquidityPerTickFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreMaxLiquidityPerTickFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x70cf754a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preMaxLiquidityPerTickFunction.selector
        });
    }
}

abstract contract CLPool$OnMintFunction {
    function CLPool$onMintFunction(FunctionContext memory ctx, CLPool$MintFunctionInputs memory inputs, CLPool$MintFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x3c8a7d8d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onMintFunction.selector
        });
    }
}

abstract contract CLPool$PreMintFunction {
    function CLPool$preMintFunction(PreFunctionContext memory ctx, CLPool$MintFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x3c8a7d8d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preMintFunction.selector
        });
    }
}

abstract contract CLPool$OnNftFunction {
    function CLPool$onNftFunction(FunctionContext memory ctx, CLPool$NftFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnNftFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x47ccca02),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onNftFunction.selector
        });
    }
}

abstract contract CLPool$PreNftFunction {
    function CLPool$preNftFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreNftFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x47ccca02),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preNftFunction.selector
        });
    }
}

abstract contract CLPool$OnObservationsFunction {
    function CLPool$onObservationsFunction(FunctionContext memory ctx, CLPool$ObservationsFunctionInputs memory inputs, CLPool$ObservationsFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnObservationsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x252c09d7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onObservationsFunction.selector
        });
    }
}

abstract contract CLPool$PreObservationsFunction {
    function CLPool$preObservationsFunction(PreFunctionContext memory ctx, CLPool$ObservationsFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreObservationsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x252c09d7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preObservationsFunction.selector
        });
    }
}

abstract contract CLPool$OnObserveFunction {
    function CLPool$onObserveFunction(FunctionContext memory ctx, CLPool$ObserveFunctionInputs memory inputs, CLPool$ObserveFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnObserveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x883bdbfd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onObserveFunction.selector
        });
    }
}

abstract contract CLPool$PreObserveFunction {
    function CLPool$preObserveFunction(PreFunctionContext memory ctx, CLPool$ObserveFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreObserveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x883bdbfd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preObserveFunction.selector
        });
    }
}

abstract contract CLPool$OnPeriodFinishFunction {
    function CLPool$onPeriodFinishFunction(FunctionContext memory ctx, CLPool$PeriodFinishFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnPeriodFinishFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xebe2b12b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onPeriodFinishFunction.selector
        });
    }
}

abstract contract CLPool$PrePeriodFinishFunction {
    function CLPool$prePeriodFinishFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPrePeriodFinishFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xebe2b12b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$prePeriodFinishFunction.selector
        });
    }
}

abstract contract CLPool$OnPositionsFunction {
    function CLPool$onPositionsFunction(FunctionContext memory ctx, CLPool$PositionsFunctionInputs memory inputs, CLPool$PositionsFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnPositionsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x514ea4bf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onPositionsFunction.selector
        });
    }
}

abstract contract CLPool$PrePositionsFunction {
    function CLPool$prePositionsFunction(PreFunctionContext memory ctx, CLPool$PositionsFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPrePositionsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x514ea4bf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$prePositionsFunction.selector
        });
    }
}

abstract contract CLPool$OnRewardGrowthGlobalX128Function {
    function CLPool$onRewardGrowthGlobalX128Function(FunctionContext memory ctx, CLPool$RewardGrowthGlobalX128FunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnRewardGrowthGlobalX128Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x57806ada),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onRewardGrowthGlobalX128Function.selector
        });
    }
}

abstract contract CLPool$PreRewardGrowthGlobalX128Function {
    function CLPool$preRewardGrowthGlobalX128Function(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreRewardGrowthGlobalX128Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x57806ada),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preRewardGrowthGlobalX128Function.selector
        });
    }
}

abstract contract CLPool$OnRewardRateFunction {
    function CLPool$onRewardRateFunction(FunctionContext memory ctx, CLPool$RewardRateFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnRewardRateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x7b0a47ee),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onRewardRateFunction.selector
        });
    }
}

abstract contract CLPool$PreRewardRateFunction {
    function CLPool$preRewardRateFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreRewardRateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x7b0a47ee),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preRewardRateFunction.selector
        });
    }
}

abstract contract CLPool$OnRewardReserveFunction {
    function CLPool$onRewardReserveFunction(FunctionContext memory ctx, CLPool$RewardReserveFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnRewardReserveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xcab64bcd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onRewardReserveFunction.selector
        });
    }
}

abstract contract CLPool$PreRewardReserveFunction {
    function CLPool$preRewardReserveFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreRewardReserveFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xcab64bcd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preRewardReserveFunction.selector
        });
    }
}

abstract contract CLPool$OnRolloverFunction {
    function CLPool$onRolloverFunction(FunctionContext memory ctx, CLPool$RolloverFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnRolloverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xb056b49a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onRolloverFunction.selector
        });
    }
}

abstract contract CLPool$PreRolloverFunction {
    function CLPool$preRolloverFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreRolloverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xb056b49a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preRolloverFunction.selector
        });
    }
}

abstract contract CLPool$OnSetGaugeAndPositionManagerFunction {
    function CLPool$onSetGaugeAndPositionManagerFunction(FunctionContext memory ctx, CLPool$SetGaugeAndPositionManagerFunctionInputs memory inputs) virtual external;

    function CLPool$triggerOnSetGaugeAndPositionManagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x1f7c3568),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onSetGaugeAndPositionManagerFunction.selector
        });
    }
}

abstract contract CLPool$PreSetGaugeAndPositionManagerFunction {
    function CLPool$preSetGaugeAndPositionManagerFunction(PreFunctionContext memory ctx, CLPool$SetGaugeAndPositionManagerFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreSetGaugeAndPositionManagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x1f7c3568),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preSetGaugeAndPositionManagerFunction.selector
        });
    }
}

abstract contract CLPool$OnSlot0Function {
    function CLPool$onSlot0Function(FunctionContext memory ctx, CLPool$Slot0FunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnSlot0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x3850c7bd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onSlot0Function.selector
        });
    }
}

abstract contract CLPool$PreSlot0Function {
    function CLPool$preSlot0Function(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreSlot0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x3850c7bd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preSlot0Function.selector
        });
    }
}

abstract contract CLPool$OnSnapshotCumulativesInsideFunction {
    function CLPool$onSnapshotCumulativesInsideFunction(FunctionContext memory ctx, CLPool$SnapshotCumulativesInsideFunctionInputs memory inputs, CLPool$SnapshotCumulativesInsideFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnSnapshotCumulativesInsideFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xa38807f2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onSnapshotCumulativesInsideFunction.selector
        });
    }
}

abstract contract CLPool$PreSnapshotCumulativesInsideFunction {
    function CLPool$preSnapshotCumulativesInsideFunction(PreFunctionContext memory ctx, CLPool$SnapshotCumulativesInsideFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreSnapshotCumulativesInsideFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xa38807f2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preSnapshotCumulativesInsideFunction.selector
        });
    }
}

abstract contract CLPool$OnStakeFunction {
    function CLPool$onStakeFunction(FunctionContext memory ctx, CLPool$StakeFunctionInputs memory inputs) virtual external;

    function CLPool$triggerOnStakeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x4ed6210f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onStakeFunction.selector
        });
    }
}

abstract contract CLPool$PreStakeFunction {
    function CLPool$preStakeFunction(PreFunctionContext memory ctx, CLPool$StakeFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreStakeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x4ed6210f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preStakeFunction.selector
        });
    }
}

abstract contract CLPool$OnStakedLiquidityFunction {
    function CLPool$onStakedLiquidityFunction(FunctionContext memory ctx, CLPool$StakedLiquidityFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnStakedLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x3ab04b20),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onStakedLiquidityFunction.selector
        });
    }
}

abstract contract CLPool$PreStakedLiquidityFunction {
    function CLPool$preStakedLiquidityFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreStakedLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x3ab04b20),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preStakedLiquidityFunction.selector
        });
    }
}

abstract contract CLPool$OnSwapFunction {
    function CLPool$onSwapFunction(FunctionContext memory ctx, CLPool$SwapFunctionInputs memory inputs, CLPool$SwapFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x128acb08),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onSwapFunction.selector
        });
    }
}

abstract contract CLPool$PreSwapFunction {
    function CLPool$preSwapFunction(PreFunctionContext memory ctx, CLPool$SwapFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x128acb08),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preSwapFunction.selector
        });
    }
}

abstract contract CLPool$OnSyncRewardFunction {
    function CLPool$onSyncRewardFunction(FunctionContext memory ctx, CLPool$SyncRewardFunctionInputs memory inputs) virtual external;

    function CLPool$triggerOnSyncRewardFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x60a73f9b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onSyncRewardFunction.selector
        });
    }
}

abstract contract CLPool$PreSyncRewardFunction {
    function CLPool$preSyncRewardFunction(PreFunctionContext memory ctx, CLPool$SyncRewardFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreSyncRewardFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x60a73f9b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preSyncRewardFunction.selector
        });
    }
}

abstract contract CLPool$OnTickBitmapFunction {
    function CLPool$onTickBitmapFunction(FunctionContext memory ctx, CLPool$TickBitmapFunctionInputs memory inputs, CLPool$TickBitmapFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnTickBitmapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x5339c296),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onTickBitmapFunction.selector
        });
    }
}

abstract contract CLPool$PreTickBitmapFunction {
    function CLPool$preTickBitmapFunction(PreFunctionContext memory ctx, CLPool$TickBitmapFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreTickBitmapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x5339c296),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preTickBitmapFunction.selector
        });
    }
}

abstract contract CLPool$OnTickSpacingFunction {
    function CLPool$onTickSpacingFunction(FunctionContext memory ctx, CLPool$TickSpacingFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xd0c93a7c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onTickSpacingFunction.selector
        });
    }
}

abstract contract CLPool$PreTickSpacingFunction {
    function CLPool$preTickSpacingFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreTickSpacingFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xd0c93a7c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preTickSpacingFunction.selector
        });
    }
}

abstract contract CLPool$OnTicksFunction {
    function CLPool$onTicksFunction(FunctionContext memory ctx, CLPool$TicksFunctionInputs memory inputs, CLPool$TicksFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnTicksFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xf30dba93),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onTicksFunction.selector
        });
    }
}

abstract contract CLPool$PreTicksFunction {
    function CLPool$preTicksFunction(PreFunctionContext memory ctx, CLPool$TicksFunctionInputs memory inputs) virtual external;

    function CLPool$triggerPreTicksFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xf30dba93),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preTicksFunction.selector
        });
    }
}

abstract contract CLPool$OnToken0Function {
    function CLPool$onToken0Function(FunctionContext memory ctx, CLPool$Token0FunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onToken0Function.selector
        });
    }
}

abstract contract CLPool$PreToken0Function {
    function CLPool$preToken0Function(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreToken0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x0dfe1681),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preToken0Function.selector
        });
    }
}

abstract contract CLPool$OnToken1Function {
    function CLPool$onToken1Function(FunctionContext memory ctx, CLPool$Token1FunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onToken1Function.selector
        });
    }
}

abstract contract CLPool$PreToken1Function {
    function CLPool$preToken1Function(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreToken1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xd21220a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preToken1Function.selector
        });
    }
}

abstract contract CLPool$OnUnstakedFeeFunction {
    function CLPool$onUnstakedFeeFunction(FunctionContext memory ctx, CLPool$UnstakedFeeFunctionOutputs memory outputs) virtual external;

    function CLPool$triggerOnUnstakedFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xb64cc67b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onUnstakedFeeFunction.selector
        });
    }
}

abstract contract CLPool$PreUnstakedFeeFunction {
    function CLPool$preUnstakedFeeFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreUnstakedFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0xb64cc67b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preUnstakedFeeFunction.selector
        });
    }
}

abstract contract CLPool$OnUpdateRewardsGrowthGlobalFunction {
    function CLPool$onUpdateRewardsGrowthGlobalFunction(FunctionContext memory ctx) virtual external;

    function CLPool$triggerOnUpdateRewardsGrowthGlobalFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x1b410960),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$onUpdateRewardsGrowthGlobalFunction.selector
        });
    }
}

abstract contract CLPool$PreUpdateRewardsGrowthGlobalFunction {
    function CLPool$preUpdateRewardsGrowthGlobalFunction(PreFunctionContext memory ctx) virtual external;

    function CLPool$triggerPreUpdateRewardsGrowthGlobalFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPool",
            selector: bytes4(0x1b410960),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPool$preUpdateRewardsGrowthGlobalFunction.selector
        });
    }
}

contract CLPool$EmitAllEvents is
  CLPool$OnSwapEvent
{
  event Swap(address sender, address recipient, int256 amount0, int256 amount1, uint160 sqrtPriceX96, uint128 liquidity, int24 tick);

  function CLPool$onSwapEvent(EventContext memory ctx, CLPool$SwapEventParams memory inputs) virtual external override {
    emit Swap(inputs.sender, inputs.recipient, inputs.amount0, inputs.amount1, inputs.sqrtPriceX96, inputs.liquidity, inputs.tick);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](1);
    triggers[0] = this.CLPool$triggerOnSwapEvent();
    return triggers;
  }
}