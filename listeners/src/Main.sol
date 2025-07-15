// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./MakerPSM.sol";
import "./UniswapV2.sol";
import "./UniswapV3.sol";
import "./BancorCarbon.sol";
import "./GPv2Settlement.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        MakerPSMListener psmListener = new MakerPSMListener();
        UniswapV2Listener uniswapV2Listener = new UniswapV2Listener();
        UniswapV3Listener uniswapV3Listener = new UniswapV3Listener();
        BancorCarbonListener carbonListener = new BancorCarbonListener();
        GPv2SettlementListener gpv2SettlementListener = new GPv2SettlementListener();

        addTrigger(chainAbi(Chains.Ethereum, PSM$Abi()), psmListener.triggerOnBuyGemFunction());
        addTrigger(chainAbi(Chains.Ethereum, PSM$Abi()), psmListener.triggerOnSellGemFunction());
        
        addTrigger(chainAbi(Chains.Ethereum, UniswapV2Pair$Abi()), uniswapV2Listener.triggerOnSwapEvent());
        
        addTrigger(chainAbi(Chains.Ethereum, UniswapV3Pool$Abi()), uniswapV3Listener.triggerOnSwapFunction());
        
        addTrigger(
            chainContract(Chains.Ethereum, 0xC537e898CD774e2dCBa3B14Ea6f34C93d5eA45e1),
            carbonListener.triggerOnTokensTradedEvent()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0xA4682A2A5Fe02feFF8Bd200240A41AD0E6EaF8d5),
            carbonListener.triggerOnTokensTradedEvent()
        );
        
        addTrigger(
            chainContract(Chains.Ethereum, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            gpv2SettlementListener.triggerPreSettleFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            gpv2SettlementListener.triggerOnSettleFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            gpv2SettlementListener.triggerOnTradeEvent()
        );
        addTrigger(
            chainContract(Chains.Base, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            gpv2SettlementListener.triggerPreSettleFunction()
        );
        addTrigger(
            chainContract(Chains.Base, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            gpv2SettlementListener.triggerOnSettleFunction()
        );
        addTrigger(
            chainContract(Chains.Base, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            gpv2SettlementListener.triggerOnTradeEvent()
        );
    }
}
