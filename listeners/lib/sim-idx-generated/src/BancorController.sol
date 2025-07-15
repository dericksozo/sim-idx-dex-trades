// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function BancorController$Abi() pure returns (Abi memory) {
    return Abi("BancorController");
}
struct BancorController$DefaultAdminRoleFunctionOutputs {
    bytes32 outArg0;
}

struct BancorController$AccumulatedFeesFunctionInputs {
    address token;
}

struct BancorController$AccumulatedFeesFunctionOutputs {
    uint256 outArg0;
}

struct BancorController$TradeAction {
    uint256 strategyId;
    uint128 amount;
}

struct BancorController$CalculateTradeSourceAmountFunctionInputs {
    address sourceToken;
    address targetToken;
    BancorController$TradeAction[] tradeActions;
}

struct BancorController$CalculateTradeSourceAmountFunctionOutputs {
    uint128 outArg0;
}

struct BancorController$CalculateTradeTargetAmountFunctionInputs {
    address sourceToken;
    address targetToken;
    BancorController$TradeAction[] tradeActions;
}

struct BancorController$CalculateTradeTargetAmountFunctionOutputs {
    uint128 outArg0;
}

struct BancorController$ControllerTypeFunctionOutputs {
    uint16 outArg0;
}

struct BancorController$CreatePairFunctionInputs {
    address token0;
    address token1;
}

struct BancorController$Pair {
    uint128 id;
    address[2] tokens;
}

struct BancorController$CreatePairFunctionOutputs {
    BancorController$Pair outArg0;
}

struct BancorController$DeleteStrategyFunctionInputs {
    uint256 strategyId;
}

struct BancorController$GetRoleAdminFunctionInputs {
    bytes32 role;
}

struct BancorController$GetRoleAdminFunctionOutputs {
    bytes32 outArg0;
}

struct BancorController$GetRoleMemberFunctionInputs {
    bytes32 role;
    uint256 index;
}

struct BancorController$GetRoleMemberFunctionOutputs {
    address outArg0;
}

struct BancorController$GetRoleMemberCountFunctionInputs {
    bytes32 role;
}

struct BancorController$GetRoleMemberCountFunctionOutputs {
    uint256 outArg0;
}

struct BancorController$GrantRoleFunctionInputs {
    bytes32 role;
    address account;
}

struct BancorController$HasRoleFunctionInputs {
    bytes32 role;
    address account;
}

struct BancorController$HasRoleFunctionOutputs {
    bool outArg0;
}

struct BancorController$PairFunctionInputs {
    address token0;
    address token1;
}

struct BancorController$PairFunctionOutputs {
    BancorController$Pair outArg0;
}

struct BancorController$PairTradingFeePpmFunctionInputs {
    address token0;
    address token1;
}

struct BancorController$PairTradingFeePpmFunctionOutputs {
    uint32 outArg0;
}

struct BancorController$PairsFunctionOutputs {
    address[2][] outArg0;
}

struct BancorController$PostUpgradeFunctionInputs {
    bytes data;
}

struct BancorController$RenounceRoleFunctionInputs {
    bytes32 role;
    address account;
}

struct BancorController$RevokeRoleFunctionInputs {
    bytes32 role;
    address account;
}

struct BancorController$RoleAdminFunctionOutputs {
    bytes32 outArg0;
}

struct BancorController$RoleFeesManagerFunctionOutputs {
    bytes32 outArg0;
}

struct BancorController$SetPairTradingFeePpmFunctionInputs {
    address token0;
    address token1;
    uint32 newPairTradingFeePPM;
}

struct BancorController$SetTradingFeePpmFunctionInputs {
    uint32 newTradingFeePPM;
}

struct BancorController$StrategiesByPairCountFunctionInputs {
    address token0;
    address token1;
}

struct BancorController$StrategiesByPairCountFunctionOutputs {
    uint256 outArg0;
}

struct BancorController$SupportsInterfaceFunctionInputs {
    bytes4 interfaceId;
}

struct BancorController$SupportsInterfaceFunctionOutputs {
    bool outArg0;
}

struct BancorController$TradeBySourceAmountFunctionInputs {
    address sourceToken;
    address targetToken;
    BancorController$TradeAction[] tradeActions;
    uint256 deadline;
    uint128 minReturn;
}

struct BancorController$TradeBySourceAmountFunctionOutputs {
    uint128 outArg0;
}

struct BancorController$TradeByTargetAmountFunctionInputs {
    address sourceToken;
    address targetToken;
    BancorController$TradeAction[] tradeActions;
    uint256 deadline;
    uint128 maxInput;
}

