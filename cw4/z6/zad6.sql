USE [cwiczenia4_development]
GO

/****** Object:  Table [dbo].[carrier]    Script Date: 11.11.2023 15:30:00 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIMcarrier](
	[carrier_id] [varchar](50) NULL,
	[carrier_name] [varchar](50) NULL,
	[address] [varchar](50) NULL,
	[tax_id] [varchar](50) NULL,
	[contact_person] [varchar](50) NULL,
	start_date datetime NULL,
	end_date datetime NULL
) ON [PRIMARY]
GO


