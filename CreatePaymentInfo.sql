USE [TrainingDB]
GO

/****** Object:  Table [dbo].[Contractinfo]    Script Date: 15/08/2022 08:40:25 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Contractinfo](
	[Con_Code] [nvarchar](50) NOT NULL,
	[Con_Amt] [money] NULL,
	[Con_Ref] [nvarchar](100) NULL,
 CONSTRAINT [PK_Contractinfo] PRIMARY KEY CLUSTERED 
(
	[Con_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


