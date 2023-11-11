USE [cwiczenia4_development]
GO

/****** Object:  Table [dbo].[customers]    Script Date: 11.11.2023 14:58:56 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIMcustomers](
	[id] [varchar](50) NULL,
	[first_name] [varchar](50) NULL,
	[last_name] [varchar](50) NULL,
	[street] [varchar](50) NULL,
	[city] [varchar](50) NULL,
	[state] [varchar](50) NULL,
	[country] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	[email] [varchar](50) NULL,
	start_date datetime NULL,
	end_date datetime NULL
) ON [PRIMARY]
GO


