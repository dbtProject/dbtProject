select user_id, sum(amount_spent) as total_amount
from {{ ref('inter_user_amount') }}
group by user_id
order by user_id
