# consultas a través de una tabla pivot

SELECT
    producto, precio,
    razonsocial, telefono
FROM
    productos
JOIN  productos_proveedores AS pp
  ON  productos.idProducto = pp.idProducto
JOIN  proveedores
  ON  proveedores.idProveedor = pp.idProveedor;

-- -------

SELECT
    producto, precio,
    razonsocial, telefono
FROM
    proveedores
JOIN  productos_proveedores AS pp
  ON  proveedores.idProveedor = pp.idProveedor
JOIN  productos
  ON  productos.idProducto = pp.idProducto;

-- ------
SELECT
    producto, precio,
    razonsocial, telefono
FROM
    productos,
    proveedores,
    productos_proveedores AS pp
WHERE
    productos.idProducto = pp.idProducto
  AND
    proveedores.idProveedor = pp.idProveedor;