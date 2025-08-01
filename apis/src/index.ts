import { desc, eq } from "drizzle-orm";
import { dexTrade } from "./db/schema/Listener";
import { types, db, App, middlewares } from "@duneanalytics/sim-idx"; // Import schema to ensure it's registered

const app = App.create();
app.use("*", middlewares.authentication);

app.get("/*", async (c) => {
  try {
    const result = await db
      .client(c)
      .select()
      .from(dexTrade)
      .orderBy(desc(dexTrade.blockTimestamp))
      .limit(10);

    return Response.json({
      result: result,
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

export default app;
