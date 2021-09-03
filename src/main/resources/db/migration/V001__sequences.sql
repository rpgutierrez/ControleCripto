CREATE SEQUENCE public.users_id
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.users_id
    OWNER TO postgres;

CREATE SEQUENCE public.crypto_moedas_id
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE public.crypto_moedas_id
    OWNER TO postgres;
