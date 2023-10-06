with 

source as (
    
    SELECT 
        "AssociatedCompanyIds" as Key_Company,
        * 
    from {{ source('CLIMBERNL_INTERNAL', 'Hubspot_Deals' ) }}
)

staged as (
    
    select * from source

)

select * from staged