struct BancorController$TradeByTargetAmountFunctionOutputs {
    uint128 outArg0;
}

struct BancorController$TradingFeePpmFunctionOutputs {
    uint32 outArg0;
}

struct BancorController$VersionFunctionOutputs {
    uint16 outArg0;
}

struct BancorController$WithdrawFeesFunctionInputs {
    address token;
    uint256 amount;
    address recipient;
}

struct BancorController$WithdrawFeesFunctionOutputs {
    uint256 outArg0;
}

struct BancorController$FeesWithdrawnEventParams {
    address token;
    address recipient;
    uint256 amount;
    address sender;
}

struct BancorController$InitializedEventParams {
    uint8 version;
}

struct BancorController$PairCreatedEventParams {
    uint128 pairId;
    address token0;
    address token1;
}

struct BancorController$PairTradingFeePpmUpdatedEventParams {
    address token0;
    address token1;
    uint32 prevFeePPM;
    uint32 newFeePPM;
}

struct BancorController$RoleAdminChangedEventParams {
    bytes32 role;
    bytes32 previousAdminRole;
    bytes32 newAdminRole;
}

struct BancorController$RoleGrantedEventParams {
    bytes32 role;
    address account;
    address sender;
}

struct BancorController$RoleRevokedEventParams {
    bytes32 role;
    address account;
    address sender;
}

struct BancorController$Order {
    uint128 y;
    uint128 z;
    uint64 A;
    uint64 B;
}

struct BancorController$StrategyCreatedEventParams {
    uint256 id;
    address owner;
    address token0;
    address token1;
    BancorController$Order order0;
    BancorController$Order order1;
}

struct BancorController$StrategyDeletedEventParams {
    uint256 id;
    address owner;
    address token0;
    address token1;
    BancorController$Order order0;
    BancorController$Order order1;
}

struct BancorController$StrategyUpdatedEventParams {
    uint256 id;
    address token0;
    address token1;
    BancorController$Order order0;
    BancorController$Order order1;
    uint8 reason;
}

struct BancorController$TokensTradedEventParams {
    address trader;
    address sourceToken;
    address targetToken;
    uint256 sourceAmount;
    uint256 targetAmount;
    uint128 tradingFeeAmount;
    bool byTargetAmount;
}

struct BancorController$TradingFeePpmUpdatedEventParams {
    uint32 prevFeePPM;
    uint32 newFeePPM;
}

abstract contract BancorController$OnFeesWithdrawnEvent {
    function onFeesWithdrawnEvent(EventContext memory ctx, BancorController$FeesWithdrawnEventParams memory inputs) virtual external;

    function triggerOnFeesWithdrawnEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x2f4e8fcae66f01952d258445c03f43cf56d3ce389e017ecd2afa8a79e7717588),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onFeesWithdrawnEvent.selector
        });
    }
}

abstract contract BancorController$OnInitializedEvent {
    function onInitializedEvent(EventContext memory ctx, BancorController$InitializedEventParams memory inputs) virtual external;

    function triggerOnInitializedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x7f26b83ff96e1f2b6a682f133852f6798a09c465da95921460cefb3847402498),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializedEvent.selector
        });
    }
}

abstract contract BancorController$OnPairCreatedEvent {
    function onPairCreatedEvent(EventContext memory ctx, BancorController$PairCreatedEventParams memory inputs) virtual external;

    function triggerOnPairCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x6365c594f5448f79c1cc1e6f661bdbf1d16f2e8f85747e13f8e80f1fd168b7c3),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPairCreatedEvent.selector
        });
    }
}

abstract contract BancorController$OnPairTradingFeePpmUpdatedEvent {
    function onPairTradingFeePpmUpdatedEvent(EventContext memory ctx, BancorController$PairTradingFeePpmUpdatedEventParams memory inputs) virtual external;

    function triggerOnPairTradingFeePpmUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x831434d05f3ad5f63be733ea463b2933c70d2162697fd200a22b5d56f5c454b6),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPairTradingFeePpmUpdatedEvent.selector
        });
    }
}

abstract contract BancorController$OnRoleAdminChangedEvent {
    function onRoleAdminChangedEvent(EventContext memory ctx, BancorController$RoleAdminChangedEventParams memory inputs) virtual external;

    function triggerOnRoleAdminChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0xbd79b86ffe0ab8e8776151514217cd7cacd52c909f66475c3af44e129f0b00ff),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRoleAdminChangedEvent.selector
        });
    }
}

