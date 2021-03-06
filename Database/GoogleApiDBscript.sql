/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2014 (12.0.2269)
    Source Database Engine Edition : Microsoft SQL Server Express Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [GoogleApiDB]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE DATABASE [GoogleApiDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GoogleApiDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\GoogleApiDB.mdf' , SIZE = 5312KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'GoogleApiDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\GoogleApiDB_log.ldf' , SIZE = 1856KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [GoogleApiDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GoogleApiDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GoogleApiDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GoogleApiDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GoogleApiDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GoogleApiDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GoogleApiDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [GoogleApiDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [GoogleApiDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GoogleApiDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GoogleApiDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GoogleApiDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GoogleApiDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GoogleApiDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GoogleApiDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GoogleApiDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GoogleApiDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [GoogleApiDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GoogleApiDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GoogleApiDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GoogleApiDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GoogleApiDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GoogleApiDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [GoogleApiDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GoogleApiDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GoogleApiDB] SET  MULTI_USER 
GO
ALTER DATABASE [GoogleApiDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GoogleApiDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GoogleApiDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GoogleApiDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [GoogleApiDB] SET DELAYED_DURABILITY = DISABLED 
GO
USE [GoogleApiDB]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Aggregateratings]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Aggregateratings](
	[ratingvalue] [nvarchar](max) NULL,
	[ratingcount] [nvarchar](max) NULL,
	[Pagemap_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Aggregateratings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contexts]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contexts](
	[title] [nvarchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Contexts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CseImages]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CseImages](
	[src] [nvarchar](max) NULL,
	[Pagemap_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.CseImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CseThumbnails]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CseThumbnails](
	[width] [nvarchar](max) NULL,
	[height] [nvarchar](max) NULL,
	[src] [nvarchar](max) NULL,
	[Pagemap_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.CseThumbnails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hcards]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hcards](
	[fn] [nvarchar](max) NULL,
	[title] [nvarchar](max) NULL,
	[Pagemap_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Hcards] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Itemlists]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Itemlists](
	[itemlistelement] [nvarchar](max) NULL,
	[Pagemap_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Itemlists] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Items]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[kind] [nvarchar](max) NULL,
	[title] [nvarchar](max) NULL,
	[htmlTitle] [nvarchar](max) NULL,
	[link] [nvarchar](max) NULL,
	[displayLink] [nvarchar](max) NULL,
	[snippet] [nvarchar](max) NULL,
	[htmlSnippet] [nvarchar](max) NULL,
	[cacheId] [nvarchar](max) NULL,
	[formattedUrl] [nvarchar](max) NULL,
	[htmlFormattedUrl] [nvarchar](max) NULL,
	[pagemap_Id] [int] NULL,
	[RootObject_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Items] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Metatags]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Metatags](
	[Title] [nvarchar](max) NULL,
	[OgTitle] [nvarchar](max) NULL,
	[OgDescription] [nvarchar](max) NULL,
	[OgImage] [nvarchar](max) NULL,
	[Viewport] [nvarchar](max) NULL,
	[FormatDetection] [nvarchar](max) NULL,
	[Referrer] [nvarchar](max) NULL,
	[OgType] [nvarchar](max) NULL,
	[OgUrl] [nvarchar](max) NULL,
	[FbPages] [nvarchar](max) NULL,
	[TwitterCard] [nvarchar](max) NULL,
	[TwitterUrl] [nvarchar](max) NULL,
	[TwitterTitle] [nvarchar](max) NULL,
	[TwitterDescription] [nvarchar](max) NULL,
	[TwitterImage] [nvarchar](max) NULL,
	[Pagemap_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Metatags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mobileapplications]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mobileapplications](
	[url] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[screenshot] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[datepublished] [nvarchar](max) NULL,
	[numdownloads] [nvarchar](max) NULL,
	[softwareversion] [nvarchar](max) NULL,
	[operatingsystems] [nvarchar](max) NULL,
	[contentrating] [nvarchar](max) NULL,
	[Pagemap_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Mobileapplications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NextPages]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NextPages](
	[title] [nvarchar](max) NULL,
	[totalResults] [nvarchar](max) NULL,
	[searchTerms] [nvarchar](max) NULL,
	[count] [int] NOT NULL,
	[startIndex] [int] NOT NULL,
	[inputEncoding] [nvarchar](max) NULL,
	[outputEncoding] [nvarchar](max) NULL,
	[safe] [nvarchar](max) NULL,
	[cx] [nvarchar](max) NULL,
	[Queries_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.NextPages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Offers]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offers](
	[url] [nvarchar](max) NULL,
	[price] [nvarchar](max) NULL,
	[Pagemap_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Offers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizations]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizations](
	[url] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[genre] [nvarchar](max) NULL,
	[Pagemap_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Organizations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pagemaps]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagemaps](
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Pagemaps] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[People]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[People](
	[org] [nvarchar](max) NULL,
	[role] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL,
	[jobtitle] [nvarchar](max) NULL,
	[worksfor] [nvarchar](max) NULL,
	[Pagemap_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.People] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Queries]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Queries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Queries] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Requests]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Requests](
	[title] [nvarchar](max) NULL,
	[totalResults] [nvarchar](max) NULL,
	[searchTerms] [nvarchar](max) NULL,
	[count] [int] NOT NULL,
	[startIndex] [int] NOT NULL,
	[inputEncoding] [nvarchar](max) NULL,
	[outputEncoding] [nvarchar](max) NULL,
	[safe] [nvarchar](max) NULL,
	[cx] [nvarchar](max) NULL,
	[Queries_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Requests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RootObjects]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RootObjects](
	[kind] [nvarchar](max) NULL,
	[context_Id] [int] NULL,
	[queries_Id] [int] NULL,
	[searchInformation_Id] [int] NULL,
	[url_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.RootObjects] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SearchInformations]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SearchInformations](
	[searchTime] [float] NOT NULL,
	[formattedSearchTime] [nvarchar](max) NULL,
	[totalResults] [nvarchar](max) NULL,
	[formattedTotalResults] [nvarchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.SearchInformations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urls]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urls](
	[type] [nvarchar](max) NULL,
	[template] [nvarchar](max) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Urls] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Webpages]    Script Date: 2.2.2018. 9:21:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Webpages](
	[name] [nvarchar](max) NULL,
	[image] [nvarchar](max) NULL,
	[Pagemap_Id] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_dbo.Webpages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_Pagemap_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_Pagemap_Id] ON [dbo].[Aggregateratings]
