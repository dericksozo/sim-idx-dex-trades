// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function EventEmitter$Abi() pure returns (Abi memory) {
    return Abi("EventEmitter");
}
struct EventEmitter$EmitDataLog1FunctionInputs {
    bytes32 topic1;
    bytes data;
}

struct EventEmitter$EmitDataLog2FunctionInputs {
    bytes32 topic1;
    bytes32 topic2;
    bytes data;
}

struct EventEmitter$EmitDataLog3FunctionInputs {
    bytes32 topic1;
    bytes32 topic2;
    bytes32 topic3;
    bytes data;
}

struct EventEmitter$EmitDataLog4FunctionInputs {
    bytes32 topic1;
    bytes32 topic2;
    bytes32 topic3;
    bytes32 topic4;
    bytes data;
}

struct EventEmitter$EventUtils$AddressKeyValue {
    string key;
    address value;
}

struct EventEmitter$EventUtils$AddressArrayKeyValue {
    string key;
    address[] value;
}

struct EventEmitter$EventUtils$AddressItems {
    EventEmitter$EventUtils$AddressKeyValue[] items;
    EventEmitter$EventUtils$AddressArrayKeyValue[] arrayItems;
}

struct EventEmitter$EventUtils$UintKeyValue {
    string key;
    uint256 value;
}

struct EventEmitter$EventUtils$UintArrayKeyValue {
    string key;
    uint256[] value;
}

struct EventEmitter$EventUtils$UintItems {
    EventEmitter$EventUtils$UintKeyValue[] items;
    EventEmitter$EventUtils$UintArrayKeyValue[] arrayItems;
}

struct EventEmitter$EventUtils$IntKeyValue {
    string key;
    int256 value;
}

struct EventEmitter$EventUtils$IntArrayKeyValue {
    string key;
    int256[] value;
}

struct EventEmitter$EventUtils$IntItems {
    EventEmitter$EventUtils$IntKeyValue[] items;
    EventEmitter$EventUtils$IntArrayKeyValue[] arrayItems;
}

struct EventEmitter$EventUtils$BoolKeyValue {
    string key;
    bool value;
}

struct EventEmitter$EventUtils$BoolArrayKeyValue {
    string key;
    bool[] value;
}

struct EventEmitter$EventUtils$BoolItems {
    EventEmitter$EventUtils$BoolKeyValue[] items;
    EventEmitter$EventUtils$BoolArrayKeyValue[] arrayItems;
}

struct EventEmitter$EventUtils$Bytes32KeyValue {
    string key;
    bytes32 value;
}

struct EventEmitter$EventUtils$Bytes32ArrayKeyValue {
    string key;
    bytes32[] value;
}

struct EventEmitter$EventUtils$Bytes32Items {
    EventEmitter$EventUtils$Bytes32KeyValue[] items;
    EventEmitter$EventUtils$Bytes32ArrayKeyValue[] arrayItems;
}

struct EventEmitter$EventUtils$BytesKeyValue {
    string key;
    bytes value;
}

struct EventEmitter$EventUtils$BytesArrayKeyValue {
    string key;
    bytes[] value;
}

struct EventEmitter$EventUtils$BytesItems {
    EventEmitter$EventUtils$BytesKeyValue[] items;
    EventEmitter$EventUtils$BytesArrayKeyValue[] arrayItems;
}

struct EventEmitter$EventUtils$StringKeyValue {
    string key;
    string value;
}

struct EventEmitter$EventUtils$StringArrayKeyValue {
    string key;
    string[] value;
}

struct EventEmitter$EventUtils$StringItems {
    EventEmitter$EventUtils$StringKeyValue[] items;
    EventEmitter$EventUtils$StringArrayKeyValue[] arrayItems;
}

struct EventEmitter$EventUtils$EventLogData {
    EventEmitter$EventUtils$AddressItems addressItems;
    EventEmitter$EventUtils$UintItems uintItems;
    EventEmitter$EventUtils$IntItems intItems;
    EventEmitter$EventUtils$BoolItems boolItems;
    EventEmitter$EventUtils$Bytes32Items bytes32Items;
    EventEmitter$EventUtils$BytesItems bytesItems;
    EventEmitter$EventUtils$StringItems stringItems;
}

struct EventEmitter$EmitEventLogFunctionInputs {
    string eventName;
    EventEmitter$EventUtils$EventLogData eventData;
}

struct EventEmitter$EmitEventLog1FunctionInputs {
    string eventName;
    bytes32 topic1;
    EventEmitter$EventUtils$EventLogData eventData;
}

struct EventEmitter$EmitEventLog2FunctionInputs {
    string eventName;
    bytes32 topic1;
    bytes32 topic2;
    EventEmitter$EventUtils$EventLogData eventData;
}

struct EventEmitter$RoleStoreFunctionOutputs {
    address outArg0;
}

struct EventEmitter$EventLogEventParams {
    address msgSender;
    string eventName;
    bytes32 eventNameHash;
    EventEmitter$EventUtils$EventLogData eventData;
}

