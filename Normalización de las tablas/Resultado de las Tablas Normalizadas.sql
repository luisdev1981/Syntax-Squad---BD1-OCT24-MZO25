-- Tabla de Autores
CREATE TABLE autores (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE,
    nacionalidad VARCHAR(50)
);

-- Tabla de Libros
CREATE TABLE libros (
    id SERIAL PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    fecha_publicacion DATE,
    idioma_original VARCHAR(50),
    resumen TEXT,
    clasificacion_estelar VARCHAR(50),
    ubicacion_fisica VARCHAR(255),
    ubicacion_digital VARCHAR(255),
    metadatos JSONB,
    id_autor INTEGER REFERENCES autores(id) -- Clave foránea
);

-- Tabla de Usuarios
CREATE TABLE usuarios (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabla de Préstamos
CREATE TABLE prestamos (
    id SERIAL PRIMARY KEY,
    id_usuario INTEGER REFERENCES usuarios(id),
    id_libro INTEGER REFERENCES libros(id),
    fecha_prestamo TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_devolucion TIMESTAMP,
    renovado BOOLEAN DEFAULT FALSE
);

-- Tabla de Multas
CREATE TABLE multas (
    id SERIAL PRIMARY KEY,
    id_prestamo INTEGER REFERENCES prestamos(id),
    monto NUMERIC(10, 2) NOT NULL,
    pagada BOOLEAN DEFAULT FALSE
);

-- Tabla de Ejemplares
CREATE TABLE ejemplares (
    id SERIAL PRIMARY KEY,
    id_libro INTEGER REFERENCES libros(id),
    estado VARCHAR(50),
    disponible BOOLEAN DEFAULT TRUE
);

-- Tabla de Traducciones
CREATE TABLE traducciones (
    id SERIAL PRIMARY KEY,
    id_libro INTEGER REFERENCES libros(id),
    idioma_traducido VARCHAR(50),
    texto_traducido TEXT
);

-- Tabla de Temas
CREATE TABLE temas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) UNIQUE NOT NULL
);

-- Tabla de palabras clave
CREATE TABLE palabras_clave (
    id SERIAL PRIMARY KEY,
    palabra VARCHAR(100) UNIQUE NOT NULL
);

-- Tabla de relación muchos a muchos entre Libros y Palabras Clave
CREATE TABLE libros_palabras_clave (
    id_libro INTEGER REFERENCES libros(id),
    id_palabra INTEGER REFERENCES palabras_clave(id),
    PRIMARY KEY (id_libro, id_palabra)
);

-- Tabla de relación muchos a muchos entre Libros y Temas
CREATE TABLE libros_temas (
    id_libro INTEGER REFERENCES libros(id),
    id_tema INTEGER REFERENCES temas(id),
    PRIMARY KEY (id_libro, id_tema)
);

-- Tabla de Recomendaciones
CREATE TABLE recomendaciones (
    id SERIAL PRIMARY KEY,
    id_usuario INTEGER REFERENCES usuarios(id),
    id_libro INTEGER REFERENCES libros(id),
    fecha_recomendacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
