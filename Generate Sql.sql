/*    ==Scripting Parameters==

    Source Server Version : SQL Server 2017 (14.0.1000)
    Source Database Engine Edition : Microsoft SQL Server Enterprise Edition
    Source Database Engine Type : Standalone SQL Server

    Target Server Version : SQL Server 2017
    Target Database Engine Edition : Microsoft SQL Server Standard Edition
    Target Database Engine Type : Standalone SQL Server
*/
USE [master]
GO
/****** Object:  Database [BackendBemax]    Script Date: 6/18/2019 7:32:39 PM ******/
CREATE DATABASE [BackendBemax]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BackendBemax', FILENAME = N'C:\Users\code\Desktop\MSSQL14.MSSQLSERVER\MSSQL\DATA\BackendBemax.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BackendBemax_log', FILENAME = N'C:\Users\code\Desktop\MSSQL14.MSSQLSERVER\MSSQL\DATA\BackendBemax_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BackendBemax] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BackendBemax].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BackendBemax] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BackendBemax] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BackendBemax] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BackendBemax] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BackendBemax] SET ARITHABORT OFF 
GO
ALTER DATABASE [BackendBemax] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BackendBemax] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BackendBemax] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BackendBemax] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BackendBemax] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BackendBemax] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BackendBemax] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BackendBemax] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BackendBemax] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BackendBemax] SET  ENABLE_BROKER 
GO
ALTER DATABASE [BackendBemax] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BackendBemax] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BackendBemax] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BackendBemax] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BackendBemax] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BackendBemax] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BackendBemax] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BackendBemax] SET RECOVERY FULL 
GO
ALTER DATABASE [BackendBemax] SET  MULTI_USER 
GO
ALTER DATABASE [BackendBemax] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BackendBemax] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BackendBemax] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BackendBemax] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BackendBemax] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BackendBemax', N'ON'
GO
ALTER DATABASE [BackendBemax] SET QUERY_STORE = OFF
GO
USE [BackendBemax]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [BackendBemax]
GO
/****** Object:  Table [dbo].[BlogPost]    Script Date: 6/18/2019 7:32:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogPost](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Content] [nvarchar](250) NOT NULL,
	[Info] [nvarchar](250) NOT NULL,
	[Read] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Choose]    Script Date: 6/18/2019 7:32:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Choose](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Icon] [nvarchar](250) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Content] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImgContent]    Script Date: 6/18/2019 7:32:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImgContent](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Text] [nvarchar](250) NOT NULL,
	[TextEnd] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Logo]    Script Date: 6/18/2019 7:32:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 6/18/2019 7:32:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Description] [ntext] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 6/18/2019 7:32:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Adress] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](250) NOT NULL,
	[Phone] [nvarchar](250) NOT NULL,
	[Fax] [nvarchar](250) NOT NULL,
	[Info] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 6/18/2019 7:32:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](250) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Text] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SliderProject]    Script Date: 6/18/2019 7:32:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SliderProject](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Photo] [nvarchar](250) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Text] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testiminiol]    Script Date: 6/18/2019 7:32:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testiminiol](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Info] [nvarchar](250) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Text] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Working]    Script Date: 6/18/2019 7:32:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Working](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Text] [nvarchar](250) NOT NULL,
	[Image] [nvarchar](250) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BlogPost] ON 

INSERT [dbo].[BlogPost] ([Id], [Image], [Title], [Content], [Info], [Read]) VALUES (2, N'blog_01.jpg', N'10 Tips for a Business Strong Start', N'Donec sit amet neque lectus. Ut vitae turpis justo. Nullam a sodales est, at viverra sem. Mauris vitae pellentesque nisi, sit amet viverra orci.', N'Development,Menecment', N'Read More')
INSERT [dbo].[BlogPost] ([Id], [Image], [Title], [Content], [Info], [Read]) VALUES (3, N'blog_02.jpg', N'Help your business to success', N'Donec sit amet neque lectus. Ut vitae turpis justo. Nullam a sodales est, at viverra sem. Mauris vitae pellentesque nisi, sit amet viverra orci.', N'Development,Marketinq', N'Read More')
INSERT [dbo].[BlogPost] ([Id], [Image], [Title], [Content], [Info], [Read]) VALUES (4, N'blog_03.jpg', N'How to find work you love', N'Donec sit amet neque lectus. Ut vitae turpis justo. Nullam a sodales est, at viverra sem. Mauris vitae pellentesque nisi, sit amet viverra orci.', N'Development,Riyaziyyat', N'Read More')
SET IDENTITY_INSERT [dbo].[BlogPost] OFF
SET IDENTITY_INSERT [dbo].[Choose] ON 

INSERT [dbo].[Choose] ([Id], [Icon], [Title], [Content]) VALUES (1, N'fa fa-cogs', N'Awesome Design', N'Morbi vehicula a nibh in commodo. Aliquam quis dolor eget lectus pulvinar malesuada. Suspendisse eu rhoncus ligula.')
INSERT [dbo].[Choose] ([Id], [Icon], [Title], [Content]) VALUES (2, N'fa fa-diamond', N'Flexible Layouts', N'Nam orci metus, varius at nisl at, tempor facilisis magna. Ut maximus felis et tincidunt lacinia. Nulla malesuada ipsum at magna condimentum pharetra.')
INSERT [dbo].[Choose] ([Id], [Icon], [Title], [Content]) VALUES (3, N'fa fa-briefcase', N'Easyyy to Use', N'Fusce viverra risus diam, in luctus nulla porta vel. Etiam nunc lorem, dapibus id augue vitae, lacinia pharetra eros. Fusce ac egestas purus, non porta est.')
SET IDENTITY_INSERT [dbo].[Choose] OFF
SET IDENTITY_INSERT [dbo].[ImgContent] ON 

INSERT [dbo].[ImgContent] ([Id], [Image], [Title], [Text], [TextEnd]) VALUES (1, N'iconbox_01.jpg', N'Top Investment Advisors', N' Mauris scelerisque ut ipsum id vulputate. Nulla laoreet, ligula vel congue ultricies, nibh ipsum egestas nunc, id porta nibh nunc non felis. Vestibulum nibh urna, lobortis ut euismod sed, dignissim non neque', N'Read more')
INSERT [dbo].[ImgContent] ([Id], [Image], [Title], [Text], [TextEnd]) VALUES (7, N'iconbox_02.jpg', N'Toghrul Rzayev', N'Web Developer', N'Read moree')
INSERT [dbo].[ImgContent] ([Id], [Image], [Title], [Text], [TextEnd]) VALUES (9, N'iconbox_03.jpg', N'Growth Hacking and Success', N' Mauris scelerisque ut ipsum id vulputate. Nulla laoreet, ligula vel congue ultricies, nibh ipsum egestas nunc, id porta nibh nunc non felis. Vestibulum nibh urna, lobortis ut euismod sed, dignissim non neque', N'Read more')
SET IDENTITY_INSERT [dbo].[ImgContent] OFF
SET IDENTITY_INSERT [dbo].[Logo] ON 

INSERT [dbo].[Logo] ([Id], [Image]) VALUES (1, N'partner_01.png')
INSERT [dbo].[Logo] ([Id], [Image]) VALUES (2, N'partner_02.png')
INSERT [dbo].[Logo] ([Id], [Image]) VALUES (3, N'partner_03.png')
INSERT [dbo].[Logo] ([Id], [Image]) VALUES (4, N'partner_04.png')
INSERT [dbo].[Logo] ([Id], [Image]) VALUES (5, N'partner_05.png')
INSERT [dbo].[Logo] ([Id], [Image]) VALUES (6, N'partner_06.png')
SET IDENTITY_INSERT [dbo].[Logo] OFF
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [Title], [Image], [Description]) VALUES (1, N'Very Easy Customizie', N'fa fa-diamond', N'Etiam mollis dui diam, eget accumsan neque consectetur quis ')
INSERT [dbo].[Services] ([Id], [Title], [Image], [Description]) VALUES (2, N'Free Font Icons', N'fa fa-bullhorn', N'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam convallis')
INSERT [dbo].[Services] ([Id], [Title], [Image], [Description]) VALUES (3, N'Moblie Ready', N'fa fa-tablet', N'Donec at consequat tortor. Etiam ut ipsum sit amet diam pulvinar efficitur quis vitae')
INSERT [dbo].[Services] ([Id], [Title], [Image], [Description]) VALUES (4, N'Modern Style', N'fa fa-pencil', N'Suspendisse eu congue mauris. Class aptent taciti sociosqu ad litora torquent')
INSERT [dbo].[Services] ([Id], [Title], [Image], [Description]) VALUES (5, N'Awesome Support', N'fa fa-comments', N'Curabitur laoreet auctor sem, sodales fermentum purus rutrum in')
SET IDENTITY_INSERT [dbo].[Services] OFF
SET IDENTITY_INSERT [dbo].[Slider] ON 

INSERT [dbo].[Slider] ([Id], [Photo], [Title], [Text]) VALUES (1, N'slide_01.jpg', N'work hard', N'Dream Big')
INSERT [dbo].[Slider] ([Id], [Photo], [Title], [Text]) VALUES (2, N'slide_02.jpg', N'work hard', N'Dream Bige')
INSERT [dbo].[Slider] ([Id], [Photo], [Title], [Text]) VALUES (3, N'slide_03.jpg', N'work hard', N'Dream Big')
SET IDENTITY_INSERT [dbo].[Slider] OFF
SET IDENTITY_INSERT [dbo].[SliderProject] ON 

INSERT [dbo].[SliderProject] ([Id], [Photo], [Title], [Text]) VALUES (1, N'project_01.jpg', N'Business Growth Solutions', N'Finance,Marketinq')
INSERT [dbo].[SliderProject] ([Id], [Photo], [Title], [Text]) VALUES (2, N'project_02.jpg', N'Business Growth Solutions', N'Finance,Marketinq')
INSERT [dbo].[SliderProject] ([Id], [Photo], [Title], [Text]) VALUES (3, N'project_03.jpg', N'Business Growth Solutions', N'Finance,Toghrul')
INSERT [dbo].[SliderProject] ([Id], [Photo], [Title], [Text]) VALUES (4, N'project_04.jpg', N'Business Growth Solutions', N'Finance,Marketing')
SET IDENTITY_INSERT [dbo].[SliderProject] OFF
SET IDENTITY_INSERT [dbo].[Testiminiol] ON 

INSERT [dbo].[Testiminiol] ([Id], [Info], [Image], [Title], [Text]) VALUES (1, N'Nullam faucibus, magna non fringilla ullamcorper, mi libero tempus arcu, fermentum lacinia sapie n lacus eget dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam tincidunt odio dolor', N'user_01.png', N'Michael Green', N'Product Manager')
INSERT [dbo].[Testiminiol] ([Id], [Info], [Image], [Title], [Text]) VALUES (2, N'Nullam faucibus, magna non fringilla ullamcorper, mi libero tempus arcu, fermentum lacinia sapie n lacus eget dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam tincidunt odio dolor', N'user_02.png', N'John Doe', N'Producttt Manager')
SET IDENTITY_INSERT [dbo].[Testiminiol] OFF
SET IDENTITY_INSERT [dbo].[Working] ON 

INSERT [dbo].[Working] ([Id], [Title], [Text], [Image]) VALUES (1, N'Workinggg With us', N'We’ve completed more than 100+ project for our am azing clients, If you interested?', N'images/hire_us.png')
SET IDENTITY_INSERT [dbo].[Working] OFF
USE [master]
GO
ALTER DATABASE [BackendBemax] SET  READ_WRITE 
GO
