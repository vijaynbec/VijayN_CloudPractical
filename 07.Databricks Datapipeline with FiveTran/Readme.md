# 🧱 Databricks - Datapipeline with FiveTran (Medallion Data flow)
In the modern data landscape, speed and reliability are paramount. This project demonstrates how to build a scalable Lakehouse using the Medallion Architecture (Bronze → Silver → Gold) within Databricks, powered by Fivetran for automated ingestion.
The pipeline simulates a real-world scenario: ingesting raw data from an external source, cleaning it, and structuring it for downstream applications or reporting dashboards — with minimal manual overhead.

# 🏗️ Architecture & Workflow
The pipeline follows the standard Medallion Architecture:
- Ingestion (Fivetran)
Automated sync from source to the Databricks Lakehouse.
- Bronze Layer (Raw)
Landing zone for raw data, preserving the original state.
- Silver Layer (Cleaned)
Validated, enriched, and standardized data.
- Gold Layer (Curated)
Aggregated data optimized for business logic and reporting.

## Medallion Architecture Diagram:

![Medallion Architecture Diagram](docs/FiveTran_Databricks_Pipeline.png)



# 🔧 Step-by-Step Implementation

## 1. Source Connection via Fivetran
Instead of writing custom ingestion scripts, I used Fivetran to simplify the EL (Extract & Load) process.
- Configuration: Connected Fivetran to an AWS S3 bucket as the source.
- Destination: Configured Databricks as the destination.
- Outcome: Raw data automatically lands in the Bronze layer (fivetran_source), with schema drift and incremental loading handled by Fivetran.

## 2. Environment & Storage Setup
To ensure data governance and lifecycle control, I defined managed schemas and configured secure storage credentials.

- IAM Role ARN:
arn:aws:iam::102426687040:role/databricks-s3-ingest-35077-db_********

- Connection Credential:
db_s3_credentials_databricks-s3-ingest-*****

- Schema Definitions with Managed Locations:


        CREATE SCHEMA IF NOT EXISTS fivetran_aws.fivetran_source
            MANAGED LOCATION 's3://fivetran-s3-connect-demo-102426687040/fivetran_source';

        CREATE SCHEMA IF NOT EXISTS fivetran_aws.silver
            MANAGED LOCATION 's3://fivetran-s3-connect-demo-102426687040/silver';

        CREATE SCHEMA IF NOT EXISTS fivetran_aws.gold
            MANAGED LOCATION 's3://fivetran-s3-connect-demo-102426687040/gold';


This setup ensures:
- Logical separation of layers (Bronze, Silver, Gold)
- Clean lifecycle management (tables and files are linked)
- Secure access via IAM roles and credential passthrough

## 3. Transformation Logic (Silver Layer)
Created a Databricks Job to process Bronze data into Silver.
- Objective: Improve data quality.
- Actions:
- Filtered out nulls
- Renamed columns for clarity
- Enforced data types
This ensures analysts using Silver don’t deal with “garbage data.”

## 4. Business Aggregation (Gold Layer)
Transformed cleaned data into business metrics for dashboards.
- Objective: Deliver business value.
- Actions:
- Created aggregated views (e.g., Customer Lifetime Value, Daily Lead Counts)
- Made data consumable by BI tools like Tableau or PowerBI

## 5. Scheduling & Orchestration
Automated the entire flow using Databricks Workflows.
- Supports both Streaming and Batch modes.
- Ensures the Gold layer always reflects the latest data from Fivetran.

# 📸 Proof of Execution

![Proof of Execution](docs/Fivetran_DB_Pipieline_Run.png)

# 🧠 Key Learnings & Insights
1. Decoupling Ingestion from Transformation
Using Fivetran reduced ingestion complexity. I focused entirely on transformation logic in Databricks — where business value is created.
2. The Power of Managed Locations
Defining MANAGED LOCATION for schemas ensures clean lifecycle management. Dropping a table also removes its files, preventing orphaned data and optimizing storage.
3. Incremental Processing with Delta Lake
Streaming logic (via Delta Live Tables or Structured Streaming) enables efficient, resilient pipelines. Only new data is processed — improving performance and reducing compute costs.
4. Simplified Architecture for Scalability
Medallion Architecture enforces separation of concerns:
- If the source format changes, only Bronze-to-Silver logic is affected.
- Gold dashboards remain stable.
- Modular design simplifies debugging and supports future expansion.


# 🎯 Purpose of This Demo
This project showcases:
- Hands-on implementation of a modern Lakehouse pipeline
- Real-world ingestion, transformation, and orchestration
- Architect-level thinking with execution proof
- Scalable design using modular SQL and streaming logic
