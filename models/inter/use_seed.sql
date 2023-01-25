{{ config(materialized="table") }}


select
    {{ dbt_utils.star(from=ref("stg_orders"), except=["order_status"]) }}, status_code
from {{ ref("stg_orders") }} as a, {{ ref("order_codes") }} as b
where a.order_status = b.order_status
