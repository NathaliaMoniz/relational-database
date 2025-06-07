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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text,
    age_in_million_of_years integer,
    shape character varying(100)
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
    name character varying(20) NOT NULL,
    description text,
    has_water boolean,
    composition character varying(100),
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
    name character varying(20) NOT NULL,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    description text,
    distance_from_earth numeric(10,2),
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
    description text,
    masa integer NOT NULL,
    color character varying(40),
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 940);
INSERT INTO public.asteroid VALUES (2, 'Vesta', 525);
INSERT INTO public.asteroid VALUES (3, 'Pallas', 512);
INSERT INTO public.asteroid VALUES (4, 'Juno', 234);
INSERT INTO public.asteroid VALUES (5, 'Eros', 33);
INSERT INTO public.asteroid VALUES (6, 'Itokawa', 33);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'The Milky Way is the galaxy that contains our solar system, and it is one of the billions of galaxies in the universe', 13, 'spiral');
INSERT INTO public.galaxy VALUES (7, 'Andromeda', 'The Andromeda Galaxy is the nearest spiral galaxy to the Milky Way.', 10000, 'Spiral');
INSERT INTO public.galaxy VALUES (8, 'Sombrero Galaxy', 'A prominent spiral galaxy in the Virgo Cluster, named for its appearance.', 10000, 'Spiral');
INSERT INTO public.galaxy VALUES (9, 'Whirlpool Galaxy', 'A face-on spiral galaxy known for its distinct spiral arms and central bar.', 12000, 'Spiral');
INSERT INTO public.galaxy VALUES (10, 'Pinwheel Galaxy', 'A face-on spiral galaxy located in the constellation Ursa Major.', 10000, 'Spiral');
INSERT INTO public.galaxy VALUES (11, 'Triangulum Galaxy', 'The Triangulum Galaxy is the third-largest member of the Local Group of galaxies.', 10000, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Europa', 'Europa is one of Jupiter''s moons, known for its icy surface and potential subsurface ocean.', true, 'Ice and rock', 1);
INSERT INTO public.moon VALUES (2, 'Luna', 'The Moon is Earth''s only natural satellite and the fifth largest moon in the solar system.', true, 'Rock and metal', 3);
INSERT INTO public.moon VALUES (3, 'Io', 'Io is a volcanic moon of Jupiter, known for its extreme volcanic activity.', false, 'Rock and sulfur', 6);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Ganymede is the largest moon of Jupiter and the largest moon in the solar system.', false, 'Ice and rock', 6);
INSERT INTO public.moon VALUES (5, 'Titan', 'Titan is Saturn''s largest moon, with a thick atmosphere and liquid methane lakes on its surface.', true, 'Ice and rock', 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 'Callisto is a moon of Jupiter, known for its heavily cratered surface and lack of significant tectonic activity.', false, 'Ice and rock', 6);
INSERT INTO public.moon VALUES (7, 'Enceladus', 'Enceladus is a small moon of Saturn, famous for its geysers that spew water ice and organic molecules into space.', true, 'Ice and rock', 5);
INSERT INTO public.moon VALUES (8, 'Mimas', 'Mimas is a moon of Saturn that is known for its large impact crater, Herschel.', false, 'Ice and rock', 5);
INSERT INTO public.moon VALUES (9, 'Triton', 'Triton is Neptune''s largest moon, with a retrograde orbit and evidence of geyser activity.', true, 'Ice and rock', 3);
INSERT INTO public.moon VALUES (10, 'Rhea', 'Rhea is the second-largest moon of Saturn, mostly composed of water ice.', false, 'Ice and rock', 5);
INSERT INTO public.moon VALUES (11, 'Iapetus', 'Iapetus is a moon of Saturn with a distinct two-tone coloration and large equatorial ridge.', false, 'Ice and rock', 5);
INSERT INTO public.moon VALUES (12, 'Oberon', 'Oberon is one of Uranus''s moons, known for its heavily cratered surface and some evidence of geological activity.', false, 'Ice and rock', 1);
INSERT INTO public.moon VALUES (13, 'Titania', 'Titania is the largest moon of Uranus, with a surface of rock and ice.', false, 'Ice and rock', 1);
INSERT INTO public.moon VALUES (14, 'Miranda', 'Miranda is a moon of Uranus known for its bizarre, fragmented surface and large canyons.', false, 'Ice and rock', 1);
INSERT INTO public.moon VALUES (15, 'Ariel', 'Ariel is one of Uranus''s moons with a relatively young surface marked by large canyons and valleys.', false, 'Ice and rock', 1);
INSERT INTO public.moon VALUES (16, 'Umbriel', 'Umbriel is the darkest of Uranus''s moons, with a heavily cratered surface.', false, 'Ice and rock', 1);
INSERT INTO public.moon VALUES (17, 'Charon', 'Charon is the largest moon of Pluto, with a surface covered by ice and large canyons.', false, 'Ice and rock', 4);
INSERT INTO public.moon VALUES (18, 'Phobos', 'Phobos is the largest and innermost moon of Mars, with a very irregular shape and a heavily cratered surface.', false, 'Rock', 2);
INSERT INTO public.moon VALUES (19, 'Deimos', 'Deimos is the smaller and more distant of Mars''s two moons, with a smooth surface.', false, 'Rock', 2);
INSERT INTO public.moon VALUES (21, 'Hyperion', 'Hyperion is a moon of Saturn, known for its irregular shape and sponge-like appearance.', false, 'Ice and rock', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mars', false, true, 'Mars is the fourth planet from the Sun, known for its red appearance and being a candidate for future human exploration.', 225.00, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', false, true, 'Mercury is the closest planet to the Sun, known for its extreme temperature fluctuations.', 77.00, 5);
INSERT INTO public.planet VALUES (3, 'Venus', false, true, 'Venus is the second planet from the Sun, with a thick, toxic atmosphere and surface temperatures hot enough to melt lead.', 41.00, 7);
INSERT INTO public.planet VALUES (4, 'Earth', true, true, 'Earth is the third planet from the Sun and the only known planet to support life.', 0.00, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', false, true, 'Jupiter is the fifth planet from the Sun and the largest in our solar system, known for its Great Red Spot.', 628.73, 6);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 'Saturn is the sixth planet from the Sun, known for its stunning rings made of ice and rock.', 1270.00, 5);
INSERT INTO public.planet VALUES (7, 'Uranus', false, true, 'Uranus is the seventh planet from the Sun and has a distinct blue color due to methane in its atmosphere.', 2720.00, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, 'Neptune is the eighth and farthest planet from the Sun, known for its strong winds and blue color.', 4350.00, 3);
INSERT INTO public.planet VALUES (9, 'Titanus', false, true, 'Titanus is a fictional planet similar to Saturn, with a thick atmosphere and methane lakes.', 2000.00, 7);
INSERT INTO public.planet VALUES (10, 'Gliese 581g', false, true, 'Gliese 581g is an exoplanet located in the habitable zone of the Gliese 581 star system.', 200000.00, 6);
INSERT INTO public.planet VALUES (11, 'Kepler-452b', false, true, 'Kepler-452b, also called Earths cousin, is an exoplanet found in the habitable zone of its star.', 140000.00, 5);
INSERT INTO public.planet VALUES (12, 'Exoplanet Alpha', false, true, 'Exoplanet Alpha is a fictional planet located in the constellation Lyra.', 300.00, 4);
INSERT INTO public.planet VALUES (13, 'Zeta-4', false, true, 'Zeta-4 is a hypothetical planet with vast oceans and dense cloud cover.', 10000.00, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Betelgeuse', 'Betelgeuse is a well-known star located in the constellation Orion and is one of the brightest stars in the night sky.', 15, 'red-orange', 1);
INSERT INTO public.star VALUES (3, 'Sirius', 'The brightest star in the night sky, part of the Canis Major constellation.', 2, 'Blue-white', 7);
INSERT INTO public.star VALUES (4, 'Aldebaran', 'A red giant star in the constellation Taurus, one of the brightest stars in the sky.', 10, 'Red-orange', 8);
INSERT INTO public.star VALUES (5, 'Alpha Centauri', 'The closest star system to the Earth, located in the Centaurus constellation.', 1, 'Yellow', 9);
INSERT INTO public.star VALUES (6, 'Proxima Centauri', 'The closest star to the Sun, part of the Alpha Centauri system.', 0, 'Red', 10);
INSERT INTO public.star VALUES (7, 'Rigel', 'A blue supergiant star in the constellation Orion, one of the brightest stars in the sky.', 20, 'Blue', 11);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 12, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid unique_asteorid_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_asteorid_id UNIQUE (asteroid_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: moon unique_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_name_moon UNIQUE (name);


--
-- Name: planet unique_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_name_planet UNIQUE (name);


--
-- Name: star unique_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_name_star UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

