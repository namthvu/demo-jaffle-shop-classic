with orders as (

    select * from {{ ref('orders') }}

),

final as (

    select
        customer_id,
        count(order_id) as order_count,
        sum(amount) as total_amount

    from orders

    group by customer_id

)

select * from final
