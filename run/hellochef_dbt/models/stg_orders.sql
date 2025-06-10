
  create view "hellochef_practice"."public"."stg_orders__dbt_tmp"
    
    
  as (
    SELECT * FROM "hellochef_practice"."public"."orders"
  );