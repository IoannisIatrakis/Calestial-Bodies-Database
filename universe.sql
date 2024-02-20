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
    age_in_millions_of_years numeric(5,2),
    description text,
    galaxy_types character varying(30)
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
-- Name: missions; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.missions (
    missions_id integer NOT NULL,
    name character varying(30) NOT NULL,
    year integer,
    planet_id integer
);


ALTER TABLE public.missions OWNER TO freecodecamp;

--
-- Name: missions_missions_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.missions_missions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.missions_missions_id_seq OWNER TO freecodecamp;

--
-- Name: missions_missions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.missions_missions_id_seq OWNED BY public.missions.missions_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    planet_id integer,
    distance_from_planet numeric(6,2)
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
    age_in_millions_of_years integer,
    distance_from_earth integer,
    is_spherical boolean,
    has_life boolean,
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
    galaxy_id integer,
    age_in_millions_of_year numeric(5,2),
    description text
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
-- Name: missions missions_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.missions ALTER COLUMN missions_id SET DEFAULT nextval('public.missions_missions_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (6, 'galaxy6', 760.50, 'This is galaxy6', 'Type1');
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 900.50, 'This is galaxy5', 'Type3');
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 300.50, 'This is galaxy4', 'Type3');
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 195.50, 'This is galaxy3', 'Type1');
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 395.50, 'This is galaxy2', 'Type2');
INSERT INTO public.galaxy VALUES (1, 'galaxy1', 375.50, 'This is galaxy1', 'Type2');


--
-- Data for Name: missions; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.missions VALUES (1, 'mission1', 2024, 4);
INSERT INTO public.missions VALUES (2, 'mission2', 2007, 5);
INSERT INTO public.missions VALUES (3, 'mission3', 1999, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'This is moon1', 4, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 'This is moon2', 5, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 'This is moon3', 6, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 'This is moon4', 4, 547.00);
INSERT INTO public.moon VALUES (5, 'moon5', 'This is moon5', 1, 147.50);
INSERT INTO public.moon VALUES (6, 'moon6', 'This is moon6', 1, 1247.50);
INSERT INTO public.moon VALUES (7, 'moon7', 'This is moon7', 1, 124.50);
INSERT INTO public.moon VALUES (8, 'moon8', 'This is moon8', 6, 254.50);
INSERT INTO public.moon VALUES (9, 'moon9', 'This is moon9', 4, 954.50);
INSERT INTO public.moon VALUES (10, 'moon10', 'This is moon10', 4, 9784.50);
INSERT INTO public.moon VALUES (11, 'moon11', 'This is moon11', 5, 784.50);
INSERT INTO public.moon VALUES (12, 'moon12', 'This is moon12', 10, 784.50);
INSERT INTO public.moon VALUES (13, 'moon13', 'This is moon13', 10, 74.50);
INSERT INTO public.moon VALUES (14, 'moon14', 'This is moon14', 11, 7554.50);
INSERT INTO public.moon VALUES (15, 'moon15', 'This is moon15', 11, 755.50);
INSERT INTO public.moon VALUES (16, 'moon16', 'This is moon16', 11, 1755.50);
INSERT INTO public.moon VALUES (17, 'moon17', 'This is moon17', 11, 175.50);
INSERT INTO public.moon VALUES (18, 'moon18', 'This is moon18', 11, 2175.50);
INSERT INTO public.moon VALUES (19, 'moon19', 'This is moon19', 11, 215.50);
INSERT INTO public.moon VALUES (20, 'moon20', 'This is moon20', 11, 2515.00);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (5, 'planet5', 580, 16500, true, false, 2);
INSERT INTO public.planet VALUES (6, 'planet6', 1580, 26500, false, false, 2);
INSERT INTO public.planet VALUES (1, 'planet1', 366, 2584, true, true, 6);
INSERT INTO public.planet VALUES (4, 'planet4', 500, 1500, true, true, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 386, 258, true, true, 4);
INSERT INTO public.planet VALUES (3, 'planet3', 3860, 2698, true, true, 3);
INSERT INTO public.planet VALUES (13, 'planet13', 187, 7158, false, true, 2);
INSERT INTO public.planet VALUES (12, 'planet12', 1187, 758, false, true, 2);
INSERT INTO public.planet VALUES (11, 'planet11', 5187, 7858, false, NULL, 2);
INSERT INTO public.planet VALUES (10, 'planet10', 5187, 7858, false, NULL, 5);
INSERT INTO public.planet VALUES (9, 'planet9', 5187, 7858, false, NULL, 6);
INSERT INTO public.planet VALUES (8, 'planet8', 5187, 7858, false, NULL, 3);
INSERT INTO public.planet VALUES (7, 'planet7', 517, 7928, false, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Star1', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Star2', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Star3', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'star4', 5, NULL, NULL);
INSERT INTO public.star VALUES (5, 'star5', 4, NULL, NULL);
INSERT INTO public.star VALUES (6, 'star6', 1, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: missions_missions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.missions_missions_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: missions missions_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.missions
    ADD CONSTRAINT missions_pkey PRIMARY KEY (missions_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: missions unique_mission_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.missions
    ADD CONSTRAINT unique_mission_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: missions missions_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.missions
    ADD CONSTRAINT missions_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

