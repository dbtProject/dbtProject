with tmp as (select user_id, order_id from {{ ref("stg_orders") }})
select o.order_id, user_id, amount_spent
from {{ ref("amount_spent_per_order") }} as o
inner join tmp on tmp.order_id = o.order_id
order by o.order_id
