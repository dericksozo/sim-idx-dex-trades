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
    function BancorController$onFeesWithdrawnEvent(EventContext memory ctx, BancorController$FeesWithdrawnEventParams memory inputs) virtual external;

    function BancorController$triggerOnFeesWithdrawnEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x2f4e8fcae66f01952d258445c03f43cf56d3ce389e017ecd2afa8a79e7717588),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onFeesWithdrawnEvent.selector
        });
    }
}

abstract contract BancorController$OnInitializedEvent {
    function BancorController$onInitializedEvent(EventContext memory ctx, BancorController$InitializedEventParams memory inputs) virtual external;

    function BancorController$triggerOnInitializedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x7f26b83ff96e1f2b6a682f133852f6798a09c465da95921460cefb3847402498),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onInitializedEvent.selector
        });
    }
}

abstract contract BancorController$OnPairCreatedEvent {
    function BancorController$onPairCreatedEvent(EventContext memory ctx, BancorController$PairCreatedEventParams memory inputs) virtual external;

    function BancorController$triggerOnPairCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x6365c594f5448f79c1cc1e6f661bdbf1d16f2e8f85747e13f8e80f1fd168b7c3),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onPairCreatedEvent.selector
        });
    }
}

abstract contract BancorController$OnPairTradingFeePpmUpdatedEvent {
    function BancorController$onPairTradingFeePpmUpdatedEvent(EventContext memory ctx, BancorController$PairTradingFeePpmUpdatedEventParams memory inputs) virtual external;

    function BancorController$triggerOnPairTradingFeePpmUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x831434d05f3ad5f63be733ea463b2933c70d2162697fd200a22b5d56f5c454b6),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onPairTradingFeePpmUpdatedEvent.selector
        });
    }
}

abstract contract BancorController$OnRoleAdminChangedEvent {
    function BancorController$onRoleAdminChangedEvent(EventContext memory ctx, BancorController$RoleAdminChangedEventParams memory inputs) virtual external;

    function BancorController$triggerOnRoleAdminChangedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0xbd79b86ffe0ab8e8776151514217cd7cacd52c909f66475c3af44e129f0b00ff),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onRoleAdminChangedEvent.selector
        });
    }
}

abstract contract BancorController$OnRoleGrantedEvent {
    function BancorController$onRoleGrantedEvent(EventContext memory ctx, BancorController$RoleGrantedEventParams memory inputs) virtual external;

    function BancorController$triggerOnRoleGrantedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x2f8788117e7eff1d82e926ec794901d17c78024a50270940304540a733656f0d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onRoleGrantedEvent.selector
        });
    }
}

abstract contract BancorController$OnRoleRevokedEvent {
    function BancorController$onRoleRevokedEvent(EventContext memory ctx, BancorController$RoleRevokedEventParams memory inputs) virtual external;

    function BancorController$triggerOnRoleRevokedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0xf6391f5c32d9c69d2a47ea670b442974b53935d1edc7fd64eb21e047a839171b),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onRoleRevokedEvent.selector
        });
    }
}

abstract contract BancorController$OnStrategyCreatedEvent {
    function BancorController$onStrategyCreatedEvent(EventContext memory ctx, BancorController$StrategyCreatedEventParams memory inputs) virtual external;

    function BancorController$triggerOnStrategyCreatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0xff24554f8ccfe540435cfc8854831f8dcf1cf2068708cfaf46e8b52a4ccc4c8d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onStrategyCreatedEvent.selector
        });
    }
}

abstract contract BancorController$OnStrategyDeletedEvent {
    function BancorController$onStrategyDeletedEvent(EventContext memory ctx, BancorController$StrategyDeletedEventParams memory inputs) virtual external;

    function BancorController$triggerOnStrategyDeletedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x4d5b6e0627ea711d8e9312b6ba56f50e0b51d41816fd6fd38643495ac81d38b6),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onStrategyDeletedEvent.selector
        });
    }
}

