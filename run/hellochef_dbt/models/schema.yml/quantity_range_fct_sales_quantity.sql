
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  

Select * from "hellochef_practice"."public"."fct_sales"
Where quantity < 1 or quantity > 100


  
  
      
    ) dbt_internal_test