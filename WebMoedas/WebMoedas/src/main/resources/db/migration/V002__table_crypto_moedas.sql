CREATE TABLE public.crypto_moedas
(
    cod_coin bigint NOT NULL DEFAULT nextval('crypto_moedas_id'::regclass),
    nome_coin character varying(50) COLLATE pg_catalog."default" NOT NULL,
    valor_coin double precision NOT NULL,
    CONSTRAINT pk_cod_coin PRIMARY KEY (cod_coin)
)

TABLESPACE pg_default;

ALTER TABLE public.crypto_moedas
    OWNER to postgres;