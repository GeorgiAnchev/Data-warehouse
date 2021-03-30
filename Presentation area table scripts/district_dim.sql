USE [DW]
GO

/****** Object:  Table [dbo].[district_dim]    Script Date: 4.3.2020 г. 5:19:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[district_dim](
	[district_id] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[region] [nvarchar](50) NOT NULL,
	[no_of_inhabitants] [int] NOT NULL,
	[no_of_municipalities_less_499] [int] NOT NULL,
	[no_of_municipalities_500_1999] [int] NOT NULL,
	[no_of_municipalities_2000_9999] [int] NOT NULL,
	[no_of_municipalities_more_10000] [int] NOT NULL,
	[no_of_cities] [int] NOT NULL,
	[ratio_of_urban_inhabitants] [decimal](18, 5) NOT NULL,
	[average_salary] [decimal](18, 5) NOT NULL,
	[unemploymant_rate_95] [decimal](18, 5) NULL,
	[unemploymant_rate_96] [decimal](18, 5) NOT NULL,
	[enterpreneurs_per_1000] [int] NOT NULL,
	[crimes_95] [int] NULL,
	[crimes_96] [int] NOT NULL,
 CONSTRAINT [PK_district_dimen] PRIMARY KEY CLUSTERED 
(
	[district_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

