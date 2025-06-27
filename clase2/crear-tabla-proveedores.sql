# script para la creación de la tabla proveedores

CREATE TABLE proveedores
(
    idProveedor tinyint unsigned auto_increment primary key,
    razonSocial varchar(100) unique not null,
    cuit bigint unique not null,
    telefono varchar(20) not null,
    email varchar(100) not null,
    direccion varchar(100) not null
);
