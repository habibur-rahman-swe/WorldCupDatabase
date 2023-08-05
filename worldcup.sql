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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(40) NOT NULL,
    opponent_goals integer NOT NULL,
    winner_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(40) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (69, 2018, 'Final', 2, 4, 162, 163);
INSERT INTO public.games VALUES (70, 2018, 'Third Place', 0, 2, 164, 165);
INSERT INTO public.games VALUES (71, 2018, 'Semi-Final', 1, 2, 163, 165);
INSERT INTO public.games VALUES (72, 2018, 'Semi-Final', 0, 1, 162, 164);
INSERT INTO public.games VALUES (73, 2018, 'Quarter-Final', 2, 3, 163, 166);
INSERT INTO public.games VALUES (74, 2018, 'Quarter-Final', 0, 2, 165, 167);
INSERT INTO public.games VALUES (75, 2018, 'Quarter-Final', 1, 2, 164, 168);
INSERT INTO public.games VALUES (76, 2018, 'Quarter-Final', 0, 2, 162, 169);
INSERT INTO public.games VALUES (77, 2018, 'Eighth-Final', 1, 2, 165, 170);
INSERT INTO public.games VALUES (78, 2018, 'Eighth-Final', 0, 1, 167, 171);
INSERT INTO public.games VALUES (79, 2018, 'Eighth-Final', 2, 3, 164, 172);
INSERT INTO public.games VALUES (80, 2018, 'Eighth-Final', 0, 2, 168, 173);
INSERT INTO public.games VALUES (81, 2018, 'Eighth-Final', 1, 2, 163, 174);
INSERT INTO public.games VALUES (82, 2018, 'Eighth-Final', 1, 2, 166, 175);
INSERT INTO public.games VALUES (83, 2018, 'Eighth-Final', 1, 2, 169, 176);
INSERT INTO public.games VALUES (84, 2018, 'Eighth-Final', 3, 4, 162, 177);
INSERT INTO public.games VALUES (85, 2014, 'Final', 0, 1, 178, 177);
INSERT INTO public.games VALUES (86, 2014, 'Third Place', 0, 3, 179, 168);
INSERT INTO public.games VALUES (87, 2014, 'Semi-Final', 0, 1, 177, 179);
INSERT INTO public.games VALUES (88, 2014, 'Semi-Final', 1, 7, 178, 168);
INSERT INTO public.games VALUES (89, 2014, 'Quarter-Final', 0, 1, 179, 180);
INSERT INTO public.games VALUES (90, 2014, 'Quarter-Final', 0, 1, 177, 164);
INSERT INTO public.games VALUES (91, 2014, 'Quarter-Final', 1, 2, 168, 170);
INSERT INTO public.games VALUES (92, 2014, 'Quarter-Final', 0, 1, 178, 162);
INSERT INTO public.games VALUES (93, 2014, 'Eighth-Final', 1, 2, 168, 181);
INSERT INTO public.games VALUES (94, 2014, 'Eighth-Final', 0, 2, 170, 169);
INSERT INTO public.games VALUES (95, 2014, 'Eighth-Final', 0, 2, 162, 182);
INSERT INTO public.games VALUES (96, 2014, 'Eighth-Final', 1, 2, 178, 183);
INSERT INTO public.games VALUES (97, 2014, 'Eighth-Final', 1, 2, 179, 173);
INSERT INTO public.games VALUES (98, 2014, 'Eighth-Final', 1, 2, 180, 184);
INSERT INTO public.games VALUES (99, 2014, 'Eighth-Final', 0, 1, 177, 171);
INSERT INTO public.games VALUES (100, 2014, 'Eighth-Final', 1, 2, 164, 185);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (162, 'France');
INSERT INTO public.teams VALUES (163, 'Croatia');
INSERT INTO public.teams VALUES (164, 'Belgium');
INSERT INTO public.teams VALUES (165, 'England');
INSERT INTO public.teams VALUES (166, 'Russia');
INSERT INTO public.teams VALUES (167, 'Sweden');
INSERT INTO public.teams VALUES (168, 'Brazil');
INSERT INTO public.teams VALUES (169, 'Uruguay');
INSERT INTO public.teams VALUES (170, 'Colombia');
INSERT INTO public.teams VALUES (171, 'Switzerland');
INSERT INTO public.teams VALUES (172, 'Japan');
INSERT INTO public.teams VALUES (173, 'Mexico');
INSERT INTO public.teams VALUES (174, 'Denmark');
INSERT INTO public.teams VALUES (175, 'Spain');
INSERT INTO public.teams VALUES (176, 'Portugal');
INSERT INTO public.teams VALUES (177, 'Argentina');
INSERT INTO public.teams VALUES (178, 'Germany');
INSERT INTO public.teams VALUES (179, 'Netherlands');
INSERT INTO public.teams VALUES (180, 'Costa Rica');
INSERT INTO public.teams VALUES (181, 'Chile');
INSERT INTO public.teams VALUES (182, 'Nigeria');
INSERT INTO public.teams VALUES (183, 'Algeria');
INSERT INTO public.teams VALUES (184, 'Greece');
INSERT INTO public.teams VALUES (185, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 100, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 185, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

