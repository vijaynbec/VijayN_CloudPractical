%sql
CREATE OR REFRESH STREAMING TABLE fivetran_aws.fivetran_source.customers_source 
COMMENT "Ingest Source file"
TBLPROPERTIES ("quality" = "bronze",               --- add to true source
               "pipelines" = "fivetran_aws",       -- schema name   
               "pipelines.reset.allowed" = FALSE  -- prevent full table refresh
               )
AS
SELECT *,
    current_timestamp AS processing_time,
    _file AS fivetran_source_file,
    'customers_source' AS source_table
FROM STREAM personal_vijay.fivetran_aws_s3.customers;
