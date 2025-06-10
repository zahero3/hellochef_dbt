
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  SELECT * FROM "hellochef_practice"."public"."stg_products"
WHERE price > 60
  
  
      
    ) dbt_internal_test