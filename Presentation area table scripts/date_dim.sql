USE [DW]
GO

/****** Object:  Table [dbo].[date_dim]    Script Date: 4.3.2020 г. 5:19:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[date_dim](
	[date_id] [int] IDENTITY(1,1) NOT NULL,
	[date] [date] NOT NULL,
	[year] [int] NOT NULL,
	[half] [int] NOT NULL,
	[quarter] [int] NOT NULL,
	[month] [int] NOT NULL,
	[day] [int] NOT NULL,
	[weekday] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_date_dim] PRIMARY KEY CLUSTERED 
(
	[date_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

