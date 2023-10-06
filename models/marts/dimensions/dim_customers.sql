with customers as (

    select * from {{ ref ('stg_customers') }}
),

deals as (

    select * from {{ ref ('stg_deals')}}
),

customer_deals as (
    
    select 
       *    
    from deals

),

final as (
    
    select 
        *
    from customers

    left join customer_deals using (Key_Company)

)

select * from final