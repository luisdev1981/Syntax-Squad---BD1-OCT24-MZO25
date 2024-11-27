-- 7. Tabla de Facturas
CREATE TABLE facturas (
    id_factura SERIAL PRIMARY KEY,
    id_pedido INT REFERENCES pedidos(id_pedido) ON DELETE CASCADE,
    monto NUMERIC(10, 2) NOT NULL,
    fecha_emision TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    estado_pago VARCHAR(50) NOT NULL
);