abstract contract BancorController$OnStrategyUpdatedEvent {
    function BancorController$onStrategyUpdatedEvent(EventContext memory ctx, BancorController$StrategyUpdatedEventParams memory inputs) virtual external;

    function BancorController$triggerOnStrategyUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x720da23a5c920b1d8827ec83c4d3c4d90d9419eadb0036b88cb4c2ffa91aef7d),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onStrategyUpdatedEvent.selector
        });
    }
}

abstract contract BancorController$OnTokensTradedEvent {
    function BancorController$onTokensTradedEvent(EventContext memory ctx, BancorController$TokensTradedEventParams memory inputs) virtual external;

    function BancorController$triggerOnTokensTradedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x95f3b01351225fea0e69a46f68b164c9dea10284f12cd4a907ce66510ab7af6a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onTokensTradedEvent.selector
        });
    }
}

abstract contract BancorController$OnTradingFeePpmUpdatedEvent {
    function BancorController$onTradingFeePpmUpdatedEvent(EventContext memory ctx, BancorController$TradingFeePpmUpdatedEventParams memory inputs) virtual external;

    function BancorController$triggerOnTradingFeePpmUpdatedEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes32(0x66db0986e1156e2e747795714bf0301c7e1c695c149a738cb01bcf5cfead8465),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onTradingFeePpmUpdatedEvent.selector
        });
    }
}

abstract contract BancorController$OnDefaultAdminRoleFunction {
    function BancorController$onDefaultAdminRoleFunction(FunctionContext memory ctx, BancorController$DefaultAdminRoleFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnDefaultAdminRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xa217fddf),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onDefaultAdminRoleFunction.selector
        });
    }
}

abstract contract BancorController$PreDefaultAdminRoleFunction {
    function BancorController$preDefaultAdminRoleFunction(PreFunctionContext memory ctx) virtual external;

    function BancorController$triggerPreDefaultAdminRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xa217fddf),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preDefaultAdminRoleFunction.selector
        });
    }
}

abstract contract BancorController$OnAccumulatedFeesFunction {
    function BancorController$onAccumulatedFeesFunction(FunctionContext memory ctx, BancorController$AccumulatedFeesFunctionInputs memory inputs, BancorController$AccumulatedFeesFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnAccumulatedFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xfcf66664),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onAccumulatedFeesFunction.selector
        });
    }
}

abstract contract BancorController$PreAccumulatedFeesFunction {
    function BancorController$preAccumulatedFeesFunction(PreFunctionContext memory ctx, BancorController$AccumulatedFeesFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreAccumulatedFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xfcf66664),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preAccumulatedFeesFunction.selector
        });
    }
}

abstract contract BancorController$OnCalculateTradeSourceAmountFunction {
    function BancorController$onCalculateTradeSourceAmountFunction(FunctionContext memory ctx, BancorController$CalculateTradeSourceAmountFunctionInputs memory inputs, BancorController$CalculateTradeSourceAmountFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnCalculateTradeSourceAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xf2bda26d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onCalculateTradeSourceAmountFunction.selector
        });
    }
}

abstract contract BancorController$PreCalculateTradeSourceAmountFunction {
    function BancorController$preCalculateTradeSourceAmountFunction(PreFunctionContext memory ctx, BancorController$CalculateTradeSourceAmountFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreCalculateTradeSourceAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xf2bda26d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preCalculateTradeSourceAmountFunction.selector
        });
    }
}

abstract contract BancorController$OnCalculateTradeTargetAmountFunction {
    function BancorController$onCalculateTradeTargetAmountFunction(FunctionContext memory ctx, BancorController$CalculateTradeTargetAmountFunctionInputs memory inputs, BancorController$CalculateTradeTargetAmountFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnCalculateTradeTargetAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x2ab2fad1),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onCalculateTradeTargetAmountFunction.selector
        });
    }
}

