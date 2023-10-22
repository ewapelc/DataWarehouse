WITH CTE1 AS(
SELECT order_id, SUM(total_price) AS total_order_amount
FROM [cwiczenia1].[dbo].[pizza_sales]
WHERE order_date LIKE '%2015-02%'
GROUP BY order_id
),

CTE2 AS(
SELECT order_id, total_order_amount,
RANK () OVER (ORDER BY total_order_amount DESC) AS rank_no 
FROM CTE1
)

SELECT * FROM CTE2 WHERE rank_no <= 10;

