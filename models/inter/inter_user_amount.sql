select a.order_id, user_id, amount_spent
from {{ ref('stg_orders') }} as o, {{ ref('inter_order_amount') }} as a
where o.order_id = a.order_id
order by a.order_id
