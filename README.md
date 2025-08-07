# DEX Trades

**Index trades from a variety of DEXs across multi-chains**

## Supported DEXs

- Uniswap V2 (incl. forks, see a comprehensive list of supported forks [here](./listeners/src/UniswapV2.sol))
- Uniswap V3 (incl. forks, see a comprehensive list of supported forks [here](./listeners/src/UniswapV3.sol))
- Uniswap V4
- Uniswap X
- FluidDex
- KyberSwap Limit Order Protocol (incl. Double Signature Limit Order Protocol)
- 1inch Limit Order Protocol V4
- Ekubo
- Sky PSM (prev. Maker PSM)
- AirSwap V4
- AirSwap V5
- Bancor Carbon
- CoW Protocol
- Ambient.finance (prev. CrocSwap)
- Curve.fi
- Balancer V2 (and the Swaap V2 fork)
- DODO V2
- WooFi
- Maverick V1
- Maverick V2
- 0x Protocol
- 0x Settler (currently we only support `MainnetSettler` RFQ orders, i.e., no support for `MainnetSettlerIntent` or `MainnetSettlerMetaTxn`)
- Balancer V3
- EulerSwap
- Aerodrome Slipstream
- Aerodrome
- PancakeSwap Infinity (both `CLPoolManager` and `BinPoolManager`)

## Schema

The schema is defined [here](./listeners/src/types/DexTrades.sol)

### Example message:
```json
{
    "name": "DexTrade",
    "fields": {
        "blockNumber": "33797339",
        "blockTimestamp": "1754384025",
        "chainId": 8453,
        "dex": "TrebleSwap",
        "fromToken": "768be13e1680b5ebe0024c42c896e3db59ec0149",
        "fromTokenAmt": "6717000537",
        "fromTokenDecimals": 9,
        "fromTokenName": "SKI MASK DOG",
        "fromTokenSymbol": "SKI",
        "liquidityPool": "61398f0cface58668ee6e53b6789d21a1532baca",
        "recipient": "f525ff21c370beb8d9f5c12dc0da2b583f4b949f",
        "toToken": "4200000000000000000000000000000000000006",
        "toTokenAmt": "103811862031657",
        "toTokenDecimals": 18,
        "toTokenName": "Wrapped Ether",
        "toTokenSymbol": "WETH",
        "transactionHash": "0f30aefeea65af449ee6108ac25fa86fd2ee23c2c44c374bcfa24efe92ea7ed1",
        "txnOriginator": "3304000131ab6ae477c9741fedcfb6aa93fc94ef"
    },
    "metadata": {
        "blockNumber": 33797339,
        "chainId": 8453
    }
}
```