CREATE DATABASE [Project_Test]
GO
USE [Project_Test]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Fullname] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Photo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authorities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[RoleId] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [char](4) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetails](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderId] [bigint] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NOT NULL,
	[Price] [float] NOT NULL,
	[CreateDate] [date] NOT NULL,
	[Available] [bit] NOT NULL,
	[CategoryId] [char](4) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'admin', N'admin', N'Võ Văn Thắng', N'admin@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'user1', N'123', N'Người dùng 1', N'nguoidung1@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'user2', N'123', N'Người dùng 2', N'nguoidung2@gmail.com', N'user.png')
INSERT [dbo].[Accounts] ([Username], [Password], [Fullname], [Email], [Photo]) VALUES (N'user3', N'123', N'Nhân Viên', N'nguoidung3@gmail.com', N'user.png')
GO
SET IDENTITY_INSERT [dbo].[Authorities] ON 

INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (1, N'user1', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (2, N'user2', N'CUST')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (3, N'user3', N'STAF')
INSERT [dbo].[Authorities] ([Id], [Username], [RoleId]) VALUES (4, N'admin', N'DIRE')
SET IDENTITY_INSERT [dbo].[Authorities] OFF
GO
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1000', N'Gấu TenDDy')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1001', N'Hoạt Hình')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1002', N'Thú Bông')
INSERT [dbo].[Categories] ([Id], [Name]) VALUES (N'1003', N'Gấu Bông & Phụ Kiện')
GO
SET IDENTITY_INSERT [dbo].[OrderDetails] ON 

INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (1, 1, 53, 225, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (2, 1, 54, 145, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (3, 1, 55, 145, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (4, 2, 13, 395, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (5, 2, 14, 425, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (6, 2, 15, 425, 1)
INSERT [dbo].[OrderDetails] ([Id], [OrderId], [ProductId], [Price], [Quantity]) VALUES (7, 2, 16, 395, 1)
SET IDENTITY_INSERT [dbo].[OrderDetails] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (1, N'user1', CAST(N'2021-08-11T00:00:00.000' AS DateTime), N'Thống nhất, gò vấp')
INSERT [dbo].[Orders] ([Id], [Username], [CreateDate], [Address]) VALUES (2, N'user2', CAST(N'2021-08-11T00:00:00.000' AS DateTime), N'Quang trung, gò vấp, Hồ Chí Minh')
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (3, N'Gấu Bông Váy Sao', N'1.jpg', 245, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (6, N'Gấu Bông Áo Tím Hoa', N'2.jpg', 450, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (7, N'Gấu Bông Áo Love Mây', N'3.jpg', 555, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (8, N'Gấu Bông Tenddy Lông Trơn Áo Love', N'4.jpg', 395, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (9, N'Gấu Bông Tenddy Đen Xù', N'5.jpg', 355, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (10, N'Gấu Bông Tenddy Áo Len Gấu Love', N'6.jpg', 395, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (11, N'Gấu Bông Tenddy Ôm Tim Sắc Màu', N'7.jpg', 395, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (12, N'Gấu Bông Tenddy Áo Len Gấu', N'8.jpg', 575, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (13, N'Gấu Bông Tenddy Logo Baby', N'9.jpg', 395, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (14, N'Gấu Bông Tenddy Anel Hồng', N'10.jpg', 425, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (15, N'Gấu Bông Tenddy Angel Tím', N'11.jpg', 425, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (16, N'Gấu Bông Tenddy Len Kiss Lông Trơn', N'12.jpg', 395, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (17, N'Gấu Bông Tenddy Bánh Kem', N'13.jpg', 485, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (18, N'Gấu Bông Tenddy Áo Kì Lân', N'14.jpg', 255, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (19, N'Gấu Bông Tenddy Áo Len Tim Love', N'15.jpg', 395, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (20, N'Gấu Bông Tenddy Ôm Tim Love Mầu', N'16.jpg', 595, CAST(N'2021-08-11' AS Date), 1, N'1000')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (21, N'Nàng Tiền Cá Bông', N'17.jpg', 85, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (22, N'Ngựa Bông Pony', N'18.jpg', 145, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (23, N'Người Nhện Bông', N'19.jpg', 95, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (24, N'We Bare Bears Bông Đứng', N'20.jpg', 75, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (25, N'Mèo Oggy Và Những Chú Gián', N'21.jpg', 80, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (26, N'Pikachu Bông Nằm Mềm', N'22.jpg', 165, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (27, N'Gấu Bông Bò Chăm Chỉ', N'23.jpg', 135, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (28, N'Ô tô McQueen Bông', N'24.jpg', 85, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (29, N'Chuột Mickey Bông', N'25.jpg', 125, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (30, N'Chuột MicKey Xk', N'26.jpg', 215, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (31, N'Nhóc Chuột Chip Dale', N'27.jpg', 195, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (32, N'Gián Oggy', N'28.jpg', 75, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (33, N'Vịt Donal', N'29.jpg', 195, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (34, N'Sói Thỏ Quân Nhân', N'30.jpg', 175, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (35, N'Vô Diện', N'31.jpg', 255, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (36, N'Angry Bird', N'32.jpg', 75, CAST(N'2021-08-11' AS Date), 1, N'1001')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (37, N'Vịt Bông Mũ Cam', N'33.jpg', 175, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (38, N'Ốc Sên Bông', N'34.jpg', 75, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (39, N'Voi Bông Tai Kẻ', N'35.jpg', 275, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (40, N'Hộp Quà Tặng Gấu Bông Lông Cứu', N'36.jpg', 100, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (41, N'Gấu Bông Lông Cừu Ôm Quả', N'37.jpg', 135, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (42, N'Máy Bay Bông Long Cừu', N'38.jpg', 225, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (43, N'Gấu Bông Lông Cừu', N'39.jpg', 135, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (44, N'Gấu Bông Cá Mập Mặt Mèo', N'40.jpg', 135, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (45, N'Gấu Bông Bạch Tuộc Baby', N'41.jpg', 265, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (46, N'Unicorn Bông Ngồi Thêu Hoa', N'42.jpg', 205, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (47, N'Voi Bông Thiên Thần Vòi Trái Tim', N'43.jpg', 185, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (48, N'Gấu Bông Stitch Mềm', N'44.jpg', 445, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (49, N'Hồ Bông Tai Thỏ', N'45.jpg', 175, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (50, N'Gà Bông Mũ Nơ', N'46.jpg', 115, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (51, N'Khỉ Bông Mũ Chuối', N'47.jpg', 175, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (52, N'Cá Voi Xanh Bông', N'48.jpg', 175, CAST(N'2021-08-11' AS Date), 1, N'1002')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (53, N'Gối Tròn Mông Corgi', N'49.jpg', 225, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (54, N'Gối Cổ Pet', N'50.jpg', 145, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (55, N'Gối Cổ Pet - Mèo Hoàng Thượng', N'51.jpg', 145, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (56, N'Gối Cổ Pet - Chó Corgi', N'52.jpg', 145, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (57, N'Túi Đeo Bơ Trứng', N'53.jpg', 100, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (58, N'Hoa Bông Cute', N'54.jpg', 20, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (59, N'Gối Cổ Hình Nõn Tôm', N'55.jpg', 135, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (60, N'Gối Cổ Bánh Mì', N'56.jpg', 165, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (61, N'Gối Cổ Cao Su Non Hình Thú', N'57.jpg', 145, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (62, N'Túi Đeo Tôm Hùm', N'58.jpg', 100, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (63, N'Gối Cổ Mặt Thú Màu', N'59.jpg', 165, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (64, N'Gối Cổ Trâu', N'60.jpg', 145, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (65, N'Gối Cổ Cao Su Đây', N'61.jpg', 135, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (66, N'Gối Bông Tựa Đầu Oto', N'62.jpg', 145, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (67, N'Gối Cổ Cao su Thú', N'63.jpg', 125, CAST(N'2021-08-11' AS Date), 1, N'1003')
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [CreateDate], [Available], [CategoryId]) VALUES (68, N'Gối Cổ Bơ Bông', N'64.jpg', 135, CAST(N'2021-08-11' AS Date), 1, N'1003')
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'CUST', N'Customers')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'DIRE', N'Directors')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (N'STAF', N'Staffs')
GO

