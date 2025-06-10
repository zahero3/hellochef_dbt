

WITH stats AS (
	SELECT AVG(total_amount) AS avg_val, STDDEV(total_amount) AS std_val 
	FROM "hellochef_practice"."public"."fct_sales" ),
	
	flagged AS (
	SELECT * FROM "hellochef_practice"."public"."fct_sales",stats
	WHERE total_amount < (avg_val - (3 * std_val)) 
	   OR total_amount > (avg_val + (3 * std_val)) )

SELECT * FROM flagged

