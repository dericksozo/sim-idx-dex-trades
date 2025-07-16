// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "sim-idx-sol/Simidx.sol";
import "sim-idx-generated/Generated.sol";
import "./MakerPSM.sol";
import "./UniswapV2.sol";
import "./UniswapV3.sol";
import "./BancorCarbon.sol";
import "./GPv2Settlement.sol";
import "./CrocSwap.sol";
import "./Curve.sol";
import "./BalancerV2.sol";
import "./MaverickV1.sol";
import "./UniswapX.sol";
import "./UniswapV4.sol";

contract Triggers is BaseTriggers {
    function triggers() external virtual override {
        MakerPSMListener psmListener = new MakerPSMListener();
        UniswapV2Listener uniswapV2Listener = new UniswapV2Listener();
        UniswapV3Listener uniswapV3Listener = new UniswapV3Listener();
        BancorCarbonListener carbonListener = new BancorCarbonListener();
        GPv2SettlementListener gpv2SettlementListener = new GPv2SettlementListener();
        CrocSwapListener crocSwapListener = new CrocSwapListener();
        CurveListener curveListener = new CurveListener();
        BalancerV2Listener balancerV2Listener = new BalancerV2Listener();
        MaverickV1Listener maverickV1Listener = new MaverickV1Listener();
        UniswapXListener uniswapXListener = new UniswapXListener();
        UniswapV4Listener uniswapV4Listener = new UniswapV4Listener();

        addTrigger(chainAbi(Chains.Ethereum, PSM$Abi()), psmListener.PSM$triggerOnBuyGemFunction());
        addTrigger(chainAbi(Chains.Ethereum, PSM$Abi()), psmListener.PSM$triggerOnSellGemFunction());

        addTrigger(chainAbi(Chains.Ethereum, UniswapV2Pair$Abi()), uniswapV2Listener.UniswapV2Pair$triggerOnSwapEvent());

        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV3Pool$Abi()), uniswapV3Listener.UniswapV3Pool$triggerOnSwapFunction()
        );

        addTrigger(
            chainContract(Chains.Ethereum, 0xC537e898CD774e2dCBa3B14Ea6f34C93d5eA45e1),
            carbonListener.BancorController$triggerOnTokensTradedEvent()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0xA4682A2A5Fe02feFF8Bd200240A41AD0E6EaF8d5),
            carbonListener.BancorController$triggerOnTokensTradedEvent()
        );

        addTrigger(
            chainContract(Chains.Ethereum, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            gpv2SettlementListener.GPv2Settlement$triggerPreSettleFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            gpv2SettlementListener.GPv2Settlement$triggerOnSettleFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            gpv2SettlementListener.GPv2Settlement$triggerOnTradeEvent()
        );
        addTrigger(
            chainContract(Chains.Base, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            gpv2SettlementListener.GPv2Settlement$triggerPreSettleFunction()
        );
        addTrigger(
            chainContract(Chains.Base, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            gpv2SettlementListener.GPv2Settlement$triggerOnSettleFunction()
        );
        addTrigger(
            chainContract(Chains.Base, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            gpv2SettlementListener.GPv2Settlement$triggerOnTradeEvent()
        );

        addTrigger(chainAbi(Chains.Ethereum, HotProxy$Abi()), crocSwapListener.HotProxy$triggerOnUserCmdFunction());
        addTrigger(chainAbi(Chains.Base, HotProxy$Abi()), crocSwapListener.HotProxy$triggerOnUserCmdFunction());

        addTrigger(
            chainAbi(Chains.Ethereum, OldTokenExchange$Abi()),
            curveListener.OldTokenExchange$triggerOnTokenExchangeEvent()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, TokenExchange$Abi()), curveListener.TokenExchange$triggerOnTokenExchangeEvent()
        );
        addTrigger(
            chainAbi(Chains.Base, OldTokenExchange$Abi()), curveListener.OldTokenExchange$triggerOnTokenExchangeEvent()
        );
        addTrigger(
            chainAbi(Chains.Base, TokenExchange$Abi()), curveListener.TokenExchange$triggerOnTokenExchangeEvent()
        );

        addTrigger(
            chainAbi(Chains.Ethereum, Vault$Abi()),
            balancerV2Listener.Vault$triggerPreSwapFunction()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, Vault$Abi()),
            balancerV2Listener.Vault$triggerPreBatchSwapFunction()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, Vault$Abi()),
            balancerV2Listener.Vault$triggerOnSwapEvent()
        );
        addTrigger(
            chainAbi(Chains.Base, Vault$Abi()),
            balancerV2Listener.Vault$triggerPreSwapFunction()
        );
        addTrigger(
            chainAbi(Chains.Base, Vault$Abi()),
            balancerV2Listener.Vault$triggerPreBatchSwapFunction()
        );
        addTrigger(
            chainAbi(Chains.Base, Vault$Abi()),
            balancerV2Listener.Vault$triggerOnSwapEvent()
        );

        addTrigger(chainAbi(Chains.Ethereum, MaverickPool$Abi()), maverickV1Listener.MaverickPool$triggerOnSwapEvent());
        addTrigger(chainAbi(Chains.Base, MaverickPool$Abi()), maverickV1Listener.MaverickPool$triggerOnSwapEvent());

        addTrigger(chainAbi(Chains.Ethereum, Reactor$Abi()), uniswapXListener.Reactor$triggerPreExecuteFunction());
        addTrigger(chainAbi(Chains.Ethereum, Reactor$Abi()), uniswapXListener.Reactor$triggerPreExecuteBatchFunction());
        addTrigger(
            chainAbi(Chains.Ethereum, Reactor$Abi()),
            uniswapXListener.Reactor$triggerPreExecuteBatchWithCallbackFunction()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, Reactor$Abi()), uniswapXListener.Reactor$triggerPreExecuteWithCallbackFunction()
        );
        addTrigger(chainAbi(Chains.Unichain, Reactor$Abi()), uniswapXListener.Reactor$triggerPreExecuteFunction());
        addTrigger(chainAbi(Chains.Unichain, Reactor$Abi()), uniswapXListener.Reactor$triggerPreExecuteBatchFunction());
        addTrigger(
            chainAbi(Chains.Unichain, Reactor$Abi()),
            uniswapXListener.Reactor$triggerPreExecuteBatchWithCallbackFunction()
        );
        addTrigger(
            chainAbi(Chains.Unichain, Reactor$Abi()), uniswapXListener.Reactor$triggerPreExecuteWithCallbackFunction()
        );
        addTrigger(chainAbi(Chains.Base, Reactor$Abi()), uniswapXListener.Reactor$triggerPreExecuteFunction());
        addTrigger(chainAbi(Chains.Base, Reactor$Abi()), uniswapXListener.Reactor$triggerPreExecuteBatchFunction());
        addTrigger(
            chainAbi(Chains.Base, Reactor$Abi()), uniswapXListener.Reactor$triggerPreExecuteBatchWithCallbackFunction()
        );
        addTrigger(
            chainAbi(Chains.Base, Reactor$Abi()), uniswapXListener.Reactor$triggerPreExecuteWithCallbackFunction()
        );

        addTrigger(
            chainContract(Chains.Ethereum, 0x000000000004444c5dc75cB358380D2e3dE08A90),
            uniswapV4Listener.PoolManager$triggerOnSwapFunction()
        );
        addTrigger(
            chainContract(Chains.Unichain, 0x1F98400000000000000000000000000000000004),
            uniswapV4Listener.PoolManager$triggerOnSwapFunction()
        );
        addTrigger(
            chainContract(Chains.Base, 0x498581fF718922c3f8e6A244956aF099B2652b2b),
            uniswapV4Listener.PoolManager$triggerOnSwapFunction()
        );
        addTrigger(
            chainContract(Chains.Zora, 0x0575338e4C17006aE181B47900A84404247CA30f),
            uniswapV4Listener.PoolManager$triggerOnSwapFunction()
        );
        addTrigger(
            chainContract(Chains.WorldChain, 0xb1860D529182ac3BC1F51Fa2ABd56662b7D13f33),
            uniswapV4Listener.PoolManager$triggerOnSwapFunction()
        );
        addTrigger(
            chainContract(Chains.Ink, 0x360E68faCcca8cA495c1B759Fd9EEe466db9FB32),
            uniswapV4Listener.PoolManager$triggerOnSwapFunction()
        );
        addTrigger(
            chainContract(Chains.Soneium, 0x360E68faCcca8cA495c1B759Fd9EEe466db9FB32),
            uniswapV4Listener.PoolManager$triggerOnSwapFunction()
        );
    }
}
