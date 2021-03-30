USE [DW]
GO

/****** Object:  Table [dbo].[order_fact]    Script Date: 4.3.2020 г. 5:20:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[order_fact](
	[order_fact_id] [int] IDENTITY(1,1) NOT NULL,
	[source_order_id] [int] NOT NULL,
	[account_id] [int] NOT NULL,
	[account_opened_at_id] [int] NOT NULL,
	[order_type_id] [int] NOT NULL,
	[district_id] [int] NOT NULL,
	[amount] [decimal](18, 5) NOT NULL,
 CONSTRAINT [PK_order_fact] PRIMARY KEY CLUSTERED 
(
	[order_fact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

