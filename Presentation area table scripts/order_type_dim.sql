USE [DW]
GO

/****** Object:  Table [dbo].[order_type_dim]    Script Date: 4.3.2020 г. 5:20:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[order_type_dim](
	[order_type_id] [int] IDENTITY(1,1) NOT NULL,
	[type] [nvarchar](50) NULL,
	[k_symbol_source] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_order_type_dim] PRIMARY KEY CLUSTERED 
(
	[order_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

