CREATE TABLE recomendaciones (
    id SERIAL PRIMARY KEY,
    id_usuario INTEGER REFERENCES usuarios(id),
    id_libro INTEGER REFERENCES libros(id),
    fecha_recomendacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);