with 

source as (

    select 
        "CompanyId" as Key_Company,
        *
    from {{ source('CLIMBERNL_INTERNAL', 'HUBSPOT_COMPANIES') }}

),

final as (

    select * from source

)

select * from final --where Key_Company LIKE '%721725%' 
