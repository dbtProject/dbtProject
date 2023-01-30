select EXTRACT(MONTH from order_date) as month, sum(amount) as amount_spent_that_month from 
{{ ref('stg_payment')}} a,  {{ref('stg_orders')}} b

where a.order_id = b.order_id and  payment_status = 'success'
group by month 
order by amount_spent_that_month desc
