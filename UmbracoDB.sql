USE [master]
GO
If Exists (Select name From sys.databases Where name = 'UmbracoDB')
Begin
	Alter Database [UmbracoDB] Set Single_User With Rollback Immediate
	Drop Database [UmbracoDB]
End

/****** Object:  Database [UmbracoDB]    Script Date: 2024-10-22 18:18:54 ******/
CREATE DATABASE [UmbracoDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'UmbracoDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\UmbracoDB.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'UmbracoDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\UmbracoDB_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [UmbracoDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [UmbracoDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [UmbracoDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [UmbracoDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [UmbracoDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [UmbracoDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [UmbracoDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [UmbracoDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [UmbracoDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [UmbracoDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [UmbracoDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [UmbracoDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [UmbracoDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [UmbracoDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [UmbracoDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [UmbracoDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [UmbracoDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [UmbracoDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [UmbracoDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [UmbracoDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [UmbracoDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [UmbracoDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [UmbracoDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [UmbracoDB] SET RECOVERY FULL 
GO

ALTER DATABASE [UmbracoDB] SET  MULTI_USER 
GO

ALTER DATABASE [UmbracoDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [UmbracoDB] SET DB_CHAINING OFF 
GO

ALTER DATABASE [UmbracoDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [UmbracoDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [UmbracoDB] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [UmbracoDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [UmbracoDB] SET QUERY_STORE = ON
GO

ALTER DATABASE [UmbracoDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO

ALTER DATABASE [UmbracoDB] SET  READ_WRITE 
GO

