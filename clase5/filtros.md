# Filtrado de resultados

> Filtrar resultados de una consulta significa que vamos a traer únicamente los registros que cumplan con una condición
> Para implementar un filtro utilizamos la palabra reservada **WHERE** seguida de una condición 

    SELECT campo, campo  
      FROM tabla  
      WHERE condicion;  

> Práctica: 
> obtener nombre del producto y precio del producto con un precio hasta 800

    SELECT producto, precio    
      FROM productos    
      WHERE precio <= 800;  

> obtener nombre del producto y precio del producto con un precio entre 100 y 800

    SELECT producto, precio  
      FROM productos  
      WHERE precio >= 100  
        AND precio <= 800;  

    SELECT producto, precio  
      FROM productos  
      WHERE precio 
        BETWEEN 100 AND 800;  

    SELECT * FROM personas
      WHERE alta 
        BETWEEN '2005-01-01' AND '2007-12-31'
      ORDER BY alta

> Obtener nombre y precio de productos 
> de las marcas Amazon (11) y Lenovo (6)

    SELECT producto, precio  
      FROM productos  
      WHERE idMarca = 11  
       OR idMarca = 6;  

> función IN()

    SELECT producto, precio  
      FROM productos  
      WHERE idMarca IN( 6, 11);  

> Nota: a la hora de escribir una consulta tenemos un orden que respetar

    SELECT [*, campo, campo]  
      FROM [tablas]  
      WHERE condición  
      ORDER BY [campos]  


> Manual oficial
> https://dev.mysql.com/doc/refman/8.0/en/

> DDS (Data Definition Statements) estructura
> https://dev.mysql.com/doc/refman/8.0/en/sql-data-definition-statements.html
 
    CREACIÓN, MODIFICACIÓN y BAJA de bases, tablas, vistas, etc

    ej: CREATE TABLE nombretabla

> DMS (Data Manipulation Statements) datos
> https://dev.mysql.com/doc/refman/8.0/en/sql-data-manipulation-statements.html 

    ej: SELECT, INSERT, UPDATE, DELETE 

