--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9 (Ubuntu 10.9-1.pgdg18.04+1)
-- Dumped by pg_dump version 10.9 (Ubuntu 10.9-1.pgdg18.04+1)

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

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: rosters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rosters (
    id integer NOT NULL,
    name character varying(100),
    jerseynum integer,
    firstname character varying(100),
    lastname character varying(100),
    positions character varying(100)
);


ALTER TABLE public.rosters OWNER TO postgres;

--
-- Name: rosters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rosters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rosters_id_seq OWNER TO postgres;

--
-- Name: rosters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rosters_id_seq OWNED BY public.rosters.id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.teams (
    id integer NOT NULL,
    name character varying(100),
    teamname character varying(100),
    headcoach character varying(100),
    assistantcoaches character varying(1000),
    teamemail text,
    fieldname character varying(100),
    fieldaddress1 character varying(100),
    fieldaddress2 character varying(100),
    googlemaplink character varying(100),
    teampic character varying(100),
    fieldimage character varying(500),
    eventsurls boolean,
    photogallery boolean,
    scoreboard boolean,
    location character varying(100),
    scoreboardlink character varying(200)
);


ALTER TABLE public.teams OWNER TO postgres;

--
-- Name: teams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_id_seq OWNER TO postgres;

--
-- Name: teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.teams_id_seq OWNED BY public.teams.id;


--
-- Name: tournaments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tournaments (
    id integer NOT NULL,
    name character varying(100),
    dates character varying(100),
    weekend character varying(100),
    tourname character varying(500),
    location character varying(100),
    "teamId" integer
);


ALTER TABLE public.tournaments OWNER TO postgres;

--
-- Name: tournaments_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tournaments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tournaments_id_seq OWNER TO postgres;

--
-- Name: tournaments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tournaments_id_seq OWNED BY public.tournaments.id;


--
-- Name: rosters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rosters ALTER COLUMN id SET DEFAULT nextval('public.rosters_id_seq'::regclass);


--
-- Name: teams id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams ALTER COLUMN id SET DEFAULT nextval('public.teams_id_seq'::regclass);


--
-- Name: tournaments id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tournaments ALTER COLUMN id SET DEFAULT nextval('public.tournaments_id_seq'::regclass);


--
-- Data for Name: rosters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rosters (id, name, jerseynum, firstname, lastname, positions) FROM stdin;
81	Cholley16U	22	Jordan	Cholley	P, SS, 2B, OF
22	Gressman11U	77	Kailyn	Gressman	\N
23	Gressman11U	0	Jenna	Spear	\N
24	Gressman11U	33	Julia	Gartner	\N
25	Gressman11U	22	Sierra	Cress	\N
26	Gressman11U	12	Mackenzie	Orosz	\N
27	Gressman11U	9	Bailey	Deutsch	\N
28	Gressman11U	15	Avery	Contini	\N
29	Gressman11U	3	Madison	Bure	\N
30	Gressman11U	10	Brooke	Manav	\N
31	Gressman11U	30	Hannah	Goodson	\N
32	Gressman11U	18	Delaney	Nietert	\N
83	Cholley16U	42	Mikayla	Haydu	SS, 2B, OF
82	Cholley16U	1	Olivia	Mason	2B, OF
84	Cholley16U	19	Kayedon	Martin	C, 3B
85	Cholley16U	10	Shea	Cress	1B, OF
86	Cholley16U	12	Haley	Leininger	OF
87	Cholley16U	8	Amber	Burick	P, 2B, OF
88	Cholley16U	20	Emma	Rose	3B, 1B
89	Cholley16U	6	Sydney	Mantesll	C
90	Cholley16U	24	McKenzi	Corple	P, OF, 1B
91	Cholley16U	2	Amanda	Morten	P, OF, IF
92	Cholley16U	44	Kylie	Kratz	C, IF, OF
93	Cholley16U	15	Samantha	Secrest	P, IF, OF
33	Meikle12U	5	Vada	Allen	UTL, C, P
34	Meikle12U	1	Angel	Drnek	PR, OF, 2B, P
35	Meikle12U	31	Hailey	Householder	LF, UTL
36	Meikle12U	42	Hallie	Capan	C, UTL
37	Meikle12U	7	Emallee	Warren	2B, UTL, P
38	Meikle12U	21	Sarah	Almashy	3B, 1B, P
39	Meikle12U	8	Ava	Bacon	1B, 3B, P
40	Meikle12U	3	Brooklyn	Ciminero	3B, OF
41	Meikle12U	16	Chloe	Fleps	2B, UTL, P
42	Meikle12U	\N	Lexi	\N	Bat Girl
43	Meikle12U	\N	Morgan	Thompson	substitute
44	Meikle12U	\N	Marrissa	\N	substitute
\.


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.teams (id, name, teamname, headcoach, assistantcoaches, teamemail, fieldname, fieldaddress1, fieldaddress2, googlemaplink, teampic, fieldimage, eventsurls, photogallery, scoreboard, location, scoreboardlink) FROM stdin;
8	Gressman11U	Gressman 11U	Nick Gressman	Gary Cress, Justin Spear, Dave Contini, Marie Contini	Buckeyecharge07 @gmail.com	Jedd Park	2275 Pickle Rd	Akron, Ohio 44312	https://goo.gl/maps/a9NZ6ZDooJm	dugout.JPG	../images/mark-duffel-352915-unsplash2.jpg	f	f	f	Akron, Ohio	\N
7	Meikle12U	Meikle 12U	Rich Meikle	Denise Brunke-Allen, Jim Householder	WarrenBuckeyeCharge @gmail.com	Johnson Community Center	800 Gillmer Rd	Leavittsburg, Ohio 44430	https://goo.gl/maps/TSZ2T6Ti4oo	Warren12Unew.jpg	../images/mark-duffel-352915-unsplash2.jpg	t	t	t	Warren, Ohio	//gc.com/team-5ca84e8d32e933b1ee000101/scoreboard?g=5&p=5bafd0a9b7ce48001b2f2705
1	Cholley16U	Cholley 16U	Mark Cholley	Paul Mason, Angie Cress, Kelli Martin	buckeyechargefastpitch @gmail.com	Jedd Park	2275 Pickle Rd	Akron, Ohio 44312	https://goo.gl/maps/a9NZ6ZDooJm	dugout.JPG	../images/mark-duffel-352915-unsplash2.jpg	f	f	f	Akron, Ohio	\N
\.


