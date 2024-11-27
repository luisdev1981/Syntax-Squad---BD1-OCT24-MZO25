-- 4. Tabla de Artesanos
CREATE TABLE artesanos (
    id_artesano SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100)
);
