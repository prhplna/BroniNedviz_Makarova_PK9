USE [master]
GO
/****** Object:  Database [BroniNedviz_Makarova]    Script Date: 30.05.2025 12:20:54 ******/
CREATE DATABASE [BroniNedviz_Makarova]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BroniNedviz_Makarova', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BroniNedviz_Makarova.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BroniNedviz_Makarova_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\BroniNedviz_Makarova_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [BroniNedviz_Makarova] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BroniNedviz_Makarova].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BroniNedviz_Makarova] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET ARITHABORT OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET  MULTI_USER 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BroniNedviz_Makarova] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [BroniNedviz_Makarova] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [BroniNedviz_Makarova] SET QUERY_STORE = OFF
GO
USE [BroniNedviz_Makarova]
GO
/****** Object:  Table [dbo].[Bronirovanie]    Script Date: 30.05.2025 12:20:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bronirovanie](
	[BronID] [int] IDENTITY(1,1) NOT NULL,
	[ObjectID] [int] NULL,
	[ClientID] [int] NULL,
	[UserID] [int] NULL,
	[DateGo] [date] NULL,
	[DateEnd] [date] NULL,
	[Count] [nvarchar](50) NULL,
	[Oplata] [nvarchar](50) NULL,
 CONSTRAINT [PK_Bronirovanie] PRIMARY KEY CLUSTERED 
(
	[BronID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 30.05.2025 12:20:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ClientID] [int] IDENTITY(1,1) NOT NULL,
	[NameClient] [nvarchar](50) NULL,
	[LastNameClient] [nvarchar](50) NULL,
	[OtchestvoClient] [nvarchar](50) NULL,
	[DateOfBirth] [date] NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[ClientID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrafikUborki]    Script Date: 30.05.2025 12:20:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrafikUborki](
	[GrafikID] [int] IDENTITY(1,1) NOT NULL,
	[ObjectID] [int] NULL,
	[Worker] [nvarchar](50) NULL,
	[PeriodTime] [datetime] NULL,
 CONSTRAINT [PK_GrafikUborki] PRIMARY KEY CLUSTERED 
(
	[GrafikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Objects]    Script Date: 30.05.2025 12:20:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Objects](
	[ObjectID] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](50) NULL,
	[OwnerID] [int] NULL,
	[CategoryObject] [nvarchar](50) NULL,
	[StatusObject] [int] NULL,
 CONSTRAINT [PK_Objects] PRIMARY KEY CLUSTERED 
(
	[ObjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OwnersObjects]    Script Date: 30.05.2025 12:20:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OwnersObjects](
	[OwnerID] [int] IDENTITY(1,1) NOT NULL,
	[NameOwner] [nvarchar](50) NULL,
	[LastNameOwner] [nvarchar](50) NULL,
	[OtchestvoOwner] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
 CONSTRAINT [PK_OwnersObjects] PRIMARY KEY CLUSTERED 
(
	[OwnerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 30.05.2025 12:20:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[NameRole] [nvarchar](50) NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusObject]    Script Date: 30.05.2025 12:20:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusObject](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[NameStatus] [nvarchar](50) NULL,
 CONSTRAINT [PK_StatusObject] PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 30.05.2025 12:20:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[NameUser] [nvarchar](50) NULL,
	[LastNameUser] [nvarchar](50) NULL,
	[RoleID] [int] NULL,
	[Login] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Bronirovanie]  WITH CHECK ADD  CONSTRAINT [FK_Bronirovanie_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bronirovanie] CHECK CONSTRAINT [FK_Bronirovanie_Clients]
GO
ALTER TABLE [dbo].[Bronirovanie]  WITH CHECK ADD  CONSTRAINT [FK_Bronirovanie_Objects] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[Objects] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bronirovanie] CHECK CONSTRAINT [FK_Bronirovanie_Objects]
GO
ALTER TABLE [dbo].[Bronirovanie]  WITH CHECK ADD  CONSTRAINT [FK_Bronirovanie_Users] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([UserID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bronirovanie] CHECK CONSTRAINT [FK_Bronirovanie_Users]
GO
ALTER TABLE [dbo].[GrafikUborki]  WITH CHECK ADD  CONSTRAINT [FK_GrafikUborki_Objects] FOREIGN KEY([ObjectID])
REFERENCES [dbo].[Objects] ([ObjectID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GrafikUborki] CHECK CONSTRAINT [FK_GrafikUborki_Objects]
GO
ALTER TABLE [dbo].[Objects]  WITH CHECK ADD  CONSTRAINT [FK_Objects_OwnersObjects] FOREIGN KEY([OwnerID])
REFERENCES [dbo].[OwnersObjects] ([OwnerID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Objects] CHECK CONSTRAINT [FK_Objects_OwnersObjects]
GO
ALTER TABLE [dbo].[Objects]  WITH CHECK ADD  CONSTRAINT [FK_Objects_StatusObject] FOREIGN KEY([StatusObject])
REFERENCES [dbo].[StatusObject] ([StatusID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Objects] CHECK CONSTRAINT [FK_Objects_StatusObject]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [BroniNedviz_Makarova] SET  READ_WRITE 
GO
