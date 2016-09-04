CREATE TABLE [dbo].[persona](
	[nombre] [varchar](20) NOT NULL,
	[apellido1] [varchar](20) NOT NULL,
	[apellido2] [varchar](20) NULL,
	[cedula] [varchar](11) NOT NULL primary key,
	[carne] [varchar](10) NOT NULL,
	[sexo] [bit] NOT NULL,
	[fechaNac] [date] NOT NULL,
	[email] [varchar](40) NULL,
	id nvarchar(128) FOREIGN KEY REFERENCES AspNetUsers(Id));

CREATE TABLE telefono(
cedula varchar(11),
telefono varchar(10),
FOREIGN KEY (cedula) REFERENCES persona(cedula),
PRIMARY KEY(cedula, telefono) 
);

create table permisos_asociados_roles(
id_permiso int FOREIGN KEY REFERENCES permisos(id_permiso),
id_rol nvarchar(128) FOREIGN KEY REFERENCES AspNetRoles(Id),
PRIMARY KEY (id_permiso, id_rol)
);