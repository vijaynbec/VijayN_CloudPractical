SELECT 
 id as order_id,
 date(date_format (createdat, "yyyy-MM-dd")) as order_date,
 user_id,
 product_id,
 quantity,
 unit_price,
 {{ multiply_columns_orders_amt('quantity','unit_price')}} as order_amount_macro,
 quantity * unit_price as order_amount
FROM
{{ ref("bronze_orders")}}

