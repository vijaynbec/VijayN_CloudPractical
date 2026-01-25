%sql
---Create a copy from Fivetran source

CREATE OR REFRESH STREAMING TABLE fivetran_aws.gold.customers_gold AS  
SELECT
  _file,
  _line,
  _modified,
  _fivetran_synced,
  company,
  email,
  phone_1,
  first_name,
  website,
  index,
  city,
  subscription_date,
  customer_id,
  country,
  phone_2,
  last_name,
  current_timestamp AS processing_time,
  _file AS fivetran_source_file,
  'customers_gold' AS source_table
FROM STREAM(fivetran_aws.silver.customers_silver);