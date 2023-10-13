with 

source as (

    select
        SPLIT_PART("AssociatedCompanyIds" , ',' , 1)  as Key_Company,
        *
    from {{ source('CLIMBERNL_INTERNAL', 'HUBSPOT_DEALS') }}

),

final as (

    select * from source

)

select * from final --where "AssociatedCompanyIds" LIKE '%721725%' 