abstract contract BancorController$PreCalculateTradeTargetAmountFunction {
    function BancorController$preCalculateTradeTargetAmountFunction(PreFunctionContext memory ctx, BancorController$CalculateTradeTargetAmountFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreCalculateTradeTargetAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x2ab2fad1),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preCalculateTradeTargetAmountFunction.selector
        });
    }
}

abstract contract BancorController$OnControllerTypeFunction {
    function BancorController$onControllerTypeFunction(FunctionContext memory ctx, BancorController$ControllerTypeFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnControllerTypeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xb76040cd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onControllerTypeFunction.selector
        });
    }
}

abstract contract BancorController$PreControllerTypeFunction {
    function BancorController$preControllerTypeFunction(PreFunctionContext memory ctx) virtual external;

    function BancorController$triggerPreControllerTypeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xb76040cd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preControllerTypeFunction.selector
        });
    }
}

abstract contract BancorController$OnCreatePairFunction {
    function BancorController$onCreatePairFunction(FunctionContext memory ctx, BancorController$CreatePairFunctionInputs memory inputs, BancorController$CreatePairFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnCreatePairFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xc9c65396),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onCreatePairFunction.selector
        });
    }
}

abstract contract BancorController$PreCreatePairFunction {
    function BancorController$preCreatePairFunction(PreFunctionContext memory ctx, BancorController$CreatePairFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreCreatePairFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xc9c65396),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preCreatePairFunction.selector
        });
    }
}

abstract contract BancorController$OnDeleteStrategyFunction {
    function BancorController$onDeleteStrategyFunction(FunctionContext memory ctx, BancorController$DeleteStrategyFunctionInputs memory inputs) virtual external;

    function BancorController$triggerOnDeleteStrategyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x87302037),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onDeleteStrategyFunction.selector
        });
    }
}

abstract contract BancorController$PreDeleteStrategyFunction {
    function BancorController$preDeleteStrategyFunction(PreFunctionContext memory ctx, BancorController$DeleteStrategyFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreDeleteStrategyFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x87302037),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preDeleteStrategyFunction.selector
        });
    }
}

abstract contract BancorController$OnGetRoleAdminFunction {
    function BancorController$onGetRoleAdminFunction(FunctionContext memory ctx, BancorController$GetRoleAdminFunctionInputs memory inputs, BancorController$GetRoleAdminFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnGetRoleAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x248a9ca3),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onGetRoleAdminFunction.selector
        });
    }
}

abstract contract BancorController$PreGetRoleAdminFunction {
    function BancorController$preGetRoleAdminFunction(PreFunctionContext memory ctx, BancorController$GetRoleAdminFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreGetRoleAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x248a9ca3),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preGetRoleAdminFunction.selector
        });
    }
}

abstract contract BancorController$OnGetRoleMemberFunction {
    function BancorController$onGetRoleMemberFunction(FunctionContext memory ctx, BancorController$GetRoleMemberFunctionInputs memory inputs, BancorController$GetRoleMemberFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnGetRoleMemberFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x9010d07c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onGetRoleMemberFunction.selector
        });
    }
}

abstract contract BancorController$PreGetRoleMemberFunction {
    function BancorController$preGetRoleMemberFunction(PreFunctionContext memory ctx, BancorController$GetRoleMemberFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreGetRoleMemberFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x9010d07c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preGetRoleMemberFunction.selector
        });
    }
}

abstract contract BancorController$OnGetRoleMemberCountFunction {
    function BancorController$onGetRoleMemberCountFunction(FunctionContext memory ctx, BancorController$GetRoleMemberCountFunctionInputs memory inputs, BancorController$GetRoleMemberCountFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnGetRoleMemberCountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xca15c873),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onGetRoleMemberCountFunction.selector
        });
    }
}

abstract contract BancorController$PreGetRoleMemberCountFunction {
    function BancorController$preGetRoleMemberCountFunction(PreFunctionContext memory ctx, BancorController$GetRoleMemberCountFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreGetRoleMemberCountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xca15c873),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preGetRoleMemberCountFunction.selector
        });
    }
}

