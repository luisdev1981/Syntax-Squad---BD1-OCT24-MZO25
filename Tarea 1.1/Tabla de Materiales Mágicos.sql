-- 2. Tabla de Materiales Mágicos
CREATE TABLE materiales_magicos (
    id_material SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    origen VARCHAR(100),
    propiedades_magicas TEXT,
    cantidad_stock INTEGER NOT NULL,
    precio_compra NUMERIC(10, 2) NOT NULL,
    id_proveedor INT REFERENCES proveedores(id_proveedor) ON DELETE SET NULL -- Relación con proveedores
);
