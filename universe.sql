--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30) NOT NULL,
    age_in_years integer,
    distance_from_earth integer,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    size numeric(3,1)
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    type text NOT NULL,
    description text NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_years integer,
    distance_from_earth integer,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    size numeric(3,1),
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
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_years integer,
    distance_from_earth integer,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    size numeric(3,1),
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
    name character varying(30) NOT NULL,
    age_in_years integer,
    distance_from_earth integer,
    description text NOT NULL,
    has_life boolean,
    is_spherical boolean,
    size numeric(3,1),
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
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 12, 14, 'GALAXY 1', true, true, 1.2);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 13, 15, 'GALAXY 2', false, true, 1.8);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 16, 18, 'GALAXY 3', true, true, 2.1);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 12, 14, 'GALAXY 4', true, true, 1.2);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 13, 15, 'GALAXY 5', false, true, 1.8);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 16, 18, 'GALAXY 6', true, true, 2.1);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'type1', 'type 1', 'type 1');
INSERT INTO public.galaxy_types VALUES (2, 'type2', 'type 2', 'type 2');
INSERT INTO public.galaxy_types VALUES (3, 'type3', 'type 3', 'type 3');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 12, 234, 'Moon 1', true, true, 12.0, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 23, 43, 'Moon 2', false, true, 2.3, 1);
INSERT INTO public.moon VALUES (4, 'moon4', 12, 234, 'Moon 4', true, true, 12.0, 1);
INSERT INTO public.moon VALUES (5, 'moon5', 23, 43, 'Moon 5', false, true, 2.3, 1);
INSERT INTO public.moon VALUES (6, 'moon6', 12, 45, 'Moon 6', true, true, 3.4, 1);
INSERT INTO public.moon VALUES (7, 'moon7', 12, 234, 'Moon 7', true, true, 12.0, 1);
INSERT INTO public.moon VALUES (8, 'moon8', 23, 43, 'Moon 8', false, true, 2.3, 1);
INSERT INTO public.moon VALUES (9, 'moon9', 12, 45, 'Moon 9', true, true, 3.4, 1);
INSERT INTO public.moon VALUES (10, 'moon10', 12, 234, 'Moon 10', true, true, 12.0, 1);
INSERT INTO public.moon VALUES (11, 'moon11', 23, 43, 'Moon 11', false, true, 2.3, 1);
INSERT INTO public.moon VALUES (12, 'moon12', 12, 45, 'Moon 12', true, true, 3.4, 1);
INSERT INTO public.moon VALUES (13, 'moon13', 12, 234, 'Moon 13', true, true, 12.0, 1);
INSERT INTO public.moon VALUES (14, 'moon14', 23, 43, 'Moon 14', false, true, 2.3, 1);
INSERT INTO public.moon VALUES (15, 'moon15', 12, 45, 'Moon 15', true, true, 3.4, 1);
INSERT INTO public.moon VALUES (16, 'moon16', 12, 234, 'Moon 16', true, true, 12.0, 1);
INSERT INTO public.moon VALUES (17, 'moon17', 23, 43, 'Moon 17', false, true, 2.3, 1);
INSERT INTO public.moon VALUES (18, 'moon18', 12, 45, 'Moon 18', true, true, 3.4, 1);
INSERT INTO public.moon VALUES (19, 'moon19', 12, 234, 'Moon 19', true, true, 12.0, 1);
INSERT INTO public.moon VALUES (20, 'moon20', 23, 43, 'Moon 20', false, true, 2.3, 1);
INSERT INTO public.moon VALUES (21, 'moon21', 12, 45, 'Moon 21', true, true, 3.4, 1);
INSERT INTO public.moon VALUES (22, 'moon22', 12, 234, 'Moon 22', true, true, 12.0, 1);
INSERT INTO public.moon VALUES (23, 'moon23', 23, 43, 'Moon 23', false, true, 2.3, 1);
INSERT INTO public.moon VALUES (24, 'moon24', 12, 45, 'Moon 24', true, true, 3.4, 1);
INSERT INTO public.moon VALUES (3, 'moon3', 12, 45, 'Moon 3', true, true, 3.4, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 12, 24, 'Planet 1', true, true, 1.3, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 23, 45, 'Planet 2', false, false, 1.4, 1);
INSERT INTO public.planet VALUES (3, 'planet3', 34, 45, 'Planet 3', true, true, 1.5, 1);
INSERT INTO public.planet VALUES (4, 'planet4', 12, 24, 'Planet 4', true, true, 1.3, 1);
INSERT INTO public.planet VALUES (5, 'planet5', 23, 45, 'Planet 5', false, false, 1.4, 1);
INSERT INTO public.planet VALUES (6, 'planet6', 34, 45, 'Planet 6', true, true, 1.5, 1);
INSERT INTO public.planet VALUES (7, 'planet7', 12, 24, 'Planet 7', true, true, 1.3, 1);
INSERT INTO public.planet VALUES (8, 'planet8', 23, 45, 'Planet 8', false, false, 1.4, 1);
INSERT INTO public.planet VALUES (9, 'planet9', 34, 45, 'Planet 9', true, true, 1.5, 1);
INSERT INTO public.planet VALUES (10, 'planet10', 12, 24, 'Planet 10', true, true, 1.3, 1);
INSERT INTO public.planet VALUES (11, 'planet11', 23, 45, 'Planet 11', false, false, 1.4, 1);
INSERT INTO public.planet VALUES (12, 'planet12', 34, 45, 'Planet 12', true, true, 1.5, 1);
INSERT INTO public.planet VALUES (13, 'planet13', 12, 24, 'Planet 13', true, true, 1.3, 1);
INSERT INTO public.planet VALUES (14, 'planet14', 23, 45, 'Planet 14', false, false, 1.4, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 12, 23, 'Star 1', true, true, 1.2, 1);
INSERT INTO public.star VALUES (2, 'star2', 13, 23, 'Star 2', true, false, 2.3, 2);
INSERT INTO public.star VALUES (3, 'stare3', 14, 45, 'Star 3', true, true, 4.5, 2);
INSERT INTO public.star VALUES (4, 'star4', 12, 14, 'STAR 4', true, true, 1.2, 3);
INSERT INTO public.star VALUES (5, 'star5', 13, 15, 'STAR 5', false, true, 1.8, 5);
INSERT INTO public.star VALUES (6, 'star6', 16, 18, 'STAR 6', true, true, 2.1, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


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
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_type_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_type_key UNIQUE (type);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


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
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

