
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Accounts](
	[username] [varchar](50) NOT NULL,
	[password] [varchar](50) NULL,
	[fullname] [nvarchar](100) NULL,
	[email] [varchar](100) NULL,
	[photo] [varchar](50) NULL,
	[activated] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Brands](
	[id] [varchar](10) NOT NULL,
	[name] [nvarchar](50) NULL,
	[image] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [char](4) NOT NULL,
	[name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetails]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[orderId] [int] NULL,
	[productId] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Orders](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[username] [varchar](50) NULL,
	[createDate] [date] NULL,
	[address] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[productId] [int] NULL,
	[categoryId] [char](4) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Products](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[name] [nvarchar](100) NULL,
	[price] [float] NULL,
	[createDate] [date] NULL,
	[available] [bit] NULL,
	[brandId] [varchar](10) NULL,
	[images] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RoleDetails]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RoleDetails](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[accountId] [varchar](50) NULL,
	[roleId] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Roles](
	[role] [varchar](10) NOT NULL,
	[description] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'duclan', N'123', N'Trần Đức Lân', N'duclan@gmail.com', N'cat.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'minhnhat', N'123', N'Minh Nhật', N'minhnhat@fpt.edu.vn', N'cat2.jpg', 1)
INSERT [dbo].[Accounts] ([username], [password], [fullname], [email], [photo], [activated]) VALUES (N'admin', N'123', N'Admin', N'admin@gmail.com', N'admin.jpg', 1)
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'BA', N'Thịt', N'thittraug.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'KE', N'Gia vị', N'mackhen.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'BTC', N'Mật ong', N'matongruoi.jpg')
INSERT [dbo].[Brands] ([id], [name], [image]) VALUES (N'ETH', N'Ngâm rượu', N'cutamthat.png')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM01', N'Thịt gác bếp')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM02', N'Hạt gia vị')
INSERT [dbo].[Categories] ([id], [name]) VALUES (N'DM03', N'Ngâm rượu uống')
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (0, 8, 2, 190000, 1)
INSERT [dbo].[OrderDetails] ([id], [orderId], [productId], [price], [quantity]) VALUES (1, 9, 1, 350000, 1)

SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (8, N'admin', CAST(N'2022-06-08' AS Date), N'169 Đinh Bộ Lĩnh')
INSERT [dbo].[Orders] ([id], [username], [createDate], [address]) VALUES (9, N'duclan', CAST(N'2022-06-09' AS Date), N'169 Đinh Bộ Lĩnh')

SET IDENTITY_INSERT [dbo].[Orders] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (6, 3, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (7, 4, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (10, 6, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (40, 1, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (41, 5, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (50, 8, N'DM01')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (52, 7, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (57, 0, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (58, 0, N'DM02')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (59, 1, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (60, 1, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (61, 6, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (62, 9, N'DM03')
INSERT [dbo].[ProductCategory] ([id], [productId], [categoryId]) VALUES (63, 10, N'DM03')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (0, N'Thịt trâu gác bếp', 210000, CAST(N'2021-04-15' AS Date), 1, N'BA', N'["thittrau.jpg","trau.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (1, N'Thịt lợn gác bếp', 350000, CAST(N'2021-04-15' AS Date), 1, N'BA', N'["thitlon.jpg","thitlon.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (2, N'Thịt gà gác bếp', 190000, CAST(N'2021-03-20' AS Date), 1, N'BA', N'["thitgagacbep.jpg","thitgagacbep.jpg","ga.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (3, N'Thị bò gác bếp', 350000, CAST(N'2021-03-20' AS Date), 1, N'BA', N'["thitbo.jpg","bo.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (4, N'Cá chép gác bếp', 850000, CAST(N'2021-03-20' AS Date), 1, N'BA', N'["cachep.jpg","cachep.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (5, N'Cá măng gác bếp', 37000, CAST(N'2021-03-22' AS Date), 1, N'BA', N'["camang.jpg","camang.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (6, N'Mắc khén', 650000, CAST(N'2021-04-15' AS Date), 1, N'BTC', N'["mackhen.jpg","mackhen.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (7, N'Hạt dổi', 650000, CAST(N'2021-04-15' AS Date), 1, N'BTC', N'["hatdoi.jpg","hatdoi.jpg"]')

INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (8, N'Mắc khén', 1458000, CAST(N'2022-04-12' AS Date), 1, N'KE', N'["mackhen.jpg","mackhen.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (9, N'Hạt dổi', 189000, CAST(N'2022-04-12' AS Date), 1, N'KE', N'["hatdoi.jpg","hatdoi.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (10, N'Thảo quả', 350000, CAST(N'2022-04-13' AS Date), 1, N'KE', N'["thaoqua.jpg","thao.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (11, N'Mắc mật', 370000, CAST(N'2022-04-13' AS Date), 1, N'KE', N'["macmat.jpg","macmat.jpg"]')

INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (12, N'Tam thất', 318000, CAST(N'2022-04-14' AS Date), 1, N'ETH', N'["cutamthat.jpg","cutamthat.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (13, N'Sâu chít', 445000, CAST(N'2022-03-15' AS Date), 1, N'ETH', N'["sauchit.jpg","sauchit.jpg"]')
INSERT [dbo].[Products] ([id], [name], [price], [createDate], [available], [brandId], [images]) VALUES (14, N'Bột nghệ', 445000, CAST(N'2022-03-15' AS Date), 1, N'ETH', N'["botnghe.jpg","botnghe.jpg"]')
SET IDENTITY_INSERT [dbo].[Products] OFF
SET IDENTITY_INSERT [dbo].[RoleDetails] ON 

INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (0, N'admin', N'director')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (4, N'duclan', N'staff')
INSERT [dbo].[RoleDetails] ([id], [accountId], [roleId]) VALUES (6, N'minhnhat', N'user')

SET IDENTITY_INSERT [dbo].[RoleDetails] OFF
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'director', N'director')
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'staff', N'staff')
INSERT [dbo].[Roles] ([role], [description]) VALUES (N'user', N'user')
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([orderId])
REFERENCES [dbo].[Orders] ([id])
GO
ALTER TABLE [dbo].[OrderDetails]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([username])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD FOREIGN KEY([categoryId])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD FOREIGN KEY([productId])
REFERENCES [dbo].[Products] ([id])
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([brandId])
REFERENCES [dbo].[Brands] ([id])
GO
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD FOREIGN KEY([accountId])
REFERENCES [dbo].[Accounts] ([username])
GO
ALTER TABLE [dbo].[RoleDetails]  WITH CHECK ADD FOREIGN KEY([roleId])
REFERENCES [dbo].[Roles] ([role])
GO
/****** Object:  StoredProcedure [dbo].[sp_ReportCost]    Script Date: 6/18/2022 7:11:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[sp_ReportCost] (@month INT)
AS BEGIN
SELECT 
			convert(varchar(10), o.createDate, 103) AS NgayBan,		
			COUNT(DISTINCT o.id) AS TongHoaDon,
			SUM(od.quantity * od.price) AS DoanhThu
FROM Orders o, OrderDetails od  WHERE o.id = od.orderId AND MONTH(o.createDate) = @month
GROUP BY createDate
END
GO
