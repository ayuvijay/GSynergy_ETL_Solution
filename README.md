# GSynergy_ETL_Solution
"GSynergy Data Engineer Interview Challenge - ETL Pipeline Solution"
 GSynergy ETL Solution
This repository contains the complete ETL pipeline solution for the GSynergy Data Engineer Interview Challenge.

 Setup Instructions
1️ Database Setup
- Create staging tables using **etl_pipeline.sql**
- Run **incremental_load.sql** for incremental updates


 2️ Azure Data Factory (ADF) Setup
- Import **GSynergy_ETL_Pipeline.json** into ADF
- Configure Linked Services (Azure Blob & SQL DB)
- Run the pipeline

 3️ Output
- Data will be available in `mview_weekly_sales` table for reporting.
