CREATE TABLE prestamos (
    id SERIAL PRIMARY KEY,
    id_usuario INTEGER REFERENCES usuarios(id),
    id_libro INTEGER REFERENCES libros(id),
    fecha_prestamo TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_devolucion TIMESTAMP,
    renovado BOOLEAN DEFAULT FALSE
);
