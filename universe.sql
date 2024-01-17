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
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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
    star_id integer NOT NULL,
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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
-- Name: randomtable; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.randomtable (
    randomtable_id integer NOT NULL,
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
);


ALTER TABLE public.randomtable OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    area integer,
    volume integer,
    age numeric,
    material text,
    has_life boolean,
    has_water boolean
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

INSERT INTO public.galaxy VALUES (1, 1, 'milkyway', 2934857, 2349857, 2349587, 'solid', true, true);
INSERT INTO public.galaxy VALUES (2, 2, 'galaxy', 3294857, 2349587, 9283745, 'solid', false, true);
INSERT INTO public.galaxy VALUES (3, 3, 'galaxy3', 439587, 897453, 23495870, 'solid', false, false);
INSERT INTO public.galaxy VALUES (4, 4, 'galaxy4', 234957, 2934857, 23458798, 'solid', false, true);
INSERT INTO public.galaxy VALUES (5, 5, 'galaxy5', 349587, 2345987, 55897345, 'solid', true, true);
INSERT INTO public.galaxy VALUES (6, 6, 'galaxy6', 823745, 938475, 98723450, 'solid', true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'moon1', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (2, 2, 'moon2', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (3, 3, 'moon3', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (4, 4, 'moon4', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (5, 5, 'moon5', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (6, 6, 'moon6', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (7, 7, 'moon7', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (8, 8, 'moon8', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (9, 9, 'moon9', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (10, 10, 'moon10', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (11, 11, 'moon11', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (12, 11, 'moon12', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (13, 11, 'moon13', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (14, 11, 'moon14', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (15, 11, 'moon15', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (16, 11, 'moon16', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (17, 11, 'moon17', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (18, 11, 'moon18', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (19, 11, 'moon19', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.moon VALUES (20, 11, 'moon20', 15000, 15000, 15000, 'solid', true, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 1, 'planet1', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.planet VALUES (2, 2, 2, 'planet2', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.planet VALUES (3, 3, 3, 'planet3', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.planet VALUES (4, 4, 4, 'planet4', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.planet VALUES (5, 5, 5, 'planet5', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.planet VALUES (6, 6, 6, 'planet6', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.planet VALUES (7, 6, 7, 'planet7', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.planet VALUES (8, 6, 8, 'planet8', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.planet VALUES (9, 6, 9, 'planet9', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.planet VALUES (10, 6, 10, 'planet10', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.planet VALUES (11, 6, 11, 'planet11', 15000, 15000, 15000, 'solid', true, true);
INSERT INTO public.planet VALUES (12, 6, 12, 'planet12', 15000, 15000, 15000, 'solid', true, true);


--
-- Data for Name: randomtable; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.randomtable VALUES (1, 1, 'rand1', 2934857, 2349857, 2349587, 'solid', true, true);
INSERT INTO public.randomtable VALUES (2, 2, 'rand2', 3294857, 2349587, 9283745, 'solid', false, true);
INSERT INTO public.randomtable VALUES (3, 3, 'rand3', 439587, 897453, 23495870, 'solid', false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 1, 'sun', 938457, 2347598, 2349857, 'hydrogen', false, false);
INSERT INTO public.star VALUES (2, 2, 2, 'star2', 2345987, 57908234, 74523987, 'oxygen', false, false);
INSERT INTO public.star VALUES (3, 3, 3, 'star3', 237459, 234850, 2345978, 'carbon', false, false);
INSERT INTO public.star VALUES (4, 4, 4, 'star4', 2457982, 34589723, 43985732, 'iron', false, false);
INSERT INTO public.star VALUES (5, 5, 5, 'star5', 3749588, 2345798, 2345789, 'neon', false, false);
INSERT INTO public.star VALUES (6, 6, 6, 'star6', 87349865, 3450687, 3459867, 'gold', false, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: randomtable random_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.randomtable
    ADD CONSTRAINT random_name_key UNIQUE (name);


--
-- Name: randomtable randomtable_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.randomtable
    ADD CONSTRAINT randomtable_pkey PRIMARY KEY (randomtable_id);


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
-- Name: galaxy galaxy_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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
-- Name: star star_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

