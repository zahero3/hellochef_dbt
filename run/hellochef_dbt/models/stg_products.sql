
  create view "hellochef_practice"."public"."stg_products__dbt_tmp"
    
    
  as (
    SELECT * FROM "hellochef_practice"."public"."products"
  );