# Modificar registros y datos en SQL

> para modificar los datos de una tabla utilizamos el comando **UPDATE**
> debemos especificar un filtro utilizando la palabra reservada **WHERE** seguida de una condición

> Sintaxis:  

    UPDATE nombreTabla  
       SET  
            nombreCampo = valor  
     WHERE  condicion


> Ejemplo práctico: 

    UPDATE proveedores  
       SET  
            telefono = '0341-456-7891' 
      WHERE idProveedor = 4;  


0341-456-7890
0341-456-7891