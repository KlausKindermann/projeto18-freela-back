import express from "express";
import cors from "cors";
import dotenv from "dotenv";
dotenv.config();

import datesRouter from "./routes/dates.routes.js";
import timesRouter from "./routes/times.rotes.js";
import placesRouter from "./routes/places.routes.js";

const app = express();
app.use(express.json());
app.use(cors());

app.use([datesRouter, timesRouter, placesRouter])

const port = process.env.PORT

app.listen(port, () =>
  console.log(`Server running in port: ${port}`)
);
