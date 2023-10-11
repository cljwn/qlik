with 

source as (

    select 
        "AssociatedCompanyIds" as Key_Company,
        * 
    from {{ source('CLIMBERNL_INTERNAL', 'HUBSPOT_DEALS') }}

),

renamed as (

    select * from source

)

select * from renamed
