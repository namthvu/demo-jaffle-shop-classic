with orders as (

    select * from {{ ref('orders') }}

),

final as (

    select
        status,
        count(order_id) as order_count,
        sum(amount) as total_amount

    from orders

    group by status

)

select * from final
