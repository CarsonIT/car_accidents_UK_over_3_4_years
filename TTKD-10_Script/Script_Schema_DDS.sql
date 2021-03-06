USE [UK_Accident_DDS]
GO
/****** Object:  Table [dbo].[AccidentSeverity]    Script Date: 1/8/2022 10:03:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccidentSeverity](
	[AccidentSeverity_SK] [int] IDENTITY(1,1) NOT NULL,
	[AccidentSeverity_NK] [int] NULL,
	[NameSeverity] [varchar](50) NULL,
 CONSTRAINT [PK_AccidentSeverity] PRIMARY KEY CLUSTERED 
(
	[AccidentSeverity_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Age_of_Casualty]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Age_of_Casualty](
	[AgeCasualty_SK] [int] IDENTITY(1,1) NOT NULL,
	[Age] [int] NULL,
	[Age_Band_of_Casualty] [int] NULL,
	[Age_Band_of_Casualty_Name] [varchar](50) NULL,
	[Age_Group_of_Casualty] [int] NULL,
	[Age_Group_of_Casualty_Name] [varchar](50) NULL,
 CONSTRAINT [PK_Age_of_Casualty] PRIMARY KEY CLUSTERED 
(
	[AgeCasualty_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Built_up_Road_Type]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Built_up_Road_Type](
	[BuiltUpRoad_SK] [int] IDENTITY(1,1) NOT NULL,
	[Name_Built_up_Road_Type] [varchar](50) NULL,
 CONSTRAINT [PK_Built_up_Road_Type] PRIMARY KEY CLUSTERED 
(
	[BuiltUpRoad_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CasualtySeverity]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CasualtySeverity](
	[CasualtySeverity_SK] [int] IDENTITY(1,1) NOT NULL,
	[CasualtySeverity_NK] [int] NULL,
	[NameSeverity] [varchar](50) NULL,
 CONSTRAINT [PK_CasualtySeverity] PRIMARY KEY CLUSTERED 
(
	[CasualtySeverity_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CasualtyType]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CasualtyType](
	[CasualtyType_SK] [int] IDENTITY(1,1) NOT NULL,
	[CasualtyType_NK] [int] NULL,
	[Name_CasualtyType] [varchar](80) NULL,
 CONSTRAINT [PK_CasualtyType] PRIMARY KEY CLUSTERED 
(
	[CasualtyType_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Date]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Date](
	[Date_SK] [int] IDENTITY(1,1) NOT NULL,
	[Day] [int] NULL,
	[Month] [int] NULL,
	[Quarter] [int] NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK_Date] PRIMARY KEY CLUSTERED 
(
	[Date_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Accidents]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Accidents](
	[AccidentSeverity_SK] [int] NULL,
	[Time_SK] [int] NULL,
	[Date_SK] [int] NULL,
	[RoadType_SK] [int] NULL,
	[LocalAuthorityDistrict_SK] [int] NULL,
	[BuiltUpRoad_SK] [int] NULL,
	[Geography_SK] [int] NULL,
	[UrbanOrRural_SK] [int] NULL,
	[NumberofAccidents] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Casualty]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Casualty](
	[CasualtySeverity_SK] [int] NULL,
	[AgeCasualty_SK] [int] NULL,
	[CasualtyType_SK] [int] NULL,
	[Sex_of_Casualty_SK] [int] NULL,
	[Date_SK] [int] NULL,
	[LocalAuthorityDistrict_SK] [int] NULL,
	[NumberofCasualty] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Variance]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Variance](
	[Year_SK] [int] NULL,
	[NumberAccident_Current_Year] [int] NULL,
	[NumberAccident_Last_Year] [int] NULL,
	[Variance] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Vehicle]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Vehicle](
	[Vehicle_Type_SK] [int] NULL,
	[Journey_Purpose_SK] [int] NULL,
	[NumberofVehicle] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Geography]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Geography](
	[Geography_SK] [int] IDENTITY(1,1) NOT NULL,
	[Postcode_NK] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[County] [varchar](50) NULL,
	[RegionName] [varchar](50) NULL,
	[CountryName] [varchar](50) NULL,
 CONSTRAINT [PK_Geography] PRIMARY KEY CLUSTERED 
(
	[Geography_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Journey_Purpose]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Journey_Purpose](
	[Journey_Purpose_SK] [int] IDENTITY(1,1) NOT NULL,
	[Journey_Purpose_NK] [int] NULL,
	[NameJourneyPurpose] [varchar](50) NULL,
 CONSTRAINT [PK_Journey_Purpose] PRIMARY KEY CLUSTERED 
(
	[Journey_Purpose_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LocalAuthorityDistrict]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocalAuthorityDistrict](
	[LocalAuthorityDistrict_SK] [int] IDENTITY(1,1) NOT NULL,
	[LocalAuthorityDistrict_NK] [int] NULL,
	[NameLocalAuthorityDistrict] [varchar](50) NULL,
 CONSTRAINT [PK_LocalAuthorityDistrict] PRIMARY KEY CLUSTERED 
(
	[LocalAuthorityDistrict_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoadType]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoadType](
	[RoadType_SK] [int] IDENTITY(1,1) NOT NULL,
	[RoadType_NK] [int] NULL,
	[Name_RoadType] [varchar](50) NULL,
 CONSTRAINT [PK_RoadType] PRIMARY KEY CLUSTERED 
(
	[RoadType_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sex_of_Casualty]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sex_of_Casualty](
	[Sex_of_Casualty_SK] [int] IDENTITY(1,1) NOT NULL,
	[Sex_of_Casualty_NK] [int] NULL,
	[Name] [varchar](50) NULL,
 CONSTRAINT [PK_Sex_of_Casualty] PRIMARY KEY CLUSTERED 
(
	[Sex_of_Casualty_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time](
	[Time_SK] [int] IDENTITY(1,1) NOT NULL,
	[Hour] [int] NULL,
	[Session] [varchar](50) NULL,
 CONSTRAINT [PK_Times] PRIMARY KEY CLUSTERED 
(
	[Time_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UrbanOrRural]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UrbanOrRural](
	[UrbanOrRural_SK] [int] IDENTITY(1,1) NOT NULL,
	[UrbanOrRural_NK] [int] NULL,
	[NameUrbanOrRuralArea] [varchar](50) NULL,
 CONSTRAINT [PK_UrbanOrRural] PRIMARY KEY CLUSTERED 
(
	[UrbanOrRural_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle_Type]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle_Type](
	[Vehicle_Type_SK] [int] IDENTITY(1,1) NOT NULL,
	[Vehicle_Type_NK] [int] NULL,
	[NameVehicleType] [varchar](50) NULL,
 CONSTRAINT [PK_Vehicle_Type] PRIMARY KEY CLUSTERED 
(
	[Vehicle_Type_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Year]    Script Date: 1/8/2022 10:03:12 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Year](
	[Year_SK] [int] IDENTITY(1,1) NOT NULL,
	[Year] [int] NULL,
 CONSTRAINT [PK_Year] PRIMARY KEY CLUSTERED 
(
	[Year_SK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Fact_Accidents]  WITH CHECK ADD FOREIGN KEY([AccidentSeverity_SK])
REFERENCES [dbo].[AccidentSeverity] ([AccidentSeverity_SK])
GO
ALTER TABLE [dbo].[Fact_Accidents]  WITH CHECK ADD FOREIGN KEY([BuiltUpRoad_SK])
REFERENCES [dbo].[Built_up_Road_Type] ([BuiltUpRoad_SK])
GO
ALTER TABLE [dbo].[Fact_Accidents]  WITH CHECK ADD FOREIGN KEY([Date_SK])
REFERENCES [dbo].[Date] ([Date_SK])
GO
ALTER TABLE [dbo].[Fact_Accidents]  WITH CHECK ADD FOREIGN KEY([Geography_SK])
REFERENCES [dbo].[Geography] ([Geography_SK])
GO
ALTER TABLE [dbo].[Fact_Accidents]  WITH CHECK ADD FOREIGN KEY([LocalAuthorityDistrict_SK])
REFERENCES [dbo].[LocalAuthorityDistrict] ([LocalAuthorityDistrict_SK])
GO
ALTER TABLE [dbo].[Fact_Accidents]  WITH CHECK ADD FOREIGN KEY([RoadType_SK])
REFERENCES [dbo].[RoadType] ([RoadType_SK])
GO
ALTER TABLE [dbo].[Fact_Accidents]  WITH CHECK ADD FOREIGN KEY([Time_SK])
REFERENCES [dbo].[Time] ([Time_SK])
GO
ALTER TABLE [dbo].[Fact_Accidents]  WITH CHECK ADD FOREIGN KEY([UrbanOrRural_SK])
REFERENCES [dbo].[UrbanOrRural] ([UrbanOrRural_SK])
GO
ALTER TABLE [dbo].[Fact_Casualty]  WITH CHECK ADD FOREIGN KEY([AgeCasualty_SK])
REFERENCES [dbo].[Age_of_Casualty] ([AgeCasualty_SK])
GO
ALTER TABLE [dbo].[Fact_Casualty]  WITH CHECK ADD FOREIGN KEY([CasualtySeverity_SK])
REFERENCES [dbo].[CasualtySeverity] ([CasualtySeverity_SK])
GO
ALTER TABLE [dbo].[Fact_Casualty]  WITH CHECK ADD FOREIGN KEY([CasualtyType_SK])
REFERENCES [dbo].[CasualtyType] ([CasualtyType_SK])
GO
ALTER TABLE [dbo].[Fact_Casualty]  WITH CHECK ADD FOREIGN KEY([Date_SK])
REFERENCES [dbo].[Date] ([Date_SK])
GO
ALTER TABLE [dbo].[Fact_Casualty]  WITH CHECK ADD FOREIGN KEY([LocalAuthorityDistrict_SK])
REFERENCES [dbo].[LocalAuthorityDistrict] ([LocalAuthorityDistrict_SK])
GO
ALTER TABLE [dbo].[Fact_Casualty]  WITH CHECK ADD FOREIGN KEY([Sex_of_Casualty_SK])
REFERENCES [dbo].[Sex_of_Casualty] ([Sex_of_Casualty_SK])
GO
ALTER TABLE [dbo].[Fact_Variance]  WITH CHECK ADD FOREIGN KEY([Year_SK])
REFERENCES [dbo].[Year] ([Year_SK])
GO
ALTER TABLE [dbo].[Fact_Vehicle]  WITH CHECK ADD FOREIGN KEY([Journey_Purpose_SK])
REFERENCES [dbo].[Journey_Purpose] ([Journey_Purpose_SK])
GO
ALTER TABLE [dbo].[Fact_Vehicle]  WITH CHECK ADD FOREIGN KEY([Vehicle_Type_SK])
REFERENCES [dbo].[Vehicle_Type] ([Vehicle_Type_SK])
GO
