// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function CLPoolManager$Abi() pure returns (Abi memory) {
    return Abi("CLPoolManager");
}
struct CLPoolManager$CollectProtocolFeesFunctionInputs {
    address recipient;
    address currency;
    uint256 amount;
}

struct CLPoolManager$CollectProtocolFeesFunctionOutputs {
    uint256 amountCollected;
}

struct CLPoolManager$PoolKey {
    address currency0;
    address currency1;
    address hooks;
    address poolManager;
    uint24 fee;
    bytes32 parameters;
}

struct CLPoolManager$DonateFunctionInputs {
    CLPoolManager$PoolKey key;
    uint256 amount0;
    uint256 amount1;
    bytes hookData;
}

struct CLPoolManager$DonateFunctionOutputs {
    int256 delta;
}

struct CLPoolManager$Extsload0x1E2EAEAFFunctionInputs {
    bytes32 slot;
}

struct CLPoolManager$Extsload0x1E2EAEAFFunctionOutputs {
    bytes32 outArg0;
}

struct CLPoolManager$Extsload0xDBD035FFFunctionInputs {
    bytes32[] slots;
}

struct CLPoolManager$Extsload0xDBD035FFFunctionOutputs {
    bytes32[] outArg0;
}

struct CLPoolManager$GetFeeGrowthGlobalsFunctionInputs {
    bytes32 id;
}

struct CLPoolManager$GetFeeGrowthGlobalsFunctionOutputs {
    uint256 feeGrowthGlobal0x128;
    uint256 feeGrowthGlobal1x128;
}

struct CLPoolManager$GetLiquidity0x50B6157BFunctionInputs {
    bytes32 id;
    address _owner;
    int24 tickLower;
    int24 tickUpper;
    bytes32 salt;
}

struct CLPoolManager$GetLiquidity0x50B6157BFunctionOutputs {
    uint128 liquidity;
}

struct CLPoolManager$GetLiquidity0xFA6793D5FunctionInputs {
    bytes32 id;
}

struct CLPoolManager$GetLiquidity0xFA6793D5FunctionOutputs {
    uint128 liquidity;
}

struct CLPoolManager$GetPoolBitmapInfoFunctionInputs {
    bytes32 id;
    int16 word;
}

struct CLPoolManager$GetPoolBitmapInfoFunctionOutputs {
    uint256 tickBitmap;
}

struct CLPoolManager$GetPoolTickInfoFunctionInputs {
    bytes32 id;
    int24 tick;
}

struct CLPoolManager$Tick$Info {
    uint128 liquidityGross;
    int128 liquidityNet;
    uint256 feeGrowthOutside0X128;
    uint256 feeGrowthOutside1X128;
}

struct CLPoolManager$GetPoolTickInfoFunctionOutputs {
    CLPoolManager$Tick$Info outArg0;
}

struct CLPoolManager$GetPositionFunctionInputs {
    bytes32 id;
    address owner;
    int24 tickLower;
    int24 tickUpper;
    bytes32 salt;
}

struct CLPoolManager$CLPosition$Info {
    uint128 liquidity;
    uint256 feeGrowthInside0LastX128;
    uint256 feeGrowthInside1LastX128;
}

struct CLPoolManager$GetPositionFunctionOutputs {
    CLPoolManager$CLPosition$Info position;
}

struct CLPoolManager$GetSlot0FunctionInputs {
    bytes32 id;
}

struct CLPoolManager$GetSlot0FunctionOutputs {
    uint160 sqrtPriceX96;
    int24 tick;
    uint24 protocolFee;
    uint24 lpFee;
}

struct CLPoolManager$InitializeFunctionInputs {
    CLPoolManager$PoolKey key;
    uint160 sqrtPriceX96;
}

struct CLPoolManager$InitializeFunctionOutputs {
    int24 tick;
}

struct CLPoolManager$ICLPoolManager$ModifyLiquidityParams {
    int24 tickLower;
    int24 tickUpper;
    int256 liquidityDelta;
    bytes32 salt;
}

struct CLPoolManager$ModifyLiquidityFunctionInputs {
    CLPoolManager$PoolKey key;
    CLPoolManager$ICLPoolManager$ModifyLiquidityParams params;
    bytes hookData;
}

struct CLPoolManager$ModifyLiquidityFunctionOutputs {
    int256 delta;
    int256 feeDelta;
}

