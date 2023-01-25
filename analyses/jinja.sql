{% set list = ["placed", "shipped", "completed", "returned", "return_pending"] %}

{% for i in list %}

select *
from {{ ref("stg_orders") }}
where order_status = '{{i}}'

{% if not loop.last %}
union all
{% endif %}

{% endfor %}
