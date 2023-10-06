with 

source as (
    
    SELECT 
        "CompanyId" as Key_Company,
        * 
    from {{ source('CLIMBERNL_INTERNAL', 'Hubspot_Companies' ) }}   
) 

staged as (
    
    select * from source

)

select * from staged