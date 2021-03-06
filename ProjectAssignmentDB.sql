USE [master]
GO
/****** Object:  Database [ProjectAssignmentDB]    Script Date: 2021-10-01 2:09:36 PM ******/
CREATE DATABASE [ProjectAssignmentDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectAssignmentDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ProjectAssignmentDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ProjectAssignmentDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ProjectAssignmentDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ProjectAssignmentDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectAssignmentDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectAssignmentDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectAssignmentDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectAssignmentDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ProjectAssignmentDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectAssignmentDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET RECOVERY FULL 
GO
ALTER DATABASE [ProjectAssignmentDB] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectAssignmentDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectAssignmentDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectAssignmentDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectAssignmentDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ProjectAssignmentDB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'ProjectAssignmentDB', N'ON'
GO
ALTER DATABASE [ProjectAssignmentDB] SET QUERY_STORE = OFF
GO
USE [ProjectAssignmentDB]
GO
/****** Object:  Table [dbo].[ProjectAssignments]    Script Date: 2021-10-01 2:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjectAssignments](
	[StudentNumber] [int] NOT NULL,
	[ProjectCode] [nvarchar](6) NOT NULL,
	[AssignedDate] [date] NOT NULL,
	[SubmittedDate] [date] NULL,
 CONSTRAINT [PK_ProjectAssignments] PRIMARY KEY CLUSTERED 
(
	[StudentNumber] ASC,
	[ProjectCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 2021-10-01 2:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ProjectCode] [nvarchar](6) NOT NULL,
	[ProjectTitle] [nvarchar](120) NOT NULL,
	[DueDate] [date] NOT NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[ProjectCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 2021-10-01 2:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[StudentNumber] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[StudentNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 2021-10-01 2:09:36 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[TeacherNumber] [int] NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[TeacherNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ProjectAssignments] ([StudentNumber], [ProjectCode], [AssignedDate], [SubmittedDate]) VALUES (1234567, N'PRJ101', CAST(N'2021-01-20' AS Date), NULL)
INSERT [dbo].[ProjectAssignments] ([StudentNumber], [ProjectCode], [AssignedDate], [SubmittedDate]) VALUES (1234568, N'PRJ101', CAST(N'2021-01-20' AS Date), NULL)
INSERT [dbo].[ProjectAssignments] ([StudentNumber], [ProjectCode], [AssignedDate], [SubmittedDate]) VALUES (1234568, N'PRJ102', CAST(N'2021-02-25' AS Date), NULL)
INSERT [dbo].[ProjectAssignments] ([StudentNumber], [ProjectCode], [AssignedDate], [SubmittedDate]) VALUES (1234568, N'PRJ103', CAST(N'2021-10-01' AS Date), CAST(N'1900-01-01' AS Date))
GO
INSERT [dbo].[Projects] ([ProjectCode], [ProjectTitle], [DueDate]) VALUES (N'PRJ101', N'Mortgage Calculator in C++', CAST(N'2021-04-20' AS Date))
INSERT [dbo].[Projects] ([ProjectCode], [ProjectTitle], [DueDate]) VALUES (N'PRJ102', N'Hi-Tech Order Management in C#', CAST(N'2021-04-15' AS Date))
INSERT [dbo].[Projects] ([ProjectCode], [ProjectTitle], [DueDate]) VALUES (N'PRJ103', N'Shopping Cart in Java', CAST(N'2021-04-25' AS Date))
INSERT [dbo].[Projects] ([ProjectCode], [ProjectTitle], [DueDate]) VALUES (N'PRJ104', N'Online Course Registration App', CAST(N'2021-04-27' AS Date))
INSERT [dbo].[Projects] ([ProjectCode], [ProjectTitle], [DueDate]) VALUES (N'PRJ105', N'SMTI Teacher-Course Management', CAST(N'2021-04-28' AS Date))
GO
INSERT [dbo].[Students] ([StudentNumber], [FirstName], [LastName], [Password]) VALUES (1234567, N'Mary', N'Brown', N'mary_1234')
INSERT [dbo].[Students] ([StudentNumber], [FirstName], [LastName], [Password]) VALUES (1234568, N'Mary', N'Green', N'mary_1235')
INSERT [dbo].[Students] ([StudentNumber], [FirstName], [LastName], [Password]) VALUES (1234569, N'Thomas', N'Moore', N'thomas_1236')
GO
INSERT [dbo].[Teachers] ([TeacherNumber], [FirstName], [LastName], [Password]) VALUES (1111, N'Mary', N'Brown', N'mary_1111')
INSERT [dbo].[Teachers] ([TeacherNumber], [FirstName], [LastName], [Password]) VALUES (2222, N'Thomas', N'Moore', N'thomas_2222')
GO
ALTER TABLE [dbo].[ProjectAssignments]  WITH CHECK ADD  CONSTRAINT [FK_ProjectAssignments_Projects] FOREIGN KEY([ProjectCode])
REFERENCES [dbo].[Projects] ([ProjectCode])
GO
ALTER TABLE [dbo].[ProjectAssignments] CHECK CONSTRAINT [FK_ProjectAssignments_Projects]
GO
ALTER TABLE [dbo].[ProjectAssignments]  WITH CHECK ADD  CONSTRAINT [FK_ProjectAssignments_Students] FOREIGN KEY([StudentNumber])
REFERENCES [dbo].[Students] ([StudentNumber])
GO
ALTER TABLE [dbo].[ProjectAssignments] CHECK CONSTRAINT [FK_ProjectAssignments_Students]
GO
USE [master]
GO
ALTER DATABASE [ProjectAssignmentDB] SET  READ_WRITE 
GO
