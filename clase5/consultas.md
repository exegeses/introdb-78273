# Consultas en SQL

> Podemos realizar consultas a un 
1. servidor de base de datos 
2. base de datos 
3. tablas
4. vistas

## Consultas a server

    -- listar todas las bases de datos de nuestro server
    SHOW DATABASES;  

> La palabra reservada más importante o al menos la más utilizada para las consultas es **SELECT**

    -- ver cuál es la base de datos activa  
    SELECT DATABASE();  

## Consultas a bases

    -- listar todas las tablas dentro de una base de datos  
    SHOW TABLES;  

## Consultas a tablas

    -- mostrar la estructura de una tabla  
    DESCRIBE nombreTabla;  

> Para realizar consultas a una tabla y que nos devuelva una grilla de resultados, 
> vamos a utilizar la palabra reservada **SELECT** acompañada de la palabra **FROM**

    SELECT * FROM nombreTabla;  
    SELECT * FROM marcas;  
    SELECT * FROM productos;  

> Cuándo luego de la palabra **SELECT** utilizamos * (arterisko)
> vamos a traer los datos de todas las columnas que contenga esa tabla

> Si queremos traer registros de solamente algunas de las columnas (no todas)
> Vamos a necesitar especificar luego de la palabra **SELECT** cada una de las columnas separadas por comas (en lugar del * )

    SELECT producto, precio   
      FROM productos;    

### orden de resultados
> Para ordenar los resultados según una columna en particular tenemos el modificador **ORDER BY** seguido de la columna de orden

    SELECT * FROM marcas  
      ORDER BY idMarca;  

    SELECT producto, precio  
      FROM productos
      ORDER BY precio;  

> Si luego del modificador **ORDER BY** 
> utilizamos la palabra **DESC** vamos a generar un orden descendente

    SELECT producto, precio  
      FROM productos  
      ORDER BY precio DESC;  

> Podemos utilizar dos criterios de orden

    SELECT producto, precio  
      FROM productos  
      ORDER BY idMarca, precio;  
