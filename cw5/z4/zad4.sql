-- Insert some sample data
INSERT INTO dbo.FactSales ([order_id],[date],[time],[customer_id],[carrier_id],[order_details_id],[pizza_id])
VALUES (1,'2023-02-1', '11:11', 1, 3, 25, 1),
		(1,'2023-02-1', '12:11', 1, 3, 1, 1),
		(1,'2023-02-1', '13:11', 1, 3, 25, 2);
 GO
-- Create a view with schema binding

CREATE VIEW dbo.MyView1
WITH SCHEMABINDING
AS
    SELECT [order_id],[date],[time],[customer_id],[carrier_id],[order_details_id],[pizza_id]
    FROM
        dbo.FactSales;
GO
 
-- Create an index on the view
CREATE UNIQUE CLUSTERED INDEX IX_FactInternetSalesDate
ON dbo.MyView1 ([order_id]);
GO