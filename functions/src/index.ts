import * as functions from "firebase-functions";
import * as admin from "firebase-admin";
import {BigQuery} from "@google-cloud/bigquery";


// pixcam.testcam

admin.initializeApp();

export const fetchDataQuery = functions.https.onCall(async (data, context) => {
  functions.logger.info("Hello logs!", {structuredData: true});

  const PROJECTID_DEV = "pixcam";
  const DATASETID_DEV = "testcam";
  const TABLEID_DEV = "testTable";

  const bigquery = new BigQuery();

  //   const dataset = bigqueryClient.dataset(DATASETID_DEV);
  //   const [table] = await dataset.table(TABLEID_DEV).get();

  console.log("Table:");


  const query = "SELECT * FROM pixcam.testcam.testTable LIMIT 10;";

  const options = {
    query: query,
    location: "asia-south1",
    useLegacySql: true,
    allowLargeResult: true,
    destinationTable: {
      projectId: PROJECTID_DEV,
      datasetId: DATASETID_DEV,
      tableId: TABLEID_DEV,
    },
  };

  const [job] = await bigquery.createQueryJob(options);
  console.log(`Job ${job.id} started.`);

  const [rows] = await job.getQueryResults();
  console.log("Rows:");
  rows.forEach((row) => console.log(row));
  return [rows];

  //   console.log(table.metadata.tableReference);

//   return [table];
});
