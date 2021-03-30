USE [DW]
GO

/****** Object:  Table [dbo].[client_dim]    Script Date: 4.3.2020 г. 5:19:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[client_dim](
	[client_id] [int] IDENTITY(1,1) NOT NULL,
	[client_source_id] [int] NOT NULL,
	[birth_date] [date] NOT NULL,
	[sex] [nvarchar](50) NOT NULL,
	[district_id] [int] NOT NULL,
 CONSTRAINT [PK_client_dim] PRIMARY KEY CLUSTERED 
(
	[client_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

