{% snapshot snapshot_seed %}
    {{
        config(
          target_schema='snapshots',
          strategy='check',
          unique_key='status_code',
          check_cols=['status_code'],
        )
    }}

    select * from {{ ref('order_codes') }}
{% endsnapshot %}