USE [master]
GO
/****** Object:  Database [CodebaseDB]    Script Date: 2.08.2022 16:30:52 ******/
CREATE DATABASE [CodebaseDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CodebaseDB', FILENAME = N'C:\Users\Berkay\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\CodebaseDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'CodebaseDB_log', FILENAME = N'C:\Users\Berkay\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB\CodebaseDB.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [CodebaseDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CodebaseDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CodebaseDB] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [CodebaseDB] SET ANSI_NULLS ON 
GO
ALTER DATABASE [CodebaseDB] SET ANSI_PADDING ON 
GO
ALTER DATABASE [CodebaseDB] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [CodebaseDB] SET ARITHABORT ON 
GO
ALTER DATABASE [CodebaseDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CodebaseDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CodebaseDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CodebaseDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CodebaseDB] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [CodebaseDB] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [CodebaseDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CodebaseDB] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [CodebaseDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CodebaseDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CodebaseDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CodebaseDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CodebaseDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CodebaseDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CodebaseDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CodebaseDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CodebaseDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CodebaseDB] SET RECOVERY FULL 
GO
ALTER DATABASE [CodebaseDB] SET  MULTI_USER 
GO
ALTER DATABASE [CodebaseDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CodebaseDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CodebaseDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CodebaseDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [CodebaseDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [CodebaseDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [CodebaseDB] SET QUERY_STORE = OFF
GO
USE [CodebaseDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2.08.2022 16:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 2.08.2022 16:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[ProductSellTime] [datetime2](7) NOT NULL,
	[QuantityNumber] [int] NOT NULL,
	[ProductName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2.08.2022 16:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [int] NOT NULL,
	[QuantityNumber] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220801061917_Initial', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220801063555_Initial', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220801064201_Initial', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220801070505_Initial', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220801085945_Initial', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220801091344_Initial', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220802130014_Initial', N'5.0.17')
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [Name], [ProductSellTime], [QuantityNumber], [ProductName]) VALUES (1, N'Eti', CAST(N'2022-08-02T16:03:29.4230773' AS DateTime2), 500, N'Eti Çubuk Kraker')
INSERT [dbo].[Customers] ([Id], [Name], [ProductSellTime], [QuantityNumber], [ProductName]) VALUES (2, N'Nestle', CAST(N'2022-08-02T16:14:46.2332386' AS DateTime2), 7200, N'Nestle Çikolata')
INSERT [dbo].[Customers] ([Id], [Name], [ProductSellTime], [QuantityNumber], [ProductName]) VALUES (3, N'Coca Cola', CAST(N'2022-08-02T16:15:01.0371313' AS DateTime2), 7400, N'Kola')
INSERT [dbo].[Customers] ([Id], [Name], [ProductSellTime], [QuantityNumber], [ProductName]) VALUES (4, N'Coca Cola', CAST(N'2022-08-02T16:15:14.0753371' AS DateTime2), 1500, N'Kola')
INSERT [dbo].[Customers] ([Id], [Name], [ProductSellTime], [QuantityNumber], [ProductName]) VALUES (5, N'Eti', CAST(N'2022-08-02T16:15:27.8754103' AS DateTime2), 1600, N'Toblerone')
INSERT [dbo].[Customers] ([Id], [Name], [ProductSellTime], [QuantityNumber], [ProductName]) VALUES (6, N'Ülker', CAST(N'2022-08-02T16:15:42.9802849' AS DateTime2), 1350, N'Ülker Gofret')
INSERT [dbo].[Customers] ([Id], [Name], [ProductSellTime], [QuantityNumber], [ProductName]) VALUES (7, N'Eti', CAST(N'2022-08-02T16:15:50.7839669' AS DateTime2), 650, N'Eti Çubuk Kraker')
INSERT [dbo].[Customers] ([Id], [Name], [ProductSellTime], [QuantityNumber], [ProductName]) VALUES (8, N'Eti', CAST(N'2022-08-02T16:16:06.0015977' AS DateTime2), 1230, N'Eti Browni')
INSERT [dbo].[Customers] ([Id], [Name], [ProductSellTime], [QuantityNumber], [ProductName]) VALUES (9, N'Nestle', CAST(N'2022-08-02T16:16:36.0099338' AS DateTime2), 450, N'Nestle Çikolata')
INSERT [dbo].[Customers] ([Id], [Name], [ProductSellTime], [QuantityNumber], [ProductName]) VALUES (10, N'Ülker', CAST(N'2022-08-02T16:16:45.1088847' AS DateTime2), 12000, N'Ülker Çizi')
INSERT [dbo].[Customers] ([Id], [Name], [ProductSellTime], [QuantityNumber], [ProductName]) VALUES (11, N'Toblerone', CAST(N'2022-08-02T16:17:24.5506593' AS DateTime2), 520, N'Toblerone')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Price], [QuantityNumber]) VALUES (1, N'Eti Karam', 500, 1450)
INSERT [dbo].[Products] ([Id], [Name], [Price], [QuantityNumber]) VALUES (2, N'Eti Çubuk Kraker', 530, 1150)
INSERT [dbo].[Products] ([Id], [Name], [Price], [QuantityNumber]) VALUES (4, N'Ülker Gofret', 75, 7350)
INSERT [dbo].[Products] ([Id], [Name], [Price], [QuantityNumber]) VALUES (5, N'Eti Browni', 400, 5520)
INSERT [dbo].[Products] ([Id], [Name], [Price], [QuantityNumber]) VALUES (6, N'Ülker Çizi', 80, 1000)
INSERT [dbo].[Products] ([Id], [Name], [Price], [QuantityNumber]) VALUES (7, N'Nestle Çikolata', 1000, 1350)
INSERT [dbo].[Products] ([Id], [Name], [Price], [QuantityNumber]) VALUES (8, N'Toblerone', 14600, 5480)
INSERT [dbo].[Products] ([Id], [Name], [Price], [QuantityNumber]) VALUES (9, N'Kola', 1200, 4500)
INSERT [dbo].[Products] ([Id], [Name], [Price], [QuantityNumber]) VALUES (10, N'Fanta', 980, 3460)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
/****** Object:  StoredProcedure [dbo].[ListAllCustomers]    Script Date: 2.08.2022 16:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListAllCustomers]
AS
SELECT * FROM Customers
GO
/****** Object:  StoredProcedure [dbo].[ListAllProducts]    Script Date: 2.08.2022 16:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListAllProducts]
AS
SELECT * FROM Products
GO
/****** Object:  StoredProcedure [dbo].[ListCustomersByName]    Script Date: 2.08.2022 16:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListCustomersByName]
AS
SELECT * FROM Customers
WHERE Name = 'Eti'
GO
/****** Object:  StoredProcedure [dbo].[ListCustomersGroupByName]    Script Date: 2.08.2022 16:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListCustomersGroupByName]
AS
SELECT Name FROM Customers
GROUP BY Name
GO
/****** Object:  StoredProcedure [dbo].[ListCustomersOrderByName]    Script Date: 2.08.2022 16:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListCustomersOrderByName]
AS
SELECT * FROM Customers
ORDER BY Name ASC
GO
/****** Object:  StoredProcedure [dbo].[ListCustomersOrderBySellTime]    Script Date: 2.08.2022 16:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListCustomersOrderBySellTime]
AS
SELECT * FROM Customers
ORDER BY ProductSellTime ASC
GO
/****** Object:  StoredProcedure [dbo].[ListProductsGroupByName]    Script Date: 2.08.2022 16:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListProductsGroupByName]
AS
SELECT Name FROM Products
GROUP BY Name
GO
/****** Object:  StoredProcedure [dbo].[ListProductsOrderByName]    Script Date: 2.08.2022 16:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListProductsOrderByName]
AS
SELECT * FROM Products
ORDER BY Name ASC
GO
/****** Object:  StoredProcedure [dbo].[ListProductsOrderByPrice]    Script Date: 2.08.2022 16:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListProductsOrderByPrice]
AS
SELECT * FROM Products
ORDER BY Price DESC
GO
/****** Object:  StoredProcedure [dbo].[ListProductsOrderByQuantity]    Script Date: 2.08.2022 16:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListProductsOrderByQuantity]
AS
SELECT * FROM Products
ORDER BY QuantityNumber DESC
GO
/****** Object:  StoredProcedure [dbo].[Report]    Script Date: 2.08.2022 16:30:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Report]
AS
DECLARE @StopDtm datetime='2022-08-10 23:59:59'
SELECT * FROM Customers
WHERE (ProductSellTime >= '2022-08-01 00:00:00' and ProductSellTime<=@StopDtm)
GO
USE [master]
GO
ALTER DATABASE [CodebaseDB] SET  READ_WRITE 
GO
