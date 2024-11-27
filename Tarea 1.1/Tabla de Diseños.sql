-- 5. Tabla de Diseños
CREATE TABLE disenios (
    id_disenio SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo VARCHAR(50), -- Ej.: predefinido, personalizado
    elementos_graficos JSONB
);
