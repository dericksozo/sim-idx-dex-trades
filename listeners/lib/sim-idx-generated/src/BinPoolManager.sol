// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function BinPoolManager$Abi() pure returns (Abi memory) {
    return Abi("BinPoolManager");
}
struct BinPoolManager$MinBinStepFunctionOutputs {
    uint16 outArg0;
}

struct BinPoolManager$PoolKey {
    address currency0;
    address currency1;
    address hooks;
    address poolManager;
    uint24 fee;
    bytes32 parameters;
}

struct BinPoolManager$IBinPoolManager$BurnParams {
    uint256[] ids;
    uint256[] amountsToBurn;
    bytes32 salt;
}

struct BinPoolManager$BurnFunctionInputs {
    BinPoolManager$PoolKey key;
    BinPoolManager$IBinPoolManager$BurnParams params;
    bytes hookData;
}

struct BinPoolManager$BurnFunctionOutputs {
    int256 delta;
}

struct BinPoolManager$CollectProtocolFeesFunctionInputs {
    address recipient;
    address currency;
    uint256 amount;
}

struct BinPoolManager$CollectProtocolFeesFunctionOutputs {
    uint256 amountCollected;
}

struct BinPoolManager$DonateFunctionInputs {
    BinPoolManager$PoolKey key;
    uint128 amount0;
    uint128 amount1;
    bytes hookData;
}

struct BinPoolManager$DonateFunctionOutputs {
    int256 delta;
    uint24 binId;
}

struct BinPoolManager$Extsload0x1E2EAEAFFunctionInputs {
    bytes32 slot;
}

struct BinPoolManager$Extsload0x1E2EAEAFFunctionOutputs {
    bytes32 outArg0;
}

struct BinPoolManager$Extsload0xDBD035FFFunctionInputs {
    bytes32[] slots;
}

struct BinPoolManager$Extsload0xDBD035FFFunctionOutputs {
    bytes32[] outArg0;
}

struct BinPoolManager$GetBinFunctionInputs {
    bytes32 id;
    uint24 binId;
}

struct BinPoolManager$GetBinFunctionOutputs {
    uint128 binReserveX;
    uint128 binReserveY;
    uint256 binLiquidity;
    uint256 totalShares;
}

struct BinPoolManager$GetNextNonEmptyBinFunctionInputs {
    bytes32 id;
    bool swapForY;
    uint24 binId;
}

struct BinPoolManager$GetNextNonEmptyBinFunctionOutputs {
    uint24 nextId;
}

struct BinPoolManager$GetPositionFunctionInputs {
    bytes32 id;
    address owner;
    uint24 binId;
    bytes32 salt;
}

struct BinPoolManager$BinPosition$Info {
    uint256 share;
}

struct BinPoolManager$GetPositionFunctionOutputs {
    BinPoolManager$BinPosition$Info position;
}

struct BinPoolManager$GetSlot0FunctionInputs {
    bytes32 id;
}

struct BinPoolManager$GetSlot0FunctionOutputs {
    uint24 activeId;
    uint24 protocolFee;
    uint24 lpFee;
}

struct BinPoolManager$InitializeFunctionInputs {
    BinPoolManager$PoolKey key;
    uint24 activeId;
}

struct BinPoolManager$MaxBinStepFunctionOutputs {
    uint16 outArg0;
}

struct BinPoolManager$MinBinShareForDonateFunctionOutputs {
    uint256 outArg0;
}

struct BinPoolManager$IBinPoolManager$MintParams {
    bytes32[] liquidityConfigs;
    bytes32 amountIn;
    bytes32 salt;
}

struct BinPoolManager$MintFunctionInputs {
    BinPoolManager$PoolKey key;
    BinPoolManager$IBinPoolManager$MintParams params;
    bytes hookData;
}

struct BinPoolManager$BinPool$MintArrays {
    uint256[] ids;
    bytes32[] amounts;
    uint256[] liquidityMinted;
}

struct BinPoolManager$MintFunctionOutputs {
    int256 delta;
    BinPoolManager$BinPool$MintArrays mintArray;
}

struct BinPoolManager$OwnerFunctionOutputs {
    address outArg0;
}

struct BinPoolManager$PausedFunctionOutputs {
    bool res;
}

struct BinPoolManager$PoolIdToPoolKeyFunctionInputs {
    bytes32 id;
}

struct BinPoolManager$PoolIdToPoolKeyFunctionOutputs {
    address currency0;
    address currency1;
    address hooks;
    address poolManager;
    uint24 fee;
    bytes32 parameters;
}

