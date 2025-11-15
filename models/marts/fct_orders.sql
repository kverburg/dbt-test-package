with
    source as (
        select * from {{ ref(var('package_test__orders_reference')) }}
    ),

    column_selection as (
        select 
            order_id,
            customer_id,
            order_date,
            status
        from
            source
    )

select * from column_selection