struct CLPoolManager$OwnerFunctionOutputs {
    address outArg0;
}

struct CLPoolManager$PausedFunctionOutputs {
    bool res;
}

struct CLPoolManager$PoolIdToPoolKeyFunctionInputs {
    bytes32 id;
}

struct CLPoolManager$PoolIdToPoolKeyFunctionOutputs {
    address currency0;
    address currency1;
    address hooks;
    address poolManager;
    uint24 fee;
    bytes32 parameters;
}

struct CLPoolManager$ProtocolFeeControllerFunctionOutputs {
    address outArg0;
}

struct CLPoolManager$ProtocolFeesAccruedFunctionInputs {
    address currency;
}

struct CLPoolManager$ProtocolFeesAccruedFunctionOutputs {
    uint256 amount;
}

struct CLPoolManager$SetProtocolFeeFunctionInputs {
    CLPoolManager$PoolKey key;
    uint24 newProtocolFee;
}

struct CLPoolManager$SetProtocolFeeControllerFunctionInputs {
    address controller;
}

struct CLPoolManager$ICLPoolManager$SwapParams {
    bool zeroForOne;
    int256 amountSpecified;
    uint160 sqrtPriceLimitX96;
}

struct CLPoolManager$SwapFunctionInputs {
    CLPoolManager$PoolKey key;
    CLPoolManager$ICLPoolManager$SwapParams params;
    bytes hookData;
}

struct CLPoolManager$SwapFunctionOutputs {
    int256 delta;
}

struct CLPoolManager$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct CLPoolManager$UpdateDynamicLpFeeFunctionInputs {
    CLPoolManager$PoolKey key;
    uint24 newDynamicLPFee;
}

struct CLPoolManager$VaultFunctionOutputs {
    address outArg0;
}

struct CLPoolManager$DonateEventParams {
    bytes32 id;
    address sender;
    uint256 amount0;
    uint256 amount1;
    int24 tick;
}

struct CLPoolManager$DynamicLpFeeUpdatedEventParams {
    bytes32 id;
    uint24 dynamicLPFee;
}

struct CLPoolManager$InitializeEventParams {
    bytes32 id;
    address currency0;
    address currency1;
    address hooks;
    uint24 fee;
    bytes32 parameters;
    uint160 sqrtPriceX96;
    int24 tick;
}

struct CLPoolManager$ModifyLiquidityEventParams {
    bytes32 id;
    address sender;
    int24 tickLower;
    int24 tickUpper;
    int256 liquidityDelta;
    bytes32 salt;
}

struct CLPoolManager$OwnershipTransferredEventParams {
    address previousOwner;
    address newOwner;
}

struct CLPoolManager$PausedEventParams {
    address account;
}

struct CLPoolManager$ProtocolFeeControllerUpdatedEventParams {
    address protocolFeeController;
}

struct CLPoolManager$ProtocolFeeUpdatedEventParams {
    bytes32 id;
    uint24 protocolFee;
}

struct CLPoolManager$SwapEventParams {
    bytes32 id;
    address sender;
    int128 amount0;
    int128 amount1;
    uint160 sqrtPriceX96;
    uint128 liquidity;
    int24 tick;
    uint24 fee;
    uint16 protocolFee;
}

struct CLPoolManager$UnpausedEventParams {
    address account;
}

abstract contract CLPoolManager$OnDonateEvent {
    function CLPoolManager$onDonateEvent(EventContext memory ctx, CLPoolManager$DonateEventParams memory inputs) virtual external;

    function CLPoolManager$triggerOnDonateEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes32(0xbe708911656ae186ac3fc26a794e5f1319609ce340a14c63524f985fee4bc841),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onDonateEvent.selector
        });
    }
}

abstract contract CLPoolManager$OnDynamicLpFeeUpdatedEvent {
    function CLPoolManager$onDynamicLpFeeUpdatedEvent(EventContext memory ctx, CLPoolManager$DynamicLpFeeUpdatedEventParams memory inputs) virtual external;

    function CLPoolManager$triggerOnDynamicLpFeeUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes32(0x14b2b80e0d62303dc85494859f35a84579160aafbd650180ddf526b1ab547bd6),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onDynamicLpFeeUpdatedEvent.selector
        });
    }
}

