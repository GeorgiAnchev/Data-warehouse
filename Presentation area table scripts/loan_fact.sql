USE [DW]
GO

/****** Object:  Table [dbo].[loan_fact]    Script Date: 4.3.2020 г. 5:19:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[loan_fact](
	[loan_fact_id] [int] IDENTITY(1,1) NOT NULL,
	[loan_source_id] [int] NOT NULL,
	[district_id] [int] NOT NULL,
	[account_id] [int] NOT NULL,
	[date_id] [int] NOT NULL,
	[loan_type_id] [int] NOT NULL,
	[payments] [decimal](18, 5) NOT NULL,
	[amount] [int] NOT NULL,
 CONSTRAINT [PK_loan_fact] PRIMARY KEY CLUSTERED 
(
	[loan_fact_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

