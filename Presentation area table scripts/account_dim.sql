USE [DW]
GO

/****** Object:  Table [dbo].[account_dim]    Script Date: 4.3.2020 г. 5:17:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[account_dim](
	[account_id] [int] NOT NULL,
	[district_id] [int] NOT NULL,
	[frequency] [nvarchar](50) NOT NULL,
	[date_created] [date] NOT NULL,
 CONSTRAINT [PK_account] PRIMARY KEY CLUSTERED 
(
	[account_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

