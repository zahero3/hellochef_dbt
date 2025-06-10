
  create view "hellochef_practice"."public"."stg_customers__dbt_tmp"
    
    
  as (
    SELECT * FROM "hellochef_practice"."public"."customers"
  );