abstract contract BancorController$OnRoleGrantedEvent {
    function onRoleGrantedEvent(EventContext memory ctx, BancorController$RoleGrantedEventParams memory inputs) virtual external;

    function triggerOnRoleGrantedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x2f8788117e7eff1d82e926ec794901d17c78024a50270940304540a733656f0d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRoleGrantedEvent.selector
        });
    }
}

abstract contract BancorController$OnRoleRevokedEvent {
    function onRoleRevokedEvent(EventContext memory ctx, BancorController$RoleRevokedEventParams memory inputs) virtual external;

    function triggerOnRoleRevokedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0xf6391f5c32d9c69d2a47ea670b442974b53935d1edc7fd64eb21e047a839171b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRoleRevokedEvent.selector
        });
    }
}

abstract contract BancorController$OnStrategyCreatedEvent {
    function onStrategyCreatedEvent(EventContext memory ctx, BancorController$StrategyCreatedEventParams memory inputs) virtual external;

    function triggerOnStrategyCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0xff24554f8ccfe540435cfc8854831f8dcf1cf2068708cfaf46e8b52a4ccc4c8d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onStrategyCreatedEvent.selector
        });
    }
}

abstract contract BancorController$OnStrategyDeletedEvent {
    function onStrategyDeletedEvent(EventContext memory ctx, BancorController$StrategyDeletedEventParams memory inputs) virtual external;

    function triggerOnStrategyDeletedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x4d5b6e0627ea711d8e9312b6ba56f50e0b51d41816fd6fd38643495ac81d38b6),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onStrategyDeletedEvent.selector
        });
    }
}

abstract contract BancorController$OnStrategyUpdatedEvent {
    function onStrategyUpdatedEvent(EventContext memory ctx, BancorController$StrategyUpdatedEventParams memory inputs) virtual external;

    function triggerOnStrategyUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x720da23a5c920b1d8827ec83c4d3c4d90d9419eadb0036b88cb4c2ffa91aef7d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onStrategyUpdatedEvent.selector
        });
    }
}

abstract contract BancorController$OnTokensTradedEvent {
    function onTokensTradedEvent(EventContext memory ctx, BancorController$TokensTradedEventParams memory inputs) virtual external;

    function triggerOnTokensTradedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x95f3b01351225fea0e69a46f68b164c9dea10284f12cd4a907ce66510ab7af6a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTokensTradedEvent.selector
        });
    }
}

abstract contract BancorController$OnTradingFeePpmUpdatedEvent {
    function onTradingFeePpmUpdatedEvent(EventContext memory ctx, BancorController$TradingFeePpmUpdatedEventParams memory inputs) virtual external;

    function triggerOnTradingFeePpmUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x66db0986e1156e2e747795714bf0301c7e1c695c149a738cb01bcf5cfead8465),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTradingFeePpmUpdatedEvent.selector
        });
    }
}

abstract contract BancorController$OnDefaultAdminRoleFunction {
    function onDefaultAdminRoleFunction(FunctionContext memory ctx, BancorController$DefaultAdminRoleFunctionOutputs memory outputs) virtual external;

    function triggerOnDefaultAdminRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xa217fddf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDefaultAdminRoleFunction.selector
        });
    }
}

abstract contract BancorController$PreDefaultAdminRoleFunction {
    function preDefaultAdminRoleFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDefaultAdminRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xa217fddf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDefaultAdminRoleFunction.selector
        });
    }
}

abstract contract BancorController$OnAccumulatedFeesFunction {
    function onAccumulatedFeesFunction(FunctionContext memory ctx, BancorController$AccumulatedFeesFunctionInputs memory inputs, BancorController$AccumulatedFeesFunctionOutputs memory outputs) virtual external;

    function triggerOnAccumulatedFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xfcf66664),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onAccumulatedFeesFunction.selector
        });
    }
}

abstract contract BancorController$PreAccumulatedFeesFunction {
    function preAccumulatedFeesFunction(PreFunctionContext memory ctx, BancorController$AccumulatedFeesFunctionInputs memory inputs) virtual external;

    function triggerPreAccumulatedFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xfcf66664),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preAccumulatedFeesFunction.selector
        });
    }
}

abstract contract BancorController$OnCalculateTradeSourceAmountFunction {
    function onCalculateTradeSourceAmountFunction(FunctionContext memory ctx, BancorController$CalculateTradeSourceAmountFunctionInputs memory inputs, BancorController$CalculateTradeSourceAmountFunctionOutputs memory outputs) virtual external;

    function triggerOnCalculateTradeSourceAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xf2bda26d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCalculateTradeSourceAmountFunction.selector
        });
    }
}

