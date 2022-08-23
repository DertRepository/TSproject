USE Payment
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

/****** Object:  Table [dbo].[PaymentInfo]    Script Date: 14.07.2022 2:07:22 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PaymentInfo](
	[Pay_ID] [int] NOT NULL,
	[Req_Name] [nvarchar](50) NULL,
	[Req_Create_Date] [datetime] NULL,
	[Req_PayDate] [datetime] NULL,
	[Req_DueDate] [datetime] NULL,
	[Req_Money] [money] NULL,
	[Req_Pct] [float] NULL,
	[Req_Remark] [nvarchar](250) NULL,
	[Req_ID] [nvarchar](50) NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Po_References] [nvarchar](50) NULL,
	[Po_Code] [nvarchar](50) NULL,
	[Po_Name] [nvarchar](100) NULL,
	[Po_SecondRef] [nvarchar](50) NULL,
	[Po_Comment] [nvarchar](250) NULL,
	[Po_Amt] [money] NULL,
	[Po_AmtBalance] [money] NULL,
	[Po_AmtToPay] [money] NULL,
	[De_Ref] [nvarchar](50) NULL,
	[De_Code] [nvarchar](50) NULL,
	[De_Desc] [nvarchar](50) NULL,
	[De_Amt] [money] NULL,
	[De_AmtBalance] [money] NULL,
	[Con_Code] [nvarchar](50) NULL,
	[Con_Amt] [money] NULL,
	[Con_Ref] [money] NULL,
	[Add_Journal] [nvarchar](50) NULL,
	[Add_Additional] [nvarchar](100) NULL,
 CONSTRAINT [PK_PaymentInfo] PRIMARY KEY CLUSTERED 
(
	[Pay_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PaymentInfo] ADD  DEFAULT (getdate()) FOR [Req_Create_Date]
GO


/****** Object:  Table [dbo].[PaymentSequence]    Script Date: 14.07.2022 2:09:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PaymentSequence](
	[PayIDIncrement] [nvarchar](50) NULL
) ON [PRIMARY]
GO

TRUNCATE TABLE PaymentSequence;
TRUNCATE TABLE PaymentInfo;
TRUNCATE TABLE Contractinfo;

SELECT * FROM Contractinfo;
SELECT * FROM PaymentInfo;

