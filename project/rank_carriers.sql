-- percent_rank()
-- The goal is to get the percentage of total deliveries covered by a particular carrier 
SELECT 
    fs.CarrierKey,
	dc.carrier_name,
    COUNT(transactionID) AS TotalDeliveries,
    PERCENT_RANK() OVER (ORDER BY COUNT(transactionID) DESC) AS DeliveryPercentage
FROM dbo.FactSales as fs
INNER JOIN dbo.DIMCarrier as dc
ON fs.CarrierKey = dc.CarrierKey
GROUP BY fs.CarrierKey, dc.carrier_name;





--  This function returns a value between 0 and 1, representing the relative position of a row compared to the entire result set.