abstract contract BancorController$PreCalculateTradeSourceAmountFunction {
    function preCalculateTradeSourceAmountFunction(PreFunctionContext memory ctx, BancorController$CalculateTradeSourceAmountFunctionInputs memory inputs) virtual external;

    function triggerPreCalculateTradeSourceAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xf2bda26d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCalculateTradeSourceAmountFunction.selector
        });
    }
}

abstract contract BancorController$OnCalculateTradeTargetAmountFunction {
    function onCalculateTradeTargetAmountFunction(FunctionContext memory ctx, BancorController$CalculateTradeTargetAmountFunctionInputs memory inputs, BancorController$CalculateTradeTargetAmountFunctionOutputs memory outputs) virtual external;

    function triggerOnCalculateTradeTargetAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x2ab2fad1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCalculateTradeTargetAmountFunction.selector
        });
    }
}

abstract contract BancorController$PreCalculateTradeTargetAmountFunction {
    function preCalculateTradeTargetAmountFunction(PreFunctionContext memory ctx, BancorController$CalculateTradeTargetAmountFunctionInputs memory inputs) virtual external;

    function triggerPreCalculateTradeTargetAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x2ab2fad1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCalculateTradeTargetAmountFunction.selector
        });
    }
}

abstract contract BancorController$OnControllerTypeFunction {
    function onControllerTypeFunction(FunctionContext memory ctx, BancorController$ControllerTypeFunctionOutputs memory outputs) virtual external;

    function triggerOnControllerTypeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xb76040cd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onControllerTypeFunction.selector
        });
    }
}

abstract contract BancorController$PreControllerTypeFunction {
    function preControllerTypeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreControllerTypeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xb76040cd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preControllerTypeFunction.selector
        });
    }
}

abstract contract BancorController$OnCreatePairFunction {
    function onCreatePairFunction(FunctionContext memory ctx, BancorController$CreatePairFunctionInputs memory inputs, BancorController$CreatePairFunctionOutputs memory outputs) virtual external;

    function triggerOnCreatePairFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xc9c65396),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onCreatePairFunction.selector
        });
    }
}

abstract contract BancorController$PreCreatePairFunction {
    function preCreatePairFunction(PreFunctionContext memory ctx, BancorController$CreatePairFunctionInputs memory inputs) virtual external;

    function triggerPreCreatePairFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xc9c65396),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preCreatePairFunction.selector
        });
    }
}

abstract contract BancorController$OnDeleteStrategyFunction {
    function onDeleteStrategyFunction(FunctionContext memory ctx, BancorController$DeleteStrategyFunctionInputs memory inputs) virtual external;

    function triggerOnDeleteStrategyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x87302037),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDeleteStrategyFunction.selector
        });
    }
}

abstract contract BancorController$PreDeleteStrategyFunction {
    function preDeleteStrategyFunction(PreFunctionContext memory ctx, BancorController$DeleteStrategyFunctionInputs memory inputs) virtual external;

    function triggerPreDeleteStrategyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x87302037),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDeleteStrategyFunction.selector
        });
    }
}

abstract contract BancorController$OnGetRoleAdminFunction {
    function onGetRoleAdminFunction(FunctionContext memory ctx, BancorController$GetRoleAdminFunctionInputs memory inputs, BancorController$GetRoleAdminFunctionOutputs memory outputs) virtual external;

    function triggerOnGetRoleAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x248a9ca3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetRoleAdminFunction.selector
        });
    }
}

abstract contract BancorController$PreGetRoleAdminFunction {
    function preGetRoleAdminFunction(PreFunctionContext memory ctx, BancorController$GetRoleAdminFunctionInputs memory inputs) virtual external;

    function triggerPreGetRoleAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x248a9ca3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetRoleAdminFunction.selector
        });
    }
}

abstract contract BancorController$OnGetRoleMemberFunction {
    function onGetRoleMemberFunction(FunctionContext memory ctx, BancorController$GetRoleMemberFunctionInputs memory inputs, BancorController$GetRoleMemberFunctionOutputs memory outputs) virtual external;

    function triggerOnGetRoleMemberFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x9010d07c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetRoleMemberFunction.selector
        });
    }
}

abstract contract BancorController$PreGetRoleMemberFunction {
    function preGetRoleMemberFunction(PreFunctionContext memory ctx, BancorController$GetRoleMemberFunctionInputs memory inputs) virtual external;

    function triggerPreGetRoleMemberFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x9010d07c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetRoleMemberFunction.selector
        });
    }
}

