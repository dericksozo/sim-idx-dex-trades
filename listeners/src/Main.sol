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

    // per protocol config
    struct ProtocolConfig {
        Chains[] chains;
        Trigger[] triggers;
        mapping(Chains => address) chainIdToAddress;
    }

    ProtocolConfig internal psmConfig;
    ProtocolConfig internal univ2Config;
    ProtocolConfig internal univ3Config;
    ProtocolConfig internal bancorCarbonConfig;
    ProtocolConfig internal gpv2SettlementConfig;
    ProtocolConfig internal crocSwapConfig;
    ProtocolConfig internal curveConfig;
    ProtocolConfig internal balancerV2Config;
    ProtocolConfig internal maverickV1Config;
    ProtocolConfig internal uniswapXConfig;
    ProtocolConfig internal uniswapV4Config;
    ProtocolConfig internal dodoV2Config;
    ProtocolConfig internal wooFiConfig;
    ProtocolConfig internal airSwapV4Config;
    ProtocolConfig internal airSwapV5Config;
    ProtocolConfig internal fluidDexConfig;
    ProtocolConfig internal oneInchLOPV4Config;
    ProtocolConfig internal kyberSwapLOPConfig;
    ProtocolConfig internal maverickV2Config;
    ProtocolConfig internal ekuboConfig;
    ProtocolConfig internal zeroExProtocolConfig;
    ProtocolConfig internal zeroExSettlerConfig;

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
        bancorCarbonConfig.chainIdToAddress[Chains.Ethereum] = 0xC537e898CD774e2dCBa3B14Ea6f34C93d5eA45e1;
        bancorCarbonConfig.chainIdToAddress[Chains.Base] = 0xA4682A2A5Fe02feFF8Bd200240A41AD0E6EaF8d5;
        gpv2SettlementConfig.chainIdToAddress[Chains.Ethereum] = 0x9008D19f58AAbD9eD0D60971565AA8510560ab41;
        gpv2SettlementConfig.chainIdToAddress[Chains.Base] = 0x9008D19f58AAbD9eD0D60971565AA8510560ab41;
        uniswapV4Config.chainIdToAddress[Chains.Unichain] = 0x1F98400000000000000000000000000000000004;
        uniswapV4Config.chainIdToAddress[Chains.Zora] = 0x0575338e4C17006aE181B47900A84404247CA30f;
        uniswapV4Config.chainIdToAddress[Chains.WorldChain] = 0xb1860D529182ac3BC1F51Fa2ABd56662b7D13f33;
        uniswapV4Config.chainIdToAddress[Chains.Ink] = 0x360E68faCcca8cA495c1B759Fd9EEe466db9FB32;
        uniswapV4Config.chainIdToAddress[Chains.Soneium] = 0x360E68faCcca8cA495c1B759Fd9EEe466db9FB32;

        // per protocol supported chains
        univ2Config.chains = [Chains.Ethereum, Chains.Base];
        univ3Config.chains = [Chains.Ethereum, Chains.Base];
        bancorCarbonConfig.chains = [Chains.Ethereum, Chains.Base];
        gpv2SettlementConfig.chains = [Chains.Ethereum, Chains.Base];
        crocSwapConfig.chains = [Chains.Ethereum, Chains.Base];
        curveConfig.chains = [Chains.Ethereum, Chains.Base];
        balancerV2Config.chains = [Chains.Ethereum, Chains.Base];
        maverickV1Config.chains = [Chains.Ethereum, Chains.Base];
        uniswapXConfig.chains = [Chains.Ethereum, Chains.Base, Chains.Unichain];
        uniswapV4Config.chains =
            [Chains.Ethereum, Chains.Unichain, Chains.Base, Chains.Zora, Chains.WorldChain, Chains.Ink, Chains.Soneium];
        dodoV2Config.chains = [Chains.Ethereum, Chains.Base];
        wooFiConfig.chains = [Chains.Ethereum, Chains.Base];
        airSwapV4Config.chains = [Chains.Ethereum];
        airSwapV5Config.chains = [Chains.Ethereum];
        fluidDexConfig.chains = [Chains.Ethereum, Chains.Base];
        oneInchLOPV4Config.chains = [Chains.Ethereum, Chains.Base];
        kyberSwapLOPConfig.chains = [Chains.Ethereum, Chains.Base];
        maverickV2Config.chains = [Chains.Ethereum, Chains.Base];
        ekuboConfig.chains = [Chains.Ethereum];
        zeroExProtocolConfig.chains = [Chains.Ethereum, Chains.Base];
        zeroExSettlerConfig.chains = [Chains.Ethereum];

        // per protocol triggers
        psmConfig.triggers =
            [listeners.psmListener.PSM$triggerOnBuyGemFunction(), listeners.psmListener.PSM$triggerOnSellGemFunction()];
        univ2Config.triggers = [listeners.uniswapV2Listener.UniswapV2Pair$triggerOnSwapEvent()];
        univ3Config.triggers = [listeners.uniswapV3Listener.UniswapV3Pool$triggerOnSwapFunction()];
        bancorCarbonConfig.triggers = [listeners.carbonListener.BancorController$triggerOnTokensTradedEvent()];
        gpv2SettlementConfig.triggers = [
            listeners.gpv2SettlementListener.GPv2Settlement$triggerPreSettleFunction(),
            listeners.gpv2SettlementListener.GPv2Settlement$triggerOnSettleFunction(),
            listeners.gpv2SettlementListener.GPv2Settlement$triggerOnTradeEvent()
        ];
        crocSwapConfig.triggers = [listeners.crocSwapListener.HotProxy$triggerOnUserCmdFunction()];
        curveConfig.triggers = [
            listeners.curveListener.OldTokenExchange$triggerOnTokenExchangeEvent(),
            listeners.curveListener.TokenExchange$triggerOnTokenExchangeEvent()
        ];
        balancerV2Config.triggers = [
            listeners.balancerV2Listener.Vault$triggerPreSwapFunction(),
            listeners.balancerV2Listener.Vault$triggerPreBatchSwapFunction(),
            listeners.balancerV2Listener.Vault$triggerOnSwapEvent()
        ];
        maverickV1Config.triggers = [listeners.maverickV1Listener.MaverickPool$triggerOnSwapEvent()];
        uniswapXConfig.triggers = [
            listeners.uniswapXListener.Reactor$triggerPreExecuteFunction(),
            listeners.uniswapXListener.Reactor$triggerPreExecuteBatchFunction(),
            listeners.uniswapXListener.Reactor$triggerPreExecuteBatchWithCallbackFunction(),
            listeners.uniswapXListener.Reactor$triggerPreExecuteWithCallbackFunction()
        ];
        uniswapV4Config.triggers = [listeners.uniswapV4Listener.PoolManager$triggerOnSwapFunction()];
        dodoV2Config.triggers = [listeners.dodoV2Listener.DODOSwap$triggerOnDodoSwapEvent()];
        wooFiConfig.triggers = [listeners.wooFiListener.WooSwap$triggerOnWooSwapEvent()];
        airSwapV4Config.triggers = [listeners.airSwapV4Listener.AirSwapV4$triggerOnSwapErc20Event()];
        airSwapV5Config.triggers = [
            listeners.airSwapV5Listener.AirSwapV5$triggerOnSwapFunction(),
            listeners.airSwapV5Listener.AirSwapV5$triggerOnSwapAnySenderFunction(),
            listeners.airSwapV5Listener.AirSwapV5$triggerOnSwapLightFunction()
        ];
        fluidDexConfig.triggers = [listeners.fluidDexListener.FluidDexT1$triggerOnSwapEvent()];
        oneInchLOPV4Config.triggers = [
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillOrderFunction(),
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillOrderArgsFunction(),
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillContractOrderFunction(),
            listeners.oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillContractOrderArgsFunction()
        ];
        kyberSwapLOPConfig.triggers = [
            listeners.kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillOrderRfqToFunction(),
            listeners.kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillOrderFunction(),
            listeners.kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillBatchOrdersToFunction(),
            listeners.kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillOrderToWithPermitFunction()
        ];
        maverickV2Config.triggers = [listeners.maverickV2Listener.MaverickV2Pool$triggerOnPoolSwapEvent()];
        ekuboConfig.triggers = [
            listeners.ekuboListener.EkuboCore$triggerOnSwap611415377Function(),
            listeners.ekuboListener.EkuboCore$triggerPreLockFunction(),
            listeners.ekuboListener.EkuboCore$triggerOnLockFunction()
        ];
        zeroExProtocolConfig.triggers = [
            listeners.zeroExProtocolListener.ExchangeV4$triggerOnOtcOrderFilledEvent(),
            listeners.zeroExProtocolListener.ExchangeV4$triggerOnRfqOrderFilledEvent(),
            listeners.zeroExProtocolListener.ExchangeV4$triggerOnLimitOrderFilledEvent()
        ];
    }

    function triggers() external virtual override {
        addTriggers(chainAbi(Chains.Ethereum, PSM$Abi()), psmConfig.triggers);

        for (uint256 i = 0; i < univ2Config.chains.length; i++) {
            addTrigger(
                chainAbi(univ2Config.chains[i], UniswapV2Pair$Abi()),
                listeners.uniswapV2Listener.UniswapV2Pair$triggerOnSwapEvent()
            );
        }

        for (uint256 i = 0; i < univ3Config.chains.length; i++) {
            addTrigger(
                chainAbi(univ3Config.chains[i], UniswapV3Pool$Abi()),
                listeners.uniswapV3Listener.UniswapV3Pool$triggerOnSwapFunction()
            );
        }

        for (uint256 i = 0; i < bancorCarbonConfig.chains.length; i++) {
            addTrigger(
                chainContract(
                    bancorCarbonConfig.chains[i], bancorCarbonConfig.chainIdToAddress[bancorCarbonConfig.chains[i]]
                ),
                listeners.carbonListener.BancorController$triggerOnTokensTradedEvent()
            );
        }

        for (uint256 i = 0; i < gpv2SettlementConfig.chains.length; i++) {
            addTriggers(
                chainContract(
                    gpv2SettlementConfig.chains[i],
                    gpv2SettlementConfig.chainIdToAddress[gpv2SettlementConfig.chains[i]]
                ),
                gpv2SettlementConfig.triggers
            );
        }

        for (uint256 i = 0; i < crocSwapConfig.chains.length; i++) {
            addTrigger(
                chainAbi(crocSwapConfig.chains[i], HotProxy$Abi()),
                listeners.crocSwapListener.HotProxy$triggerOnUserCmdFunction()
            );
        }

        for (uint256 i = 0; i < curveConfig.chains.length; i++) {
            addTrigger(
                chainAbi(curveConfig.chains[i], OldTokenExchange$Abi()),
                listeners.curveListener.OldTokenExchange$triggerOnTokenExchangeEvent()
            );
            addTrigger(
                chainAbi(curveConfig.chains[i], TokenExchange$Abi()),
                listeners.curveListener.TokenExchange$triggerOnTokenExchangeEvent()
            );
        }

        for (uint256 i = 0; i < balancerV2Config.chains.length; i++) {
            addTriggers(chainAbi(balancerV2Config.chains[i], Vault$Abi()), balancerV2Config.triggers);
        }

        for (uint256 i = 0; i < maverickV1Config.chains.length; i++) {
            addTrigger(
                chainAbi(maverickV1Config.chains[i], MaverickPool$Abi()),
                listeners.maverickV1Listener.MaverickPool$triggerOnSwapEvent()
            );
        }

        for (uint256 i = 0; i < uniswapXConfig.chains.length; i++) {
            addTriggers(chainAbi(uniswapXConfig.chains[i], Reactor$Abi()), uniswapXConfig.triggers);
        }

        for (uint256 i = 0; i < uniswapV4Config.chains.length; i++) {
            addTrigger(
                chainContract(uniswapV4Config.chains[i], uniswapV4Config.chainIdToAddress[uniswapV4Config.chains[i]]),
                listeners.uniswapV4Listener.PoolManager$triggerOnSwapFunction()
            );
        }

        for (uint256 i = 0; i < dodoV2Config.chains.length; i++) {
            addTrigger(
                chainAbi(dodoV2Config.chains[i], DODOSwap$Abi()),
                listeners.dodoV2Listener.DODOSwap$triggerOnDodoSwapEvent()
            );
        }

        for (uint256 i = 0; i < wooFiConfig.chains.length; i++) {
            addTrigger(
                chainAbi(wooFiConfig.chains[i], WooSwap$Abi()), listeners.wooFiListener.WooSwap$triggerOnWooSwapEvent()
            );
        }

        addTrigger(
            chainContract(Chains.Ethereum, 0xd82FA167727a4dc6D6F55830A2c47aBbB4b3a0F8),
            listeners.airSwapV4Listener.AirSwapV4$triggerOnSwapErc20Event()
        );

        addTriggers(
            chainContract(Chains.Ethereum, 0xD82E10B9A4107939e55fCCa9B53A9ede6CF2fC46), airSwapV5Config.triggers
        );

        for (uint256 i = 0; i < fluidDexConfig.chains.length; i++) {
            addTrigger(
                chainAbi(fluidDexConfig.chains[i], FluidDexT1$Abi()),
                listeners.fluidDexListener.FluidDexT1$triggerOnSwapEvent()
            );
        }

        for (uint256 i = 0; i < oneInchLOPV4Config.chains.length; i++) {
            addTriggers(
                chainContract(oneInchLOPV4Config.chains[i], 0x111111125421cA6dc452d289314280a0f8842A65),
                oneInchLOPV4Config.triggers
            );
        }

        addTriggers(
            chainContract(Chains.Ethereum, 0x227B0c196eA8db17A665EA6824D972A64202E936), kyberSwapLOPConfig.triggers
        );

        for (uint256 i = 0; i < kyberSwapLOPConfig.chains.length; i++) {
            addTrigger(
                chainContract(kyberSwapLOPConfig.chains[i], 0xcab2FA2eeab7065B45CBcF6E3936dDE2506b4f6C),
                listeners.kyberSwapLOPListener.DSLOProtocol$triggerOnFillOrderToFunction()
            );
        }

        for (uint256 i = 0; i < maverickV2Config.chains.length; i++) {
            addTrigger(
                chainAbi(maverickV2Config.chains[i], MaverickV2Pool$Abi()),
                listeners.maverickV2Listener.MaverickV2Pool$triggerOnPoolSwapEvent()
            );
        }

        addTriggers(chainContract(Chains.Ethereum, 0xe0e0e08A6A4b9Dc7bD67BCB7aadE5cF48157d444), ekuboConfig.triggers);

        for (uint256 i = 0; i < zeroExProtocolConfig.chains.length; i++) {
            addTriggers(
                chainContract(zeroExProtocolConfig.chains[i], 0xDef1C0ded9bec7F1a1670819833240f027b25EfF),
                zeroExProtocolConfig.triggers
            );
        }

        addTrigger(
            chainAbi(Chains.Ethereum, MainnetSettler$Abi()),
            listeners.zeroExSettlerListener.MainnetSettler$triggerOnExecuteFunction()
        );
    }
}
