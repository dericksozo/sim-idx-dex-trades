// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./MakerPSM.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        MakerPSMListener psmListener = new MakerPSMListener();
        addTrigger(chainAbi(Chains.Ethereum, PSM$Abi()), psmListener.triggerOnBuyGemFunction());
        addTrigger(chainAbi(Chains.Ethereum, PSM$Abi()), psmListener.triggerOnSellGemFunction());
    }
}