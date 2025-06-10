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
    round((o.quantity * p.price) * 0.1,2) AS discount,
    (total_amount - round((o.quantity * p.price) * 0.1,2)) AS net_revenue
FROM {{ ref('stg_orders') }} o
JOIN {{ ref('stg_customers') }} c ON o.customer_id = c.customer_id
JOIN {{ ref('stg_products') }} p ON o.product_id = p.product_id