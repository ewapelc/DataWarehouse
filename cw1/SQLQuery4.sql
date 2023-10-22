WITH month_average_CTE AS 
(
SELECT AVG(total_price) AS average_month_price, FORMAT(order_date, 'yyyy-MM') AS year_month
FROM [cwiczenia1].[dbo].[pizza_sales]
GROUP BY FORMAT(order_date, 'yyyy-MM')
),

orders_CTE AS 
(
	SELECT order_id, order_date, FORMAT(order_date, 'yyyy-MM') AS year_month, SUM(total_price) AS total_order_amount
	FROM [cwiczenia1].[dbo].[pizza_sales] 
	GROUP BY order_id, order_date
)

SELECT order_id, total_order_amount, average_month_price, orders_CTE.order_date
FROM month_average_CTE
RIGHT JOIN orders_CTE
ON month_average_CTE.year_month = orders_CTE.year_month;

