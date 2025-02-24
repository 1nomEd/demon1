USE [master]
GO
/****** Object:  Database [ArticleDB]    Script Date: 10/28/2024 11:26:25 AM ******/
CREATE DATABASE [ArticleDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ArticleDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ArticleDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ArticleDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\ArticleDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [ArticleDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ArticleDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ArticleDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ArticleDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ArticleDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ArticleDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ArticleDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ArticleDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ArticleDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ArticleDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ArticleDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ArticleDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ArticleDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ArticleDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ArticleDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ArticleDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ArticleDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ArticleDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ArticleDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ArticleDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ArticleDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ArticleDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ArticleDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ArticleDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ArticleDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ArticleDB] SET  MULTI_USER 
GO
ALTER DATABASE [ArticleDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ArticleDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ArticleDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ArticleDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ArticleDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ArticleDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ArticleDB', N'ON'
GO
ALTER DATABASE [ArticleDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [ArticleDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [ArticleDB]
GO
/****** Object:  Table [dbo].[articles]    Script Date: 10/28/2024 11:26:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[articles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [nvarchar](255) NULL,
	[noi_dung] [text] NULL,
	[tac_gia] [nvarchar](255) NULL,
	[ngay_dang] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 10/28/2024 11:26:25 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](255) NOT NULL,
	[price] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ArticleDB] SET  READ_WRITE 
GO
