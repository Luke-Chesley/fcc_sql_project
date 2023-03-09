--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    has_life boolean NOT NULL,
    size_in_light_years integer,
    size_in_100_light_years integer,
    color text,
    has_humans boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20),
    has_life boolean NOT NULL,
    size integer,
    color character varying(20),
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: oceans; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.oceans (
    oceans_id integer NOT NULL,
    name character varying(20),
    color character varying(20) NOT NULL
);


ALTER TABLE public.oceans OWNER TO freecodecamp;

--
-- Name: oceans_ocean_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.oceans_ocean_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.oceans_ocean_id_seq OWNER TO freecodecamp;

--
-- Name: oceans_ocean_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.oceans_ocean_id_seq OWNED BY public.oceans.oceans_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20),
    has_life boolean NOT NULL,
    color character varying(20),
    size integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    has_life boolean,
    size numeric(3,1) NOT NULL,
    color character varying(20),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: oceans oceans_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.oceans ALTER COLUMN oceans_id SET DEFAULT nextval('public.oceans_ocean_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 87400, 87, 'blue', true);
INSERT INTO public.galaxy VALUES (2, 'Mailn', false, 118700, 118, 'green', false);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', false, 152000, 152, 'yellow', false);
INSERT INTO public.galaxy VALUES (4, 'Neve', false, 332100, 332, 'orange', false);
INSERT INTO public.galaxy VALUES (5, 'NGC', true, 101000, 101, 'pink', false);
INSERT INTO public.galaxy VALUES (6, 'Herc', false, 459800, 459, 'red', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', true, 10, 'gray', 1);
INSERT INTO public.moon VALUES (2, 'Europa', false, 13, 'yellow', 2);
INSERT INTO public.moon VALUES (3, 'Io', false, 34, 'gray', 1);
INSERT INTO public.moon VALUES (4, 'Ganny', true, 35, 'red', 4);
INSERT INTO public.moon VALUES (5, 'Himalia', false, 37, 'blue', 4);
INSERT INTO public.moon VALUES (6, 'Titan', false, 44, 'gray', 3);
INSERT INTO public.moon VALUES (7, 'Callisto', false, 46, 'yellow', 4);
INSERT INTO public.moon VALUES (8, 'Enclala', false, 48, 'yellow', 1);
INSERT INTO public.moon VALUES (9, 'Mimas', false, 50, 'red', 1);
INSERT INTO public.moon VALUES (10, 'Amaltaj', false, 62, 'red', 6);
INSERT INTO public.moon VALUES (11, 'Iapetus', true, 77, 'red', 4);
INSERT INTO public.moon VALUES (12, 'Dione', false, 78, 'blue', 7);
INSERT INTO public.moon VALUES (13, 'Hyperion', true, 100, 'blue', 8);
INSERT INTO public.moon VALUES (14, 'Thabe', false, 101, 'red', 9);
INSERT INTO public.moon VALUES (15, 'Carpo', true, 99, 'green', 1);
INSERT INTO public.moon VALUES (16, 'Carme', true, 103, 'blue', 2);
INSERT INTO public.moon VALUES (17, 'Ananke', false, 109, 'green', 3);
INSERT INTO public.moon VALUES (18, 'Empapa', false, 110, 'gray', 5);
INSERT INTO public.moon VALUES (19, 'Adrasta', true, 111, 'blue', 2);
INSERT INTO public.moon VALUES (20, 'Elara', false, 344, 'gray', 1);


--
-- Data for Name: oceans; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.oceans VALUES (1, 'Southern', 'blue');
INSERT INTO public.oceans VALUES (2, 'Atlantic', 'blue');
INSERT INTO public.oceans VALUES (3, 'Pacific', 'blue');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', true, 'blue', 10, 1);
INSERT INTO public.planet VALUES (2, 'Venus', true, 'blue', 100, 2);
INSERT INTO public.planet VALUES (3, 'Neptune', false, 'red', 41, 4);
INSERT INTO public.planet VALUES (4, 'Juptier', false, 'brown', 31, 1);
INSERT INTO public.planet VALUES (5, 'Mars', true, 'red', 90, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', false, 'green', 33, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', true, 'pink', 15, 2);
INSERT INTO public.planet VALUES (8, 'Mercury', false, 'orange', 400, 1);
INSERT INTO public.planet VALUES (9, 'Earthtwo', true, 'blue', 3, 2);
INSERT INTO public.planet VALUES (10, 'Greenville', true, 'green', 33, 3);
INSERT INTO public.planet VALUES (11, 'Yellowtown', true, 'yellow', 190, 4);
INSERT INTO public.planet VALUES (12, 'Orange', false, 'orange', 44, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', true, 10.5, 'yellow', 1);
INSERT INTO public.star VALUES (2, 'Vega', false, 22.1, 'blue', 1);
INSERT INTO public.star VALUES (3, 'Sirius', false, 31.1, 'green', 1);
INSERT INTO public.star VALUES (4, 'Antares', true, 44.3, 'red', 1);
INSERT INTO public.star VALUES (5, 'Alpha', false, 14.5, 'blue', 1);
INSERT INTO public.star VALUES (6, 'Omega', true, 89.9, 'pink', 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: oceans_ocean_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.oceans_ocean_id_seq', 3, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_size_key UNIQUE (size);


--
-- Name: oceans oceans_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.oceans
    ADD CONSTRAINT oceans_name_key UNIQUE (name);


--
-- Name: oceans oceans_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.oceans
    ADD CONSTRAINT oceans_pkey PRIMARY KEY (oceans_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


