with 

source as (

    select 
        "CompanyId" as Key_Company,
        * 
    from {{ source('CLIMBERNL_INTERNAL', 'HUBSPOT_COMPANIES') }}

),

renamed as (

    select * from source

)

select * from renamed
