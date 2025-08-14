// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function ExchangeV4$Abi() pure returns (Abi memory) {
    return Abi("ExchangeV4");
}
struct ExchangeV4$LimitOrderFilledEventParams {
    bytes32 orderHash;
    address maker;
    address taker;
    address feeRecipient;
    address makerToken;
    address takerToken;
    uint128 takerTokenFilledAmount;
    uint128 makerTokenFilledAmount;
    uint128 takerTokenFeeFilledAmount;
    uint256 protocolFeePaid;
    bytes32 pool;
}

struct ExchangeV4$OtcOrderFilledEventParams {
    bytes32 orderHash;
    address maker;
    address taker;
    address makerToken;
    address takerToken;
    uint128 takerTokenFilledAmount;
    uint128 makerTokenFilledAmount;
}

struct ExchangeV4$RfqOrderFilledEventParams {
    bytes32 orderHash;
    address maker;
    address taker;
    address makerToken;
    address takerToken;
    uint128 takerTokenFilledAmount;
    uint128 makerTokenFilledAmount;
    bytes32 pool;
}

abstract contract ExchangeV4$OnLimitOrderFilledEvent {
    function ExchangeV4$onLimitOrderFilledEvent(EventContext memory ctx, ExchangeV4$LimitOrderFilledEventParams memory inputs) virtual external;

    function ExchangeV4$triggerOnLimitOrderFilledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ExchangeV4",
            selector: bytes32(0xab614d2b738543c0ea21f56347cf696a3a0c42a7cbec3212a5ca22a4dcff2124),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.ExchangeV4$onLimitOrderFilledEvent.selector
        });
    }
}

abstract contract ExchangeV4$OnOtcOrderFilledEvent {
    function ExchangeV4$onOtcOrderFilledEvent(EventContext memory ctx, ExchangeV4$OtcOrderFilledEventParams memory inputs) virtual external;

    function ExchangeV4$triggerOnOtcOrderFilledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ExchangeV4",
            selector: bytes32(0xac75f773e3a92f1a02b12134d65e1f47f8a14eabe4eaf1e24624918e6a8b269f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.ExchangeV4$onOtcOrderFilledEvent.selector
        });
    }
}

abstract contract ExchangeV4$OnRfqOrderFilledEvent {
    function ExchangeV4$onRfqOrderFilledEvent(EventContext memory ctx, ExchangeV4$RfqOrderFilledEventParams memory inputs) virtual external;

    function ExchangeV4$triggerOnRfqOrderFilledEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "ExchangeV4",
            selector: bytes32(0x829fa99d94dc4636925b38632e625736a614c154d55006b7ab6bea979c210c32),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.ExchangeV4$onRfqOrderFilledEvent.selector
        });
    }
}


struct ExchangeV4$EmitAllEvents$LimitOrderFilled {
  bytes32 orderHash;
  address maker;
  address taker;
  address feeRecipient;
  address makerToken;
  address takerToken;
  uint128 takerTokenFilledAmount;
  uint128 makerTokenFilledAmount;
  uint128 takerTokenFeeFilledAmount;
  uint256 protocolFeePaid;
  bytes32 pool;
}

struct ExchangeV4$EmitAllEvents$OtcOrderFilled {
  bytes32 orderHash;
  address maker;
  address taker;
  address makerToken;
  address takerToken;
  uint128 takerTokenFilledAmount;
  uint128 makerTokenFilledAmount;
}

struct ExchangeV4$EmitAllEvents$RfqOrderFilled {
  bytes32 orderHash;
  address maker;
  address taker;
  address makerToken;
  address takerToken;
  uint128 takerTokenFilledAmount;
  uint128 makerTokenFilledAmount;
  bytes32 pool;
}

contract ExchangeV4$EmitAllEvents is
  ExchangeV4$OnLimitOrderFilledEvent,
ExchangeV4$OnOtcOrderFilledEvent,
ExchangeV4$OnRfqOrderFilledEvent
{
  event LimitOrderFilled(ExchangeV4$EmitAllEvents$LimitOrderFilled);
  event OtcOrderFilled(ExchangeV4$EmitAllEvents$OtcOrderFilled);
  event RfqOrderFilled(ExchangeV4$EmitAllEvents$RfqOrderFilled);

  function ExchangeV4$onLimitOrderFilledEvent(EventContext memory ctx, ExchangeV4$LimitOrderFilledEventParams memory inputs) virtual external override {
    emit LimitOrderFilled(ExchangeV4$EmitAllEvents$LimitOrderFilled(inputs.orderHash, inputs.maker, inputs.taker, inputs.feeRecipient, inputs.makerToken, inputs.takerToken, inputs.takerTokenFilledAmount, inputs.makerTokenFilledAmount, inputs.takerTokenFeeFilledAmount, inputs.protocolFeePaid, inputs.pool));
  }
function ExchangeV4$onOtcOrderFilledEvent(EventContext memory ctx, ExchangeV4$OtcOrderFilledEventParams memory inputs) virtual external override {
    emit OtcOrderFilled(ExchangeV4$EmitAllEvents$OtcOrderFilled(inputs.orderHash, inputs.maker, inputs.taker, inputs.makerToken, inputs.takerToken, inputs.takerTokenFilledAmount, inputs.makerTokenFilledAmount));
  }
function ExchangeV4$onRfqOrderFilledEvent(EventContext memory ctx, ExchangeV4$RfqOrderFilledEventParams memory inputs) virtual external override {
    emit RfqOrderFilled(ExchangeV4$EmitAllEvents$RfqOrderFilled(inputs.orderHash, inputs.maker, inputs.taker, inputs.makerToken, inputs.takerToken, inputs.takerTokenFilledAmount, inputs.makerTokenFilledAmount, inputs.pool));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](3);
    triggers[0] = this.ExchangeV4$triggerOnLimitOrderFilledEvent();
    triggers[1] = this.ExchangeV4$triggerOnOtcOrderFilledEvent();
    triggers[2] = this.ExchangeV4$triggerOnRfqOrderFilledEvent();
    return triggers;
  }
}