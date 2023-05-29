--
-- PostgreSQL database dump
--

-- Dumped from database version 14.6 (Ubuntu 14.6-0ubuntu0.22.04.1)
-- Dumped by pg_dump version 14.6 (Ubuntu 14.6-0ubuntu0.22.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: dates; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dates (
    id integer NOT NULL,
    day text
);


--
-- Name: dates_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: dates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dates_id_seq OWNED BY public.dates.id;


--
-- Name: places; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.places (
    id integer NOT NULL,
    name text,
    image text
);


--
-- Name: places_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.places_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: places_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.places_id_seq OWNED BY public.places.id;


--
-- Name: times; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.times (
    id integer NOT NULL,
    hour text
);


--
-- Name: times_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.times_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: times_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.times_id_seq OWNED BY public.times.id;


--
-- Name: dates id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dates ALTER COLUMN id SET DEFAULT nextval('public.dates_id_seq'::regclass);


--
-- Name: places id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.places ALTER COLUMN id SET DEFAULT nextval('public.places_id_seq'::regclass);


--
-- Name: times id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.times ALTER COLUMN id SET DEFAULT nextval('public.times_id_seq'::regclass);


--
-- Data for Name: dates; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.dates VALUES (1, '2023-08-01');
INSERT INTO public.dates VALUES (2, '2023-09-01');
INSERT INTO public.dates VALUES (3, '2023-10-01');
INSERT INTO public.dates VALUES (4, '2023-11-01');
INSERT INTO public.dates VALUES (5, '2023-12-15');
INSERT INTO public.dates VALUES (6, '2023-12-14');
INSERT INTO public.dates VALUES (7, '2023-12-3');
INSERT INTO public.dates VALUES (9, '2023-12-30');
INSERT INTO public.dates VALUES (10, '2023-12-08');
INSERT INTO public.dates VALUES (8, '2023-12-03');


--
-- Data for Name: places; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.places VALUES (1, 'Paris, França', 'https://vivaomundo.com.br/wp-content/uploads/2018/06/PARIS.jpg');
INSERT INTO public.places VALUES (2, 'Barreira de Corais, Austrália', 'https://vivaomundo.com.br/wp-content/uploads/2018/06/Grande-Barreira.jpg');
INSERT INTO public.places VALUES (3, 'Bora, Polinésia Francesa', 'https://vivaomundo.com.br/wp-content/uploads/2018/06/bora-bora.jpg');
INSERT INTO public.places VALUES (4, 'Florença, Itália', 'https://vivaomundo.com.br/wp-content/uploads/2018/06/jeff-ackley-761049-unsplash.jpg');
INSERT INTO public.places VALUES (5, 'Tóquio, Japão', 'https://vivaomundo.com.br/wp-content/uploads/2018/06/jezael-melgoza-748008-unsplash.jpg');
INSERT INTO public.places VALUES (6, 'Cusco, Peru', 'https://vivaomundo.com.br/wp-content/uploads/2018/06/MACHU-PICHU.jpg');
INSERT INTO public.places VALUES (7, 'Londres, Inglaterra', 'https://vivaomundo.com.br/wp-content/uploads/2018/06/joao-barbosa-781544-unsplash.jpg');
INSERT INTO public.places VALUES (8, 'Roma, Italia', 'https://vivaomundo.com.br/wp-content/uploads/2018/06/caleb-miller-738108-unsplash.jpg');
INSERT INTO public.places VALUES (9, 'Nova York, EUA', 'https://vivaomundo.com.br/wp-content/uploads/2014/03/NYC-1.jpg');
INSERT INTO public.places VALUES (10, 'Barcelona, Espanha', 'https://vivaomundo.com.br/wp-content/uploads/2018/06/BARCELONA.jpg');


--
-- Data for Name: times; Type: TABLE DATA; Schema: public; Owner: -
--

INSERT INTO public.times VALUES (1, '09:00');
INSERT INTO public.times VALUES (2, '12:00');
INSERT INTO public.times VALUES (3, '15:00');
INSERT INTO public.times VALUES (4, '20:00');
INSERT INTO public.times VALUES (5, '22:00');
INSERT INTO public.times VALUES (6, '23:00');


--
-- Name: dates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.dates_id_seq', 10, true);


--
-- Name: places_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.places_id_seq', 10, true);


--
-- Name: times_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.times_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

