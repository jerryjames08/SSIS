USE [AdventureWorks2014]
GO
/****** Object:  Table [dbo].[AllProducts]    Script Date: 3/26/2017 1:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AllProducts](
	[ProductID] [int] NULL,
	[ProductName] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 3/26/2017 1:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeID] [int] NOT NULL,
	[LastName] [varchar](50) NULL,
	[FirstName] [varchar](50) NULL,
	[OccupationID] [int] NULL,
	[OccupationTitle] [varchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ExportColumnDemo]    Script Date: 3/26/2017 1:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExportColumnDemo](
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[FilePath] [nvarchar](255) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ImportColumnDemo]    Script Date: 3/26/2017 1:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImportColumnDemo](
	[ImagePath] [nvarchar](255) NULL,
	[EmployeeImage] [image] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MyUsers]    Script Date: 3/26/2017 1:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyUsers](
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NEWOCCUPATIONS]    Script Date: 3/26/2017 1:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWOCCUPATIONS](
	[OccupationID] [smallint] IDENTITY(1,1) NOT NULL,
	[OccupationTitle] [varchar](50) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NEWSTATEPROVINCEDETAILS]    Script Date: 3/26/2017 1:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NEWSTATEPROVINCEDETAILS](
	[StateProvinceID] [int] IDENTITY(1,1) NOT NULL,
	[StateProvinceCode] [nchar](3) NOT NULL,
	[CountryRegionCode] [nvarchar](3) NOT NULL,
	[IsOnlyStateProvinceFlag] [dbo].[Flag] NOT NULL,
	[Name] [dbo].[Name] NOT NULL,
	[TerritoryID] [int] NOT NULL,
	[rowguid] [uniqueidentifier] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Occupation]    Script Date: 3/26/2017 1:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Occupation](
	[OccupationID] [smallint] IDENTITY(1,1) NOT NULL,
	[OccupationTitle] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Occupation_OccupationID] PRIMARY KEY CLUSTERED 
(
	[OccupationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TermExtractionDemo]    Script Date: 3/26/2017 1:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TermExtractionDemo](
	[Term] [nvarchar](150) NULL,
	[Score] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TermLookUpDemo]    Script Date: 3/26/2017 1:30:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TermLookUpDemo](
	[Term] [nvarchar](150) NULL,
	[Frequency] [int] NULL,
	[Sentence] [nvarchar](150) NULL
) ON [PRIMARY]

GO
