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
import "./DODOV2.sol";
import "./WooFi.sol";
import "./AirSwapV4.sol";
import "./AirSwapV5.sol";
import "./FluidDex.sol";
import "./1InchLOPV4.sol";
import "./KyberSwapLOP.sol";
import "./MaverickV2.sol";
import "./Ekubo.sol";
import "./0xProtocol.sol";

contract Triggers is BaseTriggers {
    // avoid stack too deep
    struct Listeners {
        MakerPSMListener psmListener;
        UniswapV2Listener uniswapV2Listener;
        UniswapV3Listener uniswapV3Listener;
        BancorCarbonListener carbonListener;
        GPv2SettlementListener gpv2SettlementListener;
        CrocSwapListener crocSwapListener;
        CurveListener curveListener;
        BalancerV2Listener balancerV2Listener;
        MaverickV1Listener maverickV1Listener;
        UniswapXListener uniswapXListener;
        UniswapV4Listener uniswapV4Listener;
        DODOV2Listener dodoV2Listener;
        WooFiListener wooFiListener;
        AirSwapV4Listener airSwapV4Listener;
        AirSwapV5Listener airSwapV5Listener;
        FluidDexListener fluidDexListener;
        OneInchLOPV4Listener oneInchLOPV4Listener;
        KyberSwapLOPListener kyberSwapLOPListener;
        MaverickV2Listener maverickV2Listener;
        EkuboListener ekuboListener;
        ZeroExProtocolListener zeroExProtocolListener;
    }

    function triggers() external virtual override {
        Listeners memory listeners;

        listeners.psmListener = new MakerPSMListener();
        listeners.uniswapV2Listener = new UniswapV2Listener();
        listeners.uniswapV3Listener = new UniswapV3Listener();
        listeners.carbonListener = new BancorCarbonListener();
        listeners.gpv2SettlementListener = new GPv2SettlementListener();
        listeners.crocSwapListener = new CrocSwapListener();
        listeners.curveListener = new CurveListener();
        listeners.balancerV2Listener = new BalancerV2Listener();
        listeners.maverickV1Listener = new MaverickV1Listener();
        listeners.uniswapXListener = new UniswapXListener();
        listeners.uniswapV4Listener = new UniswapV4Listener();
        listeners.dodoV2Listener = new DODOV2Listener();
        listeners.wooFiListener = new WooFiListener();
        listeners.airSwapV4Listener = new AirSwapV4Listener();
        listeners.airSwapV5Listener = new AirSwapV5Listener();
        listeners.fluidDexListener = new FluidDexListener();
        listeners.oneInchLOPV4Listener = new OneInchLOPV4Listener();
        listeners.kyberSwapLOPListener = new KyberSwapLOPListener();
        listeners.maverickV2Listener = new MaverickV2Listener();
        listeners.ekuboListener = new EkuboListener();
        listeners.zeroExProtocolListener = new ZeroExProtocolListener();

        addTrigger(chainAbi(Chains.Ethereum, PSM$Abi()), listeners.psmListener.PSM$triggerOnBuyGemFunction());
        addTrigger(chainAbi(Chains.Ethereum, PSM$Abi()), listeners.psmListener.PSM$triggerOnSellGemFunction());

        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV2Pair$Abi()),
            listeners.uniswapV2Listener.UniswapV2Pair$triggerOnSwapEvent()
        );

        addTrigger(
            chainAbi(Chains.Ethereum, UniswapV3Pool$Abi()),
            listeners.uniswapV3Listener.UniswapV3Pool$triggerOnSwapFunction()
        );

        addTrigger(
            chainContract(Chains.Ethereum, 0xC537e898CD774e2dCBa3B14Ea6f34C93d5eA45e1),
            listeners.carbonListener.BancorController$triggerOnTokensTradedEvent()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0xA4682A2A5Fe02feFF8Bd200240A41AD0E6EaF8d5),
            listeners.carbonListener.BancorController$triggerOnTokensTradedEvent()
        );

        addTrigger(
            chainContract(Chains.Ethereum, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            listeners.gpv2SettlementListener.GPv2Settlement$triggerPreSettleFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            listeners.gpv2SettlementListener.GPv2Settlement$triggerOnSettleFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            listeners.gpv2SettlementListener.GPv2Settlement$triggerOnTradeEvent()
        );
        addTrigger(
            chainContract(Chains.Base, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            listeners.gpv2SettlementListener.GPv2Settlement$triggerPreSettleFunction()
        );
        addTrigger(
            chainContract(Chains.Base, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            listeners.gpv2SettlementListener.GPv2Settlement$triggerOnSettleFunction()
        );
        addTrigger(
            chainContract(Chains.Base, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
            listeners.gpv2SettlementListener.GPv2Settlement$triggerOnTradeEvent()
        );

        addTrigger(
            chainAbi(Chains.Ethereum, HotProxy$Abi()), listeners.crocSwapListener.HotProxy$triggerOnUserCmdFunction()
        );
        addTrigger(
            chainAbi(Chains.Base, HotProxy$Abi()), listeners.crocSwapListener.HotProxy$triggerOnUserCmdFunction()
        );

        addTrigger(
            chainAbi(Chains.Ethereum, OldTokenExchange$Abi()),
            listeners.curveListener.OldTokenExchange$triggerOnTokenExchangeEvent()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, TokenExchange$Abi()),
            listeners.curveListener.TokenExchange$triggerOnTokenExchangeEvent()
        );
        addTrigger(
            chainAbi(Chains.Base, OldTokenExchange$Abi()),
            listeners.curveListener.OldTokenExchange$triggerOnTokenExchangeEvent()
        );
        addTrigger(
            chainAbi(Chains.Base, TokenExchange$Abi()),
            listeners.curveListener.TokenExchange$triggerOnTokenExchangeEvent()
        );

        addTrigger(chainAbi(Chains.Ethereum, Vault$Abi()), listeners.balancerV2Listener.Vault$triggerPreSwapFunction());
        addTrigger(
            chainAbi(Chains.Ethereum, Vault$Abi()), listeners.balancerV2Listener.Vault$triggerPreBatchSwapFunction()
        );
        addTrigger(chainAbi(Chains.Ethereum, Vault$Abi()), listeners.balancerV2Listener.Vault$triggerOnSwapEvent());
        addTrigger(chainAbi(Chains.Base, Vault$Abi()), listeners.balancerV2Listener.Vault$triggerPreSwapFunction());
        addTrigger(chainAbi(Chains.Base, Vault$Abi()), listeners.balancerV2Listener.Vault$triggerPreBatchSwapFunction());
        addTrigger(chainAbi(Chains.Base, Vault$Abi()), listeners.balancerV2Listener.Vault$triggerOnSwapEvent());

        addTrigger(
            chainAbi(Chains.Ethereum, MaverickPool$Abi()),
            listeners.maverickV1Listener.MaverickPool$triggerOnSwapEvent()
        );
        addTrigger(
            chainAbi(Chains.Base, MaverickPool$Abi()), listeners.maverickV1Listener.MaverickPool$triggerOnSwapEvent()
        );

        addTrigger(
            chainAbi(Chains.Ethereum, Reactor$Abi()), listeners.uniswapXListener.Reactor$triggerPreExecuteFunction()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, Reactor$Abi()),
            listeners.uniswapXListener.Reactor$triggerPreExecuteBatchFunction()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, Reactor$Abi()),
            listeners.uniswapXListener.Reactor$triggerPreExecuteBatchWithCallbackFunction()
        );
        addTrigger(
            chainAbi(Chains.Ethereum, Reactor$Abi()),
            listeners.uniswapXListener.Reactor$triggerPreExecuteWithCallbackFunction()
        );
        addTrigger(
            chainAbi(Chains.Unichain, Reactor$Abi()), listeners.uniswapXListener.Reactor$triggerPreExecuteFunction()
        );
        addTrigger(
            chainAbi(Chains.Unichain, Reactor$Abi()),
            listeners.uniswapXListener.Reactor$triggerPreExecuteBatchFunction()
        );
        addTrigger(
            chainAbi(Chains.Unichain, Reactor$Abi()),
            listeners.uniswapXListener.Reactor$triggerPreExecuteBatchWithCallbackFunction()
        );
        addTrigger(
            chainAbi(Chains.Unichain, Reactor$Abi()),
            listeners.uniswapXListener.Reactor$triggerPreExecuteWithCallbackFunction()
        );
        addTrigger(chainAbi(Chains.Base, Reactor$Abi()), listeners.uniswapXListener.Reactor$triggerPreExecuteFunction());
        addTrigger(
            chainAbi(Chains.Base, Reactor$Abi()), listeners.uniswapXListener.Reactor$triggerPreExecuteBatchFunction()
        );
        addTrigger(
            chainAbi(Chains.Base, Reactor$Abi()),
            listeners.uniswapXListener.Reactor$triggerPreExecuteBatchWithCallbackFunction()
        );
        addTrigger(
            chainAbi(Chains.Base, Reactor$Abi()),
            listeners.uniswapXListener.Reactor$triggerPreExecuteWithCallbackFunction()
        );

        addTrigger(
            chainContract(Chains.Ethereum, 0x000000000004444c5dc75cB358380D2e3dE08A90),
            listeners.uniswapV4Listener.PoolManager$triggerOnSwapFunction()
        );
        addTrigger(
            chainContract(Chains.Unichain, 0x1F98400000000000000000000000000000000004),
            listeners.uniswapV4Listener.PoolManager$triggerOnSwapFunction()
        );
        addTrigger(
            chainContract(Chains.Base, 0x498581fF718922c3f8e6A244956aF099B2652b2b),
            listeners.uniswapV4Listener.PoolManager$triggerOnSwapFunction()
        );
        addTrigger(
            chainContract(Chains.Zora, 0x0575338e4C17006aE181B47900A84404247CA30f),
            listeners.uniswapV4Listener.PoolManager$triggerOnSwapFunction()
        );
        addTrigger(
            chainContract(Chains.WorldChain, 0xb1860D529182ac3BC1F51Fa2ABd56662b7D13f33),
            listeners.uniswapV4Listener.PoolManager$triggerOnSwapFunction()
        );
        addTrigger(
            chainContract(Chains.Ink, 0x360E68faCcca8cA495c1B759Fd9EEe466db9FB32),
            listeners.uniswapV4Listener.PoolManager$triggerOnSwapFunction()
        );
        addTrigger(
            chainContract(Chains.Soneium, 0x360E68faCcca8cA495c1B759Fd9EEe466db9FB32),
            listeners.uniswapV4Listener.PoolManager$triggerOnSwapFunction()
        );

        addTrigger(
            chainAbi(Chains.Ethereum, DODOSwap$Abi()), listeners.dodoV2Listener.DODOSwap$triggerOnDodoSwapEvent()
        );
        addTrigger(chainAbi(Chains.Base, DODOSwap$Abi()), listeners.dodoV2Listener.DODOSwap$triggerOnDodoSwapEvent());

        addTrigger(chainAbi(Chains.Ethereum, WooSwap$Abi()), listeners.wooFiListener.WooSwap$triggerOnWooSwapEvent());
        addTrigger(chainAbi(Chains.Base, WooSwap$Abi()), listeners.wooFiListener.WooSwap$triggerOnWooSwapEvent());

        addTrigger(
            chainContract(Chains.Ethereum, 0xd82FA167727a4dc6D6F55830A2c47aBbB4b3a0F8),
            listeners.airSwapV4Listener.AirSwapV4$triggerOnSwapErc20Event()
        );

        addTrigger(
            chainContract(Chains.Ethereum, 0xD82E10B9A4107939e55fCCa9B53A9ede6CF2fC46),
            listeners.airSwapV5Listener.AirSwapV5$triggerOnSwapFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0xD82E10B9A4107939e55fCCa9B53A9ede6CF2fC46),
            listeners.airSwapV5Listener.AirSwapV5$triggerOnSwapAnySenderFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0xD82E10B9A4107939e55fCCa9B53A9ede6CF2fC46),
            listeners.airSwapV5Listener.AirSwapV5$triggerOnSwapLightFunction()
        );

        addTrigger(
            chainAbi(Chains.Ethereum, FluidDexT1$Abi()), listeners.fluidDexListener.FluidDexT1$triggerOnSwapEvent()
        );
        addTrigger(chainAbi(Chains.Base, FluidDexT1$Abi()), listeners.fluidDexListener.FluidDexT1$triggerOnSwapEvent());

        addTrigger(
            chainContract(Chains.Ethereum, 0x111111125421cA6dc452d289314280a0f8842A65),
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillOrderFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x111111125421cA6dc452d289314280a0f8842A65),
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillOrderArgsFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x111111125421cA6dc452d289314280a0f8842A65),
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillContractOrderFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x111111125421cA6dc452d289314280a0f8842A65),
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillContractOrderArgsFunction()
        );
        addTrigger(
            chainContract(Chains.Base, 0x111111125421cA6dc452d289314280a0f8842A65),
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillOrderFunction()
        );
        addTrigger(
            chainContract(Chains.Base, 0x111111125421cA6dc452d289314280a0f8842A65),
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillOrderArgsFunction()
        );
        addTrigger(
            chainContract(Chains.Base, 0x111111125421cA6dc452d289314280a0f8842A65),
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillContractOrderFunction()
        );
        addTrigger(
            chainContract(Chains.Base, 0x111111125421cA6dc452d289314280a0f8842A65),
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillContractOrderArgsFunction()
        );

        addTrigger(
            chainContract(Chains.Ethereum, 0xcab2FA2eeab7065B45CBcF6E3936dDE2506b4f6C),
            listeners.kyberSwapLOPListener.DSLOProtocol$triggerOnFillOrderToFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x227B0c196eA8db17A665EA6824D972A64202E936),
            listeners.kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillOrderRfqToFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x227B0c196eA8db17A665EA6824D972A64202E936),
            listeners.kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillOrderFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x227B0c196eA8db17A665EA6824D972A64202E936),
            listeners.kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillBatchOrdersToFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0x227B0c196eA8db17A665EA6824D972A64202E936),
            listeners.kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillOrderToWithPermitFunction()
        );
        addTrigger(
            chainContract(Chains.Base, 0xcab2FA2eeab7065B45CBcF6E3936dDE2506b4f6C),
            listeners.kyberSwapLOPListener.DSLOProtocol$triggerOnFillOrderToFunction()
        );

        addTrigger(
            chainAbi(Chains.Ethereum, MaverickV2Pool$Abi()),
            listeners.maverickV2Listener.MaverickV2Pool$triggerOnPoolSwapEvent()
        );
        addTrigger(
            chainAbi(Chains.Base, MaverickV2Pool$Abi()),
            listeners.maverickV2Listener.MaverickV2Pool$triggerOnPoolSwapEvent()
        );

        addTrigger(
            chainContract(Chains.Ethereum, 0xe0e0e08A6A4b9Dc7bD67BCB7aadE5cF48157d444),
            listeners.ekuboListener.EkuboCore$triggerOnSwap611415377Function()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0xe0e0e08A6A4b9Dc7bD67BCB7aadE5cF48157d444),
            listeners.ekuboListener.EkuboCore$triggerPreLockFunction()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0xe0e0e08A6A4b9Dc7bD67BCB7aadE5cF48157d444),
            listeners.ekuboListener.EkuboCore$triggerOnLockFunction()
        );

        addTrigger(
            chainContract(Chains.Ethereum, 0xDef1C0ded9bec7F1a1670819833240f027b25EfF),
            listeners.zeroExProtocolListener.ExchangeV4$triggerOnOtcOrderFilledEvent()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0xDef1C0ded9bec7F1a1670819833240f027b25EfF),
            listeners.zeroExProtocolListener.ExchangeV4$triggerOnRfqOrderFilledEvent()
        );
        addTrigger(
            chainContract(Chains.Ethereum, 0xDef1C0ded9bec7F1a1670819833240f027b25EfF),
            listeners.zeroExProtocolListener.ExchangeV4$triggerOnLimitOrderFilledEvent()
        );
        addTrigger(
            chainContract(Chains.Base, 0xDef1C0ded9bec7F1a1670819833240f027b25EfF),
            listeners.zeroExProtocolListener.ExchangeV4$triggerOnOtcOrderFilledEvent()
        );
        addTrigger(
            chainContract(Chains.Base, 0xDef1C0ded9bec7F1a1670819833240f027b25EfF),
            listeners.zeroExProtocolListener.ExchangeV4$triggerOnRfqOrderFilledEvent()
        );
        addTrigger(
            chainContract(Chains.Base, 0xDef1C0ded9bec7F1a1670819833240f027b25EfF),
            listeners.zeroExProtocolListener.ExchangeV4$triggerOnLimitOrderFilledEvent()
        );
    }
}
