USE [CallAuditCenter]
GO
/****** Object:  Table [dbo].[Call_Details]    Script Date: 7/14/2023 2:33:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Call_Details](
	[Call_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Agent_Name] [varchar](50) NULL,
	[Agent_ID] [int] NULL,
	[Call_DateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[Call_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Call_Scoring_Details]    Script Date: 7/14/2023 2:33:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Call_Scoring_Details](
	[Call_Score_ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Call_ID] [bigint] NULL,
	[Question_ID] [tinyint] NULL,
	[Answer] [varchar](10) NULL,
	[Score] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[Call_Score_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login_Details]    Script Date: 7/14/2023 2:33:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login_Details](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NULL,
	[Pwd] [varchar](50) NULL,
	[IsActive] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question_Details]    Script Date: 7/14/2023 2:33:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question_Details](
	[Question_ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[Qusetion_Name] [varchar](5) NULL,
	[Question_Description] [varchar](1000) NULL,
	[Category] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Question_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Details]    Script Date: 7/14/2023 2:33:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Details](
	[UserID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[HASH] [nvarchar](max) NOT NULL,
	[SALT] [varbinary](512) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Call_Details] ON 

INSERT [dbo].[Call_Details] ([Call_ID], [Agent_Name], [Agent_ID], [Call_DateTime]) VALUES (1, N'John', 1, CAST(N'2023-06-30T11:56:00.770' AS DateTime))
INSERT [dbo].[Call_Details] ([Call_ID], [Agent_Name], [Agent_ID], [Call_DateTime]) VALUES (2, N'Monte', 2, CAST(N'2023-06-30T11:56:00.777' AS DateTime))
INSERT [dbo].[Call_Details] ([Call_ID], [Agent_Name], [Agent_ID], [Call_DateTime]) VALUES (3, N'Stan', 3, CAST(N'2023-06-30T11:56:00.783' AS DateTime))
INSERT [dbo].[Call_Details] ([Call_ID], [Agent_Name], [Agent_ID], [Call_DateTime]) VALUES (4, N'Tammy', 4, CAST(N'2023-06-30T11:56:00.790' AS DateTime))
INSERT [dbo].[Call_Details] ([Call_ID], [Agent_Name], [Agent_ID], [Call_DateTime]) VALUES (5, N'Mark', 5, CAST(N'2023-06-30T11:56:00.797' AS DateTime))
INSERT [dbo].[Call_Details] ([Call_ID], [Agent_Name], [Agent_ID], [Call_DateTime]) VALUES (6, N'Jacob', 6, CAST(N'2023-06-30T11:56:00.803' AS DateTime))
SET IDENTITY_INSERT [dbo].[Call_Details] OFF
SET IDENTITY_INSERT [dbo].[Login_Details] ON 

INSERT [dbo].[Login_Details] ([UserId], [UserName], [Pwd], [IsActive]) VALUES (1, N'admin', N'admin123', 1)
SET IDENTITY_INSERT [dbo].[Login_Details] OFF
SET IDENTITY_INSERT [dbo].[Question_Details] ON 

INSERT [dbo].[Question_Details] ([Question_ID], [Qusetion_Name], [Question_Description], [Category]) VALUES (4, N'Q1', N'Stated calls was recorded?', N'Category1')
INSERT [dbo].[Question_Details] ([Question_ID], [Qusetion_Name], [Question_Description], [Category]) VALUES (5, N'Q2', N'Stated Licensed Agent?', N'Category1')
INSERT [dbo].[Question_Details] ([Question_ID], [Qusetion_Name], [Question_Description], [Category]) VALUES (6, N'Q3', N'Confirmed Medicare A and B?', N'Category1')
SET IDENTITY_INSERT [dbo].[Question_Details] OFF
ALTER TABLE [dbo].[Call_Scoring_Details]  WITH CHECK ADD FOREIGN KEY([Call_ID])
REFERENCES [dbo].[Call_Details] ([Call_ID])
GO
ALTER TABLE [dbo].[Call_Scoring_Details]  WITH CHECK ADD FOREIGN KEY([Question_ID])
REFERENCES [dbo].[Question_Details] ([Question_ID])
GO
