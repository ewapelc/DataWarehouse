-- rank over() 
-- The goal is to get the 10 customers (and their personal information) with the highest amount spent in the store
WITH RankedCustomers AS (
	SELECT 
		id, -- we want to get the original id, not the CustomerKey
		first_name,
		last_name,
		phone,
		TotalAmountSpent,
		RANK() OVER (ORDER BY TotalAmountSpent DESC) AS CustomerRank
	FROM (
		SELECT 
			fs.CustomerKey,
			dc.id,
			dc.first_name,
			dc.last_name,
			dc.phone,
			SUM(CAST(amount AS DECIMAL(10, 2))) AS TotalAmountSpent
		FROM dbo.FactSales  as fs
		INNER JOIN dbo.DIMCustomer as dc
		ON fs.CustomerKey = dc.CustomerKey
		GROUP BY 
			fs.CustomerKey, dc.id, dc.first_name, dc.last_name, phone
	) AS CustomerTotalAmounts
)

SELECT 
    id,
    first_name,
    last_name,
    phone,
    TotalAmountSpent,
    CustomerRank
FROM 
    RankedCustomers
WHERE 
    CustomerRank <= 10;