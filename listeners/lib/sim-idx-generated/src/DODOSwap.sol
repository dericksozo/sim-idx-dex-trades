// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function DODOSwap$Abi() pure returns (Abi memory) {
    return Abi("DODOSwap");
}
struct DODOSwap$DodoSwapEventParams {
    address fromToken;
    address toToken;
    uint256 fromAmount;
    uint256 toAmount;
    address trader;
    address receiver;
}

abstract contract DODOSwap$OnDodoSwapEvent {
    function DODOSwap$onDodoSwapEvent(EventContext memory ctx, DODOSwap$DodoSwapEventParams memory inputs) virtual external;

    function DODOSwap$triggerOnDodoSwapEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "DODOSwap",
            selector: bytes32(0xc2c0245e056d5fb095f04cd6373bc770802ebd1e6c918eb78fdef843cdb37b0f),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.DODOSwap$onDodoSwapEvent.selector
        });
    }
}


struct DODOSwap$EmitAllEvents$DodoSwap {
  address fromToken;
  address toToken;
  uint256 fromAmount;
  uint256 toAmount;
  address trader;
  address receiver;
}

contract DODOSwap$EmitAllEvents is
  DODOSwap$OnDodoSwapEvent
{
  event DodoSwap(DODOSwap$EmitAllEvents$DodoSwap);

  function DODOSwap$onDodoSwapEvent(EventContext memory ctx, DODOSwap$DodoSwapEventParams memory inputs) virtual external override {
    emit DodoSwap(DODOSwap$EmitAllEvents$DodoSwap(inputs.fromToken, inputs.toToken, inputs.fromAmount, inputs.toAmount, inputs.trader, inputs.receiver));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](1);
    triggers[0] = this.DODOSwap$triggerOnDodoSwapEvent();
    return triggers;
  }
}