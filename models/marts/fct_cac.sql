
WITH new_cust AS (
	SELECT to_char(date_trunc('month',signup_date),'YYYY-MM') AS signup_year_mnt,
		count(*) AS new_customers
	FROM {{ REF('stg_customers') }}
	GROUP BY 1 ),

monthly_spend AS (
	SELECT to_char(date_trunc('month',start_date),'YYYY-MM') AS campaign_year_mnt,
	sum(spend) AS total_spend
	FROM {{ REF('stg_marketing_spend') }}
	GROUP BY 1 )
	
SELECT nc.signup_year_mnt, nc.new_customers, ms.total_spend, 
	ms.total_spend/nullif(nc.new_customers,0) AS cac
FROM new_cust nc LEFT JOIN monthly_spend ms
ON nc.signup_year_mnt = ms.campaign_year_mnt