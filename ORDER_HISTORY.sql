USE [PIRATES]
GO

/****** Object:  Table [dbo].[ORDER_HISTORY]    Script Date: 10/1/2016 2:19:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ORDER_HISTORY](
	[EMAIL] [varchar](30) NOT NULL,
	[AMOUNT] [int] NOT NULL,
	[TAX] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EMAIL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[ORDER_HISTORY]  WITH CHECK ADD FOREIGN KEY([EMAIL])
REFERENCES [dbo].[USERS] ([EMAIL])
GO

