// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/sim-idx-sol/src/Triggers.sol";
import "lib/sim-idx-sol/src/Context.sol";

function OldTokenExchange$Abi() pure returns (Abi memory) {
    return Abi("OldTokenExchange");
}
struct OldTokenExchange$TokenExchangeEventParams {
    address buyer;
    int128 sold_id;
    uint256 tokens_sold;
    int128 bought_id;
    uint256 tokens_bought;
}

abstract contract OldTokenExchange$OnTokenExchangeEvent {
    function OldTokenExchange$onTokenExchangeEvent(EventContext memory ctx, OldTokenExchange$TokenExchangeEventParams memory inputs) virtual external;

    function OldTokenExchange$triggerOnTokenExchangeEvent() view external returns (Trigger memory) {
        return Trigger({
            abiName: "OldTokenExchange",
            selector: bytes32(0x8b3e96f2b889fa771c53c981b40daf005f63f637f1869f707052d15a3dd97140),
            triggerType: TriggerType.EVENT,
            listenerCodehash: address(this).codehash,
            handlerSelector: this.OldTokenExchange$onTokenExchangeEvent.selector
        });
    }
}


struct OldTokenExchange$EmitAllEvents$TokenExchange {
  address buyer;
  int128 sold_id;
  uint256 tokens_sold;
  int128 bought_id;
  uint256 tokens_bought;
}

contract OldTokenExchange$EmitAllEvents is
  OldTokenExchange$OnTokenExchangeEvent
{
  event TokenExchange(OldTokenExchange$EmitAllEvents$TokenExchange);

  function OldTokenExchange$onTokenExchangeEvent(EventContext memory ctx, OldTokenExchange$TokenExchangeEventParams memory inputs) virtual external override {
    emit TokenExchange(OldTokenExchange$EmitAllEvents$TokenExchange(inputs.buyer, inputs.sold_id, inputs.tokens_sold, inputs.bought_id, inputs.tokens_bought));
  }

  function allTriggers() view external returns (Trigger[] memory) {
    Trigger[] memory triggers = new Trigger[](1);
    triggers[0] = this.OldTokenExchange$triggerOnTokenExchangeEvent();
    return triggers;
  }
}