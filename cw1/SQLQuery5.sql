WITH CTE AS
(
	SELECT order_id, order_date, FORMAT(order_time, 'hh') AS hour
	FROM [cwiczenia1].[dbo].[pizza_sales]
	WHERE order_date LIKE '%2015-01-01%'
	GROUP BY order_id, order_date, FORMAT(order_time, 'hh')
)

SELECT COUNT(*) AS count, order_date, hour
FROM CTE
GROUP BY hour, order_date;