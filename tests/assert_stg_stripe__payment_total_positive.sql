SELECT 
    order_id, 
    sum(payment_amount)
from {{ ref('stg_stripe__payment') }}
GROUP BY order_id
HAVING sum(payment_amount) < 0
