# Tablas proyecto catálogo

create table marcas
(
    idMarca tinyint unsigned auto_increment primary key,
    marca varchar(100) not null unique
);

create table categorias
(
    idCategoria tinyint unsigned auto_increment primary key,
    categoria varchar(100) not null unique
);

create table productos
(
    idProducto smallint unsigned auto_increment primary key,
    producto varchar(100) not null unique,
    precio decimal(10,2) not null,
    idMarca tinyint unsigned not null,
    idCategoria tinyint unsigned not null,
    descripcion varchar(1000),
    imagen varchar(100) not null,
    activo boolean not null,
    foreign key (idMarca) references marcas (idMarca),
    foreign key (idCategoria) references categorias (idCategoria)
);
