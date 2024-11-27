-- Table: public.factura

-- DROP TABLE IF EXISTS public.factura;

CREATE TABLE IF NOT EXISTS public.factura
(
    id_factura numeric(20,0) NOT NULL,
    fecha_factura numeric NOT NULL,
    cantidad_producto numeric NOT NULL,
    nombre_producto text COLLATE pg_catalog."default" NOT NULL,
    valor_producto numeric,
    total_factura numeric,
    "FK_id_cliente" numeric,
    CONSTRAINT factura_pkey PRIMARY KEY (id_factura),
    CONSTRAINT "FK_id_cliente" FOREIGN KEY ("FK_id_cliente")
        REFERENCES public.clientes (id_cliente) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.factura
    OWNER to postgres;
-- Index: fki_FK_id_cliente

-- DROP INDEX IF EXISTS public."fki_FK_id_cliente";

CREATE INDEX IF NOT EXISTS "fki_FK_id_cliente"
    ON public.factura USING btree
    ("FK_id_cliente" ASC NULLS LAST)
    TABLESPACE pg_default;