CREATE TABLE telefono(
cedula varchar(11),
telefono varchar(10),
FOREIGN KEY (cedula) REFERENCES persona(cedula),
PRIMARY KEY(cedula, telefono) 
);