abstract contract BancorController$OnGetRoleMemberCountFunction {
    function onGetRoleMemberCountFunction(FunctionContext memory ctx, BancorController$GetRoleMemberCountFunctionInputs memory inputs, BancorController$GetRoleMemberCountFunctionOutputs memory outputs) virtual external;

    function triggerOnGetRoleMemberCountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xca15c873),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGetRoleMemberCountFunction.selector
        });
    }
}

abstract contract BancorController$PreGetRoleMemberCountFunction {
    function preGetRoleMemberCountFunction(PreFunctionContext memory ctx, BancorController$GetRoleMemberCountFunctionInputs memory inputs) virtual external;

    function triggerPreGetRoleMemberCountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xca15c873),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGetRoleMemberCountFunction.selector
        });
    }
}

abstract contract BancorController$OnGrantRoleFunction {
    function onGrantRoleFunction(FunctionContext memory ctx, BancorController$GrantRoleFunctionInputs memory inputs) virtual external;

    function triggerOnGrantRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x2f2ff15d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGrantRoleFunction.selector
        });
    }
}

abstract contract BancorController$PreGrantRoleFunction {
    function preGrantRoleFunction(PreFunctionContext memory ctx, BancorController$GrantRoleFunctionInputs memory inputs) virtual external;

    function triggerPreGrantRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x2f2ff15d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGrantRoleFunction.selector
        });
    }
}

abstract contract BancorController$OnHasRoleFunction {
    function onHasRoleFunction(FunctionContext memory ctx, BancorController$HasRoleFunctionInputs memory inputs, BancorController$HasRoleFunctionOutputs memory outputs) virtual external;

    function triggerOnHasRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x91d14854),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onHasRoleFunction.selector
        });
    }
}

abstract contract BancorController$PreHasRoleFunction {
    function preHasRoleFunction(PreFunctionContext memory ctx, BancorController$HasRoleFunctionInputs memory inputs) virtual external;

    function triggerPreHasRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x91d14854),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preHasRoleFunction.selector
        });
    }
}

abstract contract BancorController$OnInitializeFunction {
    function onInitializeFunction(FunctionContext memory ctx) virtual external;

    function triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x8129fc1c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onInitializeFunction.selector
        });
    }
}

abstract contract BancorController$PreInitializeFunction {
    function preInitializeFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x8129fc1c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preInitializeFunction.selector
        });
    }
}

abstract contract BancorController$OnPairFunction {
    function onPairFunction(FunctionContext memory ctx, BancorController$PairFunctionInputs memory inputs, BancorController$PairFunctionOutputs memory outputs) virtual external;

    function triggerOnPairFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x8672d545),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPairFunction.selector
        });
    }
}

abstract contract BancorController$PrePairFunction {
    function prePairFunction(PreFunctionContext memory ctx, BancorController$PairFunctionInputs memory inputs) virtual external;

    function triggerPrePairFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x8672d545),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePairFunction.selector
        });
    }
}

abstract contract BancorController$OnPairTradingFeePpmFunction {
    function onPairTradingFeePpmFunction(FunctionContext memory ctx, BancorController$PairTradingFeePpmFunctionInputs memory inputs, BancorController$PairTradingFeePpmFunctionOutputs memory outputs) virtual external;

    function triggerOnPairTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xba0a868b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPairTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$PrePairTradingFeePpmFunction {
    function prePairTradingFeePpmFunction(PreFunctionContext memory ctx, BancorController$PairTradingFeePpmFunctionInputs memory inputs) virtual external;

    function triggerPrePairTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xba0a868b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePairTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$OnPairsFunction {
    function onPairsFunction(FunctionContext memory ctx, BancorController$PairsFunctionOutputs memory outputs) virtual external;

    function triggerOnPairsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xffb0a4a0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPairsFunction.selector
        });
    }
}

abstract contract BancorController$PrePairsFunction {
    function prePairsFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPrePairsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xffb0a4a0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePairsFunction.selector
        });
    }
}

abstract contract BancorController$OnPostUpgradeFunction {
    function onPostUpgradeFunction(FunctionContext memory ctx, BancorController$PostUpgradeFunctionInputs memory inputs) virtual external;

    function triggerOnPostUpgradeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x8cd2403d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onPostUpgradeFunction.selector
        });
    }
}

abstract contract BancorController$PrePostUpgradeFunction {
    function prePostUpgradeFunction(PreFunctionContext memory ctx, BancorController$PostUpgradeFunctionInputs memory inputs) virtual external;

    function triggerPrePostUpgradeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x8cd2403d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.prePostUpgradeFunction.selector
        });
    }
}