(
	[Pagemap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pagemap_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_Pagemap_Id] ON [dbo].[CseImages]
(
	[Pagemap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pagemap_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_Pagemap_Id] ON [dbo].[CseThumbnails]
(
	[Pagemap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pagemap_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_Pagemap_Id] ON [dbo].[Hcards]
(
	[Pagemap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pagemap_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_Pagemap_Id] ON [dbo].[Itemlists]
(
	[Pagemap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_pagemap_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_pagemap_Id] ON [dbo].[Items]
(
	[pagemap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_RootObject_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_RootObject_Id] ON [dbo].[Items]
(
	[RootObject_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pagemap_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_Pagemap_Id] ON [dbo].[Metatags]
(
	[Pagemap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pagemap_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_Pagemap_Id] ON [dbo].[Mobileapplications]
(
	[Pagemap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Queries_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_Queries_Id] ON [dbo].[NextPages]
(
	[Queries_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pagemap_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_Pagemap_Id] ON [dbo].[Offers]
(
	[Pagemap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pagemap_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_Pagemap_Id] ON [dbo].[Organizations]
(
	[Pagemap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pagemap_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_Pagemap_Id] ON [dbo].[People]
(
	[Pagemap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Queries_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_Queries_Id] ON [dbo].[Requests]
(
	[Queries_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_context_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_context_Id] ON [dbo].[RootObjects]
(
	[context_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_queries_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_queries_Id] ON [dbo].[RootObjects]
(
	[queries_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_searchInformation_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_searchInformation_Id] ON [dbo].[RootObjects]
(
	[searchInformation_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_url_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_url_Id] ON [dbo].[RootObjects]
(
	[url_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Pagemap_Id]    Script Date: 2.2.2018. 9:21:54 ******/
CREATE NONCLUSTERED INDEX [IX_Pagemap_Id] ON [dbo].[Webpages]
(
	[Pagemap_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Aggregateratings]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Aggregateratings_dbo.Pagemaps_Pagemap_Id] FOREIGN KEY([Pagemap_Id])
REFERENCES [dbo].[Pagemaps] ([Id])
GO
ALTER TABLE [dbo].[Aggregateratings] CHECK CONSTRAINT [FK_dbo.Aggregateratings_dbo.Pagemaps_Pagemap_Id]
GO
ALTER TABLE [dbo].[CseImages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CseImages_dbo.Pagemaps_Pagemap_Id] FOREIGN KEY([Pagemap_Id])
REFERENCES [dbo].[Pagemaps] ([Id])
GO
ALTER TABLE [dbo].[CseImages] CHECK CONSTRAINT [FK_dbo.CseImages_dbo.Pagemaps_Pagemap_Id]
GO
ALTER TABLE [dbo].[CseThumbnails]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CseThumbnails_dbo.Pagemaps_Pagemap_Id] FOREIGN KEY([Pagemap_Id])
REFERENCES [dbo].[Pagemaps] ([Id])
GO
ALTER TABLE [dbo].[CseThumbnails] CHECK CONSTRAINT [FK_dbo.CseThumbnails_dbo.Pagemaps_Pagemap_Id]
GO
ALTER TABLE [dbo].[Hcards]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Hcards_dbo.Pagemaps_Pagemap_Id] FOREIGN KEY([Pagemap_Id])
REFERENCES [dbo].[Pagemaps] ([Id])
GO
ALTER TABLE [dbo].[Hcards] CHECK CONSTRAINT [FK_dbo.Hcards_dbo.Pagemaps_Pagemap_Id]
GO
ALTER TABLE [dbo].[Itemlists]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Itemlists_dbo.Pagemaps_Pagemap_Id] FOREIGN KEY([Pagemap_Id])
REFERENCES [dbo].[Pagemaps] ([Id])
GO
ALTER TABLE [dbo].[Itemlists] CHECK CONSTRAINT [FK_dbo.Itemlists_dbo.Pagemaps_Pagemap_Id]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Items_dbo.Pagemaps_pagemap_Id] FOREIGN KEY([pagemap_Id])
REFERENCES [dbo].[Pagemaps] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_dbo.Items_dbo.Pagemaps_pagemap_Id]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Items_dbo.RootObjects_RootObject_Id] FOREIGN KEY([RootObject_Id])
REFERENCES [dbo].[RootObjects] ([Id])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_dbo.Items_dbo.RootObjects_RootObject_Id]
GO
ALTER TABLE [dbo].[Metatags]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Metatags_dbo.Pagemaps_Pagemap_Id] FOREIGN KEY([Pagemap_Id])
REFERENCES [dbo].[Pagemaps] ([Id])
GO
ALTER TABLE [dbo].[Metatags] CHECK CONSTRAINT [FK_dbo.Metatags_dbo.Pagemaps_Pagemap_Id]
GO
ALTER TABLE [dbo].[Mobileapplications]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Mobileapplications_dbo.Pagemaps_Pagemap_Id] FOREIGN KEY([Pagemap_Id])
REFERENCES [dbo].[Pagemaps] ([Id])
GO
ALTER TABLE [dbo].[Mobileapplications] CHECK CONSTRAINT [FK_dbo.Mobileapplications_dbo.Pagemaps_Pagemap_Id]
GO
ALTER TABLE [dbo].[NextPages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.NextPages_dbo.Queries_Queries_Id] FOREIGN KEY([Queries_Id])
REFERENCES [dbo].[Queries] ([Id])
GO
ALTER TABLE [dbo].[NextPages] CHECK CONSTRAINT [FK_dbo.NextPages_dbo.Queries_Queries_Id]
GO
ALTER TABLE [dbo].[Offers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Offers_dbo.Pagemaps_Pagemap_Id] FOREIGN KEY([Pagemap_Id])
REFERENCES [dbo].[Pagemaps] ([Id])
GO
ALTER TABLE [dbo].[Offers] CHECK CONSTRAINT [FK_dbo.Offers_dbo.Pagemaps_Pagemap_Id]
GO
ALTER TABLE [dbo].[Organizations]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Organizations_dbo.Pagemaps_Pagemap_Id] FOREIGN KEY([Pagemap_Id])
REFERENCES [dbo].[Pagemaps] ([Id])
GO
ALTER TABLE [dbo].[Organizations] CHECK CONSTRAINT [FK_dbo.Organizations_dbo.Pagemaps_Pagemap_Id]
GO
ALTER TABLE [dbo].[People]  WITH CHECK ADD  CONSTRAINT [FK_dbo.People_dbo.Pagemaps_Pagemap_Id] FOREIGN KEY([Pagemap_Id])
REFERENCES [dbo].[Pagemaps] ([Id])
GO
ALTER TABLE [dbo].[People] CHECK CONSTRAINT [FK_dbo.People_dbo.Pagemaps_Pagemap_Id]
GO
ALTER TABLE [dbo].[Requests]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Requests_dbo.Queries_Queries_Id] FOREIGN KEY([Queries_Id])
REFERENCES [dbo].[Queries] ([Id])
GO
ALTER TABLE [dbo].[Requests] CHECK CONSTRAINT [FK_dbo.Requests_dbo.Queries_Queries_Id]
GO
ALTER TABLE [dbo].[RootObjects]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RootObjects_dbo.Contexts_context_Id] FOREIGN KEY([context_Id])
REFERENCES [dbo].[Contexts] ([Id])
GO
ALTER TABLE [dbo].[RootObjects] CHECK CONSTRAINT [FK_dbo.RootObjects_dbo.Contexts_context_Id]
GO
ALTER TABLE [dbo].[RootObjects]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RootObjects_dbo.Queries_queries_Id] FOREIGN KEY([queries_Id])
REFERENCES [dbo].[Queries] ([Id])
GO
ALTER TABLE [dbo].[RootObjects] CHECK CONSTRAINT [FK_dbo.RootObjects_dbo.Queries_queries_Id]
GO
ALTER TABLE [dbo].[RootObjects]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RootObjects_dbo.SearchInformations_searchInformation_Id] FOREIGN KEY([searchInformation_Id])
REFERENCES [dbo].[SearchInformations] ([Id])
GO
ALTER TABLE [dbo].[RootObjects] CHECK CONSTRAINT [FK_dbo.RootObjects_dbo.SearchInformations_searchInformation_Id]
GO
ALTER TABLE [dbo].[RootObjects]  WITH CHECK ADD  CONSTRAINT [FK_dbo.RootObjects_dbo.Urls_url_Id] FOREIGN KEY([url_Id])
REFERENCES [dbo].[Urls] ([Id])
GO
ALTER TABLE [dbo].[RootObjects] CHECK CONSTRAINT [FK_dbo.RootObjects_dbo.Urls_url_Id]
GO
ALTER TABLE [dbo].[Webpages]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Webpages_dbo.Pagemaps_Pagemap_Id] FOREIGN KEY([Pagemap_Id])
REFERENCES [dbo].[Pagemaps] ([Id])
GO
ALTER TABLE [dbo].[Webpages] CHECK CONSTRAINT [FK_dbo.Webpages_dbo.Pagemaps_Pagemap_Id]
GO
USE [master]
GO
ALTER DATABASE [GoogleApiDB] SET  READ_WRITE 
GO
