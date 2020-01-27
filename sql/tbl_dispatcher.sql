--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.1

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
-- Data for Name: dispatcher; Type: TABLE DATA; Schema: public; Owner: opensips
--

COPY public.dispatcher (id, setid, destination, socket, state, weight, priority, attrs, description) FROM stdin;
1	1	sip:freeswitch1:5080		0	2	0	FreeSWITCH	FS1
\.


--
-- Name: dispatcher_id_seq; Type: SEQUENCE SET; Schema: public; Owner: opensips
--

SELECT pg_catalog.setval('public.dispatcher_id_seq', 1, true);


--
-- PostgreSQL database dump complete
--

