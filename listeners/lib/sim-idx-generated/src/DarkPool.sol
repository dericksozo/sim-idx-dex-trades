// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function DarkPool$Abi() pure returns (Abi memory) {
    return Abi("DarkPool");
}
struct DarkPool$ProcessAtomicMatchSettleWithReceiverFunctionInputs {
    address receiver;
    bytes internalPartyMatchPayload;
    bytes validMatchSettleAtomicStatement;
    bytes matchProofs;
    bytes matchLinkingProofs;
}

struct DarkPool$ProcessAtomicMatchSettleWithReceiverFunctionOutputs {
    uint256 amountOut;
}

struct DarkPool$ProcessMalleableAtomicMatchSettleWithReceiverFunctionInputs {
    uint256 quoteAmount;
    uint256 baseAmount;
    address receiver;
    bytes internalPartyMatchPayload;
    bytes malleableMatchSettleAtomicStatement;
    bytes proofs;
    bytes linkingProofs;
}

struct DarkPool$ProcessMalleableAtomicMatchSettleWithReceiverFunctionOutputs {
    uint256 amountOut;
}

abstract contract DarkPool$OnProcessAtomicMatchSettleWithReceiverFunction {
    function DarkPool$onProcessAtomicMatchSettleWithReceiverFunction(FunctionContext memory ctx, DarkPool$ProcessAtomicMatchSettleWithReceiverFunctionInputs memory inputs, DarkPool$ProcessAtomicMatchSettleWithReceiverFunctionOutputs memory outputs) virtual external;

    function DarkPool$triggerOnProcessAtomicMatchSettleWithReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DarkPool",
            selector: bytes4(0x953105e0),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DarkPool$onProcessAtomicMatchSettleWithReceiverFunction.selector
        });
    }
}

abstract contract DarkPool$PreProcessAtomicMatchSettleWithReceiverFunction {
    function DarkPool$preProcessAtomicMatchSettleWithReceiverFunction(PreFunctionContext memory ctx, DarkPool$ProcessAtomicMatchSettleWithReceiverFunctionInputs memory inputs) virtual external;

    function DarkPool$triggerPreProcessAtomicMatchSettleWithReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DarkPool",
            selector: bytes4(0x953105e0),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DarkPool$preProcessAtomicMatchSettleWithReceiverFunction.selector
        });
    }
}

abstract contract DarkPool$OnProcessMalleableAtomicMatchSettleWithReceiverFunction {
    function DarkPool$onProcessMalleableAtomicMatchSettleWithReceiverFunction(FunctionContext memory ctx, DarkPool$ProcessMalleableAtomicMatchSettleWithReceiverFunctionInputs memory inputs, DarkPool$ProcessMalleableAtomicMatchSettleWithReceiverFunctionOutputs memory outputs) virtual external;

    function DarkPool$triggerOnProcessMalleableAtomicMatchSettleWithReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DarkPool",
            selector: bytes4(0xa2fe5147),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DarkPool$onProcessMalleableAtomicMatchSettleWithReceiverFunction.selector
        });
    }
}

abstract contract DarkPool$PreProcessMalleableAtomicMatchSettleWithReceiverFunction {
    function DarkPool$preProcessMalleableAtomicMatchSettleWithReceiverFunction(PreFunctionContext memory ctx, DarkPool$ProcessMalleableAtomicMatchSettleWithReceiverFunctionInputs memory inputs) virtual external;

    function DarkPool$triggerPreProcessMalleableAtomicMatchSettleWithReceiverFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DarkPool",
            selector: bytes4(0xa2fe5147),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DarkPool$preProcessMalleableAtomicMatchSettleWithReceiverFunction.selector
        });
    }
}

contract DarkPool$EmitAllEvents {
  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](0);

    return triggers;
  }
}