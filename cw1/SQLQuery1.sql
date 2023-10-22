WITH CTE AS (
	SELECT order_id, SUM(total_price) AS total_order_amount
	FROM [cwiczenia1].[dbo].[pizza_sales] 
	WHERE order_date = '2015-02-18'
	GROUP BY [order_id]
)

SELECT AVG(total_order_amount) AS average_amount
FROM CTE;
