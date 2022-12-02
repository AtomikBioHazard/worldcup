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
    round character varying(30) NOT NULL,
    year integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
    name character varying(30) NOT NULL
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

INSERT INTO public.games VALUES (33, 'Final', 2018, 26, 25, 4, 2);
INSERT INTO public.games VALUES (34, 'Third Place', 2018, 28, 27, 2, 0);
INSERT INTO public.games VALUES (35, 'Semi-Final', 2018, 25, 27, 2, 1);
INSERT INTO public.games VALUES (36, 'Semi-Final', 2018, 26, 28, 1, 0);
INSERT INTO public.games VALUES (37, 'Quarter-Final', 2018, 25, 29, 3, 2);
INSERT INTO public.games VALUES (38, 'Quarter-Final', 2018, 27, 30, 2, 0);
INSERT INTO public.games VALUES (39, 'Quarter-Final', 2018, 28, 31, 2, 1);
INSERT INTO public.games VALUES (40, 'Quarter-Final', 2018, 26, 32, 2, 0);
INSERT INTO public.games VALUES (41, 'Eighth-Final', 2018, 27, 33, 2, 1);
INSERT INTO public.games VALUES (42, 'Eighth-Final', 2018, 30, 34, 1, 0);
INSERT INTO public.games VALUES (43, 'Eighth-Final', 2018, 28, 35, 3, 2);
INSERT INTO public.games VALUES (44, 'Eighth-Final', 2018, 31, 36, 2, 0);
INSERT INTO public.games VALUES (45, 'Eighth-Final', 2018, 25, 37, 2, 1);
INSERT INTO public.games VALUES (46, 'Eighth-Final', 2018, 29, 38, 2, 1);
INSERT INTO public.games VALUES (47, 'Eighth-Final', 2018, 32, 39, 2, 1);
INSERT INTO public.games VALUES (48, 'Eighth-Final', 2018, 26, 40, 4, 3);
INSERT INTO public.games VALUES (49, 'Final', 2014, 41, 40, 1, 0);
INSERT INTO public.games VALUES (50, 'Third Place', 2014, 42, 31, 3, 0);
INSERT INTO public.games VALUES (51, 'Semi-Final', 2014, 40, 42, 1, 0);
INSERT INTO public.games VALUES (52, 'Semi-Final', 2014, 41, 31, 7, 1);
INSERT INTO public.games VALUES (53, 'Quarter-Final', 2014, 42, 43, 1, 0);
INSERT INTO public.games VALUES (54, 'Quarter-Final', 2014, 40, 28, 1, 0);
INSERT INTO public.games VALUES (55, 'Quarter-Final', 2014, 31, 33, 2, 1);
INSERT INTO public.games VALUES (56, 'Quarter-Final', 2014, 41, 26, 1, 0);
INSERT INTO public.games VALUES (57, 'Eighth-Final', 2014, 31, 44, 2, 1);
INSERT INTO public.games VALUES (58, 'Eighth-Final', 2014, 33, 32, 2, 0);
INSERT INTO public.games VALUES (59, 'Eighth-Final', 2014, 26, 45, 2, 0);
INSERT INTO public.games VALUES (60, 'Eighth-Final', 2014, 41, 46, 2, 1);
INSERT INTO public.games VALUES (61, 'Eighth-Final', 2014, 42, 36, 2, 1);
INSERT INTO public.games VALUES (62, 'Eighth-Final', 2014, 43, 47, 2, 1);
INSERT INTO public.games VALUES (63, 'Eighth-Final', 2014, 40, 34, 1, 0);
INSERT INTO public.games VALUES (64, 'Eighth-Final', 2014, 28, 48, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (25, 'Croatia');
INSERT INTO public.teams VALUES (26, 'France');
INSERT INTO public.teams VALUES (27, 'England');
INSERT INTO public.teams VALUES (28, 'Belgium');
INSERT INTO public.teams VALUES (29, 'Russia');
INSERT INTO public.teams VALUES (30, 'Sweden');
INSERT INTO public.teams VALUES (31, 'Brazil');
INSERT INTO public.teams VALUES (32, 'Uruguay');
INSERT INTO public.teams VALUES (33, 'Colombia');
INSERT INTO public.teams VALUES (34, 'Switzerland');
INSERT INTO public.teams VALUES (35, 'Japan');
INSERT INTO public.teams VALUES (36, 'Mexico');
INSERT INTO public.teams VALUES (37, 'Denmark');
INSERT INTO public.teams VALUES (38, 'Spain');
INSERT INTO public.teams VALUES (39, 'Portugal');
INSERT INTO public.teams VALUES (40, 'Argentina');
INSERT INTO public.teams VALUES (41, 'Germany');
INSERT INTO public.teams VALUES (42, 'Netherlands');
INSERT INTO public.teams VALUES (43, 'Costa Rica');
INSERT INTO public.teams VALUES (44, 'Chile');
INSERT INTO public.teams VALUES (45, 'Nigeria');
INSERT INTO public.teams VALUES (46, 'Algeria');
INSERT INTO public.teams VALUES (47, 'Greece');
INSERT INTO public.teams VALUES (48, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 48, true);


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

