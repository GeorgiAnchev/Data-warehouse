USE [DW]
GO

/****** Object:  Table [dbo].[card_type_dim]    Script Date: 4.3.2020 г. 5:19:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[card_type_dim](
	[card_type_dim_id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NOT NULL,
	[year_issued] [int] NOT NULL,
 CONSTRAINT [PK_card_type_dim] PRIMARY KEY CLUSTERED 
(
	[card_type_dim_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

