CREATE TABLE Usuarios (
    ID_Usuario SERIAL PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Civilizacion VARCHAR(100),
    Email VARCHAR(100) UNIQUE NOT NULL,
    Telefono VARCHAR(15)
);
