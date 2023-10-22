WITH CTE AS(
SELECT order_id, order_date, STRING_AGG(pizza_ingredients, ', ') AS all_ingredients
FROM [cwiczenia1].[dbo].[pizza_sales]
WHERE order_date LIKE '%2015-03%'
GROUP BY order_id, order_date 
)

SELECT order_id
FROM CTE
WHERE all_ingredients NOT LIKE '%Pineapple%';