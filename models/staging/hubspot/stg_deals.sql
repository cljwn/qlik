with deals as (

    select
        "AssociatedCompanyIds" as Key_Company,
        *
    from CLIMBERNL_DEV.CLIMBERNL_INTERNAL."Hubspot_Deals" 
)

select * from deals