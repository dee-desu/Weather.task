USE [master]
GO
/****** Object:  Database [WeatherForcast]    Script Date: 9/11/2021 2:43:37 AM ******/
CREATE DATABASE [WeatherForcast] ON  PRIMARY 
( NAME = N'WeatherForcast', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\WeatherForcast.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WeatherForcast_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\WeatherForcast_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [WeatherForcast] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WeatherForcast].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WeatherForcast] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WeatherForcast] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WeatherForcast] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WeatherForcast] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WeatherForcast] SET ARITHABORT OFF 
GO
ALTER DATABASE [WeatherForcast] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WeatherForcast] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WeatherForcast] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WeatherForcast] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WeatherForcast] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WeatherForcast] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WeatherForcast] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WeatherForcast] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WeatherForcast] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WeatherForcast] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WeatherForcast] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WeatherForcast] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WeatherForcast] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WeatherForcast] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WeatherForcast] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WeatherForcast] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WeatherForcast] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WeatherForcast] SET RECOVERY FULL 
GO
ALTER DATABASE [WeatherForcast] SET  MULTI_USER 
GO
ALTER DATABASE [WeatherForcast] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WeatherForcast] SET DB_CHAINING OFF 
GO
USE [WeatherForcast]
GO
/****** Object:  Table [dbo].[Forcast]    Script Date: 9/11/2021 2:43:37 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forcast](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [datetime] NULL,
	[TemperatureC] [int] NULL,
	[TemperatureF] [int] NULL,
	[Governorate] [varchar](25) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Forcast] ON 

INSERT [dbo].[Forcast] ([ID], [Date], [TemperatureC], [TemperatureF], [Governorate]) VALUES (4, CAST(N'2021-09-11T00:00:00.000' AS DateTime), 24, 0, N'Irbid')
INSERT [dbo].[Forcast] ([ID], [Date], [TemperatureC], [TemperatureF], [Governorate]) VALUES (5, CAST(N'2021-09-11T00:00:00.000' AS DateTime), 30, 0, N'Al-mafrag')
INSERT [dbo].[Forcast] ([ID], [Date], [TemperatureC], [TemperatureF], [Governorate]) VALUES (6, CAST(N'2021-09-11T00:00:00.000' AS DateTime), 24, 0, N'Amman')
INSERT [dbo].[Forcast] ([ID], [Date], [TemperatureC], [TemperatureF], [Governorate]) VALUES (7, CAST(N'2021-09-11T00:00:00.000' AS DateTime), 26, 0, N'Az-Zarqa')
INSERT [dbo].[Forcast] ([ID], [Date], [TemperatureC], [TemperatureF], [Governorate]) VALUES (8, CAST(N'2021-09-11T00:00:00.000' AS DateTime), 30, 0, N'Jarash')
INSERT [dbo].[Forcast] ([ID], [Date], [TemperatureC], [TemperatureF], [Governorate]) VALUES (9, CAST(N'2021-09-11T00:00:00.000' AS DateTime), 26, 0, N'Madaba')
INSERT [dbo].[Forcast] ([ID], [Date], [TemperatureC], [TemperatureF], [Governorate]) VALUES (10, CAST(N'2021-09-11T00:00:00.000' AS DateTime), 25, 0, N'Al-Karak')
INSERT [dbo].[Forcast] ([ID], [Date], [TemperatureC], [TemperatureF], [Governorate]) VALUES (11, CAST(N'2021-09-11T00:00:00.000' AS DateTime), 26, 0, N'At-Tafilah')
INSERT [dbo].[Forcast] ([ID], [Date], [TemperatureC], [TemperatureF], [Governorate]) VALUES (12, CAST(N'2021-09-11T00:00:00.000' AS DateTime), 29, 0, N'Ma''an')
INSERT [dbo].[Forcast] ([ID], [Date], [TemperatureC], [TemperatureF], [Governorate]) VALUES (13, CAST(N'2021-09-11T00:00:00.000' AS DateTime), 35, 0, N'Al-Aqaba')
INSERT [dbo].[Forcast] ([ID], [Date], [TemperatureC], [TemperatureF], [Governorate]) VALUES (14, CAST(N'2021-09-11T00:00:00.000' AS DateTime), 26, 0, N'As-Salt')
INSERT [dbo].[Forcast] ([ID], [Date], [TemperatureC], [TemperatureF], [Governorate]) VALUES (15, CAST(N'2021-09-11T00:00:00.000' AS DateTime), 27, 0, N'Ajloun')
SET IDENTITY_INSERT [dbo].[Forcast] OFF
GO
USE [master]
GO
ALTER DATABASE [WeatherForcast] SET  READ_WRITE 
GO