abstract contract BancorController$OnGrantRoleFunction {
    function BancorController$onGrantRoleFunction(FunctionContext memory ctx, BancorController$GrantRoleFunctionInputs memory inputs) virtual external;

    function BancorController$triggerOnGrantRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x2f2ff15d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onGrantRoleFunction.selector
        });
    }
}

abstract contract BancorController$PreGrantRoleFunction {
    function BancorController$preGrantRoleFunction(PreFunctionContext memory ctx, BancorController$GrantRoleFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreGrantRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x2f2ff15d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preGrantRoleFunction.selector
        });
    }
}

abstract contract BancorController$OnHasRoleFunction {
    function BancorController$onHasRoleFunction(FunctionContext memory ctx, BancorController$HasRoleFunctionInputs memory inputs, BancorController$HasRoleFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnHasRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x91d14854),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onHasRoleFunction.selector
        });
    }
}

abstract contract BancorController$PreHasRoleFunction {
    function BancorController$preHasRoleFunction(PreFunctionContext memory ctx, BancorController$HasRoleFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreHasRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x91d14854),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preHasRoleFunction.selector
        });
    }
}

abstract contract BancorController$OnInitializeFunction {
    function BancorController$onInitializeFunction(FunctionContext memory ctx) virtual external;

    function BancorController$triggerOnInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x8129fc1c),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onInitializeFunction.selector
        });
    }
}

abstract contract BancorController$PreInitializeFunction {
    function BancorController$preInitializeFunction(PreFunctionContext memory ctx) virtual external;

    function BancorController$triggerPreInitializeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x8129fc1c),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preInitializeFunction.selector
        });
    }
}

abstract contract BancorController$OnPairFunction {
    function BancorController$onPairFunction(FunctionContext memory ctx, BancorController$PairFunctionInputs memory inputs, BancorController$PairFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnPairFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x8672d545),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onPairFunction.selector
        });
    }
}

abstract contract BancorController$PrePairFunction {
    function BancorController$prePairFunction(PreFunctionContext memory ctx, BancorController$PairFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPrePairFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x8672d545),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$prePairFunction.selector
        });
    }
}

abstract contract BancorController$OnPairTradingFeePpmFunction {
    function BancorController$onPairTradingFeePpmFunction(FunctionContext memory ctx, BancorController$PairTradingFeePpmFunctionInputs memory inputs, BancorController$PairTradingFeePpmFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnPairTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xba0a868b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onPairTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$PrePairTradingFeePpmFunction {
    function BancorController$prePairTradingFeePpmFunction(PreFunctionContext memory ctx, BancorController$PairTradingFeePpmFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPrePairTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xba0a868b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$prePairTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$OnPairsFunction {
    function BancorController$onPairsFunction(FunctionContext memory ctx, BancorController$PairsFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnPairsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xffb0a4a0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onPairsFunction.selector
        });
    }
}

abstract contract BancorController$PrePairsFunction {
    function BancorController$prePairsFunction(PreFunctionContext memory ctx) virtual external;

    function BancorController$triggerPrePairsFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xffb0a4a0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$prePairsFunction.selector
        });
    }
}

abstract contract BancorController$OnPostUpgradeFunction {
    function BancorController$onPostUpgradeFunction(FunctionContext memory ctx, BancorController$PostUpgradeFunctionInputs memory inputs) virtual external;

    function BancorController$triggerOnPostUpgradeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x8cd2403d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onPostUpgradeFunction.selector
        });
    }
}

abstract contract BancorController$PrePostUpgradeFunction {
    function BancorController$prePostUpgradeFunction(PreFunctionContext memory ctx, BancorController$PostUpgradeFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPrePostUpgradeFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x8cd2403d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$prePostUpgradeFunction.selector
        });
    }
}

abstract contract BancorController$OnRenounceRoleFunction {
    function BancorController$onRenounceRoleFunction(FunctionContext memory ctx, BancorController$RenounceRoleFunctionInputs memory inputs) virtual external;

    function BancorController$triggerOnRenounceRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x36568abe),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onRenounceRoleFunction.selector
        });
    }
}

