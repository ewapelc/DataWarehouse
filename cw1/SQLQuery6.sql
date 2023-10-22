WITH CTE AS 
(
SELECT pizza_name, pizza_category, COUNT(*) AS count
FROM [cwiczenia1].[dbo].[pizza_sales]
WHERE order_date LIKE '%2015-01%'
GROUP BY pizza_name, pizza_category
)

SELECT * 
FROM CTE
ORDER BY count DESC;