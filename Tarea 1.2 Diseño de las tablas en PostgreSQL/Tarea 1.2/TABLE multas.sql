CREATE TABLE multas (
    id SERIAL PRIMARY KEY,
    id_prestamo INTEGER REFERENCES prestamos(id),
    monto NUMERIC(10, 2) NOT NULL,
    pagada BOOLEAN DEFAULT FALSE
);
