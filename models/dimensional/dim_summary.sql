select c.user_id, concat(first_name , ' ' , last_name) as customer_name, total_amount
from {{ ref('fact_total_amount') }} as t, {{ ref('stg_customers') }} as c
where c.user_id = t.user_id
order by total_amount desc
limit 3