struct EventEmitter$EventLog1EventParams {
    address msgSender;
    string eventName;
    bytes32 eventNameHash;
    bytes32 topic1;
    EventEmitter$EventUtils$EventLogData eventData;
}

struct EventEmitter$EventLog2EventParams {
    address msgSender;
    string eventName;
    bytes32 eventNameHash;
    bytes32 topic1;
    bytes32 topic2;
    EventEmitter$EventUtils$EventLogData eventData;
}

abstract contract EventEmitter$OnEventLogEvent {
    function EventEmitter$onEventLogEvent(EventContext memory ctx, EventEmitter$EventLogEventParams memory inputs) virtual external;

    function EventEmitter$triggerOnEventLogEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes32(0x7e3bde2ba7aca4a8499608ca57f3b0c1c1c93ace63ffd3741a9fab204146fc9a),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$onEventLogEvent.selector
        });
    }
}

abstract contract EventEmitter$OnEventLog1Event {
    function EventEmitter$onEventLog1Event(EventContext memory ctx, EventEmitter$EventLog1EventParams memory inputs) virtual external;

    function EventEmitter$triggerOnEventLog1Event() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes32(0x137a44067c8961cd7e1d876f4754a5a3a75989b4552f1843fc69c3b372def160),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$onEventLog1Event.selector
        });
    }
}

abstract contract EventEmitter$OnEventLog2Event {
    function EventEmitter$onEventLog2Event(EventContext memory ctx, EventEmitter$EventLog2EventParams memory inputs) virtual external;

    function EventEmitter$triggerOnEventLog2Event() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes32(0x468a25a7ba624ceea6e540ad6f49171b52495b648417ae91bca21676d8a24dc5),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$onEventLog2Event.selector
        });
    }
}

abstract contract EventEmitter$OnEmitDataLog1Function {
    function EventEmitter$onEmitDataLog1Function(FunctionContext memory ctx, EventEmitter$EmitDataLog1FunctionInputs memory inputs) virtual external;

    function EventEmitter$triggerOnEmitDataLog1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0xf9d5c0ea),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$onEmitDataLog1Function.selector
        });
    }
}

abstract contract EventEmitter$PreEmitDataLog1Function {
    function EventEmitter$preEmitDataLog1Function(PreFunctionContext memory ctx, EventEmitter$EmitDataLog1FunctionInputs memory inputs) virtual external;

    function EventEmitter$triggerPreEmitDataLog1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0xf9d5c0ea),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$preEmitDataLog1Function.selector
        });
    }
}

abstract contract EventEmitter$OnEmitDataLog2Function {
    function EventEmitter$onEmitDataLog2Function(FunctionContext memory ctx, EventEmitter$EmitDataLog2FunctionInputs memory inputs) virtual external;

    function EventEmitter$triggerOnEmitDataLog2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0xdda0db32),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$onEmitDataLog2Function.selector
        });
    }
}

abstract contract EventEmitter$PreEmitDataLog2Function {
    function EventEmitter$preEmitDataLog2Function(PreFunctionContext memory ctx, EventEmitter$EmitDataLog2FunctionInputs memory inputs) virtual external;

    function EventEmitter$triggerPreEmitDataLog2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0xdda0db32),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$preEmitDataLog2Function.selector
        });
    }
}

abstract contract EventEmitter$OnEmitDataLog3Function {
    function EventEmitter$onEmitDataLog3Function(FunctionContext memory ctx, EventEmitter$EmitDataLog3FunctionInputs memory inputs) virtual external;

    function EventEmitter$triggerOnEmitDataLog3Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0xb3ac1c38),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$onEmitDataLog3Function.selector
        });
    }
}

abstract contract EventEmitter$PreEmitDataLog3Function {
    function EventEmitter$preEmitDataLog3Function(PreFunctionContext memory ctx, EventEmitter$EmitDataLog3FunctionInputs memory inputs) virtual external;

    function EventEmitter$triggerPreEmitDataLog3Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0xb3ac1c38),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$preEmitDataLog3Function.selector
        });
    }
}

abstract contract EventEmitter$OnEmitDataLog4Function {
    function EventEmitter$onEmitDataLog4Function(FunctionContext memory ctx, EventEmitter$EmitDataLog4FunctionInputs memory inputs) virtual external;

    function EventEmitter$triggerOnEmitDataLog4Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0xee288ce8),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$onEmitDataLog4Function.selector
        });
    }
}

abstract contract EventEmitter$PreEmitDataLog4Function {
    function EventEmitter$preEmitDataLog4Function(PreFunctionContext memory ctx, EventEmitter$EmitDataLog4FunctionInputs memory inputs) virtual external;

    function EventEmitter$triggerPreEmitDataLog4Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0xee288ce8),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$preEmitDataLog4Function.selector
        });
    }
}

abstract contract EventEmitter$OnEmitEventLogFunction {
    function EventEmitter$onEmitEventLogFunction(FunctionContext memory ctx, EventEmitter$EmitEventLogFunctionInputs memory inputs) virtual external;

    function EventEmitter$triggerOnEmitEventLogFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0x906c49f6),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$onEmitEventLogFunction.selector
        });
    }
}

