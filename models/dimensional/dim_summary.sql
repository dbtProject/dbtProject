select c.user_id, first_name, last_name, total_amount
from {{ ref('fact_total_amount') }} as t, {{ ref('stg_customers') }} as c
where t.user_id = c.user_id
order by c.user_id