abstract contract BancorController$OnRenounceRoleFunction {
    function onRenounceRoleFunction(FunctionContext memory ctx, BancorController$RenounceRoleFunctionInputs memory inputs) virtual external;

    function triggerOnRenounceRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x36568abe),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRenounceRoleFunction.selector
        });
    }
}

abstract contract BancorController$PreRenounceRoleFunction {
    function preRenounceRoleFunction(PreFunctionContext memory ctx, BancorController$RenounceRoleFunctionInputs memory inputs) virtual external;

    function triggerPreRenounceRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x36568abe),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRenounceRoleFunction.selector
        });
    }
}

abstract contract BancorController$OnRevokeRoleFunction {
    function onRevokeRoleFunction(FunctionContext memory ctx, BancorController$RevokeRoleFunctionInputs memory inputs) virtual external;

    function triggerOnRevokeRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xd547741f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRevokeRoleFunction.selector
        });
    }
}

abstract contract BancorController$PreRevokeRoleFunction {
    function preRevokeRoleFunction(PreFunctionContext memory ctx, BancorController$RevokeRoleFunctionInputs memory inputs) virtual external;

    function triggerPreRevokeRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xd547741f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRevokeRoleFunction.selector
        });
    }
}

abstract contract BancorController$OnRoleAdminFunction {
    function onRoleAdminFunction(FunctionContext memory ctx, BancorController$RoleAdminFunctionOutputs memory outputs) virtual external;

    function triggerOnRoleAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x93867fb5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRoleAdminFunction.selector
        });
    }
}

abstract contract BancorController$PreRoleAdminFunction {
    function preRoleAdminFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreRoleAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x93867fb5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRoleAdminFunction.selector
        });
    }
}

abstract contract BancorController$OnRoleFeesManagerFunction {
    function onRoleFeesManagerFunction(FunctionContext memory ctx, BancorController$RoleFeesManagerFunctionOutputs memory outputs) virtual external;

    function triggerOnRoleFeesManagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x2c40de1b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onRoleFeesManagerFunction.selector
        });
    }
}

abstract contract BancorController$PreRoleFeesManagerFunction {
    function preRoleFeesManagerFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreRoleFeesManagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x2c40de1b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preRoleFeesManagerFunction.selector
        });
    }
}

abstract contract BancorController$OnSetPairTradingFeePpmFunction {
    function onSetPairTradingFeePpmFunction(FunctionContext memory ctx, BancorController$SetPairTradingFeePpmFunctionInputs memory inputs) virtual external;

    function triggerOnSetPairTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x55817d1d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetPairTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$PreSetPairTradingFeePpmFunction {
    function preSetPairTradingFeePpmFunction(PreFunctionContext memory ctx, BancorController$SetPairTradingFeePpmFunctionInputs memory inputs) virtual external;

    function triggerPreSetPairTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x55817d1d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetPairTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$OnSetTradingFeePpmFunction {
    function onSetTradingFeePpmFunction(FunctionContext memory ctx, BancorController$SetTradingFeePpmFunctionInputs memory inputs) virtual external;

    function triggerOnSetTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x69a4dea7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSetTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$PreSetTradingFeePpmFunction {
    function preSetTradingFeePpmFunction(PreFunctionContext memory ctx, BancorController$SetTradingFeePpmFunctionInputs memory inputs) virtual external;

    function triggerPreSetTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x69a4dea7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSetTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$OnStrategiesByPairCountFunction {
    function onStrategiesByPairCountFunction(FunctionContext memory ctx, BancorController$StrategiesByPairCountFunctionInputs memory inputs, BancorController$StrategiesByPairCountFunctionOutputs memory outputs) virtual external;

    function triggerOnStrategiesByPairCountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x322cf844),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onStrategiesByPairCountFunction.selector
        });
    }
}

abstract contract BancorController$PreStrategiesByPairCountFunction {
    function preStrategiesByPairCountFunction(PreFunctionContext memory ctx, BancorController$StrategiesByPairCountFunctionInputs memory inputs) virtual external;

    function triggerPreStrategiesByPairCountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x322cf844),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preStrategiesByPairCountFunction.selector
        });
    }
}

abstract contract BancorController$OnSupportsInterfaceFunction {
    function onSupportsInterfaceFunction(FunctionContext memory ctx, BancorController$SupportsInterfaceFunctionInputs memory inputs, BancorController$SupportsInterfaceFunctionOutputs memory outputs) virtual external;

    function triggerOnSupportsInterfaceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x01ffc9a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSupportsInterfaceFunction.selector
        });
    }
}

