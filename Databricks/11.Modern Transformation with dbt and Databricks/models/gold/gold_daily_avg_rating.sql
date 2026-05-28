{{
    config(
        materialized='view'
    )
}}

select 
  date(date_format(br.createdat, 'yyyy-MM-dd')) as review_date,
  br.product_id,
  sp.product_name,
  avg(br.rating) as avg_rating
from
{{ ref("bronze_reviews")}} as br 
left join {{ ref("silver_products") }} as sp 
on br.product_id = sp.product_id

group by all