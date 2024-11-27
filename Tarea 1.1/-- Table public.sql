-- Table public.autores

-- DROP TABLE IF EXISTS public.autores;

CREATE TABLE IF NOT EXISTS public.autores
(
    id integer NOT NULL DEFAULT nextval('autores_id_seq'::regclass),
    nombre character varying(100) COLLATE pg_catalog."default" NOT NULL,
    apellido character varying(100) COLLATE pg_catalog."default" NOT NULL,
    fecha_nacimiento date,
    nacionalidad character varying(50) COLLATE pg_catalog."default",
    CONSTRAINT autores_pkey PRIMARY KEY (id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.autores
    OWNER to postgres;

REVOKE ALL ON TABLE public.autores FROM user_role;

GRANT ALL ON TABLE public.autores TO admin_role;

GRANT ALL ON TABLE public.autores TO postgres;

GRANT UPDATE, INSERT, SELECT ON TABLE public.autores TO user_role;