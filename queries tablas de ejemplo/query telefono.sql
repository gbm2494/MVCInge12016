USE [autenticacion]
GO

/****** Object:  Table [dbo].[telefono]    Script Date: 04/09/2016 01:54:05 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[telefono](
	[cedula] [varchar](11) NOT NULL,
	[telefono] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[cedula] ASC,
	[telefono] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[telefono]  WITH CHECK ADD FOREIGN KEY([cedula])
REFERENCES [dbo].[persona] ([cedula])
GO


