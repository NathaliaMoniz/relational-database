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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22),
    games_played integer,
    best_game integer
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (28, 'thali', 1, 4);
INSERT INTO public.users VALUES (16, 'user_1750099958863', 2, 494);
INSERT INTO public.users VALUES (45, 'user_1750100797105', 5, 4);
INSERT INTO public.users VALUES (15, 'user_1750099958864', 5, 175);
INSERT INTO public.users VALUES (6, 'user_1750099557912', 2, 6);
INSERT INTO public.users VALUES (71, 'user_1750100836664', 5, 6);
INSERT INTO public.users VALUES (30, 'user_1750100494941', 2, 3);
INSERT INTO public.users VALUES (5, 'user_1750099557913', 5, 2);
INSERT INTO public.users VALUES (59, 'user_1750100822858', 5, 7);
INSERT INTO public.users VALUES (19, 'user_1750100221879', 2, 616);
INSERT INTO public.users VALUES (29, 'user_1750100494942', 5, 2);
INSERT INTO public.users VALUES (8, 'user_1750099719572', 2, 6);
INSERT INTO public.users VALUES (18, 'user_1750100221880', 5, 242);
INSERT INTO public.users VALUES (7, 'user_1750099719573', 5, 4);
INSERT INTO public.users VALUES (48, 'user_1750100800076', 2, 3);
INSERT INTO public.users VALUES (17, 'Kyle', 2, 4);
INSERT INTO public.users VALUES (10, 'user_1750099767683', 2, 508);
INSERT INTO public.users VALUES (82, 'user_1750100902017', 2, 8);
INSERT INTO public.users VALUES (32, 'user_1750100549667', 2, 7);
INSERT INTO public.users VALUES (9, 'user_1750099767684', 5, 247);
INSERT INTO public.users VALUES (21, 'user_1750100369901', 2, 7);
INSERT INTO public.users VALUES (47, 'user_1750100800077', 5, 2);
INSERT INTO public.users VALUES (12, 'user_1750099782741', 2, 560);
INSERT INTO public.users VALUES (31, 'user_1750100549668', 5, 2);
INSERT INTO public.users VALUES (20, 'user_1750100369902', 5, 1);
INSERT INTO public.users VALUES (11, 'user_1750099782742', 5, 150);
INSERT INTO public.users VALUES (14, 'user_1750099843192', 2, 7);
INSERT INTO public.users VALUES (62, 'user_1750100824517', 2, 6);
INSERT INTO public.users VALUES (13, 'user_1750099843193', 5, 4);
INSERT INTO public.users VALUES (23, 'user_1750100463066', 2, 2);
INSERT INTO public.users VALUES (50, 'user_1750100808763', 2, 4);
INSERT INTO public.users VALUES (74, 'user_1750100839393', 2, 7);
INSERT INTO public.users VALUES (22, 'user_1750100463067', 5, 3);
INSERT INTO public.users VALUES (34, 'user_1750100574737', 2, 2);
INSERT INTO public.users VALUES (81, 'user_1750100902018', 5, 5);
INSERT INTO public.users VALUES (49, 'user_1750100808764', 5, 1);
INSERT INTO public.users VALUES (25, 'user_1750100471129', 2, 5);
INSERT INTO public.users VALUES (33, 'user_1750100574738', 5, 4);
INSERT INTO public.users VALUES (24, 'user_1750100471130', 5, 3);
INSERT INTO public.users VALUES (61, 'user_1750100824518', 5, 5);
INSERT INTO public.users VALUES (27, 'user_1750100479949', 2, 3);
INSERT INTO public.users VALUES (26, 'user_1750100479950', 5, 9);
INSERT INTO public.users VALUES (36, 'user_1750100684957', 2, 3);
INSERT INTO public.users VALUES (73, 'user_1750100839394', 5, 4);
INSERT INTO public.users VALUES (35, 'user_1750100684958', 5, 3);
INSERT INTO public.users VALUES (4, 'nath', 6, 1);
INSERT INTO public.users VALUES (52, 'user_1750100815688', 2, 4);
INSERT INTO public.users VALUES (99, 'user_1750101059701', 5, 5);
INSERT INTO public.users VALUES (38, 'user_1750100701509', 2, 4);
INSERT INTO public.users VALUES (64, 'user_1750100826162', 2, 4);
INSERT INTO public.users VALUES (51, 'user_1750100815689', 5, 1);
INSERT INTO public.users VALUES (90, 'user_1750100915828', 2, 4);
INSERT INTO public.users VALUES (37, 'user_1750100701510', 5, 2);
INSERT INTO public.users VALUES (96, 'user_1750101046172', 2, 4);
INSERT INTO public.users VALUES (40, 'user_1750100783006', 2, 3);
INSERT INTO public.users VALUES (63, 'user_1750100826163', 5, 2);
INSERT INTO public.users VALUES (54, 'user_1750100817585', 2, 8);
INSERT INTO public.users VALUES (39, 'user_1750100783007', 5, 1);
INSERT INTO public.users VALUES (76, 'user_1750100841097', 2, 6);
INSERT INTO public.users VALUES (42, 'user_1750100790598', 2, 10);
INSERT INTO public.users VALUES (53, 'user_1750100817586', 5, 3);
INSERT INTO public.users VALUES (41, 'user_1750100790599', 5, 2);
INSERT INTO public.users VALUES (84, 'user_1750100908088', 2, 5);
INSERT INTO public.users VALUES (66, 'user_1750100831672', 2, 2);
INSERT INTO public.users VALUES (44, 'user_1750100793789', 2, 8);
INSERT INTO public.users VALUES (75, 'user_1750100841098', 5, 2);
INSERT INTO public.users VALUES (56, 'user_1750100819441', 2, 3);
INSERT INTO public.users VALUES (43, 'user_1750100793790', 5, 8);
INSERT INTO public.users VALUES (103, 'user_1750101064776', 5, 3);
INSERT INTO public.users VALUES (65, 'user_1750100831673', 5, 4);
INSERT INTO public.users VALUES (55, 'user_1750100819442', 5, 5);
INSERT INTO public.users VALUES (46, 'user_1750100797104', 2, 4);
INSERT INTO public.users VALUES (89, 'user_1750100915829', 5, 3);
INSERT INTO public.users VALUES (83, 'user_1750100908089', 5, 5);
INSERT INTO public.users VALUES (58, 'user_1750100821168', 2, 3);
INSERT INTO public.users VALUES (68, 'user_1750100833334', 2, 3);
INSERT INTO public.users VALUES (57, 'user_1750100821169', 5, 5);
INSERT INTO public.users VALUES (67, 'user_1750100833335', 5, 5);
INSERT INTO public.users VALUES (78, 'user_1750100843079', 2, 6);
INSERT INTO public.users VALUES (95, 'user_1750101046173', 5, 4);
INSERT INTO public.users VALUES (60, 'user_1750100822857', 2, 5);
INSERT INTO public.users VALUES (70, 'user_1750100834990', 2, 4);
INSERT INTO public.users VALUES (77, 'user_1750100843080', 5, 4);
INSERT INTO public.users VALUES (69, 'user_1750100834991', 5, 5);
INSERT INTO public.users VALUES (86, 'user_1750100909978', 2, 9);
INSERT INTO public.users VALUES (72, 'user_1750100836663', 2, 9);
INSERT INTO public.users VALUES (92, 'user_1750100924999', 2, 4);
INSERT INTO public.users VALUES (85, 'user_1750100909979', 5, 3);
INSERT INTO public.users VALUES (80, 'user_1750100845273', 2, 5);
INSERT INTO public.users VALUES (91, 'user_1750100925000', 5, 3);
INSERT INTO public.users VALUES (79, 'user_1750100845274', 5, 6);
INSERT INTO public.users VALUES (98, 'user_1750101052814', 2, 6);
INSERT INTO public.users VALUES (88, 'user_1750100913605', 2, 3);
INSERT INTO public.users VALUES (102, 'user_1750101062366', 2, 6);
INSERT INTO public.users VALUES (87, 'user_1750100913606', 5, 2);
INSERT INTO public.users VALUES (94, 'user_1750100928735', 2, 3);
INSERT INTO public.users VALUES (97, 'user_1750101052815', 5, 5);
INSERT INTO public.users VALUES (93, 'user_1750100928736', 5, 8);
INSERT INTO public.users VALUES (108, 'user_1750101070361', 2, 3);
INSERT INTO public.users VALUES (101, 'user_1750101062367', 5, 5);
INSERT INTO public.users VALUES (110, 'user_1750101072264', 2, 7);
INSERT INTO public.users VALUES (100, 'user_1750101059700', 2, 4);
INSERT INTO public.users VALUES (106, 'user_1750101067357', 2, 2);
INSERT INTO public.users VALUES (104, 'user_1750101064775', 2, 4);
INSERT INTO public.users VALUES (107, 'user_1750101070362', 5, 1);
INSERT INTO public.users VALUES (105, 'user_1750101067358', 5, 4);
INSERT INTO public.users VALUES (109, 'user_1750101072265', 5, 4);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 110, true);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

