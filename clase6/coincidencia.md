# Consultas de coincidencia

> las consultas de coincidencia se utilizan para obtener registros que cumplan con una condición tal que contenga una cadena de caracteres
 
> vamos a traer el nombre del producto, el precio, la descripción o tal que en la columna descripción contenga la palabra "inalámbrico".

    SELECT producto, precio, descripcion  
      FROM productos  
      WHERE descripcion LIKE '%inalambrico%';  

> Utilizamos la palabra reservada **LIKE** 
> (en vez del símbolo **=**) 
> en combinación con el carácter **%** (porcentaje) 
> como una especie de comodín que podría ocupar 1 (uno), varios o hasta ningún carácter

