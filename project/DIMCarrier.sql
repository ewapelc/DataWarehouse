USE [project_development]
GO

/****** Object:  Table [dbo].[carrier]    Script Date: 24.11.2023 13:17:49 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIMCarrier](
	[CarrierKey] INT IDENTITY(1,1),
	[carrier_id] [smallint] NULL,
	[carrier_name] [varchar](4) NULL,
	[address] [varchar](48) NULL,
	[tax_id] [int] NULL,
	[contact_person] [varchar](19) NULL,
	start_date datetime,
	end_date datetime
) ON [PRIMARY]
GO