abstract contract BancorController$PreRenounceRoleFunction {
    function BancorController$preRenounceRoleFunction(PreFunctionContext memory ctx, BancorController$RenounceRoleFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreRenounceRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x36568abe),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preRenounceRoleFunction.selector
        });
    }
}

abstract contract BancorController$OnRevokeRoleFunction {
    function BancorController$onRevokeRoleFunction(FunctionContext memory ctx, BancorController$RevokeRoleFunctionInputs memory inputs) virtual external;

    function BancorController$triggerOnRevokeRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xd547741f),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onRevokeRoleFunction.selector
        });
    }
}

abstract contract BancorController$PreRevokeRoleFunction {
    function BancorController$preRevokeRoleFunction(PreFunctionContext memory ctx, BancorController$RevokeRoleFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreRevokeRoleFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xd547741f),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preRevokeRoleFunction.selector
        });
    }
}

abstract contract BancorController$OnRoleAdminFunction {
    function BancorController$onRoleAdminFunction(FunctionContext memory ctx, BancorController$RoleAdminFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnRoleAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x93867fb5),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onRoleAdminFunction.selector
        });
    }
}

abstract contract BancorController$PreRoleAdminFunction {
    function BancorController$preRoleAdminFunction(PreFunctionContext memory ctx) virtual external;

    function BancorController$triggerPreRoleAdminFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x93867fb5),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preRoleAdminFunction.selector
        });
    }
}

abstract contract BancorController$OnRoleFeesManagerFunction {
    function BancorController$onRoleFeesManagerFunction(FunctionContext memory ctx, BancorController$RoleFeesManagerFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnRoleFeesManagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x2c40de1b),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onRoleFeesManagerFunction.selector
        });
    }
}

abstract contract BancorController$PreRoleFeesManagerFunction {
    function BancorController$preRoleFeesManagerFunction(PreFunctionContext memory ctx) virtual external;

    function BancorController$triggerPreRoleFeesManagerFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x2c40de1b),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preRoleFeesManagerFunction.selector
        });
    }
}

abstract contract BancorController$OnSetPairTradingFeePpmFunction {
    function BancorController$onSetPairTradingFeePpmFunction(FunctionContext memory ctx, BancorController$SetPairTradingFeePpmFunctionInputs memory inputs) virtual external;

    function BancorController$triggerOnSetPairTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x55817d1d),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onSetPairTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$PreSetPairTradingFeePpmFunction {
    function BancorController$preSetPairTradingFeePpmFunction(PreFunctionContext memory ctx, BancorController$SetPairTradingFeePpmFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreSetPairTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x55817d1d),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preSetPairTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$OnSetTradingFeePpmFunction {
    function BancorController$onSetTradingFeePpmFunction(FunctionContext memory ctx, BancorController$SetTradingFeePpmFunctionInputs memory inputs) virtual external;

    function BancorController$triggerOnSetTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x69a4dea7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onSetTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$PreSetTradingFeePpmFunction {
    function BancorController$preSetTradingFeePpmFunction(PreFunctionContext memory ctx, BancorController$SetTradingFeePpmFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreSetTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x69a4dea7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preSetTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$OnStrategiesByPairCountFunction {
    function BancorController$onStrategiesByPairCountFunction(FunctionContext memory ctx, BancorController$StrategiesByPairCountFunctionInputs memory inputs, BancorController$StrategiesByPairCountFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnStrategiesByPairCountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x322cf844),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onStrategiesByPairCountFunction.selector
        });
    }
}

abstract contract BancorController$PreStrategiesByPairCountFunction {
    function BancorController$preStrategiesByPairCountFunction(PreFunctionContext memory ctx, BancorController$StrategiesByPairCountFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreStrategiesByPairCountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x322cf844),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preStrategiesByPairCountFunction.selector
        });
    }
}

