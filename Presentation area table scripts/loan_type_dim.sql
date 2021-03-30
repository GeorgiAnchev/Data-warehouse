USE [DW]
GO

/****** Object:  Table [dbo].[loan_type_dim]    Script Date: 4.3.2020 г. 5:20:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[loan_type_dim](
	[loan_type_id] [int] IDENTITY(1,1) NOT NULL,
	[duration] [int] NOT NULL,
	[status] [nvarchar](50) NOT NULL,
	[status_source] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_loan_type_dim_1] PRIMARY KEY CLUSTERED 
(
	[loan_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