struct BinPoolManager$PoolsFunctionInputs {
    bytes32 id;
}

struct BinPoolManager$PoolsFunctionOutputs {
    bytes32 slot0;
    bytes32 level0;
}

struct BinPoolManager$ProtocolFeeControllerFunctionOutputs {
    address outArg0;
}

struct BinPoolManager$ProtocolFeesAccruedFunctionInputs {
    address currency;
}

struct BinPoolManager$ProtocolFeesAccruedFunctionOutputs {
    uint256 amount;
}

struct BinPoolManager$SetMaxBinStepFunctionInputs {
    uint16 newMaxBinStep;
}

struct BinPoolManager$SetMinBinSharesForDonateFunctionInputs {
    uint256 minBinShare;
}

struct BinPoolManager$SetProtocolFeeFunctionInputs {
    BinPoolManager$PoolKey key;
    uint24 newProtocolFee;
}

struct BinPoolManager$SetProtocolFeeControllerFunctionInputs {
    address controller;
}

struct BinPoolManager$SwapFunctionInputs {
    BinPoolManager$PoolKey key;
    bool swapForY;
    int128 amountSpecified;
    bytes hookData;
}

struct BinPoolManager$SwapFunctionOutputs {
    int256 delta;
}

struct BinPoolManager$TransferOwnershipFunctionInputs {
    address newOwner;
}

struct BinPoolManager$UpdateDynamicLpFeeFunctionInputs {
    BinPoolManager$PoolKey key;
    uint24 newDynamicLPFee;
}

struct BinPoolManager$VaultFunctionOutputs {
    address outArg0;
}

struct BinPoolManager$BurnEventParams {
    bytes32 id;
    address sender;
    uint256[] ids;
    bytes32 salt;
    bytes32[] amounts;
}

struct BinPoolManager$DonateEventParams {
    bytes32 id;
    address sender;
    int128 amount0;
    int128 amount1;
    uint24 binId;
}

struct BinPoolManager$DynamicLpFeeUpdatedEventParams {
    bytes32 id;
    uint24 dynamicLPFee;
}

struct BinPoolManager$InitializeEventParams {
    bytes32 id;
    address currency0;
    address currency1;
    address hooks;
    uint24 fee;
    bytes32 parameters;
    uint24 activeId;
}

struct BinPoolManager$MintEventParams {
    bytes32 id;
    address sender;
    uint256[] ids;
    bytes32 salt;
    bytes32[] amounts;
    bytes32 compositionFeeAmount;
    bytes32 feeAmountToProtocol;
}

struct BinPoolManager$OwnershipTransferredEventParams {
    address previousOwner;
    address newOwner;
}

struct BinPoolManager$PausedEventParams {
    address account;
}

struct BinPoolManager$ProtocolFeeControllerUpdatedEventParams {
    address protocolFeeController;
}

struct BinPoolManager$ProtocolFeeUpdatedEventParams {
    bytes32 id;
    uint24 protocolFee;
}

struct BinPoolManager$SetMaxBinStepEventParams {
    uint16 maxBinStep;
}

struct BinPoolManager$SetMinBinSharesForDonateEventParams {
    uint256 minLiquidity;
}

struct BinPoolManager$SwapEventParams {
    bytes32 id;
    address sender;
    int128 amount0;
    int128 amount1;
    uint24 activeId;
    uint24 fee;
    uint16 protocolFee;
}

struct BinPoolManager$UnpausedEventParams {
    address account;
}

abstract contract BinPoolManager$OnBurnEvent {
    function BinPoolManager$onBurnEvent(EventContext memory ctx, BinPoolManager$BurnEventParams memory inputs) virtual external;

    function BinPoolManager$triggerOnBurnEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes32(0x16d40aa4e497175b58e47cbf101544758de8c01d92a760c738943044c758df8a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onBurnEvent.selector
        });
    }
}

abstract contract BinPoolManager$OnDonateEvent {
    function BinPoolManager$onDonateEvent(EventContext memory ctx, BinPoolManager$DonateEventParams memory inputs) virtual external;

    function BinPoolManager$triggerOnDonateEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes32(0xfc18146d5586318640b3febea90b094b834f09982812258534a1c07bdda12954),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onDonateEvent.selector
        });
    }
}

abstract contract BinPoolManager$OnDynamicLpFeeUpdatedEvent {
    function BinPoolManager$onDynamicLpFeeUpdatedEvent(EventContext memory ctx, BinPoolManager$DynamicLpFeeUpdatedEventParams memory inputs) virtual external;

    function BinPoolManager$triggerOnDynamicLpFeeUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes32(0x14b2b80e0d62303dc85494859f35a84579160aafbd650180ddf526b1ab547bd6),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onDynamicLpFeeUpdatedEvent.selector
        });
    }
}

