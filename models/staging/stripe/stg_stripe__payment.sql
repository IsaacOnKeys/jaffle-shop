with 

source as (

    select * from {{ source('stripe', 'payment') }}

),

renamed as (

    select
        id AS payment_id,
        orderid AS order_id,
        paymentmethod AS payment_method,
        status AS payment_status,
        amount AS payment_amount,
        created AS payment_created,
        _batched_at AS payment__batched_at

    from source

)

select * from renamed