abstract contract CLPoolManager$OnInitializeEvent {
    function CLPoolManager$onInitializeEvent(EventContext memory ctx, CLPoolManager$InitializeEventParams memory inputs) virtual external;

    function CLPoolManager$triggerOnInitializeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes32(0x426cc62fe6a33a40ba2788c2c87a9c34ee4582b95bc9fa5a7bb7ae70b750b99c),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onInitializeEvent.selector
        });
    }
}

abstract contract CLPoolManager$OnModifyLiquidityEvent {
    function CLPoolManager$onModifyLiquidityEvent(EventContext memory ctx, CLPoolManager$ModifyLiquidityEventParams memory inputs) virtual external;

    function CLPoolManager$triggerOnModifyLiquidityEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes32(0xf208f4912782fd25c7f114ca3723a2d5dd6f3bcc3ac8db5af63baa85f711d5ec),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onModifyLiquidityEvent.selector
        });
    }
}

abstract contract CLPoolManager$OnOwnershipTransferredEvent {
    function CLPoolManager$onOwnershipTransferredEvent(EventContext memory ctx, CLPoolManager$OwnershipTransferredEventParams memory inputs) virtual external;

    function CLPoolManager$triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract CLPoolManager$OnPausedEvent {
    function CLPoolManager$onPausedEvent(EventContext memory ctx, CLPoolManager$PausedEventParams memory inputs) virtual external;

    function CLPoolManager$triggerOnPausedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes32(0x62e78cea01bee320cd4e420270b5ea74000d11b0c9f74754ebdbfc544b05a258),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onPausedEvent.selector
        });
    }
}

abstract contract CLPoolManager$OnProtocolFeeControllerUpdatedEvent {
    function CLPoolManager$onProtocolFeeControllerUpdatedEvent(EventContext memory ctx, CLPoolManager$ProtocolFeeControllerUpdatedEventParams memory inputs) virtual external;

    function CLPoolManager$triggerOnProtocolFeeControllerUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes32(0xb4bd8ef53df690b9943d3318996006dbb82a25f54719d8c8035b516a2a5b8acc),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onProtocolFeeControllerUpdatedEvent.selector
        });
    }
}

abstract contract CLPoolManager$OnProtocolFeeUpdatedEvent {
    function CLPoolManager$onProtocolFeeUpdatedEvent(EventContext memory ctx, CLPoolManager$ProtocolFeeUpdatedEventParams memory inputs) virtual external;

    function CLPoolManager$triggerOnProtocolFeeUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes32(0xe9c42593e71f84403b84352cd168d693e2c9fcd1fdbcc3feb21d92b43e6696f9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onProtocolFeeUpdatedEvent.selector
        });
    }
}

abstract contract CLPoolManager$OnSwapEvent {
    function CLPoolManager$onSwapEvent(EventContext memory ctx, CLPoolManager$SwapEventParams memory inputs) virtual external;

    function CLPoolManager$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes32(0x04206ad2b7c0f463bff3dd4f33c5735b0f2957a351e4f79763a4fa9e775dd237),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onSwapEvent.selector
        });
    }
}

abstract contract CLPoolManager$OnUnpausedEvent {
    function CLPoolManager$onUnpausedEvent(EventContext memory ctx, CLPoolManager$UnpausedEventParams memory inputs) virtual external;

    function CLPoolManager$triggerOnUnpausedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes32(0x5db9ee0a495bf2e6ff9c91a7834c1ba4fdd244a5e8aa4e537bd38aeae4b073aa),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onUnpausedEvent.selector
        });
    }
}

