# Modificar registros y datos en SQL

> para modificar los datos de una tabla utilizamos el comando **UPDATE**
> debemos especificar un filtro utilizando la palabra reservada **WHERE** seguida de una condición

> Sintaxis:  

    UPDATE nombreTabla  
       SET  
            nombreCampo = valor  
     WHERE  condicion;


> Ejemplo práctico: 

    UPDATE proveedores  
       SET  
            telefono = '0341-456-7891' 
      WHERE idProveedor = 4;  

> suponiendo que tenemos una tabla llamada productos
> en esa tabla hay una columna llamada precio
> Y otra columna llamada idMarca
> si quisiéramos incrementar el precio de todos los productos de una marca: éste sería un ejemplo de modificación masiva

    UPDATE productos  
      SET  
            precio = precio * 1.05  
     WHERE  idMarca = 13;  
