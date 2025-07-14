// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function PSM$Abi() pure returns (Abi memory) {
    return Abi("PSM");
}
struct PSM$BuyGemFunctionInputs {
    address usr;
    uint256 gemAmt;
}

struct PSM$DaiFunctionOutputs {
    address outArg0;
}

struct PSM$GemJoinFunctionOutputs {
    address outArg0;
}

struct PSM$SellGemFunctionInputs {
    address usr;
    uint256 gemAmt;
}

abstract contract PSM$OnBuyGemFunction {
    function onBuyGemFunction(FunctionContext memory ctx, PSM$BuyGemFunctionInputs memory inputs) virtual external;

    function triggerOnBuyGemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0x8d7ef9bb),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onBuyGemFunction.selector
        });
    }
}

abstract contract PSM$PreBuyGemFunction {
    function preBuyGemFunction(PreFunctionContext memory ctx, PSM$BuyGemFunctionInputs memory inputs) virtual external;

    function triggerPreBuyGemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0x8d7ef9bb),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preBuyGemFunction.selector
        });
    }
}

abstract contract PSM$OnDaiFunction {
    function onDaiFunction(FunctionContext memory ctx, PSM$DaiFunctionOutputs memory outputs) virtual external;

    function triggerOnDaiFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0xf4b9fa75),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onDaiFunction.selector
        });
    }
}

abstract contract PSM$PreDaiFunction {
    function preDaiFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreDaiFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0xf4b9fa75),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preDaiFunction.selector
        });
    }
}

abstract contract PSM$OnGemJoinFunction {
    function onGemJoinFunction(FunctionContext memory ctx, PSM$GemJoinFunctionOutputs memory outputs) virtual external;

    function triggerOnGemJoinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0x01664f66),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onGemJoinFunction.selector
        });
    }
}

abstract contract PSM$PreGemJoinFunction {
    function preGemJoinFunction(PreFunctionContext memory ctx) virtual external;

    function triggerPreGemJoinFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0x01664f66),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preGemJoinFunction.selector
        });
    }
}

abstract contract PSM$OnSellGemFunction {
    function onSellGemFunction(FunctionContext memory ctx, PSM$SellGemFunctionInputs memory inputs) virtual external;

    function triggerOnSellGemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0x95991276),
            triggerType: TriggerType.FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.onSellGemFunction.selector
        });
    }
}

abstract contract PSM$PreSellGemFunction {
    function preSellGemFunction(PreFunctionContext memory ctx, PSM$SellGemFunctionInputs memory inputs) virtual external;

    function triggerPreSellGemFunction() view external returns (Trigger memory) {
        return Trigger({
            abiName: "PSM",
            selector: bytes4(0x95991276),
            triggerType: TriggerType.PRE_FUNCTION,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.preSellGemFunction.selector
        });
    }
}

contract PSM$EmitAllEvents {
  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](0);

    return triggers;
  }
}