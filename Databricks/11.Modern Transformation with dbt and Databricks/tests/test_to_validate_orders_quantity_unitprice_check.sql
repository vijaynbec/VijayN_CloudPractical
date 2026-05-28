{{config(severity = 'warn')}}

select * from
{{source ('landing','orders')}}
where quantity <=1 or unit_price <= 0