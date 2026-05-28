SELECT 
 id as product_id,
 date(date_format (createdat, "yyyy-MM-dd")) as stock_date,
 title as product_name,
 category as product_category,
 ean as product_ean,
 price as product_price

FROM
{{ ref('products_snapshot') }}
where dbt_valid_to is null