USE [LinhKienMayTinh]
GO
/****** Object:  Table [dbo].[AccessTimesCount]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessTimesCount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[AccessTimes] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AccessTimesCount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Decentralization]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Decentralization](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [int] NOT NULL,
	[Note] [nvarchar](max) NULL,
	[UserTypeID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Decentralization] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountCode]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExpirationDate] [datetime] NULL,
	[NumberDiscount] [int] NULL,
	[UserID] [int] NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_DiscountCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DiscountCodeDetail]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DiscountCodeDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DiscountCodeID] [int] NULL,
	[Code] [nvarchar](20) NULL,
	[IsUsed] [bit] NULL,
	[IsOwned] [bit] NULL,
 CONSTRAINT [PK_DiscountCodeDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportCoupon]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportCoupon](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[UserID] [int] NOT NULL,
	[SupplierID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ImportCoupon] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImportCouponDetail]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportCouponDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ImportCouponID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_dbo.ImportCouponDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ItemCart]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemCart](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Total] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_dbo.Cart] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Message]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FromUserID] [int] NULL,
	[ToUserID] [int] NULL,
	[Content] [nvarchar](500) NULL,
	[CreatedDate] [datetime] NULL,
	[Sent] [bit] NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[DateOrder] [datetime] NOT NULL,
	[DateShip] [datetime] NOT NULL,
	[Offer] [int] NOT NULL,
	[IsPaid] [bit] NOT NULL,
	[IsCancel] [bit] NOT NULL,
	[IsDelete] [bit] NOT NULL,
	[IsDelivere] [bit] NOT NULL,
	[IsApproved] [bit] NOT NULL,
	[IsReceived] [bit] NOT NULL,
	[Total] [decimal](18, 0) NULL,
 CONSTRAINT [PK_dbo.Order] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[IsRating] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producer]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Producer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[IsActive] [bit] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[ParentID] [int] NOT NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategoryParent]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategoryParent](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[SeoKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.ProductCategoryParent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[ProCategoryID] [int] NOT NULL,
	[Image1] [nvarchar](256) NULL,
	[Image2] [nvarchar](256) NULL,
	[Image3] [nvarchar](256) NULL,
	[Image4] [nvarchar](256) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PromotionPrice] [decimal](18, 2) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ViewCount] [int] NULL,
	[PurchasedCount] [int] NULL,
	[ProducerID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[UsageTypeID] [int] NOT NULL,
	[Discount] [int] NOT NULL,
	[SEOKeyword] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductViewed]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductViewed](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ProductViewed] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QA]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserAskID] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[Question] [nvarchar](1000) NULL,
	[Answer] [nvarchar](1000) NULL,
	[DateQuestion] [datetime] NULL,
	[DateAnswer] [datetime] NULL,
	[UserAnswerID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.QA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rating]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rating](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProductID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Star] [int] NOT NULL,
	[Content] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Rating] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NameDisplay] [nvarchar](50) NULL,
 CONSTRAINT [PK_dbo.Role] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Address] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
	[TotalAmount] [decimal](18, 0) NULL,
 CONSTRAINT [PK_dbo.Supplier] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsageType]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsageType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.UsageType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserTypeID] [int] NOT NULL,
	[Password] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[Capcha] [nvarchar](max) NULL,
	[AmountPurchased] [decimal](18, 0) NULL,
	[Avatar] [nvarchar](max) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDiscountCode]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDiscountCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[DiscountCodeDetailID] [int] NULL,
 CONSTRAINT [PK_UserDiscountCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersSpin]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersSpin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[NumberOfSpins] [int] NULL,
 CONSTRAINT [PK_UsersSpin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 12/30/2023 4:45:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
 CONSTRAINT [PK_dbo.UserType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AccessTimesCount] ON 

INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (1, CAST(N'2023-08-29T12:39:32.123' AS DateTime), 1)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (2, CAST(N'2023-09-03T17:08:24.907' AS DateTime), 1)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (3, CAST(N'2023-09-11T08:20:07.993' AS DateTime), 7)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (4, CAST(N'2023-11-01T16:58:15.790' AS DateTime), 2)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (5, CAST(N'2023-11-05T09:33:09.927' AS DateTime), 9)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (6, CAST(N'2023-12-04T07:32:14.487' AS DateTime), 104)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (7, CAST(N'2023-11-23T10:34:55.000' AS DateTime), 26)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (8, CAST(N'2023-11-24T20:32:26.520' AS DateTime), 6)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (9, CAST(N'2023-11-25T13:40:29.713' AS DateTime), 8)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (11, CAST(N'2023-11-27T10:46:42.090' AS DateTime), 23)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (12, CAST(N'2023-11-28T13:01:54.077' AS DateTime), 13)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (13, CAST(N'2023-11-29T12:17:32.417' AS DateTime), 18)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (14, CAST(N'2023-11-30T12:22:20.300' AS DateTime), 29)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (15, CAST(N'2023-12-01T11:52:16.137' AS DateTime), 37)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (16, CAST(N'2023-12-02T10:20:33.807' AS DateTime), 25)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (17, CAST(N'2023-12-03T18:04:32.947' AS DateTime), 2)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (18, CAST(N'2023-12-05T08:40:39.403' AS DateTime), 21)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (19, CAST(N'2023-12-06T13:55:55.933' AS DateTime), 1)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (20, CAST(N'2023-12-07T12:38:02.250' AS DateTime), 25)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (21, CAST(N'2023-12-08T11:28:26.837' AS DateTime), 16)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (22, CAST(N'2023-12-10T14:44:44.143' AS DateTime), 9)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (23, CAST(N'2023-12-11T09:01:57.303' AS DateTime), 41)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (24, CAST(N'2023-12-12T11:16:23.713' AS DateTime), 32)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (25, CAST(N'2023-12-13T12:23:33.963' AS DateTime), 23)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (26, CAST(N'2023-12-14T11:45:32.737' AS DateTime), 45)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (27, CAST(N'2023-12-15T08:42:45.307' AS DateTime), 15)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (28, CAST(N'2023-12-17T14:21:20.913' AS DateTime), 20)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (29, CAST(N'2023-12-18T11:54:34.020' AS DateTime), 9)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (30, CAST(N'2023-12-19T13:03:35.000' AS DateTime), 3)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (31, CAST(N'2023-12-20T09:49:32.423' AS DateTime), 15)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (32, CAST(N'2023-12-21T11:23:19.727' AS DateTime), 18)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (33, CAST(N'2023-12-22T08:54:11.870' AS DateTime), 30)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (34, CAST(N'2023-12-23T20:24:00.260' AS DateTime), 2)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (35, CAST(N'2023-12-24T10:52:01.433' AS DateTime), 21)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (36, CAST(N'2023-12-25T08:56:50.920' AS DateTime), 61)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (37, CAST(N'2023-12-26T11:06:02.007' AS DateTime), 6)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (38, CAST(N'2023-12-27T09:04:20.197' AS DateTime), 39)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (39, CAST(N'2023-12-29T15:05:53.840' AS DateTime), 21)
INSERT [dbo].[AccessTimesCount] ([ID], [Date], [AccessTimes]) VALUES (40, CAST(N'2023-12-30T09:54:00.547' AS DateTime), 25)
SET IDENTITY_INSERT [dbo].[AccessTimesCount] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([ID], [Name], [SEOKeyword]) VALUES (1, N'Linh kiện cốt lõi', N'linh-kien-cot-loi')
INSERT [dbo].[Category] ([ID], [Name], [SEOKeyword]) VALUES (2, N'Linh kiện lưu trữ', N'linh-kien-luu-tru')
INSERT [dbo].[Category] ([ID], [Name], [SEOKeyword]) VALUES (3, N'Linh kiện đồ họa', N'linh-kien-do-hoa')
INSERT [dbo].[Category] ([ID], [Name], [SEOKeyword]) VALUES (4, N'Linh kiện nguồn', N'linh-kien-nguon')
INSERT [dbo].[Category] ([ID], [Name], [SEOKeyword]) VALUES (5, N'Linh kiện phụ trợ', N'linh-kien-phu-tro')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Decentralization] ON 

INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (133, 1, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (134, 2, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (135, 4, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (136, 5, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (137, 6, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (138, 7, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (139, 9, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (140, 10, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (141, 19, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (142, 20, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (143, 23, NULL, 1)
INSERT [dbo].[Decentralization] ([ID], [RoleID], [Note], [UserTypeID]) VALUES (144, 24, NULL, 1)
SET IDENTITY_INSERT [dbo].[Decentralization] OFF
GO
SET IDENTITY_INSERT [dbo].[DiscountCode] ON 

INSERT [dbo].[DiscountCode] ([ID], [ExpirationDate], [NumberDiscount], [UserID], [IsActive]) VALUES (1, CAST(N'2024-04-02T00:00:00.000' AS DateTime), 10, 3, 1)
INSERT [dbo].[DiscountCode] ([ID], [ExpirationDate], [NumberDiscount], [UserID], [IsActive]) VALUES (2, CAST(N'2024-04-02T00:00:00.000' AS DateTime), 5, 3, 1)
INSERT [dbo].[DiscountCode] ([ID], [ExpirationDate], [NumberDiscount], [UserID], [IsActive]) VALUES (3, CAST(N'2024-04-02T00:00:00.000' AS DateTime), 15, 3, 1)
INSERT [dbo].[DiscountCode] ([ID], [ExpirationDate], [NumberDiscount], [UserID], [IsActive]) VALUES (4, CAST(N'2024-04-02T00:00:00.000' AS DateTime), 20, 3, 1)
INSERT [dbo].[DiscountCode] ([ID], [ExpirationDate], [NumberDiscount], [UserID], [IsActive]) VALUES (5, CAST(N'2024-02-01T00:00:00.000' AS DateTime), 50, 3, 1)
SET IDENTITY_INSERT [dbo].[DiscountCode] OFF
GO
SET IDENTITY_INSERT [dbo].[DiscountCodeDetail] ON 

INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (1, 1, N'olhrh', 1, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (2, 1, N'du0a4', 1, 1)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (3, 1, N'hy7a8', 0, 1)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (4, 1, N'n157c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (5, 1, N'u9bs4', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (6, 2, N'zrzt1', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (7, 2, N'qng07', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (8, 2, N'wzfil', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (9, 2, N'nfvxv', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (11, 2, N'utepf', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (12, 3, N'pkyxs', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (13, 3, N'w4gjo', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (14, 3, N'3rhcl', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (15, 3, N'ywwvz', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (16, 3, N'oon6c', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (17, 3, N'q509g', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (18, 4, N'6i0us', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (19, 4, N'lar0z', 1, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (20, 4, N't9lj2', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (21, 4, N'jbsx5', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (22, 4, N'86t01', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (23, 4, N'a72ub', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (24, 4, N'0dgcr', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (25, 4, N'v0xua', 0, 0)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (26, 5, N'78jlz', 0, NULL)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (27, 5, N'zyoel', 0, NULL)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (28, 5, N'69pqs', 0, NULL)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (29, 5, N'dhi3d', 0, NULL)
INSERT [dbo].[DiscountCodeDetail] ([ID], [DiscountCodeID], [Code], [IsUsed], [IsOwned]) VALUES (30, 5, N'4ss7b', 0, NULL)
SET IDENTITY_INSERT [dbo].[DiscountCodeDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[ImportCoupon] ON 

INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (13, CAST(N'2023-12-05T10:16:09.837' AS DateTime), 0, 3, 6)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (14, CAST(N'2023-12-07T15:37:56.530' AS DateTime), 0, 3, 12)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (16, CAST(N'2023-12-13T12:24:44.917' AS DateTime), 0, 3, 1)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (18, CAST(N'2023-12-13T15:21:59.720' AS DateTime), 0, 3, 1)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (26, CAST(N'2023-12-14T13:18:53.643' AS DateTime), 0, 3, 2)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (27, CAST(N'2023-12-22T12:31:09.713' AS DateTime), 0, 3, 6)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (28, CAST(N'2023-12-22T12:34:09.003' AS DateTime), 0, 3, 8)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (29, CAST(N'2023-12-22T12:37:19.477' AS DateTime), 0, 3, 2)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (30, CAST(N'2023-12-22T12:38:38.933' AS DateTime), 0, 3, 1)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (31, CAST(N'2023-12-22T12:41:31.093' AS DateTime), 0, 3, 15)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (32, CAST(N'2023-12-22T12:43:22.777' AS DateTime), 0, 3, 10)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (33, CAST(N'2023-12-22T12:46:22.410' AS DateTime), 0, 3, 7)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (34, CAST(N'2023-12-22T12:47:51.683' AS DateTime), 0, 3, 3)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (35, CAST(N'2023-12-22T12:51:32.610' AS DateTime), 0, 3, 14)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (36, CAST(N'2023-12-22T12:52:31.613' AS DateTime), 0, 3, 12)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (37, CAST(N'2023-12-22T12:53:14.587' AS DateTime), 0, 3, 4)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (38, CAST(N'2023-12-22T12:57:15.383' AS DateTime), 0, 3, 4)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (39, CAST(N'2023-12-22T13:03:36.417' AS DateTime), 0, 3, 5)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (40, CAST(N'2023-12-22T13:05:28.707' AS DateTime), 0, 3, 9)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (41, CAST(N'2023-12-22T13:21:42.213' AS DateTime), 0, 3, 13)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (42, CAST(N'2023-12-22T15:50:01.760' AS DateTime), 0, 3, 13)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (43, CAST(N'2023-12-25T20:50:50.080' AS DateTime), 0, 3, 17)
INSERT [dbo].[ImportCoupon] ([ID], [Date], [IsDelete], [UserID], [SupplierID]) VALUES (44, CAST(N'2023-12-25T20:53:13.427' AS DateTime), 0, 3, 17)
SET IDENTITY_INSERT [dbo].[ImportCoupon] OFF
GO
SET IDENTITY_INSERT [dbo].[ImportCouponDetail] ON 

INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (14, 13, 17, 2900000, 10)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (15, 14, 9, 8100000, 10)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (16, 14, 5, 2000000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (17, 16, 6, 4500000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (18, 18, 7, 1300000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (19, 26, 48, 1100000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (20, 27, 11, 14300000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (21, 27, 28, 870000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (22, 27, 41, 750000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (23, 27, 53, 2500000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (24, 28, 13, 3200000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (25, 28, 32, 770000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (26, 28, 38, 250000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (27, 28, 58, 50000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (28, 29, 15, 5800000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (29, 29, 24, 1600000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (30, 29, 27, 2400000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (31, 29, 14, 8000000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (32, 29, 39, 2000000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (33, 30, 55, 300000, 10)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (34, 31, 16, 4900000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (35, 31, 25, 1399000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (36, 31, 44, 750000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (37, 32, 20, 1100000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (38, 32, 21, 5800000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (39, 32, 26, 350000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (40, 33, 12, 2000000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (41, 33, 23, 2500000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (42, 33, 30, 6500000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (43, 33, 45, 5800000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (44, 33, 57, 80000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (45, 34, 34, 99000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (46, 34, 42, 400000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (47, 34, 47, 1500000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (48, 35, 19, 550000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (49, 35, 43, 450000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (50, 35, 54, 550000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (51, 36, 31, 1900000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (52, 36, 50, 290000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (53, 37, 7, 2000000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (54, 37, 37, 650000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (55, 38, 52, 2100000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (56, 38, 56, 100000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (57, 39, 22, 1400000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (58, 39, 29, 1300000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (59, 39, 36, 3000000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (60, 39, 46, 720000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (61, 39, 49, 9500000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (62, 40, 35, 8000000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (63, 40, 40, 1400000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (64, 40, 51, 1000000, 4)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (65, 41, 18, 2200000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (66, 41, 33, 9000000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (67, 42, 8, 2000000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (68, 43, 60, 300000, 5)
INSERT [dbo].[ImportCouponDetail] ([ID], [ImportCouponID], [ProductID], [Price], [Quantity]) VALUES (69, 44, 37, 650000, 2)
SET IDENTITY_INSERT [dbo].[ImportCouponDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[ItemCart] ON 

INSERT [dbo].[ItemCart] ([ID], [UserID], [ProductID], [Quantity], [Total]) VALUES (1240, 25, 21, 1, CAST(5999000.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[ItemCart] OFF
GO
SET IDENTITY_INSERT [dbo].[Message] ON 

INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Sent]) VALUES (149, 3, 3, N'hi', CAST(N'2023-12-08T12:58:28.930' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Sent]) VALUES (150, 23, 3, N'hi', CAST(N'2023-12-08T13:00:05.690' AS DateTime), 1)
INSERT [dbo].[Message] ([ID], [FromUserID], [ToUserID], [Content], [CreatedDate], [Sent]) VALUES (151, 3, 23, N'tui có thể giúp gì được cho bạn', CAST(N'2023-12-08T14:05:25.320' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Message] OFF
GO
SET IDENTITY_INSERT [dbo].[Order] ON 

INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2083, 3, CAST(N'2023-12-05T10:17:34.437' AS DateTime), CAST(N'2023-12-05T10:18:45.120' AS DateTime), 0, 1, 0, 0, 1, 1, 1, CAST(3199000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2084, 3, CAST(N'2023-12-07T16:13:41.097' AS DateTime), CAST(N'2023-12-12T21:17:51.967' AS DateTime), 0, 1, 0, 0, 1, 1, 1, CAST(8399000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2085, 3, CAST(N'2023-12-08T14:10:53.970' AS DateTime), CAST(N'2023-12-12T21:18:12.273' AS DateTime), 0, 1, 0, 0, 1, 1, 1, CAST(2290000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2086, 23, CAST(N'2023-12-08T14:50:57.057' AS DateTime), CAST(N'2023-12-22T15:40:18.060' AS DateTime), 0, 1, 0, 0, 1, 1, 1, CAST(8399000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2087, 23, CAST(N'2023-12-12T21:14:43.177' AS DateTime), CAST(N'2023-12-22T15:41:52.993' AS DateTime), 0, 1, 0, 0, 1, 1, 1, CAST(8399000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2088, 3, CAST(N'2023-12-13T20:32:33.853' AS DateTime), CAST(N'2023-12-13T20:35:21.627' AS DateTime), 0, 1, 0, 0, 1, 1, 1, CAST(9189000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2089, 3, CAST(N'2023-12-14T14:10:16.143' AS DateTime), CAST(N'2023-12-22T15:46:02.300' AS DateTime), 0, 1, 0, 0, 1, 1, 1, CAST(1349000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2093, 25, CAST(N'2023-12-25T15:52:54.437' AS DateTime), CAST(N'2023-12-26T12:05:51.547' AS DateTime), 20, 1, 0, 0, 1, 1, 1, CAST(2499000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2094, 23, CAST(N'2023-12-25T16:12:21.423' AS DateTime), CAST(N'2023-12-25T16:25:28.030' AS DateTime), 20, 1, 0, 0, 1, 1, 1, CAST(2099000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2095, 23, CAST(N'2023-12-25T16:27:31.113' AS DateTime), CAST(N'2023-12-28T16:27:31.113' AS DateTime), 0, 0, 1, 0, 0, 0, 0, CAST(189000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2096, 60, CAST(N'2023-12-30T13:52:40.197' AS DateTime), CAST(N'2024-01-02T13:52:40.197' AS DateTime), 0, 0, 0, 0, 1, 1, 0, CAST(889000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2097, 58, CAST(N'2023-12-30T13:53:49.987' AS DateTime), CAST(N'2024-01-02T13:53:49.987' AS DateTime), 0, 0, 0, 0, 1, 0, 0, CAST(99000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2098, 59, CAST(N'2023-12-30T13:54:25.803' AS DateTime), CAST(N'2024-01-02T13:54:25.803' AS DateTime), 0, 0, 0, 0, 0, 0, 0, CAST(799000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2099, 47, CAST(N'2023-12-30T13:55:27.397' AS DateTime), CAST(N'2024-01-02T13:55:27.397' AS DateTime), 0, 0, 0, 0, 0, 1, 0, CAST(6247000 AS Decimal(18, 0)))
INSERT [dbo].[Order] ([ID], [UserID], [DateOrder], [DateShip], [Offer], [IsPaid], [IsCancel], [IsDelete], [IsDelivere], [IsApproved], [IsReceived], [Total]) VALUES (2100, 39, CAST(N'2023-12-30T13:56:31.067' AS DateTime), CAST(N'2024-01-02T13:56:31.067' AS DateTime), 0, 0, 0, 0, 1, 1, 0, CAST(6857000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Order] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderDetail] ON 

INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2073, 2083, 17, 1, CAST(3199000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2074, 2084, 9, 1, CAST(8399000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2075, 2085, 5, 1, CAST(2290000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2076, 2086, 9, 1, CAST(8399000.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2077, 2087, 9, 1, CAST(8399000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2078, 2088, 5, 1, CAST(2290000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2079, 2088, 6, 1, CAST(4899000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2080, 2088, 7, 1, CAST(2000000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2081, 2089, 48, 1, CAST(1349000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2085, 2093, 52, 1, CAST(2499000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2086, 2094, 8, 1, CAST(2099000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2087, 2095, 56, 1, CAST(189000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2088, 2096, 41, 1, CAST(889000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2089, 2097, 58, 1, CAST(99000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2090, 2098, 37, 1, CAST(799000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2091, 2099, 29, 1, CAST(1599000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2092, 2099, 36, 1, CAST(3799000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2093, 2099, 46, 1, CAST(849000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2094, 2100, 16, 1, CAST(6099000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2095, 2100, 34, 1, CAST(159000.00 AS Decimal(18, 2)), 0)
INSERT [dbo].[OrderDetail] ([ID], [OrderID], [ProductID], [Quantity], [Price], [IsRating]) VALUES (2096, 2100, 55, 1, CAST(599000.00 AS Decimal(18, 2)), 0)
SET IDENTITY_INSERT [dbo].[OrderDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[Producer] ON 

INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (1, N'ASUS', 1, NULL)
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (2, N'MSI', 1, N'msi')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (3, N'GIGABYTE', 1, N'gigabyte')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (4, N'LEXAR', 1, N'lexar')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (5, N'WESTERN', 1, N'western')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (6, N'INTEL', 1, N'intel')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (7, N'ADM', 1, N'adm')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (8, N'ADATA', 1, N'adata')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (9, N'KINGSTON', 1, N'kingston')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (10, N'COSSAIR', 1, N'cossair')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (11, N'GSKILL', 1, N'gskill')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (12, N'SEAGATE', 1, N'seagate')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (13, N'SAMSUNG', 1, N'samsung')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (14, N'COLORFUL', 1, N'colorful')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (15, N'INNO3D', 1, N'inno3d')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (16, N'JONSBO', 1, N'jonsbo')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (17, N'FSP', 1, N'fsp')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (18, N'SEOGOSTEP', 1, N'seogostep')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (19, N'LOGITECH', 1, N'logitech')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (20, N'HAVIT', 1, N'havit')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (21, N'RAZER', 1, N'razer')
INSERT [dbo].[Producer] ([ID], [Name], [IsActive], [SEOKeyword]) VALUES (24, N'ASROCK', 1, N'asrock')
SET IDENTITY_INSERT [dbo].[Producer] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (1, N'Mainboard - Bo mạch chủ', 1, CAST(N'2023-11-26T16:21:25.623' AS DateTime), 1, N'bo-mach-chinh')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (2, N'CPU- Bộ vi xử lý', 1, CAST(N'2023-11-30T13:35:08.603' AS DateTime), 1, N'bo-vi-xu-ly')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (3, N'VGA - Card màn hình', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 1, N'card-man-hinh')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (4, N'RAM - Bộ nhớ trong', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 1, N'bo-nho-trong')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (9, N'Ổ cứng HDD/SSD', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 1, N'o-cung-hdd/sdd')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (11, N'PSU - Nguồn máy tính', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 1, N'nguon-may-tinh')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (13, N'Vỏ case', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 2, N'vo-case')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (15, N'Tản nhiệt', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 1, N'tan-nhiet')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (16, N'Màn hình', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 2, N'man-hinh')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (17, N'ODD- Ổ đĩa quang', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 2, N'o-dia-quang')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (19, N'Tai nghe', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 2, N'tai-nghe')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (20, N'Chuột', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 2, N'chuot')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (21, N'Bàn phím', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 2, N'ban-phim')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (23, N'Webcam', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 2, N'webcam')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (24, N'Loa', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 2, N'loa')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (26, N'Card Mạng', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 2, N'card-mang')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (28, N'Cáp', 1, CAST(N'2023-11-27T00:00:00.000' AS DateTime), 2, N'cap')
INSERT [dbo].[ProductCategory] ([ID], [Name], [IsActive], [LastUpdatedDate], [ParentID], [SEOKeyword]) VALUES (29, N'Bộ vệ sinh', 0, CAST(N'2023-12-25T19:47:00.100' AS DateTime), 2, NULL)
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductCategoryParent] ON 

INSERT [dbo].[ProductCategoryParent] ([ID], [Name], [SeoKeyword]) VALUES (1, N'Linh kiện dành cho máy tính', N'phu-kien-danh-cho-may-tinh')
INSERT [dbo].[ProductCategoryParent] ([ID], [Name], [SeoKeyword]) VALUES (2, N'Linh kiện khác', N'linh-kien-khac')
SET IDENTITY_INSERT [dbo].[ProductCategoryParent] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (5, N'Mainboard ASUS Prime H610I-PLUS', 1, N'Main11_.jpg', N'12.jpg', N'13.jpg', NULL, CAST(2899000.00 AS Decimal(18, 2)), CAST(2299000.00 AS Decimal(18, 2)), 2, N'Thông số sản phẩm
- Socket: LGA1700
- Kích thước: Mini ITX
- Khe cắm RAM: 2 khe (Tối đa 64GB)
- 1 x khe cắm PCIe 4.0 x16, 1 x M.2 khe và 4 x SATA 6Gb/s                                                               Tính năng chính:
- Hỗ trợ Intel ® LGA 1700: Sẵn sàng cho bộ vi xử lý Intel ® Core ™ thế hệ thứ 12
- Giải pháp năng lượng nâng cao: 5 + 1 + 1 tầng nguồn DrMOS, PCB 8 lớp, để cung cấp điện ổn định
- Làm mát toàn diện: tản nhiệt VRM, tản nhiệt PCH và Fan Xpert
- Kết nối cực nhanh: Khe cắm M.2 32Gbps, Realtek 1 Gb Ethernet và cổng USB 3.2 Gen 1.
- 5X Protection III: Nhiều biện pháp bảo vệ phần cứng để bảo vệ toàn diện.
', 14, 2, 1, 1, CAST(N'2023-12-25T19:42:12.087' AS DateTime), 1, 1, 21, N'mainboard-asus-prime-prime-h610i-plus')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (6, N'Mainboard ASUS ROG Strix B660-F Gaming WiFi', 1, N'14.jpg', N'15.jpg', NULL, NULL, CAST(6299000.00 AS Decimal(18, 2)), CAST(4899000.00 AS Decimal(18, 2)), 4, N'Thông số kỹ thuật chi tiết Mainboard Asus ROG STRIX B660-F GAMING WIFI
- Sản phẩm: Bo mạch chủ
- Tên Hãng: ASUS
- Model: ROG STRIX B660-F GAMING WIFI
- CPU hỗ trợ: Hỗ trợ cho thế hệ thứ 14, 13 và 12 Intel® Core Socket LGA1700
- Chipset: B660
- RAM hỗ trợ: 4 x DIMM, Max. 196GB, DDR5 6000(OC)/5800(OC)/5600(OC)/5400(OC)/5200(OC)/5000(OC)/4800, Un-buffered Memory*t/.
* Non-ECC, un-buffered DDR5 memory supports On-Die ECC function.
- Khe cắm mở rộng: Intel® 13th & 12th Gen Processors*
1 x PCIe 5.0 x16 slot (supports x16 mode)
Intel® B660 Chipset**
1 x PCIe 3.0 x16 slot (supports x4 mode)***
2 x PCIe 3.0 x1 slots
* Please check PCIe bifurcation table in support site.
** Supports Intel® Optane Memory H Series on PCH-attached PCIe slot
*** The PCIEX16(G3) shares bandwidth with the PCIEX1(G3)_1 and PCIEX1(G3)_2. When either PCIEX1(G3) slot enables, PCIEX16(G3) will run x2 mode.
1 x BIOS FlashBack™ button
1 x Clear CMOS button
-Lan:
1 x Intel® 2.5Gb Ethernet
ASUS LANGuard
WIRELESS/BLUETOOTH  	Wi-Fi 6
2x2 Wi-Fi 6 (802.11 a/b/g/n/ac/ax)
Supports 2.4/5GHz frequency band
Bluetooth v5.2
Kích cỡ	ATX Form Factor
12 inch x 9.6 inch ( 30.5 cm x 24.4 cm )
', 2, 1, 1, 1, CAST(N'2023-12-13T12:24:44.923' AS DateTime), 1, 2, 25, N'mainboard-asus-rog-strix-b660-f-gaming-wifi')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (7, N'Mainboard GIGABYTE H610M S2 DDR4', 1, N'16.jpg', N'17.jpg', NULL, NULL, CAST(2599000.00 AS Decimal(18, 2)), CAST(2199000.00 AS Decimal(18, 2)), 0, N'Thông số kỹ thuật chi tiết Mainboard Gigabyte H610M S2 DDR4:
- Sản phẩm: Bo mạch chủ
- Tên Hãng: GIGABYTE 
- Model: H610M S2 DDR4 
- CPU hỗ trợ: Intel
- Chipset: H610
- RAM hỗ trợ:
2 x DDR4 DIMM sockets supporting up to 64 GB (32 GB single DIMM capacity) of system memory
Support for DDR4 3200/3000/2933/2666/2400/2133 MHz memory modules
Support for ECC Un-buffered DIMM 1Rx8/2Rx8 memory modules (operate in non-ECC mode)
Support for non-ECC Un-buffered DIMM 1Rx8/2Rx8/1Rx16 memory modules
Support for Extreme Memory Profile (XMP) memory modules
- LAN / Wireless: Realtek® GbE LAN chip (1 Gbps/100 Mbps)
- Kích cỡ: Micro ATX Form Factor; 23.0cm x 21.5cm
', 5, 1, 3, 1, CAST(N'2023-12-22T15:55:00.923' AS DateTime), 1, 1, 23, N'mainboard-gigabyte-h610m-s2-ddr4')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (8, N'Mainboard GIGABYTE H610M S2H V2 DDR4', 1, N'181.jpg', N'182.png', NULL, NULL, CAST(2599000.00 AS Decimal(18, 2)), CAST(2099000.00 AS Decimal(18, 2)), 4, N'Với lối thiết kế nguồn điện hỗn hợp 6 + 1 + 1 giai đoạn, bo mạch chủ Gigabyte H610M S2 DDR4 đảm bảo cho mọi hoạt động diễn ra phù hợp, CPU, ổ SSD và các linh kiện các luôn duy trì mức nhiệt độ ổn định và ít tiếng ồn hơn. Bạn sẽ được tận hưởng khả năng kết nối linh hoạt, truyền dữ liệu nhanh chóng với kết nối mạng tuyệt vời, sẵn sàng cùng bạn thực hiện mọi tác vụ.', 4, 1, 3, 1, CAST(N'2023-12-22T15:50:01.893' AS DateTime), 1, 1, 22, N'mainboard-gigabyte-h610m-s2h-v2-ddr4')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (9, N'CPU Intel Core i7-12700K ', 2, N'51.jpg', N'52.jpeg', NULL, NULL, CAST(11599000.00 AS Decimal(18, 2)), CAST(8399000.00 AS Decimal(18, 2)), 7, N'CPU Intel Core i7-12700K là CPU thế hệ thứ 12 của Intel (Alder Lake) trên nền Socket LGA 1700 với kiến trúc hoàn toàn mới cho hiệu năng vượt trội so với người tiền nhiệm.Đây cũng là phiên bản được mở khóa (Unlocked) để người dùng có thể Overclock gia tăng hiệu năng đáng kể.', 17, 3, 6, 1, CAST(N'2023-12-07T15:37:56.653' AS DateTime), 1, 1, 28, N'cpu-intel-core-i7-12700k-3-8ghz-turbo-up-to-5-0ghz-12-nhan-20-luong-25mb')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (11, N'CPU Intel Core i9-13900KF ', 2, N'61.jpg', N'62.jpg', N'63.png', NULL, CAST(17199000.00 AS Decimal(18, 2)), CAST(15499000.00 AS Decimal(18, 2)), 5, N'Thông tin đang được cập nhật', 0, 0, 6, 1, CAST(N'2023-12-22T12:31:09.757' AS DateTime), 1, 1, 10, N'cpu-intel-core-i9-13900kf-3-0ghz-turbo-up-to-5-8ghz-24-nhan-32-luong-36mb-cache-125w-socket-intel-lga-1700-raptor-lake')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (12, N'CPU Intel Core i3-12100F ', 2, N'71.jpg', N'72.png', NULL, NULL, CAST(3099000.00 AS Decimal(18, 2)), CAST(2290000.00 AS Decimal(18, 2)), 5, N'CPU Intel Core i3-12100F là CPU thế hệ thứ 12 của Intel (Alder Lake) trên nền Socket LGA 1700 với kiến trúc hoàn toàn mới cho hiệu năng vượt trội so với người tiền nhiệm.
Đây là phiên bản không tích hợp iGPU để giảm giá thành, khi sử dụng bắt buộc phải có card đồ họa rời
', 0, 0, 6, 1, CAST(N'2023-12-22T12:46:22.417' AS DateTime), 1, 2, 26, N'cpu-intel-core-i3-12100f-3-3ghz-turbo-up-to-4-3ghz-4-nhan-8-luong-12mb-cache-58w-socket-intel-lga-1700')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (13, N'Card Màn Hình Inno3D GTX 1650 Twin X2 OC 4GB GDDR6 ', 3, N'91.jpg', N'92.jpg', N'93.png', NULL, CAST(4699000.00 AS Decimal(18, 2)), CAST(3669000.00 AS Decimal(18, 2)), 2, N'Thông số sản phẩm
Dung lượng bộ nhớ: 4GB GDDR6
Boost Clock: 1710 MHz
Băng thông: 128-bit
Kết nối: HDMI 2.0b, 2x DisplayPort 1.4
Nguồn yêu cầu: 450W

Card màn hình MSI RTX 3050 VENTUS 2X XS 8G OC
 

', 3, 0, 8, 1, CAST(N'2023-12-22T15:54:48.303' AS DateTime), 3, 1, 22, N'card-man-hinh-inno3d-gtx-1650-twin-x2-oc-4gb-gddr6-n16502-04d6x-171330n')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (14, N'Card Màn Hình Colorful GeForce RTX 4060 NB DUO 8GB-V', 3, N'101.jpg', N'102.jpg', N'103.png', NULL, CAST(9299000.00 AS Decimal(18, 2)), CAST(8299000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật
', 3, 0, 14, 1, CAST(N'2023-12-22T12:37:19.510' AS DateTime), 3, 1, 11, N'card-man-hinh-colorful-geforce-rtx-4060-nb-duo-8gb-v')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (15, N'Card Màn Hình MSI RTX 3050 Ventus 2X XS 8G OC', 3, N'111.jpg', N'112.jpg', N'113.png', NULL, CAST(8999000.00 AS Decimal(18, 2)), CAST(5999000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật', 1, 0, 2, 1, CAST(N'2023-12-22T12:37:19.480' AS DateTime), 3, 2, 34, N'card-man-hinh-msi-rtx-3050-ventus-2x-xs-8g-oc')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (16, N'Card Màn Hình Colorful RTX 3050 iGame Ultra W OC 8G-V', 3, N'121.jpg', N'122.jpeg', N'123.png', NULL, CAST(8999000.00 AS Decimal(18, 2)), CAST(6099000.00 AS Decimal(18, 2)), 5, N'Đánh giá: Card màn hình Colorful RTX 3050 iGame Ultra W OC 8G-V
Card màn hình Colorful RTX 3050 iGame Ultra W OC 8G-V được xây dựng với hiệu suất đồ họa mạnh mẽ của kiến trúc NVIDIA Ampere. Sản phẩm có Nhân dò tia thế hệ thứ 2 và Nhân Tensor thế hệ thứ 3, bộ xử lý đa xử lý phát trực tiếp mới và bộ nhớ GDDR6 tốc độ cao khiến cho các game trở nên sống động với các hiệu ứng hình ảnh siêu thực và tốc độ khung hình nhanh hơn.

Colorful RTX 3050 iGame Ultra W OC 8G-V là card màn hình tầm trung sử dụng GPU Nvidia RTX 3050 hoàn toàn mới, phù hợp với nhu cầu chơi game ở độ phân giải Full HD.
', 0, 0, 14, 1, CAST(N'2023-12-22T12:41:31.100' AS DateTime), 3, 1, 32, N'card-man-hinh-colorful-rtx-3050-igame-ultra-w-oc-8g-v')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (17, N'RAM Desktop Kingston Fury Beast RGB 32gb', 4, N'14.jpg', NULL, NULL, NULL, CAST(5299000.00 AS Decimal(18, 2)), CAST(3199000.00 AS Decimal(18, 2)), 2, N'Đang cập nhật', 6, 4, 9, 1, CAST(N'2023-12-06T14:13:11.287' AS DateTime), 1, 1, 39, N'ram-desktop-kingston-fury-beast-rgb-kf552c40bbak2-32-32gb-2x16gb-ddr5-5200mhz')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (18, N'RAM Desktop Corsair Vengeance RGB RS 64GB', 4, N'203.png', N'201.jpg', NULL, NULL, CAST(4599000.00 AS Decimal(18, 2)), CAST(4299000.00 AS Decimal(18, 2)), 5, N'Corsair Vengeance RS là dòng RAM DDR4 mới nhất thuộc Series Vengeance của Corsair', 1, 0, 10, 1, CAST(N'2023-12-22T13:21:42.227' AS DateTime), 1, 1, 40, N'ram-desktop-corsair-vengeance-rgb-rs-cmg64gx4m2e3200c16-64g')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (19, N'RAM Desktop ADATA XPG Spectrix D41 RGB Grey 8GB', 4, N'19.jpg', N'191.jpg', NULL, NULL, CAST(1199000.00 AS Decimal(18, 2)), CAST(619000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật', 2, 0, 8, 1, CAST(N'2023-12-22T12:51:32.960' AS DateTime), 1, 2, 48, N'ram-desktop-adata-xpg-spectrix-d41-rgb-grey-ax4u32008g16a-st41-8gb')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (20, N'RAM Desktop G.Skill Trident Z RGB 16GB DDR4 3200MHz', 4, N'20.jpg', N'201.jpg', NULL, NULL, CAST(2199000.00 AS Decimal(18, 2)), CAST(1990000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật
', 0, 0, 11, 1, CAST(N'2023-12-22T12:43:22.780' AS DateTime), 1, 1, 38, N'ram-desktop-gskill-trident-z-rgb-f4-3200c16d-16gtzr-16gb-2x8gb-ddr4-3200mhz')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (21, N'Ổ Cứng HDD WD 8TB Red Plus 3.5 Inch, 5640RPM', 9, N'21.jpg', N'211.png', NULL, NULL, CAST(6599000.00 AS Decimal(18, 2)), CAST(5999000.00 AS Decimal(18, 2)), 5, N'Ổ cứng Western Digital Red 8TB là loại ổ cứng được chế tạo dành riêng cho hệ thống NAS trong gia đình doanh nghiệp với quy mô lớn và vừa. Ổ cứng được thiết kế để có thể xử lý được khối lượng làm việc cao và có thể hoạt động đươc 24/7. Đặc biệt với công công nghệ NASware 3.0 tích hợp trên HDD WD Red 8TB cho phép dễ dàng tích hợp vào NAS làm tăng hiệu năng, giảm thời gian chết của ổ cứng, cộng thêm công nghệ 3D Active Balance Plus giúp cân bằng và kiểm soát làm nầng cao hiệu xuất hoạt động cho ổ cứng ', 4, 0, 5, 1, CAST(N'2023-12-22T12:43:22.807' AS DateTime), 2, 3, 9, N'o-cung-hdd-wd-8tb-red-plus-3-5-inch-5640rpm-sata-128mb-cache-wd80efzz')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (22, N'Ổ Cứng HDD Western Digital 2TB Purple ', 9, N'22.jpg', N'221.jpg', N'223.png', NULL, CAST(1799000.00 AS Decimal(18, 2)), CAST(1699000.00 AS Decimal(18, 2)), 5, N'Được xây dựng cho các hệ thống bảo mật hoạt động 24/7 với độ phân giải cao. Tốc độ tải công việc được hỗ trợ lên tới 180 TB / năm 1 và hỗ trợ tới 64 camera, các ổ WD Purple được tối ưu hóa cho các hệ thống giám sát. Các ổ WD Purple 8TB, 10TB & 12TB được thiết kế để hỗ trợ phân tích Deep Learning trong các NVR có khả năng AI và có xếp hạng khối lượng công việc nâng cao lên tới 360TB / năm.', 3, 0, 5, 1, CAST(N'2023-12-22T13:03:36.427' AS DateTime), 2, 3, 6, N'o-cung-hdd-western-digital-2tb-purple-wd23purz-64mb-cache-3-5-inch-sata3')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (23, N'Ổ Cứng SSD Kingston SNV2S 2TB NVMe M.2 2280 PCIe Gen 4x4 ', 9, N'23.jpg', N'231.jpg', N'232.png', NULL, CAST(4599000.00 AS Decimal(18, 2)), CAST(2799000.00 AS Decimal(18, 2)), 5, N'SSD NV2 PCIe 4.0 NVMe của Kingston là giải pháp lưu trữ thế hệ tiếp theo đáng kể được hỗ trợ bởi bộ điều khiển NVMe thế hệ 4x4. NV2 cung cấp tốc độ đọc / ghi lên đến 3.500 / 2.800MB / giây với yêu cầu điện năng thấp hơn và nhiệt thấp hơn để giúp tối ưu hóa hiệu suất hệ thống của bạn và mang lại giá trị mà không cần hy sinh.', 0, 0, 9, 1, CAST(N'2023-12-22T12:46:22.443' AS DateTime), 2, 3, 40, N'o-cung-ssd-kingston-snv2s-2tb-nvme-m-2-2280-pcie-gen-4x4-doc-3500mb-s-ghi')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (24, N'Ổ Cứng SSD Samsung 980 PRO 500GB PCIe NVMe 4.00x4', 9, N'24.jpg', N'241.jpg', NULL, NULL, CAST(2799000.00 AS Decimal(18, 2)), CAST(2059000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật', 0, 0, 13, 1, CAST(N'2023-12-22T12:37:19.500' AS DateTime), 2, 3, 30, N'o-cung-ssd-samsung-980-pro-500gb-pcie-nvme-4-00x4-doc-6900mb-s-ghi-5000mb-s-mz-v8p500bw')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (25, N'Nguồn FSP Hydro K Pro Series HD2-750 750W ', 11, N'25.jpg', N'251.jpeg', NULL, NULL, CAST(1999000.00 AS Decimal(18, 2)), CAST(1599000.00 AS Decimal(18, 2)), 5, N'Cấu trúc liên kết chuyển tiếp kép được tích hợp với công nghệ PFC và PWM tích cực và bộ lọc EMI kép cung cấp toàn bộ sức mạnh và tăng cường sự ổn định cho hệ thống của bạn.', 0, 0, 10, 1, CAST(N'2023-12-22T12:41:31.127' AS DateTime), 4, 1, 20, N'nguon-fsp-hydro-k-pro-series-hd2-750-750w-80-plus-bronze-mau-den')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (26, N'Nguồn FSP Power Supply AX Series 350ATX Model AX270-50WPN Active PFC', 11, N'26.jpg', N'261.jpg', N'262.png', NULL, CAST(599000.00 AS Decimal(18, 2)), CAST(399000.00 AS Decimal(18, 2)), 5, N'Mẫu nguồn phù hợp với các bộ máy văn phòng, gaming giá rẻ - công nghệ Active PFC đem tới độ ổn định và hiệu suất sử dụng cao', 0, 0, 17, 1, CAST(N'2023-12-22T12:43:22.810' AS DateTime), 1, 1, 27, N'nguon-fsp-power-supply-ax-series-350atx-model-ax270-50wpn-active-pfc-tray-khong-kem-day-nguon-co-cable-pci-e-mau-trang')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (27, N'Nguồn Cooler Master MWE Gold 750 - V2 750W ', 11, N'27.jpg', N'271.jpg', N'272.png', NULL, CAST(2999000.00 AS Decimal(18, 2)), CAST(2799000.00 AS Decimal(18, 2)), 5, N'MWE Gold - V2 là bước đi tiếp theo trong sự tiến hoá của dòng nguồn 80 PLUS Gold phổ thông của Cooler Master. Dòng nguồn MWE Gold nguyên bản được tạo ra nhằm mang lại giải pháp nguồn chuẩn Gold hợp lý dành cho người dùng có nhu cầu chuyển sang từ các bộ nguồn chuẩn 80 PLUS White và Bronze. Dù thực tế những bộ nguồn chuẩn White và Bronze vẫn còn rất thịnh hành, tiêu chuẩn người dùng toàn cầu đang dần chuyển sang chuẩn Gold. Vài quốc gia đã bắt đầu tiến hành lập pháp hoá 80 PLUS Gold trở thành chuẩn nguồn tối thiểu cho phép giao dịch. Vì vậy, việc đem lại giải pháp nguồn giá thành hợp lý như dòng MWE Gold là rất quan trọng đối với Cooler Master. MWE Gold - V2 đã cải thiện so với dòng nguồn nguyên bản ở nhiều khía cạnh mà người dùng sẽ nhận thấy tức thì.', 0, 0, 21, 1, CAST(N'2023-12-22T12:37:19.507' AS DateTime), 4, 1, 7, N'nguon-may-tinh-cooler-master-mwe-gold-750-v2-750w-80-plus-gold-mau-den-full-modular')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (28, N'Nguồn Master Elite V3 230V PC500 500W ', 11, N'28.jpg', N'281.jpg', N'282.png', NULL, CAST(1189000.00 AS Decimal(18, 2)), CAST(889000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật', 0, 0, 12, 1, CAST(N'2023-12-22T12:31:09.813' AS DateTime), 4, 1, 25, N'nguon-may-tinh-master-elite-v3-230v-pc500-500w-mau-den')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (29, N'Vỏ Case ASUS A21 WHT (Mid Tower / Màu Trắng)', 13, N'29.png', N'291.png', N'292.png', NULL, CAST(1999000.00 AS Decimal(18, 2)), CAST(1599000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật', 0, 0, 1, 1, CAST(N'2023-12-22T13:03:36.457' AS DateTime), 5, 1, 22, N'vo-case-asus-a21-wht-mid-tower-mau-trang')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (30, N'Vỏ Case Jonsbo D500 Silver ( Full Tower/ Màu Bạc)', 13, N'30.jpg', N'301.jpg', N'302.png', NULL, CAST(7999000.00 AS Decimal(18, 2)), CAST(6999000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật', 1, 0, 16, 1, CAST(N'2023-12-22T12:46:22.453' AS DateTime), 5, 1, 8, N'vo-case-jonsbo-d500-silver-full-tower-mau-bac')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (31, N'Vỏ Case Jonsbo D31 Mesh SC White ', 13, N'31.jpg', N'311.jpg', N'312.png', NULL, CAST(2399000.00 AS Decimal(18, 2)), CAST(2199000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật', 0, 0, 16, 1, CAST(N'2023-12-22T12:52:31.620' AS DateTime), 5, 1, 5, N'vo-case-jonsbo-d31-mesh-sc-white-mini-tower-mau-trang-man-hinh-phu-8')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (32, N'Vỏ Case Segotep Gank 6 Black (ATX/Mid Tower/Màu Đen)', 13, N'32.jpg', N'32.jpg', NULL, NULL, CAST(1499000.00 AS Decimal(18, 2)), CAST(889000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật', 0, 0, 18, 1, CAST(N'2023-12-22T12:34:09.027' AS DateTime), 5, 1, 41, N'vo-case-segotep-gank-6-black-atx-mid-tower-mau-den')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (33, N'Tản Nhiệt Nước ASUS ROG Ryujin III 360 ARGB WHT ', 15, N'TN1.jpg', N'TN2.jpg', NULL, NULL, CAST(10499000.00 AS Decimal(18, 2)), CAST(9499000.00 AS Decimal(18, 2)), 5, N'Dòng sản phẩm ROG Ryujin III có có đường ống 400 mm và tương thích với nhiều loại vi xử lý Intel khác nhau nhiều lựa chọn về vi xử lý® và kiểu dáng khi sử dụng các nền tảng bo mạch chủ AMD, giúp bạn có thể linh hoạt xây dựng hệ thống theo ý muốn.', 1, 0, 1, 1, CAST(N'2023-12-22T13:21:42.497' AS DateTime), 5, 1, 12, N'tan-nhiet-nuoc-asus-rog-ryujin-iii-360-argb-wht-mau-trang')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (34, N'Quạt Hút Gió Tản Nhiệt Laptop CoolCold Cooler V3', 15, N'33.jpg', N'Tn4.jpg', NULL, NULL, CAST(229000.00 AS Decimal(18, 2)), CAST(159000.00 AS Decimal(18, 2)), 5, N'Nếu như bạn vẫn đang sử dụng các tấm làm mát phía dưới cho laptop và cảm giác rằng laptop mình vẫn bị nóng thì bên nên suy nghĩ lại về tính hiệu quả của những sản phẩm này.

CoolCold Ice troll 3 thật sự đã tạo ra một cuộc cách mạng về tản nhiệt máy tính khi đã làm thay đổi hoàn toàn quạt làm mát máy tính laptop.

Được thiết kế với một quạt hút gió laptop đặc biệt để hút trực tiếp đi nhiệt laptop,', 0, 0, 21, 1, CAST(N'2023-12-22T12:47:51.687' AS DateTime), 5, 2, 46, N'quat-hut-gio-tan-nhiet-laptop-coolcold-cooler-v3')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (35, N'Card Màn Hình GIGABYTE RTX 4060 Windforce OC-8GD', 3, N'34.jpg', N'341.png', NULL, NULL, CAST(10799000.00 AS Decimal(18, 2)), CAST(8899000.00 AS Decimal(18, 2)), 5, N'Card màn hình Asus PH GTX 1650-O4G GDDR6 là phiên bản nâng cấp bộ nhớ từ GDDR5 lên GDDR6 cho hiệu năng cải thiện rất nhiều. Đây là dòng card đồ họa Entry-Level với giá thành dễ chịu đủ đáp ứng nhu cầu chơi game của đại đa số người dùng phổ thông.', 0, 0, 3, 1, CAST(N'2023-12-22T13:05:28.713' AS DateTime), 5, 1, 12, N'card-man-hinh-gigabyte-rtx-4060-windforce-oc-8gd')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (36, N'Card Màn Hình ASUS PH GTX 1650-O4G GDDR6 ', 3, N'35.jpg', N'351.png', NULL, NULL, CAST(5499000.00 AS Decimal(18, 2)), CAST(3799000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật', 1, 0, 1, 1, CAST(N'2023-12-22T13:03:36.483' AS DateTime), 5, 1, 31, N'card-man-hinh-asus-ph-gtx-1650-o4g-gddr6-4gb-gddr6')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (37, N'Ổ Quang DVD ASUS ZenDrive V1M (SDRW-08V1M-U)', 17, N'37.jpg', N'371.jpg', N'372.png', NULL, CAST(1199000.00 AS Decimal(18, 2)), CAST(799000.00 AS Decimal(18, 2)), 3, N'Hỗ trợ đa nền tảng, kết nối dễ dàng với giao diện USB Type-C', 2, 0, 1, 1, CAST(N'2023-12-25T20:53:13.490' AS DateTime), 5, 1, 38, N'o-quang-dvd-asus-zendrive-v1m-sdrw-08v1m-u')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (38, N'Ổ Quang DVDRW ASUS 24D5MT P2G (T)', 17, N'38.jpg', N'381.png', NULL, NULL, CAST(599000.00 AS Decimal(18, 2)), CAST(399000.00 AS Decimal(18, 2)), 5, N'Dù cho hiện nay lưu trữ bằng DVD, CD-ROM không còn phổ biến như trước, nhưng vẫn có rất nhiều người vẫn tin dùng cách lưu trữ này thay vì lưu trữ đám mây hay USB. Ổ đĩa DVD WR Asus 24D5MT-Tray là một sản phẩm tiết kiệm điện năng cung cấp giải pháp lưu trữ dữ liệu đa phương tiện một cách linh hoạt và hiệu quả. Sản phẩm đồng thời là giải pháp sao lưu dữ liệu tối ưu với sự hỗ trợ của M-DISC.', 0, 0, 1, 1, CAST(N'2023-12-22T12:34:09.033' AS DateTime), 5, 1, 33, N'o-quang-dvdrw-asus-24d5mt-p2g-t')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (39, N'Tai Nghe ASUS ROG Cetra True Wireless 90YH03G1-B5UA00', 19, N'39.jpg', N'391.jpg', N'392.png', NULL, CAST(2499000.00 AS Decimal(18, 2)), CAST(2359000.00 AS Decimal(18, 2)), 5, N'Tai nghe Asus ROG Cetra True Wireless 90YH03G1-B5UA00
', 0, 0, 1, 1, CAST(N'2023-12-22T12:37:19.517' AS DateTime), 5, 3, 6, N'tai-nghe-asus-rog-cetra-true-wireless-90yh03g1-b5ua00')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (40, N'Tai Nghe Gaming ASUS ROG Delta S Core 90YH03JC-B1UA00', 19, N'40.jpg', N'401.jpg', NULL, NULL, CAST(2499000.00 AS Decimal(18, 2)), CAST(1999000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật', 0, 0, 1, 1, CAST(N'2023-12-22T13:05:28.733' AS DateTime), 5, 3, 20, N'tai-nghe-gaming-asus-rog-delta-s-core-90yh03jc-b1ua00')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (41, N'Tai Nghe HP HyperX Cloud Earbuds Red - 4P5J5AA', 19, N'411.jpg', N'412.jpg', N'413.png', NULL, CAST(1099000.00 AS Decimal(18, 2)), CAST(889000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật', 1, 0, 20, 1, CAST(N'2023-12-22T12:31:09.843' AS DateTime), 5, 3, 19, N'tai-nghe-hp-hyperx-cloud-earbuds-red-4p5j5aa')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (42, N'Chuột Không Dây Logitech Pop Emoji Blast Yellow ', 20, N'421.jpg', N'422.png', NULL, NULL, CAST(1299000.00 AS Decimal(18, 2)), CAST(519000.00 AS Decimal(18, 2)), 5, N'Logitech Pop Emoji - Dòng chuột không dây với thiết kế cá tính, trẻ trung, phù hợp với các bạn trẻ năng động.
 
', 0, 0, 19, 1, CAST(N'2023-12-22T12:47:51.710' AS DateTime), 5, 3, 60, N'chuot-khong-day-logitech-pop-emoji-blast-yellow-usb-bluetooth-vang')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (43, N'Chuột Không Dây Logitech M650 Signature Rose ', 20, N'441.jpg', N'442.png', NULL, NULL, CAST(899000.00 AS Decimal(18, 2)), CAST(599000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật', 0, 0, 19, 1, CAST(N'2023-12-22T12:51:33.760' AS DateTime), 5, 3, 33, N'chuot-khong-day-logitech-m650-signature-rose-usb-bluetooth-pin')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (44, N'Chuột ASUS ROG Gladius II (USB/RGB/Màu Đen) (P502)', 20, N'451.jpg', N'452.jpg', N'453.png', NULL, CAST(1999000.00 AS Decimal(18, 2)), CAST(919000.00 AS Decimal(18, 2)), 5, N'Với công nghệ Aura RGB, Asus ROG Gladius II dễ dàng đồng bộ ánh sáng với các thiết bị ROG khác.', 0, 0, 1, 1, CAST(N'2023-12-22T12:41:31.140' AS DateTime), 5, 3, 54, N'chuot-asus-rog-gladius-ii-usb-rgb-mau-den-p502')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (45, N'Bàn Phím Gaming ASUS ROG Azoth/NXSW/US/PBT/WHT', 21, N'461.jpg', N'462.jpg', NULL, NULL, CAST(6999000.00 AS Decimal(18, 2)), CAST(6099000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật
', 0, 0, 1, 1, CAST(N'2023-12-22T12:46:22.463' AS DateTime), 5, 3, 10, N'ban-phim-gaming-asus-rog-azoth-nxsw-us-pbt-wht-trang-90mp031a-bkua11')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (46, N'Bộ Bàn Phím Chuột Không Dây Rapoo 9050M Multi-Mode White', 21, N'471.jpg', N'472.jpg', NULL, NULL, CAST(899000.00 AS Decimal(18, 2)), CAST(849000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật', 0, 0, 20, 1, CAST(N'2023-12-22T13:03:36.503' AS DateTime), 5, 3, 6, N'bo-ban-phim-chuot-khong-day-rapoo-9050m-multi-mode-white')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (47, N'Bàn Phím Cơ Không Dây Rapoo MT510PRO White Milk (USB+ Wireless)', 21, N'501.jpg', N'502.jpg', N'503.png', NULL, CAST(2099000.00 AS Decimal(18, 2)), CAST(1989000.00 AS Decimal(18, 2)), 5, N'RAPOO MT510 Pro áp dụng bố cục 75% nhỏ gọn với cách sắp xếp 84 phím. Bàn phím đầy đủ các phím chức năng từ các phím chữ và số đến các phím mũi tên và các phím hàng chức năng. Nó cung cấp khả năng sử dụng dễ dàng và đầy đủ chức năng cho người dùng.Bàn phím cơ RAPOO MT510 Pro có thể được kết nối với nhiều nguồn khác nhau, tất cả là nhờ ba chế độ kết nối. Nó hỗ trợ không dây tốc độ cao 2.4GHz bằng bộ thu USB đi kèm với bàn phím. Nó cũng hỗ trợ các kết nối Bluetooth V5.0/V3.0 với sự hỗ trợ cho năm thiết bị cùng một lúc. MT510 Pro cũng hỗ trợ kết nối có dây với cáp USB Type-C có thể tháo rời.', 0, 0, 4, 1, CAST(N'2023-12-22T12:47:51.720' AS DateTime), 5, 3, 5, N'ban-phim-co-khong-day-rapoo-mt510pro-white-milk-usb-wireless')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (48, N'Webcam Logitech Brio 300 - Màu Hồng', 23, N'511.jpg', N'512.jpg', NULL, NULL, CAST(1999000.00 AS Decimal(18, 2)), CAST(1349000.00 AS Decimal(18, 2)), 4, N'Đang cập nhật', 2, 1, 19, 1, CAST(N'2023-12-14T13:18:53.880' AS DateTime), 5, 1, 33, N'webcam-logitech-brio-300-mau-hong')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (49, N'Webcam Logitech ConferenceCam Connect', 23, N'521.jpg', N'523.jpg', NULL, NULL, CAST(12999000.00 AS Decimal(18, 2)), CAST(10499000.00 AS Decimal(18, 2)), 5, N'VIDEO LINH HOẠT CHO KHÔNG GIAN LÀM VIỆC Ở MỌI NƠI
Đơn giản hóa hội nghị truyền hình để bất kỳ ai cũng có thể thiết lập và điều hành cuộc họp ở bất cứ đâu. Với giá thành hợp lý, bạn có thể trang bị tiện ích video cho bất kỳ phòng hội nghị nào. Được thiết kế cho các phòng và văn phòng tại nhà nhỏ, Logitech ConferenceCam Connect cũng nhỏ gọn và di động để bạn có thể mang đi khắp nơi làm việc và vòng quanh thế giới. Connect luôn sẵn sàng cho cuộc gọi hội nghị truyền hình tiếp theo của bạn.

HOÀN HẢO CHO CÁC KHÔNG GIAN NHỎ
Connect của Logitech không chỉ vượt trội ở thiết kế giành giải thưởng — tổ chức hội nghị video đơn giản đến mức ai cũng có thể thiết lập và có giá thành phải chăng để bạn có thể trang bị khả năng video cho mọi phòng họp. Mẫu Webcam này được thiết kế để đặt lên bàn và trong những không gian nhỏ, giải pháp hội nghị video này có trường ngắm rộng 90° với tính năng quét ngang, nghiêng, thu phóng 4 lần và quang học sắc nét khiến cho việc thấy mọi người trong phòng thật đơn giản.
', 0, 0, 19, 1, CAST(N'2023-12-22T13:03:36.510' AS DateTime), 5, 1, 19, N'webcam-logitech-conferencecam-connect')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (50, N'Webcam Hikvision DS-U02 1920 × 1080', 23, N'541.jpeg', N'542.jpeg', N'543.png', NULL, CAST(599000.00 AS Decimal(18, 2)), CAST(429000.00 AS Decimal(18, 2)), 5, N'Hikvision là một thương hiệu chuyên sản xuất webcam vô cùng nổi tiếng đến từ Trung Quốc, bạn đang tìm webcam cho laptop, PC thì không thể bỏ qua hãng này được. Nếu bạn đang tìm webcam pc 1080p thì chắc chắn sẽ bị ấn tượng bởi thiết kế bên ngoài nhỏ gọn, linh hoạt của chiếc webcam Hikvision DS-U02 và có thể điều chỉnh, Webcam Hikvision DS-U02 mang lại góc nhìn hoàn toàn mới cho cuộc gọi video. Webcam đi kèm với chân đế chắc chắn giúp bạn đặt trên giá hoặc kẹp vào màn hình dễ dàng. Ngoài ra với thiết kế dễ dàng xoay 360 độ giúp bạn có thể tìm thấy những góc máy đẹp nhất.', 0, 0, 18, 1, CAST(N'2023-12-22T12:52:31.650' AS DateTime), 5, 1, 28, N'webcam-hikvision-ds-u02-1920-1080')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (51, N'Loa Microlab M600BT Bluetooth 2.1', 24, N'551.jpg', N'552.jpg', NULL, NULL, CAST(1619000.00 AS Decimal(18, 2)), CAST(1299000.00 AS Decimal(18, 2)), 4, N'Loa Microlab M-600BT hệ thống loa 2.1, bao gồm 1 loa Bass và 2 loa treble có công suất lên tới 40W, đáp ứng giải tần số từ 35 Hz đến 20000 kHz, độ méo âm thanh nhỏ hơn 0.3%, loa có thể nghe được nhiều dòng nhạc khác nhau. Microlab M-200 cho âm thanh mạnh mẽ hơn với loa bass công suất 16W kết hợp với 2 loa treble với cho âm thanh hài hòa hơn. Loa có thể điều chỉnh âm thanh và chỉnh độ Bass thông qua nút tùy chỉnh ở sau loa bass và bộ phận điều chỉnh âm thanh. Loa Microlab M-600BT sẽ mang đến cho bạn một bữa tiệc âm thanh hoàn hảo.', 0, 0, 7, 1, CAST(N'2023-12-22T13:05:28.743' AS DateTime), 5, 3, 20, N'loa-microlab-m600bt-bluetooth-2-1')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (52, N'Loa Di Động Divoom Songbird HQ - Kèm 02 Micro Tích Hợp ', 24, N'561.jpg', N'562.jpg', NULL, NULL, CAST(3599000.00 AS Decimal(18, 2)), CAST(2499000.00 AS Decimal(18, 2)), 1, N'Thiết kế trẻ trung, năng động
Divoom SongBird-HQ là chiếc loa có kiểu dáng đẹp, nhỏ gọn với mặt lưới trước từ kim loại đan xoắn độc đáo. Khung loa được chế tác từ hợp kim kẽm chống han gỉ, phủ thêm 1 lớp sơn tráng ngoài cùng sử dụng công nghệ tráng xe ô tô. Nhờ đó, chiếc loa này có khả năng chống va đập, kháng nước nhẹ, và trở nên thực sự bền bỉ dù có mang ra ngoài thường xuyên.

Loa Divoom SongBird HQ được hoàn thiện với một tay cầm bằng da thuộc mềm nhẹ, tiện lợi để xách theo bên mình đi mọi nơi. Loa hiện có 2 phiên bản màu sắc là Trắng kem và Xanh bơ cực trendy, đi kèm là 2 micro cùng màu loa để bạn có thể thêm lựa chọn karaoke khi tụ tập cùng bạn bè.
', 0, 4, 12, 1, CAST(N'2023-12-22T12:57:15.413' AS DateTime), 5, 3, 11, N'loa-di-dong-divoom-songbird-hq-kem-02-micro-tich-hop-mau-xanh-luc')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (53, N'Loa Edifier QD35 - Màu Đen', 24, N'571.jpg', N'572.jpg', N'573.png', NULL, CAST(499000.00 AS Decimal(18, 2)), CAST(299000.00 AS Decimal(18, 2)), 5, N'EDIFIER QD35 được trang bị hệ thống amply kỹ thuật số hoàn toàn tích hợp công nghệ DSP. Hệ thống này phân tách tín hiệu âm thanh 2 dải bass và treble riêng biệt, đảm bảo âm thanh sạch sẽ không bị nhiễu chéo tín hiệu. Tổng công suất lên đến 40W (RMS), cho phép Q35 có thể lấp đầy âm thanh của căn phòng 50m2.', 0, 0, 21, 1, CAST(N'2023-12-22T12:31:09.850' AS DateTime), 1, 3, 42, N'loa-edifier-qd35-mau-den')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (54, N'Card Mạng Không Dây PCI Express ASUS PCE-AX3000 Bulk', 26, N'581.jpg', N'582.jpg', N'583.png', NULL, CAST(1299000.00 AS Decimal(18, 2)), CAST(990000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật', 0, 0, 7, 1, CAST(N'2023-12-22T12:51:33.787' AS DateTime), 5, 3, 46, N'card-mang-khong-day-pci-express-asus-pce-ax3000-bulk')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (55, N'Card Mạng WiFi USB ASUS USB-AC53 Nano Chuẩn AC - Tốc Độ 1200Mbps', 26, N'591.png', N'592.jpg', N'593.png', NULL, CAST(799000.00 AS Decimal(18, 2)), CAST(599000.00 AS Decimal(18, 2)), 10, N'Wi-Fi siêu nhanh chưa bao giờ trở nên dễ dàng truy cập đến thế qua USB, lên đến 867Mbps trên băng tần 5GHz thông thoáng. Sử dụng chuẩn không dây 802.11ac, kết nối nhanh hơn và sự tận hưởng sẽ đến với tất cả các thiết bị của bạn', 0, 0, 1, 1, CAST(N'2023-12-22T12:38:38.940' AS DateTime), 5, 3, 56, N'card-mang-wifi-usb-asus-usb-ac53-nano-chuan-ac-toc-do-1200mbps')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (56, N'Cáp Chuyển USB 2.0 to LAN 10/100 ORICO UTJ-U2', 28, N'591.png', N'592.jpg', N'593.png', NULL, CAST(359000.00 AS Decimal(18, 2)), CAST(189000.00 AS Decimal(18, 2)), 5, N'Đặc điểm nổi bật của cáp chuyển USB 2.0 to LAN 10/100 Orico UTJ-U2

Bộ Chuyển USB 2.0 Sang Cổng LAN Orico UTJ-U2 - Hàng Chính Hãng được trang bị tốc độ 10/100Mbps cho đường truyền ổn định.
Được sản xuất từ chất liệu nhựa ABS bền bỉ, có khả năng chịu nhiệt và chịu va đập tốt.
Thiết kế nhỏ gọn, tiện lợi mang theo sử dụng khi đi công tác xa.
Tương thích với hệ điều hành Windows, MAC OS và Linux.
Thu gọn
', 0, 0, 7, 1, CAST(N'2023-12-22T12:57:15.710' AS DateTime), 5, 3, 47, N'cap-chuyen-usb-2-0-to-lan-10-100-orico-utj-u2')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (57, N'Cáp Mạng Đúc Sẵn Cat5e Dài 15m TP-Link TL-EC515EM', 28, N'621.jpg', N'622.jpg', NULL, NULL, CAST(199000.00 AS Decimal(18, 2)), CAST(140000.00 AS Decimal(18, 2)), 5, N'Dây nhảy CAT5e TL-EC550 với kết cấu 4 cặp xoắn của 24 dây đồng nguyên chất AWG đan xen giảm nhiễu điện từ giữa các dây. Đầu dây được mạ vàng nhằm ngăn chặn sự ăn mòn và oxy hóa điện hiệu quả.', 0, 0, 7, 1, CAST(N'2023-12-22T12:46:22.470' AS DateTime), 5, 3, 25, N'cap-mang-duc-san-cat5e-dai-15m-tp-link-tl-ec515em')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (58, N'Cáp VGA 1m/1.5m (Từ Cổng 15 Đực Sang 15 Đực)', 28, N'621.jpg', N'622.jpg', NULL, NULL, CAST(199000.00 AS Decimal(18, 2)), CAST(99000.00 AS Decimal(18, 2)), 5, N'Đang cập nhật
', 2, 0, 8, 1, CAST(N'2023-12-22T12:34:09.037' AS DateTime), 5, 1, 51, N'cap-vga-1m-1-5m-tu-cong-15-duc-sang-15-duc')
INSERT [dbo].[Products] ([ID], [Name], [ProCategoryID], [Image1], [Image2], [Image3], [Image4], [Price], [PromotionPrice], [Quantity], [Description], [ViewCount], [PurchasedCount], [ProducerID], [IsActive], [LastUpdatedDate], [CategoryID], [UsageTypeID], [Discount], [SEOKeyword]) VALUES (60, N'BÀN PHÍM CƠ GAMING CÓ DÂY NEWMEN GM328, PURPLE-WHITE, BLUE SWITCH', 21, N'banphim.jpg', NULL, NULL, NULL, CAST(699000.00 AS Decimal(18, 2)), CAST(599000.00 AS Decimal(18, 2)), 5, N'Bàn phím cơ gaming có dây Newmen GM328, Purple-White, Blue Switch
Chuẩn kết nối: Dây USB
Thiết kế layout 1800 - 100 phím
Switch Blue tuổi thọ lên đến 70 triệu lần nhấn
Kaycap ABS Doubleshot
Led Rainbow', 13, 0, 20, 1, CAST(N'2023-12-25T20:50:50.150' AS DateTime), 5, 3, 24, N'ban-phim-co-gaming-co-day-newmen-gm328-purple-white-blue-switch')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductViewed] ON 

INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (13, 3, 7, CAST(N'2023-12-13T20:32:15.750' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (14, 3, 17, CAST(N'2023-12-05T10:19:06.823' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (18, 3, 9, CAST(N'2023-12-11T21:08:40.380' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (19, 3, 41, CAST(N'2023-12-08T14:38:25.373' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (22, 25, 17, CAST(N'2023-12-11T14:23:30.753' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (23, 3, 5, CAST(N'2023-12-13T20:53:43.407' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (24, 3, 8, CAST(N'2023-12-22T13:26:20.680' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (25, 3, 33, CAST(N'2023-12-22T13:32:43.743' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (27, 23, 21, CAST(N'2023-12-24T12:44:23.187' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (28, 23, 36, CAST(N'2023-12-24T12:43:50.227' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (29, 23, 8, CAST(N'2023-12-24T12:43:31.313' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (30, 23, 18, CAST(N'2023-12-24T12:43:41.230' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (31, 23, 19, CAST(N'2023-12-24T12:44:04.993' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (32, 23, 13, CAST(N'2023-12-24T12:46:31.703' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (33, 23, 15, CAST(N'2023-12-24T12:54:27.563' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (35, 25, 5, CAST(N'2023-12-27T09:08:24.143' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (36, 25, 60, CAST(N'2023-12-30T11:42:57.967' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (37, 23, 37, CAST(N'2023-12-27T21:28:54.873' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (38, 23, 60, CAST(N'2023-12-27T21:35:09.843' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (39, 3, 60, CAST(N'2023-12-27T21:40:47.510' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (40, 23, 7, CAST(N'2023-12-27T21:46:54.327' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (41, 25, 22, CAST(N'2023-12-30T11:35:38.560' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (42, 25, 21, CAST(N'2023-12-30T11:37:32.610' AS DateTime))
INSERT [dbo].[ProductViewed] ([ID], [UserID], [ProductID], [Date]) VALUES (43, 59, 48, CAST(N'2023-12-30T11:47:38.497' AS DateTime))
SET IDENTITY_INSERT [dbo].[ProductViewed] OFF
GO
SET IDENTITY_INSERT [dbo].[QA] ON 

INSERT [dbo].[QA] ([ID], [ProductID], [UserAskID], [Status], [Question], [Answer], [DateQuestion], [DateAnswer], [UserAnswerID]) VALUES (6, 25, 3, 1, N'Thời gian bảo hàng là bao nhiêu ngày ?', N'Sản phẩm có thời gian bảo hành là 6 tháng', CAST(N'2023-12-27T00:00:00.000' AS DateTime), CAST(N'2023-12-27T11:15:54.460' AS DateTime), 3)
INSERT [dbo].[QA] ([ID], [ProductID], [UserAskID], [Status], [Question], [Answer], [DateQuestion], [DateAnswer], [UserAnswerID]) VALUES (17, 60, 23, 1, N'Sản phẩm này tốt không ?', N'Sản phẩm này tốt lắm ạ', CAST(N'2023-12-27T21:40:18.300' AS DateTime), CAST(N'2023-12-27T21:40:18.300' AS DateTime), 3)
INSERT [dbo].[QA] ([ID], [ProductID], [UserAskID], [Status], [Question], [Answer], [DateQuestion], [DateAnswer], [UserAnswerID]) VALUES (22, 7, 23, 1, N'Sản phẩm này có hỗ trợ lắp đặt không shop ?', N'Có ạ, bên em tự vấn hỗ trợ lắp đặt', CAST(N'2023-12-27T21:46:51.327' AS DateTime), CAST(N'2023-12-27T21:46:51.327' AS DateTime), 3)
INSERT [dbo].[QA] ([ID], [ProductID], [UserAskID], [Status], [Question], [Answer], [DateQuestion], [DateAnswer], [UserAnswerID]) VALUES (25, 60, 25, 1, N'Sản phẩm này có màu khác không ạ ?', N'Hiện tại bên em còn màu này thôi ạ', CAST(N'2023-12-29T22:39:21.000' AS DateTime), CAST(N'2023-12-30T11:40:39.000' AS DateTime), 3)
INSERT [dbo].[QA] ([ID], [ProductID], [UserAskID], [Status], [Question], [Answer], [DateQuestion], [DateAnswer], [UserAnswerID]) VALUES (26, 48, 3, 1, N'Có hướng dẫn lắp đặt không ?', N'Dạ có ạ. Bên em sẽ gọi hướng dẫn nếu khách hàng yêu cầu', CAST(N'2023-12-30T11:47:34.050' AS DateTime), CAST(N'2023-12-30T14:28:47.443' AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[QA] OFF
GO
SET IDENTITY_INSERT [dbo].[Rating] ON 

INSERT [dbo].[Rating] ([ID], [ProductID], [UserID], [Star], [Content]) VALUES (5, 17, 3, 5, N'Sản phẩm tốt chất lượng')
INSERT [dbo].[Rating] ([ID], [ProductID], [UserID], [Star], [Content]) VALUES (6, 9, 23, 5, N'Sản phẩm tốt chất lượng, phục vụ nhiệt tình')
SET IDENTITY_INSERT [dbo].[Rating] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (1, N'ProductManage', N'Sản phẩm')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (2, N'DiscountCodeManage', N'Mã giảm giá')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (4, N'ImportProductManage', N'Nhập hàng')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (5, N'OrderManage', N'Đơn đặt hàng')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (6, N'ProducerManage', N'Nhà sản xuất')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (7, N'ProductCategoryManage', N'Danh mục')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (9, N'QAManage', N'Hỏi đáp')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (10, N'StatisticManage', N'Thống kê')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (19, N'DecentralizationManage', N'Phân quyền')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (20, N'Chat', N'Chat với KH')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (23, N'AdminHome', N'AdminHome')
INSERT [dbo].[Role] ([ID], [Name], [NameDisplay]) VALUES (24, N'SupplierManage', N'Nhà cung cấp')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (1, N'Công ty TNHH Thương Mại Dịch Vụ Tin Học Anh Phát', N'139/4 Đinh Bộ Lĩnh, P. 26, Q. Bình Thạnh Tp. HCM', N'0906778965', N'tinhocanhphat@gmail.com', 1, CAST(N'2023-12-29T20:49:34.560' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (2, N'Công ty cổ phần thương mại dịch vụ Phong Vũ', N'264A - 264B - 264C Nguyễn Thị Minh Khai, Phường 6, Quận 3, TP. HCM', N'02873016 867', N'cskh@phongvu.vn', 1, CAST(N'2023-12-29T20:53:46.383' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (3, N'GearVN', N'78-80-82 Hoàng Hoa Thám, Phường 12, Quận Tân Bình, TP. HCM', N'0080016975', N'cskh@gearvn.com', 1, CAST(N'2023-12-29T20:13:56.887' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (4, N'Nova Computer', N'16-18 Tôn Thất Tùng, phường Bến Thành, quận 1, TP. HCM', N'0938707566', N'nova.kinhdoanh@gmail.com', 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (5, N' Sài Gòn Computer', N'115A Lê Quang Định, Phường 14, Quận Bình Thạnh, TPHCM.', N'0982342030', N'hotro@saigoncomputer.vn', 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (6, N'APShop', N'329 Lê Văn Thịnh, Phường Cát Lái, Quận 2 (lầu 1), TP. Hồ Chí Minh', N'0901203070', N'azshopvn2018@gmail.com', 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (7, N'Cửa hàng linh kiện máy tính GameMaster', N'121 Nguyễn Thị Minh Khai, Phường Bến Thành, Quận 1.', N' 090909460', N'GameMasterCP@gmail.com', 1, CAST(N'2023-12-25T20:00:27.980' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (8, N' Công ty Cổ phần Công nghệ Lê Phụng', N'306/11 Nguyễn Thị Minh Khai, Phường 5, Quận 3, TP. Hồ Chí Minh', N'02838328668', N'info@lephung.vn', 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (9, N'Thiện Tâm Computer ', N'39, Đường Số 1, Cư Xá Đô Thành, phường 4, quận 3, TP. Hồ Chí Minh', N'0918308660', N'abc@gmail.com', 0, CAST(N'2023-12-29T17:37:05.790' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (10, N'Công ty TNHH TM & DV Hợp Thành Thịnh', N'145/10 Phạm Văn Hai, Phường 5, Quận Tân Bình, TP. Hồ Chí Minh', N'0932153163', N'httsale.tnv@gmail.com', 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (11, N'Công ty Cổ Phần Thương Mại Dịch Vụ Phong Vũ', N'264A - 264B - 264C Nguyễn Thị Minh Khai, P. 6, Q. 3, TP. Hồ Chí Minh', N'18006867', NULL, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (12, N'LaptopCentre', N'Số 31 ngõ 178 Phố Thái Hà
Phường Trung Liệt, Quận Đống Đa, Hà Nội.', N'0919223344', N'kinhdoanhlaptopcentre@gmail.com', 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (13, N'Vi Tính Kim Chi', N'140/2 - 140/3 Lý Thường Kiệt, P.7, Q.10, TP.HCM', N'0918261170', N'truonghy2410@gmail.com', 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (14, N'Kccshop', N'595/22, CMT8, quận 10, TP. HCM', N'091207444', N'khanhchungcomputer@gmail.com
', 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (15, N'Công ty TNHH TMDV Công Nghệ Tân Thành Danh', N'338 Đường Ba Tháng Hai, P.12, Q.10, TP. Hồ Chí Minh', N'0901343881', NULL, 1, CAST(N'2023-11-01T00:00:00.000' AS DateTime), NULL)
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (17, N'Công ty Cổ phần Máy tính Hoàng Long', N'410 B-C Nguyễn Thị Minh Khai, phường 5, quận 3, TP. Hồ Chí Minh', N'0906217918', N'hoanlong.shopping@gmail.com', 1, CAST(N'2023-12-29T20:24:04.147' AS DateTime), CAST(5600000 AS Decimal(18, 0)))
INSERT [dbo].[Supplier] ([ID], [Name], [Address], [Phone], [Email], [IsActive], [LastUpdatedDate], [TotalAmount]) VALUES (18, N'abc', N'awg', N'09876654314', N'abc@gmail.com', 0, CAST(N'2023-12-29T20:53:57.390' AS DateTime), CAST(0 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[UsageType] ON 

INSERT [dbo].[UsageType] ([ID], [Name]) VALUES (1, N'Desktop')
INSERT [dbo].[UsageType] ([ID], [Name]) VALUES (2, N'Laptop/Notebook')
INSERT [dbo].[UsageType] ([ID], [Name]) VALUES (3, N'Tất cả')
SET IDENTITY_INSERT [dbo].[UsageType] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (3, 1, N'12345678', N'Admin', N'Trà Vinh', N'tranthu2132002@gmail.com', N'0919171717', 1, N'123456', CAST(23537070 AS Decimal(18, 0)), N'Avatar.jpg', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (23, 2, N'12345678', N'Trần Anh Thư', N'185 Nguyễn Đáng, huyện Châu Thành, Trà Vinh', N'trananhthu2132002@gmail.com', N'0335318421', 1, NULL, CAST(25347280 AS Decimal(18, 0)), N'chó-husky-dễ-thương.jpeg', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (24, 2, N'21320002', N'Anh Thư', N'Quan 9', N'AnhThu0607@gmail.com', N'0918980189', 1, NULL, CAST(0 AS Decimal(18, 0)), N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (25, 2, N'12345678', N'Hoa Nhi', N'1146 Phạm Hùng, Bình Chánh', N'abc@gmail.com', N'0762928521', 1, NULL, CAST(9996000 AS Decimal(18, 0)), N'Ong.gif', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (26, 2, N'12345678', N'Minh Thư', N'113/89/14 Phạm Hùng, Bình Chánh', N'tvho1977@gmail.com', N'0378951452', 1, NULL, CAST(0 AS Decimal(18, 0)), N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (39, 2, N'12345678', N'Phan Thị Hồng', N'123 Đường A, Quận 1, TP.HCM
', N'email1@example.com', N'0897445220', 1, NULL, NULL, N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (42, 2, N'12345678', N' Nguyễn Văn An', N'123 Đường A, Quận 1, TP.HCM', N'an123@gmail.com', N'0901234567', 1, NULL, NULL, N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (44, 2, N'12345678', N'Trần Thị Lan', N'456 Phố B, Quận 2, TP.HCM', N'lan456@gmail.com', N'0912345678', 1, NULL, NULL, N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (47, 2, N'12345678', N'Lê Minh Tiến', N'789 Phường C, Quận 3, TP.HCM', N'tienminh@hotmail.com', N'0923456789', 1, NULL, NULL, N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (52, 2, N'12345678', N'Phạm Hồng Mai', N'321 Đường D, Quận 4, TP.HCM', N'maihong@gmail.com', N'0934567890', 1, NULL, NULL, N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (53, 2, N'12345678', N'Bùi Thị Yến', N'654 Phố E, Quận 5, TP.HCM', N' yen654@gmail.com', N'0945678901', 1, NULL, NULL, N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (54, 2, N'12345678', N'Hoàng Văn Nam', N'987 Phường F, Quận 6, TP.HCM', N'namvan@hotmail.com', N'0956789012', 1, NULL, NULL, N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (55, 2, N'12345677', N'Đặng Thị Mai', N'135 Đường G, Quận 7, TP.HCM', N'maithi@yahoo.com', N'0967890123', 1, NULL, NULL, N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (57, 2, N'12345678', N'Vũ Minh Hải', N'246 Phố H, Quận 8, TP.HCM', N'haivu@gmail.com', N'0978901234', 1, NULL, NULL, N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (58, 2, N'12345678', N'Lý Thị Hoa', N' 579 Phường I, Quận 9, TP.HCM', N'hoaly@gmail.com', N'0989012345', 1, NULL, NULL, N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (59, 2, N'12345678', N'Ngô Đình Tân', N'753 Đường K, Quận 10, TP.HCM', N'tan.dinh@yahoo.com', N' 0990123456', 1, NULL, NULL, N'user.png', 0)
INSERT [dbo].[User] ([ID], [UserTypeID], [Password], [FullName], [Address], [Email], [PhoneNumber], [EmailConfirmed], [Capcha], [AmountPurchased], [Avatar], [IsDeleted]) VALUES (60, 2, N'12345678', N'Mina Nguyễn', N'Mỏ Cảy  Nam, Bến Tre', N'MiNa366@gmail.com', N'03234950249', 1, NULL, CAST(0 AS Decimal(18, 0)), N'user.png', 0)
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserDiscountCode] ON 

INSERT [dbo].[UserDiscountCode] ([ID], [UserID], [DiscountCodeDetailID]) VALUES (43, 23, 2)
INSERT [dbo].[UserDiscountCode] ([ID], [UserID], [DiscountCodeDetailID]) VALUES (44, 23, 2)
INSERT [dbo].[UserDiscountCode] ([ID], [UserID], [DiscountCodeDetailID]) VALUES (45, 23, 2)
INSERT [dbo].[UserDiscountCode] ([ID], [UserID], [DiscountCodeDetailID]) VALUES (46, 24, 2)
INSERT [dbo].[UserDiscountCode] ([ID], [UserID], [DiscountCodeDetailID]) VALUES (47, 25, 3)
SET IDENTITY_INSERT [dbo].[UserDiscountCode] OFF
GO
SET IDENTITY_INSERT [dbo].[UsersSpin] ON 

INSERT [dbo].[UsersSpin] ([ID], [UserID], [NumberOfSpins]) VALUES (23, 25, 5)
SET IDENTITY_INSERT [dbo].[UsersSpin] OFF
GO
SET IDENTITY_INSERT [dbo].[UserType] ON 

INSERT [dbo].[UserType] ([ID], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[UserType] ([ID], [Name]) VALUES (2, N'Khách hàng')
SET IDENTITY_INSERT [dbo].[UserType] OFF
GO
ALTER TABLE [dbo].[Decentralization] ADD  DEFAULT ((0)) FOR [UserTypeID]
GO
ALTER TABLE [dbo].[ImportCoupon] ADD  DEFAULT ((0)) FOR [UserID]
GO
ALTER TABLE [dbo].[ImportCoupon] ADD  DEFAULT ((0)) FOR [SupplierID]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [IsDelivere]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [IsApproved]
GO
ALTER TABLE [dbo].[Order] ADD  DEFAULT ((0)) FOR [IsReceived]
GO
ALTER TABLE [dbo].[OrderDetail] ADD  DEFAULT ((0)) FOR [IsRating]
GO
ALTER TABLE [dbo].[Producer] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[ProductCategory] ADD  DEFAULT ((0)) FOR [ParentID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__CategoryID__0D7A0286]  DEFAULT ((0)) FOR [CategoryID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__UsageTypeID__1AD3FDA4]  DEFAULT ((0)) FOR [UsageTypeID]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF__Products__Discou__1CBC4616]  DEFAULT ((0)) FOR [Discount]
GO
ALTER TABLE [dbo].[ProductViewed] ADD  DEFAULT ('2023-11-01T00:00:00.000') FOR [Date]
GO
ALTER TABLE [dbo].[QA] ADD  CONSTRAINT [DF__QA__DateQuestion__41B8C09B]  DEFAULT ('2023-11-01T00:00:00.000') FOR [DateQuestion]
GO
ALTER TABLE [dbo].[QA] ADD  CONSTRAINT [DF__QA__DateAnswer__42ACE4D4]  DEFAULT ('2023-11-01T00:00:00.000') FOR [DateAnswer]
GO
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ((0)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Supplier] ADD  DEFAULT ('2023-11-01T00:00:00.000') FOR [LastUpdatedDate]
GO
ALTER TABLE [dbo].[User] ADD  DEFAULT ((0)) FOR [UserTypeID]
GO
ALTER TABLE [dbo].[Decentralization]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Decentralization_dbo.Role_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Decentralization] CHECK CONSTRAINT [FK_dbo.Decentralization_dbo.Role_RoleID]
GO
ALTER TABLE [dbo].[Decentralization]  WITH CHECK ADD  CONSTRAINT [FK_Decentralization_UserType] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
GO
ALTER TABLE [dbo].[Decentralization] CHECK CONSTRAINT [FK_Decentralization_UserType]
GO
ALTER TABLE [dbo].[DiscountCode]  WITH CHECK ADD  CONSTRAINT [FK_DiscountCode_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[DiscountCode] CHECK CONSTRAINT [FK_DiscountCode_User]
GO
ALTER TABLE [dbo].[DiscountCodeDetail]  WITH CHECK ADD  CONSTRAINT [FK_DiscountCodeDetail_DiscountCode] FOREIGN KEY([DiscountCodeID])
REFERENCES [dbo].[DiscountCode] ([ID])
GO
ALTER TABLE [dbo].[DiscountCodeDetail] CHECK CONSTRAINT [FK_DiscountCodeDetail_DiscountCode]
GO
ALTER TABLE [dbo].[ImportCoupon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCoupon_dbo.Supplier_SupplierID] FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImportCoupon] CHECK CONSTRAINT [FK_dbo.ImportCoupon_dbo.Supplier_SupplierID]
GO
ALTER TABLE [dbo].[ImportCoupon]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCoupon_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ImportCoupon] CHECK CONSTRAINT [FK_dbo.ImportCoupon_dbo.User_UserID]
GO
ALTER TABLE [dbo].[ImportCouponDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.ImportCoupon_ImportCouponID] FOREIGN KEY([ImportCouponID])
REFERENCES [dbo].[ImportCoupon] ([ID])
GO
ALTER TABLE [dbo].[ImportCouponDetail] CHECK CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.ImportCoupon_ImportCouponID]
GO
ALTER TABLE [dbo].[ImportCouponDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
GO
ALTER TABLE [dbo].[ImportCouponDetail] CHECK CONSTRAINT [FK_dbo.ImportCouponDetail_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ItemCart]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cart_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ItemCart] CHECK CONSTRAINT [FK_dbo.Cart_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ItemCart]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Cart_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ItemCart] CHECK CONSTRAINT [FK_dbo.Cart_dbo.User_UserID]
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([FromUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Message]  WITH CHECK ADD FOREIGN KEY([ToUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.Order_OrderID] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Order] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.Order_OrderID]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.OrderDetail_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_dbo.OrderDetail_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductCategory_dbo.ProductCategoryParent_ParentID] FOREIGN KEY([ParentID])
REFERENCES [dbo].[ProductCategoryParent] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_dbo.ProductCategory_dbo.ProductCategoryParent_ParentID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Categories_CategoryID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.Producer_ProducerID] FOREIGN KEY([ProducerID])
REFERENCES [dbo].[Producer] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.Producer_ProducerID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.ProductCategory_CategoryID] FOREIGN KEY([ProCategoryID])
REFERENCES [dbo].[ProductCategory] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.ProductCategory_CategoryID]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Products_dbo.UsageType_UsageTypeID] FOREIGN KEY([UsageTypeID])
REFERENCES [dbo].[UsageType] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_dbo.Products_dbo.UsageType_UsageTypeID]
GO
ALTER TABLE [dbo].[ProductViewed]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductViewed_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductViewed] CHECK CONSTRAINT [FK_dbo.ProductViewed_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[ProductViewed]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ProductViewed_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductViewed] CHECK CONSTRAINT [FK_dbo.ProductViewed_dbo.User_UserID]
GO
ALTER TABLE [dbo].[QA]  WITH CHECK ADD FOREIGN KEY([UserAskID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[QA]  WITH CHECK ADD  CONSTRAINT [FK_dbo.QA_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[QA] CHECK CONSTRAINT [FK_dbo.QA_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rating_dbo.Products_ProductID] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Products] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_dbo.Rating_dbo.Products_ProductID]
GO
ALTER TABLE [dbo].[Rating]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Rating_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Rating] CHECK CONSTRAINT [FK_dbo.Rating_dbo.User_UserID]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.User_dbo.UserType_UserTypeID] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_dbo.User_dbo.UserType_UserTypeID]
GO
ALTER TABLE [dbo].[UserDiscountCode]  WITH CHECK ADD  CONSTRAINT [FK_UserDiscountCode_DiscountCodeDetail] FOREIGN KEY([DiscountCodeDetailID])
REFERENCES [dbo].[DiscountCodeDetail] ([ID])
GO
ALTER TABLE [dbo].[UserDiscountCode] CHECK CONSTRAINT [FK_UserDiscountCode_DiscountCodeDetail]
GO
ALTER TABLE [dbo].[UserDiscountCode]  WITH CHECK ADD  CONSTRAINT [FK_UserDiscountCode_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserDiscountCode] CHECK CONSTRAINT [FK_UserDiscountCode_User]
GO
ALTER TABLE [dbo].[UsersSpin]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Receiver') DROP SERVICE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender') DROP SERVICE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Receiver') DROP QUEUE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender') DROP QUEUE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65') DROP CONTRACT [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ID') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ID/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/FromUserID') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ToUserID') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Content') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Content/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/CreatedDate') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Sent') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Sent/old') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/EndMessage') DROP MESSAGE TYPE [dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_0406b442-9946-4762-aeb9-4198fac9db65_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Receiver') DROP SERVICE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender') DROP SERVICE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Receiver') DROP QUEUE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender') DROP QUEUE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b') DROP CONTRACT [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ID') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ID/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/FromUserID') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ToUserID') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Content') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Content/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/CreatedDate') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Sent') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Sent/old') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/EndMessage') DROP MESSAGE TYPE [dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_053c5ccf-bda0-42fa-b7a0-0d577a1dee3b_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver') DROP SERVICE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender') DROP SERVICE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver') DROP QUEUE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender') DROP QUEUE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc') DROP CONTRACT [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent/old') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/EndMessage') DROP MESSAGE TYPE [dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_05d44191-6886-4565-9712-8e5d14182cbc_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver') DROP SERVICE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender') DROP SERVICE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver') DROP QUEUE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender') DROP QUEUE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8') DROP CONTRACT [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent/old') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/EndMessage') DROP MESSAGE TYPE [dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_0736bd27-5a5b-4d56-b4f5-e8734597a1d8_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Receiver') DROP SERVICE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender') DROP SERVICE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Receiver') DROP QUEUE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender') DROP QUEUE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1') DROP CONTRACT [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ID') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ID/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/FromUserID') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ToUserID') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Content') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Content/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/CreatedDate') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Sent') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Sent/old') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/EndMessage') DROP MESSAGE TYPE [dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_13945f61-3544-4699-89cb-a489c607b3e1_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Receiver') DROP SERVICE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender') DROP SERVICE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Receiver') DROP QUEUE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender') DROP QUEUE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0') DROP CONTRACT [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ID') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ID/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/FromUserID') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ToUserID') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Content') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Content/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/CreatedDate') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Sent') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Sent/old') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/EndMessage') DROP MESSAGE TYPE [dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_142a144e-7383-4890-bc3b-3cc5f9bf04d0_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Receiver') DROP SERVICE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender') DROP SERVICE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Receiver') DROP QUEUE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender') DROP QUEUE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2') DROP CONTRACT [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ID') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ID/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/FromUserID') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ToUserID') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Content') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Content/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/CreatedDate') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Sent') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Sent/old') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/EndMessage') DROP MESSAGE TYPE [dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_1edc5001-456d-4cc1-8567-83173dca9bd2_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Receiver') DROP SERVICE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender') DROP SERVICE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Receiver') DROP QUEUE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender') DROP QUEUE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac') DROP CONTRACT [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ID') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ID/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/FromUserID') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ToUserID') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Content') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Content/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/CreatedDate') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Sent') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Sent/old') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/EndMessage') DROP MESSAGE TYPE [dbo_Message_245037f9-f495-473c-81d9-f1354c819fac/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_245037f9-f495-473c-81d9-f1354c819fac_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_Receiver') DROP SERVICE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_Sender') DROP SERVICE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_Receiver') DROP QUEUE [dbo].[dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_Sender') DROP QUEUE [dbo].[dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d') DROP CONTRACT [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/ID') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/ID/old') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/FromUserID') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/ToUserID') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/Content') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/Content/old') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/CreatedDate') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/Sent') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/Sent/old') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/EndMessage') DROP MESSAGE TYPE [dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_24602b7a-12de-47cb-b997-8d8c001d210d_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver') DROP SERVICE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender') DROP SERVICE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver') DROP QUEUE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender') DROP QUEUE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e') DROP CONTRACT [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent/old') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/EndMessage') DROP MESSAGE TYPE [dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_27dc8b25-d940-4bfc-a202-4cf9c0ee739e_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Receiver') DROP SERVICE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender') DROP SERVICE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Receiver') DROP QUEUE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender') DROP QUEUE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6') DROP CONTRACT [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ID') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ID/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/FromUserID') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ToUserID') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Content') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Content/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/CreatedDate') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Sent') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Sent/old') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/EndMessage') DROP MESSAGE TYPE [dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_3315306f-1ebc-4d9e-9ead-53a41e43a9f6_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_Receiver') DROP SERVICE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_Sender') DROP SERVICE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_Receiver') DROP QUEUE [dbo].[dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_Sender') DROP QUEUE [dbo].[dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a') DROP CONTRACT [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/ID') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/ID/old') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/FromUserID') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/ToUserID') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/Content') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/Content/old') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/CreatedDate') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/Sent') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/Sent/old') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/EndMessage') DROP MESSAGE TYPE [dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_35853ce5-e349-4e27-b920-02a6d1a48f2a_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Receiver') DROP SERVICE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender') DROP SERVICE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Receiver') DROP QUEUE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender') DROP QUEUE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a') DROP CONTRACT [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ID') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ID/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/FromUserID') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ToUserID') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Content') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Content/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/CreatedDate') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Sent') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Sent/old') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/EndMessage') DROP MESSAGE TYPE [dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_39ec1b6b-344d-479a-80b8-785a73d7c96a_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Receiver') DROP SERVICE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender') DROP SERVICE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Receiver') DROP QUEUE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender') DROP QUEUE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8') DROP CONTRACT [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ID') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ID/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/FromUserID') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ToUserID') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Content') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Content/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/CreatedDate') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Sent') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Sent/old') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/EndMessage') DROP MESSAGE TYPE [dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_40365fcc-54d3-46d5-a3bb-58f7d4dc03e8_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Receiver') DROP SERVICE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender') DROP SERVICE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Receiver') DROP QUEUE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender') DROP QUEUE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504') DROP CONTRACT [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ID') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ID/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/FromUserID') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ToUserID') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Content') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Content/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/CreatedDate') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Sent') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Sent/old') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/EndMessage') DROP MESSAGE TYPE [dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_49d8e313-ae45-4b53-bb37-c5b94d918504_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Receiver') DROP SERVICE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender') DROP SERVICE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Receiver') DROP QUEUE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender') DROP QUEUE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340') DROP CONTRACT [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ID') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ID/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/FromUserID') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ToUserID') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Content') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Content/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/CreatedDate') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Sent') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Sent/old') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/EndMessage') DROP MESSAGE TYPE [dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_4c6b93c6-78a2-44d7-9708-ca8704634340_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Receiver') DROP SERVICE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender') DROP SERVICE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Receiver') DROP QUEUE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender') DROP QUEUE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363') DROP CONTRACT [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ID') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ID/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/FromUserID') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ToUserID') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Content') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Content/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/CreatedDate') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Sent') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Sent/old') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/EndMessage') DROP MESSAGE TYPE [dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_4c9c230f-6c98-479f-9e0a-a5556c585363_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Receiver') DROP SERVICE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender') DROP SERVICE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Receiver') DROP QUEUE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender') DROP QUEUE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33') DROP CONTRACT [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ID') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ID/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/FromUserID') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ToUserID') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Content') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Content/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/CreatedDate') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Sent') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Sent/old') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/EndMessage') DROP MESSAGE TYPE [dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_52627277-4cd9-4bf0-9f3e-12be436fec33_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Receiver') DROP SERVICE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender') DROP SERVICE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Receiver') DROP QUEUE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender') DROP QUEUE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5') DROP CONTRACT [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ID') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ID/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/FromUserID') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ToUserID') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Content') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Content/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/CreatedDate') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Sent') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Sent/old') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/EndMessage') DROP MESSAGE TYPE [dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_55b604b3-aec4-461b-9b4f-b06ce673cef5_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Receiver') DROP SERVICE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender') DROP SERVICE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Receiver') DROP QUEUE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender') DROP QUEUE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712') DROP CONTRACT [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ID') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ID/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/FromUserID') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ToUserID') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Content') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Content/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/CreatedDate') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Sent') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Sent/old') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/EndMessage') DROP MESSAGE TYPE [dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_5bf76781-fe1b-4b9d-ac38-2a8f33c10712_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Receiver') DROP SERVICE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender') DROP SERVICE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Receiver') DROP QUEUE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender') DROP QUEUE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a') DROP CONTRACT [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ID') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ID/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/FromUserID') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ToUserID') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Content') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Content/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/CreatedDate') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Sent') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Sent/old') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/EndMessage') DROP MESSAGE TYPE [dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_6afcbe20-d6ad-4b50-8526-edfb4ea8322a_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Receiver') DROP SERVICE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender') DROP SERVICE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Receiver') DROP QUEUE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender') DROP QUEUE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090') DROP CONTRACT [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ID') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ID/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/FromUserID') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ToUserID') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Content') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Content/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/CreatedDate') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Sent') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Sent/old') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/EndMessage') DROP MESSAGE TYPE [dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_73e9de33-c5ec-4028-b234-ccda81f96090_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Receiver') DROP SERVICE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender') DROP SERVICE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Receiver') DROP QUEUE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender') DROP QUEUE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59') DROP CONTRACT [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ID') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ID/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/FromUserID') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ToUserID') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Content') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Content/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/CreatedDate') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Sent') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Sent/old') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/EndMessage') DROP MESSAGE TYPE [dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_740bf82c-bd3b-4cf8-8656-0de55207ab59_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Receiver') DROP SERVICE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender') DROP SERVICE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Receiver') DROP QUEUE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender') DROP QUEUE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca') DROP CONTRACT [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ID') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ID/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/FromUserID') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ToUserID') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Content') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Content/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/CreatedDate') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Sent') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Sent/old') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/EndMessage') DROP MESSAGE TYPE [dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_939ba436-effd-4beb-a5e2-186d4bf851ca_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Receiver') DROP SERVICE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender') DROP SERVICE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Receiver') DROP QUEUE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender') DROP QUEUE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459') DROP CONTRACT [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ID') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ID/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/FromUserID') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ToUserID') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Content') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Content/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/CreatedDate') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Sent') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Sent/old') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/EndMessage') DROP MESSAGE TYPE [dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_a92d24a9-3a9c-46ff-9ff3-86891ea3f459_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Receiver') DROP SERVICE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender') DROP SERVICE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Receiver') DROP QUEUE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender') DROP QUEUE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a') DROP CONTRACT [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ID') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ID/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/FromUserID') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ToUserID') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Content') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Content/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/CreatedDate') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Sent') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Sent/old') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/EndMessage') DROP MESSAGE TYPE [dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_aa76d402-a7fa-4d30-b092-9d2cc3adad9a_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver') DROP SERVICE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender') DROP SERVICE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver') DROP QUEUE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender') DROP QUEUE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39') DROP CONTRACT [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent/old') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/EndMessage') DROP MESSAGE TYPE [dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_bb20ff31-f988-4393-8a89-4ea51e477f39_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver') DROP SERVICE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender') DROP SERVICE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver') DROP QUEUE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender') DROP QUEUE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a') DROP CONTRACT [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent/old') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/EndMessage') DROP MESSAGE TYPE [dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_bd127a53-09ae-44e8-b69b-c0ee2e86ba1a_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Receiver') DROP SERVICE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender') DROP SERVICE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Receiver') DROP QUEUE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender') DROP QUEUE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70') DROP CONTRACT [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ID') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ID/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/FromUserID') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ToUserID') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Content') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Content/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/CreatedDate') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Sent') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Sent/old') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/EndMessage') DROP MESSAGE TYPE [dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_cf60b8af-d794-42cc-b662-c91c0f7bee70_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Receiver') DROP SERVICE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender') DROP SERVICE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Receiver') DROP QUEUE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender') DROP QUEUE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e') DROP CONTRACT [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ID') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ID/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/FromUserID') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ToUserID') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Content') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Content/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/CreatedDate') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Sent') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Sent/old') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/EndMessage') DROP MESSAGE TYPE [dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_fc23723f-9860-44bf-886a-0082a9df516e_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Receiver') DROP SERVICE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender') DROP SERVICE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Receiver') DROP QUEUE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender') DROP QUEUE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827') DROP CONTRACT [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Update') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ID') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ID/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/FromUserID') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/FromUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/FromUserID/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/FromUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ToUserID') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ToUserID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ToUserID/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/ToUserID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Content') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Content];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Content/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Content/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/CreatedDate') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/CreatedDate];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/CreatedDate/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/CreatedDate/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Sent') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Sent];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Sent/old') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/Sent/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/EndMessage') DROP MESSAGE TYPE [dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Message_fe2a8ed6-2783-4070-8938-2533085b7827_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Receiver') DROP SERVICE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender') DROP SERVICE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Receiver') DROP QUEUE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender') DROP QUEUE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9') DROP CONTRACT [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/ID') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/ID/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateOrder') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateShip') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateShip/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Offer') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Offer/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsPaid') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsCancel') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelete') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelivere') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsApproved') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsReceived') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Total') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Total/old') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/EndMessage') DROP MESSAGE TYPE [dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_248a5112-d675-4b3b-9809-be67bc8fb1d9_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Receiver') DROP SERVICE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender') DROP SERVICE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Receiver') DROP QUEUE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender') DROP QUEUE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138') DROP CONTRACT [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/ID') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/ID/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateOrder') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateShip') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateShip/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Offer') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Offer/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsPaid') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsCancel') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelete') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelivere') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsApproved') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsReceived') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Total') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Total/old') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/EndMessage') DROP MESSAGE TYPE [dbo_Order_286f8088-9cf0-4335-af0c-c26834496138/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_286f8088-9cf0-4335-af0c-c26834496138_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_Receiver') DROP SERVICE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_Sender') DROP SERVICE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_Receiver') DROP QUEUE [dbo].[dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_Sender') DROP QUEUE [dbo].[dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19') DROP CONTRACT [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/ID') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/ID/old') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/DateOrder') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/DateShip') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/DateShip/old') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/Offer') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/Offer/old') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsPaid') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsCancel') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsDelete') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsDelivere') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsApproved') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsReceived') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/Total') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/Total/old') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/EndMessage') DROP MESSAGE TYPE [dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_2c667f3e-3ff9-497e-a617-987946780e19_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_Receiver') DROP SERVICE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_Sender') DROP SERVICE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_Receiver') DROP QUEUE [dbo].[dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_Sender') DROP QUEUE [dbo].[dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f') DROP CONTRACT [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/ID') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/ID/old') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/DateOrder') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/DateShip') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/DateShip/old') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/Offer') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/Offer/old') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsPaid') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsCancel') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsDelete') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsDelivere') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsApproved') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsReceived') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/Total') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/Total/old') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/EndMessage') DROP MESSAGE TYPE [dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_37703a13-dabb-45e5-bc69-edcb58de3b1f_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Receiver') DROP SERVICE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender') DROP SERVICE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Receiver') DROP QUEUE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender') DROP QUEUE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393') DROP CONTRACT [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/ID') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/ID/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateOrder') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateShip') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateShip/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Offer') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Offer/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsPaid') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsCancel') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelete') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelivere') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsApproved') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsReceived') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Total') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Total/old') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/EndMessage') DROP MESSAGE TYPE [dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_4321986f-c434-4ee4-9612-8c9edb275393_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Receiver') DROP SERVICE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender') DROP SERVICE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Receiver') DROP QUEUE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender') DROP QUEUE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f') DROP CONTRACT [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/ID') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/ID/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateOrder') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateShip') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateShip/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Offer') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Offer/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsPaid') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsCancel') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelete') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelivere') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsApproved') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsReceived') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Total') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Total/old') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/EndMessage') DROP MESSAGE TYPE [dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_52861545-c86f-4739-92b4-8fabebcba97f_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_Receiver') DROP SERVICE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_Sender') DROP SERVICE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_Receiver') DROP QUEUE [dbo].[dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_Sender') DROP QUEUE [dbo].[dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98') DROP CONTRACT [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/ID') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/ID/old') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/DateOrder') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/DateShip') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/DateShip/old') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/Offer') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/Offer/old') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsPaid') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsCancel') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsDelete') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsDelivere') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsApproved') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsReceived') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/Total') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/Total/old') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/EndMessage') DROP MESSAGE TYPE [dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_581c3818-29ab-4108-874e-693b6dc0de98_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Receiver') DROP SERVICE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender') DROP SERVICE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Receiver') DROP QUEUE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender') DROP QUEUE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b') DROP CONTRACT [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/ID') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/ID/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateOrder') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateShip') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateShip/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Offer') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Offer/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsPaid') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsCancel') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelete') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelivere') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsApproved') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsReceived') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Total') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Total/old') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/EndMessage') DROP MESSAGE TYPE [dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_5d0dac80-6ec1-4cf4-a9ea-5c59bfe59f3b_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_Receiver') DROP SERVICE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_Sender') DROP SERVICE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_Receiver') DROP QUEUE [dbo].[dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_Sender') DROP QUEUE [dbo].[dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d') DROP CONTRACT [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/ID') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/ID/old') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/DateOrder') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/DateShip') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/DateShip/old') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/Offer') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/Offer/old') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsPaid') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsCancel') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsDelete') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsDelivere') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsApproved') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsReceived') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/Total') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/Total/old') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/EndMessage') DROP MESSAGE TYPE [dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_61fbb0be-55a5-43bf-9fbe-de911465744d_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_Receiver') DROP SERVICE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_Sender') DROP SERVICE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_Receiver') DROP QUEUE [dbo].[dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_Sender') DROP QUEUE [dbo].[dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7') DROP CONTRACT [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/ID') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/ID/old') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/DateOrder') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/DateShip') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/DateShip/old') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/Offer') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/Offer/old') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsPaid') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsCancel') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsDelete') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsDelivere') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsApproved') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsReceived') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/Total') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/Total/old') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/EndMessage') DROP MESSAGE TYPE [dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_7dc5ecdb-2161-4f70-9102-fce7dd1320b7_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_Receiver') DROP SERVICE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_Sender') DROP SERVICE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_Receiver') DROP QUEUE [dbo].[dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_Sender') DROP QUEUE [dbo].[dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f') DROP CONTRACT [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/ID') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/ID/old') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/DateOrder') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/DateShip') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/DateShip/old') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/Offer') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/Offer/old') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsPaid') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsCancel') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsDelete') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsDelivere') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsApproved') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsReceived') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/Total') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/Total/old') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/EndMessage') DROP MESSAGE TYPE [dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_a4f3abf4-7403-431b-90d2-20a3a55cfc3f_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Receiver') DROP SERVICE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender') DROP SERVICE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Receiver') DROP QUEUE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender') DROP QUEUE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b') DROP CONTRACT [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/ID') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/ID/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateOrder') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateShip') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateShip/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Offer') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Offer/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsPaid') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsCancel') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelete') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelivere') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsApproved') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsReceived') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Total') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Total/old') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/EndMessage') DROP MESSAGE TYPE [dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_a6d1740b-bdea-4338-9907-321472b9fd9b_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Receiver') DROP SERVICE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender') DROP SERVICE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Receiver') DROP QUEUE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender') DROP QUEUE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d') DROP CONTRACT [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/ID') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/ID/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateOrder') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateShip') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateShip/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Offer') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Offer/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsPaid') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsCancel') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelete') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelivere') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsApproved') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsReceived') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Total') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Total/old') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/EndMessage') DROP MESSAGE TYPE [dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_b3b3bf91-7bf9-417b-8571-d6dce35b7b5d_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_Receiver') DROP SERVICE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_Sender') DROP SERVICE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_Receiver') DROP QUEUE [dbo].[dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_Sender') DROP QUEUE [dbo].[dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764') DROP CONTRACT [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/ID') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/ID/old') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/DateOrder') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/DateShip') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/DateShip/old') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/Offer') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/Offer/old') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsPaid') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsCancel') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsDelete') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsDelivere') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsApproved') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsReceived') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/Total') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/Total/old') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/EndMessage') DROP MESSAGE TYPE [dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_b3c60515-6145-4991-8ee6-6bcb52745764_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Receiver') DROP SERVICE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender') DROP SERVICE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Receiver') DROP QUEUE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender') DROP QUEUE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63') DROP CONTRACT [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/ID') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/ID/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateOrder') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateShip') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateShip/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Offer') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Offer/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsPaid') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsCancel') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelete') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelivere') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsApproved') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsReceived') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Total') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Total/old') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/EndMessage') DROP MESSAGE TYPE [dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_d9d45c60-5283-4773-a023-e15a2550ac63_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Receiver') DROP SERVICE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender') DROP SERVICE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Receiver') DROP QUEUE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender') DROP QUEUE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0') DROP CONTRACT [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/ID') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/ID/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateOrder') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateShip') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateShip/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Offer') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Offer/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsPaid') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsCancel') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelete') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelivere') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsApproved') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsReceived') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Total') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Total/old') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/EndMessage') DROP MESSAGE TYPE [dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_d9dfc9d1-3b03-4aec-b96b-eb0f0f583fe0_QueueActivationSender];

        
    END
END
GO
/****** Object:  StoredProcedure [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_QueueActivationSender]    Script Date: 12/30/2023 4:45:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_QueueActivationSender] 
WITH EXECUTE AS SELF
AS 
BEGIN 
    SET NOCOUNT ON;
    DECLARE @h AS UNIQUEIDENTIFIER;
    DECLARE @mt NVARCHAR(200);

    RECEIVE TOP(1) @h = conversation_handle, @mt = message_type_name FROM [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender];

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/EndDialog'
    BEGIN
        END CONVERSATION @h;
    END

    IF @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/DialogTimer' OR @mt = N'http://schemas.microsoft.com/SQL/ServiceBroker/Error'
    BEGIN 
        

        END CONVERSATION @h;

        DECLARE @conversation_handle UNIQUEIDENTIFIER;
        DECLARE @schema_id INT;
        SELECT @schema_id = schema_id FROM sys.schemas WITH (NOLOCK) WHERE name = N'dbo';

        
        IF EXISTS (SELECT * FROM sys.triggers WITH (NOLOCK) WHERE object_id = OBJECT_ID(N'[dbo].[tr_dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender]')) DROP TRIGGER [dbo].[tr_dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender') EXEC (N'ALTER QUEUE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender] WITH ACTIVATION (STATUS = OFF)');

        
        SELECT conversation_handle INTO #Conversations FROM sys.conversation_endpoints WITH (NOLOCK) WHERE far_service LIKE N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_%' ORDER BY is_initiator ASC;
        DECLARE conversation_cursor CURSOR FAST_FORWARD FOR SELECT conversation_handle FROM #Conversations;
        OPEN conversation_cursor;
        FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        WHILE @@FETCH_STATUS = 0 
        BEGIN
            END CONVERSATION @conversation_handle WITH CLEANUP;
            FETCH NEXT FROM conversation_cursor INTO @conversation_handle;
        END
        CLOSE conversation_cursor;
        DEALLOCATE conversation_cursor;
        DROP TABLE #Conversations;

        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Receiver') DROP SERVICE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Receiver];
        
        IF EXISTS (SELECT * FROM sys.services WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender') DROP SERVICE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Receiver') DROP QUEUE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Receiver];
        
        IF EXISTS (SELECT * FROM sys.service_queues WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender') DROP QUEUE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_Sender];

        
        IF EXISTS (SELECT * FROM sys.service_contracts WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789') DROP CONTRACT [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789];
        
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Insert') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Insert];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Update') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Update];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Delete') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/StartMessage/Delete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/ID') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/ID];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/ID/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/ID/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateOrder') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateOrder];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateOrder/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateOrder/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateShip') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateShip];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateShip/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/DateShip/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Offer') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Offer];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Offer/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Offer/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsPaid') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsPaid];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsPaid/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsPaid/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsCancel') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsCancel];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsCancel/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsCancel/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelete') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelete];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelete/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelete/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelivere') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelivere];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelivere/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsDelivere/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsApproved') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsApproved];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsApproved/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsApproved/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsReceived') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsReceived];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsReceived/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/IsReceived/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Total') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Total];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Total/old') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/Total/old];
        IF EXISTS (SELECT * FROM sys.service_message_types WITH (NOLOCK) WHERE name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/EndMessage') DROP MESSAGE TYPE [dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789/EndMessage];

        
        IF EXISTS (SELECT * FROM sys.objects WITH (NOLOCK) WHERE schema_id = @schema_id AND name = N'dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_QueueActivationSender') DROP PROCEDURE [dbo].[dbo_Order_e7d70651-d7b8-4536-b24b-b4473ed89789_QueueActivationSender];

        
    END
END
GO
