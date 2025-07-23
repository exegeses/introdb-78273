# consulta a través de una tabla pivot
/*
    Obtener producto, precio (productos)
    también razonSocial, telefono (proveedores)
*/
SELECT producto, precio, razonsocial, telefono
FROM productos AS prod
JOIN productos_proveedores AS pp
  ON prod.idProducto = pp.idProducto
JOIN proveedores AS prov
  ON pp.idProveedor = prov.idProveedor;
