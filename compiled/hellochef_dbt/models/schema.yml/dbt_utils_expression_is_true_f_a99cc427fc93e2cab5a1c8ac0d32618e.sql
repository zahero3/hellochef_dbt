

with meet_condition as (
    select * from "hellochef_practice"."public"."fct_sales" where 1=1
)

select
    *
from meet_condition

where not(discount  /total_amount <> 0)

