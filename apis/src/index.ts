import { inArray, desc, and, max, sql, eq } from "drizzle-orm";
import { randomUUID } from "crypto";
import { dexTrade } from "./db/schema/Listener";
import { types, db, App, middlewares } from "@duneanalytics/sim-idx";

// Initialize the Hono application using the Sim IDX wrapper
const app = App.create();

// Apply authentication middleware to all routes as a security best practice.
// This requires a valid API key for all deployed endpoints.
app.use("*", middlewares.authentication);

/**
 * A fallback list of supported chain IDs used if the remote fetch fails.
 */
const fallbackSupportedChains: types.Uint[] = [
  1, 8453, 10, 1301, 480, 7777777, 57073, 60808, 1946, 34443, 11155111, 84532,
].map((id) => new types.Uint(BigInt(id)));

/**
 * Fetch supported chains from the Sim IDX API.
 */
async function fetchSupportedChains(): Promise<types.Uint[]> {
  try {
    const res = await (globalThis as any).fetch(
      "http://api.sim.dune.com/idx/supported-chains",
      { headers: { accept: "application/json" } }
    );
    if (!res?.ok) throw new Error(`HTTP ${res?.status}`);
    const data = await res.json() as { chains?: { name?: string; chain_id?: number }[] };
    const chainIds = (data.chains ?? [])
      .map((c) => Number(c.chain_id))
      .filter((id) => Number.isInteger(id) && id > 0);
    if (chainIds.length === 0) throw new Error("Empty chains list from remote");
    return chainIds.map((id) => new types.Uint(BigInt(id)));
  } catch (e) {
    globalThis.console?.error("Failed to fetch supported chains:", e);
    return fallbackSupportedChains;
  }
}

// Caching intentionally removed per request; focusing on query and payload optimizations only.

/**
 * Endpoint for Real-Time DEX Status Updates.
 *
 * This endpoint provides a summary for each DEX, including the timestamp of its latest trade
 * and a count of all trades within the last 24 hours. It's designed to be called
 * frequently by the front-end to showcase DEXes updating in real-time.
 */
app.get("/dexes/status", async (c) => {
  try {
    const nowSec = Math.floor(Date.now() / 1000);
    const windowParam = c.req.query("window");
    const windowSecs = windowParam ? Math.max(parseInt(windowParam, 10) || 0, 60) : 24 * 60 * 60;
    const fromTs = nowSec - windowSecs;

    const result = await db
      .client(c)
      .select({
        dex: dexTrade.dex,
        lastTradeTimestamp: max(dexTrade.blockTimestamp),
        tradesWindow: sql<number>`COUNT(*)`.mapWith(Number),
      })
      .from(dexTrade)
      .where(sql`${dexTrade.blockTimestamp} >= ${fromTs}`)
      .groupBy(dexTrade.dex)
      .orderBy(desc(max(dexTrade.blockTimestamp)));
    return c.json({ result });
  } catch (e) {
    globalThis.console?.error("Database operation failed in /dexes/status:", e);
    return c.json({ error: "Failed to retrieve DEX status." }, 500);
  }
});

/**
 * Per (chain, dex) summary for the main page grid with key counts.
 * Defaults to last 24h window and also provides 5m activity count.
 */
