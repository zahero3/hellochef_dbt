
{% test outlier_total_amount(model, column_name) %}

WITH stats AS (
	SELECT AVG({{column_name}}) AS avg_val, STDDEV({{column_name}}) AS std_val 
	FROM {{ model }} ),
	
	flagged AS (
	SELECT * FROM {{ model }},stats
	WHERE {{column_name}} < (avg_val - (3 * std_val)) 
	   OR {{column_name}} > (avg_val + (3 * std_val)) )

SELECT * FROM flagged

{% endtest %}