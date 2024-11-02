CREATE TABLE Libros (
    ID_Libro SERIAL PRIMARY KEY,
    Titulo VARCHAR(255) NOT NULL,
    Autor VARCHAR(100) NOT NULL,
    Fecha_Publicacion DATE,
    Idioma_Original VARCHAR(50),
    Resumen TEXT,
    Palabras_Clave TEXT,
    Ubicacion_Fisica VARCHAR(255),
    Ubicacion_Digital VARCHAR(255),
    Clasificacion_Estelar VARCHAR(100)
);
