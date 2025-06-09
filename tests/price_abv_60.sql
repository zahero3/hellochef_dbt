SELECT * FROM {{ ref('stg_products')}}
WHERE price > 60