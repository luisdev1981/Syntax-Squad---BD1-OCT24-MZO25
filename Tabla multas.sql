CREATE TABLE Multas (
    ID_Multa SERIAL PRIMARY KEY,
    ID_Prestamo INT NOT NULL,
    Monto DECIMAL(10, 2) NOT NULL,
    Fecha_Incidencia DATE NOT NULL,
    Estado VARCHAR(20) CHECK (Estado IN ('Pendiente', 'Pagada')),
    FOREIGN KEY (ID_Prestamo) REFERENCES Prestamos(ID_Prestamo) ON DELETE CASCADE
);

SELECT * FROM multas;