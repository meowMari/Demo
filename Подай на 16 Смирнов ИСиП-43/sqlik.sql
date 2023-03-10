USE [DBase]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 24.01.2023 11:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[Gender] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Birthday] [datetime] NULL,
	[Email] [nvarchar](50) NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[Surname] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PriceClient]    Script Date: 24.01.2023 11:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PriceClient](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Service] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](50) NULL,
	[Time] [nvarchar](50) NULL,
	[Price] [nvarchar](50) NULL,
	[Discount] [nvarchar](50) NULL,
 CONSTRAINT [PK_PriceClient2023] PRIMARY KEY CLUSTERED 
(
	[Service] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceClient]    Script Date: 24.01.2023 11:21:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceClient](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Service] [nvarchar](50) NULL,
	[ServiceDate] [datetime] NULL,
	[Surname] [nvarchar](50) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ServiceClient]  WITH CHECK ADD  CONSTRAINT [FK_ServiceClient_Clients] FOREIGN KEY([Surname])
REFERENCES [dbo].[Clients] ([Surname])
GO
ALTER TABLE [dbo].[ServiceClient] CHECK CONSTRAINT [FK_ServiceClient_Clients]
GO
