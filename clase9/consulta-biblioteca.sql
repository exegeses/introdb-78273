# consulta
/*
    titulo, nombre, anio
    titulo, nombre, anio, genero, editorial
*/
SELECT
        titulo, nombre, anio
FROM
        autores, libros_autores, libros
WHERE
        autores.idAutor = libros_autores.idAutor
  AND
        libros.idLibro = libros_autores.idLibro;

-- -----
SELECT
        titulo, nombre, anio
FROM
        autores
JOIN    libros_autores AS la
  ON autores.idAutor = la.idAutor
JOIN    libros
   ON libros.idLibro = la.idLibro

-- ----
SELECT
        titulo, nombre, anio, genero, editorial
FROM
        libros
JOIN
        editoriales
ON editoriales.idEditorial = libros.idEditorial
JOIN generos
ON  generos.idGenero = libros.idGenero
JOIN libros_autores la
ON libros.idLibro = la.idLibro
JOIN autores
ON la.idAutor = autores.idAutor;