abstract contract EventEmitter$PreEmitEventLogFunction {
    function EventEmitter$preEmitEventLogFunction(PreFunctionContext memory ctx, EventEmitter$EmitEventLogFunctionInputs memory inputs) virtual external;

    function EventEmitter$triggerPreEmitEventLogFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0x906c49f6),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$preEmitEventLogFunction.selector
        });
    }
}

abstract contract EventEmitter$OnEmitEventLog1Function {
    function EventEmitter$onEmitEventLog1Function(FunctionContext memory ctx, EventEmitter$EmitEventLog1FunctionInputs memory inputs) virtual external;

    function EventEmitter$triggerOnEmitEventLog1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0x24de01e4),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$onEmitEventLog1Function.selector
        });
    }
}

abstract contract EventEmitter$PreEmitEventLog1Function {
    function EventEmitter$preEmitEventLog1Function(PreFunctionContext memory ctx, EventEmitter$EmitEventLog1FunctionInputs memory inputs) virtual external;

    function EventEmitter$triggerPreEmitEventLog1Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0x24de01e4),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$preEmitEventLog1Function.selector
        });
    }
}

abstract contract EventEmitter$OnEmitEventLog2Function {
    function EventEmitter$onEmitEventLog2Function(FunctionContext memory ctx, EventEmitter$EmitEventLog2FunctionInputs memory inputs) virtual external;

    function EventEmitter$triggerOnEmitEventLog2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0x63d16363),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$onEmitEventLog2Function.selector
        });
    }
}

abstract contract EventEmitter$PreEmitEventLog2Function {
    function EventEmitter$preEmitEventLog2Function(PreFunctionContext memory ctx, EventEmitter$EmitEventLog2FunctionInputs memory inputs) virtual external;

    function EventEmitter$triggerPreEmitEventLog2Function() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0x63d16363),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$preEmitEventLog2Function.selector
        });
    }
}

abstract contract EventEmitter$OnRoleStoreFunction {
    function EventEmitter$onRoleStoreFunction(FunctionContext memory ctx, EventEmitter$RoleStoreFunctionOutputs memory outputs) virtual external;

    function EventEmitter$triggerOnRoleStoreFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0x4a4a7b04),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$onRoleStoreFunction.selector
        });
    }
}

abstract contract EventEmitter$PreRoleStoreFunction {
    function EventEmitter$preRoleStoreFunction(PreFunctionContext memory ctx) virtual external;

    function EventEmitter$triggerPreRoleStoreFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "EventEmitter",
            selector: bytes4(0x4a4a7b04),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.EventEmitter$preRoleStoreFunction.selector
        });
    }
}


struct EventEmitter$EmitAllEvents$EventLog {
  address msgSender;
  string eventName;
  bytes32 eventNameHash;
  EventEmitter$EventUtils$EventLogData eventData;
}

struct EventEmitter$EmitAllEvents$EventLog1 {
  address msgSender;
  string eventName;
  bytes32 eventNameHash;
  bytes32 topic1;
  EventEmitter$EventUtils$EventLogData eventData;
}

struct EventEmitter$EmitAllEvents$EventLog2 {
  address msgSender;
  string eventName;
  bytes32 eventNameHash;
  bytes32 topic1;
  bytes32 topic2;
  EventEmitter$EventUtils$EventLogData eventData;
}

contract EventEmitter$EmitAllEvents is
  EventEmitter$OnEventLogEvent,
EventEmitter$OnEventLog1Event,
EventEmitter$OnEventLog2Event
{
  event EventLog(EventEmitter$EmitAllEvents$EventLog);
  event EventLog1(EventEmitter$EmitAllEvents$EventLog1);
  event EventLog2(EventEmitter$EmitAllEvents$EventLog2);

  function EventEmitter$onEventLogEvent(EventContext memory ctx, EventEmitter$EventLogEventParams memory inputs) virtual external override {
    emit EventLog(EventEmitter$EmitAllEvents$EventLog(inputs.msgSender, inputs.eventName, inputs.eventNameHash, inputs.eventData));
  }
function EventEmitter$onEventLog1Event(EventContext memory ctx, EventEmitter$EventLog1EventParams memory inputs) virtual external override {
    emit EventLog1(EventEmitter$EmitAllEvents$EventLog1(inputs.msgSender, inputs.eventName, inputs.eventNameHash, inputs.topic1, inputs.eventData));
  }
function EventEmitter$onEventLog2Event(EventContext memory ctx, EventEmitter$EventLog2EventParams memory inputs) virtual external override {
    emit EventLog2(EventEmitter$EmitAllEvents$EventLog2(inputs.msgSender, inputs.eventName, inputs.eventNameHash, inputs.topic1, inputs.topic2, inputs.eventData));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](3);
    triggers[0] = this.EventEmitter$triggerOnEventLogEvent();
    triggers[1] = this.EventEmitter$triggerOnEventLog1Event();
    triggers[2] = this.EventEmitter$triggerOnEventLog2Event();
    return triggers;
  }
}