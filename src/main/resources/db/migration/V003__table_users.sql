CREATE TABLE public.users
(
    cod_user bigint NOT NULL DEFAULT nextval('users_id'::regclass),
    nome character varying(50) COLLATE pg_catalog."default" NOT NULL,
    email character varying(50) COLLATE pg_catalog."default" NOT NULL,
    senha character varying(255) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT pk_cod_user PRIMARY KEY (cod_user)
)

TABLESPACE pg_default;

ALTER TABLE public.users
    OWNER to postgres;