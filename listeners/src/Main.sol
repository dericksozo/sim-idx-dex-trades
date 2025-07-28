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
import "./0xSettler.sol";

contract Triggers is BaseTriggers {
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
        ZeroExSettlerListener zeroExSettlerListener;
    }

    // avoid stack too deep
    Listeners internal listeners;

    // address resolving
    mapping(Chains => address) internal bancorController;
    mapping(Chains => address) internal poolManager;

    // supported chains
    // per protocol supported chains
    Chains[] internal univ2Chains;
    Chains[] internal univ3Chains;
    Chains[] internal bancorCarbonChains;
    Chains[] internal gpv2SettlementChains;
    Chains[] internal crocSwapChains;
    Chains[] internal curveChains;
    Chains[] internal balancerV2Chains;
    Chains[] internal maverickV1Chains;
    Chains[] internal uniswapXChains;
    Chains[] internal uniswapV4Chains;
    Chains[] internal dodoV2Chains;
    Chains[] internal wooFiChains;
    Chains[] internal airSwapV4Chains;
    Chains[] internal airSwapV5Chains;
    Chains[] internal fluidDexChains;
    Chains[] internal oneInchLOPV4Chains;
    Chains[] internal kyberSwapLOPChains;
    Chains[] internal maverickV2Chains;
    Chains[] internal ekuboChains;
    Chains[] internal zeroExProtocolChains;
    Chains[] internal zeroExSettlerChains;

    // per protocol triggers
    Trigger[] internal psmTriggers;
    Trigger[] internal uniswapV2Triggers;
    Trigger[] internal uniswapV3Triggers;
    Trigger[] internal bancorCarbonTriggers;
    Trigger[] internal gpv2SettlementTriggers;
    Trigger[] internal crocSwapTriggers;
    Trigger[] internal curveTriggers;
    Trigger[] internal balancerV2Triggers;
    Trigger[] internal maverickV1Triggers;
    Trigger[] internal uniswapXTriggers;
    Trigger[] internal uniswapV4Triggers;
    Trigger[] internal dodoV2Triggers;
    Trigger[] internal wooFiTriggers;
    Trigger[] internal airSwapV4Triggers;
    Trigger[] internal airSwapV5Triggers;
    Trigger[] internal fluidDexTriggers;
    Trigger[] internal oneInchLOPV4Triggers;
    Trigger[] internal kyberSwapLOPTriggers;
    Trigger[] internal maverickV2Triggers;
    Trigger[] internal ekuboTriggers;
    Trigger[] internal zeroExProtocolTriggers;

    constructor() {
        // init listeners
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
        listeners.zeroExSettlerListener = new ZeroExSettlerListener();

        // address resolving
        bancorController[Chains.Ethereum] = 0xC537e898CD774e2dCBa3B14Ea6f34C93d5eA45e1;
        bancorController[Chains.Base] = 0xA4682A2A5Fe02feFF8Bd200240A41AD0E6EaF8d5;
        poolManager[Chains.Ethereum] = 0x000000000004444c5dc75cB358380D2e3dE08A90;
        poolManager[Chains.Base] = 0x498581fF718922c3f8e6A244956aF099B2652b2b;
        poolManager[Chains.Unichain] = 0x1F98400000000000000000000000000000000004;
        poolManager[Chains.Zora] = 0x0575338e4C17006aE181B47900A84404247CA30f;
        poolManager[Chains.WorldChain] = 0xb1860D529182ac3BC1F51Fa2ABd56662b7D13f33;
        poolManager[Chains.Ink] = 0x360E68faCcca8cA495c1B759Fd9EEe466db9FB32;
        poolManager[Chains.Soneium] = 0x360E68faCcca8cA495c1B759Fd9EEe466db9FB32;

        // per protocol supported chains
        univ2Chains = [Chains.Ethereum, Chains.Base];
        univ3Chains = [Chains.Ethereum, Chains.Base];
        bancorCarbonChains = [Chains.Ethereum, Chains.Base];
        gpv2SettlementChains = [Chains.Ethereum, Chains.Base];
        crocSwapChains = [Chains.Ethereum, Chains.Base];
        curveChains = [Chains.Ethereum, Chains.Base];
        balancerV2Chains = [Chains.Ethereum, Chains.Base];
        maverickV1Chains = [Chains.Ethereum, Chains.Base];
        uniswapXChains = [Chains.Ethereum, Chains.Base, Chains.Unichain];
        uniswapV4Chains =
            [Chains.Ethereum, Chains.Unichain, Chains.Base, Chains.Zora, Chains.WorldChain, Chains.Ink, Chains.Soneium];
        dodoV2Chains = [Chains.Ethereum, Chains.Base];
        wooFiChains = [Chains.Ethereum, Chains.Base];
        airSwapV4Chains = [Chains.Ethereum];
        airSwapV5Chains = [Chains.Ethereum];
        fluidDexChains = [Chains.Ethereum, Chains.Base];
        oneInchLOPV4Chains = [Chains.Ethereum, Chains.Base];
        kyberSwapLOPChains = [Chains.Ethereum, Chains.Base];
        maverickV2Chains = [Chains.Ethereum, Chains.Base];
        ekuboChains = [Chains.Ethereum];
        zeroExProtocolChains = [Chains.Ethereum, Chains.Base];
        zeroExSettlerChains = [Chains.Ethereum];

        // per protocol triggers
        psmTriggers =
            [listeners.psmListener.PSM$triggerOnBuyGemFunction(), listeners.psmListener.PSM$triggerOnSellGemFunction()];
        uniswapV2Triggers = [listeners.uniswapV2Listener.UniswapV2Pair$triggerOnSwapEvent()];
        uniswapV3Triggers = [listeners.uniswapV3Listener.UniswapV3Pool$triggerOnSwapFunction()];
        bancorCarbonTriggers = [listeners.carbonListener.BancorController$triggerOnTokensTradedEvent()];
        gpv2SettlementTriggers = [
            listeners.gpv2SettlementListener.GPv2Settlement$triggerPreSettleFunction(),
            listeners.gpv2SettlementListener.GPv2Settlement$triggerOnSettleFunction(),
            listeners.gpv2SettlementListener.GPv2Settlement$triggerOnTradeEvent()
        ];
        crocSwapTriggers = [listeners.crocSwapListener.HotProxy$triggerOnUserCmdFunction()];
        curveTriggers = [
            listeners.curveListener.OldTokenExchange$triggerOnTokenExchangeEvent(),
            listeners.curveListener.TokenExchange$triggerOnTokenExchangeEvent()
        ];
        balancerV2Triggers = [
            listeners.balancerV2Listener.Vault$triggerPreSwapFunction(),
            listeners.balancerV2Listener.Vault$triggerPreBatchSwapFunction(),
            listeners.balancerV2Listener.Vault$triggerOnSwapEvent()
        ];
        maverickV1Triggers = [listeners.maverickV1Listener.MaverickPool$triggerOnSwapEvent()];
        uniswapXTriggers = [
            listeners.uniswapXListener.Reactor$triggerPreExecuteFunction(),
            listeners.uniswapXListener.Reactor$triggerPreExecuteBatchFunction(),
            listeners.uniswapXListener.Reactor$triggerPreExecuteBatchWithCallbackFunction(),
            listeners.uniswapXListener.Reactor$triggerPreExecuteWithCallbackFunction()
        ];
        uniswapV4Triggers = [listeners.uniswapV4Listener.PoolManager$triggerOnSwapFunction()];
        dodoV2Triggers = [listeners.dodoV2Listener.DODOSwap$triggerOnDodoSwapEvent()];
        wooFiTriggers = [listeners.wooFiListener.WooSwap$triggerOnWooSwapEvent()];
        airSwapV4Triggers = [listeners.airSwapV4Listener.AirSwapV4$triggerOnSwapErc20Event()];
        airSwapV5Triggers = [
            listeners.airSwapV5Listener.AirSwapV5$triggerOnSwapFunction(),
            listeners.airSwapV5Listener.AirSwapV5$triggerOnSwapAnySenderFunction(),
            listeners.airSwapV5Listener.AirSwapV5$triggerOnSwapLightFunction()
        ];
        fluidDexTriggers = [listeners.fluidDexListener.FluidDexT1$triggerOnSwapEvent()];
        oneInchLOPV4Triggers = [
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillOrderFunction(),
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillOrderArgsFunction(),
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillContractOrderFunction(),
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillContractOrderArgsFunction()
        ];
        kyberSwapLOPTriggers = [
            listeners.kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillOrderRfqToFunction(),
            listeners.kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillOrderFunction(),
            listeners.kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillBatchOrdersToFunction(),
            listeners.kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillOrderToWithPermitFunction()
        ];
        maverickV2Triggers = [listeners.maverickV2Listener.MaverickV2Pool$triggerOnPoolSwapEvent()];
        ekuboTriggers = [
            listeners.ekuboListener.EkuboCore$triggerOnSwap611415377Function(),
            listeners.ekuboListener.EkuboCore$triggerPreLockFunction(),
            listeners.ekuboListener.EkuboCore$triggerOnLockFunction()
        ];
        zeroExProtocolTriggers = [
            listeners.zeroExProtocolListener.ExchangeV4$triggerOnOtcOrderFilledEvent(),
            listeners.zeroExProtocolListener.ExchangeV4$triggerOnRfqOrderFilledEvent(),
            listeners.zeroExProtocolListener.ExchangeV4$triggerOnLimitOrderFilledEvent()
        ];
    }

    function triggers() external virtual override {
        addTriggers(chainAbi(Chains.Ethereum, PSM$Abi()), psmTriggers);

        for (uint256 i = 0; i < univ2Chains.length; i++) {
            addTrigger(
                chainAbi(univ2Chains[i], UniswapV2Pair$Abi()),
                listeners.uniswapV2Listener.UniswapV2Pair$triggerOnSwapEvent()
            );
        }

        for (uint256 i = 0; i < univ3Chains.length; i++) {
            addTrigger(
                chainAbi(univ3Chains[i], UniswapV3Pool$Abi()),
                listeners.uniswapV3Listener.UniswapV3Pool$triggerOnSwapFunction()
            );
        }

        for (uint256 i = 0; i < bancorCarbonChains.length; i++) {
            addTrigger(
                chainContract(bancorCarbonChains[i], bancorController[bancorCarbonChains[i]]),
                listeners.carbonListener.BancorController$triggerOnTokensTradedEvent()
            );
        }

        for (uint256 i = 0; i < gpv2SettlementChains.length; i++) {
            addTriggers(
                chainContract(gpv2SettlementChains[i], 0x9008D19f58AAbD9eD0D60971565AA8510560ab41),
                gpv2SettlementTriggers
            );
        }

        for (uint256 i = 0; i < crocSwapChains.length; i++) {
            addTrigger(
                chainAbi(crocSwapChains[i], HotProxy$Abi()),
                listeners.crocSwapListener.HotProxy$triggerOnUserCmdFunction()
            );
        }

        for (uint256 i = 0; i < curveChains.length; i++) {
            addTrigger(
                chainAbi(curveChains[i], OldTokenExchange$Abi()),
                listeners.curveListener.OldTokenExchange$triggerOnTokenExchangeEvent()
            );
            addTrigger(
                chainAbi(curveChains[i], TokenExchange$Abi()),
                listeners.curveListener.TokenExchange$triggerOnTokenExchangeEvent()
            );
        }

        for (uint256 i = 0; i < balancerV2Chains.length; i++) {
            addTriggers(chainAbi(balancerV2Chains[i], Vault$Abi()), balancerV2Triggers);
        }

        for (uint256 i = 0; i < maverickV1Chains.length; i++) {
            addTrigger(
                chainAbi(maverickV1Chains[i], MaverickPool$Abi()),
                listeners.maverickV1Listener.MaverickPool$triggerOnSwapEvent()
            );
        }

        for (uint256 i = 0; i < uniswapXChains.length; i++) {
            addTriggers(chainAbi(uniswapXChains[i], Reactor$Abi()), uniswapXTriggers);
        }

        for (uint256 i = 0; i < uniswapV4Chains.length; i++) {
            addTrigger(
                chainContract(uniswapV4Chains[i], poolManager[uniswapV4Chains[i]]),
                listeners.uniswapV4Listener.PoolManager$triggerOnSwapFunction()
            );
        }

        for (uint256 i = 0; i < dodoV2Chains.length; i++) {
            addTrigger(
                chainAbi(dodoV2Chains[i], DODOSwap$Abi()), listeners.dodoV2Listener.DODOSwap$triggerOnDodoSwapEvent()
            );
        }

        for (uint256 i = 0; i < wooFiChains.length; i++) {
            addTrigger(chainAbi(wooFiChains[i], WooSwap$Abi()), listeners.wooFiListener.WooSwap$triggerOnWooSwapEvent());
        }

        addTrigger(
            chainContract(Chains.Ethereum, 0xd82FA167727a4dc6D6F55830A2c47aBbB4b3a0F8),
            listeners.airSwapV4Listener.AirSwapV4$triggerOnSwapErc20Event()
        );

        addTriggers(chainContract(Chains.Ethereum, 0xD82E10B9A4107939e55fCCa9B53A9ede6CF2fC46), airSwapV5Triggers);

        for (uint256 i = 0; i < fluidDexChains.length; i++) {
            addTrigger(
                chainAbi(fluidDexChains[i], FluidDexT1$Abi()),
                listeners.fluidDexListener.FluidDexT1$triggerOnSwapEvent()
            );
        }

        for (uint256 i = 0; i < oneInchLOPV4Chains.length; i++) {
            addTriggers(
                chainContract(oneInchLOPV4Chains[i], 0x111111125421cA6dc452d289314280a0f8842A65), oneInchLOPV4Triggers
            );
        }

        addTriggers(chainContract(Chains.Ethereum, 0x227B0c196eA8db17A665EA6824D972A64202E936), kyberSwapLOPTriggers);

        for (uint256 i = 0; i < kyberSwapLOPChains.length; i++) {
            addTrigger(
                chainContract(kyberSwapLOPChains[i], 0xcab2FA2eeab7065B45CBcF6E3936dDE2506b4f6C),
                listeners.kyberSwapLOPListener.DSLOProtocol$triggerOnFillOrderToFunction()
            );
        }

        for (uint256 i = 0; i < maverickV2Chains.length; i++) {
            addTrigger(
                chainAbi(maverickV2Chains[i], MaverickV2Pool$Abi()),
                listeners.maverickV2Listener.MaverickV2Pool$triggerOnPoolSwapEvent()
            );
        }

        addTriggers(chainContract(Chains.Ethereum, 0xe0e0e08A6A4b9Dc7bD67BCB7aadE5cF48157d444), ekuboTriggers);

        for (uint256 i = 0; i < zeroExProtocolChains.length; i++) {
            addTriggers(
                chainContract(zeroExProtocolChains[i], 0xDef1C0ded9bec7F1a1670819833240f027b25EfF),
                zeroExProtocolTriggers
            );
        }

        addTrigger(
            chainAbi(Chains.Ethereum, MainnetSettler$Abi()),
            listeners.zeroExSettlerListener.MainnetSettler$triggerOnExecuteFunction()
        );
    }
}
