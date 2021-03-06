USE [Sukhkarta]
GO
/****** Object:  Table [dbo].[Valid_status]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Valid_status]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Valid_status](
	[Valid_id] [int] NOT NULL,
	[Status] [varchar](10) NOT NULL,
 CONSTRAINT [pk_ValidId] PRIMARY KEY CLUSTERED 
(
	[Valid_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Valid_status] ([Valid_id], [Status]) VALUES (1, N'Valid')
INSERT [dbo].[Valid_status] ([Valid_id], [Status]) VALUES (2, N'Invalid')
/****** Object:  Table [dbo].[Unit]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Unit]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Unit](
	[Unit_Id] [int] NOT NULL,
	[Unit] [varchar](5) NOT NULL,
 CONSTRAINT [pk_UnitId] PRIMARY KEY CLUSTERED 
(
	[Unit_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Unit] ([Unit_Id], [Unit]) VALUES (1, N'Sqft')
INSERT [dbo].[Unit] ([Unit_Id], [Unit]) VALUES (2, N'SqYrd')
INSERT [dbo].[Unit] ([Unit_Id], [Unit]) VALUES (3, N'Acre')
/****** Object:  Table [dbo].[Type]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Type](
	[Type_id] [int] NOT NULL,
	[Description] [varchar](15) NOT NULL,
 CONSTRAINT [pk_Type] PRIMARY KEY CLUSTERED 
(
	[Type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Type] ([Type_id], [Description]) VALUES (1, N'1 BHK')
INSERT [dbo].[Type] ([Type_id], [Description]) VALUES (2, N'2 BHK')
INSERT [dbo].[Type] ([Type_id], [Description]) VALUES (3, N'3 BHK')
/****** Object:  Table [dbo].[Title]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Title]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Title](
	[Title_id] [int] NOT NULL,
	[Title] [varchar](10) NOT NULL,
 CONSTRAINT [pk_TitleId] PRIMARY KEY CLUSTERED 
(
	[Title_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Title] ([Title_id], [Title]) VALUES (1, N'Mr')
INSERT [dbo].[Title] ([Title_id], [Title]) VALUES (2, N'Mrs')
INSERT [dbo].[Title] ([Title_id], [Title]) VALUES (3, N'Miss')
/****** Object:  Table [dbo].[test1]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[test1]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[test1](
	[id] [int] NULL,
	[descr] [varchar](250) NULL,
	[name] [varchar](200) NULL,
	[path] [varchar](250) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[test1] ([id], [descr], [name], [path]) VALUES (14, N'This is new descr', N'LAKSHMI NIWAS', N'')
INSERT [dbo].[test1] ([id], [descr], [name], [path]) VALUES (14, N'This is new descr', N'LAKSHMI NIWAS', N'UploadedFiles\43948a3c-70e3-4241-adcd-98222be28a58images (6).jpg')
INSERT [dbo].[test1] ([id], [descr], [name], [path]) VALUES (14, N'This is new descr', N'LAKSHMI NIWAS', N'UploadedFiles\43948a3c-70e3-4241-adcd-98222be28a58images (6).jpg')
INSERT [dbo].[test1] ([id], [descr], [name], [path]) VALUES (14, N'This is new descr', N'LAKSHMI NIWAS', N'UploadedFiles\4c04d572-df56-40a1-aa2f-b86b6214078620130703_110811.jpg')
INSERT [dbo].[test1] ([id], [descr], [name], [path]) VALUES (14, N'This is new descr1', N'LAKSHMI NIWAS', N'UploadedFiles\4c04d572-df56-40a1-aa2f-b86b6214078620130703_110811.jpg')
INSERT [dbo].[test1] ([id], [descr], [name], [path]) VALUES (1, N'This 2-Bhk flat is at kolhapur having 1500 sqft. area. Construction year 2003', N'SAI', N'UploadedFiles\2b56a7ff-4796-4a3a-9e30-a15e33a8fca303.jpg')
INSERT [dbo].[test1] ([id], [descr], [name], [path]) VALUES (1, N'This 2-Bhk flat is at kolhapur having 1500 sqft. area. Construction year 2003', N'SAI', N'UploadedFiles\2b56a7ff-4796-4a3a-9e30-a15e33a8fca303.jpg')
INSERT [dbo].[test1] ([id], [descr], [name], [path]) VALUES (14, N'This is new descr', N'LAKSHMI NIWAS', N'UploadedFiles\4c04d572-df56-40a1-aa2f-b86b6214078620130703_110811.jpg')
INSERT [dbo].[test1] ([id], [descr], [name], [path]) VALUES (14, N'This is new descr', N'LAKSHMI NIWAS', N'UploadedFiles\4c04d572-df56-40a1-aa2f-b86b6214078620130703_110811.jpg')
/****** Object:  Table [dbo].[Enquiry_type]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enquiry_type]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Enquiry_type](
	[Enquiry_type_id] [int] NOT NULL,
	[Enquiry_type] [varchar](10) NULL,
 CONSTRAINT [pk_EnquiryType] PRIMARY KEY CLUSTERED 
(
	[Enquiry_type_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Enquiry_type] ([Enquiry_type_id], [Enquiry_type]) VALUES (1, N'Buy Home')
INSERT [dbo].[Enquiry_type] ([Enquiry_type_id], [Enquiry_type]) VALUES (2, N'Buy Land')
INSERT [dbo].[Enquiry_type] ([Enquiry_type_id], [Enquiry_type]) VALUES (3, N'Sell')
INSERT [dbo].[Enquiry_type] ([Enquiry_type_id], [Enquiry_type]) VALUES (4, N'General')
/****** Object:  Table [dbo].[Credential]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Credential]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Credential](
	[User_Name] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Credential] PRIMARY KEY CLUSTERED 
(
	[User_Name] ASC,
	[Password] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Credential] ([User_Name], [Password]) VALUES (N'pritam', N'123')
/****** Object:  Table [dbo].[City]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[City]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[City](
	[City_id] [int] NOT NULL,
	[City] [varchar](20) NOT NULL,
 CONSTRAINT [pk_CityId] PRIMARY KEY CLUSTERED 
(
	[City_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[City] ([City_id], [City]) VALUES (1, N'PUNE')
INSERT [dbo].[City] ([City_id], [City]) VALUES (2, N'KOLHAPUR')
INSERT [dbo].[City] ([City_id], [City]) VALUES (3, N'MUMBAI')
INSERT [dbo].[City] ([City_id], [City]) VALUES (4, N'SANGLI')
/****** Object:  Table [dbo].[Category]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Category]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Category](
	[Cat_Id] [int] NOT NULL,
	[Category] [varchar](15) NOT NULL,
 CONSTRAINT [pk_CatId] PRIMARY KEY CLUSTERED 
(
	[Cat_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Category] ([Cat_Id], [Category]) VALUES (1, N'Flat')
INSERT [dbo].[Category] ([Cat_Id], [Category]) VALUES (2, N'Office')
INSERT [dbo].[Category] ([Cat_Id], [Category]) VALUES (3, N'Shop')
INSERT [dbo].[Category] ([Cat_Id], [Category]) VALUES (4, N'Villa')
/****** Object:  Table [dbo].[Enquiry_Followup]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enquiry_Followup]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Enquiry_Followup](
	[Followup_Id] [int] NOT NULL,
	[Enquiry_Id] [int] NULL,
	[Remark] [varchar](1000) NULL,
	[Followup_Date] [datetime] NULL,
	[Current_Status] [varchar](10) NULL,
	[Followup_Required] [varchar](5) NULL,
	[Next_Followup_Date] [datetime] NULL,
	[Next_Followup_Status] [varchar](10) NULL,
 CONSTRAINT [Pk_FollowupId] PRIMARY KEY CLUSTERED 
(
	[Followup_Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (1, 1, N'Busy', CAST(0x0000A23500000000 AS DateTime), N'done', N'Yes', CAST(0x0000A23600000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (2, 1, N'Will call back within 2 days', CAST(0x0000A23600000000 AS DateTime), N'done', N'Yes', CAST(0x0000A23800000000 AS DateTime), N'Pending')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (3, 1, N'System.Web.UI.WebControls.TextBox', CAST(0x0000A24B01727A8C AS DateTime), N'Done', N'Yes', CAST(0x0000A17D00000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (4, 1, N'Test2', CAST(0x0000A24B01737171 AS DateTime), N'Done', N'Yes', CAST(0x0000A19C00000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (5, 1, N'Test3', CAST(0x0000A24B01741284 AS DateTime), N'Done', N'Yes', CAST(0x0000A1BA00000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (6, 1, N'Test4', CAST(0x0000A24B01747B21 AS DateTime), N'Done', N'Yes', CAST(0x0000A23500000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (7, 1, N'Test5', CAST(0x0000A24B0174C63F AS DateTime), N'Done', N'No', CAST(0x0000000000000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (8, 1, N'I m busy in meetin call me tommorrow', CAST(0x0000A24B01756D50 AS DateTime), N'Done', N'Yes', CAST(0x0000A17D00000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (9, 6, N'Test1', CAST(0x0000A24B017D9D2F AS DateTime), N'Done', N'Yes', CAST(0x0000A19C00000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (10, 6, N'Test2', CAST(0x0000A24B017DD9E1 AS DateTime), N'Done', N'Yes', CAST(0x0000A1BA00000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (11, 6, N'Test3', CAST(0x0000A24B017E0C2B AS DateTime), N'Done', N'No', CAST(0x0000000000000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (12, 1, N'TEsttt', CAST(0x0000A24B018662F5 AS DateTime), N'Done', N'No', CAST(0x0000000000000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (13, 13, N'test', CAST(0x0000A24B01867544 AS DateTime), N'Done', N'No', CAST(0x0000000000000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (14, 25, N'Call me by 2', CAST(0x0000A26F0060C552 AS DateTime), N'Done', N'Yes', CAST(0x0000A1F800000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (15, 25, N'test 2 ', CAST(0x0000A26F0060F8FD AS DateTime), N'Done', N'No', CAST(0x0000000000000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (16, 25, N'should show next followup pending till i will not do followup', CAST(0x0000A26F00618B78 AS DateTime), N'Done', N'Yes', CAST(0x0000A21700000000 AS DateTime), N'Pending')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (17, 1, N'Test6', CAST(0x0000A28800A90305 AS DateTime), N'Done', N'Yes', CAST(0x0000A17F00000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (18, 1, N'Test7', CAST(0x0000A28800A91E1E AS DateTime), N'Done', N'No', CAST(0x0000000000000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (19, 1, N'Test8', CAST(0x0000A28800A938D9 AS DateTime), N'Done', N'No', CAST(0x0000000000000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (20, 26, N'Call me tommorrow', CAST(0x0000A28800C2A7E1 AS DateTime), N'Done', N'Yes', CAST(0x0000A16300000000 AS DateTime), N'Pending')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (21, 27, N'Call me tommorrow', CAST(0x0000A28800C798CB AS DateTime), N'Done', N'Yes', CAST(0x0000A17F00000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (22, 27, N'', CAST(0x0000A28800C7BC3B AS DateTime), N'Done', N'No', CAST(0x0000000000000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (23, 27, N'Test', CAST(0x0000A28800C8BA82 AS DateTime), N'Done', N'Yes', CAST(0x0000000000000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (24, 27, N'Test2', CAST(0x0000A28800C94C80 AS DateTime), N'Done', N'Yes', CAST(0x0000A28800000000 AS DateTime), N'Pending')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (25, 7, N'Call me', CAST(0x0000A28B00A6294D AS DateTime), N'Done', N'Yes', CAST(0x0000A21800000000 AS DateTime), N'Pending')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (26, 6, N'I am interested want to negotiate', CAST(0x0000A28E009D5C39 AS DateTime), N'Done', N'Yes', CAST(0x0000A23700000000 AS DateTime), N'Pending')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (27, 29, N'Call me after 2 hrs', CAST(0x0000A2A1014E44CE AS DateTime), N'Done', N'Yes', CAST(0x0000A2A100000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (28, 29, N'I am interested', CAST(0x0000A2A1014EC69D AS DateTime), N'Done', N'No', CAST(0x0000000000000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (29, 30, N'I m interested in it call me tommorrow', CAST(0x0000A2AA00E63A36 AS DateTime), N'Done', N'Yes', CAST(0x0000A2AB00000000 AS DateTime), N'Pending')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (30, 31, N'busy', CAST(0x0000A2AA00EA6E02 AS DateTime), N'Done', N'No', CAST(0x0000000000000000 AS DateTime), N'Done')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (31, 33, N'Calling but he is busy', CAST(0x0000A4E801512964 AS DateTime), N'Done', N'Yes', CAST(0x0000A4E900000000 AS DateTime), N'Pending')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (32, 1, N'Call me tommorrow', CAST(0x0000A50B010DA1E4 AS DateTime), N'Done', N'Yes', CAST(0x0000A50C00000000 AS DateTime), N'Pending')
INSERT [dbo].[Enquiry_Followup] ([Followup_Id], [Enquiry_Id], [Remark], [Followup_Date], [Current_Status], [Followup_Required], [Next_Followup_Date], [Next_Followup_Status]) VALUES (33, 37, N'Meeting. Call me after 4 days', CAST(0x0000A50B01130912 AS DateTime), N'Done', N'Yes', CAST(0x0000A50E00000000 AS DateTime), N'Pending')
/****** Object:  Table [dbo].[Sale_status]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Sale_status]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Sale_status](
	[Status_id] [int] NOT NULL,
	[Status] [varchar](10) NOT NULL,
 CONSTRAINT [pk_statusid] PRIMARY KEY CLUSTERED 
(
	[Status_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Sale_status] ([Status_id], [Status]) VALUES (1, N'Unsold')
INSERT [dbo].[Sale_status] ([Status_id], [Status]) VALUES (2, N'Sold')
/****** Object:  Table [dbo].[State]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[State]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[State](
	[State_id] [int] NOT NULL,
	[State] [varchar](20) NULL,
 CONSTRAINT [pk_StateId] PRIMARY KEY CLUSTERED 
(
	[State_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[State] ([State_id], [State]) VALUES (1, N'Maharashtra')
/****** Object:  Table [dbo].[Land]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Land]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Land](
	[Land_id] [int] NOT NULL,
	[Name] [varchar](20) NULL,
	[Area] [float] NULL,
	[Area_sqft] [int] NULL,
	[Unit] [varchar](10) NULL,
	[Price] [money] NULL,
	[Status] [int] NULL,
	[City] [varchar](15) NULL,
	[Description] [varchar](100) NULL,
	[Ld_Address] [varchar](250) NULL,
	[State_Nm] [varchar](20) NULL,
	[Pin_Code] [int] NULL,
 CONSTRAINT [pk_LandId] PRIMARY KEY CLUSTERED 
(
	[Land_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Land] ([Land_id], [Name], [Area], [Area_sqft], [Unit], [Price], [Status], [City], [Description], [Ld_Address], [State_Nm], [Pin_Code]) VALUES (1, N'Sundar Ban', 1, 40000, N'Acre', 2600000.0000, 1, N'KOLHAPUR', N'Ready to sold. Having 1 well.', NULL, NULL, NULL)
INSERT [dbo].[Land] ([Land_id], [Name], [Area], [Area_sqft], [Unit], [Price], [Status], [City], [Description], [Ld_Address], [State_Nm], [Pin_Code]) VALUES (2, N'Ram Sheti', 1, 40000, N'Acre', 2800000.0000, 1, N'SANGLI', NULL, NULL, NULL, NULL)
INSERT [dbo].[Land] ([Land_id], [Name], [Area], [Area_sqft], [Unit], [Price], [Status], [City], [Description], [Ld_Address], [State_Nm], [Pin_Code]) VALUES (3, N'A1', 1.3, 60000, N'Acre', 4200000.0000, 1, N'KOLHAPUR', N'Situated at bank of river', NULL, NULL, NULL)
INSERT [dbo].[Land] ([Land_id], [Name], [Area], [Area_sqft], [Unit], [Price], [Status], [City], [Description], [Ld_Address], [State_Nm], [Pin_Code]) VALUES (4, N'A2', 0.3, 20000, N'Acre', 1200000.0000, 1, N'KOLHAPUR', N'Situated at bank of river', NULL, NULL, NULL)
INSERT [dbo].[Land] ([Land_id], [Name], [Area], [Area_sqft], [Unit], [Price], [Status], [City], [Description], [Ld_Address], [State_Nm], [Pin_Code]) VALUES (5, N'KEDAR FARMS', 2, 87120, N'Acre', 2500000.0000, 1, N'SANGLI', N'Situated on bank of river. Having 15 mango trees in it.', N'JK Road,Kurlap', N'Maharashtra', 5757757)
INSERT [dbo].[Land] ([Land_id], [Name], [Area], [Area_sqft], [Unit], [Price], [Status], [City], [Description], [Ld_Address], [State_Nm], [Pin_Code]) VALUES (6, N'RAM SHETI', 2, 87120, N'Acre', 2700000.0000, 1, N'SANGLI', N'Having our own well water', N'Shinde Road Kavatemahankal', N'Maharashtra', 0)
INSERT [dbo].[Land] ([Land_id], [Name], [Area], [Area_sqft], [Unit], [Price], [Status], [City], [Description], [Ld_Address], [State_Nm], [Pin_Code]) VALUES (7, N'SAGAR FARMS', 2, 87120, N'Acre', 2650000.0000, 1, N'SANGLI', N'A Road touch farm. Having own well water. also having a shed inside the farm', N'Patil Mala, Saygoan', N'Maharashtra', 548548)
/****** Object:  Table [dbo].[Enquiry]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enquiry]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Enquiry](
	[Enquiry_id] [int] NOT NULL,
	[Title] [varchar](5) NULL,
	[FName] [varchar](15) NULL,
	[MName] [varchar](15) NULL,
	[LName] [varchar](15) NULL,
	[Address] [varchar](150) NULL,
	[City] [varchar](15) NULL,
	[State] [varchar](20) NULL,
	[Mobile] [varchar](15) NULL,
	[Phone_no] [varchar](15) NULL,
	[E_mail] [varchar](25) NULL,
	[Enquiry_type] [int] NULL,
	[Pin_Code] [int] NULL,
	[Created_date] [datetime] NULL,
 CONSTRAINT [pk_EnquryId] PRIMARY KEY CLUSTERED 
(
	[Enquiry_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (1, N'Mr', N'Pritam', N'Gajanan', N'Satpute', N'Behind MSEB, Kurlap', N'SANGLI', N'SANGLI', N'9970173006', N'02342-255621', N'pri.satpute.it@gmail.com', 1, 25685, CAST(0x0000A235014F8417 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (2, N'Mr', N'Sachin', N'', N'Tavate', N'', N'PUNE', N'PUNE', N'9859782536', N'', N'', 1, 25685, CAST(0x0000A2350150B20B AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (3, N'Mr', N'Rajesh', N'', N'Nalawade', N'RK nagar', N'SANGLI', N'Maharashtra', N'8956879852', N'', N'raj@gmail.com', 1, 598566, CAST(0x0000A23501527772 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (4, N'Mr', N'Ram', N'', N'Patil', N'', N'KOLHAPUR', N'Maharashtra', N'9876598548', N'', N'', 1, 57845, CAST(0x0000A236000B242B AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (5, N'Mr', N'', N'', N'', N'', N'KOLHAPUR', N'Maharashtra', N'', N'', N'', 1, 0, CAST(0x0000A236000B2CB2 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (6, N'Mr', N'Sanket', N'Subhash', N'Shinde', N'15 no. petrol pump,Hadapsar', N'PUNE', N'Maharashtra', N'9856978452', N'', N'sank@gmail.com', 2, 517028, CAST(0x0000A2370007AAF4 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (7, N'Mr', N'Rohit ', N'Mohan', N'Channe', N'Mayani', N'SANGLI', N'Maharashtra', N'9878965326', N'', N'rc@gmail.com', 3, 0, CAST(0x0000A237000FE434 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (8, N'Mrs', N'Kajol', N'Ajay', N'Devgan', N'RK film city', N'MUMBAI', N'Maharashtra', N'8956879852', N'', N'kj@gmail.vom', 2, 56897, CAST(0x0000A23A00B1AD8E AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (9, N'Mrs', N'Yogita', N'Ram', N'Patil', N'', N'SANGLI', N'Maharashtra', N'8956879852', N'', N'yogram@gmail.com', 1, 517028, CAST(0x0000A23A00D93249 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (10, N'Mr', N'Sagar', N'Shankar', N'Mane', N'RK road Mayani', N'SANGLI', N'Maharashtra', N'9986536956', N'', N'saggy@gmail.com', 2, 5565498, CAST(0x0000A23A01042BA0 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (11, N'Mr', N'Amit', N'', N'Inde', N'mashal vasti,vijapur road,block no 3 yogi rajendra nagar', N'SANGLI', N'Maharashtra', N'7304815050', N'', N'', 1, 5893546, CAST(0x0000A23B00B8BEAF AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (12, N'Mr', N'Santosh', N'Anil', N'Tavate', N'Behind MSEB, Malwadi, Kurlap', N'SANGLI', N'Maharashtra', N'9856989656', N'', N'santu@gmail.com', 4, 415423, CAST(0x0000A24101837CC1 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (13, N'Mr', N'Anil', N'Ramadhar', N'Ravidas', N'Ilahabad', N'PUNE', N'Maharashtra', N'9865852565', N'023567878', N'', 1, 457878, CAST(0x0000A24B00C022A5 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (14, N'Mr', N'Suhas', N'Ramesh', N'Patil', N'A:P: Nagar', N'SANGLI', N'Maharashtra', N'9970173006', N'', N'', 1, 454, CAST(0x0000A26F004D1EE6 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (15, N'Miss', N'Gohar ', N'', N'Khan', N'Mumbai', N'MUMBAI', N'Maharashtra', N'9856985698', N'', N'', 1, 212112, CAST(0x0000A26F0050197B AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (16, N'Miss', N'Gohar ', N'Ajaj', N'Khan', N'Mumbai', N'MUMBAI', N'Maharashtra', N'9856985698', N'', N'', 1, 212112, CAST(0x0000A26F0050333E AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (17, N'Miss', N'Gohar ', N'Ajaj', N'Khan', N'Mumbai', N'MUMBAI', N'Maharashtra', N'9856985698', N'', N'', 1, 0, CAST(0x0000A26F005042DD AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (18, N'Mr', N'Kushal', N'', N'Tandan', N'Mumbai', N'KOLHAPUR', N'Maharashtra', N'9856985698', N'', N'', 1, 517028, CAST(0x0000A26F00514626 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (19, N'Mr', N'Ramesh', N'Shankar', N'Vagh', N'mumbai', N'MUMBAI', N'Maharashtra', N'9856978452', N'', N'', 1, 455, CAST(0x0000A26F00532123 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (20, N'Mr', N'Test', N'', N'', N'', N'PUNE', N'Maharashtra', N'', N'', N'', 1, 0, CAST(0x0000A26F0054EBE6 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (21, N'Mr', N'Samar', N'Pratap', N'Singh', N'Pune', N'PUNE', N'Maharashtra', N'8956879852', N'', N'', 1, 0, CAST(0x0000A26F005713B4 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (22, N'Mrs', N'Anjana', N'Samar', N'Singh', N'Pune', N'PUNE', N'Maharashtra', N'9856978452', N'', N'', 1, 132156, CAST(0x0000A26F0057A333 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (23, N'Mrs', N'Ragini', N'Anand', N'Shinde', N'Pune', N'PUNE', N'Maharashtra', N'8956879852', N'', N'', 1, 0, CAST(0x0000A26F005AA2AA AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (24, N'Mr', N'Jayraj', N'Uttam', N'Ghorpade', N'Satara', N'SANGLI', N'Maharashtra', N'9970173006', N'', N'', 2, 0, CAST(0x0000A26F005C6A81 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (25, N'Mr', N'Amit', N'Kumar', N'sinha', N'pune', N'PUNE', N'Maharashtra', N'9856978452', N'', N'', 1, 0, CAST(0x0000A26F00604CA4 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (26, N'Mr', N'Sameer', N'Chandra', N'Das', N'Kolkatta', N'PUNE', N'Maharashtra', N'9856989656', N'', N'', 3, 415423, CAST(0x0000A28800C26D55 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (27, N'Mr', N'Laxman', N'Purashottam', N'Rawool', N'Sindhidurga', N'PUNE', N'Maharashtra', N'9984256485', N'', N'', 1, 0, CAST(0x0000A28800C74194 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (28, N'Mr', N'', N'', N'', N'', N'PUNE', N'Maharashtra', N'', N'', N'', 3, 0, CAST(0x0000A2940135FB16 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (29, N'Mr', N'Rakesh', N'Sandip', N'Sharma', N'Behind HP petrol Pump.', N'KOLHAPUR', N'Maharashtra', N'9856487565', N'', N'rak@gmail.com', 1, 4102592, CAST(0x0000A2A1014DE323 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (30, N'Mr', N'Tushar', N'Dilip', N'Pawar', N'roha', N'PUNE', N'Maharashtra', N'9970173006', N'', N'', 1, 0, CAST(0x0000A2AA00E4A3DD AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (31, N'Mrs', N'Karishma', N'Tushar ', N'Pawar', N'poha', N'PUNE', N'Maharashtra', N'9856989656', N'', N'', 4, 0, CAST(0x0000A2AA00EA1D18 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (32, N'Mr', N'', N'', N'', N'', N'PUNE', N'Maharashtra', N'', N'', N'', 3, 0, CAST(0x0000A2C0017C6963 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (33, N'Mr', N'Sagar', N'Shakar', N'Mane', N'Katraj Pune', N'PUNE', N'Maharashtra', N'9856487595', N'', N'', 3, 12456452, CAST(0x0000A2C0017E1169 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (34, N'Mr', N'Samrat', N'Sayaji', N'Patil', N'Pune', N'PUNE', N'Maharashtra', N'9856452135', N'', N'', 1, 0, CAST(0x0000A2C00183C004 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (35, N'Mr', N'Ravi', N'a', N'Koli', N'aa', N'PUNE', N'Maharashtra', N'9999999999', N'', N'as@gmail.com', 1, 0, CAST(0x0000A50B010B7648 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (36, N'Mr', N'Pritam', N'G', N'Satpute', N'ad', N'PUNE', N'Maharashtra', N'989898989', N'', N'a', 4, 0, CAST(0x0000A50B010C2B82 AS DateTime))
INSERT [dbo].[Enquiry] ([Enquiry_id], [Title], [FName], [MName], [LName], [Address], [City], [State], [Mobile], [Phone_no], [E_mail], [Enquiry_type], [Pin_Code], [Created_date]) VALUES (37, N'Mr', N'Rakesh', N'A', N'Sharma', N'ad', N'PUNE', N'Maharashtra', N'989859546', N'', N'', 1, 0, CAST(0x0000A50B0112A52E AS DateTime))
/****** Object:  StoredProcedure [dbo].[Enq_FollowupInsert]    Script Date: 01/30/2016 19:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enq_FollowupInsert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE PROCEDURE [dbo].[Enq_FollowupInsert]
@Enq_ID int,
@Remark varchar(1000),
@Followup_Date Datetime,
@Followup_Req varchar(5),
@Next_Followup_Date datetime
as
begin
	declare @Followup_id int
	declare @Next_Foll_Status varchar(10)
	set @Followup_id=ISNULL((SELECT MAX(Followup_id) from Enquiry_Followup),0)+1
	IF(@Followup_Req=''Yes'')
	begin
		set @Next_Foll_Status=''Pending''
	end
	else if(@Followup_Req=''No'')
	begin
		set @Next_Foll_Status=''Done''
		set @Next_Followup_Date=CONVERT(datetime,''1900-01-01 00:00:00.000'') 
	end
	
	declare @Last_Foll_Id int
	set @Last_Foll_Id=ISNULL((select Top 1 Followup_Id from Enquiry_Followup where Enquiry_Id=@Enq_ID order BY Followup_Id desc),0) 
	IF(@Last_Foll_Id<>0)
	BEGIN
		update Enquiry_Followup SET Next_Followup_Status=''Done'' where Followup_Id=@Last_Foll_Id
	END
	
	insert INTO Enquiry_Followup(Followup_Id,Enquiry_Id,Remark,Followup_Date,Current_Status,
	Followup_Required,Next_Followup_Date,Next_Followup_Status)
	VALUES(@Followup_id,@Enq_ID,@Remark,@Followup_Date,''Done'',@Followup_Req,@Next_Followup_Date,@Next_Foll_Status)
	
	
end




' 
END
GO
/****** Object:  Table [dbo].[Home]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Home]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Home](
	[Home_id] [int] NOT NULL,
	[Name] [varchar](30) NULL,
	[Price] [money] NULL,
	[Area] [int] NULL,
	[Stauts] [int] NULL,
	[City] [varchar](20) NULL,
	[Type] [varchar](15) NULL,
	[Category] [varchar](15) NULL,
	[Description] [varchar](2000) NULL,
	[Hm_Address] [varchar](250) NULL,
	[State_Nm] [varchar](20) NULL,
	[Pin_Code] [int] NULL,
 CONSTRAINT [pk_HomeId] PRIMARY KEY CLUSTERED 
(
	[Home_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (1, N'SAI', 2500000.0000, 1500, 1, N'KOLHAPUR', N'2 BHK', N'Flat', N'This 2-Bhk flat is at kolhapur having 1500 sqft. area. Construction year 2003', N'Pare naka, Vita', N'Maharashtra', 0)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (2, N'OM SAI', 3000000.0000, 2000, 1, N'PUNE', N'2 BHK', N'Flat', N'This 2-Bhk flat is at pune having 2000 sqft. area. Construction year 2005. It is also having a small pool with big garden space', NULL, N'Maharashtra', NULL)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (3, N'Sadan', 2500000.0000, 2500, 1, N'SANGLI', N'3 BHK', N'Villa', NULL, NULL, N'Maharashtra', NULL)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (4, N'RAM NIWAS ', 3500000.0000, 2700, 1, N'KOLHAPUR', N'3 BHK', N'Villa', NULL, NULL, N'Maharashtra', NULL)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (5, N'ASHIRWAD', 1500000.0000, 750, 1, N'SHIROL', N'2 BHK', N'Flat', NULL, NULL, N'Maharashtra', NULL)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (6, N'SEA BORDER', 5500000.0000, 1500, 1, N'SANGLI', N'2 BHK', N'Villa', NULL, NULL, N'Maharashtra', NULL)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (7, N'SAI KRUPA', 3800000.0000, 1350, 2, N'KOLHAPUR', N'2 BHK', N'Villa', N'Testing is on on this villa', N'Behind MSEB, Nagar', N'Maharashtra', 454455)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (8, N'SHIV SADAN', 8800000.0000, 1750, 1, N'KOLHAPUR', N'3 BHK', N'Flat', NULL, NULL, N'Maharashtra', NULL)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (9, N'BALAJI NIWAS', 4400000.0000, 1650, 2, N'SANGLI', N'3 BHK', N'Flat', NULL, NULL, N'Maharashtra', NULL)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (10, N'RAJ HOME', 452578.0000, 1500, 1, N'SANGLI', N'2 BHK', N'Villa', N'Near KBP college, MG Road', N'Near KBP college, MG Road', N'Maharashtra', 452578)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (12, N'SAI SHRADHA', 2300000.0000, 1500, 1, N'KOLHAPUR', N'3 BHK', N'Villa', N'Behind ganesh mandir, RK nagar', N'Behind ganesh mandir, RK nagar', N'Maharashtra', 25656)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (13, N'AASHIRWAD', 2100000.0000, 750, 1, N'PUNE', N'1 BHK', N'Flat', N'Tekawade Pumps, Solapur Road ,Hadapsar', N'Tekawade Pumps, Solapur Road ,Hadapsar', N'Maharashtra', 5489999)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (14, N'LAKSHMI NIWAS', 2700000.0000, 1350, 1, N'PUNE', N'2 BHK', N'Villa', N'This is new descr', N'Lane No 3 , Bhadarkar Road, Deccan', N'Maharashtra', 254588)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (15, N'SAI PRASAD', 1500000.0000, 750, 1, N'KOLHAPUR', N'1 BHK', N'Flat', N'', N'', N'Maharashtra', 599)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (16, N'Meghraj Niwas', 15200000.0000, 1500, 1, N'PUNE', N'1 BHK', N'Flat', N'Pune', N'Pune', N'Maharashtra', 45125)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (17, N'RAM NIWAS', 2500000.0000, 1000, 1, N'PUNE', N'2 BHK', N'Flat', N'2 BHK FLAT TO SALE', N'adfad', N'Maharashtra', 0)
INSERT [dbo].[Home] ([Home_id], [Name], [Price], [Area], [Stauts], [City], [Type], [Category], [Description], [Hm_Address], [State_Nm], [Pin_Code]) VALUES (18, N'OM SAI2', 2500000.0000, 1500, 1, N'PUNE', N'3 BHK', N'Flat', N'Garden', N'PUne', N'Maharashtra', 458965)
/****** Object:  StoredProcedure [dbo].[test]    Script Date: 01/30/2016 19:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[test]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[test]
@id int
as
begin
	select * from City where City= @id
end' 
END
GO
/****** Object:  Table [dbo].[Land_Img]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Land_Img]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Land_Img](
	[Land_imgid] [int] IDENTITY(1,1) NOT NULL,
	[Land_id] [int] NOT NULL,
	[Image_path] [varchar](1000) NULL,
 CONSTRAINT [PK_Land_Image] PRIMARY KEY CLUSTERED 
(
	[Land_imgid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Land_Img] ON
INSERT [dbo].[Land_Img] ([Land_imgid], [Land_id], [Image_path]) VALUES (1, 6, N'UploadedFiles\c8276344-1665-44f1-8af9-16c567131942download (1).jpg')
INSERT [dbo].[Land_Img] ([Land_imgid], [Land_id], [Image_path]) VALUES (2, 7, N'UploadedFiles\86bc0120-665c-420c-91fe-38c8bb13ddbfimages (15).jpg')
SET IDENTITY_INSERT [dbo].[Land_Img] OFF
/****** Object:  Table [dbo].[Enquiry_land]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enquiry_land]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Enquiry_land](
	[ELD_id] [int] NOT NULL,
	[Enquiry_id] [int] NULL,
	[Land_id] [int] NULL,
	[SOL_id] [int] NULL,
 CONSTRAINT [pk_ELDid] PRIMARY KEY CLUSTERED 
(
	[ELD_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Enquiry_land] ([ELD_id], [Enquiry_id], [Land_id], [SOL_id]) VALUES (1, 6, 1, 1)
INSERT [dbo].[Enquiry_land] ([ELD_id], [Enquiry_id], [Land_id], [SOL_id]) VALUES (2, 8, 1, 1)
INSERT [dbo].[Enquiry_land] ([ELD_id], [Enquiry_id], [Land_id], [SOL_id]) VALUES (3, 10, 5, 0)
INSERT [dbo].[Enquiry_land] ([ELD_id], [Enquiry_id], [Land_id], [SOL_id]) VALUES (4, 24, 7, 4)
/****** Object:  Table [dbo].[Home_Img]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Home_Img]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Home_Img](
	[Home_imgid] [int] IDENTITY(1,1) NOT NULL,
	[Home_id] [int] NOT NULL,
	[Image_path] [varchar](1000) NULL,
 CONSTRAINT [PK_Home_Image] PRIMARY KEY CLUSTERED 
(
	[Home_imgid] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Home_Img] ON
INSERT [dbo].[Home_Img] ([Home_imgid], [Home_id], [Image_path]) VALUES (15, 12, N'UploadedFiles\209152b8-0f3c-481e-a747-e1e0c9e1128f')
INSERT [dbo].[Home_Img] ([Home_imgid], [Home_id], [Image_path]) VALUES (16, 13, N'UploadedFiles\d5bfb7ec-214c-4f3c-89b0-d1c8a87ea195images (2).jpg')
INSERT [dbo].[Home_Img] ([Home_imgid], [Home_id], [Image_path]) VALUES (18, 14, N'UploadedFiles\4c04d572-df56-40a1-aa2f-b86b6214078620130703_110811.jpg')
INSERT [dbo].[Home_Img] ([Home_imgid], [Home_id], [Image_path]) VALUES (19, 1, N'UploadedFiles\2b56a7ff-4796-4a3a-9e30-a15e33a8fca303.jpg')
INSERT [dbo].[Home_Img] ([Home_imgid], [Home_id], [Image_path]) VALUES (20, 15, N'UploadedFiles\0981e452-f04c-4df1-9bb3-7cd5ac1f8c04images.jpg')
INSERT [dbo].[Home_Img] ([Home_imgid], [Home_id], [Image_path]) VALUES (21, 16, N'UploadedFiles\6d00cd5f-820a-4961-99a1-c0292457c2f1house.jpg')
INSERT [dbo].[Home_Img] ([Home_imgid], [Home_id], [Image_path]) VALUES (22, 17, N'UploadedFiles\9aa4c10a-9369-4253-8e6c-bef032afd6d4PicsArt_1408882483301.jpg')
INSERT [dbo].[Home_Img] ([Home_imgid], [Home_id], [Image_path]) VALUES (23, 18, N'UploadedFiles\df253a1e-8ba9-4cca-b665-52488ec5c192PicsArt_1409399761476.jpg')
SET IDENTITY_INSERT [dbo].[Home_Img] OFF
/****** Object:  Table [dbo].[Enquiry_home]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enquiry_home]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Enquiry_home](
	[EHM_id] [int] NOT NULL,
	[Enquiry_id] [int] NULL,
	[Home_id] [int] NULL,
	[SOH_id] [int] NULL,
 CONSTRAINT [pk_EHMid] PRIMARY KEY CLUSTERED 
(
	[EHM_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (1, 1, 2, 1)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (2, 2, 7, 5)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (3, 3, 8, 4)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (4, 4, 2, 1)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (5, 5, 2, 1)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (6, 9, 10, 0)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (7, 11, 14, 0)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (8, 13, 15, 0)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (9, 14, 7, 0)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (10, 18, 7, 0)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (11, 19, 7, 5)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (12, 21, 5, 0)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (13, 23, 7, 5)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (14, 25, 8, 4)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (15, 27, 12, 0)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (16, 29, 14, 0)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (17, 30, 7, 5)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (18, 34, 1, 0)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (19, 35, 8, 4)
INSERT [dbo].[Enquiry_home] ([EHM_id], [Enquiry_id], [Home_id], [SOH_id]) VALUES (20, 37, 18, 0)
/****** Object:  Table [dbo].[Special_offer_land]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Special_offer_land]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Special_offer_land](
	[SOL_id] [int] NOT NULL,
	[Land_id] [int] NULL,
	[Original_price] [money] NULL,
	[Special_price] [money] NULL,
	[Valid_from] [datetime] NULL,
	[Valid_to] [datetime] NULL,
	[Valid_status] [int] NULL,
 CONSTRAINT [pk_SOLid] PRIMARY KEY CLUSTERED 
(
	[SOL_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Special_offer_land] ([SOL_id], [Land_id], [Original_price], [Special_price], [Valid_from], [Valid_to], [Valid_status]) VALUES (1, 1, 2600000.0000, 2400000.0000, CAST(0x0000A21900000000 AS DateTime), CAST(0x0000A22C00000000 AS DateTime), 1)
INSERT [dbo].[Special_offer_land] ([SOL_id], [Land_id], [Original_price], [Special_price], [Valid_from], [Valid_to], [Valid_status]) VALUES (2, 3, 4200000.0000, 4100000.0000, CAST(0x0000A21500000000 AS DateTime), CAST(0x0000A25300000000 AS DateTime), 2)
INSERT [dbo].[Special_offer_land] ([SOL_id], [Land_id], [Original_price], [Special_price], [Valid_from], [Valid_to], [Valid_status]) VALUES (3, 3, 4200000.0000, 4000000.0000, CAST(0x0000A25300000000 AS DateTime), CAST(0x0000A27200000000 AS DateTime), 1)
INSERT [dbo].[Special_offer_land] ([SOL_id], [Land_id], [Original_price], [Special_price], [Valid_from], [Valid_to], [Valid_status]) VALUES (4, 7, 2650000.0000, 2500000.0000, CAST(0x0000A25000000000 AS DateTime), CAST(0x0000A27700000000 AS DateTime), 1)
/****** Object:  Table [dbo].[Special_offer_home]    Script Date: 01/30/2016 19:50:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Special_offer_home]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Special_offer_home](
	[SOH_id] [int] NOT NULL,
	[Home_id] [int] NULL,
	[Original_price] [money] NULL,
	[Special_price] [money] NULL,
	[Valid_from] [datetime] NULL,
	[Valid_to] [datetime] NULL,
	[Valid_status] [int] NULL,
 CONSTRAINT [pk_SOHid] PRIMARY KEY CLUSTERED 
(
	[SOH_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
INSERT [dbo].[Special_offer_home] ([SOH_id], [Home_id], [Original_price], [Special_price], [Valid_from], [Valid_to], [Valid_status]) VALUES (1, 2, 3000000.0000, 2800000.0000, CAST(0x0000A1D500000000 AS DateTime), CAST(0x0000A24F00000000 AS DateTime), 1)
INSERT [dbo].[Special_offer_home] ([SOH_id], [Home_id], [Original_price], [Special_price], [Valid_from], [Valid_to], [Valid_status]) VALUES (2, 5, 1500000.0000, 1300000.0000, CAST(0x0000A1FC00000000 AS DateTime), CAST(0x0000A24400000000 AS DateTime), 2)
INSERT [dbo].[Special_offer_home] ([SOH_id], [Home_id], [Original_price], [Special_price], [Valid_from], [Valid_to], [Valid_status]) VALUES (3, 4, 3500000.0000, 3300000.0000, CAST(0x0000A21B00000000 AS DateTime), CAST(0x0000A23F00000000 AS DateTime), 1)
INSERT [dbo].[Special_offer_home] ([SOH_id], [Home_id], [Original_price], [Special_price], [Valid_from], [Valid_to], [Valid_status]) VALUES (4, 8, 8800000.0000, 8500000.0000, CAST(0x0000A21B00000000 AS DateTime), CAST(0x0000A23A00000000 AS DateTime), 1)
INSERT [dbo].[Special_offer_home] ([SOH_id], [Home_id], [Original_price], [Special_price], [Valid_from], [Valid_to], [Valid_status]) VALUES (5, 7, 3800000.0000, 3650000.0000, CAST(0x0000A20000000000 AS DateTime), CAST(0x0000A25300000000 AS DateTime), 1)
/****** Object:  StoredProcedure [dbo].[Land_Insert]    Script Date: 01/30/2016 19:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Land_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[Land_Insert]
@Name varchar(30),
@Area int,
@Unit varchar(10),
@Price money,
@Address varchar(250),
@City varchar(20),
@State_Nm varchar(20),
@Pin_Code int,
@Description varchar(2000),
@Img_Path varchar(250)
as
begin
	declare @Land_id int
	declare @Status int
	declare @Area_Sqft int
	set @Land_id=ISNULL((select max(Land_id) from Land),0)+1
	set @Status=1 --unsold
	if(@Unit=''Acre'')
	begin
		set @Area_Sqft=@Area*43560
	end
	else if(@Unit=''SqYrd'')
	begin
		set @Area_Sqft=@Area*9
	end
	else if(@Unit=''Sqft'')
	begin
		set @Area_Sqft=@Area
	end

	insert into Land(Land_id,Name,Area,Area_sqft,Unit,Price,Status,City,Description,Ld_Address,State_Nm,Pin_Code)
	values
	(@Land_id,@Name,@Area,@Area_Sqft,@Unit,@Price,@Status,@City,@Description,@Address,@State_Nm,@Pin_Code)
	
	IF (@Img_Path <> '''')
	begin
		insert INTO Land_Img(Land_id,Image_path) VALUES (@Land_id,@Img_Path)
	end
end

select * from Land
select * from Unit
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Home_Update]    Script Date: 01/30/2016 19:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Home_Update]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[Home_Update]
@Home_id int,
@Name varchar(30),
@Area int,
@Price money,
@Address varchar(250),
@City varchar(20),
@State_Nm varchar(20),
@Pin_Code int,
@Description varchar(2000),
@Type varchar(15),
@Category varchar(15),
@Status int,
@Home_ImgId int,
@Img_Path varchar(250)
as
begin
	insert INTO test1 values(@Home_id,@Description,@Name,@Img_Path)
	--declare @Status int
	--set @Home_id=ISNULL((select max(Home_id) from Home),0)+1
	--set @Status=1 --unsold
	--insert into Home(Home_id,Name,Price,Area,Stauts,City,Type,Category,Description,Hm_Address,State_Nm,Pin_Code)
	--values
	--(@Home_id,@Name,@Price,@Area,@Status,@City,@Type,@Category,@Description,@Address,@State_Nm,@Pin_Code)
	declare @ImgPathOld varchar(250)
	update Home SET Name=@Name,Price=@Price,Area=@Area,Stauts=@Status,City=@City,Type=@Type,Category=@Category,Description=@Description,Hm_Address=@Address,State_Nm=@State_Nm,Pin_Code=@Pin_Code where Home_id=@Home_id
	
	IF (@Img_Path <> '''')
	begin
		IF(@Home_ImgId<>0)
		begin
			select @ImgPathOld=ISNULL(Image_path,'''') from Home_Img
			IF(@ImgPathOld<>@Img_Path)
			begin
				update Home_Img SET Image_path= @Img_Path where Home_imgid=@Home_ImgId
			end
		end

	end
	
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Home_Insert]    Script Date: 01/30/2016 19:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Home_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[Home_Insert]
@Name varchar(30),
@Area int,
@Price money,
@Address varchar(250),
@City varchar(20),
@State_Nm varchar(20),
@Pin_Code int,
@Description varchar(2000),
@Type varchar(15),
@Category varchar(15),
@Img_Path varchar(250)
as
begin
	declare @Home_id int
	declare @Status int
	set @Home_id=ISNULL((select max(Home_id) from Home),0)+1
	set @Status=1 --unsold
	insert into Home(Home_id,Name,Price,Area,Stauts,City,Type,Category,Description,Hm_Address,State_Nm,Pin_Code)
	values
	(@Home_id,@Name,@Price,@Area,@Status,@City,@Type,@Category,@Description,@Address,@State_Nm,@Pin_Code)
	
	IF (@Img_Path <> '''')
	begin
		insert INTO Home_Img(Home_id,Image_path) VALUES (@Home_id,@Img_Path)
	end
	
end
' 
END
GO
/****** Object:  StoredProcedure [dbo].[Enquiry_Insert]    Script Date: 01/30/2016 19:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Enquiry_Insert]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
CREATE procedure [dbo].[Enquiry_Insert]
@Type varchar(15),
@PK int,
@Title varchar(5),
@Fname varchar(15),
@Mname varchar(15),
@Lname varchar(15),
@Address varchar(150),
@City varchar(15),
@State varchar(20),
@Pin int,
@Mobile varchar(15),
@Phone varchar(15),
@Email varchar(25)
as
begin
	declare @Enquiry_id int
	declare @Enquiry_Type int
	set @Enquiry_id=isnull((select max(Enquiry_id) from Enquiry),0)+1
	
	if(@Type=''SO_Home'')
	begin
		Declare @SOH_id int
		Declare @Home_id int
		Declare @EHM_id int
		set @Enquiry_Type=isnull((select Enquiry_type_id from Enquiry_type where Enquiry_type=''Buy Home''),0)
		set @SOH_id=@PK
		set @Home_id=isnull((select Home_id from Special_offer_home where SOH_id=@SOH_id),0) 
		insert into Enquiry(Enquiry_id,Title,FName,MName,LName,Address,City,
		State,Mobile,Phone_no,E_mail,Enquiry_type,Pin_Code,Created_date)
		values
		(@Enquiry_id,@Title,@Fname,@Mname,@Lname,@Address,@City,@State,@Mobile,
		@Phone,@Email,@Enquiry_Type,@Pin,getdate())
		
		
		
		set @EHM_id=isnull((select max(EHM_id) from Enquiry_home),0)+1
		insert into Enquiry_home(EHM_id,Enquiry_id,Home_id,SOH_id)
		values
		(@EHM_id,@Enquiry_id,@Home_id,@SOH_id)
	end
	if(@Type=''SO_Land'')
	begin
		Declare @SOL_id int
		Declare @Land_id int
		Declare @ELD_id int
		set @Enquiry_Type=isnull((select Enquiry_type_id from Enquiry_type where Enquiry_type=''Buy Land''),0)
		set @SOL_id=@PK
		set @Land_id=isnull((select Land_id from Special_offer_land where SOL_id=@SOL_id),0) 
		insert into Enquiry(Enquiry_id,Title,FName,MName,LName,Address,City,
		State,Mobile,Phone_no,E_mail,Enquiry_type,Pin_Code,Created_date)
		values
		(@Enquiry_id,@Title,@Fname,@Mname,@Lname,@Address,@City,@State,@Mobile,
		@Phone,@Email,@Enquiry_Type,@Pin,getdate())
		
		set @ELD_id=isnull((select max(ELD_id) from Enquiry_land),0)+1
		insert into Enquiry_land(ELD_id,Enquiry_id,Land_id,SOL_id)
		values
		(@ELD_id,@Enquiry_id,@Land_id,@SOL_id)
	end
	if(@Type=''Sell'')
	begin
		set @Enquiry_Type=isnull((select Enquiry_type_id from Enquiry_type where Enquiry_type=''Sell''),0)
		insert into Enquiry(Enquiry_id,Title,FName,MName,LName,Address,City,
		State,Mobile,Phone_no,E_mail,Enquiry_type,Pin_Code,Created_date)
		values
		(@Enquiry_id,@Title,@Fname,@Mname,@Lname,@Address,@City,@State,@Mobile,
		@Phone,@Email,@Enquiry_Type,@Pin,getdate())
	end
	if(@Type=''General'')
	begin
		set @Enquiry_Type=isnull((select Enquiry_type_id from Enquiry_type where Enquiry_type=''General''),0)
		insert into Enquiry(Enquiry_id,Title,FName,MName,LName,Address,City,
		State,Mobile,Phone_no,E_mail,Enquiry_type,Pin_Code,Created_date)
		values
		(@Enquiry_id,@Title,@Fname,@Mname,@Lname,@Address,@City,@State,@Mobile,
		@Phone,@Email,@Enquiry_Type,@Pin,getdate())
	end
	if(@Type=''Home'')
	begin
		Declare @Home_id1 int
		Declare @EHM_id1 int
		set @Enquiry_Type=isnull((select Enquiry_type_id from Enquiry_type where Enquiry_type=''Buy Home''),0)
		set @Home_id1=@PK
		insert into Enquiry(Enquiry_id,Title,FName,MName,LName,Address,City,
		State,Mobile,Phone_no,E_mail,Enquiry_type,Pin_Code,Created_date)
		values
		(@Enquiry_id,@Title,@Fname,@Mname,@Lname,@Address,@City,@State,@Mobile,
		@Phone,@Email,@Enquiry_Type,@Pin,getdate())
		
		set @EHM_id1=isnull((select max(EHM_id) from Enquiry_home),0)+1
		insert into Enquiry_home(EHM_id,Enquiry_id,Home_id,SOH_id)
		values
		(@EHM_id1,@Enquiry_id,@Home_id1,0)
	end
	if(@Type=''Land'')
	begin
		Declare @Land_id1 int
		Declare @ELD_id1 int
		set @Enquiry_Type=isnull((select Enquiry_type_id from Enquiry_type where Enquiry_type=''Buy Land''),0)
		set @Land_id1=@PK
		insert into Enquiry(Enquiry_id,Title,FName,MName,LName,Address,City,
		State,Mobile,Phone_no,E_mail,Enquiry_type,Pin_Code,Created_date)
		values
		(@Enquiry_id,@Title,@Fname,@Mname,@Lname,@Address,@City,@State,@Mobile,
		@Phone,@Email,@Enquiry_Type,@Pin,getdate())
		
		set @ELD_id1=isnull((select max(ELD_id) from Enquiry_land),0)+1
		insert into Enquiry_land(ELD_id,Enquiry_id,Land_id,SOL_id)
		values
		(@ELD_id1,@Enquiry_id,@Land_id1,0)
	end

end' 
END
GO
/****** Object:  ForeignKey [fk_EnquiryType]    Script Date: 01/30/2016 19:50:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_EnquiryType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enquiry]'))
ALTER TABLE [dbo].[Enquiry]  WITH CHECK ADD  CONSTRAINT [fk_EnquiryType] FOREIGN KEY([Enquiry_type])
REFERENCES [dbo].[Enquiry_type] ([Enquiry_type_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_EnquiryType]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enquiry]'))
ALTER TABLE [dbo].[Enquiry] CHECK CONSTRAINT [fk_EnquiryType]
GO
/****** Object:  ForeignKey [fk_EnquiryId]    Script Date: 01/30/2016 19:50:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_EnquiryId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enquiry_home]'))
ALTER TABLE [dbo].[Enquiry_home]  WITH CHECK ADD  CONSTRAINT [fk_EnquiryId] FOREIGN KEY([Enquiry_id])
REFERENCES [dbo].[Enquiry] ([Enquiry_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_EnquiryId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enquiry_home]'))
ALTER TABLE [dbo].[Enquiry_home] CHECK CONSTRAINT [fk_EnquiryId]
GO
/****** Object:  ForeignKey [fk_HomeId]    Script Date: 01/30/2016 19:50:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_HomeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enquiry_home]'))
ALTER TABLE [dbo].[Enquiry_home]  WITH CHECK ADD  CONSTRAINT [fk_HomeId] FOREIGN KEY([Home_id])
REFERENCES [dbo].[Home] ([Home_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_HomeId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enquiry_home]'))
ALTER TABLE [dbo].[Enquiry_home] CHECK CONSTRAINT [fk_HomeId]
GO
/****** Object:  ForeignKey [fk_EnquiryIdLand]    Script Date: 01/30/2016 19:50:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_EnquiryIdLand]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enquiry_land]'))
ALTER TABLE [dbo].[Enquiry_land]  WITH CHECK ADD  CONSTRAINT [fk_EnquiryIdLand] FOREIGN KEY([Enquiry_id])
REFERENCES [dbo].[Enquiry] ([Enquiry_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_EnquiryIdLand]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enquiry_land]'))
ALTER TABLE [dbo].[Enquiry_land] CHECK CONSTRAINT [fk_EnquiryIdLand]
GO
/****** Object:  ForeignKey [fk_LandId]    Script Date: 01/30/2016 19:50:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_LandId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enquiry_land]'))
ALTER TABLE [dbo].[Enquiry_land]  WITH CHECK ADD  CONSTRAINT [fk_LandId] FOREIGN KEY([Land_id])
REFERENCES [dbo].[Land] ([Land_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_LandId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Enquiry_land]'))
ALTER TABLE [dbo].[Enquiry_land] CHECK CONSTRAINT [fk_LandId]
GO
/****** Object:  ForeignKey [fk_Status]    Script Date: 01/30/2016 19:50:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[Home]'))
ALTER TABLE [dbo].[Home]  WITH CHECK ADD  CONSTRAINT [fk_Status] FOREIGN KEY([Stauts])
REFERENCES [dbo].[Sale_status] ([Status_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_Status]') AND parent_object_id = OBJECT_ID(N'[dbo].[Home]'))
ALTER TABLE [dbo].[Home] CHECK CONSTRAINT [fk_Status]
GO
/****** Object:  ForeignKey [fk_HomeIdImg]    Script Date: 01/30/2016 19:50:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_HomeIdImg]') AND parent_object_id = OBJECT_ID(N'[dbo].[Home_Img]'))
ALTER TABLE [dbo].[Home_Img]  WITH CHECK ADD  CONSTRAINT [fk_HomeIdImg] FOREIGN KEY([Home_id])
REFERENCES [dbo].[Home] ([Home_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_HomeIdImg]') AND parent_object_id = OBJECT_ID(N'[dbo].[Home_Img]'))
ALTER TABLE [dbo].[Home_Img] CHECK CONSTRAINT [fk_HomeIdImg]
GO
/****** Object:  ForeignKey [fk_StatusLand]    Script Date: 01/30/2016 19:50:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_StatusLand]') AND parent_object_id = OBJECT_ID(N'[dbo].[Land]'))
ALTER TABLE [dbo].[Land]  WITH CHECK ADD  CONSTRAINT [fk_StatusLand] FOREIGN KEY([Status])
REFERENCES [dbo].[Sale_status] ([Status_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_StatusLand]') AND parent_object_id = OBJECT_ID(N'[dbo].[Land]'))
ALTER TABLE [dbo].[Land] CHECK CONSTRAINT [fk_StatusLand]
GO
/****** Object:  ForeignKey [fk_LandIdImg]    Script Date: 01/30/2016 19:50:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_LandIdImg]') AND parent_object_id = OBJECT_ID(N'[dbo].[Land_Img]'))
ALTER TABLE [dbo].[Land_Img]  WITH CHECK ADD  CONSTRAINT [fk_LandIdImg] FOREIGN KEY([Land_id])
REFERENCES [dbo].[Land] ([Land_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_LandIdImg]') AND parent_object_id = OBJECT_ID(N'[dbo].[Land_Img]'))
ALTER TABLE [dbo].[Land_Img] CHECK CONSTRAINT [fk_LandIdImg]
GO
/****** Object:  ForeignKey [fk_HomeIdSOH]    Script Date: 01/30/2016 19:50:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_HomeIdSOH]') AND parent_object_id = OBJECT_ID(N'[dbo].[Special_offer_home]'))
ALTER TABLE [dbo].[Special_offer_home]  WITH CHECK ADD  CONSTRAINT [fk_HomeIdSOH] FOREIGN KEY([Home_id])
REFERENCES [dbo].[Home] ([Home_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_HomeIdSOH]') AND parent_object_id = OBJECT_ID(N'[dbo].[Special_offer_home]'))
ALTER TABLE [dbo].[Special_offer_home] CHECK CONSTRAINT [fk_HomeIdSOH]
GO
/****** Object:  ForeignKey [fk_ValidStatusHome]    Script Date: 01/30/2016 19:50:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ValidStatusHome]') AND parent_object_id = OBJECT_ID(N'[dbo].[Special_offer_home]'))
ALTER TABLE [dbo].[Special_offer_home]  WITH CHECK ADD  CONSTRAINT [fk_ValidStatusHome] FOREIGN KEY([Valid_status])
REFERENCES [dbo].[Valid_status] ([Valid_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ValidStatusHome]') AND parent_object_id = OBJECT_ID(N'[dbo].[Special_offer_home]'))
ALTER TABLE [dbo].[Special_offer_home] CHECK CONSTRAINT [fk_ValidStatusHome]
GO
/****** Object:  ForeignKey [fk_LandIdSOL]    Script Date: 01/30/2016 19:50:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_LandIdSOL]') AND parent_object_id = OBJECT_ID(N'[dbo].[Special_offer_land]'))
ALTER TABLE [dbo].[Special_offer_land]  WITH CHECK ADD  CONSTRAINT [fk_LandIdSOL] FOREIGN KEY([Land_id])
REFERENCES [dbo].[Land] ([Land_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_LandIdSOL]') AND parent_object_id = OBJECT_ID(N'[dbo].[Special_offer_land]'))
ALTER TABLE [dbo].[Special_offer_land] CHECK CONSTRAINT [fk_LandIdSOL]
GO
/****** Object:  ForeignKey [fk_ValidStatusLand]    Script Date: 01/30/2016 19:50:08 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ValidStatusLand]') AND parent_object_id = OBJECT_ID(N'[dbo].[Special_offer_land]'))
ALTER TABLE [dbo].[Special_offer_land]  WITH CHECK ADD  CONSTRAINT [fk_ValidStatusLand] FOREIGN KEY([Valid_status])
REFERENCES [dbo].[Valid_status] ([Valid_id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[fk_ValidStatusLand]') AND parent_object_id = OBJECT_ID(N'[dbo].[Special_offer_land]'))
ALTER TABLE [dbo].[Special_offer_land] CHECK CONSTRAINT [fk_ValidStatusLand]
GO
