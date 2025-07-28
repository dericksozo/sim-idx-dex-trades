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

    // per protocol config
    struct ProtocolConfigAddress {
        Chains[] chains;
        Trigger[] triggers;
        mapping(Chains => ChainIdContract) chainIdToAddress;
    }

    struct ProtocolConfigAbi {
        Chains[] chains;
        Trigger[] triggers;
        mapping(Chains => ChainIdAbi) chainIdToAbi;
    }

    ProtocolConfigAbi internal psmConfig;
    ProtocolConfigAbi internal univ2Config;
    ProtocolConfigAbi internal univ3Config;
    ProtocolConfigAddress internal bancorCarbonConfig;
    ProtocolConfigAddress internal gpv2SettlementConfig;
    ProtocolConfigAbi internal crocSwapConfig;
    ProtocolConfigAbi internal curveOldExchangeConfig;
    ProtocolConfigAbi internal curveExchangeConfig;
    ProtocolConfigAbi internal balancerV2Config;
    ProtocolConfigAbi internal maverickV1Config;
    ProtocolConfigAbi internal uniswapXConfig;
    ProtocolConfigAddress internal uniswapV4Config;
    ProtocolConfigAbi internal dodoV2Config;
    ProtocolConfigAbi internal wooFiConfig;
    ProtocolConfigAddress internal airSwapV4Config;
    ProtocolConfigAddress internal airSwapV5Config;
    ProtocolConfigAbi internal fluidDexConfig;
    ProtocolConfigAddress internal oneInchLOPV4Config;
    ProtocolConfigAddress internal kyberSwapLOPConfig;
    ProtocolConfigAddress internal kyberSwapDSLOPConfig;
    ProtocolConfigAbi internal maverickV2Config;
    ProtocolConfigAddress internal ekuboConfig;
    ProtocolConfigAddress internal zeroExProtocolConfig;
    ProtocolConfigAbi internal zeroExSettlerConfig;

    constructor() {
        // init listeners
        psmListener = new MakerPSMListener();
        uniswapV2Listener = new UniswapV2Listener();
        uniswapV3Listener = new UniswapV3Listener();
        carbonListener = new BancorCarbonListener();
        gpv2SettlementListener = new GPv2SettlementListener();
        crocSwapListener = new CrocSwapListener();
        curveListener = new CurveListener();
        balancerV2Listener = new BalancerV2Listener();
        maverickV1Listener = new MaverickV1Listener();
        uniswapXListener = new UniswapXListener();
        uniswapV4Listener = new UniswapV4Listener();
        dodoV2Listener = new DODOV2Listener();
        wooFiListener = new WooFiListener();
        airSwapV4Listener = new AirSwapV4Listener();
        airSwapV5Listener = new AirSwapV5Listener();
        fluidDexListener = new FluidDexListener();
        oneInchLOPV4Listener = new OneInchLOPV4Listener();
        kyberSwapLOPListener = new KyberSwapLOPListener();
        maverickV2Listener = new MaverickV2Listener();
        ekuboListener = new EkuboListener();
        zeroExProtocolListener = new ZeroExProtocolListener();
        zeroExSettlerListener = new ZeroExSettlerListener();

        // address resolving
        bancorCarbonConfig.chainIdToAddress[Chains.Ethereum] =
            chainContract(Chains.Ethereum, 0xC537e898CD774e2dCBa3B14Ea6f34C93d5eA45e1);
        bancorCarbonConfig.chainIdToAddress[Chains.Base] =
            chainContract(Chains.Base, 0xA4682A2A5Fe02feFF8Bd200240A41AD0E6EaF8d5);
        gpv2SettlementConfig.chainIdToAddress[Chains.Ethereum] =
            chainContract(Chains.Ethereum, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41);
        gpv2SettlementConfig.chainIdToAddress[Chains.Base] =
            chainContract(Chains.Base, 0x9008D19f58AAbD9eD0D60971565AA8510560ab41);
        uniswapV4Config.chainIdToAddress[Chains.Unichain] =
            chainContract(Chains.Unichain, 0x1F98400000000000000000000000000000000004);
        uniswapV4Config.chainIdToAddress[Chains.Zora] =
            chainContract(Chains.Zora, 0x0575338e4C17006aE181B47900A84404247CA30f);
        uniswapV4Config.chainIdToAddress[Chains.WorldChain] =
            chainContract(Chains.WorldChain, 0xb1860D529182ac3BC1F51Fa2ABd56662b7D13f33);
        uniswapV4Config.chainIdToAddress[Chains.Ink] =
            chainContract(Chains.Ink, 0x360E68faCcca8cA495c1B759Fd9EEe466db9FB32);
        uniswapV4Config.chainIdToAddress[Chains.Soneium] =
            chainContract(Chains.Soneium, 0x360E68faCcca8cA495c1B759Fd9EEe466db9FB32);
        airSwapV4Config.chainIdToAddress[Chains.Ethereum] =
            chainContract(Chains.Ethereum, 0xd82FA167727a4dc6D6F55830A2c47aBbB4b3a0F8);
        airSwapV5Config.chainIdToAddress[Chains.Ethereum] =
            chainContract(Chains.Ethereum, 0xD82E10B9A4107939e55fCCa9B53A9ede6CF2fC46);
        kyberSwapLOPConfig.chainIdToAddress[Chains.Ethereum] =
            chainContract(Chains.Ethereum, 0x227B0c196eA8db17A665EA6824D972A64202E936);
        kyberSwapDSLOPConfig.chainIdToAddress[Chains.Ethereum] =
            chainContract(Chains.Ethereum, 0xcab2FA2eeab7065B45CBcF6E3936dDE2506b4f6C);
        kyberSwapLOPConfig.chainIdToAddress[Chains.Base] =
            chainContract(Chains.Base, 0x227B0c196eA8db17A665EA6824D972A64202E936);
        kyberSwapDSLOPConfig.chainIdToAddress[Chains.Base] =
            chainContract(Chains.Base, 0xcab2FA2eeab7065B45CBcF6E3936dDE2506b4f6C);
        ekuboConfig.chainIdToAddress[Chains.Ethereum] =
            chainContract(Chains.Ethereum, 0xe0e0e08A6A4b9Dc7bD67BCB7aadE5cF48157d444);
        zeroExProtocolConfig.chainIdToAddress[Chains.Ethereum] =
            chainContract(Chains.Ethereum, 0xDef1C0ded9bec7F1a1670819833240f027b25EfF);
        oneInchLOPV4Config.chainIdToAddress[Chains.Ethereum] =
            chainContract(Chains.Ethereum, 0x111111125421cA6dc452d289314280a0f8842A65);
        oneInchLOPV4Config.chainIdToAddress[Chains.Base] =
            chainContract(Chains.Base, 0x111111125421cA6dc452d289314280a0f8842A65);

        // protocol to abi
        psmConfig.chainIdToAbi[Chains.Ethereum] = chainAbi(Chains.Ethereum, PSM$Abi());
        univ2Config.chainIdToAbi[Chains.Ethereum] = chainAbi(Chains.Ethereum, UniswapV2Pair$Abi());
        univ2Config.chainIdToAbi[Chains.Base] = chainAbi(Chains.Base, UniswapV2Pair$Abi());
        univ3Config.chainIdToAbi[Chains.Ethereum] = chainAbi(Chains.Ethereum, UniswapV3Pool$Abi());
        univ3Config.chainIdToAbi[Chains.Base] = chainAbi(Chains.Base, UniswapV3Pool$Abi());
        crocSwapConfig.chainIdToAbi[Chains.Ethereum] = chainAbi(Chains.Ethereum, HotProxy$Abi());
        crocSwapConfig.chainIdToAbi[Chains.Base] = chainAbi(Chains.Base, HotProxy$Abi());
        curveOldExchangeConfig.chainIdToAbi[Chains.Ethereum] = chainAbi(Chains.Ethereum, OldTokenExchange$Abi());
        curveExchangeConfig.chainIdToAbi[Chains.Ethereum] = chainAbi(Chains.Ethereum, TokenExchange$Abi());
        curveOldExchangeConfig.chainIdToAbi[Chains.Base] = chainAbi(Chains.Base, OldTokenExchange$Abi());
        curveExchangeConfig.chainIdToAbi[Chains.Base] = chainAbi(Chains.Base, TokenExchange$Abi());
        balancerV2Config.chainIdToAbi[Chains.Ethereum] = chainAbi(Chains.Ethereum, Vault$Abi());
        maverickV1Config.chainIdToAbi[Chains.Ethereum] = chainAbi(Chains.Ethereum, MaverickPool$Abi());
        uniswapXConfig.chainIdToAbi[Chains.Ethereum] = chainAbi(Chains.Ethereum, Reactor$Abi());
        dodoV2Config.chainIdToAbi[Chains.Ethereum] = chainAbi(Chains.Ethereum, DODOSwap$Abi());
        dodoV2Config.chainIdToAbi[Chains.Base] = chainAbi(Chains.Base, DODOSwap$Abi());
        wooFiConfig.chainIdToAbi[Chains.Ethereum] = chainAbi(Chains.Ethereum, WooSwap$Abi());
        wooFiConfig.chainIdToAbi[Chains.Base] = chainAbi(Chains.Base, WooSwap$Abi());
        fluidDexConfig.chainIdToAbi[Chains.Ethereum] = chainAbi(Chains.Ethereum, FluidDexT1$Abi());
        fluidDexConfig.chainIdToAbi[Chains.Base] = chainAbi(Chains.Base, FluidDexT1$Abi());
        maverickV2Config.chainIdToAbi[Chains.Ethereum] = chainAbi(Chains.Ethereum, MaverickV2Pool$Abi());
        maverickV2Config.chainIdToAbi[Chains.Base] = chainAbi(Chains.Base, MaverickV2Pool$Abi());
        zeroExSettlerConfig.chainIdToAbi[Chains.Ethereum] = chainAbi(Chains.Ethereum, MainnetSettler$Abi());

        // per protocol supported chains
        univ2Config.chains = [Chains.Ethereum, Chains.Base];
        univ3Config.chains = [Chains.Ethereum, Chains.Base];
        bancorCarbonConfig.chains = [Chains.Ethereum, Chains.Base];
        gpv2SettlementConfig.chains = [Chains.Ethereum, Chains.Base];
        crocSwapConfig.chains = [Chains.Ethereum, Chains.Base];
        curveOldExchangeConfig.chains = [Chains.Ethereum, Chains.Base];
        curveExchangeConfig.chains = [Chains.Ethereum, Chains.Base];
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
        kyberSwapDSLOPConfig.chains = [Chains.Ethereum, Chains.Base];
        maverickV2Config.chains = [Chains.Ethereum, Chains.Base];
        ekuboConfig.chains = [Chains.Ethereum];
        zeroExProtocolConfig.chains = [Chains.Ethereum, Chains.Base];
        zeroExSettlerConfig.chains = [Chains.Ethereum];

        // per protocol triggers
        psmConfig.triggers = [psmListener.PSM$triggerOnBuyGemFunction(), psmListener.PSM$triggerOnSellGemFunction()];
        univ2Config.triggers = [uniswapV2Listener.UniswapV2Pair$triggerOnSwapEvent()];
        univ3Config.triggers = [uniswapV3Listener.UniswapV3Pool$triggerOnSwapFunction()];
        bancorCarbonConfig.triggers = [carbonListener.BancorController$triggerOnTokensTradedEvent()];
        gpv2SettlementConfig.triggers = [
            gpv2SettlementListener.GPv2Settlement$triggerPreSettleFunction(),
            gpv2SettlementListener.GPv2Settlement$triggerOnSettleFunction(),
            gpv2SettlementListener.GPv2Settlement$triggerOnTradeEvent()
        ];
        crocSwapConfig.triggers = [crocSwapListener.HotProxy$triggerOnUserCmdFunction()];
        curveOldExchangeConfig.triggers = [curveListener.OldTokenExchange$triggerOnTokenExchangeEvent()];
        curveExchangeConfig.triggers = [curveListener.TokenExchange$triggerOnTokenExchangeEvent()];
        balancerV2Config.triggers = [
            balancerV2Listener.Vault$triggerPreSwapFunction(),
            balancerV2Listener.Vault$triggerPreBatchSwapFunction(),
            balancerV2Listener.Vault$triggerOnSwapEvent()
        ];
        maverickV1Config.triggers = [maverickV1Listener.MaverickPool$triggerOnSwapEvent()];
        uniswapXConfig.triggers = [
            uniswapXListener.Reactor$triggerPreExecuteFunction(),
            uniswapXListener.Reactor$triggerPreExecuteBatchFunction(),
            uniswapXListener.Reactor$triggerPreExecuteBatchWithCallbackFunction(),
            uniswapXListener.Reactor$triggerPreExecuteWithCallbackFunction()
        ];
        uniswapV4Config.triggers = [uniswapV4Listener.PoolManager$triggerOnSwapFunction()];
        dodoV2Config.triggers = [dodoV2Listener.DODOSwap$triggerOnDodoSwapEvent()];
        wooFiConfig.triggers = [wooFiListener.WooSwap$triggerOnWooSwapEvent()];
        airSwapV4Config.triggers = [airSwapV4Listener.AirSwapV4$triggerOnSwapErc20Event()];
        airSwapV5Config.triggers = [
            airSwapV5Listener.AirSwapV5$triggerOnSwapFunction(),
            airSwapV5Listener.AirSwapV5$triggerOnSwapAnySenderFunction(),
            airSwapV5Listener.AirSwapV5$triggerOnSwapLightFunction()
        ];
        fluidDexConfig.triggers = [fluidDexListener.FluidDexT1$triggerOnSwapEvent()];
        oneInchLOPV4Config.triggers = [
            oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillOrderFunction(),
            oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillOrderArgsFunction(),
            oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillContractOrderFunction(),
            oneInchLOPV4Listener.AggregationRouterV6$triggerOnFillContractOrderArgsFunction()
        ];
        kyberSwapLOPConfig.triggers = [
            kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillOrderRfqToFunction(),
            kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillOrderFunction(),
            kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillBatchOrdersToFunction(),
            kyberSwapLOPListener.LimitOrderProtocol$triggerOnFillOrderToWithPermitFunction()
        ];
        kyberSwapDSLOPConfig.triggers = [kyberSwapLOPListener.DSLOProtocol$triggerOnFillOrderToFunction()];
        maverickV2Config.triggers = [maverickV2Listener.MaverickV2Pool$triggerOnPoolSwapEvent()];
        ekuboConfig.triggers = [
            ekuboListener.EkuboCore$triggerOnSwap611415377Function(),
            ekuboListener.EkuboCore$triggerPreLockFunction(),
            ekuboListener.EkuboCore$triggerOnLockFunction()
        ];
        zeroExProtocolConfig.triggers = [
            zeroExProtocolListener.ExchangeV4$triggerOnOtcOrderFilledEvent(),
            zeroExProtocolListener.ExchangeV4$triggerOnRfqOrderFilledEvent(),
            zeroExProtocolListener.ExchangeV4$triggerOnLimitOrderFilledEvent()
        ];
    }

    function addTriggerForProtocol(ProtocolConfigAbi storage config) internal {
        for (uint256 i = 0; i < config.chains.length; i++) {
            addTriggers(config.chainIdToAbi[config.chains[i]], config.triggers);
        }
    }

    function addTriggerForProtocol(ProtocolConfigAddress storage config) internal {
        for (uint256 i = 0; i < config.chains.length; i++) {
            addTriggers(config.chainIdToAddress[config.chains[i]], config.triggers);
        }
    }

    function triggers() external virtual override {
        addTriggerForProtocol(psmConfig);
        addTriggerForProtocol(univ2Config);
        addTriggerForProtocol(univ3Config);
        addTriggerForProtocol(bancorCarbonConfig);
        addTriggerForProtocol(gpv2SettlementConfig);
        addTriggerForProtocol(crocSwapConfig);
        addTriggerForProtocol(curveOldExchangeConfig);
        addTriggerForProtocol(curveExchangeConfig);
        addTriggerForProtocol(balancerV2Config);
        addTriggerForProtocol(maverickV1Config);
        addTriggerForProtocol(uniswapXConfig);
        addTriggerForProtocol(uniswapV4Config);
        addTriggerForProtocol(dodoV2Config);
        addTriggerForProtocol(wooFiConfig);
        addTriggerForProtocol(airSwapV4Config);
        addTriggerForProtocol(airSwapV5Config);
        addTriggerForProtocol(fluidDexConfig);
        addTriggerForProtocol(oneInchLOPV4Config);
        addTriggerForProtocol(kyberSwapLOPConfig);
        addTriggerForProtocol(kyberSwapDSLOPConfig);
        addTriggerForProtocol(maverickV2Config);
        addTriggerForProtocol(ekuboConfig);
        addTriggerForProtocol(zeroExProtocolConfig);
        addTriggerForProtocol(zeroExSettlerConfig);
    }
}
