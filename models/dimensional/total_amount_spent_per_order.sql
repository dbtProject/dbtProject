select user_id, sum(amount_spent) as total_amount
from {{ ref("user_joined_to_amount_spent_per_order") }}
group by user_id
order by user_id