abstract contract BancorController$OnSupportsInterfaceFunction {
    function BancorController$onSupportsInterfaceFunction(FunctionContext memory ctx, BancorController$SupportsInterfaceFunctionInputs memory inputs, BancorController$SupportsInterfaceFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnSupportsInterfaceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x01ffc9a7),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onSupportsInterfaceFunction.selector
        });
    }
}

abstract contract BancorController$PreSupportsInterfaceFunction {
    function BancorController$preSupportsInterfaceFunction(PreFunctionContext memory ctx, BancorController$SupportsInterfaceFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreSupportsInterfaceFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x01ffc9a7),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preSupportsInterfaceFunction.selector
        });
    }
}

abstract contract BancorController$OnTradeBySourceAmountFunction {
    function BancorController$onTradeBySourceAmountFunction(FunctionContext memory ctx, BancorController$TradeBySourceAmountFunctionInputs memory inputs, BancorController$TradeBySourceAmountFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnTradeBySourceAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xf1c5e014),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onTradeBySourceAmountFunction.selector
        });
    }
}

abstract contract BancorController$PreTradeBySourceAmountFunction {
    function BancorController$preTradeBySourceAmountFunction(PreFunctionContext memory ctx, BancorController$TradeBySourceAmountFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreTradeBySourceAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xf1c5e014),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preTradeBySourceAmountFunction.selector
        });
    }
}

abstract contract BancorController$OnTradeByTargetAmountFunction {
    function BancorController$onTradeByTargetAmountFunction(FunctionContext memory ctx, BancorController$TradeByTargetAmountFunctionInputs memory inputs, BancorController$TradeByTargetAmountFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnTradeByTargetAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x102ee9ba),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onTradeByTargetAmountFunction.selector
        });
    }
}

abstract contract BancorController$PreTradeByTargetAmountFunction {
    function BancorController$preTradeByTargetAmountFunction(PreFunctionContext memory ctx, BancorController$TradeByTargetAmountFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreTradeByTargetAmountFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x102ee9ba),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preTradeByTargetAmountFunction.selector
        });
    }
}

abstract contract BancorController$OnTradingFeePpmFunction {
    function BancorController$onTradingFeePpmFunction(FunctionContext memory ctx, BancorController$TradingFeePpmFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xf06f8acd),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$PreTradingFeePpmFunction {
    function BancorController$preTradingFeePpmFunction(PreFunctionContext memory ctx) virtual external;

    function BancorController$triggerPreTradingFeePpmFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0xf06f8acd),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preTradingFeePpmFunction.selector
        });
    }
}

abstract contract BancorController$OnVersionFunction {
    function BancorController$onVersionFunction(FunctionContext memory ctx, BancorController$VersionFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x54fd4d50),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onVersionFunction.selector
        });
    }
}

abstract contract BancorController$PreVersionFunction {
    function BancorController$preVersionFunction(PreFunctionContext memory ctx) virtual external;

    function BancorController$triggerPreVersionFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x54fd4d50),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preVersionFunction.selector
        });
    }
}

abstract contract BancorController$OnWithdrawFeesFunction {
    function BancorController$onWithdrawFeesFunction(FunctionContext memory ctx, BancorController$WithdrawFeesFunctionInputs memory inputs, BancorController$WithdrawFeesFunctionOutputs memory outputs) virtual external;

    function BancorController$triggerOnWithdrawFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x9ba372c2),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$onWithdrawFeesFunction.selector
        });
    }
}

abstract contract BancorController$PreWithdrawFeesFunction {
    function BancorController$preWithdrawFeesFunction(PreFunctionContext memory ctx, BancorController$WithdrawFeesFunctionInputs memory inputs) virtual external;

    function BancorController$triggerPreWithdrawFeesFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "BancorController",
            selector: bytes4(0x9ba372c2),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.BancorController$preWithdrawFeesFunction.selector
        });
    }
}


