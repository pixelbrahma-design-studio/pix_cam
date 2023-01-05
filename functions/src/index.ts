import * as functions from "firebase-functions";
import * as admin from "firebase-admin";
import {BigQuery} from "@google-cloud/bigquery";


// pixcam.testcam

admin.initializeApp();

const bigquery = new BigQuery({location: "asia-south1"});

export const fetchDataQuery = functions.https.onCall(async (data, context) => {
  functions.logger.info("Hello logs!", {structuredData: true});

  const PROJECT_ID = "pixcam";
  const DATASET_ID = "testcam";
  const TABLE_ID = "testTable";

  const query =
  `SELECT * FROM ${PROJECT_ID}.${DATASET_ID}.${TABLE_ID} LIMIT 10;`;

  const options = {
    query: query,
    location: "asia-south1",
    useLegacySql: false,
    allowLargeResult: true,
  };

  const [job] = await bigquery.createQueryJob(options);
  console.log(`Job ${job.id} started.`);

  const [rows] = await job.getQueryResults();
  console.log("Rows:");
  rows.forEach((row) => console.log(row));
  return [rows];
});
