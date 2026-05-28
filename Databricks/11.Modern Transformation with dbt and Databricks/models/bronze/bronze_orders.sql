-- SELECT
-- *
-- FROM 

-- {{ source("landing","orders") }}
{{
  config(
         materialized = 'incremental',
         unique_key = 'id'
         )
}}
SELECT
*
FROM 
{{ source('landing', 'orders_incremental') }}
----- this conditionl will validate the data increments into bronze orders based on the incremental data
{% if is_incremental() %}
where createdat > (select coalesce(max(createdat),'1900-01-01') from {{ this }})
{% endif %}