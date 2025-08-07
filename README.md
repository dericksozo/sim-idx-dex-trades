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
- Balancer V2 (and its Swaap V2 fork)
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
