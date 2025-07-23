CREATE TABLE autores (
     idAutor SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
     nombre VARCHAR(100) NOT NULL,
     nacionalidad VARCHAR(50) NOT NULL
);

INSERT INTO autores
        (nombre, nacionalidad)
    VALUES
       ('Isaac Asimov', 'Rusia/EE.UU.'),
       ('Stanisław Lem', 'Polonia'),
       ('Terry Pratchett', 'Reino Unido'),
       ('J. R. R. Tolkien', 'Reino Unido'),
       ('H. P. Lovecraft', 'EE.UU.'),
       ('Michael Crichton', 'EE.UU.'),
       ('Stephen Fry', 'Reino Unido'),
       ('Michio Kaku', 'EE.UU.'),
       ('Stephen Hawking', 'Reino Unido'),
       ('Carl Sagan', 'EE.UU.'),
       ('Bill Bryson', 'EE.UU.');



CREATE TABLE libros_autores (
    idLibro SMALLINT UNSIGNED,
    idAutor SMALLINT UNSIGNED,
    PRIMARY KEY (idLibro, idAutor),
    FOREIGN KEY (idLibro) REFERENCES libros (idLibro),
    FOREIGN KEY (idAutor) REFERENCES autores (idAutor)
);