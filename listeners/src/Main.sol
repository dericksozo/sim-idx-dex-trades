// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./MakerPSM.sol";
import "./UniswapV2.sol";
import "./UniswapV3.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        MakerPSMListener psmListener = new MakerPSMListener();
        UniswapV2Listener uniswapV2Listener = new UniswapV2Listener();
        UniswapV3Listener uniswapV3Listener = new UniswapV3Listener();
        addTrigger(chainAbi(Chains.Ethereum, PSM$Abi()), psmListener.triggerOnBuyGemFunction());
        addTrigger(chainAbi(Chains.Ethereum, PSM$Abi()), psmListener.triggerOnSellGemFunction());
        addTrigger(chainAbi(Chains.Ethereum, UniswapV2Pair$Abi()), uniswapV2Listener.triggerOnSwapEvent());
        addTrigger(chainAbi(Chains.Ethereum, UniswapV3Pool$Abi()), uniswapV3Listener.triggerOnSwapFunction());
    }
}
