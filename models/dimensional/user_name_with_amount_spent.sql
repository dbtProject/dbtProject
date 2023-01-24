select t.user_id, first_name, last_name, t.total_amount from {{ ref('stg_customers') }} as c
inner join {{ ref('total_amount_spent_per_order') }} as t
on c.user_id = t.user_id
order by t.user_id