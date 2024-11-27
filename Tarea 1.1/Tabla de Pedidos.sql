-- 6. Tabla de Pedidos
CREATE TABLE pedidos (
    id_pedido SERIAL PRIMARY KEY,
    id_cliente INT REFERENCES clientes(id_cliente) ON DELETE CASCADE,
    descripcion TEXT NOT NULL,
    materiales JSONB, -- JSON que puede almacenar detalles sobre materiales solicitados
    diseno_personalizado TEXT,
    presupuesto NUMERIC(10, 2),
    calendario_produccion TIMESTAMP,
    id_artesano INT REFERENCES artesanos(id_artesano) ON DELETE SET NULL,
    id_disenio INT REFERENCES disenios(id_disenio) ON DELETE SET NULL,
    estado VARCHAR(50) NOT NULL
);
