CREATE TABLE traducciones (
    id SERIAL PRIMARY KEY,
    id_libro INTEGER REFERENCES libros(id),
    idioma_traducido VARCHAR(50),
    texto_traducido TEXT
);
