{% snapshot products_snapshot %}
    {{
        config(
          target_schema='bronze',
          strategy='timestamp',
          unique_key='id',
          updated_at='createdat'
        )
    }}

    select * from {{source('landing','products')}}

{% endsnapshot %}