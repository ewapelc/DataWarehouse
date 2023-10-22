SELECT pizza_size, COUNT(*) AS count
FROM [cwiczenia1].[dbo].[pizza_sales]
WHERE order_date LIKE '%2015-0[2-3]%'
GROUP BY pizza_size