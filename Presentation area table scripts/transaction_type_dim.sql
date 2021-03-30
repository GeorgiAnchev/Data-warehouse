USE [DW]
GO

/****** Object:  Table [dbo].[transaction_type_dim]    Script Date: 4.3.2020 г. 5:20:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[transaction_type_dim](
	[transaction_type_id] [int] IDENTITY(1,1) NOT NULL,
	[operation] [nvarchar](50) NULL,
	[operation_source] [nvarchar](50) NULL,
	[type] [nvarchar](50) NOT NULL,
	[type_source] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_transaction_type_dim] PRIMARY KEY CLUSTERED 
(
	[transaction_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

