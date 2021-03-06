USE [UK_Accident_NDS]
GO
/****** Object:  Table [dbo].[Accident]    Script Date: 1/8/2022 10:03:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accident](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Accident_Index] [varchar](50) NOT NULL,
	[Accident_Severity_SK] [int] NOT NULL,
	[Date] [date] NULL,
	[Time] [varchar](50) NULL,
	[Local_Authority_District_SK] [int] NULL,
	[Road_Type_SK] [int] NULL,
	[Name_Built_up_Road] [varchar](50) NULL,
	[LSOA_of_Accident_Location] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[PostCode_SK] [int] NULL,
	[UrbanRural_SK] [int] NULL,
	[Number_of_Casualties] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AccidentSeverity]    Script Date: 1/8/2022 10:03:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccidentSeverity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_AccidentSeverity] [int] NULL,
	[NameSeverity] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Casualty]    Script Date: 1/8/2022 10:03:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Casualty](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Casualty_reference] [int] NOT NULL,
	[ID_Accident_Index] [varchar](50) NOT NULL,
	[ID_Accident_SK] [int] NOT NULL,
	[Sex_of_Casualty_SK] [int] NULL,
	[Age_of_Casualty] [int] NULL,
	[Casualty_Severity_SK] [int] NULL,
	[Casualty_Type_SK] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Casualty_reference] ASC,
	[ID_Accident_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CasualtySeverity]    Script Date: 1/8/2022 10:03:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CasualtySeverity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_CasualtySeverity] [int] NULL,
	[Name_Severity] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CasualtyType]    Script Date: 1/8/2022 10:03:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CasualtyType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_CasualtyType] [int] NULL,
	[Name_CasualtyType] [varchar](80) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JourneyPurpose]    Script Date: 1/8/2022 10:03:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JourneyPurpose](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_JourneyPurpose] [int] NULL,
	[Name_JourneyPurpose] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocalAuthorityDistrict]    Script Date: 1/8/2022 10:03:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalAuthorityDistrict](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_LocalAuthorityDistrict] [int] NULL,
	[NameLocalAuthorityDistrict] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postcodes]    Script Date: 1/8/2022 10:03:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postcodes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Postcode] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[County] [varchar](50) NULL,
	[RegionName] [varchar](50) NULL,
	[CountryName] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoadType]    Script Date: 1/8/2022 10:03:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoadType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_RoadType] [int] NULL,
	[Name_RoadType] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sex_of_Casualty]    Script Date: 1/8/2022 10:03:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sex_of_Casualty](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Sex_of_Casualty] [int] NULL,
	[Name_Sex_of_Casualty] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Urban_or_Rural_Area]    Script Date: 1/8/2022 10:03:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urban_or_Rural_Area](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_UrbanorRuralArea] [int] NULL,
	[Name_urArea] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicles]    Script Date: 1/8/2022 10:03:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicles](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Accident_Index] [varchar](50) NULL,
	[ID_Accident_SK] [int] NULL,
	[Vehicle_Reference] [int] NULL,
	[Journey_Purpose_of_Driver_SK] [int] NULL,
	[Vehicle_Type_SK] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleType]    Script Date: 1/8/2022 10:03:43 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_VehicleType] [int] NULL,
	[Name_VehicleType] [varchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Accident]  WITH CHECK ADD FOREIGN KEY([Accident_Severity_SK])
REFERENCES [dbo].[AccidentSeverity] ([ID])
GO
ALTER TABLE [dbo].[Accident]  WITH CHECK ADD FOREIGN KEY([Local_Authority_District_SK])
REFERENCES [dbo].[LocalAuthorityDistrict] ([ID])
GO
ALTER TABLE [dbo].[Accident]  WITH CHECK ADD FOREIGN KEY([PostCode_SK])
REFERENCES [dbo].[Postcodes] ([ID])
GO
ALTER TABLE [dbo].[Accident]  WITH CHECK ADD FOREIGN KEY([Road_Type_SK])
REFERENCES [dbo].[RoadType] ([ID])
GO
ALTER TABLE [dbo].[Accident]  WITH CHECK ADD FOREIGN KEY([UrbanRural_SK])
REFERENCES [dbo].[Urban_or_Rural_Area] ([ID])
GO
ALTER TABLE [dbo].[Casualty]  WITH CHECK ADD FOREIGN KEY([Casualty_Severity_SK])
REFERENCES [dbo].[CasualtySeverity] ([ID])
GO
ALTER TABLE [dbo].[Casualty]  WITH CHECK ADD FOREIGN KEY([ID_Accident_SK])
REFERENCES [dbo].[Accident] ([ID])
GO
ALTER TABLE [dbo].[Casualty]  WITH CHECK ADD FOREIGN KEY([Sex_of_Casualty_SK])
REFERENCES [dbo].[Sex_of_Casualty] ([ID])
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD FOREIGN KEY([Journey_Purpose_of_Driver_SK])
REFERENCES [dbo].[JourneyPurpose] ([ID])
GO
ALTER TABLE [dbo].[Vehicles]  WITH CHECK ADD FOREIGN KEY([Vehicle_Type_SK])
REFERENCES [dbo].[VehicleType] ([ID])
GO
