-- rank over()
-- The goal is to get 10 days with the most transactions in the store
WITH RankedDays AS (
	SELECT 
		date,
		DATENAME(dw, date) AS DayOfWeek,
		NumberOfTransactions,
		RANK() OVER (ORDER BY NumberOfTransactions DESC) AS DayRank
	FROM (
		SELECT 
			date,
			COUNT(transactionID) AS NumberOfTransactions
		FROM 
			dbo.FactSales -- Replace 'YourTableName' with the actual name of your table
		GROUP BY 
			date
	) AS DailyTransactionCounts
)

SELECT 
	date,
	DayOfWeek,
	NumberOfTransactions,
	DayRank
FROM 
    RankedDays
WHERE 
    DayRank <= 10;
