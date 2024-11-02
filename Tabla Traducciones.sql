CREATE TABLE Traducciones (
    ID_Traduccion SERIAL PRIMARY KEY,
    ID_Libro INT NOT NULL,
    Texto_Original TEXT NOT NULL,
    Texto_Traducido TEXT NOT NULL,
    Idioma_Destino VARCHAR(50),
    FOREIGN KEY (ID_Libro) REFERENCES Libros(ID_Libro) ON DELETE CASCADE
);

SELECT * FROM traducciones; 