app.get("/summary", async (c) => {
  try {
    const chainIdsParam = c.req.query("chainIds");
    const dexesParam = c.req.query("dexes");
    const windowParam = c.req.query("window");

    const nowSec = Math.floor(Date.now() / 1000);
    const windowSecs = windowParam ? Math.max(parseInt(windowParam, 10) || 0, 60) : 24 * 60 * 60;
    const fromTs = nowSec - windowSecs;
    const fromTs5m = nowSec - 300;

    const conditions = [sql`${dexTrade.blockTimestamp} >= ${fromTs}`];

    if (chainIdsParam) {
      const chainIds = chainIdsParam
        .split(",")
        .map((id) => new types.Uint(BigInt(parseInt(id.trim(), 10))))
        .filter((v) => !Number.isNaN(Number(v)));
      if (chainIds.length > 0) conditions.push(inArray(dexTrade.chainId, chainIds));
    } else {
      const fetchedChains = await fetchSupportedChains();
      conditions.push(inArray(dexTrade.chainId, fetchedChains));
    }

    if (dexesParam) {
      const dexes = dexesParam.split(",").map((d) => d.trim());
      if (dexes.length > 0) conditions.push(inArray(dexTrade.dex, dexes));
    }

    const whereCondition = and(...conditions);

    const result = await db
      .client(c)
      .select({
        chainId: dexTrade.chainId,
        dex: dexTrade.dex,
        lastTradeTimestamp: max(dexTrade.blockTimestamp),
        tradesWindow: sql<number>`COUNT(*)`.mapWith(Number),
        trades5m: sql<number>`COUNT(*) FILTER (WHERE ${dexTrade.blockTimestamp} >= ${fromTs5m})`.mapWith(Number),
      })
      .from(dexTrade)
      .where(whereCondition)
      .groupBy(dexTrade.chainId, dexTrade.dex)
      .orderBy(desc(max(dexTrade.blockTimestamp)));

    return c.json({ result });
  } catch (e) {
    globalThis.console?.error("Database operation failed in /summary:", e);
    return c.json({ error: "Failed to retrieve summary." }, 500);
  }
});

/**
 * Endpoint for Fetching All Trades with Filtering and Pagination.
 *
 * This is a versatile endpoint for retrieving historical and real-time trade data.
 * It allows filtering by one or more DEXes and/or chains, with pagination support.
 *
 * Query Parameters:
 *  - `chainIds` (optional): Comma-separated list of chain IDs (e.g., "1,8453").
 *  - `dexes` (optional): Comma-separated list of DEX names (e.g., "UniswapV3,SushiSwapV2").
 *  - `limit` (optional): Number of trades per page. Defaults to 100. Max is 1000.
 *  - `offset` (optional): Number of trades to skip. Defaults to 0.
 */
app.get("/trades", async (c) => {
  try {
    const chainIdsParam = c.req.query("chainIds");
    const dexesParam = c.req.query("dexes");
    const limitParam = c.req.query("limit");
    const fieldsParam = c.req.query("fields");
    const beforeTsParam = c.req.query("beforeTs");
    const beforeHashParam = c.req.query("beforeHash");

    let limit = limitParam ? parseInt(limitParam, 10) : 50;
    if (Number.isNaN(limit) || limit <= 0) limit = 50;
    if (limit > 100) limit = 100;

    const conditions = [] as any[];

    if (chainIdsParam) {
      const chainIds = chainIdsParam
        .split(",")
        .map((id) => new types.Uint(BigInt(parseInt(id.trim(), 10))));
      if (chainIds.length > 0) conditions.push(inArray(dexTrade.chainId, chainIds));
    } else {
      const fetchedChains = await fetchSupportedChains();
      conditions.push(inArray(dexTrade.chainId, fetchedChains));
    }

    if (dexesParam) {
      const dexes = dexesParam.split(",").map((d) => d.trim());
      if (dexes.length > 0) conditions.push(inArray(dexTrade.dex, dexes));
    }

    const beforeTs = beforeTsParam ? parseInt(beforeTsParam, 10) : undefined;
    const beforeHash = beforeHashParam && /^0x[a-fA-F0-9]{64}$/.test(beforeHashParam)
      ? beforeHashParam
      : undefined;
    if (beforeTs && beforeHash) {
      const hex = beforeHash.slice(2);
      conditions.push(
        sql`(${dexTrade.blockTimestamp} < ${beforeTs} OR (${dexTrade.blockTimestamp} = ${beforeTs} AND ${dexTrade.transactionHash} < decode(${hex}, 'hex')))`
      );
    } else if (beforeTs) {
      conditions.push(sql`${dexTrade.blockTimestamp} < ${beforeTs}`);
    }

    const whereCondition = conditions.length > 0 ? and(...conditions) : undefined;

    const fieldsFull = (fieldsParam || "").toLowerCase() === "full";
    const summaryCols = {
      chainId: dexTrade.chainId,
      blockNumber: dexTrade.blockNumber,
      blockTimestamp: dexTrade.blockTimestamp,
      transactionHash: dexTrade.transactionHash,
      dex: dexTrade.dex,
      fromTokenSymbol: dexTrade.fromTokenSymbol,
      toTokenSymbol: dexTrade.toTokenSymbol,
    };

    const query = db
      .client(c)
      .select(fieldsFull ? undefined : summaryCols)
      .from(dexTrade)
      .orderBy(desc(dexTrade.blockTimestamp), desc(dexTrade.transactionHash))
      .limit(limit);

    if (whereCondition) query.where(whereCondition);

    const result = await query;
    return c.json({ result });
  } catch (e) {
    globalThis.console?.error("Database operation failed in /trades:", e);
    return c.json({ error: "Failed to retrieve trades." }, 500);
  }
});

