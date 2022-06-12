USE [master]
GO

/****** Object:  Database [HotelBookingSystem]    Script Date: 6/12/2022 8:18:37 PM ******/
DROP DATABASE [HotelBookingSystem]
GO

/****** Object:  Database [HotelBookingSystem]    Script Date: 6/12/2022 8:18:37 PM ******/
CREATE DATABASE [HotelBookingSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HotelBookingSystem', FILENAME = N'D:\Users\D.Muniyappan\HotelBookingSystem.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HotelBookingSystem_log', FILENAME = N'D:\Users\D.Muniyappan\HotelBookingSystem_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HotelBookingSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [HotelBookingSystem] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET ARITHABORT OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [HotelBookingSystem] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [HotelBookingSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [HotelBookingSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET  ENABLE_BROKER 
GO

ALTER DATABASE [HotelBookingSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [HotelBookingSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [HotelBookingSystem] SET  MULTI_USER 
GO

ALTER DATABASE [HotelBookingSystem] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [HotelBookingSystem] SET DB_CHAINING OFF 
GO

ALTER DATABASE [HotelBookingSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [HotelBookingSystem] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [HotelBookingSystem] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [HotelBookingSystem] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [HotelBookingSystem] SET QUERY_STORE = OFF
GO

ALTER DATABASE [HotelBookingSystem] SET  READ_WRITE 
GO


