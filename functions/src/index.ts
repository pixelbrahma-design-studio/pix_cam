import * as functions from "firebase-functions";
import * as admin from "firebase-admin";
import {BigQuery} from "@google-cloud/bigquery";


// pixcam.testcam

admin.initializeApp();

const bigquery = new BigQuery({location: "asia-south1"});

export const fetchDataQuery = functions.https.onCall(async (data, context) => {
  functions.logger.info("Hello logs!", {structuredData: true});
  console.log("Data: req: ", data);

  const query = `SELECT
  EXTRACT(DAY FROM TIMESTAMP(countEvent.timeStamp) 
  AT TIME ZONE "Asia/Kolkata") AS day,
  EXTRACT(HOUR FROM TIMESTAMP(countEvent.timeStamp) 
  AT TIME ZONE "Asia/Kolkata") AS time,
  COUNT(CASE WHEN countEvent.eventType ="Out" THEN 1 END ) OutCount,
  COUNT(CASE WHEN countEvent.eventType = "In" THEN 1 END ) InCount,
  FROM
  pixcam.testcam.testTable
  WHERE EXTRACT(DAY FROM TIMESTAMP(countEvent.timeStamp) 
  AT TIME ZONE "Asia/Kolkata") = 20
  GROUP BY day, time
  ORDER BY day, time DESC
  LIMIT 100;`;

  const options = {
    query: query,
    location: "asia-south1",
    useLegacySql: false,
    allowLargeResult: true,
  };

  const [job] = await bigquery.createQueryJob(options);
  console.log(`Job ${job.metadata} started.`);

  const [rows] = await job.getQueryResults();

  return [rows];
});
