with customers as (
    
    SELECT 
        "CompanyId" as Key_Company,
        * 
    from CLIMBERNL_DEV.CLIMBERNL_INTERNAL."Hubspot_Companies"
)

select * from customers