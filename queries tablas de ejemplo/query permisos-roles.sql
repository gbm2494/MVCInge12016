USE [autenticacion]
GO

/****** Object:  Table [dbo].[permisos_asociados_roles]    Script Date: 04/09/2016 01:53:50 p.m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[permisos_asociados_roles](
	[id_permiso] [int] NOT NULL,
	[id_rol] [nvarchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_permiso] ASC,
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[permisos_asociados_roles]  WITH CHECK ADD FOREIGN KEY([id_permiso])
REFERENCES [dbo].[permisos] ([id_permiso])
GO

ALTER TABLE [dbo].[permisos_asociados_roles]  WITH CHECK ADD FOREIGN KEY([id_rol])
REFERENCES [dbo].[AspNetRoles] ([Id])
GO