--
-- Data for Name: tournaments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tournaments (id, name, dates, weekend, tourname, location, "teamId") FROM stdin;
1	Cholley16U	\N	April 26-28	-----	\N	1
2	Cholley16U	\N	May 3-5	-----	\N	1
3	Cholley16U	\N	May 10-12	-----	\N	1
4	Cholley16U	\N	May 17-19	-----	\N	1
5	Cholley16U	\N	May 24-26	-----	\N	1
6	Cholley16U	\N	May 31- June 2	Perfect Storm	\N	1
7	Cholley16U	\N	June 7-9	Toledo Tune-Up	\N	1
8	Cholley16U	\N	June 14-16	Sheer Madness	\N	1
10	Cholley16U	\N	June 28-30	Fireworks Frenzy	\N	1
11	Cholley16U	\N	July 5-7	GAPSS	\N	1
12	Cholley16U	\N	July 12-14	Loudonville	\N	1
13	Cholley16U	\N	July 19-20	Hope's Turn At Bat	\N	1
14	Cholley16U	\N	July 26-27	Christmas in July	\N	1
96	Meikle12U	\N	July 12-14	Mentor Big Red	Eleanor B. Garfield Park Mentor, Oh	7
86	Meikle12U	\N	May 3-5	------	\N	7
85	Meikle12U	\N	April 26-28	Jordyn Myers Memorial	Warren, OH	7
87	Meikle12U	\N	May 10-12	------	\N	7
88	Meikle12U	\N	May 17-19	Lightning Invitational	Akron, OH	7
89	Meikle12U	\N	May 24-26	------	\N	7
90	Meikle12U	\N	May 31- June 2	------	\N	7
91	Meikle12U	\N	June 7-9	------	\N	7
93	Meikle12U	\N	June 21-23	Pinata Smash	Riverside Park Beaver Falls, PA	7
94	Meikle12U	\N	June 28-30	Fireworks Frenzy	North Ridgeville, OH	7
95	Meikle12U	\N	July 5-7	------	\N	7
97	Meikle12U	\N	July 19-20	------	\N	7
98	Meikle12U	\N	July 26-27	------	\N	7
100	Gressman11U	\N	May 3-5	------	\N	8
102	Gressman11U	\N	May 17-19	------	\N	8
103	Gressman11U	\N	May 24-26	------	\N	8
104	Gressman11U	\N	May 31- June 2	T-Town Showdown	Tallmadge, Oh	8
105	Gressman11U	\N	June 7-9	------	\N	8
9	Cholley16U	\N	June 21-23	Hall of Fame Classic (Eastern National Qualifier)	\N	1
92	Meikle12U	\N	June 14-16	Ohio Magic	Field of Dreams Boardman, OH	7
99	Gressman11U	\N	April 26-28	Jordyn Myers Memorial	Warren, Oh	8
101	Gressman11U	\N	May 10-12	Force Frenzy	Rootstown, Oh	8
106	Gressman11U	\N	June 14-16	Wizards Farley Memorial	Maumee, Oh	8
107	Gressman11U	\N	June 21-23	------	\N	8
108	Gressman11U	\N	June 28-30	------	\N	8
109	Gressman11U	\N	July 5-7	------	\N	8
110	Gressman11U	\N	July 12-14	Stadium Series	Akron, Oh	8
111	Gressman11U	\N	July 19-20	------	\N	8
112	Gressman11U	\N	July 26-27	Christmas in July	North Ridgeville, Oh	8
\.


--
-- Name: rosters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rosters_id_seq', 1, false);


--
-- Name: teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.teams_id_seq', 1, false);


--
-- Name: tournaments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tournaments_id_seq', 43, true);


--
-- Name: rosters rosters_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rosters
    ADD CONSTRAINT rosters_pkey PRIMARY KEY (id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (id);


--
-- Name: tournaments tournaments_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tournaments
    ADD CONSTRAINT tournaments_pkey PRIMARY KEY (id);


--
-- Name: teams unique_name; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: teams unique_team_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_team_id UNIQUE (name);


--
-- Name: teams_name; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX teams_name ON public.teams USING btree (name);


--
-- Name: rosters constraint_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rosters
    ADD CONSTRAINT constraint_fk FOREIGN KEY (name) REFERENCES public.teams(name);


--
-- Name: tournaments constraint_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tournaments
    ADD CONSTRAINT constraint_fk FOREIGN KEY (name) REFERENCES public.teams(name);


--
-- PostgreSQL database dump complete
--

