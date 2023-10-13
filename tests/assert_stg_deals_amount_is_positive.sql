with deals as (
    select * from {{ ref("stg_deals")}}
)

select 
    Key_Company,
    Sum( Amount ) as Total_Amount
from deals

group by 1
having Total_Amount < 0
