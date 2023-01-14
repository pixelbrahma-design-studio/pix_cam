import * as functions from "firebase-functions";
import * as admin from "firebase-admin";
import {BigQuery} from "@google-cloud/bigquery";


// pixcam.testcam

admin.initializeApp();

const bigquery = new BigQuery({location: "asia-south1"});

export const fetchDataQuery = functions.https.onCall(async (data, context) => {
  functions.logger.info("Hello logs!", {structuredData: true});
  console.log("Data: req: ", data);

  const query = `WITH
  hours AS (
  SELECT
  *
  FROM
  UNNEST(GENERATE_ARRAY(0, 23)) AS hour),
  events AS (
  SELECT
  EXTRACT(HOUR FROM TIMESTAMP(countEvent.timeStamp) 
  AT TIME ZONE "Asia/Kolkata") AS hour,
  COUNT(*) AS total,
  COUNT(CASE WHEN countEvent.eventType ="Out" THEN 1 END ) OutCount,
  COUNT(CASE WHEN countEvent.eventType = "In" THEN 1 END ) InCount,
  FROM
  pixcam.testcam.testTable
  WHERE
  EXTRACT(DAY FROM TIMESTAMP(countEvent.timeStamp) 
  AT TIME ZONE "Asia/Kolkata") = ${parseInt(data.selectedDay)}
  GROUP BY
  hour)
  
  SELECT
  hour,
  IF(OutCount IS NULL,0,OutCount) AS OutCount,
  IF(InCount IS NULL,0,InCount) AS InCount,
  IF(total IS NULL,0,total) AS total
  FROM
  events
  RIGHT OUTER JOIN
  hours
  USING
  (hour);`;

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
