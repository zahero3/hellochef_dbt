
-- models/prod/prod_sales_summary.sql

{{ config(
    materialized = 'table',
    tags = ['prod_only']) 
}}


SELECT
    customer_id,
    COUNT(order_id) AS total_orders,
    SUM(total_amount) AS total_sales
FROM {{ ref('fct_sales') }}
GROUP BY customer_id