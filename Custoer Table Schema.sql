USE [CRM_DB]
GO

/****** Object:  Table [dbo].[Customer_Table]    Script Date: 27-09-2023 16:11:06 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer_Table](
	[Campaign_ID] [bigint] NOT NULL,
	[Customer_ID] [varchar](50) NULL,
	[Customer_name] [varchar](100) NULL,
	[Address1] [varchar](max) NULL,
	[Customer_email] [varchar](50) NULL,
	[Customer_phone] [bigint] NULL,
	[Customer_State] [varchar](max) NULL,
	[CITY] [varchar](50) NULL,
	[Customer_Type] [varchar](20) NULL,
	[Product] [varchar](50) NULL,
	[Decile] [varchar](50) NULL,
	[Tenure] [varchar](50) NULL,
	[OptIn] [varchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


