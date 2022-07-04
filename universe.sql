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
    name character varying(20) NOT NULL,
    type character varying(20),
    color character varying(20),
    order_number numeric,
    life boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    type character varying(20),
    atmosphere character varying(10),
    life boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    type character varying(20),
    atmosphere character varying(10),
    life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: ship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.ship (
    ship_id integer NOT NULL,
    name character varying(20),
    type character varying(20) NOT NULL,
    storage_size integer,
    tech_size integer
);


ALTER TABLE public.ship OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    faction text,
    color character varying(10),
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Euclid', 'Norm', 'White', 1, true);
INSERT INTO public.galaxy VALUES (2, 'Hilbert Dimension', 'Norm-Imperfect', 'Deep Pink', 2, true);
INSERT INTO public.galaxy VALUES (4, 'Hesperius Dimension', 'Norm', 'Violet', 4, true);
INSERT INTO public.galaxy VALUES (5, 'Hyades', 'Norm', 'Light Blue', 5, true);
INSERT INTO public.galaxy VALUES (6, 'Ickjamatew', 'Norm', 'Turquise', 6, true);
INSERT INTO public.galaxy VALUES (3, 'Calypso', 'Harsh-Raging', 'Medium Orchid', 3, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (3, 'Etaji', 'Toxic', 'unknown', true, 4);
INSERT INTO public.moon VALUES (1, 'Olney Ontoino', 'unknown', 'unknown', true, 2);
INSERT INTO public.moon VALUES (2, 'Olney Igton', 'unknown', 'unknown', true, 2);
INSERT INTO public.moon VALUES (4, 'undiscovered', 'unknown', 'unknown', true, 6);
INSERT INTO public.moon VALUES (5, 'undiscovered', 'unknown', 'unknown', true, 6);
INSERT INTO public.moon VALUES (6, 'undiscovered', 'unknown', 'unknown', true, 6);
INSERT INTO public.moon VALUES (7, 'undiscovered', 'unknown', 'unknown', true, 7);
INSERT INTO public.moon VALUES (8, 'undiscovered', 'unknown', 'unknown', true, 7);
INSERT INTO public.moon VALUES (9, 'undiscovered', 'unknown', 'unknown', true, 8);
INSERT INTO public.moon VALUES (10, 'undiscovered', 'unknown', 'unknown', true, 8);
INSERT INTO public.moon VALUES (11, 'undiscovered', 'unknown', 'unknown', true, 8);
INSERT INTO public.moon VALUES (12, 'undiscovered', 'unknown', 'unknown', true, 8);
INSERT INTO public.moon VALUES (13, 'undiscovered', 'unknown', 'unknown', true, 9);
INSERT INTO public.moon VALUES (14, 'undiscovered', 'unknown', 'unknown', true, 9);
INSERT INTO public.moon VALUES (15, 'undiscovered', 'unknown', 'unknown', true, 8);
INSERT INTO public.moon VALUES (16, 'undiscovered', 'unknown', 'unknown', true, 10);
INSERT INTO public.moon VALUES (17, 'undiscovered', 'unknown', 'unknown', true, 10);
INSERT INTO public.moon VALUES (18, 'undiscovered', 'unknown', 'unknown', true, 10);
INSERT INTO public.moon VALUES (19, 'undiscovered', 'unknown', 'unknown', true, 11);
INSERT INTO public.moon VALUES (20, 'undiscovered', 'unknown', 'unknown', true, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Ebec', 'Lush', 'unknown', true, 3);
INSERT INTO public.planet VALUES (4, 'Gote', 'Exotic', 'unknown', true, 4);
INSERT INTO public.planet VALUES (1, 'AGT Habolle', 'Exotic', 'green', true, 1);
INSERT INTO public.planet VALUES (2, 'Olney', 'unknown', 'unknown', true, 2);
INSERT INTO public.planet VALUES (5, 'Uxfaloss', 'Irradiated', 'Irradiated', true, 5);
INSERT INTO public.planet VALUES (6, 'Heptiane Major', 'Barren', 'unknown', true, 5);
INSERT INTO public.planet VALUES (7, 'Eccleve XIV', 'Lush', 'unknown', true, 7);
INSERT INTO public.planet VALUES (8, 'Heminn', 'Toxic', 'Acidic', true, 8);
INSERT INTO public.planet VALUES (9, 'Esburn', 'Lush', 'Calm', true, 9);
INSERT INTO public.planet VALUES (10, 'New Idcot', 'Toxic', 'Acidic', true, 10);
INSERT INTO public.planet VALUES (11, 'Itrig', 'Toxic', 'Acidic', true, 11);
INSERT INTO public.planet VALUES (12, 'Eduar XIV', 'Barren', 'Dusty', true, 12);


--
-- Data for Name: ship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.ship VALUES (1, 'Guptah', 'Shuttle', 28, 8);
INSERT INTO public.ship VALUES (2, 'Eporpha', 'Fighter', 37, 11);
INSERT INTO public.ship VALUES (3, 'Zoelro', 'Explorer', 38, 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Achar XII', 'Gek', 'Black Hole', 1);
INSERT INTO public.star VALUES (2, 'Afangdi', 'VyKeen', 'Black Hole', 1);
INSERT INTO public.star VALUES (3, 'Beytz', 'VyKeen', 'Black Hole', 2);
INSERT INTO public.star VALUES (4, 'Ekvendap', 'VyKeen', 'Black Hole', 2);
INSERT INTO public.star VALUES (5, 'Noakhamsg', 'Gek', 'Black Hole', 3);
INSERT INTO public.star VALUES (6, 'Hengbaro III', 'Korvax', 'Black Hole', 3);
INSERT INTO public.star VALUES (7, 'Ganglun', 'Vykeen', 'Black Hole', 4);
INSERT INTO public.star VALUES (8, 'Etimant', 'Gek', 'Black Hole', 4);
INSERT INTO public.star VALUES (9, 'ErmonotoInti', 'Gek', 'Black Hole', 5);
INSERT INTO public.star VALUES (10, 'Rojorge', 'VyKeen', 'Black Hole', 5);
INSERT INTO public.star VALUES (11, 'Eiyoda III', 'VyKeen', 'Black Hole', 6);
INSERT INTO public.star VALUES (12, 'KutsunoMak', 'Korvax', 'Black Hole', 6);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


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
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: ship ship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ship
    ADD CONSTRAINT ship_pkey PRIMARY KEY (ship_id);


--
-- Name: ship ship_ship_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.ship
    ADD CONSTRAINT ship_ship_id_key UNIQUE (ship_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

