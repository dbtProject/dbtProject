select order_id,sum(amount) as amount_spent from {{ ref('stg_payment') }}
where payment_status = 'success'
group by order_id
order by order_id