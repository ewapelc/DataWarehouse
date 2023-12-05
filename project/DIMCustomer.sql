USE [project_development]
GO

/****** Object:  Table [dbo].[customer]    Script Date: 24.11.2023 13:17:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIMCustomer](
	[CustomerKey] INT IDENTITY(1,1),
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[street] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	start_date datetime,
	end_date datetime
) ON [PRIMARY]
GO


