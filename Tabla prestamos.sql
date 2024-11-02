CREATE TABLE Prestamos (
    ID_Prestamo SERIAL PRIMARY KEY,
    ID_Libro INT NOT NULL,
    ID_Usuario INT NOT NULL,
    Fecha_Prestamo DATE NOT NULL,
    Fecha_Devolucion DATE,
    Estado VARCHAR(20) CHECK (Estado IN ('Activo', 'Devuelto', 'Atrasado')),
    FOREIGN KEY (ID_Libro) REFERENCES Libros(ID_Libro) ON DELETE CASCADE,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuarios(ID_Usuario) ON DELETE CASCADE
);

SELECT * FROM prestamos;