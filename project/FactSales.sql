USE [project_development]
GO

/****** Object:  Table [dbo].[sales]    Script Date: 24.11.2023 13:21:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactSales](
	[transactionID] int IDENTITY(1,1),
	[CarrierKey] int NULL,
	[CustomerKey] int NULL,
	[DateKey] [int] NULL,
	[amount] [varchar](50) NULL,
	[date] [varchar](50) NULL
) ON [PRIMARY]
GO