struct BancorController$EmitAllEvents$FeesWithdrawn {
  address token;
  address recipient;
  uint256 amount;
  address sender;
}

struct BancorController$EmitAllEvents$Initialized {
  uint8 version;
}

struct BancorController$EmitAllEvents$PairCreated {
  uint128 pairId;
  address token0;
  address token1;
}

struct BancorController$EmitAllEvents$PairTradingFeePpmUpdated {
  address token0;
  address token1;
  uint32 prevFeePPM;
  uint32 newFeePPM;
}

struct BancorController$EmitAllEvents$RoleAdminChanged {
  bytes32 role;
  bytes32 previousAdminRole;
  bytes32 newAdminRole;
}

struct BancorController$EmitAllEvents$RoleGranted {
  bytes32 role;
  address account;
  address sender;
}

struct BancorController$EmitAllEvents$RoleRevoked {
  bytes32 role;
  address account;
  address sender;
}

struct BancorController$EmitAllEvents$StrategyCreated {
  uint256 id;
  address owner;
  address token0;
  address token1;
  BancorController$Order order0;
  BancorController$Order order1;
}

struct BancorController$EmitAllEvents$StrategyDeleted {
  uint256 id;
  address owner;
  address token0;
  address token1;
  BancorController$Order order0;
  BancorController$Order order1;
}

struct BancorController$EmitAllEvents$StrategyUpdated {
  uint256 id;
  address token0;
  address token1;
  BancorController$Order order0;
  BancorController$Order order1;
  uint8 reason;
}

struct BancorController$EmitAllEvents$TokensTraded {
  address trader;
  address sourceToken;
  address targetToken;
  uint256 sourceAmount;
  uint256 targetAmount;
  uint128 tradingFeeAmount;
  bool byTargetAmount;
}

struct BancorController$EmitAllEvents$TradingFeePpmUpdated {
  uint32 prevFeePPM;
  uint32 newFeePPM;
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
  event FeesWithdrawn(BancorController$EmitAllEvents$FeesWithdrawn);
  event Initialized(BancorController$EmitAllEvents$Initialized);
  event PairCreated(BancorController$EmitAllEvents$PairCreated);
  event PairTradingFeePpmUpdated(BancorController$EmitAllEvents$PairTradingFeePpmUpdated);
  event RoleAdminChanged(BancorController$EmitAllEvents$RoleAdminChanged);
  event RoleGranted(BancorController$EmitAllEvents$RoleGranted);
  event RoleRevoked(BancorController$EmitAllEvents$RoleRevoked);
  event StrategyCreated(BancorController$EmitAllEvents$StrategyCreated);
  event StrategyDeleted(BancorController$EmitAllEvents$StrategyDeleted);
  event StrategyUpdated(BancorController$EmitAllEvents$StrategyUpdated);
  event TokensTraded(BancorController$EmitAllEvents$TokensTraded);
  event TradingFeePpmUpdated(BancorController$EmitAllEvents$TradingFeePpmUpdated);

