select 
customer_id,
orderid as order_id, 
amount/100 as amount
from raw.stripe.payment as payment
join {{ref("stg_orders")}} as orders on payment.orderid = orders.order_id