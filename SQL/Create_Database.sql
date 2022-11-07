USE [master]
GO
/****** Object:  Database [Dynatron]    Script Date: 11/6/2022 10:42:26 PM ******/
CREATE DATABASE [Dynatron]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Dynatron', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Dynatron.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Dynatron_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Dynatron_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Dynatron] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dynatron].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dynatron] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dynatron] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dynatron] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dynatron] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dynatron] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dynatron] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dynatron] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dynatron] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dynatron] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dynatron] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dynatron] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dynatron] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dynatron] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dynatron] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dynatron] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dynatron] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dynatron] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dynatron] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dynatron] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dynatron] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dynatron] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dynatron] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dynatron] SET RECOVERY FULL 
GO
ALTER DATABASE [Dynatron] SET  MULTI_USER 
GO
ALTER DATABASE [Dynatron] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dynatron] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dynatron] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dynatron] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Dynatron] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Dynatron] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Dynatron', N'ON'
GO
ALTER DATABASE [Dynatron] SET QUERY_STORE = OFF
GO
USE [Dynatron]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 11/6/2022 10:42:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](max) NOT NULL,
	[EmailAddress] [varchar](max) NOT NULL,
	[CreatedDate] [datetime2](7) NOT NULL,
	[LastUpdatedDate] [datetime2](7) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (1, N'Fred', N'Smith', N'fred@aol.com', CAST(N'2022-11-04T18:30:56.1933333' AS DateTime2), CAST(N'2022-11-04T18:30:56.1933333' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (2, N'Ted', N'Smith', N'234@234.com', CAST(N'2022-11-06T19:38:35.9729745' AS DateTime2), CAST(N'2022-11-06T19:38:35.9729756' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (3, N'Fred', N'Johnson', N'Fred@aol.com', CAST(N'2022-11-07T01:06:47.6125507' AS DateTime2), CAST(N'2022-11-07T01:06:47.6125512' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (4, N'Ed', N'Jablonski', N'Ed@compuserve.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:31.5230405' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (5, N'Ed', N'Jablonski', N'Ed@compuserve.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:31.5230405' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (9, N'Jim', N'Brown', N'jim@jim.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (10, N'Jim', N'black', N'jimblack@jim.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (11, N'John', N'Smith', N'johnsmith@john.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (12, N'Iggy', N'Stardust', N'iggy@stardust.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (13, N'Yngwie', N'Malmsteen', N'yngwie@malmsteen.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (14, N'Eddie', N'VanHalen', N'Eddie@VanHalen.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (15, N'Dave', N'Mustaine', N'dave@mustaine.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (16, N'Johnny', N'Winter', N'johnny@winter.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (17, N'Stevie Ray', N'Vaughan', N'stevieray@vaughan.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (18, N'Billy', N'Strings', N'billy@string.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (19, N'Joe', N'Bonnamossa', N'joe@bonnamossa.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (20, N'Tony', N'Rice', N'tony@rice.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (21, N'Steve', N'Vai', N'steve@vai.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (22, N'Eric', N'Johnson', N'eric@johnson.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (23, N'Joe', N'Satriani', N'joe@satriani.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (24, N'Paul', N'Gilbert', N'paul@gilbert.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (25, N'Buddy', N'Guy', N'buddy@guy.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (26, N'Ted', N'Nugent', N'ted@nugent.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (27, N'Richie', N'Blackmoor', N'richie@blackmoor.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (28, N'Tim', N'Hensen', N'tim@hensen.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (29, N'Muddy', N'Waters', N'muddy@waters.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (30, N'John Lee', N'Hooker', N'johnlee@hooker.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (31, N'Lita', N'Ford', N'lita@ford.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (32, N'Mollie', N'Tuttle', N'molly@tuttle.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (33, N'Angus', N'Young', N'angus@young.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (34, N'Randy', N'Rhoads', N'randy@rhoads.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (35, N'Zak', N'Wylde', N'zak@wylde.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (36, N'Brian', N'Sutton', N'brian@suttom.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (37, N'Stanley', N'Jordan', N'stanley@jordan.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (38, N'Tommy', N'Emmanuel', N'tommy@emmanuel.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (39, N'Jimi', N'Hendrix', N'jimi@hendrix.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (40, N'Eric', N'Clapton', N'eric@clapton.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (41, N'Carlos', N'Santana', N'carlos@santana.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (42, N'Mark', N'Knopfler', N'mark@knopfler.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (43, N'Jimmy', N'Page', N'jimmy@page.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (44, N'Jeff', N'Beck', N'jeff@beck.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (45, N'Brian', N'May', N'brian@may.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (46, N'David', N'Gilmour', N'david@gilmour.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (47, N'Pete', N'Townshend', N'pete@townshend.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (48, N'Kieth', N'Richards', N'kieth@richards.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (49, N'Billy', N'Gibbons', N'billy@gibbons.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (50, N'Slash', N'X', N'slash@x.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (51, N'Tom', N'Morello', N'tom@morello.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (52, N'Ry', N'Cooder', N'ry@cooder.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (53, N'Tony', N'Iommi', N'tony@iommi.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (54, N'Duane', N'Allman', N'duane@allman.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (55, N'Alex', N'Lifeson', N'alex@lifeson.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (56, N'The', N'Edge', N'the@edge.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (57, N'Steve', N'Howe', N'steve@howe.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (58, N'Dickie', N'Betts', N'dickie@betts.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (59, N'Dick', N'Dale', N'dick@dale.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (60, N'Frank', N'Zappa', N'frank@zappa.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (61, N'Robert', N'Johnson', N'robert@johnson.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (62, N'Les', N'Paul', N'les@paul.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (63, N'Gary', N'Moore', N'gary@moore.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (64, N'Dimebag', N'Darrell', N'dimebag@darrell.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (65, N'Dave', N'Davies', N'dave@davies.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (66, N'Rick', N'Derringer', N'rick@derringer.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (67, N'James', N'Hetfield', N'james@hetfield.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (68, N'Kirk', N'Hammet', N'kirk@hammet.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (69, N'Andy', N'Summers', N'andy@summers.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (70, N'Joe', N'Perry', N'joe@perry.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (71, N'Eddie', N'Hazel', N'eddie@hazel.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (72, N'Norman', N'Blake', N'norman@blake.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (73, N'Kurt', N'Cobain', N'jurt@cobain.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (74, N'John', N'Frusciante', N'john@frusciante.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (75, N'Jack', N'White', N'jack@white.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (76, N'T-Bone', N'Walker', N'tbone@walker.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (77, N'B.B.', N'King', N'bb@king.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (78, N'Leslie', N'West', N'leslie@west.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (79, N'Duane', N'Eddy', N'duane@eddy.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (80, N'Albert', N'Collins', N'albert@collins.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (81, N'Albert', N'King', N'albert@king.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (82, N'Joe', N'Walsh', N'joe@walsh.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (83, N'Otis', N'Rush', N'otis@rush.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (84, N'Link', N'Wray', N'link@wray.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (85, N'Jerry', N'Garcia', N'jerry@garcia.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (86, N'Hubert', N'Sumlin', N'hubert@sumlin.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (87, N'Curtis', N'Mayfield', N'curtis@mayfield.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (88, N'Elmore', N'James', N'elmore@james.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (89, N'Johnny', N'Ramone', N'johnny@ramone.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (90, N'Brian', N'Setzer', N'brian@setzer.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (91, N'Roy', N'Buchannon', N'roy@buchannon.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (92, N'J.J.', N'Cale', N'jj@cale.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (93, N'Robin', N'Trower', N'robin@trower.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (94, N'Peter', N'Frampton', N'peter@frampton.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (95, N'Jeff', N'Healey', N'jeff@healey.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (96, N'Ace', N'Frehley', N'ace@frehley.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (97, N'Vivian', N'Campbell', N'vivian@campbell.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (98, N'Robert', N'Cray', N'robert@cray.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (99, N'Rick', N'Nielson', N'rick@nielson.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
INSERT [dbo].[Customers] ([Id], [FirstName], [LastName], [EmailAddress], [CreatedDate], [LastUpdatedDate]) VALUES (100, N'Glenn', N'Tipton', N'glen@tipton.com', CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2), CAST(N'2022-11-07T01:51:01.5956897' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
USE [master]
GO
ALTER DATABASE [Dynatron] SET  READ_WRITE 
GO
