
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  

Select * from "hellochef_practice"."public"."stg_customers"
Where email NOT LIKE '%@%.com'


  
  
      
    ) dbt_internal_test