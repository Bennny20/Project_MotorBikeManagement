USE [MotorcycleManagement]
GO
/****** Object:  Table [dbo].[TblBike]    Script Date: 11/10/2021 8:57:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBike](
	[motocycleID] [varchar](10) NOT NULL,
	[model] [nvarchar](50) NULL,
	[year] [datetime] NULL,
	[condition] [varchar](50) NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[warranty] [nvarchar](50) NULL,
	[brandID] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[motocycleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblBrand]    Script Date: 11/10/2021 8:57:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblBrand](
	[brandID] [varchar](10) NOT NULL,
	[brandName] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[description] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[brandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblUser]    Script Date: 11/10/2021 8:57:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblUser](
	[userID] [varchar](10) NOT NULL,
	[fullName] [nvarchar](50) NULL,
	[password] [varchar](50) NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TblBike]  WITH CHECK ADD  CONSTRAINT [FK_Bike_brand] FOREIGN KEY([brandID])
REFERENCES [dbo].[TblBrand] ([brandID])
GO
ALTER TABLE [dbo].[TblBike] CHECK CONSTRAINT [FK_Bike_brand]
GO
