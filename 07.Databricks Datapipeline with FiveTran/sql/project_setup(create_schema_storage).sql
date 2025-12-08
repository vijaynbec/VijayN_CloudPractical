--- Creating a schema
%sql
CREATE SCHEMA IF NOT EXISTS fivetran_aws.silver;
CREATE SCHEMA IF NOT EXISTS fivetran_aws.gold;
CREATE SCHEMA IF NOT EXISTS fivetran_aws.fivetran_source;

--- Create a Storage Credentials which will give us IAM AWS ARN and Connection credentials

CREATE SCHEMA IF NOT EXISTS fivetran_aws.fivetran_source 
MANAGED LOCATION 's3://fivetran-s3-connect-demo-102426687040/fivetran_source';
CREATE SCHEMA IF NOT EXISTS fivetran_aws.gold
MANAGED LOCATION 's3://fivetran-s3-connect-demo-102426687040/gold';
CREATE SCHEMA IF NOT EXISTS fivetran_aws.silver
MANAGED LOCATION 's3://fivetran-s3-connect-demo-102426687040/silver';