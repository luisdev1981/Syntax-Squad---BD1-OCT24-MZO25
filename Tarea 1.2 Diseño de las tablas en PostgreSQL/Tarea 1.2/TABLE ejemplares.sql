CREATE TABLE ejemplares (
    id SERIAL PRIMARY KEY,
    id_libro INTEGER REFERENCES libros(id),
    estado VARCHAR(50),
    disponible BOOLEAN DEFAULT TRUE
);