abstract contract BancorController$PreSupportsInterfaceFunction {
    function preSupportsInterfaceFunction(PreFunctionContext memory ctx, BancorController$SupportsInterfaceFunctionInputs memory inputs) virtual external;

    function triggerPreSupportsInterfaceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x01ffc9a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSupportsInterfaceFunction.selector
        });
    }
}

abstract contract BancorController$OnTradeBySourceAmountFunction {
    function onTradeBySourceAmountFunction(FunctionContext memory ctx, BancorController$TradeBySourceAmountFunctionInputs memory inputs, BancorController$TradeBySourceAmountFunctionOutputs memory outputs) virtual external;

    function triggerOnTradeBySourceAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xf1c5e014),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTradeBySourceAmountFunction.selector
        });
    }
}

abstract contract BancorController$PreTradeBySourceAmountFunction {
    function preTradeBySourceAmountFunction(PreFunctionContext memory ctx, BancorController$TradeBySourceAmountFunctionInputs memory inputs) virtual external;

    function triggerPreTradeBySourceAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xf1c5e014),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTradeBySourceAmountFunction.selector
        });
    }
}

abstract contract BancorController$OnTradeByTargetAmountFunction {
    function onTradeByTargetAmountFunction(FunctionContext memory ctx, BancorController$TradeByTargetAmountFunctionInputs memory inputs, BancorController$TradeByTargetAmountFunctionOutputs memory outputs) virtual external;

    function triggerOnTradeByTargetAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x102ee9ba),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTradeByTargetAmountFunction.selector
        });
    }
}

abstract contract BancorController$PreTradeByTargetAmountFunction {
    function preTradeByTargetAmountFunction(PreFunctionContext memory ctx, BancorController$TradeByTargetAmountFunctionInputs memory inputs) virtual external;

    function triggerPreTradeByTargetAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x102ee9ba),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTradeByTargetAmountFunction.selector
        });
    }
}

abstract contract BancorController$OnTradingFeePpmFunction {
    function onTradingFeePpmFunction(FunctionContext memory ctx, BancorController$TradingFeePpmFunctionOutputs memory outputs) virtual external;

    function triggerOnTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xf06f8acd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$PreTradingFeePpmFunction {
    function preTradingFeePpmFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xf06f8acd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$OnVersionFunction {
    function onVersionFunction(FunctionContext memory ctx, BancorController$VersionFunctionOutputs memory outputs) virtual external;

    function triggerOnVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x54fd4d50),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onVersionFunction.selector
        });
    }
}

abstract contract BancorController$PreVersionFunction {
    function preVersionFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x54fd4d50),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preVersionFunction.selector
        });
    }
}

abstract contract BancorController$OnWithdrawFeesFunction {
    function onWithdrawFeesFunction(FunctionContext memory ctx, BancorController$WithdrawFeesFunctionInputs memory inputs, BancorController$WithdrawFeesFunctionOutputs memory outputs) virtual external;

    function triggerOnWithdrawFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x9ba372c2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onWithdrawFeesFunction.selector
        });
    }
}

abstract contract BancorController$PreWithdrawFeesFunction {
    function preWithdrawFeesFunction(PreFunctionContext memory ctx, BancorController$WithdrawFeesFunctionInputs memory inputs) virtual external;

    function triggerPreWithdrawFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x9ba372c2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preWithdrawFeesFunction.selector
        });
    }
}

contract BancorController$EmitAllEvents is
  BancorController$OnFeesWithdrawnEvent,
