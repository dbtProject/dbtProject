{% set list = ["placed", "shipped", "completed", "returned", "return_pending"] %}

{% for i in list %}

select *
from `dbt-tutorial`.`jaffle_shop`.`orders`
where order_status = '{{i}}'

{% if not loop.last %}
union all
{% endif %}

{% endfor %}
