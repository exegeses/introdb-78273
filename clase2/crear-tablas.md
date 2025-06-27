# Creación de tablas en SQL

> para crear una tabla utilizamos el comando 
> **CREATE TABLE**

> Nota: para poder interactuar con una base de datos debemos activarla primero
> para activar una base de datos utilizamos el comando

    USE nombreBase;  

> Sintaxis:  

    CREATE TABLE nombre  
    (
        nombreCampo tipoDato [modificadores],  
        nombreCampo tipoDato [modificadores],  
        nombreCampo tipoDato [modificadores],  
        nombreCampo tipoDato [modificadores]
    );    

    
> Ejemplo práctico:  

    CREATE TABLE personas  
    (  
        id int auto_increment primary key,  
        apellido varchar(100) not null,  
        nombre varchar(100) not null,  
        dni int unique not null,  
        alta date not null  
    );  
