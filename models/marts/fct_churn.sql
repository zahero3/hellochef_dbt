
WITH last_orders AS (
	SELECT c.customer_id, c.signup_date, max(o.order_date) AS last_order_date
	FROM {{ ref('stg_customers') }} c INNER JOIN {{ ref('stg_orders') }} o 
	ON c.customer_id = o.customer_id
	GROUP BY c.customer_id,c.signup_date  ),
	
churns AS (
	SELECT *, (current_date - last_order_date) AS DaysPassed_since_last_order,
	CASE 
		WHEN (current_date - last_order_date) > 100 THEN 1 ELSE 0	
	END AS is_churned 
	FROM last_orders )

SELECT * FROM churns
