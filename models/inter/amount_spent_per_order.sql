with temp as 
(select * from {{ref('stg_payment')}} where payment_status = 'success')

select order_id,sum(amount) as amount_spent from temp
group by order_id
order by order_id