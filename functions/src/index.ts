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
  COUNT(CASE WHEN countEvent.eventType ="Out" THEN 1 END ) outCount,
  COUNT(CASE WHEN countEvent.eventType = "In" THEN 1 END ) inCount,
  FROM
  pixcam.testcam.testTable
  WHERE (EXTRACT(DAY FROM TIMESTAMP(countEvent.timeStamp) 
  AT TIME ZONE "Asia/Kolkata") = ${parseInt(data.selectedDay)} AND 
  EXTRACT(MONTH FROM TIMESTAMP(countEvent.timeStamp) 
  AT TIME ZONE "Asia/Kolkata") = ${parseInt(data.selectedMonth)} AND
  EXTRACT(YEAR FROM TIMESTAMP(countEvent.timeStamp) 
  AT TIME ZONE "Asia/Kolkata") = ${parseInt(data.selectedYear)})
  GROUP BY
  hour)
  
  SELECT
  hour,
  IF(outCount IS NULL,0,outCount) AS outCount,
  IF(inCount IS NULL,0,inCount) AS inCount,
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

export const fetchWeeklyDataQuery = functions
    .https.onCall(async (data, context) => {
      functions.logger.info("Hello logs!", {structuredData: true});
      console.log("Data: req: ", data);

      const query = `SELECT
      EXTRACT(DAY FROM TIMESTAMP(countEvent.timeStamp) 
      AT TIME ZONE "Asia/Kolkata") AS day,
      COUNT(*) AS total,
      COUNTIF(countEvent.eventType = "Out") AS outCount,
      COUNTIF(countEvent.eventType = "In") AS inCount
    FROM
      pixcam.testcam.testTable
    WHERE TIMESTAMP(countEvent.timeStamp)
      BETWEEN TIMESTAMP_SUB(TIMESTAMP(${data["date"]}), 
      INTERVAL 7 DAY) AND TIMESTAMP(${data["date"]})
    GROUP BY
      day`;

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

