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
-- Data for Name: rtpengine; Type: TABLE DATA; Schema: public; Owner: opensips
--

COPY public.rtpengine (id, socket, set_id) FROM stdin;
1	udp:192.168.83.8:60000	1
\.


--
-- Name: rtpengine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: opensips
--

SELECT pg_catalog.setval('public.rtpengine_id_seq', 6, true);


--
-- PostgreSQL database dump complete
--