  function BancorController$onFeesWithdrawnEvent(EventContext memory ctx, BancorController$FeesWithdrawnEventParams memory inputs) virtual external override {
    emit FeesWithdrawn(BancorController$EmitAllEvents$FeesWithdrawn(inputs.token, inputs.recipient, inputs.amount, inputs.sender));
  }
function BancorController$onInitializedEvent(EventContext memory ctx, BancorController$InitializedEventParams memory inputs) virtual external override {
    emit Initialized(BancorController$EmitAllEvents$Initialized(inputs.version));
  }
function BancorController$onPairCreatedEvent(EventContext memory ctx, BancorController$PairCreatedEventParams memory inputs) virtual external override {
    emit PairCreated(BancorController$EmitAllEvents$PairCreated(inputs.pairId, inputs.token0, inputs.token1));
  }
function BancorController$onPairTradingFeePpmUpdatedEvent(EventContext memory ctx, BancorController$PairTradingFeePpmUpdatedEventParams memory inputs) virtual external override {
    emit PairTradingFeePpmUpdated(BancorController$EmitAllEvents$PairTradingFeePpmUpdated(inputs.token0, inputs.token1, inputs.prevFeePPM, inputs.newFeePPM));
  }
function BancorController$onRoleAdminChangedEvent(EventContext memory ctx, BancorController$RoleAdminChangedEventParams memory inputs) virtual external override {
    emit RoleAdminChanged(BancorController$EmitAllEvents$RoleAdminChanged(inputs.role, inputs.previousAdminRole, inputs.newAdminRole));
  }
function BancorController$onRoleGrantedEvent(EventContext memory ctx, BancorController$RoleGrantedEventParams memory inputs) virtual external override {
    emit RoleGranted(BancorController$EmitAllEvents$RoleGranted(inputs.role, inputs.account, inputs.sender));
  }
function BancorController$onRoleRevokedEvent(EventContext memory ctx, BancorController$RoleRevokedEventParams memory inputs) virtual external override {
    emit RoleRevoked(BancorController$EmitAllEvents$RoleRevoked(inputs.role, inputs.account, inputs.sender));
  }
function BancorController$onStrategyCreatedEvent(EventContext memory ctx, BancorController$StrategyCreatedEventParams memory inputs) virtual external override {
    emit StrategyCreated(BancorController$EmitAllEvents$StrategyCreated(inputs.id, inputs.owner, inputs.token0, inputs.token1, inputs.order0, inputs.order1));
  }
function BancorController$onStrategyDeletedEvent(EventContext memory ctx, BancorController$StrategyDeletedEventParams memory inputs) virtual external override {
    emit StrategyDeleted(BancorController$EmitAllEvents$StrategyDeleted(inputs.id, inputs.owner, inputs.token0, inputs.token1, inputs.order0, inputs.order1));
  }
function BancorController$onStrategyUpdatedEvent(EventContext memory ctx, BancorController$StrategyUpdatedEventParams memory inputs) virtual external override {
    emit StrategyUpdated(BancorController$EmitAllEvents$StrategyUpdated(inputs.id, inputs.token0, inputs.token1, inputs.order0, inputs.order1, inputs.reason));
  }
function BancorController$onTokensTradedEvent(EventContext memory ctx, BancorController$TokensTradedEventParams memory inputs) virtual external override {
    emit TokensTraded(BancorController$EmitAllEvents$TokensTraded(inputs.trader, inputs.sourceToken, inputs.targetToken, inputs.sourceAmount, inputs.targetAmount, inputs.tradingFeeAmount, inputs.byTargetAmount));
  }
function BancorController$onTradingFeePpmUpdatedEvent(EventContext memory ctx, BancorController$TradingFeePpmUpdatedEventParams memory inputs) virtual external override {
    emit TradingFeePpmUpdated(BancorController$EmitAllEvents$TradingFeePpmUpdated(inputs.prevFeePPM, inputs.newFeePPM));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](12);
    triggers[0] = this.BancorController$triggerOnFeesWithdrawnEvent();
    triggers[1] = this.BancorController$triggerOnInitializedEvent();
    triggers[2] = this.BancorController$triggerOnPairCreatedEvent();
    triggers[3] = this.BancorController$triggerOnPairTradingFeePpmUpdatedEvent();
    triggers[4] = this.BancorController$triggerOnRoleAdminChangedEvent();
    triggers[5] = this.BancorController$triggerOnRoleGrantedEvent();
    triggers[6] = this.BancorController$triggerOnRoleRevokedEvent();
    triggers[7] = this.BancorController$triggerOnStrategyCreatedEvent();
    triggers[8] = this.BancorController$triggerOnStrategyDeletedEvent();
    triggers[9] = this.BancorController$triggerOnStrategyUpdatedEvent();
    triggers[10] = this.BancorController$triggerOnTokensTradedEvent();
    triggers[11] = this.BancorController$triggerOnTradingFeePpmUpdatedEvent();
    return triggers;
  }
}