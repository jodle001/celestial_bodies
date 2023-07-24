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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    continent_id integer NOT NULL,
    planet_id integer,
    name character varying(200) NOT NULL,
    description text,
    date_founded date NOT NULL
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.continent_continent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.continent_continent_id_seq OWNER TO freecodecamp;

--
-- Name: continent_continent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.continent_continent_id_seq OWNED BY public.continent.continent_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(200) NOT NULL,
    description text,
    size numeric NOT NULL,
    num_stars integer NOT NULL,
    fully_formed boolean NOT NULL,
    num_black_holes integer NOT NULL,
    clockwise_rotation boolean NOT NULL,
    galaxy_id integer NOT NULL
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
    name character varying(200) NOT NULL,
    mass numeric NOT NULL,
    planet_id integer,
    surface_temperature numeric,
    description text
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
    name character varying(200) NOT NULL,
    description text,
    mass numeric NOT NULL,
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
    galaxy_id integer,
    name character varying(200) NOT NULL,
    mass numeric NOT NULL,
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
-- Name: continent continent_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent ALTER COLUMN continent_id SET DEFAULT nextval('public.continent_continent_id_seq'::regclass);


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
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES (1, 3, 'Eurasia', 'Largest continent on Earth', '0001-01-01');
INSERT INTO public.continent VALUES (2, 3, 'Africa', 'Second largest continent on Earth', '0001-01-01');
INSERT INTO public.continent VALUES (3, 3, 'North America', 'Third largest continent on Earth', '0001-01-01');
INSERT INTO public.continent VALUES (4, 3, 'South America', 'Fourth largest continent on Earth', '0001-01-01');
INSERT INTO public.continent VALUES (5, 3, 'Antarctica', 'Fifth largest continent on Earth', '0001-01-01');
INSERT INTO public.continent VALUES (6, 3, 'Australia', 'Smallest continent on Earth', '0001-01-01');
INSERT INTO public.continent VALUES (7, 9, 'Charon I', 'Largest continent on Charon', '2071-07-14');
INSERT INTO public.continent VALUES (8, 9, 'Charon II', 'Second largest continent on Charon', '2071-07-14');
INSERT INTO public.continent VALUES (9, 5, 'Ganymede I', 'Largest continent on Ganymede', '2099-05-17');
INSERT INTO public.continent VALUES (10, 5, 'Ganymede II', 'Second largest continent on Ganymede', '2099-05-17');
INSERT INTO public.continent VALUES (11, 5, 'Europa I', 'Only continent on Europa', '2105-03-28');
INSERT INTO public.continent VALUES (12, 4, 'Mars I', 'Largest continent on Mars', '2047-06-10');
INSERT INTO public.continent VALUES (13, 4, 'Mars II', 'Second largest continent on Mars', '2047-06-10');
INSERT INTO public.continent VALUES (14, 8, 'Triton I', 'Largest continent on Triton', '2132-12-11');
INSERT INTO public.continent VALUES (15, 8, 'Triton II', 'Second largest continent on Triton', '2132-12-11');
INSERT INTO public.continent VALUES (16, 6, 'Titan I', 'Largest continent on Titan', '2123-09-29');
INSERT INTO public.continent VALUES (17, 6, 'Titan II', 'Second largest continent on Titan', '2123-09-29');
INSERT INTO public.continent VALUES (18, 5, 'Io I', 'Largest continent on Io', '2115-08-06');
INSERT INTO public.continent VALUES (19, 5, 'Io II', 'Second largest continent on Io', '2115-08-06');
INSERT INTO public.continent VALUES (20, 5, 'Callisto I', 'Largest continent on Callisto', '2110-11-21');
INSERT INTO public.continent VALUES (21, 5, 'Callisto II', 'Second largest continent on Callisto', '2110-11-21');
INSERT INTO public.continent VALUES (22, 4, 'Phobos I', 'Only continent on Phobos', '2090-04-07');
INSERT INTO public.continent VALUES (23, 4, 'Deimos I', 'Only continent on Deimos', '2090-04-07');
INSERT INTO public.continent VALUES (24, 6, 'Rhea I', 'Largest continent on Rhea', '2135-07-01');
INSERT INTO public.continent VALUES (25, 6, 'Rhea II', 'Second largest continent on Rhea', '2135-07-01');
INSERT INTO public.continent VALUES (26, 6, 'Iapetus I', 'Largest continent on Iapetus', '2138-02-13');
INSERT INTO public.continent VALUES (27, 6, 'Iapetus II', 'Second largest continent on Iapetus', '2138-02-13');
INSERT INTO public.continent VALUES (28, 7, 'Miranda I', 'Largest continent on Miranda', '2140-06-22');
INSERT INTO public.continent VALUES (29, 7, 'Miranda II', 'Second largest continent on Miranda', '2140-06-22');
INSERT INTO public.continent VALUES (30, 7, 'Ariel I', 'Largest continent on Ariel', '2143-10-31');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Galaxy A', 'A spiral galaxy', 100000, 200000000, true, 1000, true, 1);
INSERT INTO public.galaxy VALUES ('Galaxy B', 'A dwarf galaxy', 30000, 100000000, true, 500, false, 2);
INSERT INTO public.galaxy VALUES ('Galaxy C', 'An irregular galaxy', 50000, 150000000, false, 700, true, 3);
INSERT INTO public.galaxy VALUES ('Galaxy D', 'A barred spiral galaxy', 120000, 250000000, true, 1200, false, 4);
INSERT INTO public.galaxy VALUES ('Galaxy E', 'An elliptical galaxy', 80000, 180000000, false, 900, true, 5);
INSERT INTO public.galaxy VALUES ('Andromeda', 'A spiral galaxy, nearest to the Milky Way', 220000, 1000000000, true, 1, true, 6);
INSERT INTO public.galaxy VALUES ('Triangulum', 'The third-largest member of the Local Group', 60000, 400000000, true, 0, false, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0.0123, 3, 220, 'The only natural satellite of the Earth');
INSERT INTO public.moon VALUES (2, 'Phobos', 0.00000058, 4, 233, 'The larger and closer of the two natural satellites of Mars');
INSERT INTO public.moon VALUES (3, 'Deimos', 0.00000023, 4, 233, 'The smaller and farther of Mars two moons');
INSERT INTO public.moon VALUES (4, 'Io', 0.015, 5, 130, 'The innermost of the four Galilean moons of Jupiter');
INSERT INTO public.moon VALUES (5, 'Europa', 0.008, 5, 102, 'The smallest of the four Galilean moons orbiting Jupiter');
INSERT INTO public.moon VALUES (6, 'Ganymede', 0.025, 5, 110, 'The largest and most massive moon of Jupiter');
INSERT INTO public.moon VALUES (7, 'Callisto', 0.018, 5, 134, 'The second-largest moon of Jupiter');
INSERT INTO public.moon VALUES (8, 'Mimas', 0.00000439, 6, 168, 'The smallest and innermost of Saturn''s major moons');
INSERT INTO public.moon VALUES (9, 'Enceladus', 0.000018, 6, 75, 'The sixth-largest moon of Saturn');
INSERT INTO public.moon VALUES (10, 'Tethys', 0.000617, 6, 85, 'The fifth-largest moon of Saturn');
INSERT INTO public.moon VALUES (11, 'Dione', 0.00032, 6, 87, 'The fourth-largest moon of Saturn');
INSERT INTO public.moon VALUES (12, 'Rhea', 0.00039, 6, 99, 'The second-largest moon of Saturn');
INSERT INTO public.moon VALUES (13, 'Titan', 0.0225, 6, 94, 'The largest moon of Saturn');
INSERT INTO public.moon VALUES (14, 'Iapetus', 0.0000304, 6, 115, 'The third-largest moon of Saturn');
INSERT INTO public.moon VALUES (15, 'Miranda', 0.000008, 7, 59, 'The smallest and innermost of Uranus'' five major moons');
INSERT INTO public.moon VALUES (16, 'Ariel', 0.000015, 7, 60, 'The fourth-largest of the 27 known moons of Uranus');
INSERT INTO public.moon VALUES (17, 'Umbriel', 0.00012, 7, 65, 'The third-largest moon of Uranus');
INSERT INTO public.moon VALUES (18, 'Titania', 0.00034, 7, 70, 'The largest of the moons of Uranus');
INSERT INTO public.moon VALUES (19, 'Oberon', 0.00030, 7, 75, 'The second-largest moon of Uranus');
INSERT INTO public.moon VALUES (20, 'Triton', 0.00359, 8, 38, 'The largest moon of Neptune');
INSERT INTO public.moon VALUES (21, 'Nereid', 0.0000031, 8, 51, 'The third-largest moon of Neptune');
INSERT INTO public.moon VALUES (22, 'Charon', 0.000162, 9, 43, 'The largest of the five known moons of Pluto');
INSERT INTO public.moon VALUES (23, 'Styx', 0.0000000007, 9, 26, 'The second-smallest moon of Pluto');
INSERT INTO public.moon VALUES (24, 'Nix', 0.0000000045, 9, 33, 'One of the five known moons of Pluto');
INSERT INTO public.moon VALUES (25, 'Kerberos', 0.0000000031, 9, 26, 'One of the five known moons of Pluto');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The smallest and innermost planet in the Solar System', 0.055, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Second planet from the Sun, similar in size to Earth', 0.815, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 'The third planet from the Sun and the only known life-bearing world', 1.0, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 'The "Red Planet", known for its reddish appearance', 0.107, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet in the Solar System', 317.8, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 'A gas giant famous for its ring system', 95.16, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 'A blue ice giant with a unique tilt', 14.54, 3);
INSERT INTO public.planet VALUES (8, 'Neptune', 'A deep blue ice giant, furthest from the Sun', 17.15, 3);
INSERT INTO public.planet VALUES (9, 'Pluto', 'A dwarf planet in the Kuiper belt', 0.00218, 4);
INSERT INTO public.planet VALUES (10, 'Eris', 'The most massive known dwarf planet in the Solar System', 0.0028, 4);
INSERT INTO public.planet VALUES (11, 'Ceres', 'The largest object in the asteroid belt between Mars and Jupiter', 0.00015, 5);
INSERT INTO public.planet VALUES (12, 'Haumea', 'A dwarf planet in the Kuiper belt shaped like a rugby ball', 0.0007, 5);
INSERT INTO public.planet VALUES (13, 'Makemake', 'A dwarf planet in the Kuiper belt, known for its reddish appearance', 0.00067, 5);
INSERT INTO public.planet VALUES (14, 'Quaoar', 'A large Kuiper belt object', 0.00022, 5);
INSERT INTO public.planet VALUES (15, 'Sedna', 'A large minor planet in the outer reaches of the Solar System', 0.00027, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Star A1', 100, NULL);
INSERT INTO public.star VALUES (2, 1, 'Star A2', 150, NULL);
INSERT INTO public.star VALUES (3, 2, 'Star B1', 200, NULL);
INSERT INTO public.star VALUES (4, 2, 'Star B2', 250, NULL);
INSERT INTO public.star VALUES (5, 3, 'Star C1', 300, NULL);
INSERT INTO public.star VALUES (6, 3, 'Star C2', 350, NULL);
INSERT INTO public.star VALUES (7, 4, 'Star D1', 400, NULL);
INSERT INTO public.star VALUES (8, 4, 'Star D2', 450, NULL);
INSERT INTO public.star VALUES (9, 5, 'Star E1', 500, NULL);
INSERT INTO public.star VALUES (10, 5, 'Star E2', 550, NULL);


--
-- Name: continent_continent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.continent_continent_id_seq', 30, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 25, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: continent continent_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_name_key UNIQUE (name);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: continent fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

