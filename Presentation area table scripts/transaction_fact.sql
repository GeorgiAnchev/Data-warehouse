USE [DW]
GO

/****** Object:  Table [dbo].[transaction_fact]    Script Date: 4.3.2020 г. 5:20:50 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[transaction_fact](
	[transaction_fact_id] [int] IDENTITY(1,1) NOT NULL,
	[source_id] [int] NOT NULL,
	[date_id] [int] NOT NULL,
	[account_id] [int] NOT NULL,
	[district_id] [int] NOT NULL,
	[transaction_type_id] [int] NOT NULL,
	[amount] [decimal](18, 5) NOT NULL,
	[balance] [decimal](18, 5) NOT NULL,
 CONSTRAINT [PK_transaction_fact] PRIMARY KEY CLUSTERED 
(
	[transaction_fact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