abstract contract BinPoolManager$OnInitializeEvent {
    function BinPoolManager$onInitializeEvent(EventContext memory ctx, BinPoolManager$InitializeEventParams memory inputs) virtual external;

    function BinPoolManager$triggerOnInitializeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes32(0xddfde5903015c0eb1671976c6c8f760f1328bec57f15286b6bdab2f955cab9c9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onInitializeEvent.selector
        });
    }
}

abstract contract BinPoolManager$OnMintEvent {
    function BinPoolManager$onMintEvent(EventContext memory ctx, BinPoolManager$MintEventParams memory inputs) virtual external;

    function BinPoolManager$triggerOnMintEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes32(0x7b6bc49b385af8644341f07a67cd976bf9daf2bdd5d71668e651a3a792e318e1),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onMintEvent.selector
        });
    }
}

abstract contract BinPoolManager$OnOwnershipTransferredEvent {
    function BinPoolManager$onOwnershipTransferredEvent(EventContext memory ctx, BinPoolManager$OwnershipTransferredEventParams memory inputs) virtual external;

    function BinPoolManager$triggerOnOwnershipTransferredEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes32(0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onOwnershipTransferredEvent.selector
        });
    }
}

abstract contract BinPoolManager$OnPausedEvent {
    function BinPoolManager$onPausedEvent(EventContext memory ctx, BinPoolManager$PausedEventParams memory inputs) virtual external;

    function BinPoolManager$triggerOnPausedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes32(0x62e78cea01bee320cd4e420270b5ea74000d11b0c9f74754ebdbfc544b05a258),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onPausedEvent.selector
        });
    }
}

abstract contract BinPoolManager$OnProtocolFeeControllerUpdatedEvent {
    function BinPoolManager$onProtocolFeeControllerUpdatedEvent(EventContext memory ctx, BinPoolManager$ProtocolFeeControllerUpdatedEventParams memory inputs) virtual external;

    function BinPoolManager$triggerOnProtocolFeeControllerUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes32(0xb4bd8ef53df690b9943d3318996006dbb82a25f54719d8c8035b516a2a5b8acc),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onProtocolFeeControllerUpdatedEvent.selector
        });
    }
}

abstract contract BinPoolManager$OnProtocolFeeUpdatedEvent {
    function BinPoolManager$onProtocolFeeUpdatedEvent(EventContext memory ctx, BinPoolManager$ProtocolFeeUpdatedEventParams memory inputs) virtual external;

    function BinPoolManager$triggerOnProtocolFeeUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes32(0xe9c42593e71f84403b84352cd168d693e2c9fcd1fdbcc3feb21d92b43e6696f9),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onProtocolFeeUpdatedEvent.selector
        });
    }
}

abstract contract BinPoolManager$OnSetMaxBinStepEvent {
    function BinPoolManager$onSetMaxBinStepEvent(EventContext memory ctx, BinPoolManager$SetMaxBinStepEventParams memory inputs) virtual external;

    function BinPoolManager$triggerOnSetMaxBinStepEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes32(0x02172f85720dcdece86093a50de7b9578583a2b7a567992be89d92868feba494),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onSetMaxBinStepEvent.selector
        });
    }
}

abstract contract BinPoolManager$OnSetMinBinSharesForDonateEvent {
    function BinPoolManager$onSetMinBinSharesForDonateEvent(EventContext memory ctx, BinPoolManager$SetMinBinSharesForDonateEventParams memory inputs) virtual external;

    function BinPoolManager$triggerOnSetMinBinSharesForDonateEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes32(0xd752b38d4cbf2c0d2ceecee3d2f43840ec77bd9cde6b733b94cc065bdab931a3),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onSetMinBinSharesForDonateEvent.selector
        });
    }
}

abstract contract BinPoolManager$OnSwapEvent {
    function BinPoolManager$onSwapEvent(EventContext memory ctx, BinPoolManager$SwapEventParams memory inputs) virtual external;

    function BinPoolManager$triggerOnSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes32(0x3e8aae37f890eb1f9d63dd4d2062f3f0be757848a0f0760e4f3e53dad556e861),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onSwapEvent.selector
        });
    }
}

