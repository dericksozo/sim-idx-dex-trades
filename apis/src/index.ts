import { inArray, desc, and, max, sql, eq } from "drizzle-orm";
import { dexTrade } from "./db/schema/Listener";
import { types, db, App, middlewares } from "@duneanalytics/sim-idx";

// Initialize the Hono application using the Sim IDX wrapper
const app = App.create();

// Apply authentication middleware to all routes as a security best practice.
// This requires a valid API key for all deployed endpoints.
app.use("*", middlewares.authentication);

/**
 * A default list of supported chain IDs for DEX trades.
 * This is used as a fallback when no specific chainIds are requested by the client.
 */
const supportedChains: types.Uint[] = [
  1, 8453, 480, 34443, 57073, 130, 7777777, 60808, 1868, 360, 42161,
].map((id) => new types.Uint(BigInt(id)));

/**
 * Endpoint for Real-Time DEX Status Updates.
 *
 * This endpoint provides a summary for each DEX, including the timestamp of its latest trade
 * and a count of all trades within the last 24 hours. It's designed to be called
 * frequently by the front-end to showcase DEXes updating in real-time.
 */
app.get("/dexes/status", async (c) => {
  try {
    const twentyFourHoursAgo = Math.floor(Date.now() / 1000) - 24 * 60 * 60;

    // The query groups by the `dex` column (from DexTradeData.dex)
    const result = await db
      .client(c)
      .select({
        dex: dexTrade.dex,
        // Aggregates to find the most recent blockTimestamp for each DEX
        lastTradeTimestamp: max(dexTrade.blockTimestamp),
        // Counts trades in the last 24 hours for each DEX
        tradesLast24h: sql<number>`SUM(CASE WHEN ${dexTrade.blockTimestamp} >= ${twentyFourHoursAgo} THEN 1 ELSE 0 END)`.mapWith(Number),
      })
      .from(dexTrade)
      .groupBy(dexTrade.dex)
      .orderBy(desc(max(dexTrade.blockTimestamp))); // Order by the most recently active DEX

    return Response.json({ result });
  } catch (e) {
    console.error("Database operation failed in /dexes/status:", e);
    return Response.json({ error: "Failed to retrieve DEX status." }, { status: 500 });
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
    const offsetParam = c.req.query("offset");

    // Validate and parse pagination parameters
    let limit = limitParam ? parseInt(limitParam, 10) : 100;
    if (isNaN(limit) || limit <= 0) limit = 100;
    if (limit > 1000) limit = 1000; // Enforce a max limit for stability

    let offset = offsetParam ? parseInt(offsetParam, 10) : 0;
    if (isNaN(offset) || offset < 0) offset = 0;

    const conditions = [];

    // Add chain ID filter if provided
    if (chainIdsParam) {
      const chainIds = chainIdsParam
        .split(",")
        .map((id) => new types.Uint(BigInt(parseInt(id.trim(), 10))));
      if (chainIds.length > 0) {
        conditions.push(inArray(dexTrade.chainId, chainIds));
      }
    }

    // Add DEX name filter if provided
    if (dexesParam) {
      const dexes = dexesParam.split(",").map(d => d.trim());
      if (dexes.length > 0) {
        conditions.push(inArray(dexTrade.dex, dexes));
      }
    }

    const whereCondition = conditions.length > 0 ? and(...conditions) : undefined;

    const query = db
      .client(c)
      .select()
      .from(dexTrade)
      // Orders by `block_timestamp` from DexTradeData.blockTimestamp
      .orderBy(desc(dexTrade.blockTimestamp))
      .limit(limit)
      .offset(offset);

    if (whereCondition) {
      query.where(whereCondition);
    }

    const result = await query;

    return Response.json({ result });
  } catch (e) {
    console.error("Database operation failed in /trades:", e);
    return Response.json({ error: "Failed to retrieve trades." }, { status: 500 });
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
      return Response.json({ error: "A valid transaction hash is required." }, { status: 400 });
    }

    // Filters by the `transaction_hash` column
    const result = await db
      .client(c)
      .select()
      .from(dexTrade)
      .where(eq(dexTrade.transactionHash, txHash));

    if (result.length === 0) {
      return Response.json({ error: "No trades found for this transaction hash." }, { status: 404 });
    }

    return Response.json({ result });
  } catch (e) {
    console.error("Database operation failed in /trades/tx/:txHash:", e);
    return Response.json({ error: "Failed to retrieve trade by transaction hash." }, { status: 500 });
  }
});

/**
 * Endpoint to Get a List of All Unique DEX Names.
 *
 * Provides a distinct list of all DEXes present in the database.
 * This is useful for populating filter dropdowns or selection menus in the UI.
 */
app.get("/dexes", async (c) => {
  try {
    const result = await db
      .client(c)
      .selectDistinct({ dex: dexTrade.dex })
      .from(dexTrade)
      .orderBy(dexTrade.dex);

    return Response.json({
      result: result.map(r => r.dex),
    });
  } catch (e) {
    console.error("Database operation failed in /dexes:", e);
    return Response.json({ error: "Failed to retrieve list of DEXes." }, { status: 500 });
  }
});

/**
 * Endpoint to Get a List of All Unique Chain IDs.
 *
 * Provides a distinct list of all chain IDs where trades have occurred.
 * This is useful for populating chain filter UI components.
 */
app.get("/chains", async (c) => {
  try {
    const result = await db
      .client(c)
      .selectDistinct({ chainId: dexTrade.chainId })
      .from(dexTrade)
      .orderBy(dexTrade.chainId);

    return Response.json({
      result: result.map(r => r.chainId.toString()),
    });
  } catch (e) {
    console.error("Database operation failed in /chains:", e);
    return Response.json({ error: "Failed to retrieve list of chains." }, { status: 500 });
  }
});

export default app;