BancorController$OnInitializedEvent,
BancorController$OnPairCreatedEvent,
BancorController$OnPairTradingFeePpmUpdatedEvent,
BancorController$OnRoleAdminChangedEvent,
BancorController$OnRoleGrantedEvent,
BancorController$OnRoleRevokedEvent,
BancorController$OnStrategyCreatedEvent,
BancorController$OnStrategyDeletedEvent,
BancorController$OnStrategyUpdatedEvent,
BancorController$OnTokensTradedEvent,
BancorController$OnTradingFeePpmUpdatedEvent
{
  event FeesWithdrawn(address token, address recipient, uint256 amount, address sender);
event Initialized(uint8 version);
event PairCreated(uint128 pairId, address token0, address token1);
event PairTradingFeePpmUpdated(address token0, address token1, uint32 prevFeePPM, uint32 newFeePPM);
event RoleAdminChanged(bytes32 role, bytes32 previousAdminRole, bytes32 newAdminRole);
event RoleGranted(bytes32 role, address account, address sender);
event RoleRevoked(bytes32 role, address account, address sender);
event StrategyCreated(uint256 id, address owner, address token0, address token1, BancorController$Order order0, BancorController$Order order1);
event StrategyDeleted(uint256 id, address owner, address token0, address token1, BancorController$Order order0, BancorController$Order order1);
event StrategyUpdated(uint256 id, address token0, address token1, BancorController$Order order0, BancorController$Order order1, uint8 reason);
event TokensTraded(address trader, address sourceToken, address targetToken, uint256 sourceAmount, uint256 targetAmount, uint128 tradingFeeAmount, bool byTargetAmount);
event TradingFeePpmUpdated(uint32 prevFeePPM, uint32 newFeePPM);

  function onFeesWithdrawnEvent(EventContext memory ctx, BancorController$FeesWithdrawnEventParams memory inputs) virtual external override {
    emit FeesWithdrawn(inputs.token, inputs.recipient, inputs.amount, inputs.sender);
  }
function onInitializedEvent(EventContext memory ctx, BancorController$InitializedEventParams memory inputs) virtual external override {
    emit Initialized(inputs.version);
  }
function onPairCreatedEvent(EventContext memory ctx, BancorController$PairCreatedEventParams memory inputs) virtual external override {
    emit PairCreated(inputs.pairId, inputs.token0, inputs.token1);
  }
function onPairTradingFeePpmUpdatedEvent(EventContext memory ctx, BancorController$PairTradingFeePpmUpdatedEventParams memory inputs) virtual external override {
    emit PairTradingFeePpmUpdated(inputs.token0, inputs.token1, inputs.prevFeePPM, inputs.newFeePPM);
  }
function onRoleAdminChangedEvent(EventContext memory ctx, BancorController$RoleAdminChangedEventParams memory inputs) virtual external override {
    emit RoleAdminChanged(inputs.role, inputs.previousAdminRole, inputs.newAdminRole);
  }
function onRoleGrantedEvent(EventContext memory ctx, BancorController$RoleGrantedEventParams memory inputs) virtual external override {
    emit RoleGranted(inputs.role, inputs.account, inputs.sender);
  }
function onRoleRevokedEvent(EventContext memory ctx, BancorController$RoleRevokedEventParams memory inputs) virtual external override {
    emit RoleRevoked(inputs.role, inputs.account, inputs.sender);
  }
function onStrategyCreatedEvent(EventContext memory ctx, BancorController$StrategyCreatedEventParams memory inputs) virtual external override {
    emit StrategyCreated(inputs.id, inputs.owner, inputs.token0, inputs.token1, inputs.order0, inputs.order1);
  }
function onStrategyDeletedEvent(EventContext memory ctx, BancorController$StrategyDeletedEventParams memory inputs) virtual external override {
    emit StrategyDeleted(inputs.id, inputs.owner, inputs.token0, inputs.token1, inputs.order0, inputs.order1);
  }
function onStrategyUpdatedEvent(EventContext memory ctx, BancorController$StrategyUpdatedEventParams memory inputs) virtual external override {
    emit StrategyUpdated(inputs.id, inputs.token0, inputs.token1, inputs.order0, inputs.order1, inputs.reason);
  }
function onTokensTradedEvent(EventContext memory ctx, BancorController$TokensTradedEventParams memory inputs) virtual external override {
    emit TokensTraded(inputs.trader, inputs.sourceToken, inputs.targetToken, inputs.sourceAmount, inputs.targetAmount, inputs.tradingFeeAmount, inputs.byTargetAmount);
  }
function onTradingFeePpmUpdatedEvent(EventContext memory ctx, BancorController$TradingFeePpmUpdatedEventParams memory inputs) virtual external override {
    emit TradingFeePpmUpdated(inputs.prevFeePPM, inputs.newFeePPM);
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](12);
    triggers[0] = this.triggerOnFeesWithdrawnEvent();
    triggers[1] = this.triggerOnInitializedEvent();
    triggers[2] = this.triggerOnPairCreatedEvent();
    triggers[3] = this.triggerOnPairTradingFeePpmUpdatedEvent();
    triggers[4] = this.triggerOnRoleAdminChangedEvent();
    triggers[5] = this.triggerOnRoleGrantedEvent();
    triggers[6] = this.triggerOnRoleRevokedEvent();
    triggers[7] = this.triggerOnStrategyCreatedEvent();
    triggers[8] = this.triggerOnStrategyDeletedEvent();
    triggers[9] = this.triggerOnStrategyUpdatedEvent();
    triggers[10] = this.triggerOnTokensTradedEvent();
    triggers[11] = this.triggerOnTradingFeePpmUpdatedEvent();
    return triggers;
  }
}