abstract contract CLPoolManager$OnCollectProtocolFeesFunction {
    function CLPoolManager$onCollectProtocolFeesFunction(FunctionContext memory ctx, CLPoolManager$CollectProtocolFeesFunctionInputs memory inputs, CLPoolManager$CollectProtocolFeesFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnCollectProtocolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x8161b874),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onCollectProtocolFeesFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreCollectProtocolFeesFunction {
    function CLPoolManager$preCollectProtocolFeesFunction(PreFunctionContext memory ctx, CLPoolManager$CollectProtocolFeesFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreCollectProtocolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x8161b874),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preCollectProtocolFeesFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnDonateFunction {
    function CLPoolManager$onDonateFunction(FunctionContext memory ctx, CLPoolManager$DonateFunctionInputs memory inputs, CLPoolManager$DonateFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xf15b275f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onDonateFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreDonateFunction {
    function CLPoolManager$preDonateFunction(PreFunctionContext memory ctx, CLPoolManager$DonateFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xf15b275f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preDonateFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnExtsload0x1E2EAEAFFunction {
    function CLPoolManager$onExtsload0x1E2EAEAFFunction(FunctionContext memory ctx, CLPoolManager$Extsload0x1E2EAEAFFunctionInputs memory inputs, CLPoolManager$Extsload0x1E2EAEAFFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnExtsload0x1E2EAEAFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x1e2eaeaf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onExtsload0x1E2EAEAFFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreExtsload0x1E2EAEAFFunction {
    function CLPoolManager$preExtsload0x1E2EAEAFFunction(PreFunctionContext memory ctx, CLPoolManager$Extsload0x1E2EAEAFFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreExtsload0x1E2EAEAFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x1e2eaeaf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preExtsload0x1E2EAEAFFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnExtsload0xDBD035FFFunction {
    function CLPoolManager$onExtsload0xDBD035FFFunction(FunctionContext memory ctx, CLPoolManager$Extsload0xDBD035FFFunctionInputs memory inputs, CLPoolManager$Extsload0xDBD035FFFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnExtsload0xDBD035FFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xdbd035ff),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onExtsload0xDBD035FFFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreExtsload0xDBD035FFFunction {
    function CLPoolManager$preExtsload0xDBD035FFFunction(PreFunctionContext memory ctx, CLPoolManager$Extsload0xDBD035FFFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreExtsload0xDBD035FFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xdbd035ff),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preExtsload0xDBD035FFFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnGetFeeGrowthGlobalsFunction {
    function CLPoolManager$onGetFeeGrowthGlobalsFunction(FunctionContext memory ctx, CLPoolManager$GetFeeGrowthGlobalsFunctionInputs memory inputs, CLPoolManager$GetFeeGrowthGlobalsFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnGetFeeGrowthGlobalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x9ec538c8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onGetFeeGrowthGlobalsFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreGetFeeGrowthGlobalsFunction {
    function CLPoolManager$preGetFeeGrowthGlobalsFunction(PreFunctionContext memory ctx, CLPoolManager$GetFeeGrowthGlobalsFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreGetFeeGrowthGlobalsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x9ec538c8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preGetFeeGrowthGlobalsFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnGetLiquidity0x50B6157BFunction {
    function CLPoolManager$onGetLiquidity0x50B6157BFunction(FunctionContext memory ctx, CLPoolManager$GetLiquidity0x50B6157BFunctionInputs memory inputs, CLPoolManager$GetLiquidity0x50B6157BFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnGetLiquidity0x50B6157BFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x50b6157b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onGetLiquidity0x50B6157BFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreGetLiquidity0x50B6157BFunction {
    function CLPoolManager$preGetLiquidity0x50B6157BFunction(PreFunctionContext memory ctx, CLPoolManager$GetLiquidity0x50B6157BFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreGetLiquidity0x50B6157BFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x50b6157b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preGetLiquidity0x50B6157BFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnGetLiquidity0xFA6793D5Function {
    function CLPoolManager$onGetLiquidity0xFA6793D5Function(FunctionContext memory ctx, CLPoolManager$GetLiquidity0xFA6793D5FunctionInputs memory inputs, CLPoolManager$GetLiquidity0xFA6793D5FunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnGetLiquidity0xFA6793D5Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xfa6793d5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onGetLiquidity0xFA6793D5Function.selector
        });
    }
}

abstract contract CLPoolManager$PreGetLiquidity0xFA6793D5Function {
    function CLPoolManager$preGetLiquidity0xFA6793D5Function(PreFunctionContext memory ctx, CLPoolManager$GetLiquidity0xFA6793D5FunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreGetLiquidity0xFA6793D5Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xfa6793d5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preGetLiquidity0xFA6793D5Function.selector
        });
    }
}

abstract contract CLPoolManager$OnGetPoolBitmapInfoFunction {
    function CLPoolManager$onGetPoolBitmapInfoFunction(FunctionContext memory ctx, CLPoolManager$GetPoolBitmapInfoFunctionInputs memory inputs, CLPoolManager$GetPoolBitmapInfoFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnGetPoolBitmapInfoFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x7c352ef6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onGetPoolBitmapInfoFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreGetPoolBitmapInfoFunction {
    function CLPoolManager$preGetPoolBitmapInfoFunction(PreFunctionContext memory ctx, CLPoolManager$GetPoolBitmapInfoFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreGetPoolBitmapInfoFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x7c352ef6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preGetPoolBitmapInfoFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnGetPoolTickInfoFunction {
    function CLPoolManager$onGetPoolTickInfoFunction(FunctionContext memory ctx, CLPoolManager$GetPoolTickInfoFunctionInputs memory inputs, CLPoolManager$GetPoolTickInfoFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnGetPoolTickInfoFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x5aa208a4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onGetPoolTickInfoFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreGetPoolTickInfoFunction {
    function CLPoolManager$preGetPoolTickInfoFunction(PreFunctionContext memory ctx, CLPoolManager$GetPoolTickInfoFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreGetPoolTickInfoFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x5aa208a4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preGetPoolTickInfoFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnGetPositionFunction {
    function CLPoolManager$onGetPositionFunction(FunctionContext memory ctx, CLPoolManager$GetPositionFunctionInputs memory inputs, CLPoolManager$GetPositionFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnGetPositionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x7388426b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onGetPositionFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreGetPositionFunction {
    function CLPoolManager$preGetPositionFunction(PreFunctionContext memory ctx, CLPoolManager$GetPositionFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreGetPositionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x7388426b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preGetPositionFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnGetSlot0Function {
    function CLPoolManager$onGetSlot0Function(FunctionContext memory ctx, CLPoolManager$GetSlot0FunctionInputs memory inputs, CLPoolManager$GetSlot0FunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnGetSlot0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xc815641c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onGetSlot0Function.selector
        });
    }
}

abstract contract CLPoolManager$PreGetSlot0Function {
    function CLPoolManager$preGetSlot0Function(PreFunctionContext memory ctx, CLPoolManager$GetSlot0FunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreGetSlot0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xc815641c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preGetSlot0Function.selector
        });
    }
}

abstract contract CLPoolManager$OnInitializeFunction {
    function CLPoolManager$onInitializeFunction(FunctionContext memory ctx, CLPoolManager$InitializeFunctionInputs memory inputs, CLPoolManager$InitializeFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x8b0c1b22),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onInitializeFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreInitializeFunction {
    function CLPoolManager$preInitializeFunction(PreFunctionContext memory ctx, CLPoolManager$InitializeFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x8b0c1b22),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preInitializeFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnModifyLiquidityFunction {
    function CLPoolManager$onModifyLiquidityFunction(FunctionContext memory ctx, CLPoolManager$ModifyLiquidityFunctionInputs memory inputs, CLPoolManager$ModifyLiquidityFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnModifyLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x9371d115),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onModifyLiquidityFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreModifyLiquidityFunction {
    function CLPoolManager$preModifyLiquidityFunction(PreFunctionContext memory ctx, CLPoolManager$ModifyLiquidityFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreModifyLiquidityFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x9371d115),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preModifyLiquidityFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnOwnerFunction {
    function CLPoolManager$onOwnerFunction(FunctionContext memory ctx, CLPoolManager$OwnerFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onOwnerFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreOwnerFunction {
    function CLPoolManager$preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function CLPoolManager$triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preOwnerFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnPauseFunction {
    function CLPoolManager$onPauseFunction(FunctionContext memory ctx) virtual external;

    function CLPoolManager$triggerOnPauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x8456cb59),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onPauseFunction.selector
        });
    }
}

abstract contract CLPoolManager$PrePauseFunction {
    function CLPoolManager$prePauseFunction(PreFunctionContext memory ctx) virtual external;

    function CLPoolManager$triggerPrePauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x8456cb59),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$prePauseFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnPausedFunction {
    function CLPoolManager$onPausedFunction(FunctionContext memory ctx, CLPoolManager$PausedFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnPausedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x5c975abb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onPausedFunction.selector
        });
    }
}

abstract contract CLPoolManager$PrePausedFunction {
    function CLPoolManager$prePausedFunction(PreFunctionContext memory ctx) virtual external;

    function CLPoolManager$triggerPrePausedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x5c975abb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$prePausedFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnPoolIdToPoolKeyFunction {
    function CLPoolManager$onPoolIdToPoolKeyFunction(FunctionContext memory ctx, CLPoolManager$PoolIdToPoolKeyFunctionInputs memory inputs, CLPoolManager$PoolIdToPoolKeyFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnPoolIdToPoolKeyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x0e2d484a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onPoolIdToPoolKeyFunction.selector
        });
    }
}

abstract contract CLPoolManager$PrePoolIdToPoolKeyFunction {
    function CLPoolManager$prePoolIdToPoolKeyFunction(PreFunctionContext memory ctx, CLPoolManager$PoolIdToPoolKeyFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPrePoolIdToPoolKeyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x0e2d484a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$prePoolIdToPoolKeyFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnProtocolFeeControllerFunction {
    function CLPoolManager$onProtocolFeeControllerFunction(FunctionContext memory ctx, CLPoolManager$ProtocolFeeControllerFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xf02de3b2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreProtocolFeeControllerFunction {
    function CLPoolManager$preProtocolFeeControllerFunction(PreFunctionContext memory ctx) virtual external;

    function CLPoolManager$triggerPreProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xf02de3b2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnProtocolFeesAccruedFunction {
    function CLPoolManager$onProtocolFeesAccruedFunction(FunctionContext memory ctx, CLPoolManager$ProtocolFeesAccruedFunctionInputs memory inputs, CLPoolManager$ProtocolFeesAccruedFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnProtocolFeesAccruedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x97e8cd4e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onProtocolFeesAccruedFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreProtocolFeesAccruedFunction {
    function CLPoolManager$preProtocolFeesAccruedFunction(PreFunctionContext memory ctx, CLPoolManager$ProtocolFeesAccruedFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreProtocolFeesAccruedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x97e8cd4e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preProtocolFeesAccruedFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnSetProtocolFeeFunction {
    function CLPoolManager$onSetProtocolFeeFunction(FunctionContext memory ctx, CLPoolManager$SetProtocolFeeFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerOnSetProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x81a250a1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onSetProtocolFeeFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreSetProtocolFeeFunction {
    function CLPoolManager$preSetProtocolFeeFunction(PreFunctionContext memory ctx, CLPoolManager$SetProtocolFeeFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreSetProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x81a250a1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preSetProtocolFeeFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnSetProtocolFeeControllerFunction {
    function CLPoolManager$onSetProtocolFeeControllerFunction(FunctionContext memory ctx, CLPoolManager$SetProtocolFeeControllerFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerOnSetProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x2d771389),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onSetProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreSetProtocolFeeControllerFunction {
    function CLPoolManager$preSetProtocolFeeControllerFunction(PreFunctionContext memory ctx, CLPoolManager$SetProtocolFeeControllerFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreSetProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x2d771389),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preSetProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnSwapFunction {
    function CLPoolManager$onSwapFunction(FunctionContext memory ctx, CLPoolManager$SwapFunctionInputs memory inputs, CLPoolManager$SwapFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xcd0cc1ce),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onSwapFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreSwapFunction {
    function CLPoolManager$preSwapFunction(PreFunctionContext memory ctx, CLPoolManager$SwapFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xcd0cc1ce),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preSwapFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnTransferOwnershipFunction {
    function CLPoolManager$onTransferOwnershipFunction(FunctionContext memory ctx, CLPoolManager$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onTransferOwnershipFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreTransferOwnershipFunction {
    function CLPoolManager$preTransferOwnershipFunction(PreFunctionContext memory ctx, CLPoolManager$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preTransferOwnershipFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnUnpauseFunction {
    function CLPoolManager$onUnpauseFunction(FunctionContext memory ctx) virtual external;

    function CLPoolManager$triggerOnUnpauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x3f4ba83a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onUnpauseFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreUnpauseFunction {
    function CLPoolManager$preUnpauseFunction(PreFunctionContext memory ctx) virtual external;

    function CLPoolManager$triggerPreUnpauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0x3f4ba83a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preUnpauseFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnUpdateDynamicLpFeeFunction {
    function CLPoolManager$onUpdateDynamicLpFeeFunction(FunctionContext memory ctx, CLPoolManager$UpdateDynamicLpFeeFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerOnUpdateDynamicLpFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xad4cc2d3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onUpdateDynamicLpFeeFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreUpdateDynamicLpFeeFunction {
    function CLPoolManager$preUpdateDynamicLpFeeFunction(PreFunctionContext memory ctx, CLPoolManager$UpdateDynamicLpFeeFunctionInputs memory inputs) virtual external;

    function CLPoolManager$triggerPreUpdateDynamicLpFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xad4cc2d3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preUpdateDynamicLpFeeFunction.selector
        });
    }
}

abstract contract CLPoolManager$OnVaultFunction {
    function CLPoolManager$onVaultFunction(FunctionContext memory ctx, CLPoolManager$VaultFunctionOutputs memory outputs) virtual external;

    function CLPoolManager$triggerOnVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xfbfa77cf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$onVaultFunction.selector
        });
    }
}

abstract contract CLPoolManager$PreVaultFunction {
    function CLPoolManager$preVaultFunction(PreFunctionContext memory ctx) virtual external;

    function CLPoolManager$triggerPreVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "CLPoolManager",
            selector: bytes4(0xfbfa77cf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.CLPoolManager$preVaultFunction.selector
        });
    }
}


struct CLPoolManager$EmitAllEvents$Donate {
  bytes32 id;
  address sender;
  uint256 amount0;
  uint256 amount1;
  int24 tick;
}

struct CLPoolManager$EmitAllEvents$DynamicLpFeeUpdated {
  bytes32 id;
  uint24 dynamicLPFee;
}

struct CLPoolManager$EmitAllEvents$Initialize {
  bytes32 id;
  address currency0;
  address currency1;
  address hooks;
  uint24 fee;
  bytes32 parameters;
  uint160 sqrtPriceX96;
  int24 tick;
}

struct CLPoolManager$EmitAllEvents$ModifyLiquidity {
  bytes32 id;
  address sender;
  int24 tickLower;
  int24 tickUpper;
  int256 liquidityDelta;
  bytes32 salt;
}

struct CLPoolManager$EmitAllEvents$OwnershipTransferred {
  address previousOwner;
  address newOwner;
}

struct CLPoolManager$EmitAllEvents$Paused {
  address account;
}

struct CLPoolManager$EmitAllEvents$ProtocolFeeControllerUpdated {
  address protocolFeeController;
}

struct CLPoolManager$EmitAllEvents$ProtocolFeeUpdated {
  bytes32 id;
  uint24 protocolFee;
}

struct CLPoolManager$EmitAllEvents$Swap {
  bytes32 id;
  address sender;
  int128 amount0;
  int128 amount1;
  uint160 sqrtPriceX96;
  uint128 liquidity;
  int24 tick;
  uint24 fee;
  uint16 protocolFee;
}

struct CLPoolManager$EmitAllEvents$Unpaused {
  address account;
}

contract CLPoolManager$EmitAllEvents is
  CLPoolManager$OnDonateEvent,
CLPoolManager$OnDynamicLpFeeUpdatedEvent,
CLPoolManager$OnInitializeEvent,
CLPoolManager$OnModifyLiquidityEvent,
CLPoolManager$OnOwnershipTransferredEvent,
CLPoolManager$OnPausedEvent,
CLPoolManager$OnProtocolFeeControllerUpdatedEvent,
CLPoolManager$OnProtocolFeeUpdatedEvent,
CLPoolManager$OnSwapEvent,
CLPoolManager$OnUnpausedEvent
{
  event Donate(CLPoolManager$EmitAllEvents$Donate);
  event DynamicLpFeeUpdated(CLPoolManager$EmitAllEvents$DynamicLpFeeUpdated);
  event Initialize(CLPoolManager$EmitAllEvents$Initialize);
  event ModifyLiquidity(CLPoolManager$EmitAllEvents$ModifyLiquidity);
  event OwnershipTransferred(CLPoolManager$EmitAllEvents$OwnershipTransferred);
  event Paused(CLPoolManager$EmitAllEvents$Paused);
  event ProtocolFeeControllerUpdated(CLPoolManager$EmitAllEvents$ProtocolFeeControllerUpdated);
  event ProtocolFeeUpdated(CLPoolManager$EmitAllEvents$ProtocolFeeUpdated);
  event Swap(CLPoolManager$EmitAllEvents$Swap);
  event Unpaused(CLPoolManager$EmitAllEvents$Unpaused);

  function CLPoolManager$onDonateEvent(EventContext memory ctx, CLPoolManager$DonateEventParams memory inputs) virtual external override {
    emit Donate(CLPoolManager$EmitAllEvents$Donate(inputs.id, inputs.sender, inputs.amount0, inputs.amount1, inputs.tick));
  }
function CLPoolManager$onDynamicLpFeeUpdatedEvent(EventContext memory ctx, CLPoolManager$DynamicLpFeeUpdatedEventParams memory inputs) virtual external override {
    emit DynamicLpFeeUpdated(CLPoolManager$EmitAllEvents$DynamicLpFeeUpdated(inputs.id, inputs.dynamicLPFee));
  }
function CLPoolManager$onInitializeEvent(EventContext memory ctx, CLPoolManager$InitializeEventParams memory inputs) virtual external override {
    emit Initialize(CLPoolManager$EmitAllEvents$Initialize(inputs.id, inputs.currency0, inputs.currency1, inputs.hooks, inputs.fee, inputs.parameters, inputs.sqrtPriceX96, inputs.tick));
  }
function CLPoolManager$onModifyLiquidityEvent(EventContext memory ctx, CLPoolManager$ModifyLiquidityEventParams memory inputs) virtual external override {
    emit ModifyLiquidity(CLPoolManager$EmitAllEvents$ModifyLiquidity(inputs.id, inputs.sender, inputs.tickLower, inputs.tickUpper, inputs.liquidityDelta, inputs.salt));
  }
function CLPoolManager$onOwnershipTransferredEvent(EventContext memory ctx, CLPoolManager$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(CLPoolManager$EmitAllEvents$OwnershipTransferred(inputs.previousOwner, inputs.newOwner));
  }
function CLPoolManager$onPausedEvent(EventContext memory ctx, CLPoolManager$PausedEventParams memory inputs) virtual external override {
    emit Paused(CLPoolManager$EmitAllEvents$Paused(inputs.account));
  }
function CLPoolManager$onProtocolFeeControllerUpdatedEvent(EventContext memory ctx, CLPoolManager$ProtocolFeeControllerUpdatedEventParams memory inputs) virtual external override {
    emit ProtocolFeeControllerUpdated(CLPoolManager$EmitAllEvents$ProtocolFeeControllerUpdated(inputs.protocolFeeController));
  }
function CLPoolManager$onProtocolFeeUpdatedEvent(EventContext memory ctx, CLPoolManager$ProtocolFeeUpdatedEventParams memory inputs) virtual external override {
    emit ProtocolFeeUpdated(CLPoolManager$EmitAllEvents$ProtocolFeeUpdated(inputs.id, inputs.protocolFee));
  }
function CLPoolManager$onSwapEvent(EventContext memory ctx, CLPoolManager$SwapEventParams memory inputs) virtual external override {
    emit Swap(CLPoolManager$EmitAllEvents$Swap(inputs.id, inputs.sender, inputs.amount0, inputs.amount1, inputs.sqrtPriceX96, inputs.liquidity, inputs.tick, inputs.fee, inputs.protocolFee));
  }
function CLPoolManager$onUnpausedEvent(EventContext memory ctx, CLPoolManager$UnpausedEventParams memory inputs) virtual external override {
    emit Unpaused(CLPoolManager$EmitAllEvents$Unpaused(inputs.account));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](10);
    triggers[0] = this.CLPoolManager$triggerOnDonateEvent();
    triggers[1] = this.CLPoolManager$triggerOnDynamicLpFeeUpdatedEvent();
    triggers[2] = this.CLPoolManager$triggerOnInitializeEvent();
    triggers[3] = this.CLPoolManager$triggerOnModifyLiquidityEvent();
    triggers[4] = this.CLPoolManager$triggerOnOwnershipTransferredEvent();
    triggers[5] = this.CLPoolManager$triggerOnPausedEvent();
    triggers[6] = this.CLPoolManager$triggerOnProtocolFeeControllerUpdatedEvent();
    triggers[7] = this.CLPoolManager$triggerOnProtocolFeeUpdatedEvent();
    triggers[8] = this.CLPoolManager$triggerOnSwapEvent();
    triggers[9] = this.CLPoolManager$triggerOnUnpausedEvent();
    return triggers;
  }
}