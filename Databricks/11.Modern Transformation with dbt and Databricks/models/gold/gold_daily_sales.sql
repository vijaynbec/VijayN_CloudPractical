
select 
    sv.order_date,
    sp.product_name,
    sp.product_category,
    su.city,
    su.state
from
{{ ref("silver_orders")}} as sv 
left join {{ ref("silver_products") }} as sp 
on sv.product_id = sp.product_id
left join {{ref("silver_users")}} as su 
on sv.user_id = su.user_id
group by all