/**
 * Endpoint to Fetch Trades by Transaction Hash.
 *
 * Retrieves all individual trades that occurred within a single on-chain transaction.
 *
 * Path Parameter:
 *  - `txHash`: The unique transaction hash (from DexTradeData.transactionHash).
 */
app.get("/trades/tx/:txHash", async (c) => {
  try {
    const txHash = c.req.param("txHash");

    if (!txHash || !/^0x[a-fA-F0-9]{64}$/.test(txHash)) {
      return c.json({ error: "A valid transaction hash is required." }, 400);
    }

    // Filters by the `transaction_hash` column (bytes32)
    // Convert '0x...' hex string to bytea using SQL decode to match bytes32 column
    const hex = txHash.slice(2); // strip 0x
    const result = await db
      .client(c)
      .select()
      .from(dexTrade)
      .where(eq(dexTrade.transactionHash, sql`decode(${hex}, 'hex')`));

    if (result.length === 0) {
      return c.json({ error: "No trades found for this transaction hash." }, 404);
    }

    return c.json({ result });
  } catch (e) {
    const id = randomUUID();
    globalThis.console?.error(`Database operation failed in /trades/tx/:txHash [${id}]:`, e);
    return c.json({ error: "Internal error", id }, 500);
  }
});

/**
 * Latest trade for a given (chainId, dex) pair.
 */
app.get("/latest", async (c) => {
  try {
    const chainIdParam = c.req.query("chainId");
    const dexParam = c.req.query("dex");

    if (!chainIdParam || !dexParam) {
      return c.json({ error: "chainId and dex are required" }, 400);
    }

    const chainId = new types.Uint(BigInt(parseInt(chainIdParam, 10)));
    const dexName = dexParam.trim();

    const result = await db
      .client(c)
      .select()
      .from(dexTrade)
      .where(and(eq(dexTrade.chainId, chainId), eq(dexTrade.dex, dexName)))
      .orderBy(desc(dexTrade.blockTimestamp), desc(dexTrade.transactionHash))
      .limit(1);

    if (result.length === 0) {
      return c.json({ error: "No trade found for this (chainId, dex)." }, 404);
    }

    return c.json({ result: result[0] });
  } catch (e) {
    globalThis.console?.error("Database operation failed in /latest:", e);
    return c.json({ error: "Failed to retrieve latest trade." }, 500);
  }
});

/**
 * Endpoint to Get a List of All DEX Names (Static Data).
 *
 * Returns a static list of all DEXes based on the listener configuration.
 * This eliminates expensive database queries and provides instant response times.
 */
app.get("/dexes", (c) => {
  const dexes = [
    "MakerPSM",
    "UniswapV2", 
    "UniswapV3",
    "BancorCarbon",
    "CoWProtocol",
    "CrocSwap",
    "Curve",
    "BalancerV2",
    "MaverickV1",
    "UniswapX",
    "UniswapV4",
    "DODOV2",
    "WooFi",
    "AirSwapV4",
    "AirSwapV5",
    "FluidDex",
    "1InchLOPV4",
    "KyberSwapLOP",
    "KyberSwapDSLOP",
    "MaverickV2",
    "Ekubo",
    "0xProtocol",
    "0xSettler",
    "BalancerV3",
    "EulerSwap",
    "AerodromeSlipstream",
    "Aerodrome",
    "PancakeSwapV3",
    "PancakeSwapInfinity",
    "PancakeSwapV4",
    "AlgebraIntegral",
    "Algebra",
    "GMXV2",
    "Renegade"
  ].sort();

  return c.json({ result: dexes });
});

