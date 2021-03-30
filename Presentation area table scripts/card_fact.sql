USE [DW]
GO

/****** Object:  Table [dbo].[card_fact]    Script Date: 4.3.2020 г. 5:19:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[card_fact](
	[card_fact_id] [int] IDENTITY(1,1) NOT NULL,
	[card_count] [int] NOT NULL,
	[card_type_dim_id] [int] NOT NULL,
	[account_district_id] [int] NOT NULL,
 CONSTRAINT [PK_card_fact] PRIMARY KEY CLUSTERED 
(
	[card_fact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

