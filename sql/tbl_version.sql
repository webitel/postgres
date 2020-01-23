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
-- Data for Name: version; Type: TABLE DATA; Schema: public; Owner: opensips
--

COPY public.version (table_name, table_version) FROM stdin;
acc	7
missed_calls	5
dbaliases	2
subscriber	7
usr_preferences	3
clusterer	4
dialog	10
dialplan	5
dispatcher	8
domain	3
dr_gateways	6
dr_rules	3
dr_carriers	2
dr_groups	2
dr_partitions	1
grp	3
re_grp	2
load_balancer	2
silo	6
address	5
rtpproxy_sockets	0
rtpengine	1
speed_dial	3
tls_mgm	2
uri	2
location	1013
presentity	5
active_watchers	12
watchers	4
xcap	4
pua	8
rls_presentity	1
rls_watchers	2
b2b_entities	1
b2b_logic	3
cachedb	2
cc_flows	1
cc_agents	1
cc_cdrs	1
carrierroute	3
carrierfailureroute	2
route_tree	2
cpl	2
domainpolicy	3
emergency_routing	1
emergency_report	1
emergency_service_provider	1
fraud_detection	1
freeswitch	1
imc_rooms	2
imc_members	2
sip_trace	5
userblacklist	2
globalblacklist	2
wbt_subscriber	2
registrant	2
wbt_registrant	2
directory.sip_address_allow	5
\.


--
-- PostgreSQL database dump complete
--

