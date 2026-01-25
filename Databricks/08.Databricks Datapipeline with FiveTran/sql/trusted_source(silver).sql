%sql
---Create a copy from Fivetran source
CREATE OR REFRESH STREAMING TABLE fivetran_aws.silver.customers_silver AS  
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
  'customers_silver' AS source_table
FROM STREAM(fivetran_aws.fivetran_source.customers_source)
WHERE
  _file IS NOT NULL OR
  _line IS NOT NULL OR
  _modified IS NOT NULL OR
  _fivetran_synced IS NOT NULL OR
  company IS NOT NULL OR
  email IS NOT NULL OR
  phone_1 IS NOT NULL OR
  first_name IS NOT NULL OR
  website IS NOT NULL OR
  index IS NOT NULL OR
  city IS NOT NULL OR
  subscription_date IS NOT NULL OR
  customer_id IS NOT NULL OR
  country IS NOT NULL OR
  phone_2 IS NOT NULL OR
  last_name IS NOT NULL;