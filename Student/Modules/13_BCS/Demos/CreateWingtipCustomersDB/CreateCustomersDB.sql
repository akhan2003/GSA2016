USE [master]
GO

/****** Object:  Database [WingtipCustomersDB]    Script Date: 01/12/2012 14:24:27 ******/
IF  EXISTS (SELECT name FROM sys.databases WHERE name = N'WingtipCustomersDB')
DROP DATABASE [WingtipCustomersDB]
GO

USE [master]
GO

/****** Object:  Database [WingtipCustomersDB]    Script Date: 01/12/2012 14:24:27 ******/
CREATE DATABASE [WingtipCustomersDB] ON  PRIMARY 
( NAME = N'WingtipCustomersDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\WingtipCustomersDB.mdf' , SIZE = 15360KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WingtipCustomersDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\WingtipCustomersDB_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO

ALTER DATABASE [WingtipCustomersDB] SET COMPATIBILITY_LEVEL = 100
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WingtipCustomersDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [WingtipCustomersDB] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET ARITHABORT OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET AUTO_CREATE_STATISTICS ON 
GO

ALTER DATABASE [WingtipCustomersDB] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [WingtipCustomersDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [WingtipCustomersDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET  DISABLE_BROKER 
GO

ALTER DATABASE [WingtipCustomersDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [WingtipCustomersDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [WingtipCustomersDB] SET  READ_WRITE 
GO

ALTER DATABASE [WingtipCustomersDB] SET RECOVERY FULL 
GO

ALTER DATABASE [WingtipCustomersDB] SET  MULTI_USER 
GO

ALTER DATABASE [WingtipCustomersDB] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [WingtipCustomersDB] SET DB_CHAINING OFF 
GO
