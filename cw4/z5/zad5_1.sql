USE [cwiczenia4_development]
GO

/****** Object:  Table [dbo].[carrier]    Script Date: 11.11.2023 15:42:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DIMdate](
	[id] [varchar](50) NULL,
	[date] datetime NULL,
	[quarter] [varchar](50) NULL,
	[year] [varchar](50) NULL,
	[month] [varchar](50) NULL,
	[week] [varchar](50) NULL,
) ON [PRIMARY]
GO


