USE [master]
GO
/****** Object:  Database [AugustCohort]    Script Date: 10/13/2015 4:03:23 PM ******/
CREATE DATABASE [AugustCohort]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AugustC#Cohort', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\AugustC#Cohort.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AugustC#Cohort_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2014\MSSQL\DATA\AugustC#Cohort_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AugustCohort] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AugustCohort].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AugustCohort] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AugustCohort] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AugustCohort] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AugustCohort] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AugustCohort] SET ARITHABORT OFF 
GO
ALTER DATABASE [AugustCohort] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AugustCohort] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AugustCohort] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AugustCohort] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AugustCohort] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AugustCohort] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AugustCohort] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AugustCohort] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AugustCohort] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AugustCohort] SET  DISABLE_BROKER 
GO
ALTER DATABASE [AugustCohort] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AugustCohort] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AugustCohort] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AugustCohort] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AugustCohort] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AugustCohort] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AugustCohort] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AugustCohort] SET RECOVERY FULL 
GO
ALTER DATABASE [AugustCohort] SET  MULTI_USER 
GO
ALTER DATABASE [AugustCohort] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AugustCohort] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AugustCohort] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AugustCohort] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AugustCohort] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'AugustCohort', N'ON'
GO
USE [AugustCohort]
GO
/****** Object:  Table [dbo].[AugustCohort]    Script Date: 10/13/2015 4:03:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AugustCohort](
	[Name] [nchar](10) NOT NULL,
	[Gender] [bit] NOT NULL,
	[Status] [nchar](10) NOT NULL,
	[Programming Level] [int] NOT NULL,
	[Lodging] [nchar](10) NOT NULL,
	[GameNight] [bit] NOT NULL,
	[Ohio Resident] [bit] NOT NULL,
 CONSTRAINT [PK_AugustCohort_1] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Alan      ', 0, N'Beginner  ', 500, N'AirBnB    ', 0, 0)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Amanda    ', 1, N'Beginner  ', 500, N'Home      ', 1, 1)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Andy      ', 0, N'Beginner  ', 500, N'Home      ', 1, 1)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Daniel    ', 0, N'Beginner  ', 500, N'Home      ', 1, 1)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Dave      ', 0, N'Pro       ', 9001, N'Home      ', 0, 1)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Dimitre   ', 0, N'Beginner  ', 500, N'401 Loft  ', 0, 0)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Eric      ', 0, N'Pro       ', 9000, N'Home      ', 1, 1)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Heather   ', 1, N'Beginner  ', 500, N'Home      ', 1, 1)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Jim       ', 0, N'Beginner  ', 500, N'Home      ', 0, 1)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Kevin     ', 0, N'Beginner  ', 500, N'Motel     ', 0, 1)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Matteo    ', 0, N'Beginner  ', 500, N'401 Loft  ', 1, 0)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Matthew   ', 0, N'Beginner  ', 500, N'Home      ', 0, 1)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Paul      ', 0, N'Beginner  ', 500, N'401 Loft  ', 0, 0)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Rachel    ', 1, N'Beginner  ', 500, N'401 Loft  ', 1, 0)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Randall   ', 0, N'Pro       ', 9000, N'Home      ', 1, 1)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Ringo     ', 0, N'Beginner  ', 500, N'401 Loft  ', 1, 0)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Sarah     ', 1, N'Pro       ', 9000, N'Home      ', 0, 1)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Thad      ', 0, N'Beginner  ', 500, N'Home      ', 1, 1)
INSERT [dbo].[AugustCohort] ([Name], [Gender], [Status], [Programming Level], [Lodging], [GameNight], [Ohio Resident]) VALUES (N'Victor    ', 0, N'Pro       ', 9000, N'Home      ', 0, 1)
USE [master]
GO
ALTER DATABASE [AugustCohort] SET  READ_WRITE 
GO
