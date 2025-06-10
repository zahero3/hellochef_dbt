SELECT
    o.order_id,
    o.order_date,
    o.customer_id,
    c.first_name,
    c.last_name,
    p.product_name,
    p.category,
    p.price,
    o.quantity,
    (o.quantity * p.price) AS total_amount,
    (o.quantity * p.price) * 0.1 AS discount
FROM "hellochef_practice"."public"."stg_orders" o
JOIN "hellochef_practice"."public"."stg_customers" c ON o.customer_id = c.customer_id
JOIN "hellochef_practice"."public"."stg_products" p ON o.product_id = p.product_id