/**
 * Endpoint to Get DEXes for a Specific Chain.
 *
 * Returns all DEXes that operate on the specified chain ID.
 * Based on the static configuration from Main.sol listener setup.
 *
 * Query Parameters:
 *  - `chainId` (required): The chain ID to get DEXes for (e.g., "1", "8453").
 */
app.get("/dex-chains", (c) => {
  const chainIdParam = c.req.query("chainId");
  
  if (!chainIdParam) {
    return c.json({ error: "chainId parameter is required" }, 400);
  }

  const chainId = parseInt(chainIdParam, 10);
  if (Number.isNaN(chainId)) {
    return c.json({ error: "chainId must be a valid number" }, 400);
  }

  // Static mapping based on Main.sol configuration
  const chainToDexes: Record<number, string[]> = {
    1: [ // Ethereum
      "MakerPSM", "UniswapV2", "UniswapV3", "BancorCarbon", "CoWProtocol", 
      "CrocSwap", "Curve", "BalancerV2", "MaverickV1", "UniswapX", "UniswapV4",
      "DODOV2", "WooFi", "AirSwapV4", "AirSwapV5", "FluidDex", "1InchLOPV4",
      "KyberSwapLOP", "KyberSwapDSLOP", "MaverickV2", "Ekubo", "0xProtocol",
      "0xSettler", "BalancerV3", "EulerSwap", "PancakeSwapV3"
    ],
    8453: [ // Base
      "UniswapV2", "UniswapV3", "BancorCarbon", "CoWProtocol", "CrocSwap", 
      "Curve", "BalancerV2", "MaverickV1", "UniswapX", "UniswapV4", "DODOV2",
      "WooFi", "FluidDex", "1InchLOPV4", "KyberSwapLOP", "KyberSwapDSLOP",
      "MaverickV2", "0xProtocol", "0xSettler", "BalancerV3", "EulerSwap",
      "AerodromeSlipstream", "Aerodrome", "PancakeSwapV3", "PancakeSwapInfinity",
      "PancakeSwapV4", "AlgebraIntegral"
    ],
    42161: [ // Arbitrum
      "UniswapV2", "UniswapV3", "CoWProtocol", "Curve", "BalancerV2", "UniswapX",
      "UniswapV4", "DODOV2", "WooFi", "AirSwapV5", "FluidDex", "1InchLOPV4",
      "KyberSwapLOP", "KyberSwapDSLOP", "MaverickV2", "0xProtocol", "0xSettler",
      "BalancerV3", "EulerSwap", "PancakeSwapV3", "Algebra", "GMXV2", "Renegade"
    ],
    10: [ // Optimism
      "UniswapV2", "UniswapV3", "Curve", "BalancerV2", "UniswapV4", "DODOV2",
      "WooFi", "1InchLOPV4", "KyberSwapLOP", "KyberSwapDSLOP", "0xProtocol",
      "0xSettler", "BalancerV3", "AerodromeSlipstream", "Aerodrome"
    ],
    1301: [ // Unichain
      "UniswapV2", "UniswapV3", "UniswapV4", "UniswapX", "0xSettler", "EulerSwap"
    ],
    57073: [ // Ink
      "UniswapV2", "UniswapV3", "Curve", "UniswapV4", "0xSettler"
    ],
    480: [ // WorldChain
      "UniswapV2", "UniswapV3", "UniswapV4", "0xSettler"
    ],
    1946: [ // Soneium
      "UniswapV2", "UniswapV3", "UniswapV4"
    ],
    7777777: [ // Zora
      "UniswapV2", "UniswapV3", "UniswapV4"
    ],
    60808: [ // BOB
      "EulerSwap"
    ]
  };

  const dexes = chainToDexes[chainId];
  
  if (!dexes) {
    return c.json({ error: `No DEXes found for chain ID ${chainId}` }, 404);
  }

  return c.json({ 
    result: {
      chainId: chainId,
      dexes: dexes.sort()
    }
  });
});

export default app;