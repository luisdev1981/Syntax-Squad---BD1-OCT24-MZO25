CREATE TABLE libros (
    id SERIAL PRIMARY KEY,
    id_autor INTEGER REFERENCES autores(id),
    titulo VARCHAR(255) NOT NULL,
    fecha_publicacion DATE,
    idioma_original VARCHAR(50),
    resumen TEXT,
    palabras_clave TEXT[],
    ubicacion_fisica VARCHAR(255),
    ubicacion_digital VARCHAR(255),
    clasificacion_estelar VARCHAR(50),
    metadatos JSONB
);