abstract contract BinPoolManager$OnUnpausedEvent {
    function BinPoolManager$onUnpausedEvent(EventContext memory ctx, BinPoolManager$UnpausedEventParams memory inputs) virtual external;

    function BinPoolManager$triggerOnUnpausedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes32(0x5db9ee0a495bf2e6ff9c91a7834c1ba4fdd244a5e8aa4e537bd38aeae4b073aa),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onUnpausedEvent.selector
        });
    }
}

abstract contract BinPoolManager$OnMinBinStepFunction {
    function BinPoolManager$onMinBinStepFunction(FunctionContext memory ctx, BinPoolManager$MinBinStepFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnMinBinStepFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x7df880e3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onMinBinStepFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreMinBinStepFunction {
    function BinPoolManager$preMinBinStepFunction(PreFunctionContext memory ctx) virtual external;

    function BinPoolManager$triggerPreMinBinStepFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x7df880e3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preMinBinStepFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnBurnFunction {
    function BinPoolManager$onBurnFunction(FunctionContext memory ctx, BinPoolManager$BurnFunctionInputs memory inputs, BinPoolManager$BurnFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xbc5348f2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onBurnFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreBurnFunction {
    function BinPoolManager$preBurnFunction(PreFunctionContext memory ctx, BinPoolManager$BurnFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreBurnFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xbc5348f2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preBurnFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnCollectProtocolFeesFunction {
    function BinPoolManager$onCollectProtocolFeesFunction(FunctionContext memory ctx, BinPoolManager$CollectProtocolFeesFunctionInputs memory inputs, BinPoolManager$CollectProtocolFeesFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnCollectProtocolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x8161b874),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onCollectProtocolFeesFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreCollectProtocolFeesFunction {
    function BinPoolManager$preCollectProtocolFeesFunction(PreFunctionContext memory ctx, BinPoolManager$CollectProtocolFeesFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreCollectProtocolFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x8161b874),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preCollectProtocolFeesFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnDonateFunction {
    function BinPoolManager$onDonateFunction(FunctionContext memory ctx, BinPoolManager$DonateFunctionInputs memory inputs, BinPoolManager$DonateFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x57738174),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onDonateFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreDonateFunction {
    function BinPoolManager$preDonateFunction(PreFunctionContext memory ctx, BinPoolManager$DonateFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x57738174),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preDonateFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnExtsload0x1E2EAEAFFunction {
    function BinPoolManager$onExtsload0x1E2EAEAFFunction(FunctionContext memory ctx, BinPoolManager$Extsload0x1E2EAEAFFunctionInputs memory inputs, BinPoolManager$Extsload0x1E2EAEAFFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnExtsload0x1E2EAEAFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x1e2eaeaf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onExtsload0x1E2EAEAFFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreExtsload0x1E2EAEAFFunction {
    function BinPoolManager$preExtsload0x1E2EAEAFFunction(PreFunctionContext memory ctx, BinPoolManager$Extsload0x1E2EAEAFFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreExtsload0x1E2EAEAFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x1e2eaeaf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preExtsload0x1E2EAEAFFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnExtsload0xDBD035FFFunction {
    function BinPoolManager$onExtsload0xDBD035FFFunction(FunctionContext memory ctx, BinPoolManager$Extsload0xDBD035FFFunctionInputs memory inputs, BinPoolManager$Extsload0xDBD035FFFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnExtsload0xDBD035FFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xdbd035ff),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onExtsload0xDBD035FFFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreExtsload0xDBD035FFFunction {
    function BinPoolManager$preExtsload0xDBD035FFFunction(PreFunctionContext memory ctx, BinPoolManager$Extsload0xDBD035FFFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreExtsload0xDBD035FFFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xdbd035ff),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preExtsload0xDBD035FFFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnGetBinFunction {
    function BinPoolManager$onGetBinFunction(FunctionContext memory ctx, BinPoolManager$GetBinFunctionInputs memory inputs, BinPoolManager$GetBinFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnGetBinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x4580c3c5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onGetBinFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreGetBinFunction {
    function BinPoolManager$preGetBinFunction(PreFunctionContext memory ctx, BinPoolManager$GetBinFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreGetBinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x4580c3c5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preGetBinFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnGetNextNonEmptyBinFunction {
    function BinPoolManager$onGetNextNonEmptyBinFunction(FunctionContext memory ctx, BinPoolManager$GetNextNonEmptyBinFunctionInputs memory inputs, BinPoolManager$GetNextNonEmptyBinFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnGetNextNonEmptyBinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xbf7b7286),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onGetNextNonEmptyBinFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreGetNextNonEmptyBinFunction {
    function BinPoolManager$preGetNextNonEmptyBinFunction(PreFunctionContext memory ctx, BinPoolManager$GetNextNonEmptyBinFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreGetNextNonEmptyBinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xbf7b7286),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preGetNextNonEmptyBinFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnGetPositionFunction {
    function BinPoolManager$onGetPositionFunction(FunctionContext memory ctx, BinPoolManager$GetPositionFunctionInputs memory inputs, BinPoolManager$GetPositionFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnGetPositionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xa4a9a549),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onGetPositionFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreGetPositionFunction {
    function BinPoolManager$preGetPositionFunction(PreFunctionContext memory ctx, BinPoolManager$GetPositionFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreGetPositionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xa4a9a549),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preGetPositionFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnGetSlot0Function {
    function BinPoolManager$onGetSlot0Function(FunctionContext memory ctx, BinPoolManager$GetSlot0FunctionInputs memory inputs, BinPoolManager$GetSlot0FunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnGetSlot0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xc815641c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onGetSlot0Function.selector
        });
    }
}

abstract contract BinPoolManager$PreGetSlot0Function {
    function BinPoolManager$preGetSlot0Function(PreFunctionContext memory ctx, BinPoolManager$GetSlot0FunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreGetSlot0Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xc815641c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preGetSlot0Function.selector
        });
    }
}

abstract contract BinPoolManager$OnInitializeFunction {
    function BinPoolManager$onInitializeFunction(FunctionContext memory ctx, BinPoolManager$InitializeFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xdc2ab18c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onInitializeFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreInitializeFunction {
    function BinPoolManager$preInitializeFunction(PreFunctionContext memory ctx, BinPoolManager$InitializeFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xdc2ab18c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preInitializeFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnMaxBinStepFunction {
    function BinPoolManager$onMaxBinStepFunction(FunctionContext memory ctx, BinPoolManager$MaxBinStepFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnMaxBinStepFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x615188b7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onMaxBinStepFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreMaxBinStepFunction {
    function BinPoolManager$preMaxBinStepFunction(PreFunctionContext memory ctx) virtual external;

    function BinPoolManager$triggerPreMaxBinStepFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x615188b7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preMaxBinStepFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnMinBinShareForDonateFunction {
    function BinPoolManager$onMinBinShareForDonateFunction(FunctionContext memory ctx, BinPoolManager$MinBinShareForDonateFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnMinBinShareForDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xb1def7f4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onMinBinShareForDonateFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreMinBinShareForDonateFunction {
    function BinPoolManager$preMinBinShareForDonateFunction(PreFunctionContext memory ctx) virtual external;

    function BinPoolManager$triggerPreMinBinShareForDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xb1def7f4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preMinBinShareForDonateFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnMintFunction {
    function BinPoolManager$onMintFunction(FunctionContext memory ctx, BinPoolManager$MintFunctionInputs memory inputs, BinPoolManager$MintFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xebc413e0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onMintFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreMintFunction {
    function BinPoolManager$preMintFunction(PreFunctionContext memory ctx, BinPoolManager$MintFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreMintFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xebc413e0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preMintFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnOwnerFunction {
    function BinPoolManager$onOwnerFunction(FunctionContext memory ctx, BinPoolManager$OwnerFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onOwnerFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreOwnerFunction {
    function BinPoolManager$preOwnerFunction(PreFunctionContext memory ctx) virtual external;

    function BinPoolManager$triggerPreOwnerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x8da5cb5b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preOwnerFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnPauseFunction {
    function BinPoolManager$onPauseFunction(FunctionContext memory ctx) virtual external;

    function BinPoolManager$triggerOnPauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x8456cb59),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onPauseFunction.selector
        });
    }
}

abstract contract BinPoolManager$PrePauseFunction {
    function BinPoolManager$prePauseFunction(PreFunctionContext memory ctx) virtual external;

    function BinPoolManager$triggerPrePauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x8456cb59),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$prePauseFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnPausedFunction {
    function BinPoolManager$onPausedFunction(FunctionContext memory ctx, BinPoolManager$PausedFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnPausedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x5c975abb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onPausedFunction.selector
        });
    }
}

abstract contract BinPoolManager$PrePausedFunction {
    function BinPoolManager$prePausedFunction(PreFunctionContext memory ctx) virtual external;

    function BinPoolManager$triggerPrePausedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x5c975abb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$prePausedFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnPoolIdToPoolKeyFunction {
    function BinPoolManager$onPoolIdToPoolKeyFunction(FunctionContext memory ctx, BinPoolManager$PoolIdToPoolKeyFunctionInputs memory inputs, BinPoolManager$PoolIdToPoolKeyFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnPoolIdToPoolKeyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x0e2d484a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onPoolIdToPoolKeyFunction.selector
        });
    }
}

abstract contract BinPoolManager$PrePoolIdToPoolKeyFunction {
    function BinPoolManager$prePoolIdToPoolKeyFunction(PreFunctionContext memory ctx, BinPoolManager$PoolIdToPoolKeyFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPrePoolIdToPoolKeyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x0e2d484a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$prePoolIdToPoolKeyFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnPoolsFunction {
    function BinPoolManager$onPoolsFunction(FunctionContext memory ctx, BinPoolManager$PoolsFunctionInputs memory inputs, BinPoolManager$PoolsFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnPoolsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xb5217bb4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onPoolsFunction.selector
        });
    }
}

abstract contract BinPoolManager$PrePoolsFunction {
    function BinPoolManager$prePoolsFunction(PreFunctionContext memory ctx, BinPoolManager$PoolsFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPrePoolsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xb5217bb4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$prePoolsFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnProtocolFeeControllerFunction {
    function BinPoolManager$onProtocolFeeControllerFunction(FunctionContext memory ctx, BinPoolManager$ProtocolFeeControllerFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xf02de3b2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreProtocolFeeControllerFunction {
    function BinPoolManager$preProtocolFeeControllerFunction(PreFunctionContext memory ctx) virtual external;

    function BinPoolManager$triggerPreProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xf02de3b2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnProtocolFeesAccruedFunction {
    function BinPoolManager$onProtocolFeesAccruedFunction(FunctionContext memory ctx, BinPoolManager$ProtocolFeesAccruedFunctionInputs memory inputs, BinPoolManager$ProtocolFeesAccruedFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnProtocolFeesAccruedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x97e8cd4e),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onProtocolFeesAccruedFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreProtocolFeesAccruedFunction {
    function BinPoolManager$preProtocolFeesAccruedFunction(PreFunctionContext memory ctx, BinPoolManager$ProtocolFeesAccruedFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreProtocolFeesAccruedFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x97e8cd4e),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preProtocolFeesAccruedFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnSetMaxBinStepFunction {
    function BinPoolManager$onSetMaxBinStepFunction(FunctionContext memory ctx, BinPoolManager$SetMaxBinStepFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerOnSetMaxBinStepFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x5cf7d255),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onSetMaxBinStepFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreSetMaxBinStepFunction {
    function BinPoolManager$preSetMaxBinStepFunction(PreFunctionContext memory ctx, BinPoolManager$SetMaxBinStepFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreSetMaxBinStepFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x5cf7d255),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preSetMaxBinStepFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnSetMinBinSharesForDonateFunction {
    function BinPoolManager$onSetMinBinSharesForDonateFunction(FunctionContext memory ctx, BinPoolManager$SetMinBinSharesForDonateFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerOnSetMinBinSharesForDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xc3b226f7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onSetMinBinSharesForDonateFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreSetMinBinSharesForDonateFunction {
    function BinPoolManager$preSetMinBinSharesForDonateFunction(PreFunctionContext memory ctx, BinPoolManager$SetMinBinSharesForDonateFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreSetMinBinSharesForDonateFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xc3b226f7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preSetMinBinSharesForDonateFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnSetProtocolFeeFunction {
    function BinPoolManager$onSetProtocolFeeFunction(FunctionContext memory ctx, BinPoolManager$SetProtocolFeeFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerOnSetProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x81a250a1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onSetProtocolFeeFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreSetProtocolFeeFunction {
    function BinPoolManager$preSetProtocolFeeFunction(PreFunctionContext memory ctx, BinPoolManager$SetProtocolFeeFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreSetProtocolFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x81a250a1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preSetProtocolFeeFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnSetProtocolFeeControllerFunction {
    function BinPoolManager$onSetProtocolFeeControllerFunction(FunctionContext memory ctx, BinPoolManager$SetProtocolFeeControllerFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerOnSetProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x2d771389),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onSetProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreSetProtocolFeeControllerFunction {
    function BinPoolManager$preSetProtocolFeeControllerFunction(PreFunctionContext memory ctx, BinPoolManager$SetProtocolFeeControllerFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreSetProtocolFeeControllerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x2d771389),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preSetProtocolFeeControllerFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnSwapFunction {
    function BinPoolManager$onSwapFunction(FunctionContext memory ctx, BinPoolManager$SwapFunctionInputs memory inputs, BinPoolManager$SwapFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x911a63b7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onSwapFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreSwapFunction {
    function BinPoolManager$preSwapFunction(PreFunctionContext memory ctx, BinPoolManager$SwapFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreSwapFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x911a63b7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preSwapFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnTransferOwnershipFunction {
    function BinPoolManager$onTransferOwnershipFunction(FunctionContext memory ctx, BinPoolManager$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerOnTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onTransferOwnershipFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreTransferOwnershipFunction {
    function BinPoolManager$preTransferOwnershipFunction(PreFunctionContext memory ctx, BinPoolManager$TransferOwnershipFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreTransferOwnershipFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xf2fde38b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preTransferOwnershipFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnUnpauseFunction {
    function BinPoolManager$onUnpauseFunction(FunctionContext memory ctx) virtual external;

    function BinPoolManager$triggerOnUnpauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x3f4ba83a),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onUnpauseFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreUnpauseFunction {
    function BinPoolManager$preUnpauseFunction(PreFunctionContext memory ctx) virtual external;

    function BinPoolManager$triggerPreUnpauseFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0x3f4ba83a),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preUnpauseFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnUpdateDynamicLpFeeFunction {
    function BinPoolManager$onUpdateDynamicLpFeeFunction(FunctionContext memory ctx, BinPoolManager$UpdateDynamicLpFeeFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerOnUpdateDynamicLpFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xad4cc2d3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onUpdateDynamicLpFeeFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreUpdateDynamicLpFeeFunction {
    function BinPoolManager$preUpdateDynamicLpFeeFunction(PreFunctionContext memory ctx, BinPoolManager$UpdateDynamicLpFeeFunctionInputs memory inputs) virtual external;

    function BinPoolManager$triggerPreUpdateDynamicLpFeeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xad4cc2d3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preUpdateDynamicLpFeeFunction.selector
        });
    }
}

abstract contract BinPoolManager$OnVaultFunction {
    function BinPoolManager$onVaultFunction(FunctionContext memory ctx, BinPoolManager$VaultFunctionOutputs memory outputs) virtual external;

    function BinPoolManager$triggerOnVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xfbfa77cf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$onVaultFunction.selector
        });
    }
}

abstract contract BinPoolManager$PreVaultFunction {
    function BinPoolManager$preVaultFunction(PreFunctionContext memory ctx) virtual external;

    function BinPoolManager$triggerPreVaultFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BinPoolManager",
            selector: bytes4(0xfbfa77cf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BinPoolManager$preVaultFunction.selector
        });
    }
}

contract BinPoolManager$EmitAllEvents is
  BinPoolManager$OnBurnEvent,
BinPoolManager$OnDonateEvent,
BinPoolManager$OnDynamicLpFeeUpdatedEvent,
BinPoolManager$OnInitializeEvent,
BinPoolManager$OnMintEvent,
BinPoolManager$OnOwnershipTransferredEvent,
BinPoolManager$OnPausedEvent,
BinPoolManager$OnProtocolFeeControllerUpdatedEvent,
BinPoolManager$OnProtocolFeeUpdatedEvent,
BinPoolManager$OnSetMaxBinStepEvent,
BinPoolManager$OnSetMinBinSharesForDonateEvent,
BinPoolManager$OnSwapEvent,
BinPoolManager$OnUnpausedEvent
{
  event Burn(bytes32 id, address sender, uint256[] ids, bytes32 salt, bytes32[] amounts);
event Donate(bytes32 id, address sender, int128 amount0, int128 amount1, uint24 binId);
event DynamicLpFeeUpdated(bytes32 id, uint24 dynamicLPFee);
event Initialize(bytes32 id, address currency0, address currency1, address hooks, uint24 fee, bytes32 parameters, uint24 activeId);
event Mint(bytes32 id, address sender, uint256[] ids, bytes32 salt, bytes32[] amounts, bytes32 compositionFeeAmount, bytes32 feeAmountToProtocol);
event OwnershipTransferred(address previousOwner, address newOwner);
event Paused(address account);
event ProtocolFeeControllerUpdated(address protocolFeeController);
event ProtocolFeeUpdated(bytes32 id, uint24 protocolFee);
event SetMaxBinStep(uint16 maxBinStep);
event SetMinBinSharesForDonate(uint256 minLiquidity);
event Swap(bytes32 id, address sender, int128 amount0, int128 amount1, uint24 activeId, uint24 fee, uint16 protocolFee);
event Unpaused(address account);

  function BinPoolManager$onBurnEvent(EventContext memory ctx, BinPoolManager$BurnEventParams memory inputs) virtual external override {
    emit Burn(inputs.id, inputs.sender, inputs.ids, inputs.salt, inputs.amounts);
  }
function BinPoolManager$onDonateEvent(EventContext memory ctx, BinPoolManager$DonateEventParams memory inputs) virtual external override {
    emit Donate(inputs.id, inputs.sender, inputs.amount0, inputs.amount1, inputs.binId);
  }
function BinPoolManager$onDynamicLpFeeUpdatedEvent(EventContext memory ctx, BinPoolManager$DynamicLpFeeUpdatedEventParams memory inputs) virtual external override {
    emit DynamicLpFeeUpdated(inputs.id, inputs.dynamicLPFee);
  }
function BinPoolManager$onInitializeEvent(EventContext memory ctx, BinPoolManager$InitializeEventParams memory inputs) virtual external override {
    emit Initialize(inputs.id, inputs.currency0, inputs.currency1, inputs.hooks, inputs.fee, inputs.parameters, inputs.activeId);
  }
function BinPoolManager$onMintEvent(EventContext memory ctx, BinPoolManager$MintEventParams memory inputs) virtual external override {
    emit Mint(inputs.id, inputs.sender, inputs.ids, inputs.salt, inputs.amounts, inputs.compositionFeeAmount, inputs.feeAmountToProtocol);
  }
function BinPoolManager$onOwnershipTransferredEvent(EventContext memory ctx, BinPoolManager$OwnershipTransferredEventParams memory inputs) virtual external override {
    emit OwnershipTransferred(inputs.previousOwner, inputs.newOwner);
  }
function BinPoolManager$onPausedEvent(EventContext memory ctx, BinPoolManager$PausedEventParams memory inputs) virtual external override {
    emit Paused(inputs.account);
  }
function BinPoolManager$onProtocolFeeControllerUpdatedEvent(EventContext memory ctx, BinPoolManager$ProtocolFeeControllerUpdatedEventParams memory inputs) virtual external override {
    emit ProtocolFeeControllerUpdated(inputs.protocolFeeController);
  }
function BinPoolManager$onProtocolFeeUpdatedEvent(EventContext memory ctx, BinPoolManager$ProtocolFeeUpdatedEventParams memory inputs) virtual external override {
    emit ProtocolFeeUpdated(inputs.id, inputs.protocolFee);
  }
function BinPoolManager$onSetMaxBinStepEvent(EventContext memory ctx, BinPoolManager$SetMaxBinStepEventParams memory inputs) virtual external override {
    emit SetMaxBinStep(inputs.maxBinStep);
  }
function BinPoolManager$onSetMinBinSharesForDonateEvent(EventContext memory ctx, BinPoolManager$SetMinBinSharesForDonateEventParams memory inputs) virtual external override {
    emit SetMinBinSharesForDonate(inputs.minLiquidity);
  }
function BinPoolManager$onSwapEvent(EventContext memory ctx, BinPoolManager$SwapEventParams memory inputs) virtual external override {
    emit Swap(inputs.id, inputs.sender, inputs.amount0, inputs.amount1, inputs.activeId, inputs.fee, inputs.protocolFee);
  }
function BinPoolManager$onUnpausedEvent(EventContext memory ctx, BinPoolManager$UnpausedEventParams memory inputs) virtual external override {
    emit Unpaused(inputs.account);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](13);
    triggers[0] = this.BinPoolManager$triggerOnBurnEvent();
    triggers[1] = this.BinPoolManager$triggerOnDonateEvent();
    triggers[2] = this.BinPoolManager$triggerOnDynamicLpFeeUpdatedEvent();
    triggers[3] = this.BinPoolManager$triggerOnInitializeEvent();
    triggers[4] = this.BinPoolManager$triggerOnMintEvent();
    triggers[5] = this.BinPoolManager$triggerOnOwnershipTransferredEvent();
    triggers[6] = this.BinPoolManager$triggerOnPausedEvent();
    triggers[7] = this.BinPoolManager$triggerOnProtocolFeeControllerUpdatedEvent();
    triggers[8] = this.BinPoolManager$triggerOnProtocolFeeUpdatedEvent();
    triggers[9] = this.BinPoolManager$triggerOnSetMaxBinStepEvent();
    triggers[10] = this.BinPoolManager$triggerOnSetMinBinSharesForDonateEvent();
    triggers[11] = this.BinPoolManager$triggerOnSwapEvent();
    triggers[12] = this.BinPoolManager$triggerOnUnpausedEvent();
    return triggers;
  }
}