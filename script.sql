USE [master]
GO
/****** Object:  Database [test]    Script Date: 03/03/2562 9:12:41 ******/
CREATE DATABASE [test]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2018\MSSQL\DATA\test.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'test_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQL2018\MSSQL\DATA\test_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [test] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [test].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [test] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [test] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [test] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [test] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [test] SET ARITHABORT OFF 
GO
ALTER DATABASE [test] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [test] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [test] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [test] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [test] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [test] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [test] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [test] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [test] SET  DISABLE_BROKER 
GO
ALTER DATABASE [test] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [test] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [test] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [test] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [test] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [test] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [test] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [test] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [test] SET  MULTI_USER 
GO
ALTER DATABASE [test] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [test] SET DB_CHAINING OFF 
GO
ALTER DATABASE [test] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [test] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [test] SET DELAYED_DURABILITY = DISABLED 
GO
USE [test]
GO
/****** Object:  Table [dbo].[M_DATABASE_SCHEMA_INFO]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DATABASE_SCHEMA_INFO](
	[projectId] [int] NOT NULL,
	[tableName] [char](50) NOT NULL,
	[columnName] [char](50) NOT NULL,
	[schemaVersionId] [int] NOT NULL,
	[dataType] [char](20) NOT NULL,
	[dataLength] [char](10) NULL,
	[decimalPoint] [char](10) NULL,
	[constraintPrimaryKey] [char](1) NULL,
	[constraintUnique] [char](1) NULL,
	[constraintDefault] [char](10) NULL,
	[constraintNull] [char](1) NULL,
	[constraintMinValue] [char](10) NULL,
	[constraintMaxValue] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_DATABASE_SCHEMA_VERSION]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_DATABASE_SCHEMA_VERSION](
	[projectId] [int] NOT NULL,
	[schemaVersionId] [int] IDENTITY(1,1) NOT NULL,
	[schemaVersionNumber] [char](10) NULL,
	[tableName] [varchar](50) NOT NULL,
	[columnName] [varchar](50) NOT NULL,
	[effectiveStartDate] [date] NOT NULL,
	[effectiveEndDate] [date] NULL,
	[createDate] [date] NOT NULL,
	[createUser] [varchar](50) NOT NULL,
	[updateDate] [date] NULL,
	[updateUser] [char](10) NULL,
	[activeFlag] [smallint] NULL,
 CONSTRAINT [PK_M_DATABASE_SCHEMA_VERSION] PRIMARY KEY CLUSTERED 
(
	[schemaVersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_FN_REQ_DETAIL]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_FN_REQ_DETAIL](
	[projectid] [int] NULL,
	[functionId] [int] NOT NULL,
	[functionNo] [char](10) NOT NULL,
	[functionVersion] [int] NULL,
	[typeData] [char](10) NOT NULL,
	[dataId] [int] IDENTITY(1,1) NOT NULL,
	[dataName] [char](20) NOT NULL,
	[schemaVersionId] [char](10) NULL,
	[refTableName] [varchar](50) NULL,
	[refColumnName] [varchar](50) NULL,
	[dataType] [char](20) NOT NULL,
	[dataLength] [char](10) NULL,
	[decimalPoint] [char](10) NULL,
	[constraintPrimaryKey] [char](10) NULL,
	[constraintUnique] [char](10) NULL,
	[constraintDefault] [char](10) NULL,
	[constraintNull] [char](10) NULL,
	[constraintMinValue] [char](10) NULL,
	[constraintMaxValue] [char](10) NULL,
	[effectiveStartDate] [date] NOT NULL,
	[effectiveEndDate] [date] NULL,
	[activeFlag] [smallint] NOT NULL,
	[createDate] [date] NOT NULL,
	[createUser] [char](10) NOT NULL,
	[updateDate] [date] NULL,
	[updateUser] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_FN_REQ_DETAIL_INPUT]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_FN_REQ_DETAIL_INPUT](
	[functionId] [int] NULL,
	[inputId] [int] NULL,
	[schemaVersionId] [char](10) NULL,
	[effectiveStartDate] [date] NULL,
	[effectiveEndDate] [date] NULL,
	[activeFlag] [smallint] NULL,
	[createDate] [date] NULL,
	[createUser] [char](10) NULL,
	[updateDate] [date] NULL,
	[updateUser] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_FN_REQ_DETAIL_OUTPUT]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_FN_REQ_DETAIL_OUTPUT](
	[functionId] [int] NULL,
	[outputId] [int] NULL,
	[schemaVersionId] [char](10) NULL,
	[effectiveStartDate] [date] NULL,
	[effectiveEndDate] [date] NULL,
	[activeFlag] [smallint] NULL,
	[createDate] [date] NULL,
	[createUser] [char](10) NULL,
	[updateDate] [date] NULL,
	[updateUser] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_FN_REQ_HEADER]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_FN_REQ_HEADER](
	[functionId] [int] IDENTITY(1,1) NOT NULL,
	[functionNo] [char](10) NOT NULL,
	[functionversion] [char](10) NULL,
	[functionDescription] [char](50) NOT NULL,
	[createDate] [date] NOT NULL,
	[createUser] [char](10) NOT NULL,
	[updateDate] [date] NULL,
	[updateUser] [char](10) NULL,
	[projectid] [int] NOT NULL,
	[activeflag] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_FN_REQ_INPUT]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_FN_REQ_INPUT](
	[projectId] [int] NULL,
	[inputId] [int] NULL,
	[inputName] [varchar](50) NULL,
	[refTableName] [varchar](50) NULL,
	[refColumnName] [varchar](50) NULL,
	[createDate] [date] NOT NULL,
	[createUser] [char](10) NULL,
	[updateDate] [date] NOT NULL,
	[updateUser] [char](10) NULL,
	[activeFlag] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_FN_REQ_OUTPUT]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_FN_REQ_OUTPUT](
	[projectId] [int] NULL,
	[outputId] [int] NULL,
	[outputName] [varchar](50) NULL,
	[refTableName] [varchar](50) NULL,
	[refColumnName] [varchar](50) NULL,
	[createDate] [date] NULL,
	[createUser] [char](10) NULL,
	[updateDate] [date] NULL,
	[updateUser] [char](10) NULL,
	[activeFlag] [smallint] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_FN_REQ_VERSION]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_FN_REQ_VERSION](
	[functionId] [int] NULL,
	[functionVersionNumber] [char](10) NULL,
	[effectiveStartDate] [date] NULL,
	[effectiveEndDate] [date] NULL,
	[activeFlag] [smallint] NULL,
	[previousVersionId] [char](10) NULL,
	[createDate] [date] NULL,
	[createUser] [char](10) NULL,
	[updateDate] [date] NULL,
	[updateUser] [char](10) NULL,
	[functionVersionId] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_MISCELLANEOUS]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MISCELLANEOUS](
	[miscData] [char](30) NOT NULL,
	[miscValue1] [char](20) NOT NULL,
	[miscValue2] [char](20) NULL,
	[miscDescription] [char](50) NOT NULL,
	[activeFlag] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_PROJECT]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_PROJECT](
	[projectId] [int] IDENTITY(1,1) NOT NULL,
	[projectName] [varchar](50) NOT NULL,
	[projectNameAlias] [varchar](50) NOT NULL,
	[effDate] [datetime] NOT NULL,
	[endDate] [datetime] NOT NULL,
	[customer] [varchar](50) NULL,
	[databaseName] [varchar](50) NOT NULL,
	[hostname] [varchar](50) NULL,
	[port] [varchar](50) NULL,
	[username] [varchar](50) NOT NULL,
	[password] [char](10) NOT NULL,
	[startFlag] [smallint] NULL,
	[activeFlag] [smallint] NULL,
	[createDate] [datetime] NULL,
	[createUser] [nchar](10) NULL,
	[updateDate] [datetime] NOT NULL,
	[updateUser] [nchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_RTM]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_RTM](
	[projectId] [int] NOT NULL,
	[testCaseId] [int] NOT NULL,
	[functionId] [int] NOT NULL,
	[createDate] [datetime] NOT NULL,
	[createUser] [char](10) NOT NULL,
	[effectiveEndDate] [datetime] NULL,
	[effectiveStartDate] [datetime] NOT NULL,
	[updateDate] [datetime] NOT NULL,
	[updateUser] [char](10) NOT NULL,
	[activeFlag] [char](1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_RTM_VERSION]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_RTM_VERSION](
	[projectId] [int] NOT NULL,
	[testCaseId] [int] NOT NULL,
	[testCaseversion] [int] NOT NULL,
	[functionId] [int] NOT NULL,
	[functionVersion] [int] NOT NULL,
	[effectiveStartDate] [date] NOT NULL,
	[effectiveEndDate] [date] NULL,
	[createDate] [date] NOT NULL,
	[createUser] [char](10) NOT NULL,
	[updateDate] [date] NOT NULL,
	[updateUser] [char](10) NOT NULL,
	[activeFlag] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_RUNNING_PREFIX]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_RUNNING_PREFIX](
	[prefix] [char](20) NULL,
	[affix] [nchar](10) NULL,
	[length] [nchar](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_TESTCASE_DETAIL]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_TESTCASE_DETAIL](
	[projectId] [int] NOT NULL,
	[testCaseId] [int] NOT NULL,
	[testCaseNo] [char](10) NOT NULL,
	[testcaseVersion] [char](10) NOT NULL,
	[typeData] [int] NOT NULL,
	[refdataId] [int] NULL,
	[refdataName] [char](20) NOT NULL,
	[testData] [char](50) NOT NULL,
	[effectiveStartDate] [date] NULL,
	[effectiveEndDate] [date] NULL,
	[activeFlag] [char](1) NOT NULL,
	[createDate] [date] NULL,
	[createUser] [char](10) NULL,
	[updateDate] [date] NULL,
	[updateUser] [char](10) NULL,
	[sequenceNo] [int] IDENTITY(1,1) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_TESTCASE_HEADER]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_TESTCASE_HEADER](
	[projectId] [int] NULL,
	[testCaseId] [int] IDENTITY(1,1) NOT NULL,
	[testCaseNo] [char](10) NULL,
	[testcaseVersion] [char](10) NULL,
	[testCaseDescription] [varchar](50) NULL,
	[expectedResult] [varchar](50) NULL,
	[createDate] [date] NULL,
	[createUser] [char](10) NULL,
	[updateDate] [date] NULL,
	[updateUser] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_TESTCASE_VERSION]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_TESTCASE_VERSION](
	[testCaseId] [int] IDENTITY(1,1) NOT NULL,
	[testCaseVersionNumber] [nchar](10) NULL,
	[testcaseVersion] [char](10) NULL,
	[effectiveStartDate] [nvarchar](50) NULL,
	[effectiveEndDate] [nvarchar](50) NULL,
	[activeFlag] [smallint] NULL,
	[updateDate] [date] NULL,
	[updateUser] [char](10) NULL,
	[createDate] [date] NULL,
	[createUser] [char](10) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[m_users]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[m_users](
	[userId] [nchar](10) NOT NULL,
	[Firstname] [nchar](10) NULL,
	[lastname] [nchar](10) NULL,
	[username] [nchar](10) NOT NULL,
	[password] [nchar](10) NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_m_users] PRIMARY KEY CLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Project]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Project](
	[projectid] [nchar](10) NOT NULL,
	[projectName] [nchar](10) NULL,
	[effdate] [nchar](10) NULL,
	[enddae] [nchar](10) NULL,
	[DatabaseName] [nchar](10) NULL,
	[HostName] [nchar](10) NULL,
	[username] [nchar](10) NULL,
	[Password] [nchar](10) NULL,
	[status] [nchar](10) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[projectid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_CHANGE_REQUEST_DETAIL]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CHANGE_REQUEST_DETAIL](
	[changeRequestNo] [nchar](10) NULL,
	[sequenceNo] [nchar](10) NULL,
	[changeType] [nchar](10) NULL,
	[typeData] [nchar](10) NULL,
	[refdataId] [nchar](10) NULL,
	[refSchemaVersionId] [nchar](10) NULL,
	[dataName] [nchar](10) NULL,
	[dataType] [nchar](10) NULL,
	[dataLength] [nchar](10) NULL,
	[scale] [nchar](10) NULL,
	[constraintUnique] [nchar](10) NULL,
	[constraintNotNull] [nchar](10) NULL,
	[constraintDefault] [nchar](10) NULL,
	[constraintMin] [nchar](10) NULL,
	[constraintMax] [nchar](10) NULL,
	[refTableName] [nchar](10) NULL,
	[refColumnName] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_CHANGE_REQUEST_HEADER]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_CHANGE_REQUEST_HEADER](
	[projectId] [nchar](10) NULL,
	[changeRequestNo] [nchar](10) NULL,
	[changeUserId] [nchar](10) NULL,
	[changeDate] [nchar](10) NULL,
	[changeFunctionId] [nchar](10) NULL,
	[changeFunctionNo] [nchar](10) NULL,
	[changeFunctionVersion] [nchar](10) NULL,
	[changeStatus] [nchar](10) NULL,
	[createUser] [nchar](10) NULL,
	[createDate] [nchar](10) NULL,
	[updateUser] [nchar](10) NULL,
	[updateDate] [nchar](10) NULL,
	[reason] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_TEMP_CHANGE_LIST]    Script Date: 03/03/2562 9:12:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[T_TEMP_CHANGE_LIST](
	[lineNumber] [int] IDENTITY(1,1) NOT NULL,
	[userId] [char](20) NULL,
	[functionId] [int] NOT NULL,
	[functionVersion] [char](20) NOT NULL,
	[typeData] [int] NOT NULL,
	[dataName] [char](20) NOT NULL,
	[schemaVersionId] [int] NULL,
	[newDataType] [char](20) NULL,
	[newDataLength] [char](10) NULL,
	[newScaleLength] [char](20) NULL,
	[newUnique] [char](20) NULL,
	[newNotNull] [char](20) NULL,
	[newDefaultValue] [char](20) NULL,
	[newMinValue] [char](20) NULL,
	[newMaxValue] [char](20) NULL,
	[tableName] [char](20) NULL,
	[columnName] [char](20) NULL,
	[changeType] [char](20) NULL,
	[createUser] [char](20) NULL,
	[createDate] [date] NULL,
	[dataId] [int] NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[m_users]  WITH CHECK ADD  CONSTRAINT [FK_m_users_m_users] FOREIGN KEY([username])
REFERENCES [dbo].[m_users] ([username])
GO
ALTER TABLE [dbo].[m_users] CHECK CONSTRAINT [FK_m_users_m_users]
GO
USE [master]
GO
ALTER DATABASE [test] SET  READ_WRITE 
GO
