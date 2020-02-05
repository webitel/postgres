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

ALTER TABLE IF EXISTS ONLY storage.file_backend_profiles_acl DROP CONSTRAINT IF EXISTS file_backend_profiles_acl_subject_fk;
ALTER TABLE IF EXISTS ONLY storage.file_backend_profiles_acl DROP CONSTRAINT IF EXISTS file_backend_profiles_acl_object_fk;
ALTER TABLE IF EXISTS ONLY storage.file_backend_profiles_acl DROP CONSTRAINT IF EXISTS file_backend_profiles_acl_grantor_id_fk;
ALTER TABLE IF EXISTS ONLY storage.file_backend_profiles_acl DROP CONSTRAINT IF EXISTS file_backend_profiles_acl_grantor_fk;
ALTER TABLE IF EXISTS ONLY storage.file_backend_profiles_acl DROP CONSTRAINT IF EXISTS file_backend_profiles_acl_domain_fk;
ALTER TABLE IF EXISTS ONLY public.widget DROP CONSTRAINT IF EXISTS widget_callback_queue_id_fk;
ALTER TABLE IF EXISTS ONLY public.wbt_token DROP CONSTRAINT IF EXISTS wbt_token_owner;
ALTER TABLE IF EXISTS ONLY public.wbt_token DROP CONSTRAINT IF EXISTS wbt_token_domain;
ALTER TABLE IF EXISTS ONLY public.wbt_auth_member DROP CONSTRAINT IF EXISTS wbt_membership_role;
ALTER TABLE IF EXISTS ONLY public.wbt_auth_member DROP CONSTRAINT IF EXISTS wbt_membership_owner;
ALTER TABLE IF EXISTS ONLY public.wbt_auth_member DROP CONSTRAINT IF EXISTS wbt_membership_grantor;
ALTER TABLE IF EXISTS ONLY public.wbt_auth_member DROP CONSTRAINT IF EXISTS wbt_membership_domain;
ALTER TABLE IF EXISTS ONLY public.wbt_domain DROP CONSTRAINT IF EXISTS wbt_domain_role_owner;
ALTER TABLE IF EXISTS ONLY public.wbt_device DROP CONSTRAINT IF EXISTS wbt_device_user;
ALTER TABLE IF EXISTS ONLY public.wbt_device DROP CONSTRAINT IF EXISTS wbt_device_domain;
ALTER TABLE IF EXISTS ONLY public.wbt_cert_usage DROP CONSTRAINT IF EXISTS wbt_cert_user;
ALTER TABLE IF EXISTS ONLY public.wbt_cert_usage DROP CONSTRAINT IF EXISTS wbt_cert_usage_wbt_cert_grants_id_fk;
ALTER TABLE IF EXISTS ONLY public.wbt_cert_usage DROP CONSTRAINT IF EXISTS wbt_cert_domain;
ALTER TABLE IF EXISTS ONLY public.wbt_cert_grants DROP CONSTRAINT IF EXISTS wbt_cert_claim;
ALTER TABLE IF EXISTS ONLY public.wbt_auth DROP CONSTRAINT IF EXISTS wbt_authdc;
ALTER TABLE IF EXISTS ONLY public.cc_skils DROP CONSTRAINT IF EXISTS cc_skils_domain_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_skill_in_agent DROP CONSTRAINT IF EXISTS cc_skill_in_agent_cc_skils_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_skill_in_agent DROP CONSTRAINT IF EXISTS cc_skill_in_agent_cc_agent_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_resource_in_routing DROP CONSTRAINT IF EXISTS cc_resource_in_routing_cc_queue_routing_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_resource_in_routing DROP CONSTRAINT IF EXISTS cc_resource_in_queue_cc_outbound_resource_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_queue_timing DROP CONSTRAINT IF EXISTS cc_queue_timing_cc_queue_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_queue_timing DROP CONSTRAINT IF EXISTS cc_queue_timing_cc_communication_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_queue_routing DROP CONSTRAINT IF EXISTS cc_queue_routing_cc_queue_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_queue DROP CONSTRAINT IF EXISTS cc_queue_domain_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_queue DROP CONSTRAINT IF EXISTS cc_queue_cc_list_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_queue DROP CONSTRAINT IF EXISTS cc_queue_calendar_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_outbound_resource DROP CONSTRAINT IF EXISTS cc_outbound_resource_domain_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_member_communications DROP CONSTRAINT IF EXISTS cc_member_communications_cc_member_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_member_communications DROP CONSTRAINT IF EXISTS cc_member_communications_cc_communication_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_member DROP CONSTRAINT IF EXISTS cc_member_cc_queue_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_member_attempt DROP CONSTRAINT IF EXISTS cc_member_attempt_cc_queue_timing_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_member_attempt DROP CONSTRAINT IF EXISTS cc_member_attempt_cc_queue_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_member_attempt DROP CONSTRAINT IF EXISTS cc_member_attempt_cc_member_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_member_attempt DROP CONSTRAINT IF EXISTS cc_member_attempt_cc_member_communications_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_member_attempt DROP CONSTRAINT IF EXISTS cc_member_attempt_cc_agent_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_list DROP CONSTRAINT IF EXISTS cc_list_domain_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_list_communications DROP CONSTRAINT IF EXISTS cc_list_communications_cc_list_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_agent DROP CONSTRAINT IF EXISTS cc_agent_user_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_agent_state_history DROP CONSTRAINT IF EXISTS cc_agent_status_history_cc_agent_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_agent_activity DROP CONSTRAINT IF EXISTS cc_agent_statistic_cc_agent_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_agent_in_queue DROP CONSTRAINT IF EXISTS cc_agent_in_queue_cc_skils_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_agent_in_queue DROP CONSTRAINT IF EXISTS cc_agent_in_queue_cc_queue_id_fk;
ALTER TABLE IF EXISTS ONLY public.cc_agent_in_queue DROP CONSTRAINT IF EXISTS cc_agent_in_queue_cc_agent_id_fk;
ALTER TABLE IF EXISTS ONLY public.callflow_variables DROP CONSTRAINT IF EXISTS callflow_variables_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY public.callflow_public_1 DROP CONSTRAINT IF EXISTS callflow_public_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY public.callflow_extension DROP CONSTRAINT IF EXISTS callflow_extension_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY public.callflow_default DROP CONSTRAINT IF EXISTS callflow_default_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY public.callback_members DROP CONSTRAINT IF EXISTS callback_members_widget_id_fk;
ALTER TABLE IF EXISTS ONLY public.callback_members_comment DROP CONSTRAINT IF EXISTS callback_members_comment_callback_members_id_fk;
ALTER TABLE IF EXISTS ONLY public.callback_members DROP CONSTRAINT IF EXISTS callback_members_callback_queue_id_fk;
ALTER TABLE IF EXISTS ONLY public.callback_calls DROP CONSTRAINT IF EXISTS callback_calls_callback_members_id_fk;
ALTER TABLE IF EXISTS ONLY public.calendar_except DROP CONSTRAINT IF EXISTS calendar_except_calendar_id_fk;
ALTER TABLE IF EXISTS ONLY public.calendar DROP CONSTRAINT IF EXISTS calendar_domain_id_fk;
ALTER TABLE IF EXISTS ONLY public.calendar_accept_of_day DROP CONSTRAINT IF EXISTS calendar_accept_of_day_calendar_id_fk;
ALTER TABLE IF EXISTS ONLY permissions.wbt_auth DROP CONSTRAINT IF EXISTS wbt_auth_wbt_domain_id_fk;
ALTER TABLE IF EXISTS ONLY permissions.wbt_auth_member DROP CONSTRAINT IF EXISTS wbt_auth_member_group_fk;
ALTER TABLE IF EXISTS ONLY permissions.wbt_auth_member DROP CONSTRAINT IF EXISTS wbt_auth_member_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_user DROP CONSTRAINT IF EXISTS wbt_user_updated_by_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_user_token DROP CONSTRAINT IF EXISTS wbt_user_token_updated_by_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_user_token DROP CONSTRAINT IF EXISTS wbt_user_token_owner_id_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_user_token DROP CONSTRAINT IF EXISTS wbt_user_token_domain_id_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_user_token DROP CONSTRAINT IF EXISTS wbt_user_token_disabled_by_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_user_token DROP CONSTRAINT IF EXISTS wbt_user_token_created_by_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_user DROP CONSTRAINT IF EXISTS wbt_user_device_id_ref;
ALTER TABLE IF EXISTS ONLY directory.wbt_user DROP CONSTRAINT IF EXISTS wbt_user_device_id_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_user DROP CONSTRAINT IF EXISTS wbt_user_deleted_by_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_user DROP CONSTRAINT IF EXISTS wbt_user_dc_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_user DROP CONSTRAINT IF EXISTS wbt_user_created_by_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_user DROP CONSTRAINT IF EXISTS wbt_user_auth_id_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_session DROP CONSTRAINT IF EXISTS wbt_session_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_session DROP CONSTRAINT IF EXISTS wbt_session_auth_id_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_domain DROP CONSTRAINT IF EXISTS wbt_domain_cert_serial_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth_member DROP CONSTRAINT IF EXISTS wbt_domain_auth_member_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device DROP CONSTRAINT IF EXISTS wbt_device_user_id_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device DROP CONSTRAINT IF EXISTS wbt_device_updated_by_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device DROP CONSTRAINT IF EXISTS wbt_device_deleted_by_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device DROP CONSTRAINT IF EXISTS wbt_device_dc_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device DROP CONSTRAINT IF EXISTS wbt_device_created_by_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device_audit DROP CONSTRAINT IF EXISTS wbt_device_audit_user_id_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device_audit_revoke DROP CONSTRAINT IF EXISTS wbt_device_audit_user_id_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device_audit DROP CONSTRAINT IF EXISTS wbt_device_audit_user_dc_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device_audit_revoke DROP CONSTRAINT IF EXISTS wbt_device_audit_user_dc_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device_audit DROP CONSTRAINT IF EXISTS wbt_device_audit_device_id_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device_audit DROP CONSTRAINT IF EXISTS wbt_device_audit_device_dc_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device_audit_revoke DROP CONSTRAINT IF EXISTS wbt_device_audit_device_dc_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device_audit DROP CONSTRAINT IF EXISTS wbt_device_audit_dc_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device_audit_revoke DROP CONSTRAINT IF EXISTS wbt_device_audit_dc_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device_acl DROP CONSTRAINT IF EXISTS wbt_device_acl_subject_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device_acl DROP CONSTRAINT IF EXISTS wbt_device_acl_object_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device_acl DROP CONSTRAINT IF EXISTS wbt_device_acl_grantor_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device_acl DROP CONSTRAINT IF EXISTS wbt_device_acl_domain_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_class DROP CONSTRAINT IF EXISTS wbt_class_domain_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_class_acl DROP CONSTRAINT IF EXISTS wbt_class_acl_subject_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_class_acl DROP CONSTRAINT IF EXISTS wbt_class_acl_object_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_class_acl DROP CONSTRAINT IF EXISTS wbt_class_acl_grantor_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_class_acl DROP CONSTRAINT IF EXISTS wbt_class_acl_domain_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth_member DROP CONSTRAINT IF EXISTS wbt_auth_member_user_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth_member DROP CONSTRAINT IF EXISTS wbt_auth_member_role_id_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth_grants DROP CONSTRAINT IF EXISTS wbt_auth_grants_wbt_grant_uuid_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth_grants DROP CONSTRAINT IF EXISTS wbt_auth_grants_domain_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth DROP CONSTRAINT IF EXISTS wbt_auth_domain_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth_acl DROP CONSTRAINT IF EXISTS wbt_auth_acl_subject_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth_acl DROP CONSTRAINT IF EXISTS wbt_auth_acl_object_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth_acl DROP CONSTRAINT IF EXISTS wbt_auth_acl_grantor_id_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth_acl DROP CONSTRAINT IF EXISTS wbt_auth_acl_grantor_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth_acl DROP CONSTRAINT IF EXISTS wbt_auth_acl_domain_fk;
ALTER TABLE IF EXISTS ONLY directory.voip_channel DROP CONSTRAINT IF EXISTS voip_channel_user_id;
ALTER TABLE IF EXISTS ONLY directory.voip_channel DROP CONSTRAINT IF EXISTS voip_channel_gateway_id;
ALTER TABLE IF EXISTS ONLY directory.voip_channel DROP CONSTRAINT IF EXISTS voip_channel_domain_id;
ALTER TABLE IF EXISTS ONLY directory.voip_channel DROP CONSTRAINT IF EXISTS voip_channel_device_id;
ALTER TABLE IF EXISTS ONLY directory.sip_gateway_register DROP CONSTRAINT IF EXISTS sip_gateway_register_id_fk;
ALTER TABLE IF EXISTS ONLY directory.sip_gateway_allow DROP CONSTRAINT IF EXISTS sip_gateway_id_fk;
ALTER TABLE IF EXISTS ONLY directory.sip_gateway DROP CONSTRAINT IF EXISTS sip_gateway_domain_fk;
ALTER TABLE IF EXISTS ONLY directory.roles DROP CONSTRAINT IF EXISTS roles_dc_fk;
ALTER TABLE IF EXISTS ONLY directory.roles DROP CONSTRAINT IF EXISTS role_updator_id_fk;
ALTER TABLE IF EXISTS ONLY directory.roles DROP CONSTRAINT IF EXISTS role_updated_by_fk;
ALTER TABLE IF EXISTS ONLY directory.roles DROP CONSTRAINT IF EXISTS role_deletor_id_fk;
ALTER TABLE IF EXISTS ONLY directory.roles DROP CONSTRAINT IF EXISTS role_deleted_by_fk;
ALTER TABLE IF EXISTS ONLY directory.roles DROP CONSTRAINT IF EXISTS role_creator_id_fk;
ALTER TABLE IF EXISTS ONLY directory.roles DROP CONSTRAINT IF EXISTS role_created_by_fk;
ALTER TABLE IF EXISTS ONLY directory.license DROP CONSTRAINT IF EXISTS license_user_id_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_hotdesk DROP CONSTRAINT IF EXISTS hotdesk_device_id_fk;
ALTER TABLE IF EXISTS ONLY directory.contacts DROP CONSTRAINT IF EXISTS contacts_domain_fk;
ALTER TABLE IF EXISTS ONLY directory.contacts_acl DROP CONSTRAINT IF EXISTS contacts_acl_object_fk;
ALTER TABLE IF EXISTS ONLY directory.contacts_acl DROP CONSTRAINT IF EXISTS contacts_acl_domain_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_team DROP CONSTRAINT IF EXISTS cc_team_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_team_acl DROP CONSTRAINT IF EXISTS cc_team_acl_subject_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_team_acl DROP CONSTRAINT IF EXISTS cc_team_acl_object_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_team_acl DROP CONSTRAINT IF EXISTS cc_team_acl_grantor_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_team_acl DROP CONSTRAINT IF EXISTS cc_team_acl_grantor_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_team_acl DROP CONSTRAINT IF EXISTS cc_team_acl_domain_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_team_acl DROP CONSTRAINT IF EXISTS cc_team_acl_cc_team_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_supervisor_in_team DROP CONSTRAINT IF EXISTS cc_supervisor_in_team_cc_team_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_supervisor_in_team DROP CONSTRAINT IF EXISTS cc_supervisor_in_team_cc_agent_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_skill DROP CONSTRAINT IF EXISTS cc_skill_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_skill_in_agent DROP CONSTRAINT IF EXISTS cc_skill_in_agent_cc_skils_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_skill_in_agent DROP CONSTRAINT IF EXISTS cc_skill_in_agent_cc_agent_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue DROP CONSTRAINT IF EXISTS cc_queue_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue_statistics DROP CONSTRAINT IF EXISTS cc_queue_statistics_cc_queue_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue_statistics DROP CONSTRAINT IF EXISTS cc_queue_statistics_cc_bucket_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue_resource DROP CONSTRAINT IF EXISTS cc_queue_resource_cc_queue_id_fk_2;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue_resource DROP CONSTRAINT IF EXISTS cc_queue_resource_cc_queue_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue_resource DROP CONSTRAINT IF EXISTS cc_queue_resource_cc_outbound_resource_group_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue DROP CONSTRAINT IF EXISTS cc_queue_cc_team_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue DROP CONSTRAINT IF EXISTS cc_queue_cc_list_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue DROP CONSTRAINT IF EXISTS cc_queue_calendar_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue_acl DROP CONSTRAINT IF EXISTS cc_queue_acl_subject_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue_acl DROP CONSTRAINT IF EXISTS cc_queue_acl_object_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue_acl DROP CONSTRAINT IF EXISTS cc_queue_acl_grantor_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue_acl DROP CONSTRAINT IF EXISTS cc_queue_acl_grantor_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue_acl DROP CONSTRAINT IF EXISTS cc_queue_acl_domain_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue_acl DROP CONSTRAINT IF EXISTS cc_queue_acl_cc_queue_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource DROP CONSTRAINT IF EXISTS cc_outbound_resource_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource DROP CONSTRAINT IF EXISTS cc_outbound_resource_sip_gateway_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_in_group DROP CONSTRAINT IF EXISTS cc_outbound_resource_in_group_cc_outbound_resource_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_in_group DROP CONSTRAINT IF EXISTS cc_outbound_resource_in_group_cc_outbound_resource_group_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_group DROP CONSTRAINT IF EXISTS cc_outbound_resource_group_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_group DROP CONSTRAINT IF EXISTS cc_outbound_resource_group_cc_communication_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_group_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_group_acl_wbt_user_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_group_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_group_acl_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_group_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_group_acl_subject_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_group_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_group_acl_object_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_group_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_group_acl_grantor_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_group_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_group_acl_grantor_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_group_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_group_acl_domain_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_group_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_group_acl_cc_outbound_resource_group_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_display DROP CONSTRAINT IF EXISTS cc_outbound_resource_display_cc_outbound_resource_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_acl_subject_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_acl_object_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_acl_grantor_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_acl_grantor_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_acl_domain_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_acl_cc_outbound_resource_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member_messages DROP CONSTRAINT IF EXISTS cc_member_messages_cc_member_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member_messages DROP CONSTRAINT IF EXISTS cc_member_messages_cc_member_communications_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member_communications DROP CONSTRAINT IF EXISTS cc_member_communications_cc_member_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member_communications DROP CONSTRAINT IF EXISTS cc_member_communications_cc_communication_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member DROP CONSTRAINT IF EXISTS cc_member_cc_queue_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member DROP CONSTRAINT IF EXISTS cc_member_cc_bucket_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member_attempt_log DROP CONSTRAINT IF EXISTS cc_member_attempt_log_cc_queue_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member_attempt_log DROP CONSTRAINT IF EXISTS cc_member_attempt_log_cc_member_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member_attempt DROP CONSTRAINT IF EXISTS cc_member_attempt_cc_queue_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member_attempt DROP CONSTRAINT IF EXISTS cc_member_attempt_cc_member_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member_attempt DROP CONSTRAINT IF EXISTS cc_member_attempt_cc_bucket_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_list DROP CONSTRAINT IF EXISTS cc_list_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_list_communications DROP CONSTRAINT IF EXISTS cc_list_communications_cc_list_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_list_acl DROP CONSTRAINT IF EXISTS cc_list_acl_subject_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_list_acl DROP CONSTRAINT IF EXISTS cc_list_acl_object_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_list_acl DROP CONSTRAINT IF EXISTS cc_list_acl_grantor_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_list_acl DROP CONSTRAINT IF EXISTS cc_list_acl_grantor_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_list_acl DROP CONSTRAINT IF EXISTS cc_list_acl_domain_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_bucket_in_queue DROP CONSTRAINT IF EXISTS cc_bucket_in_queue_cc_queue_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_bucket_in_queue DROP CONSTRAINT IF EXISTS cc_bucket_in_queue_cc_bucket_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_bucket_acl DROP CONSTRAINT IF EXISTS cc_bucket_acl_subject_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_bucket_acl DROP CONSTRAINT IF EXISTS cc_bucket_acl_object_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_bucket_acl DROP CONSTRAINT IF EXISTS cc_bucket_acl_grantor_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_bucket_acl DROP CONSTRAINT IF EXISTS cc_bucket_acl_grantor_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_bucket_acl DROP CONSTRAINT IF EXISTS cc_bucket_acl_domain_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_bucket_acl DROP CONSTRAINT IF EXISTS cc_bucket_acl_cc_bucket_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent DROP CONSTRAINT IF EXISTS cc_agent_wbt_user_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent DROP CONSTRAINT IF EXISTS cc_agent_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_state_history DROP CONSTRAINT IF EXISTS cc_agent_status_history_cc_agent_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_activity DROP CONSTRAINT IF EXISTS cc_agent_statistic_cc_agent_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_in_team DROP CONSTRAINT IF EXISTS cc_agent_in_team_cc_team_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_in_team DROP CONSTRAINT IF EXISTS cc_agent_in_team_cc_skils_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_in_team DROP CONSTRAINT IF EXISTS cc_agent_in_team_cc_bucket_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_in_team DROP CONSTRAINT IF EXISTS cc_agent_in_team_cc_agent_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_attempt DROP CONSTRAINT IF EXISTS cc_agent_attempt_cc_agent_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_acl DROP CONSTRAINT IF EXISTS cc_agent_acl_subject_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_acl DROP CONSTRAINT IF EXISTS cc_agent_acl_object_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_acl DROP CONSTRAINT IF EXISTS cc_agent_acl_grantor_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_acl DROP CONSTRAINT IF EXISTS cc_agent_acl_grantor_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_acl DROP CONSTRAINT IF EXISTS cc_agent_acl_domain_fk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_acl DROP CONSTRAINT IF EXISTS cc_agent_acl_cc_agent_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.calendar DROP CONSTRAINT IF EXISTS calendar_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY call_center.calendar_except DROP CONSTRAINT IF EXISTS calendar_except_calendar_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.calendar DROP CONSTRAINT IF EXISTS calendar_calendar_timezones_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.calendar_acl DROP CONSTRAINT IF EXISTS calendar_acl_subject_fk;
ALTER TABLE IF EXISTS ONLY call_center.calendar_acl DROP CONSTRAINT IF EXISTS calendar_acl_object_fk;
ALTER TABLE IF EXISTS ONLY call_center.calendar_acl DROP CONSTRAINT IF EXISTS calendar_acl_grantor_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.calendar_acl DROP CONSTRAINT IF EXISTS calendar_acl_grantor_fk;
ALTER TABLE IF EXISTS ONLY call_center.calendar_acl DROP CONSTRAINT IF EXISTS calendar_acl_domain_fk;
ALTER TABLE IF EXISTS ONLY call_center.calendar_accept_of_day DROP CONSTRAINT IF EXISTS calendar_accept_of_day_calendar_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.acr_routing_variables DROP CONSTRAINT IF EXISTS acr_routing_variables_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY call_center.acr_routing_scheme DROP CONSTRAINT IF EXISTS acr_routing_scheme_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY call_center.acr_routing_outbound_call DROP CONSTRAINT IF EXISTS acr_routing_outbound_call_acr_routing_scheme_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.acr_routing_inbound_call DROP CONSTRAINT IF EXISTS acr_routing_inbound_call_wbt_domain_dc_fk;
ALTER TABLE IF EXISTS ONLY call_center.acr_routing_inbound_call DROP CONSTRAINT IF EXISTS acr_routing_inbound_call_calendar_timezones_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.acr_routing_inbound_call DROP CONSTRAINT IF EXISTS acr_routing_inbound_call_acr_routing_scheme_id_fk;
ALTER TABLE IF EXISTS ONLY call_center.acr_routing_inbound_call DROP CONSTRAINT IF EXISTS acr_routing_inbound_call___fka;
ALTER TABLE IF EXISTS ONLY call_center.acr_jobs DROP CONSTRAINT IF EXISTS acr_jobs_acr_routing_scheme_id_fk;
DROP TRIGGER IF EXISTS wbt_user_constraints ON public.wbt_user;
DROP TRIGGER IF EXISTS wbt_group_constraints ON public.wbt_group;
DROP TRIGGER IF EXISTS wbt_domain_role_owner ON public.wbt_domain;
DROP TRIGGER IF EXISTS tg_set_routing_ids_on_update_pattern ON public.cc_queue_routing;
DROP TRIGGER IF EXISTS tg_set_routing_ids_on_update_number ON public.cc_member_communications;
DROP TRIGGER IF EXISTS tg_set_routing_ids_on_insert_or_delete_pattern ON public.cc_queue_routing;
DROP TRIGGER IF EXISTS tg_set_routing_ids_on_insert ON public.cc_member_communications;
DROP TRIGGER IF EXISTS tg_cc_set_agent_change_status_u ON public.cc_agent;
DROP TRIGGER IF EXISTS cdr_b_instead_insert_tg ON public.cdr_b;
DROP TRIGGER IF EXISTS cdr_a_instead_insert_tg ON public.cdr_a;
DROP TRIGGER IF EXISTS callflow_public_check_destination_tg ON public.callflow_public_1;
DROP TRIGGER IF EXISTS tg_set_routing_ids_on_update_number ON call_center.cc_member_communications;
DROP TRIGGER IF EXISTS tg_set_routing_ids_on_insert ON call_center.cc_member_communications;
DROP TRIGGER IF EXISTS tg_cc_set_agent_change_status_u ON call_center.cc_agent;
DROP TRIGGER IF EXISTS cc_member_sys_offset_id_trigger_update ON call_center.cc_member;
DROP TRIGGER IF EXISTS cc_member_sys_offset_id_trigger_inserted ON call_center.cc_member;
DROP TRIGGER IF EXISTS cc_member_statistic_trigger_updated ON call_center.cc_member;
DROP TRIGGER IF EXISTS cc_member_statistic_trigger_inserted ON call_center.cc_member;
DROP TRIGGER IF EXISTS cc_member_statistic_trigger_deleted ON call_center.cc_member;
DROP TRIGGER IF EXISTS cc_member_set_sys_destinations_update ON call_center.cc_member;
DROP TRIGGER IF EXISTS cc_member_set_sys_destinations_insert ON call_center.cc_member;
DROP RULE IF EXISTS wbt_user_delete_auth ON directory.wbt_user;
CREATE OR REPLACE VIEW call_center.cc_queue_distribute_resources AS
SELECT
    NULL::integer AS queue_id,
    NULL::integer AS resource_id,
    NULL::integer[] AS routing_ids,
    NULL::bigint AS min_activity_at,
    NULL::integer AS call_count,
    NULL::bigint AS dnc_list_id,
    NULL::call_center.cc_communication_type_l[] AS times,
    NULL::smallint AS type,
    NULL::character varying(20) AS strategy,
    NULL::jsonb AS payload,
    NULL::bigint AS team_id;
DROP STATISTICS IF EXISTS directory.s2_test;
DROP STATISTICS IF EXISTS directory.s1_test;
DROP STATISTICS IF EXISTS call_center.cc_member_timezone_stats;
DROP INDEX IF EXISTS storage.media_files_domain_id_name_uindex;
DROP INDEX IF EXISTS storage.file_backend_profiles_domain_udx;
DROP INDEX IF EXISTS storage.file_backend_profiles_acl_subject_object_udx;
DROP INDEX IF EXISTS storage.file_backend_profiles_acl_object_subject_udx;
DROP INDEX IF EXISTS storage.file_backend_profiles_acl_id_uindex;
DROP INDEX IF EXISTS storage.file_backend_profiles_acl_grantor_idx;
DROP INDEX IF EXISTS public.xcap_source_idx;
DROP INDEX IF EXISTS public.widget_id_index;
DROP INDEX IF EXISTS public.wbt_sequence_name;
DROP INDEX IF EXISTS public.wbt_membership_sup;
DROP INDEX IF EXISTS public.wbt_dnsrv;
DROP INDEX IF EXISTS public.wbt_caller_number;
DROP INDEX IF EXISTS public.wbt_authrid;
DROP INDEX IF EXISTS public.usr_preferences_value_idx;
DROP INDEX IF EXISTS public.usr_preferences_uda_idx;
DROP INDEX IF EXISTS public.usr_preferences_ua_idx;
DROP INDEX IF EXISTS public.users_id_uindex;
DROP INDEX IF EXISTS public.userblacklist_userblacklist_idx;
DROP INDEX IF EXISTS public.subscriber_username_idx;
DROP INDEX IF EXISTS public.ssd_profile_name;
DROP INDEX IF EXISTS public.ssd_hostname;
DROP INDEX IF EXISTS public.ssd_expires;
DROP INDEX IF EXISTS public.ssd_contact_str;
DROP INDEX IF EXISTS public.ssd_call_id;
DROP INDEX IF EXISTS public.ssa_subscriber;
DROP INDEX IF EXISTS public.ssa_profile_name;
DROP INDEX IF EXISTS public.ssa_network_ip;
DROP INDEX IF EXISTS public.ssa_hostname;
DROP INDEX IF EXISTS public.ssa_aor;
DROP INDEX IF EXISTS public.ss_version;
DROP INDEX IF EXISTS public.ss_sub_to_user;
DROP INDEX IF EXISTS public.ss_sub_to_host;
DROP INDEX IF EXISTS public.ss_sip_user;
DROP INDEX IF EXISTS public.ss_sip_host;
DROP INDEX IF EXISTS public.ss_proto;
DROP INDEX IF EXISTS public.ss_profile_name;
DROP INDEX IF EXISTS public.ss_presence_hosts;
DROP INDEX IF EXISTS public.ss_orig_proto;
DROP INDEX IF EXISTS public.ss_network_port;
DROP INDEX IF EXISTS public.ss_network_ip;
DROP INDEX IF EXISTS public.ss_multi;
DROP INDEX IF EXISTS public.ss_hostname;
DROP INDEX IF EXISTS public.ss_full_from;
DROP INDEX IF EXISTS public.ss_expires;
DROP INDEX IF EXISTS public.ss_event;
DROP INDEX IF EXISTS public.ss_contact;
DROP INDEX IF EXISTS public.ss_call_id;
DROP INDEX IF EXISTS public.sp_sip_user;
DROP INDEX IF EXISTS public.sp_sip_host;
DROP INDEX IF EXISTS public.sp_profile_name;
DROP INDEX IF EXISTS public.sp_open_closed;
DROP INDEX IF EXISTS public.sp_hostname;
DROP INDEX IF EXISTS public.sp_expires;
DROP INDEX IF EXISTS public.sip_trace_trace_attrs_idx;
DROP INDEX IF EXISTS public.sip_trace_fromip_idx;
DROP INDEX IF EXISTS public.sip_trace_date_idx;
DROP INDEX IF EXISTS public.sip_trace_callid_idx;
DROP INDEX IF EXISTS public.silo_account_idx;
DROP INDEX IF EXISTS public.sd_uuid;
DROP INDEX IF EXISTS public.sd_sip_to_tag;
DROP INDEX IF EXISTS public.sd_sip_to_host;
DROP INDEX IF EXISTS public.sd_sip_from_user;
DROP INDEX IF EXISTS public.sd_sip_from_tag;
DROP INDEX IF EXISTS public.sd_sip_from_host;
DROP INDEX IF EXISTS public.sd_rcd;
DROP INDEX IF EXISTS public.sd_presence_id;
DROP INDEX IF EXISTS public.sd_presence_data;
DROP INDEX IF EXISTS public.sd_hostname;
DROP INDEX IF EXISTS public.sd_expires;
DROP INDEX IF EXISTS public.sd_call_info_state;
DROP INDEX IF EXISTS public.sd_call_info;
DROP INDEX IF EXISTS public.sd_call_id;
DROP INDEX IF EXISTS public.sa_nonce;
DROP INDEX IF EXISTS public.sa_last_nc;
DROP INDEX IF EXISTS public.sa_hostname;
DROP INDEX IF EXISTS public.sa_expires;
DROP INDEX IF EXISTS public.rls_presentity_updated_idx;
DROP INDEX IF EXISTS public.regindex1;
DROP INDEX IF EXISTS public.re_grp_group_idx;
DROP INDEX IF EXISTS public.pua_update_idx;
DROP INDEX IF EXISTS public.pua_del2_idx;
DROP INDEX IF EXISTS public.pua_del1_idx;
DROP INDEX IF EXISTS public.nat_map_port_proto;
DROP INDEX IF EXISTS public.missed_calls_callid_idx;
DROP INDEX IF EXISTS public.location_device_id_index;
DROP INDEX IF EXISTS public.load_balancer_dsturi_idx;
DROP INDEX IF EXISTS public.globalblacklist_globalblacklist_idx;
DROP INDEX IF EXISTS public.domainpolicy_rule_idx;
DROP INDEX IF EXISTS public.domain_id_uindex;
DROP INDEX IF EXISTS public.dbaliases_target_idx;
DROP INDEX IF EXISTS public.complete9;
DROP INDEX IF EXISTS public.complete8;
DROP INDEX IF EXISTS public.complete7;
DROP INDEX IF EXISTS public.complete6;
DROP INDEX IF EXISTS public.complete5;
DROP INDEX IF EXISTS public.complete4;
DROP INDEX IF EXISTS public.complete3;
DROP INDEX IF EXISTS public.complete2;
DROP INDEX IF EXISTS public.complete11;
DROP INDEX IF EXISTS public.complete10;
DROP INDEX IF EXISTS public.complete1;
DROP INDEX IF EXISTS public.cdr_bad_event_id_uindex;
DROP INDEX IF EXISTS public.cdr_b_elastic_created_at_state_index;
DROP INDEX IF EXISTS public.cdr_a_elastic_created_at_state_index;
DROP INDEX IF EXISTS public.cc_skils_id_uindex;
DROP INDEX IF EXISTS public.cc_skill_in_agent_skill_id_agent_id_capacity_uindex;
DROP INDEX IF EXISTS public.cc_skill_in_agent_id_uindex;
DROP INDEX IF EXISTS public.cc_resource_in_routing_resource_id_routing_id_index;
DROP INDEX IF EXISTS public.cc_resource_in_routing_priority_index;
DROP INDEX IF EXISTS public.cc_resource_in_queue_id_uindex;
DROP INDEX IF EXISTS public.cc_queue_timing_queue_id_communication_id_start_time_of_day_end;
DROP INDEX IF EXISTS public.cc_queue_timing_id_uindex;
DROP INDEX IF EXISTS public.cc_queue_timing_communication_id_max_attempt_index;
DROP INDEX IF EXISTS public.cc_queue_routing_queue_id_index;
DROP INDEX IF EXISTS public.cc_queue_routing_id_uindex;
DROP INDEX IF EXISTS public.cc_queue_resource_id_uindex;
DROP INDEX IF EXISTS public.cc_queue_id_uindex;
DROP INDEX IF EXISTS public.cc_queue_enabled_priority_index;
DROP INDEX IF EXISTS public.cc_member_priority_id_last_hangup_at_queue_id_index;
DROP INDEX IF EXISTS public.cc_member_last_hangup_at_queue_id_index;
DROP INDEX IF EXISTS public.cc_member_id_index;
DROP INDEX IF EXISTS public.cc_member_communications_routing_ids_gin;
DROP INDEX IF EXISTS public.cc_member_communications_number_index;
DROP INDEX IF EXISTS public.cc_member_communications_member_id_number_uindex;
DROP INDEX IF EXISTS public.cc_member_communications_member_id_last_hangup_at_priority_inde;
DROP INDEX IF EXISTS public.cc_member_attempt_state_index_test;
DROP INDEX IF EXISTS public.cc_member_attempt_state_index;
DROP INDEX IF EXISTS public.cc_member_attempt_queue_id_index;
DROP INDEX IF EXISTS public.cc_member_attempt_node_id_index;
DROP INDEX IF EXISTS public.cc_member_attempt_member_id_state_hangup_at_index;
DROP INDEX IF EXISTS public.cc_member_attempt_member_id_index;
DROP INDEX IF EXISTS public.cc_member_attempt_member_id_created_at_index;
DROP INDEX IF EXISTS public.cc_member_attempt_id_uindex;
DROP INDEX IF EXISTS public.cc_member_attempt_hangup_at_queue_id_index;
DROP INDEX IF EXISTS public.cc_member_attempt_communication_id_hangup_time_index;
DROP INDEX IF EXISTS public.cc_list_communications_list_id_number_uindex;
DROP INDEX IF EXISTS public.cc_list_communications_id_uindex;
DROP INDEX IF EXISTS public.cc_communication_id_uindex;
DROP INDEX IF EXISTS public.cc_cluster_node_name_uindex;
DROP INDEX IF EXISTS public.cc_calls_b2buaid_idx;
DROP INDEX IF EXISTS public.cc_call_list_id_uindex;
DROP INDEX IF EXISTS public.cc_agent_status_state_index;
DROP INDEX IF EXISTS public.cc_agent_status_history_id_uindex;
DROP INDEX IF EXISTS public.cc_agent_status_history_agent_id_join_at_index;
DROP INDEX IF EXISTS public.cc_agent_state_timeout_index;
DROP INDEX IF EXISTS public.cc_agent_state_history_agent_id_joined_at_uindex;
DROP INDEX IF EXISTS public.cc_agent_in_queue_skill_id_queue_id_uindex;
DROP INDEX IF EXISTS public.cc_agent_in_queue_queue_id_lvl_index;
DROP INDEX IF EXISTS public.cc_agent_in_queue_queue_id_agent_id_skill_id_uindex;
DROP INDEX IF EXISTS public.cc_agent_in_queue_id_uindex;
DROP INDEX IF EXISTS public.cc_agent_in_queue_agent_id_index;
DROP INDEX IF EXISTS public.cc_agent_id_uindex;
DROP INDEX IF EXISTS public.cc_agent_activity_agent_id_last_offering_call_at_uindex;
DROP INDEX IF EXISTS public.callflow_public_id_uindex;
DROP INDEX IF EXISTS public.callflow_public_disabled_index;
DROP INDEX IF EXISTS public.callflow_public_destination_number_index;
DROP INDEX IF EXISTS public.callflow_extension_id_uindex;
DROP INDEX IF EXISTS public.callflow_extension_destination_number_domain_index;
DROP INDEX IF EXISTS public.callflow_default_order_index;
DROP INDEX IF EXISTS public.callflow_default_id_uindex;
DROP INDEX IF EXISTS public.callflow_default_destination_number_disabled_domain_index;
DROP INDEX IF EXISTS public.callback_queue_domain_index;
DROP INDEX IF EXISTS public.callback_queue_agents_index;
DROP INDEX IF EXISTS public.callback_members_queue_id_index;
DROP INDEX IF EXISTS public.callback_members_id_uindex;
DROP INDEX IF EXISTS public.callback_members_created_on_index;
DROP INDEX IF EXISTS public.callback_members_comment_id_uindex;
DROP INDEX IF EXISTS public.callback_members_callback_time_index;
DROP INDEX IF EXISTS public.callback_members_callback_time_domain_done_number_index;
DROP INDEX IF EXISTS public.callback_members_callback_time_domain_done_index;
DROP INDEX IF EXISTS public.callback_calls_id_uindex;
DROP INDEX IF EXISTS public.calendar_name_id_index;
DROP INDEX IF EXISTS public.calendar_id_uindex;
DROP INDEX IF EXISTS public.calendar_except_id_uindex;
DROP INDEX IF EXISTS public.calendar_accept_of_day_id_uindex;
DROP INDEX IF EXISTS public.calendar_accept_of_day_calendar_id_week_day_start_time_of_day_e;
DROP INDEX IF EXISTS public.b2b_entities_b2b_entities_param;
DROP INDEX IF EXISTS public.agent_statistic_id_uindex;
DROP INDEX IF EXISTS public.acc_callid_idx;
DROP INDEX IF EXISTS permissions.wbt_test_acl_role_id_can_read_module_id_index;
DROP INDEX IF EXISTS permissions.wbt_test_acl_module_id_index;
DROP INDEX IF EXISTS permissions.wbt_test_acl_id_uindex;
DROP INDEX IF EXISTS permissions.wbt_module_dc_index;
DROP INDEX IF EXISTS permissions.wbt_module_dc_id_uindex;
DROP INDEX IF EXISTS permissions.wbt_module_dc_id_index;
DROP INDEX IF EXISTS permissions.wbt_domain_id_uindex;
DROP INDEX IF EXISTS permissions.wbt_auth_member_dc_member_id_index;
DROP INDEX IF EXISTS permissions.wbt_auth_id_uindex;
DROP INDEX IF EXISTS permissions.tst;
DROP INDEX IF EXISTS directory.wbt_user_token_user_id_idx;
DROP INDEX IF EXISTS directory.wbt_user_token_udx;
DROP INDEX IF EXISTS directory.wbt_user_token_domain_id_idx;
DROP INDEX IF EXISTS directory.wbt_user_id_uindex;
DROP INDEX IF EXISTS directory.wbt_user_extension_uindex;
DROP INDEX IF EXISTS directory.wbt_user_email_uindex;
DROP INDEX IF EXISTS directory.wbt_user_dc_udx;
DROP INDEX IF EXISTS directory.wbt_session_refresh_token_uindex;
DROP INDEX IF EXISTS directory.wbt_session_code_token_uindex;
DROP INDEX IF EXISTS directory.wbt_session_access_token_uindex;
DROP INDEX IF EXISTS directory.wbt_role_member_uindex;
DROP INDEX IF EXISTS directory.wbt_license_user_id_serial_uindex;
DROP INDEX IF EXISTS directory.wbt_domain_tel_number_uindex;
DROP INDEX IF EXISTS directory.wbt_domain_name_uindex;
DROP INDEX IF EXISTS directory.wbt_domain_dc_index;
DROP INDEX IF EXISTS directory.wbt_domain_class_uindex;
DROP INDEX IF EXISTS directory.wbt_domain_auth_uindex;
DROP INDEX IF EXISTS directory.wbt_device_user_index;
DROP INDEX IF EXISTS directory.wbt_device_mac_uindex;
DROP INDEX IF EXISTS directory.wbt_device_ip_uindex;
DROP INDEX IF EXISTS directory.wbt_device_id_uindex;
DROP INDEX IF EXISTS directory.wbt_device_dc_uindex;
DROP INDEX IF EXISTS directory.wbt_device_audit_user_idx;
DROP INDEX IF EXISTS directory.wbt_device_audit_udx;
DROP INDEX IF EXISTS directory.wbt_device_audit_device_idx;
DROP INDEX IF EXISTS directory.wbt_device_acl_subject_object_uindex;
DROP INDEX IF EXISTS directory.wbt_device_acl_object_subject_pk;
DROP INDEX IF EXISTS directory.wbt_device_acl_grantor_index;
DROP INDEX IF EXISTS directory.wbt_dc_domain_index;
DROP INDEX IF EXISTS directory.wbt_class_acl_subject_object_uindex;
DROP INDEX IF EXISTS directory.wbt_class_acl_object_subject_pk;
DROP INDEX IF EXISTS directory.wbt_class_acl_grantor_index;
DROP INDEX IF EXISTS directory.wbt_auth_acl_subject_object_udx;
DROP INDEX IF EXISTS directory.wbt_auth_acl_object_subject_pkx;
DROP INDEX IF EXISTS directory.wbt_auth_acl_grantor_index;
DROP INDEX IF EXISTS directory.voip_channel_call_uuid_index;
DROP INDEX IF EXISTS directory.sip_registrant_aor_uindex;
DROP INDEX IF EXISTS directory.sip_proxy_uindex;
DROP INDEX IF EXISTS directory.sip_gateway_register_state_index;
DROP INDEX IF EXISTS directory.sip_gateway_dc_udx;
DROP INDEX IF EXISTS directory.sip_gateway_allow_inet_uindex;
DROP INDEX IF EXISTS directory.roles_dc_udx;
DROP INDEX IF EXISTS directory.license_user_id_index;
DROP INDEX IF EXISTS directory.license_id_index;
DROP INDEX IF EXISTS directory.hotdesk_device_id_index;
DROP INDEX IF EXISTS directory.hotdesk_dc_name_uindex;
DROP INDEX IF EXISTS directory.contacts_dc_uindex;
DROP INDEX IF EXISTS directory.contacts_dc_name_index;
DROP INDEX IF EXISTS directory.contacts_dc_index;
DROP INDEX IF EXISTS directory.contacts_acl_subject_object_access_uindex;
DROP INDEX IF EXISTS directory.contacts_acl_object_subject_access_uindex;
DROP INDEX IF EXISTS call_center.cc_team_id_uindex;
DROP INDEX IF EXISTS call_center.cc_team_domain_udx;
DROP INDEX IF EXISTS call_center.cc_team_acl_subject_object_udx;
DROP INDEX IF EXISTS call_center.cc_team_acl_object_subject_udx;
DROP INDEX IF EXISTS call_center.cc_team_acl_id_uindex;
DROP INDEX IF EXISTS call_center.cc_team_acl_grantor_idx;
DROP INDEX IF EXISTS call_center.cc_supervisor_in_team_team_id_agent_id_uindex;
DROP INDEX IF EXISTS call_center.cc_supervisor_in_team_id_uindex;
DROP INDEX IF EXISTS call_center.cc_skils_id_uindex;
DROP INDEX IF EXISTS call_center.cc_skill_in_agent_skill_id_agent_id_capacity_uindex;
DROP INDEX IF EXISTS call_center.cc_skill_in_agent_id_uindex;
DROP INDEX IF EXISTS call_center.cc_queue_statistics_queue_id_bucket_id_uindex;
DROP INDEX IF EXISTS call_center.cc_queue_resource_queue_id_resource_group_id_uindex;
DROP INDEX IF EXISTS call_center.cc_queue_resource_id_uindex;
DROP INDEX IF EXISTS call_center.cc_queue_member_statistics_id_uindex;
DROP INDEX IF EXISTS call_center.cc_queue_id_priority_uindex;
DROP INDEX IF EXISTS call_center.cc_queue_enabled_priority_index;
DROP INDEX IF EXISTS call_center.cc_queue_domain_udx;
DROP INDEX IF EXISTS call_center.cc_queue_distribute_res_idx;
DROP INDEX IF EXISTS call_center.cc_queue_acl_subject_object_udx;
DROP INDEX IF EXISTS call_center.cc_queue_acl_object_subject_udx;
DROP INDEX IF EXISTS call_center.cc_queue_acl_id_uindex;
DROP INDEX IF EXISTS call_center.cc_queue_acl_grantor_idx;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_in_group_resource_id_group_id_uindex;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_in_group_id_uindex;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_group_domain_udx;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_group_distr_res_idx;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_group_acl_subject_object_udx;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_group_acl_object_subject_udx;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_group_acl_id_uindex;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_group_acl_grantor_idx;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_gateway_id_uindex;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_domain_udx;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_display_resource_id_index;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_display_resource_id_display_uindex;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_display_id_uindex;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_acl_subject_object_udx;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_acl_object_subject_udx;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_acl_id_uindex;
DROP INDEX IF EXISTS call_center.cc_outbound_resource_acl_grantor_idx;
DROP INDEX IF EXISTS call_center.cc_member_timezone_index;
DROP INDEX IF EXISTS call_center.cc_member_queue_id_index;
DROP INDEX IF EXISTS call_center.cc_member_messages_id_uindex;
DROP INDEX IF EXISTS call_center.cc_member_distribute_to_down_idx;
DROP INDEX IF EXISTS call_center.cc_member_distribute_cycle_idx;
DROP INDEX IF EXISTS call_center.cc_member_distribute_check_sys_offset_id;
DROP INDEX IF EXISTS call_center.cc_member_communications_test1_index;
DROP INDEX IF EXISTS call_center.cc_member_communications_queue_id_index;
DROP INDEX IF EXISTS call_center.cc_member_communications_member_id_index;
DROP INDEX IF EXISTS call_center.cc_member_communication_dis_idx;
DROP INDEX IF EXISTS call_center.cc_member_attempt_queue_id_index;
DROP INDEX IF EXISTS call_center.cc_member_attempt_member_id_index;
DROP INDEX IF EXISTS call_center.cc_member_attempt_log_queue_id_idx;
DROP INDEX IF EXISTS call_center.cc_member_attempt_log_member_id_index;
DROP INDEX IF EXISTS call_center.cc_member_attempt_log_hangup_at_index;
DROP INDEX IF EXISTS call_center.cc_member_attempt_log_created_at_queue_id_bucket_id_index;
DROP INDEX IF EXISTS call_center.cc_member_attempt_log_created_at_agent_id_uindex;
DROP INDEX IF EXISTS call_center.cc_member_attempt_log_created_at_agent_id_index;
DROP INDEX IF EXISTS call_center.cc_member_attempt_id_uindex;
DROP INDEX IF EXISTS call_center.cc_member_agent_id_index;
DROP INDEX IF EXISTS call_center.cc_list_domain_udx;
DROP INDEX IF EXISTS call_center.cc_list_communications_list_id_number_uindex;
DROP INDEX IF EXISTS call_center.cc_list_communications_id_uindex;
DROP INDEX IF EXISTS call_center.cc_list_acl_subject_object_udx;
DROP INDEX IF EXISTS call_center.cc_list_acl_object_subject_udx;
DROP INDEX IF EXISTS call_center.cc_list_acl_id_uindex;
DROP INDEX IF EXISTS call_center.cc_list_acl_grantor_idx;
DROP INDEX IF EXISTS call_center.cc_communication_id_uindex;
DROP INDEX IF EXISTS call_center.cc_communication_code_domain_id_uindex;
DROP INDEX IF EXISTS call_center.cc_cluster_node_name_uindex;
DROP INDEX IF EXISTS call_center.cc_calls_id_uindex;
DROP INDEX IF EXISTS call_center.cc_call_list_id_uindex;
DROP INDEX IF EXISTS call_center.cc_bucket_in_queue_queue_id_bucket_id_uindex;
DROP INDEX IF EXISTS call_center.cc_bucket_in_queue_id_uindex;
DROP INDEX IF EXISTS call_center.cc_bucket_id_uindex;
DROP INDEX IF EXISTS call_center.cc_bucket_domain_udx;
DROP INDEX IF EXISTS call_center.cc_bucket_acl_subject_object_udx;
DROP INDEX IF EXISTS call_center.cc_bucket_acl_object_subject_udx;
DROP INDEX IF EXISTS call_center.cc_bucket_acl_grantor_idx;
DROP INDEX IF EXISTS call_center.cc_agent_status_state_id_index;
DROP INDEX IF EXISTS call_center.cc_agent_status_history_id_uindex;
DROP INDEX IF EXISTS call_center.cc_agent_status_history_agent_id_join_at_index;
DROP INDEX IF EXISTS call_center.cc_agent_state_timeout_index;
DROP INDEX IF EXISTS call_center.cc_agent_missed_attempt_id_uindex;
DROP INDEX IF EXISTS call_center.cc_agent_missed_attempt_created_at_agent_id_uindex;
DROP INDEX IF EXISTS call_center.cc_agent_missed_attempt_attempt_id_index;
DROP INDEX IF EXISTS call_center.cc_agent_missed_attempt_agent_id_index;
DROP INDEX IF EXISTS call_center.cc_agent_last_2hour_calls_mat_agent_id_adx;
DROP INDEX IF EXISTS call_center.cc_agent_in_team_team_id_lvl_index;
DROP INDEX IF EXISTS call_center.cc_agent_in_team_team_id_agent_id_skill_id_lvl_uindex;
DROP INDEX IF EXISTS call_center.cc_agent_in_team_skill_id_team_id_index;
DROP INDEX IF EXISTS call_center.cc_agent_in_team_id_uindex;
DROP INDEX IF EXISTS call_center.cc_agent_in_team_dis_skill;
DROP INDEX IF EXISTS call_center.cc_agent_in_team_dis_agent;
DROP INDEX IF EXISTS call_center.cc_agent_in_team_agent_id_index;
DROP INDEX IF EXISTS call_center.cc_agent_id_uindex;
DROP INDEX IF EXISTS call_center.cc_agent_domain_udx;
DROP INDEX IF EXISTS call_center.cc_agent_attempt_id_uindex;
DROP INDEX IF EXISTS call_center.cc_agent_activity_agent_id_last_offering_call_at_uindex;
DROP INDEX IF EXISTS call_center.cc_agent_acl_subject_object_udx;
DROP INDEX IF EXISTS call_center.cc_agent_acl_object_subject_udx;
DROP INDEX IF EXISTS call_center.cc_agent_acl_id_uindex;
DROP INDEX IF EXISTS call_center.cc_agent_acl_grantor_idx;
DROP INDEX IF EXISTS call_center.calendar_timezones_utc_offset_index;
DROP INDEX IF EXISTS call_center.calendar_timezones_name_uindex;
DROP INDEX IF EXISTS call_center.calendar_timezones_id_uindex;
DROP INDEX IF EXISTS call_center.calendar_id_uindex;
DROP INDEX IF EXISTS call_center.calendar_except_id_uindex;
DROP INDEX IF EXISTS call_center.calendar_domain_udx;
DROP INDEX IF EXISTS call_center.calendar_acl_subject_object_udx;
DROP INDEX IF EXISTS call_center.calendar_acl_object_subject_udx;
DROP INDEX IF EXISTS call_center.calendar_acl_grantor_idx;
DROP INDEX IF EXISTS call_center.calendar_accept_of_day_id_uindex;
DROP INDEX IF EXISTS call_center.calendar_accept_of_day_calendar_id_week_day_start_time_of_day_e;
DROP INDEX IF EXISTS call_center.agent_statistic_id_uindex;
DROP INDEX IF EXISTS call_center.acr_routing_variables_id_uindex;
DROP INDEX IF EXISTS call_center.acr_routing_variables_domain_id_key_uindex;
DROP INDEX IF EXISTS call_center.acr_routing_scheme_id_uindex;
DROP INDEX IF EXISTS call_center.acr_routing_outbound_call_id_uindex;
DROP INDEX IF EXISTS call_center.acr_routing_inbound_call_id_uindex;
DROP INDEX IF EXISTS call_center.acr_routing_inbound_call_domain_id_numbers_host_disabled_index;
DROP INDEX IF EXISTS call_center.acr_jobs_id_uindex;
ALTER TABLE IF EXISTS ONLY storage.upload_file_jobs DROP CONSTRAINT IF EXISTS upload_file_jobs_pkey;
ALTER TABLE IF EXISTS ONLY storage.schedulers DROP CONSTRAINT IF EXISTS schedulers_pkey;
ALTER TABLE IF EXISTS ONLY storage.remove_file_jobs DROP CONSTRAINT IF EXISTS remove_file_jobs_pkey;
ALTER TABLE IF EXISTS ONLY storage.media_files DROP CONSTRAINT IF EXISTS media_files_pkey;
ALTER TABLE IF EXISTS ONLY storage.jobs DROP CONSTRAINT IF EXISTS jobs_pkey;
ALTER TABLE IF EXISTS ONLY storage.files DROP CONSTRAINT IF EXISTS files_pkey;
ALTER TABLE IF EXISTS ONLY storage.file_backend_profiles DROP CONSTRAINT IF EXISTS file_backend_profiles_pkey;
ALTER TABLE IF EXISTS ONLY storage.file_backend_profiles_acl DROP CONSTRAINT IF EXISTS file_backend_profiles_acl_pk;
ALTER TABLE IF EXISTS ONLY public.xcap DROP CONSTRAINT IF EXISTS xcap_pkey;
ALTER TABLE IF EXISTS ONLY public.xcap DROP CONSTRAINT IF EXISTS xcap_account_doc_type_idx;
ALTER TABLE IF EXISTS ONLY public.widget DROP CONSTRAINT IF EXISTS widget_id_pk;
ALTER TABLE IF EXISTS ONLY public.wbt_token DROP CONSTRAINT IF EXISTS wbt_token_refresh_key;
ALTER TABLE IF EXISTS ONLY public.wbt_token DROP CONSTRAINT IF EXISTS wbt_token_pkey;
ALTER TABLE IF EXISTS ONLY public.wbt_token DROP CONSTRAINT IF EXISTS wbt_token_code_key;
ALTER TABLE IF EXISTS ONLY public.wbt_token DROP CONSTRAINT IF EXISTS wbt_token_access_key;
ALTER TABLE IF EXISTS ONLY public.wbt_sequence DROP CONSTRAINT IF EXISTS wbt_sequence_pkey;
ALTER TABLE IF EXISTS ONLY public.wbt_auth_member DROP CONSTRAINT IF EXISTS wbt_membership;
ALTER TABLE IF EXISTS ONLY public.wbt_domain DROP CONSTRAINT IF EXISTS wbt_domain_pkey;
ALTER TABLE IF EXISTS ONLY public.wbt_device DROP CONSTRAINT IF EXISTS wbt_device_oid;
ALTER TABLE IF EXISTS ONLY public.wbt_device DROP CONSTRAINT IF EXISTS wbt_device_id;
ALTER TABLE IF EXISTS ONLY public.wbt_cert_usage DROP CONSTRAINT IF EXISTS wbt_cert_usage_pk;
ALTER TABLE IF EXISTS ONLY public.wbt_cert DROP CONSTRAINT IF EXISTS wbt_cert_pkey;
ALTER TABLE IF EXISTS ONLY public.wbt_cert_grants DROP CONSTRAINT IF EXISTS wbt_cert_grants_pkey;
ALTER TABLE IF EXISTS ONLY public.wbt_auth DROP CONSTRAINT IF EXISTS wbt_authoid;
ALTER TABLE IF EXISTS ONLY public.watchers DROP CONSTRAINT IF EXISTS watchers_watcher_idx;
ALTER TABLE IF EXISTS ONLY public.watchers DROP CONSTRAINT IF EXISTS watchers_pkey;
ALTER TABLE IF EXISTS ONLY public.version DROP CONSTRAINT IF EXISTS version_t_name_idx;
ALTER TABLE IF EXISTS ONLY public.usr_preferences DROP CONSTRAINT IF EXISTS usr_preferences_pkey;
ALTER TABLE IF EXISTS ONLY public."user" DROP CONSTRAINT IF EXISTS users_pk;
ALTER TABLE IF EXISTS ONLY public.userblacklist DROP CONSTRAINT IF EXISTS userblacklist_pkey;
ALTER TABLE IF EXISTS ONLY public.uri DROP CONSTRAINT IF EXISTS uri_pkey;
ALTER TABLE IF EXISTS ONLY public.uri DROP CONSTRAINT IF EXISTS uri_account_idx;
ALTER TABLE IF EXISTS ONLY public.tls_mgm DROP CONSTRAINT IF EXISTS tls_mgm_pkey;
ALTER TABLE IF EXISTS ONLY public.tls_mgm DROP CONSTRAINT IF EXISTS tls_mgm_domain_type_idx;
ALTER TABLE IF EXISTS ONLY public.subscriber DROP CONSTRAINT IF EXISTS subscriber_pkey;
ALTER TABLE IF EXISTS ONLY public.subscriber DROP CONSTRAINT IF EXISTS subscriber_account_idx;
ALTER TABLE IF EXISTS ONLY public.speed_dial DROP CONSTRAINT IF EXISTS speed_dial_speed_dial_idx;
ALTER TABLE IF EXISTS ONLY public.speed_dial DROP CONSTRAINT IF EXISTS speed_dial_pkey;
ALTER TABLE IF EXISTS ONLY public.sip_trace DROP CONSTRAINT IF EXISTS sip_trace_pkey;
ALTER TABLE IF EXISTS ONLY public.silo DROP CONSTRAINT IF EXISTS silo_pkey;
ALTER TABLE IF EXISTS ONLY public.session DROP CONSTRAINT IF EXISTS session_pkey;
ALTER TABLE IF EXISTS ONLY public.rtpproxy_sockets DROP CONSTRAINT IF EXISTS rtpproxy_sockets_pkey;
ALTER TABLE IF EXISTS ONLY public.rtpengine DROP CONSTRAINT IF EXISTS rtpengine_pkey;
ALTER TABLE IF EXISTS ONLY public.route_tree DROP CONSTRAINT IF EXISTS route_tree_pkey;
ALTER TABLE IF EXISTS ONLY public.rls_watchers DROP CONSTRAINT IF EXISTS rls_watchers_rls_watcher_idx;
ALTER TABLE IF EXISTS ONLY public.rls_watchers DROP CONSTRAINT IF EXISTS rls_watchers_pkey;
ALTER TABLE IF EXISTS ONLY public.rls_presentity DROP CONSTRAINT IF EXISTS rls_presentity_rls_presentity_idx;
ALTER TABLE IF EXISTS ONLY public.rls_presentity DROP CONSTRAINT IF EXISTS rls_presentity_pkey;
ALTER TABLE IF EXISTS ONLY public.registrant DROP CONSTRAINT IF EXISTS registrant_pkey;
ALTER TABLE IF EXISTS ONLY public.registrant DROP CONSTRAINT IF EXISTS registrant_aor_idx;
ALTER TABLE IF EXISTS ONLY public.re_grp DROP CONSTRAINT IF EXISTS re_grp_pkey;
ALTER TABLE IF EXISTS ONLY public.pua DROP CONSTRAINT IF EXISTS pua_pkey;
ALTER TABLE IF EXISTS ONLY public.presentity DROP CONSTRAINT IF EXISTS presentity_presentity_idx;
ALTER TABLE IF EXISTS ONLY public.presentity DROP CONSTRAINT IF EXISTS presentity_pkey;
ALTER TABLE IF EXISTS ONLY public.missed_calls DROP CONSTRAINT IF EXISTS missed_calls_pkey;
ALTER TABLE IF EXISTS ONLY public.location DROP CONSTRAINT IF EXISTS location_pkey;
ALTER TABLE IF EXISTS ONLY public.load_balancer DROP CONSTRAINT IF EXISTS load_balancer_pkey;
ALTER TABLE IF EXISTS ONLY public.imc_rooms DROP CONSTRAINT IF EXISTS imc_rooms_pkey;
ALTER TABLE IF EXISTS ONLY public.imc_rooms DROP CONSTRAINT IF EXISTS imc_rooms_name_domain_idx;
ALTER TABLE IF EXISTS ONLY public.imc_members DROP CONSTRAINT IF EXISTS imc_members_pkey;
ALTER TABLE IF EXISTS ONLY public.imc_members DROP CONSTRAINT IF EXISTS imc_members_account_room_idx;
ALTER TABLE IF EXISTS ONLY public.grp DROP CONSTRAINT IF EXISTS grp_pkey;
ALTER TABLE IF EXISTS ONLY public.grp DROP CONSTRAINT IF EXISTS grp_account_group_idx;
ALTER TABLE IF EXISTS ONLY public.globalblacklist DROP CONSTRAINT IF EXISTS globalblacklist_pkey;
ALTER TABLE IF EXISTS ONLY public.freeswitch DROP CONSTRAINT IF EXISTS freeswitch_pkey;
ALTER TABLE IF EXISTS ONLY public.fraud_detection DROP CONSTRAINT IF EXISTS fraud_detection_pkey;
ALTER TABLE IF EXISTS ONLY public.emergency_service_provider DROP CONSTRAINT IF EXISTS emergency_service_provider_pkey;
ALTER TABLE IF EXISTS ONLY public.emergency_routing DROP CONSTRAINT IF EXISTS emergency_routing_pkey;
ALTER TABLE IF EXISTS ONLY public.emergency_report DROP CONSTRAINT IF EXISTS emergency_report_pkey;
ALTER TABLE IF EXISTS ONLY public.dr_rules DROP CONSTRAINT IF EXISTS dr_rules_pkey;
ALTER TABLE IF EXISTS ONLY public.dr_partitions DROP CONSTRAINT IF EXISTS dr_partitions_pkey;
ALTER TABLE IF EXISTS ONLY public.dr_groups DROP CONSTRAINT IF EXISTS dr_groups_pkey;
ALTER TABLE IF EXISTS ONLY public.dr_gateways DROP CONSTRAINT IF EXISTS dr_gateways_pkey;
ALTER TABLE IF EXISTS ONLY public.dr_gateways DROP CONSTRAINT IF EXISTS dr_gateways_dr_gw_idx;
ALTER TABLE IF EXISTS ONLY public.dr_carriers DROP CONSTRAINT IF EXISTS dr_carriers_pkey;
ALTER TABLE IF EXISTS ONLY public.dr_carriers DROP CONSTRAINT IF EXISTS dr_carriers_dr_carrier_idx;
ALTER TABLE IF EXISTS ONLY public.domainpolicy DROP CONSTRAINT IF EXISTS domainpolicy_rav_idx;
ALTER TABLE IF EXISTS ONLY public.domainpolicy DROP CONSTRAINT IF EXISTS domainpolicy_pkey;
ALTER TABLE IF EXISTS ONLY public.domain DROP CONSTRAINT IF EXISTS domain_pkey;
ALTER TABLE IF EXISTS ONLY public.domain DROP CONSTRAINT IF EXISTS domain_domain_idx;
ALTER TABLE IF EXISTS ONLY public.dispatcher DROP CONSTRAINT IF EXISTS dispatcher_pkey;
ALTER TABLE IF EXISTS ONLY public.dialplan DROP CONSTRAINT IF EXISTS dialplan_pkey;
ALTER TABLE IF EXISTS ONLY public.dialog DROP CONSTRAINT IF EXISTS dialog_pkey;
ALTER TABLE IF EXISTS ONLY public.dbaliases DROP CONSTRAINT IF EXISTS dbaliases_pkey;
ALTER TABLE IF EXISTS ONLY public.dbaliases DROP CONSTRAINT IF EXISTS dbaliases_alias_idx;
ALTER TABLE IF EXISTS ONLY public.cpl DROP CONSTRAINT IF EXISTS cpl_pkey;
ALTER TABLE IF EXISTS ONLY public.cpl DROP CONSTRAINT IF EXISTS cpl_account_idx;
ALTER TABLE IF EXISTS ONLY public.clusterer DROP CONSTRAINT IF EXISTS clusterer_pkey;
ALTER TABLE IF EXISTS ONLY public.clusterer DROP CONSTRAINT IF EXISTS clusterer_clusterer_idx;
ALTER TABLE IF EXISTS ONLY public.cdr_bad_event DROP CONSTRAINT IF EXISTS cdr_bad_event_pkey;
ALTER TABLE IF EXISTS ONLY public.cdr_b DROP CONSTRAINT IF EXISTS cdr_b_pkey;
ALTER TABLE IF EXISTS ONLY public.cdr_b_elastic DROP CONSTRAINT IF EXISTS cdr_b_elastic_pkey;
ALTER TABLE IF EXISTS ONLY public.cdr_a DROP CONSTRAINT IF EXISTS cdr_a_pkey;
ALTER TABLE IF EXISTS ONLY public.cdr_a_elastic DROP CONSTRAINT IF EXISTS cdr_a_elastic_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_skils DROP CONSTRAINT IF EXISTS cc_skils_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_skill_in_agent DROP CONSTRAINT IF EXISTS cc_skill_in_agent_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_resource_in_routing DROP CONSTRAINT IF EXISTS cc_resource_in_queue_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_queue_timing DROP CONSTRAINT IF EXISTS cc_queue_timing_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_queue_routing DROP CONSTRAINT IF EXISTS cc_queue_routing_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_outbound_resource DROP CONSTRAINT IF EXISTS cc_queue_resource_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_queue DROP CONSTRAINT IF EXISTS cc_queue_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_member DROP CONSTRAINT IF EXISTS cc_member_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_member_communications DROP CONSTRAINT IF EXISTS cc_member_communications_id_pk;
ALTER TABLE IF EXISTS ONLY public.cc_member_attempt DROP CONSTRAINT IF EXISTS cc_member_attempt_pk;
ALTER TABLE IF EXISTS ONLY public.cc_list_communications DROP CONSTRAINT IF EXISTS cc_list_communications_pk;
ALTER TABLE IF EXISTS ONLY public.cc_flows DROP CONSTRAINT IF EXISTS cc_flows_unique_flowid;
ALTER TABLE IF EXISTS ONLY public.cc_flows DROP CONSTRAINT IF EXISTS cc_flows_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_communication DROP CONSTRAINT IF EXISTS cc_communication_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_cluster DROP CONSTRAINT IF EXISTS cc_cluster_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_cdrs DROP CONSTRAINT IF EXISTS cc_cdrs_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_calls DROP CONSTRAINT IF EXISTS cc_calls_unique_id;
ALTER TABLE IF EXISTS ONLY public.cc_calls DROP CONSTRAINT IF EXISTS cc_calls_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_list DROP CONSTRAINT IF EXISTS cc_call_list_pk;
ALTER TABLE IF EXISTS ONLY public.cc_agents DROP CONSTRAINT IF EXISTS cc_agents_unique_agentid;
ALTER TABLE IF EXISTS ONLY public.cc_agents DROP CONSTRAINT IF EXISTS cc_agents_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_agent_state_history DROP CONSTRAINT IF EXISTS cc_agent_status_history_pk;
ALTER TABLE IF EXISTS ONLY public.cc_agent DROP CONSTRAINT IF EXISTS cc_agent_pkey;
ALTER TABLE IF EXISTS ONLY public.cc_agent_in_queue DROP CONSTRAINT IF EXISTS cc_agent_in_queue_pkey;
ALTER TABLE IF EXISTS ONLY public.carrierroute DROP CONSTRAINT IF EXISTS carrierroute_pkey;
ALTER TABLE IF EXISTS ONLY public.carrierfailureroute DROP CONSTRAINT IF EXISTS carrierfailureroute_pkey;
ALTER TABLE IF EXISTS ONLY public.callflow_variables DROP CONSTRAINT IF EXISTS callflow_variables_pkey;
ALTER TABLE IF EXISTS ONLY public.callflow_public_1 DROP CONSTRAINT IF EXISTS callflow_public_pkey;
ALTER TABLE IF EXISTS ONLY public.callflow_extension DROP CONSTRAINT IF EXISTS callflow_extension_pkey;
ALTER TABLE IF EXISTS ONLY public.callflow_default DROP CONSTRAINT IF EXISTS callflow_default_pkey;
ALTER TABLE IF EXISTS ONLY public.callback_queue DROP CONSTRAINT IF EXISTS callback_queue_id_pk;
ALTER TABLE IF EXISTS ONLY public.callback_members DROP CONSTRAINT IF EXISTS callback_members_pkey;
ALTER TABLE IF EXISTS ONLY public.callback_members_comment DROP CONSTRAINT IF EXISTS callback_members_comment_pkey;
ALTER TABLE IF EXISTS ONLY public.callback_calls DROP CONSTRAINT IF EXISTS callback_calls_pkey;
ALTER TABLE IF EXISTS ONLY public.calendar DROP CONSTRAINT IF EXISTS calendar_pkey;
ALTER TABLE IF EXISTS ONLY public.calendar_except DROP CONSTRAINT IF EXISTS calendar_except_pkey;
ALTER TABLE IF EXISTS ONLY public.calendar_accept_of_day DROP CONSTRAINT IF EXISTS calendar_accept_of_day_pkey;
ALTER TABLE IF EXISTS ONLY public.cachedb DROP CONSTRAINT IF EXISTS cachedb_pkey;
ALTER TABLE IF EXISTS ONLY public.b2b_logic DROP CONSTRAINT IF EXISTS b2b_logic_pkey;
ALTER TABLE IF EXISTS ONLY public.b2b_logic DROP CONSTRAINT IF EXISTS b2b_logic_b2b_logic_idx;
ALTER TABLE IF EXISTS ONLY public.b2b_entities DROP CONSTRAINT IF EXISTS b2b_entities_pkey;
ALTER TABLE IF EXISTS ONLY public.b2b_entities DROP CONSTRAINT IF EXISTS b2b_entities_b2b_entities_idx;
ALTER TABLE IF EXISTS ONLY public.cc_agent_activity DROP CONSTRAINT IF EXISTS agent_statistic_pk;
ALTER TABLE IF EXISTS ONLY public.address DROP CONSTRAINT IF EXISTS address_pkey;
ALTER TABLE IF EXISTS ONLY public.active_watchers DROP CONSTRAINT IF EXISTS active_watchers_pkey;
ALTER TABLE IF EXISTS ONLY public.active_watchers DROP CONSTRAINT IF EXISTS active_watchers_active_watchers_idx;
ALTER TABLE IF EXISTS ONLY public.acc DROP CONSTRAINT IF EXISTS acc_pkey;
ALTER TABLE IF EXISTS ONLY permissions.wbt_session DROP CONSTRAINT IF EXISTS wbt_token_refresh_key;
ALTER TABLE IF EXISTS ONLY permissions.wbt_session DROP CONSTRAINT IF EXISTS wbt_token_pkey;
ALTER TABLE IF EXISTS ONLY permissions.wbt_session DROP CONSTRAINT IF EXISTS wbt_token_code_key;
ALTER TABLE IF EXISTS ONLY permissions.wbt_session DROP CONSTRAINT IF EXISTS wbt_token_access_key;
ALTER TABLE IF EXISTS ONLY permissions.wbt_test_acl DROP CONSTRAINT IF EXISTS wbt_test_acl_pk;
ALTER TABLE IF EXISTS ONLY permissions.wbt_module DROP CONSTRAINT IF EXISTS wbt_modules_pk;
ALTER TABLE IF EXISTS ONLY permissions.wbt_domain DROP CONSTRAINT IF EXISTS wbt_domain_pk;
ALTER TABLE IF EXISTS ONLY permissions.wbt_auth DROP CONSTRAINT IF EXISTS wbt_auth_pk;
ALTER TABLE IF EXISTS ONLY directory.wbt_user_token DROP CONSTRAINT IF EXISTS wbt_user_token_pk;
ALTER TABLE IF EXISTS ONLY directory.wbt_user DROP CONSTRAINT IF EXISTS wbt_user_pk;
ALTER TABLE IF EXISTS ONLY directory.wbt_session DROP CONSTRAINT IF EXISTS wbt_session_token_pk;
ALTER TABLE IF EXISTS ONLY directory.wbt_license DROP CONSTRAINT IF EXISTS wbt_license_pk;
ALTER TABLE IF EXISTS ONLY directory.wbt_grant DROP CONSTRAINT IF EXISTS wbt_grant_pkey;
ALTER TABLE IF EXISTS ONLY directory.wbt_domain DROP CONSTRAINT IF EXISTS wbt_domain_pk;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth DROP CONSTRAINT IF EXISTS wbt_domain_auth_fk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device DROP CONSTRAINT IF EXISTS wbt_device_user_pk;
ALTER TABLE IF EXISTS ONLY directory.wbt_device DROP CONSTRAINT IF EXISTS wbt_device_pk;
ALTER TABLE IF EXISTS ONLY directory.wbt_customer DROP CONSTRAINT IF EXISTS wbt_customer_id_pk;
ALTER TABLE IF EXISTS ONLY directory.wbt_class DROP CONSTRAINT IF EXISTS wbt_class_pk;
ALTER TABLE IF EXISTS ONLY directory.wbt_cert_v0 DROP CONSTRAINT IF EXISTS wbt_cert_pkey;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth DROP CONSTRAINT IF EXISTS wbt_auth_pk;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth_member DROP CONSTRAINT IF EXISTS wbt_auth_member_pk;
ALTER TABLE IF EXISTS ONLY directory.wbt_auth_grants DROP CONSTRAINT IF EXISTS wbt_auth_grants_pk;
ALTER TABLE IF EXISTS ONLY directory.voip_session DROP CONSTRAINT IF EXISTS voip_session_uuid;
ALTER TABLE IF EXISTS ONLY directory.voip_channel DROP CONSTRAINT IF EXISTS voip_channel_uuid;
ALTER TABLE IF EXISTS ONLY directory.sip_gateway_register DROP CONSTRAINT IF EXISTS sip_gateway_register_pk;
ALTER TABLE IF EXISTS ONLY directory.sip_gateway DROP CONSTRAINT IF EXISTS sip_gateway_pk;
ALTER TABLE IF EXISTS ONLY directory.roles DROP CONSTRAINT IF EXISTS roles_pk;
ALTER TABLE IF EXISTS ONLY directory.license DROP CONSTRAINT IF EXISTS license_pk;
ALTER TABLE IF EXISTS ONLY directory.contacts DROP CONSTRAINT IF EXISTS contacts_pk;
ALTER TABLE IF EXISTS ONLY directory.contacts_acl DROP CONSTRAINT IF EXISTS contacts_acl_pk;
ALTER TABLE IF EXISTS ONLY directory.certs DROP CONSTRAINT IF EXISTS certs_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_team DROP CONSTRAINT IF EXISTS cc_team_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_team_acl DROP CONSTRAINT IF EXISTS cc_team_acl_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_supervisor_in_team DROP CONSTRAINT IF EXISTS cc_supervisor_in_team_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_skill DROP CONSTRAINT IF EXISTS cc_skils_pkey;
ALTER TABLE IF EXISTS ONLY call_center.cc_skill_in_agent DROP CONSTRAINT IF EXISTS cc_skill_in_agent_pkey;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue_statistics DROP CONSTRAINT IF EXISTS cc_queue_statistics_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource DROP CONSTRAINT IF EXISTS cc_queue_resource_pkey;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue_resource DROP CONSTRAINT IF EXISTS cc_queue_resource_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue DROP CONSTRAINT IF EXISTS cc_queue_pkey;
ALTER TABLE IF EXISTS ONLY call_center.cc_queue_acl DROP CONSTRAINT IF EXISTS cc_queue_acl_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_in_group DROP CONSTRAINT IF EXISTS cc_outbound_resource_in_group_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_group DROP CONSTRAINT IF EXISTS cc_outbound_resource_group_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_group_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_group_acl_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_display DROP CONSTRAINT IF EXISTS cc_outbound_resource_display_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_outbound_resource_acl DROP CONSTRAINT IF EXISTS cc_outbound_resource_acl_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member DROP CONSTRAINT IF EXISTS cc_member_pkey;
ALTER TABLE IF EXISTS ONLY call_center.cc_member_messages DROP CONSTRAINT IF EXISTS cc_member_messages_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member_communications DROP CONSTRAINT IF EXISTS cc_member_communications_id_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member_attempt DROP CONSTRAINT IF EXISTS cc_member_attempt_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_member_attempt_log DROP CONSTRAINT IF EXISTS cc_member_attempt_log_pkey;
ALTER TABLE IF EXISTS ONLY call_center.cc_list_communications DROP CONSTRAINT IF EXISTS cc_list_communications_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_list_acl DROP CONSTRAINT IF EXISTS cc_list_acl_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_communication DROP CONSTRAINT IF EXISTS cc_communication_pkey;
ALTER TABLE IF EXISTS ONLY call_center.cc_cluster DROP CONSTRAINT IF EXISTS cc_cluster_pkey;
ALTER TABLE IF EXISTS ONLY call_center.cc_calls DROP CONSTRAINT IF EXISTS cc_calls_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_list DROP CONSTRAINT IF EXISTS cc_call_list_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_bucket DROP CONSTRAINT IF EXISTS cc_bucket_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_bucket_in_queue DROP CONSTRAINT IF EXISTS cc_bucket_in_queue_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_state_history DROP CONSTRAINT IF EXISTS cc_agent_status_history_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent DROP CONSTRAINT IF EXISTS cc_agent_pkey;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_missed_attempt DROP CONSTRAINT IF EXISTS cc_agent_missed_attempt_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_in_team DROP CONSTRAINT IF EXISTS cc_agent_in_team_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_attempt DROP CONSTRAINT IF EXISTS cc_agent_attempt_pk;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_acl DROP CONSTRAINT IF EXISTS cc_agent_acl_pk;
ALTER TABLE IF EXISTS ONLY call_center.calendar_timezones DROP CONSTRAINT IF EXISTS calendar_timezones_pk;
ALTER TABLE IF EXISTS ONLY call_center.calendar DROP CONSTRAINT IF EXISTS calendar_pkey;
ALTER TABLE IF EXISTS ONLY call_center.calendar_except DROP CONSTRAINT IF EXISTS calendar_except_pkey;
ALTER TABLE IF EXISTS ONLY call_center.calendar_accept_of_day DROP CONSTRAINT IF EXISTS calendar_accept_of_day_pkey;
ALTER TABLE IF EXISTS ONLY call_center.cc_agent_activity DROP CONSTRAINT IF EXISTS agent_statistic_pk;
ALTER TABLE IF EXISTS ONLY call_center.acr_routing_variables DROP CONSTRAINT IF EXISTS acr_routing_variables_pk;
ALTER TABLE IF EXISTS ONLY call_center.acr_routing_scheme DROP CONSTRAINT IF EXISTS acr_routing_scheme_pk;
ALTER TABLE IF EXISTS ONLY call_center.acr_routing_outbound_call DROP CONSTRAINT IF EXISTS acr_routing_outbound_call_pk;
ALTER TABLE IF EXISTS ONLY call_center.acr_routing_inbound_call DROP CONSTRAINT IF EXISTS acr_routing_inbound_call_pk;
ALTER TABLE IF EXISTS ONLY call_center.acr_jobs DROP CONSTRAINT IF EXISTS acr_jobs_pk;
ALTER TABLE IF EXISTS storage.upload_file_jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS storage.schedulers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS storage.remove_file_jobs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS storage.media_files ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS storage.files ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS storage.file_backend_profiles_acl ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS storage.file_backend_profiles ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.xcap ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.widget ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.watchers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.usr_preferences ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.userblacklist ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public."user" ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.uri ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.tls_mgm ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.subscriber ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.speed_dial ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.sip_trace ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.silo ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.rtpproxy_sockets ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.rtpengine ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.route_tree ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.rls_watchers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.rls_presentity ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.registrant ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.re_grp ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.pua ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.presentity ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.missed_calls ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.location ALTER COLUMN contact_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.load_balancer ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.imc_rooms ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.imc_members ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.grp ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.globalblacklist ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.freeswitch ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.fraud_detection ALTER COLUMN ruleid DROP DEFAULT;
ALTER TABLE IF EXISTS public.emergency_service_provider ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.emergency_routing ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.emergency_report ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.dr_rules ALTER COLUMN ruleid DROP DEFAULT;
ALTER TABLE IF EXISTS public.dr_partitions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.dr_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.dr_gateways ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.dr_carriers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.domainpolicy ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.domain ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.dispatcher ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.dialplan ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.dbaliases ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cpl ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.clusterer ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cdr_bad_event ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cdr_b_elastic ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cdr_b ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cdr_a_elastic ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cdr_a ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_skils ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_skill_in_agent ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_resource_in_routing ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_queue_timing ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_queue_routing ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_queue ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_outbound_resource ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_member_communications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_member_attempt ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_member ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_list_communications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_list ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_flows ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_communication ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_cluster ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_cdrs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_calls ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_agents ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_agent_state_history ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_agent_in_queue ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_agent_activity ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.cc_agent ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.carrierroute ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.carrierfailureroute ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.callflow_variables ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.callflow_public_1 ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.callflow_extension ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.callflow_default ALTER COLUMN "order" DROP DEFAULT;
ALTER TABLE IF EXISTS public.callflow_default ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.callback_queue ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.callback_members_comment ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.callback_members ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.callback_calls ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.calendar_except ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.calendar_accept_of_day ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.calendar ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.b2b_logic ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.b2b_entities ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.address ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.active_watchers ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.acc ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS permissions.wbt_test_acl ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS permissions.wbt_domain ALTER COLUMN dc DROP DEFAULT;
ALTER TABLE IF EXISTS permissions.wbt_auth ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS directory.wbt_grant ALTER COLUMN uuid DROP DEFAULT;
ALTER TABLE IF EXISTS directory.wbt_device ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS directory.wbt_class ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS directory.wbt_auth ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS directory.users ALTER COLUMN updated_at DROP DEFAULT;
ALTER TABLE IF EXISTS directory.users ALTER COLUMN created_at DROP DEFAULT;
ALTER TABLE IF EXISTS directory.users ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS directory.sip_gateway ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS directory.contacts ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_team_acl ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_team ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_supervisor_in_team ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_skill_in_agent ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_skill ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_queue_statistics ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_queue_resource ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_queue_acl ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_queue ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_outbound_resource_in_group ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_outbound_resource_group_acl ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_outbound_resource_group ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_outbound_resource_display ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_outbound_resource_acl ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_outbound_resource ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_member_messages ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_member_communications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_member_attempt ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_member ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_list_communications ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_list_acl ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_list ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_communication ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_cluster ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_calls ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_bucket_in_queue ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_bucket ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_agent_state_history ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_agent_missed_attempt ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_agent_in_team ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_agent_attempt ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_agent_activity ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_agent_acl ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.cc_agent ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.calendar_timezones ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.calendar_except ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.calendar_accept_of_day ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.calendar ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.acr_routing_variables ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.acr_routing_scheme ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.acr_routing_outbound_call ALTER COLUMN pos DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.acr_routing_outbound_call ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.acr_routing_inbound_call ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS call_center.acr_jobs ALTER COLUMN id DROP DEFAULT;
DROP SEQUENCE IF EXISTS storage.upload_file_jobs_id_seq;
DROP TABLE IF EXISTS storage.upload_file_jobs;
DROP SEQUENCE IF EXISTS storage.schedulers_id_seq;
DROP TABLE IF EXISTS storage.schedulers;
DROP SEQUENCE IF EXISTS storage.remove_file_jobs_id_seq;
DROP TABLE IF EXISTS storage.remove_file_jobs;
DROP SEQUENCE IF EXISTS storage.media_files_id_seq;
DROP TABLE IF EXISTS storage.media_files;
DROP TABLE IF EXISTS storage.jobs;
DROP SEQUENCE IF EXISTS storage.files_id_seq;
DROP TABLE IF EXISTS storage.files;
DROP SEQUENCE IF EXISTS storage.file_backend_profiles_id_seq;
DROP SEQUENCE IF EXISTS storage.file_backend_profiles_acl_id_seq;
DROP TABLE IF EXISTS storage.file_backend_profiles_acl;
DROP TABLE IF EXISTS storage.file_backend_profiles;
DROP SEQUENCE IF EXISTS public.xcap_id_seq;
DROP TABLE IF EXISTS public.xcap;
DROP SEQUENCE IF EXISTS public.widget_id_seq;
DROP TABLE IF EXISTS public.widget;
DROP VIEW IF EXISTS public.wbt_user;
DROP TABLE IF EXISTS public.wbt_token;
DROP VIEW IF EXISTS public.wbt_subscriber_old;
DROP VIEW IF EXISTS public.wbt_subscriber;
DROP TABLE IF EXISTS public.wbt_sequence;
DROP VIEW IF EXISTS public.wbt_registrant;
DROP VIEW IF EXISTS public.wbt_group;
DROP TABLE IF EXISTS public.wbt_domain;
DROP TABLE IF EXISTS public.wbt_device;
DROP TABLE IF EXISTS public.wbt_cert_usage;
DROP TABLE IF EXISTS public.wbt_cert_grants;
DROP TABLE IF EXISTS public.wbt_cert;
DROP TABLE IF EXISTS public.wbt_auth_member;
DROP TABLE IF EXISTS public.wbt_auth;
DROP SEQUENCE IF EXISTS public.watchers_id_seq;
DROP TABLE IF EXISTS public.watchers;
DROP TABLE IF EXISTS public.version;
DROP SEQUENCE IF EXISTS public.usr_preferences_id_seq;
DROP TABLE IF EXISTS public.usr_preferences;
DROP SEQUENCE IF EXISTS public.userblacklist_id_seq;
DROP TABLE IF EXISTS public.userblacklist;
DROP SEQUENCE IF EXISTS public.user_id_seq;
DROP TABLE IF EXISTS public."user";
DROP SEQUENCE IF EXISTS public.uri_id_seq;
DROP TABLE IF EXISTS public.uri;
DROP SEQUENCE IF EXISTS public.tls_mgm_id_seq;
DROP TABLE IF EXISTS public.tls_mgm;
DROP SEQUENCE IF EXISTS public.subscriber_id_seq;
DROP TABLE IF EXISTS public.subscriber;
DROP SEQUENCE IF EXISTS public.speed_dial_id_seq;
DROP TABLE IF EXISTS public.speed_dial;
DROP SEQUENCE IF EXISTS public.sip_trace_id_seq;
DROP TABLE IF EXISTS public.sip_trace;
DROP TABLE IF EXISTS public.sip_subscriptions;
DROP TABLE IF EXISTS public.sip_shared_appearance_subscriptions;
DROP TABLE IF EXISTS public.sip_shared_appearance_dialogs;
DROP TABLE IF EXISTS public.sip_presence;
DROP TABLE IF EXISTS public.sip_dialogs;
DROP TABLE IF EXISTS public.sip_authentication;
DROP SEQUENCE IF EXISTS public.silo_id_seq;
DROP TABLE IF EXISTS public.silo;
DROP TABLE IF EXISTS public.session;
DROP SEQUENCE IF EXISTS public.rtpproxy_sockets_id_seq;
DROP TABLE IF EXISTS public.rtpproxy_sockets;
DROP SEQUENCE IF EXISTS public.rtpengine_id_seq;
DROP TABLE IF EXISTS public.rtpengine;
DROP SEQUENCE IF EXISTS public.route_tree_id_seq;
DROP TABLE IF EXISTS public.route_tree;
DROP SEQUENCE IF EXISTS public.rls_watchers_id_seq;
DROP TABLE IF EXISTS public.rls_watchers;
DROP SEQUENCE IF EXISTS public.rls_presentity_id_seq;
DROP TABLE IF EXISTS public.rls_presentity;
DROP TABLE IF EXISTS public.registrations;
DROP SEQUENCE IF EXISTS public.registrant_id_seq;
DROP TABLE IF EXISTS public.registrant;
DROP SEQUENCE IF EXISTS public.re_grp_id_seq;
DROP TABLE IF EXISTS public.re_grp;
DROP SEQUENCE IF EXISTS public.pua_id_seq;
DROP TABLE IF EXISTS public.pua;
DROP SEQUENCE IF EXISTS public.presentity_id_seq;
DROP TABLE IF EXISTS public.presentity;
DROP TABLE IF EXISTS public.nat;
DROP SEQUENCE IF EXISTS public.missed_calls_id_seq;
DROP TABLE IF EXISTS public.missed_calls;
DROP SEQUENCE IF EXISTS public.location_contact_id_seq;
DROP SEQUENCE IF EXISTS public.load_balancer_id_seq;
DROP TABLE IF EXISTS public.load_balancer;
DROP SEQUENCE IF EXISTS public.imc_rooms_id_seq;
DROP TABLE IF EXISTS public.imc_rooms;
DROP SEQUENCE IF EXISTS public.imc_members_id_seq;
DROP TABLE IF EXISTS public.imc_members;
DROP SEQUENCE IF EXISTS public.grp_id_seq;
DROP TABLE IF EXISTS public.grp;
DROP SEQUENCE IF EXISTS public.globalblacklist_id_seq;
DROP TABLE IF EXISTS public.globalblacklist;
DROP SEQUENCE IF EXISTS public.freeswitch_id_seq;
DROP TABLE IF EXISTS public.freeswitch;
DROP SEQUENCE IF EXISTS public.fraud_detection_ruleid_seq;
DROP TABLE IF EXISTS public.fraud_detection;
DROP SEQUENCE IF EXISTS public.emergency_service_provider_id_seq;
DROP TABLE IF EXISTS public.emergency_service_provider;
DROP SEQUENCE IF EXISTS public.emergency_routing_id_seq;
DROP TABLE IF EXISTS public.emergency_routing;
DROP SEQUENCE IF EXISTS public.emergency_report_id_seq;
DROP TABLE IF EXISTS public.emergency_report;
DROP SEQUENCE IF EXISTS public.dr_rules_ruleid_seq;
DROP TABLE IF EXISTS public.dr_rules;
DROP SEQUENCE IF EXISTS public.dr_partitions_id_seq;
DROP TABLE IF EXISTS public.dr_partitions;
DROP SEQUENCE IF EXISTS public.dr_groups_id_seq;
DROP TABLE IF EXISTS public.dr_groups;
DROP SEQUENCE IF EXISTS public.dr_gateways_id_seq;
DROP TABLE IF EXISTS public.dr_gateways;
DROP SEQUENCE IF EXISTS public.dr_carriers_id_seq;
DROP TABLE IF EXISTS public.dr_carriers;
DROP SEQUENCE IF EXISTS public.domainpolicy_id_seq;
DROP TABLE IF EXISTS public.domainpolicy;
DROP SEQUENCE IF EXISTS public.domain_id_seq;
DROP TABLE IF EXISTS public.domain;
DROP SEQUENCE IF EXISTS public.dispatcher_id_seq;
DROP TABLE IF EXISTS public.dispatcher;
DROP SEQUENCE IF EXISTS public.dialplan_id_seq;
DROP TABLE IF EXISTS public.dialplan;
DROP TABLE IF EXISTS public.dialog;
DROP SEQUENCE IF EXISTS public.dbaliases_id_seq;
DROP TABLE IF EXISTS public.dbaliases;
DROP SEQUENCE IF EXISTS public.cpl_id_seq;
DROP TABLE IF EXISTS public.cpl;
DROP TABLE IF EXISTS public.complete;
DROP SEQUENCE IF EXISTS public.clusterer_id_seq;
DROP TABLE IF EXISTS public.clusterer;
DROP SEQUENCE IF EXISTS public.cdr_bad_event_id_seq;
DROP TABLE IF EXISTS public.cdr_bad_event;
DROP SEQUENCE IF EXISTS public.cdr_b_id_seq;
DROP SEQUENCE IF EXISTS public.cdr_b_elastic_id_seq;
DROP TABLE IF EXISTS public.cdr_b_elastic;
DROP TABLE IF EXISTS public.cdr_b;
DROP SEQUENCE IF EXISTS public.cdr_a_id_seq;
DROP SEQUENCE IF EXISTS public.cdr_a_elastic_id_seq;
DROP TABLE IF EXISTS public.cdr_a_elastic;
DROP TABLE IF EXISTS public.cdr_a;
DROP SEQUENCE IF EXISTS public.cc_skils_id_seq;
DROP TABLE IF EXISTS public.cc_skils;
DROP SEQUENCE IF EXISTS public.cc_skill_in_agent_id_seq;
DROP TABLE IF EXISTS public.cc_skill_in_agent;
DROP SEQUENCE IF EXISTS public.cc_resource_in_routing_id_seq;
DROP TABLE IF EXISTS public.cc_resource_in_routing;
DROP SEQUENCE IF EXISTS public.cc_queue_timing_id_seq;
DROP TABLE IF EXISTS public.cc_queue_timing;
DROP SEQUENCE IF EXISTS public.cc_queue_routing_id_seq;
DROP TABLE IF EXISTS public.cc_queue_routing;
DROP VIEW IF EXISTS public.cc_queue_resources_is_working;
DROP VIEW IF EXISTS public.cc_queue_is_working;
DROP SEQUENCE IF EXISTS public.cc_queue_id_seq;
DROP TABLE IF EXISTS public.cc_queue;
DROP SEQUENCE IF EXISTS public.cc_outbound_resource_id_seq;
DROP TABLE IF EXISTS public.cc_outbound_resource;
DROP SEQUENCE IF EXISTS public.cc_member_id_seq;
DROP SEQUENCE IF EXISTS public.cc_member_communications_id_seq;
DROP TABLE IF EXISTS public.cc_member_communications;
DROP SEQUENCE IF EXISTS public.cc_member_attempt_id_seq;
DROP TABLE IF EXISTS public.cc_member_attempt;
DROP TABLE IF EXISTS public.cc_member;
DROP SEQUENCE IF EXISTS public.cc_list_id_seq;
DROP SEQUENCE IF EXISTS public.cc_list_communications_id_seq;
DROP TABLE IF EXISTS public.cc_list_communications;
DROP TABLE IF EXISTS public.cc_list;
DROP SEQUENCE IF EXISTS public.cc_flows_id_seq;
DROP TABLE IF EXISTS public.cc_flows;
DROP SEQUENCE IF EXISTS public.cc_communication_id_seq;
DROP TABLE IF EXISTS public.cc_communication;
DROP SEQUENCE IF EXISTS public.cc_cluster_id_seq;
DROP TABLE IF EXISTS public.cc_cluster;
DROP SEQUENCE IF EXISTS public.cc_cdrs_id_seq;
DROP TABLE IF EXISTS public.cc_cdrs;
DROP SEQUENCE IF EXISTS public.cc_calls_id_seq;
DROP TABLE IF EXISTS public.cc_calls;
DROP SEQUENCE IF EXISTS public.cc_agents_id_seq;
DROP TABLE IF EXISTS public.cc_agents;
DROP SEQUENCE IF EXISTS public.cc_agent_state_history_id_seq;
DROP TABLE IF EXISTS public.cc_agent_state_history;
DROP SEQUENCE IF EXISTS public.cc_agent_in_queue_id_seq;
DROP TABLE IF EXISTS public.cc_agent_in_queue;
DROP SEQUENCE IF EXISTS public.cc_agent_id_seq;
DROP SEQUENCE IF EXISTS public.cc_agent_activity_id_seq;
DROP TABLE IF EXISTS public.cc_agent_activity;
DROP TABLE IF EXISTS public.cc_agent;
DROP SEQUENCE IF EXISTS public.carrierroute_id_seq;
DROP TABLE IF EXISTS public.carrierroute;
DROP SEQUENCE IF EXISTS public.carrierfailureroute_id_seq;
DROP TABLE IF EXISTS public.carrierfailureroute;
DROP SEQUENCE IF EXISTS public.callflow_variables_id_seq;
DROP TABLE IF EXISTS public.callflow_variables;
DROP SEQUENCE IF EXISTS public.callflow_public_id_seq;
DROP TABLE IF EXISTS public.callflow_public_1;
DROP SEQUENCE IF EXISTS public.callflow_extension_id_seq;
DROP TABLE IF EXISTS public.callflow_extension;
DROP SEQUENCE IF EXISTS public.callflow_default_id_seq;
DROP TABLE IF EXISTS public.callflow_default;
DROP SEQUENCE IF EXISTS public.callback_queue_id_seq;
DROP TABLE IF EXISTS public.callback_queue;
DROP SEQUENCE IF EXISTS public.callback_members_id_seq;
DROP SEQUENCE IF EXISTS public.callback_members_comment_id_seq;
DROP TABLE IF EXISTS public.callback_members_comment;
DROP TABLE IF EXISTS public.callback_members;
DROP SEQUENCE IF EXISTS public.callback_calls_id_seq;
DROP TABLE IF EXISTS public.callback_calls;
DROP SEQUENCE IF EXISTS public.calendar_id_seq;
DROP SEQUENCE IF EXISTS public.calendar_except_id_seq;
DROP TABLE IF EXISTS public.calendar_except;
DROP SEQUENCE IF EXISTS public.calendar_accept_of_day_id_seq;
DROP TABLE IF EXISTS public.calendar_accept_of_day;
DROP TABLE IF EXISTS public.calendar;
DROP TABLE IF EXISTS public.cachedb;
DROP SEQUENCE IF EXISTS public.b2b_logic_id_seq;
DROP TABLE IF EXISTS public.b2b_logic;
DROP SEQUENCE IF EXISTS public.b2b_entities_id_seq;
DROP TABLE IF EXISTS public.b2b_entities;
DROP SEQUENCE IF EXISTS public.address_id_seq;
DROP TABLE IF EXISTS public.address;
DROP SEQUENCE IF EXISTS public.active_watchers_id_seq;
DROP TABLE IF EXISTS public.active_watchers;
DROP SEQUENCE IF EXISTS public.acc_id_seq;
DROP TABLE IF EXISTS public.acc;
DROP SEQUENCE IF EXISTS permissions.wbt_test_acl_id_seq;
DROP TABLE IF EXISTS permissions.wbt_test_acl;
DROP TABLE IF EXISTS permissions.wbt_session;
DROP VIEW IF EXISTS permissions.wbt_module_privileges;
DROP TABLE IF EXISTS permissions.wbt_module;
DROP SEQUENCE IF EXISTS permissions.wbt_module_id_seq;
DROP SEQUENCE IF EXISTS permissions.wbt_domain_id_seq;
DROP TABLE IF EXISTS permissions.wbt_domain;
DROP TABLE IF EXISTS permissions.wbt_auth_member;
DROP SEQUENCE IF EXISTS permissions.wbt_auth_id_seq;
DROP TABLE IF EXISTS permissions.wbt_auth;
DROP TABLE IF EXISTS directory.wbt_user_token;
DROP SEQUENCE IF EXISTS directory.wbt_user_id_seq;
DROP VIEW IF EXISTS directory.wbt_subscriber;
DROP TABLE IF EXISTS public.location;
DROP TABLE IF EXISTS directory.wbt_session;
DROP TABLE IF EXISTS directory.wbt_license;
DROP TABLE IF EXISTS directory.wbt_hotdesk;
DROP SEQUENCE IF EXISTS directory.wbt_grant_id_seq;
DROP TABLE IF EXISTS directory.wbt_grant;
DROP TABLE IF EXISTS directory.wbt_domain;
DROP TABLE IF EXISTS directory.wbt_device_audit_revoke;
DROP TABLE IF EXISTS directory.wbt_device_audit;
DROP TABLE IF EXISTS directory.wbt_device_acl;
DROP TABLE IF EXISTS directory.wbt_customer;
DROP SEQUENCE IF EXISTS directory.wbt_class_id_seq;
DROP TABLE IF EXISTS directory.wbt_class_acl;
DROP TABLE IF EXISTS directory.wbt_class;
DROP TABLE IF EXISTS directory.wbt_cert_v0;
DROP TABLE IF EXISTS directory.wbt_auth_member;
DROP TABLE IF EXISTS directory.wbt_auth_grants;
DROP TABLE IF EXISTS directory.wbt_auth_acl;
DROP TABLE IF EXISTS directory.voip_session;
DROP TABLE IF EXISTS directory.users;
DROP VIEW IF EXISTS directory.sip_registrant;
DROP TABLE IF EXISTS directory.sip_gateway_register;
DROP SEQUENCE IF EXISTS directory.sip_gateway_id_seq;
DROP VIEW IF EXISTS directory.sip_address_allow;
DROP TABLE IF EXISTS directory.sip_gateway_allow;
DROP TABLE IF EXISTS directory.sip_gateway;
DROP TABLE IF EXISTS directory.roles;
DROP TABLE IF EXISTS directory.license;
DROP SEQUENCE IF EXISTS directory.device_id_seq;
DROP TABLE IF EXISTS directory.wbt_device;
DROP SEQUENCE IF EXISTS directory.contacts_id_seq;
DROP TABLE IF EXISTS directory.contacts_acl;
DROP TABLE IF EXISTS directory.contacts;
DROP TABLE IF EXISTS directory.certs;
DROP VIEW IF EXISTS call_center.cc_vw_members;
DROP SEQUENCE IF EXISTS call_center.cc_team_id_seq;
DROP SEQUENCE IF EXISTS call_center.cc_team_acl_id_seq;
DROP TABLE IF EXISTS call_center.cc_team_acl;
DROP TABLE IF EXISTS call_center.cc_team;
DROP VIEW IF EXISTS call_center.cc_sys_resources;
DROP VIEW IF EXISTS call_center.cc_sys_queue_distribute_resources;
DROP VIEW IF EXISTS call_center.cc_sys_distribute_queue;
DROP VIEW IF EXISTS call_center.cc_sys_distribute_queue_bucket_seg;
DROP VIEW IF EXISTS call_center.cc_sys_agent_group_team_bucket;
DROP SEQUENCE IF EXISTS call_center.cc_supervisor_in_team_id_seq;
DROP TABLE IF EXISTS call_center.cc_supervisor_in_team;
DROP SEQUENCE IF EXISTS call_center.cc_skils_id_seq;
DROP SEQUENCE IF EXISTS call_center.cc_skill_in_agent_id_seq;
DROP TABLE IF EXISTS call_center.cc_skill_in_agent;
DROP TABLE IF EXISTS call_center.cc_skill;
DROP SEQUENCE IF EXISTS call_center.cc_queue_resource_id_seq1;
DROP SEQUENCE IF EXISTS call_center.cc_queue_resource_id_seq;
DROP TABLE IF EXISTS call_center.cc_queue_resource;
DROP SEQUENCE IF EXISTS call_center.cc_queue_member_statistics_id_seq;
DROP TABLE IF EXISTS call_center.cc_queue_statistics;
DROP SEQUENCE IF EXISTS call_center.cc_queue_id_seq;
DROP SEQUENCE IF EXISTS call_center.cc_queue_acl_id_seq;
DROP TABLE IF EXISTS call_center.cc_queue_acl;
DROP TABLE IF EXISTS call_center.cc_queue;
DROP SEQUENCE IF EXISTS call_center.cc_outbound_resource_in_group_id_seq;
DROP TABLE IF EXISTS call_center.cc_outbound_resource_in_group;
DROP SEQUENCE IF EXISTS call_center.cc_outbound_resource_group_id_seq;
DROP SEQUENCE IF EXISTS call_center.cc_outbound_resource_group_acl_id_seq;
DROP TABLE IF EXISTS call_center.cc_outbound_resource_group_acl;
DROP TABLE IF EXISTS call_center.cc_outbound_resource_group;
DROP SEQUENCE IF EXISTS call_center.cc_outbound_resource_display_id_seq;
DROP TABLE IF EXISTS call_center.cc_outbound_resource_display;
DROP SEQUENCE IF EXISTS call_center.cc_outbound_resource_acl_id_seq;
DROP TABLE IF EXISTS call_center.cc_outbound_resource_acl;
DROP SEQUENCE IF EXISTS call_center.cc_member_messages_id_seq;
DROP TABLE IF EXISTS call_center.cc_member_messages;
DROP SEQUENCE IF EXISTS call_center.cc_member_id_seq;
DROP SEQUENCE IF EXISTS call_center.cc_member_communications_id_seq;
DROP TABLE IF EXISTS call_center.cc_member_attempt_log_day_tmp;
DROP VIEW IF EXISTS call_center.cc_member_attempt_log_day;
DROP MATERIALIZED VIEW IF EXISTS call_center.cc_member_attempt_log_day_5min;
DROP SEQUENCE IF EXISTS call_center.cc_list_communications_id_seq;
DROP TABLE IF EXISTS call_center.cc_list_communications;
DROP SEQUENCE IF EXISTS call_center.cc_list_acl_id_seq;
DROP TABLE IF EXISTS call_center.cc_list_acl;
DROP SEQUENCE IF EXISTS call_center.cc_communication_id_seq;
DROP TABLE IF EXISTS call_center.cc_communication;
DROP SEQUENCE IF EXISTS call_center.cc_cluster_id_seq;
DROP TABLE IF EXISTS call_center.cc_cluster;
DROP SEQUENCE IF EXISTS call_center.cc_calls_id_seq;
DROP TABLE IF EXISTS call_center.cc_calls;
DROP SEQUENCE IF EXISTS call_center.cc_call_list_id_seq;
DROP TABLE IF EXISTS call_center.cc_list;
DROP SEQUENCE IF EXISTS call_center.cc_bucket_in_queue_id_seq;
DROP TABLE IF EXISTS call_center.cc_bucket_in_queue;
DROP SEQUENCE IF EXISTS call_center.cc_bucket_id_seq;
DROP TABLE IF EXISTS call_center.cc_bucket_acl;
DROP TABLE IF EXISTS call_center.cc_bucket;
DROP VIEW IF EXISTS call_center.cc_agent_waiting;
DROP TABLE IF EXISTS directory.wbt_user;
DROP SEQUENCE IF EXISTS directory.wbt_auth_id_seq;
DROP TABLE IF EXISTS directory.wbt_auth;
DROP TABLE IF EXISTS directory.voip_channel;
DROP SEQUENCE IF EXISTS call_center.cc_agent_missed_attempt_id_seq;
DROP VIEW IF EXISTS call_center.cc_agent_last_2hour_calls;
DROP MATERIALIZED VIEW IF EXISTS call_center.cc_agent_last_2hour_calls_mat;
DROP SEQUENCE IF EXISTS call_center.cc_agent_in_team_id_seq;
DROP TABLE IF EXISTS call_center.cc_agent_in_team;
DROP SEQUENCE IF EXISTS call_center.cc_agent_id_seq;
DROP SEQUENCE IF EXISTS call_center.cc_agent_history_id_seq;
DROP MATERIALIZED VIEW IF EXISTS call_center.cc_agent_end_state_day_5min;
DROP MATERIALIZED VIEW IF EXISTS call_center.cc_agent_daily_state_activity_mat;
DROP TABLE IF EXISTS call_center.cc_agent_state_history;
DROP VIEW IF EXISTS call_center.cc_agent_daily_calls;
DROP MATERIALIZED VIEW IF EXISTS call_center.cc_agent_daily_calls_mat;
DROP TABLE IF EXISTS call_center.cc_member_attempt_log;
DROP SEQUENCE IF EXISTS call_center.cc_member_attempt_id_seq;
DROP TABLE IF EXISTS call_center.cc_member_attempt;
DROP TABLE IF EXISTS call_center.cc_agent_missed_attempt;
DROP SEQUENCE IF EXISTS call_center.cc_agent_attempt_id_seq;
DROP TABLE IF EXISTS call_center.cc_agent_attempt;
DROP SEQUENCE IF EXISTS call_center.cc_agent_acl_id_seq;
DROP TABLE IF EXISTS call_center.cc_agent_acl;
DROP TABLE IF EXISTS call_center.cc_agent;
DROP SEQUENCE IF EXISTS call_center.calendar_timezones_id_seq;
DROP TABLE IF EXISTS call_center.calendar_timezones_by_interval;
DROP TABLE IF EXISTS call_center.calendar_timezone_offsets;
DROP MATERIALIZED VIEW IF EXISTS call_center.calendar_intervals;
DROP TABLE IF EXISTS call_center.calendar_timezones;
DROP SEQUENCE IF EXISTS call_center.calendar_id_seq;
DROP SEQUENCE IF EXISTS call_center.calendar_except_id_seq;
DROP TABLE IF EXISTS call_center.calendar_except;
DROP TABLE IF EXISTS call_center.calendar_acl;
DROP SEQUENCE IF EXISTS call_center.calendar_accept_of_day_id_seq;
DROP TABLE IF EXISTS call_center.calendar_accept_of_day;
DROP SEQUENCE IF EXISTS call_center.agent_statistic_id_seq;
DROP TABLE IF EXISTS call_center.cc_agent_activity;
DROP SEQUENCE IF EXISTS call_center.acr_routing_variables_id_seq;
DROP TABLE IF EXISTS call_center.acr_routing_variables;
DROP SEQUENCE IF EXISTS call_center.acr_routing_scheme_id_seq;
DROP TABLE IF EXISTS call_center.acr_routing_scheme;
DROP SEQUENCE IF EXISTS call_center.acr_routing_outbound_call_pos_seq;
DROP SEQUENCE IF EXISTS call_center.acr_routing_outbound_call_id_seq;
DROP TABLE IF EXISTS call_center.acr_routing_outbound_call;
DROP SEQUENCE IF EXISTS call_center.acr_routing_inbound_call_id_seq;
DROP TABLE IF EXISTS call_center.acr_routing_inbound_call;
DROP SEQUENCE IF EXISTS call_center.acr_jobs_id_seq;
DROP TABLE IF EXISTS call_center.acr_jobs;
DROP OPERATOR FAMILY IF EXISTS call_center.gin_cc_pair_test2_ops USING gin;
DROP FUNCTION IF EXISTS public.wbt_user_operation();
DROP FUNCTION IF EXISTS public.wbt_seqnext(seqname text, OUT oid bigint);
DROP FUNCTION IF EXISTS public.wbt_seqnext(seqclass bigint, OUT oid bigint);
DROP FUNCTION IF EXISTS public.wbt_group_operation();
DROP FUNCTION IF EXISTS public.wbt_domain_role_owner();
DROP FUNCTION IF EXISTS public.wbt_authz(realm bigint, authid bigint, OUT sub bigint);
DROP FUNCTION IF EXISTS public.wbt_acl_explore(acl public.actl[], OUT grantor bigint, OUT grantee bigint, OUT privilege_type "char", OUT is_grantable boolean);
DROP FUNCTION IF EXISTS public.wbt_acl_explode(public.actl[], OUT grantor bigint, OUT grantee bigint, OUT privilege smallint, OUT grantable smallint);
DROP FUNCTION IF EXISTS public.tg_get_member_communication_resource();
DROP FUNCTION IF EXISTS public.tg_fill_member_communication_resource();
DROP FUNCTION IF EXISTS public.rand();
DROP FUNCTION IF EXISTS public.insert_member_public(widget_id bigint, INOUT member jsonb, OUT destination_number character varying, OUT queue_name character varying, OUT call_timeout smallint, OUT error smallint);
DROP FUNCTION IF EXISTS public.get_free_resources();
DROP FUNCTION IF EXISTS public.get_count_call(integer);
DROP FUNCTION IF EXISTS public.get_count_active_resources(integer);
DROP FUNCTION IF EXISTS public.get_agents_available_count_by_queue_id(_queue_id integer);
DROP FUNCTION IF EXISTS public.create_trigger_if_not_exists(trigger_name text, definition_sql text);
DROP FUNCTION IF EXISTS public.create_constraint_if_not_exists(rel_table regclass, constraint_name text, constraint_sql text);
DROP FUNCTION IF EXISTS public.concat(text, text);
DROP FUNCTION IF EXISTS public.cdr_b_instead_insert();
DROP FUNCTION IF EXISTS public.cdr_a_instead_insert();
DROP FUNCTION IF EXISTS public.cc_unreserve_members_with_resources(node character varying, res character varying);
DROP FUNCTION IF EXISTS public.cc_set_agent_change_status();
DROP FUNCTION IF EXISTS public.cc_set_active_members(node character varying);
DROP FUNCTION IF EXISTS public.cc_reserve_members_with_resources(node_id character varying);
DROP FUNCTION IF EXISTS public.cc_queue_timing_communication_ids(_queue_id bigint);
DROP FUNCTION IF EXISTS public.cc_distribute_agent_to_attempt(_node_id character varying);
DROP FUNCTION IF EXISTS public.cc_available_agents_by_strategy(_queue_id bigint, _strategy character varying, _limit integer, _last_agents bigint[], _except_agents bigint[]);
DROP FUNCTION IF EXISTS public.callflow_public_check_duplicate_destination();
DROP FUNCTION IF EXISTS public.callflow_default_check_destination_number(reg_txt character varying);
DROP FUNCTION IF EXISTS permissions.wbt_session_roles(OUT dc integer, OUT roles integer[]);
DROP FUNCTION IF EXISTS permissions.wbt_session_role(OUT dc integer, OUT id integer);
DROP FUNCTION IF EXISTS permissions.wbt_session_bind(access_token text, local boolean);
DROP FUNCTION IF EXISTS permissions.wbt_has_privilege(permissions.acrule[], dc integer, roles integer[], grants smallint);
DROP FUNCTION IF EXISTS permissions.wbt_acl_explore(permissions.acrule[], OUT grantor integer, OUT grantee integer, OUT privilege_type "char", OUT is_grantable boolean);
DROP FUNCTION IF EXISTS permissions.wbt_acl_explode(permissions.acrule[], OUT grantor integer, OUT grantee integer, OUT privilege smallint, OUT grantable smallint);
DROP FUNCTION IF EXISTS permissions.wbt_access_token();
DROP FUNCTION IF EXISTS directory.test();
DROP FUNCTION IF EXISTS directory.rls_enabled(dc integer, roles integer[], acc smallint, class character varying);
DROP FUNCTION IF EXISTS directory.rbac_permission_test(domain_id integer, group_ids integer[], ac smallint, class_name character varying);
DROP FUNCTION IF EXISTS directory.rbac_permission(domain_id integer, group_ids integer[], ac smallint, class_name character varying);
DROP FUNCTION IF EXISTS directory.get_roles(domain_id integer, user_id integer);
DROP FUNCTION IF EXISTS directory.current_roles(domain_id integer, user_id integer, OUT roles integer[]);
DROP FUNCTION IF EXISTS call_center.un_reserve_members_with_resources(node character varying, res character varying);
DROP FUNCTION IF EXISTS call_center.tg_get_member_communication_resource();
DROP FUNCTION IF EXISTS call_center.tg_fill_member_communication_resource();
DROP PROCEDURE IF EXISTS call_center.test_sp(INOUT cnt integer);
DROP FUNCTION IF EXISTS call_center.reserve_members_with_resources(node_id character varying);
DROP FUNCTION IF EXISTS call_center.index_page(relname text, pageno integer);
DROP FUNCTION IF EXISTS call_center.heap_page(relname text, pageno integer);
DROP FUNCTION IF EXISTS call_center.get_outbound_resources(_filter text, _orderby text, _desc boolean, _limit integer, _offset integer);
DROP TABLE IF EXISTS call_center.cc_outbound_resource;
DROP FUNCTION IF EXISTS call_center.get_free_resources();
DROP FUNCTION IF EXISTS call_center.get_count_call(integer);
DROP FUNCTION IF EXISTS call_center.get_count_active_resources(integer);
DROP FUNCTION IF EXISTS call_center.get_calendars(_filter text, _orderby text, _desc boolean, _limit integer, _offset integer);
DROP TABLE IF EXISTS call_center.calendar;
DROP FUNCTION IF EXISTS call_center.get_available_member_communication(integer);
DROP FUNCTION IF EXISTS call_center.get_agents_for_queue(_queue_id bigint);
DROP FUNCTION IF EXISTS call_center.get_agents_available_count_by_queue_id(_queue_id integer);
DROP FUNCTION IF EXISTS call_center.fn_idx_test(r text);
DROP FUNCTION IF EXISTS call_center.fn_idx_test(r record);
DROP FUNCTION IF EXISTS call_center.flush_daily_counts_queue2();
DROP FUNCTION IF EXISTS call_center.flush_daily_counts_queue();
DROP FUNCTION IF EXISTS call_center.f_jsonb_arr_lower_dev_1(_j jsonb, VARIADIC _path text[]);
DROP FUNCTION IF EXISTS call_center.f_jsonb_arr_lower(_j jsonb, VARIADIC _path text[]);
DROP FUNCTION IF EXISTS call_center.f_add_task_for_call();
DROP FUNCTION IF EXISTS call_center.cc_waiting_agents(team_id_ bigint, limit_ integer, strategy_ character varying);
DROP FUNCTION IF EXISTS call_center.cc_unreserve_members_with_resources(node character varying, res character varying);
DROP FUNCTION IF EXISTS call_center.cc_un_reserve_members_with_resources(node character varying, res character varying);
DROP FUNCTION IF EXISTS call_center.cc_transfer_attempt_to_log();
DROP FUNCTION IF EXISTS call_center.cc_timezone_offset_id(integer);
DROP FUNCTION IF EXISTS call_center.cc_test_time(timezone_ jsonb);
DROP FUNCTION IF EXISTS call_center.cc_test_time(timezone_ interval);
DROP FUNCTION IF EXISTS call_center.cc_test_recursive(arg1 integer);
DROP FUNCTION IF EXISTS call_center.cc_test_recursion(req call_center.cc_sys_distribute_request, agents integer[], resources call_center.cc_sys_distribute_resource[], types call_center.cc_sys_distribute_type[]);
DROP FUNCTION IF EXISTS call_center.cc_test_pair(call_center.cc_member_communications);
DROP TABLE IF EXISTS call_center.cc_member_communications;
DROP FUNCTION IF EXISTS call_center.cc_test_cursor();
DROP FUNCTION IF EXISTS call_center.cc_test_calendar(timezone_ character varying);
DROP FUNCTION IF EXISTS call_center.cc_test_any(jsonb);
DROP FUNCTION IF EXISTS call_center.cc_team_fetch_agent(team_id_ integer);
DROP FUNCTION IF EXISTS call_center.cc_team_agents_by_bucket(team_id_ integer, bucket_id integer);
DROP FUNCTION IF EXISTS call_center.cc_sys_distribute_members(integer, integer, integer, integer, integer, bigint, smallint[], call_center.cc_sys_distribute_type[], call_center.cc_sys_distribute_resource[], integer[]);
DROP FUNCTION IF EXISTS call_center.cc_stop_attempt(_attempt_id bigint, _delta smallint, _state smallint, _hangup_at bigint, _cause character varying);
DROP FUNCTION IF EXISTS call_center.cc_set_attempt_success(_attempt_id bigint, _hangup_at bigint, _logs jsonb, _cause character varying);
DROP FUNCTION IF EXISTS call_center.cc_set_attempt_stop(_attempt_id bigint, _delta smallint, _is_err boolean, _hangup_at bigint, _logs jsonb, _cause character varying);
DROP FUNCTION IF EXISTS call_center.cc_set_attempt_barred(_attempt_id bigint, _hangup_at bigint, _logs jsonb, _cause character varying);
DROP FUNCTION IF EXISTS call_center.cc_set_agent_state_set_leaving_at();
DROP FUNCTION IF EXISTS call_center.cc_set_agent_change_status();
DROP FUNCTION IF EXISTS call_center.cc_set_active_members(node character varying);
DROP FUNCTION IF EXISTS call_center.cc_resource_set_error(_id bigint, _routing_id bigint, _error_id character varying, _strategy character varying);
DROP FUNCTION IF EXISTS call_center.cc_reserved_agent_for_attempt(_node_id character varying);
DROP FUNCTION IF EXISTS call_center.cc_reserve_members_with_resources2(node_id character varying);
DROP FUNCTION IF EXISTS call_center.cc_reserve_members_with_resources(node_id character varying);
DROP FUNCTION IF EXISTS call_center.cc_queue_timing_timezones(queue_id_ bigint, calendar_id_ bigint);
DROP FUNCTION IF EXISTS call_center.cc_queue_timing_communication_ids(_queue_id bigint);
DROP FUNCTION IF EXISTS call_center.cc_queue_require_resources(integer);
DROP FUNCTION IF EXISTS call_center.cc_queue_require_agents(integer);
DROP FUNCTION IF EXISTS call_center.cc_queue_distribute_progressive(node_ character varying, rec call_center.cc_queue_distribute_resources);
DROP FUNCTION IF EXISTS call_center.cc_queue_distribute_preview(node_ character varying, rec call_center.cc_queue_distribute_resources);
DROP FUNCTION IF EXISTS call_center.cc_queue_distribute_ivr(node character varying, rec call_center.cc_queue_distribute_resources);
DROP VIEW IF EXISTS call_center.cc_queue_distribute_resources;
DROP FUNCTION IF EXISTS call_center.cc_queue_default_timezone_offset_id(integer);
DROP FUNCTION IF EXISTS call_center.cc_queue_actual_timing(_queue_id bigint);
DROP FUNCTION IF EXISTS call_center.cc_outbound_resource_timing(jsonb);
DROP FUNCTION IF EXISTS call_center.cc_originate_communication(_attempt_id bigint, _member_id bigint, _communication_id bigint, _state smallint);
DROP FUNCTION IF EXISTS call_center.cc_member_sys_offset_id_trigger_update();
DROP FUNCTION IF EXISTS call_center.cc_member_sys_offset_id_trigger_inserted();
DROP FUNCTION IF EXISTS call_center.cc_member_statistic_trigger_updated();
DROP FUNCTION IF EXISTS call_center.cc_member_statistic_trigger_inserted();
DROP FUNCTION IF EXISTS call_center.cc_member_statistic_trigger_deleted();
DROP FUNCTION IF EXISTS call_center.cc_member_statistic_trigger();
DROP FUNCTION IF EXISTS call_center.cc_member_set_sys_destinations_tg();
DROP FUNCTION IF EXISTS call_center.cc_member_set_next_destination(communications jsonb);
DROP FUNCTION IF EXISTS call_center.cc_member_distribute_by_strategy(_queue_id bigint, _type_id integer, _limit integer, _calendar_id bigint);
DROP TABLE IF EXISTS call_center.cc_member;
DROP FUNCTION IF EXISTS call_center.cc_member_communications(jsonb);
DROP FUNCTION IF EXISTS call_center.cc_member_communication_types(jsonb);
DROP FUNCTION IF EXISTS call_center.cc_member_attempt_log_day_f(queue_id integer, bucket_id integer);
DROP FUNCTION IF EXISTS call_center.cc_member_active_next_communications(_communications_arr jsonb, _type integer, _strategy text);
DROP FUNCTION IF EXISTS call_center.cc_member_active_communications(jsonb);
DROP FUNCTION IF EXISTS call_center.cc_interval_to_arr(i_ interval);
DROP FUNCTION IF EXISTS call_center.cc_get_time(_t character varying, _def_t character varying);
DROP FUNCTION IF EXISTS call_center.cc_get_lookup(_id bigint, _name character varying);
DROP FUNCTION IF EXISTS call_center.cc_distribute_inbound_call_to_queue(_queue_id bigint, _call_id character varying, _number character varying, _name character varying, _priority integer);
DROP FUNCTION IF EXISTS call_center.cc_distribute_agent_to_attempt(_node_id character varying);
DROP FUNCTION IF EXISTS call_center.cc_distribute_agent_for_attempt();
DROP FUNCTION IF EXISTS call_center.cc_destination_type_id(call_center.cc_destination);
DROP FUNCTION IF EXISTS call_center.cc_destination_top_by_priority(call_center.cc_destination[]);
DROP FUNCTION IF EXISTS call_center.cc_destination_top(call_center.cc_destination[]);
DROP FUNCTION IF EXISTS call_center.cc_destination_in(integer, integer, bigint, integer, integer);
DROP FUNCTION IF EXISTS call_center.cc_destination_id(call_center.cc_destination);
DROP FUNCTION IF EXISTS call_center.cc_count_estimate(query text);
DROP FUNCTION IF EXISTS call_center.cc_confirm_agent_attempt(_agent_id bigint, _attempt_id bigint);
DROP FUNCTION IF EXISTS call_center.cc_available_agents_by_strategy(_queue_id bigint, _strategy character varying, _limit integer, _last_agents bigint[], _except_agents bigint[]);
DROP FUNCTION IF EXISTS call_center.cc_arr_type_to_jsonb(anyarray);
DROP FUNCTION IF EXISTS call_center.calendar_json_to_excepts(jsonb);
DROP FUNCTION IF EXISTS call_center.calendar_json_to_accepts(jsonb);
DROP FUNCTION IF EXISTS call_center.calendar_accepts_to_jsonb(call_center.calendar_accept_time[]);
DROP FUNCTION IF EXISTS call_center.calendar_accept_of_day_timezones(calendar_id_ bigint);
DROP FUNCTION IF EXISTS call_center.agent_by_queue_strategy(_queue_id bigint, _strategy character varying);
DROP TYPE IF EXISTS public.cc_communication_t;
DROP TYPE IF EXISTS public.cc_agent_in_attempt;
DROP TYPE IF EXISTS public.actl;
DROP TYPE IF EXISTS permissions.acrule;
DROP TYPE IF EXISTS call_center.cc_type;
DROP TYPE IF EXISTS call_center.cc_sys_distribute_type;
DROP TYPE IF EXISTS call_center.cc_sys_distribute_resource2;
DROP TYPE IF EXISTS call_center.cc_sys_distribute_resource;
DROP TYPE IF EXISTS call_center.cc_sys_distribute_request;
DROP TYPE IF EXISTS call_center.cc_pair_test;
DROP TYPE IF EXISTS call_center.cc_destination CASCADE;
DROP FUNCTION IF EXISTS call_center.cc_destination_out(call_center.cc_destination);
DROP FUNCTION IF EXISTS call_center.cc_destination_in(cstring);
DROP TYPE IF EXISTS call_center.cc_communication_type_l;
DROP TYPE IF EXISTS call_center.cc_communication_type_in_member;
DROP TYPE IF EXISTS call_center.cc_communication_t;
DROP TYPE IF EXISTS call_center.cc_agent_in_attempt;
DROP TYPE IF EXISTS call_center.calendar_except_date;
DROP TYPE IF EXISTS call_center.calendar_accept_time;
DROP EXTENSION IF EXISTS "uuid-ossp";
DROP EXTENSION IF EXISTS pgcrypto;
DROP EXTENSION IF EXISTS pg_trgm;
DROP EXTENSION IF EXISTS intarray;
DROP EXTENSION IF EXISTS btree_gin;
DROP SCHEMA IF EXISTS storage;
DROP SCHEMA IF EXISTS permissions;
DROP SCHEMA IF EXISTS directory;
DROP SCHEMA IF EXISTS call_center;
--
-- Name: call_center; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA call_center;


--
-- Name: directory; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA directory;


--
-- Name: permissions; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA permissions;


--
-- Name: storage; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA storage;


--
-- Name: btree_gin; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS btree_gin WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION btree_gin; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION btree_gin IS 'support for indexing common datatypes in GIN';


--
-- Name: intarray; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS intarray WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION intarray; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION intarray IS 'functions, operators, and index support for 1-D arrays of integers';


--
-- Name: pg_trgm; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION pg_trgm; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';


--
-- Name: pgcrypto; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION pgcrypto; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';


--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


--
-- Name: calendar_accept_time; Type: TYPE; Schema: call_center; Owner: -
--

CREATE TYPE call_center.calendar_accept_time AS (
	disabled boolean,
	day smallint,
	start_time_of_day smallint,
	end_time_of_day smallint
);


--
-- Name: calendar_except_date; Type: TYPE; Schema: call_center; Owner: -
--

CREATE TYPE call_center.calendar_except_date AS (
	disabled boolean,
	date bigint,
	name character varying,
	repeat boolean
);


--
-- Name: cc_agent_in_attempt; Type: TYPE; Schema: call_center; Owner: -
--

CREATE TYPE call_center.cc_agent_in_attempt AS (
	attempt_id bigint,
	agent_id bigint
);


--
-- Name: cc_communication_t; Type: TYPE; Schema: call_center; Owner: -
--

CREATE TYPE call_center.cc_communication_t AS (
	number character varying(50),
	priority integer,
	state integer,
	routing_ids integer[]
);


--
-- Name: cc_communication_type_in_member; Type: TYPE; Schema: call_center; Owner: -
--

CREATE TYPE call_center.cc_communication_type_in_member AS (
	id integer,
	type_id integer,
	last_activity bigint
);


--
-- Name: cc_communication_type_l; Type: TYPE; Schema: call_center; Owner: -
--

CREATE TYPE call_center.cc_communication_type_l AS (
	type_id integer,
	l interval[]
);


--
-- Name: cc_destination; Type: SHELL TYPE; Schema: call_center; Owner: -
--

CREATE TYPE call_center.cc_destination;


--
-- Name: cc_destination_in(cstring); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_destination_in(cstring) RETURNS call_center.cc_destination
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/wbt_cc_sql.so', 'cc_destination_in';


--
-- Name: cc_destination_out(call_center.cc_destination); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_destination_out(call_center.cc_destination) RETURNS cstring
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/wbt_cc_sql.so', 'cc_destination_out';


--
-- Name: cc_destination; Type: TYPE; Schema: call_center; Owner: -
--

CREATE TYPE call_center.cc_destination (
    INTERNALLENGTH = 24,
    INPUT = call_center.cc_destination_in,
    OUTPUT = call_center.cc_destination_out,
    ALIGNMENT = int4,
    STORAGE = plain
);


--
-- Name: cc_pair_test; Type: TYPE; Schema: call_center; Owner: -
--

CREATE TYPE call_center.cc_pair_test AS (
	c integer,
	a integer
);


--
-- Name: cc_sys_distribute_request; Type: TYPE; Schema: call_center; Owner: -
--

CREATE TYPE call_center.cc_sys_distribute_request AS (
	queue_id integer,
	bucket_id integer,
	queue_type integer,
	epoch_time bigint,
	timezones smallint[],
	ratio integer,
	max_count integer,
	strategy smallint
);


--
-- Name: cc_sys_distribute_resource; Type: TYPE; Schema: call_center; Owner: -
--

CREATE TYPE call_center.cc_sys_distribute_resource AS (
	resource_id bigint,
	limit_items integer
);


--
-- Name: cc_sys_distribute_resource2; Type: TYPE; Schema: call_center; Owner: -
--

CREATE TYPE call_center.cc_sys_distribute_resource2 AS (
	type_id integer,
	resource_id integer,
	resource_limit integer,
	offsets interval[]
);


--
-- Name: cc_sys_distribute_type; Type: TYPE; Schema: call_center; Owner: -
--

CREATE TYPE call_center.cc_sys_distribute_type AS (
	type_id bigint,
	resource_id bigint,
	offsets smallint[]
);


--
-- Name: cc_type; Type: TYPE; Schema: call_center; Owner: -
--

CREATE TYPE call_center.cc_type AS ENUM (
    'inbound',
    'ivr',
    'preview',
    'progressive',
    'predictive'
);


--
-- Name: acrule; Type: TYPE; Schema: permissions; Owner: -
--

CREATE TYPE permissions.acrule AS (
	grantor integer,
	grantee integer,
	granted smallint
);


--
-- Name: actl; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.actl AS (
	grantor bigint,
	grantee bigint,
	granted smallint
);


--
-- Name: cc_agent_in_attempt; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.cc_agent_in_attempt AS (
	attempt_id bigint,
	agent_id bigint
);


--
-- Name: cc_communication_t; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE public.cc_communication_t AS (
	number character varying(50),
	priority integer,
	state integer,
	routing_ids integer[]
);


--
-- Name: agent_by_queue_strategy(bigint, character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.agent_by_queue_strategy(_queue_id bigint, _strategy character varying) RETURNS TABLE(agent_ids integer[])
    LANGUAGE plpgsql
    AS $_$
  declare
    sql text;
BEGIN
    if _strategy = 'ring-all' then
      return query
          select array_agg(aq.agent_id)::int[]
          from available_agent_in_queue aq
          where aq.queue_id = _queue_id;
    else
      sql = format('select (array[aq.agent_id])::int[]
      from available_agent_in_queue aq
        inner join cc_agent a on a.id = aq.agent_id
        left join cc_agent_in_queue_statistic s on s.agent_id = aq.agent_id and aq.queue_id = $1
      where aq.queue_id = $1
      order by aq.max_of_lvl desc,
      ')
        || case _strategy
            when 'longest-idle-time' then 's.ready_time desc nulls first'
            --r r
            --t d
            when 'least-talk-time' then 's.last_bridge_end asc nulls first'
            when 'fewest-calls' then 's.calls_answered asc nulls first'
           else 'random()' end
      ;

      return query execute sql using _queue_id;
    end if ;

    --raise notice '% = %',_strategy, sql;


END;
$_$;


--
-- Name: calendar_accept_of_day_timezones(bigint); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.calendar_accept_of_day_timezones(calendar_id_ bigint) RETURNS interval[]
    LANGUAGE plpgsql STRICT COST 8
    AS $$
declare
    res_ interval[];
begin
    select array_agg(distinct t.utc_offset)
    into res_
    from calendar_timezones_by_interval t,
         lateral (select current_timestamp AT TIME ZONE t.names[1] t) with_timezone
    where exists(
              select 1
              from calendar_accept_of_day a
              where a.calendar_id = calendar_id_
                and a.day = extract(dow from with_timezone.t)
                and (to_char(with_timezone.t, 'SSSS') :: int / 60) between a.start_time_of_day and a.end_time_of_day
            );
    return res_;
end;
$$;


--
-- Name: calendar_accepts_to_jsonb(call_center.calendar_accept_time[]); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.calendar_accepts_to_jsonb(call_center.calendar_accept_time[]) RETURNS jsonb
    LANGUAGE sql IMMUTABLE
    AS $_$
    select jsonb_agg(x.r)
    from (
             select row_to_json(a) r
             from unnest($1) a
    ) x;
$_$;


--
-- Name: calendar_json_to_accepts(jsonb); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.calendar_json_to_accepts(jsonb) RETURNS call_center.calendar_accept_time[]
    LANGUAGE sql IMMUTABLE
    AS $_$
    select array(
       select row ((x -> 'disabled')::bool, (x -> 'day')::smallint, (x -> 'start_time_of_day')::smallint, (x -> 'end_time_of_day')::smallint)::calendar_accept_time
       from jsonb_array_elements($1) x
       order by x -> 'day', x -> 'start_time_of_day'
   )::calendar_accept_time[]
$_$;


--
-- Name: calendar_json_to_excepts(jsonb); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.calendar_json_to_excepts(jsonb) RETURNS call_center.calendar_except_date[]
    LANGUAGE sql IMMUTABLE
    AS $_$
    select array(
       select row ((x -> 'disabled')::bool, (x -> 'date')::int8, (x ->> 'name')::varchar, (x -> 'repeat')::bool)::calendar_except_date
       from jsonb_array_elements($1) x
       order by x -> 'date'
   )::calendar_except_date[]
$_$;


--
-- Name: cc_arr_type_to_jsonb(anyarray); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_arr_type_to_jsonb(anyarray) RETURNS jsonb
    LANGUAGE sql IMMUTABLE
    AS $_$
    select jsonb_agg(row_to_json(a))
    from unnest($1) a;
$_$;


--
-- Name: cc_available_agents_by_strategy(bigint, character varying, integer, bigint[], bigint[]); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_available_agents_by_strategy(_queue_id bigint, _strategy character varying, _limit integer, _last_agents bigint[], _except_agents bigint[]) RETURNS SETOF integer[]
    LANGUAGE sql
    AS $$
  select ARRAY(
    select a.id
    from get_agents_for_queue(_queue_id) t
    inner join cc_agent a on t.agent_id = a.id
    inner join cc_agent_activity ac on t.agent_id = ac.agent_id
    where a.status = 'online' and a.state = 'waiting'
      and not exists(select  1 from cc_member_attempt at where at.hangup_at = 0 and at.state > 0 and at.agent_id = a.id)
      and (_except_agents isnull or not _except_agents::bigint[] && array[a.id]::bigint[])
    order by
     --a.id,
     case when _last_agents && array[a.id::bigint] then 1 else null end asc nulls last,
     t.lvl desc, t.capacity desc,
     ac.last_offering_call_at asc
    limit _limit
  );
$$;


--
-- Name: cc_confirm_agent_attempt(bigint, bigint); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_confirm_agent_attempt(_agent_id bigint, _attempt_id bigint) RETURNS integer
    LANGUAGE plpgsql
    AS $$
    declare cnt int;
BEGIN
    update cc_member_attempt
    set bridged_at = case id when _attempt_id then 1 else 0 end,
        result = case id when _attempt_id then null else 'ABANDONED' end,
        state = case id when _attempt_id then state else 7 end
    where agent_id = _agent_id and not exists(
       select 1
       from cc_member_attempt a
       where a.agent_id = _agent_id and a.result notnull
       for update
    );
    get diagnostics cnt = row_count;
    return cnt::int;
END;
$$;


--
-- Name: cc_count_estimate(text); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_count_estimate(query text) RETURNS integer
    LANGUAGE plpgsql STRICT
    AS $$
DECLARE
  rec   record;
  rows  integer;
BEGIN
  FOR rec IN EXECUTE 'EXPLAIN ' || query LOOP
    rows := substring(rec."QUERY PLAN" FROM ' rows=([[:digit:]]+)');
    EXIT WHEN rows IS NOT NULL;
  END LOOP;
  RETURN rows;
END;
$$;


--
-- Name: cc_destination_id(call_center.cc_destination); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_destination_id(call_center.cc_destination) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/wbt_cc_sql.so', 'cc_destination_id';


--
-- Name: cc_destination_in(integer, integer, bigint, integer, integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_destination_in(integer, integer, bigint, integer, integer) RETURNS call_center.cc_destination
    LANGUAGE c IMMUTABLE
    AS '$libdir/wbt_cc_sql.so', 'cc_destination_in_args';


--
-- Name: cc_destination_top(call_center.cc_destination[]); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_destination_top(call_center.cc_destination[]) RETURNS call_center.cc_destination
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/wbt_cc_sql.so', 'cc_destination_top';


--
-- Name: cc_destination_top_by_priority(call_center.cc_destination[]); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_destination_top_by_priority(call_center.cc_destination[]) RETURNS call_center.cc_destination
    LANGUAGE c IMMUTABLE STRICT
    AS '$libdir/wbt_cc_sql.so', 'cc_destination_top_by_priority';


--
-- Name: cc_destination_type_id(call_center.cc_destination); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_destination_type_id(call_center.cc_destination) RETURNS integer
    LANGUAGE c IMMUTABLE STRICT PARALLEL SAFE
    AS '$libdir/wbt_cc_sql.so', 'cc_destination_type_id';


--
-- Name: cc_distribute_agent_for_attempt(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_distribute_agent_for_attempt() RETURNS SETOF record
    LANGUAGE plpgsql
    AS $$
    declare rec record;
      id_ bigint;
      agent_id_ int4;
begin
    for rec in select a.id, cq.team_id, a.weight
            from cc_member_attempt a
                inner join cc_queue cq on a.queue_id = cq.id
            where a.agent_id isnull and a.state = 3 and a.hangup_at = 0
            order by cq.priority desc
            for update skip locked
        loop

            update cc_member_attempt a2
            set  agent_id = t.agent_id
            from (
                 select agent_id
                 from cc_team_fetch_agent(rec.team_id::int) agent_id
            ) t
            where a2.id = rec.id and a2.agent_id isnull and a2.hangup_at = 0
            returning a2.id, a2.agent_id
            into id_, agent_id_;


            if id_ notnull then
                return next row(id_, agent_id_);
            end if;

        end loop;
end
$$;


--
-- Name: cc_distribute_agent_to_attempt(character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_distribute_agent_to_attempt(_node_id character varying) RETURNS SETOF call_center.cc_agent_in_attempt
    LANGUAGE plpgsql
    AS $$
declare
  rec RECORD;
  agents bigint[];
  reserved_agents bigint[] := array[0];
  at cc_agent_in_attempt;
  counter int := 0;
BEGIN
FOR rec IN select cq.id::bigint queue_id, cq.strategy::varchar(50), count(*)::int as cnt,
                     array_agg((a.id, la.agent_id)::cc_agent_in_attempt order by a.created_at asc, a.weight desc )::cc_agent_in_attempt[] ids, array_agg(distinct la.agent_id) filter ( where not la.agent_id isnull )  last_agents
           from cc_member_attempt a
            inner join cc_queue cq on a.queue_id = cq.id
            left join lateral (
             select a1.agent_id
             from cc_member_attempt a1
             where a1.member_id = a.member_id and a1.created_at < a.created_at
             order by a1.created_at desc
             limit 1
           ) la on true
           where a.hangup_at = 0 and a.agent_id isnull and a.state = 3
            and a.created_at >= current_timestamp - (cq.sec_locate_agent || ' sec')::interval
           group by cq.id
           order by cq.priority desc
   LOOP
    select cc_available_agents_by_strategy(rec.queue_id, rec.strategy, rec.cnt, rec.last_agents, reserved_agents)
    into agents;

    raise notice '% >>> %',rec, agents;

    counter := 0;
    foreach at IN ARRAY rec.ids
    LOOP
      if array_length(agents, 1) isnull then
        exit;
      end if;

      counter := counter + 1;

      if at.agent_id isnull OR not (agents && array[at.agent_id]) then
        at.agent_id = agents[array_upper(agents, 1)];
      end if;

      select agents::int[] - at.agent_id::int, reserved_agents::int[] || at.agent_id::int
      into agents, reserved_agents;

      return next at;
    END LOOP;
   END LOOP;

   --raise notice '%', reserved_agents;

  return;
END;
$$;


--
-- Name: cc_distribute_inbound_call_to_queue(bigint, character varying, character varying, character varying, integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_distribute_inbound_call_to_queue(_queue_id bigint, _call_id character varying, _number character varying, _name character varying, _priority integer DEFAULT 0) RETURNS bigint
    LANGUAGE plpgsql
    AS $_$
declare
    _attempt_id bigint = null;
    _member_id bigint;
    _timezone_id int4;
    _abandoned_resume_allowed bool;
    _discard_abandoned_after int4;
    _weight int4;
    _destination jsonb;
BEGIN

  select
         m.id,
         jsonb_path_query_first(communications, '$[*] ? (@.number == $number)', vars => jsonb_build_object('number', _number))
  from cc_member m
  where m.queue_id = _queue_id and m.communications @>  (jsonb_build_array(jsonb_build_object('number', _number)))::jsonb
    and not exists(select 1 from cc_member_attempt a where a.member_id = m.id for update skip locked )
  limit 1
  into _member_id, _destination;

  select c.timezone_id,
           (payload->>'abandoned_resume_allowed')::bool abandoned_resume_allowed,
           (payload->>'discard_abandoned_after')::int discard_abandoned_after
  from cc_queue q
      inner join calendar c on q.calendar_id = c.id
  where  q.id = _queue_id
  into _timezone_id, _abandoned_resume_allowed, _discard_abandoned_after;


  if _abandoned_resume_allowed is true and _discard_abandoned_after > 0 then
        select (case when log.result = 'ABANDONED'
               then ((((extract(EPOCH from now()) * 1000)::int8 - log.hangup_at) / 1000) ) + coalesce(_priority, 0)
               else null end)::int
        from cc_member_attempt_log log
        where log.created_at >= (now() -  (_discard_abandoned_after || ' sec')::interval)
          and log.member_id = _member_id
        order by log.created_at desc
        limit 1
        into _weight;
  end if;


  if _member_id isnull  then
    _destination = jsonb_build_object('number', _number);

    insert into cc_member(queue_id, name, priority, timezone_id, communications)
    select _queue_id, _name, _priority, _timezone_id, (jsonb_build_array(_destination))::jsonb
    returning id into _member_id;
  end if;

  insert into cc_member_attempt (state, queue_id, member_id, weight, leg_a_id, destination)
  values (0, _queue_id, _member_id, coalesce(_weight, _priority), _call_id, _destination)
  returning id into _attempt_id;

  --raise notice '%', _attempt_id;

  return _attempt_id;

END;
$_$;


--
-- Name: cc_get_lookup(bigint, character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_get_lookup(_id bigint, _name character varying) RETURNS jsonb
    LANGUAGE plpgsql
    AS $$
BEGIN
    if _id isnull then
        return null;
    else
        return json_build_object('id', _id, 'name', _name)::jsonb;
    end if;
END;
$$;


--
-- Name: cc_get_time(character varying, character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_get_time(_t character varying, _def_t character varying) RETURNS integer
    LANGUAGE plpgsql IMMUTABLE
    AS $$
BEGIN
  return (to_char(current_timestamp AT TIME ZONE coalesce(_t, _def_t), 'SSSS') :: int / 60)::int;
END;
$$;


--
-- Name: cc_interval_to_arr(interval); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_interval_to_arr(i_ interval) RETURNS interval[]
    LANGUAGE plpgsql IMMUTABLE STRICT COST 900
    AS $$
BEGIN
  return array [i_]::interval [];
END;
$$;


--
-- Name: cc_member_active_communications(jsonb); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_member_active_communications(jsonb) RETURNS integer[]
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT array_agg(distinct x->'type')::int[] || ARRAY[]::int[] FROM jsonb_array_elements($1) t(x)
    where (x->'state')::int = 0;
$_$;


--
-- Name: cc_member_active_next_communications(jsonb, integer, text); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_member_active_next_communications(_communications_arr jsonb, _type integer, _strategy text DEFAULT 'random'::text) RETURNS jsonb
    LANGUAGE sql IMMUTABLE
    AS $_$
    select x
    from jsonb_array_elements(_communications_arr) x
    where (x->'state')::int = 0 and (x->'type')::int = _type
    order by
        case $3 when 'random' then random() else null end,
        case $3 when 'priority' then (x->'priority')::int else null end desc,
        case $3 when 'top-down' then (x->'last_activity_at')::int else null end nulls first
    limit 1;
$_$;


--
-- Name: cc_member_attempt_log_day_f(integer, integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_member_attempt_log_day_f(queue_id integer, bucket_id integer) RETURNS integer
    LANGUAGE sql IMMUTABLE STRICT
    AS $_$
    SELECT sum(l.count)::int4 AS cnt
     FROM call_center.cc_member_attempt_log_day l
     WHERE $2 IS NOT NULL and l.queue_id = $1::int
       AND l.bucket_id = $2::int4
$_$;


--
-- Name: cc_member_communication_types(jsonb); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_member_communication_types(jsonb) RETURNS integer[]
    LANGUAGE sql IMMUTABLE
    AS $_$
    SELECT array_agg(x->'type')::int[] || ARRAY[]::int[] FROM jsonb_array_elements($1) t(x);
$_$;


--
-- Name: cc_member_communications(jsonb); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_member_communications(jsonb) RETURNS jsonb
    LANGUAGE sql IMMUTABLE
    AS $_$select (select json_agg(x)
                from (
                         select x ->> 'destination'                destination,
                                cc_get_lookup(c.id, c.name)       as type,
                                (x -> 'priority')::int          as priority,
                                (x -> 'state')::int             as state,
                                x -> 'description'              as description,
                                (x -> 'last_activity_at')::int8 as last_activity_at,
                                (x -> 'attempts')::int          as attempts,
                                x ->> 'last_cause'              as last_cause,
                                cc_get_lookup(r.id, r.name)       as resource,
                                x ->> 'display'                 as display
                         from jsonb_array_elements($1) x
                                  left join cc_communication c on c.id = (x -> 'type' -> 'id')::int
                                  left join cc_outbound_resource r on r.id = (x -> 'resource' -> 'id')::int
                     ) x)::jsonb$_$;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: cc_member; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_member (
    id integer NOT NULL,
    queue_id integer NOT NULL,
    priority smallint DEFAULT 0 NOT NULL,
    expire_at bigint,
    variables jsonb DEFAULT '{}'::jsonb,
    name character varying(50) DEFAULT ''::character varying NOT NULL,
    stop_cause character varying(50),
    stop_at bigint DEFAULT 0 NOT NULL,
    last_hangup_at bigint DEFAULT 0 NOT NULL,
    attempts integer DEFAULT 0 NOT NULL,
    timezone character varying(50),
    agent_id bigint,
    "offset" interval,
    communications jsonb NOT NULL,
    bucket_id bigint,
    timezone_id integer,
    skills integer[],
    last_agent integer,
    sys_destinations call_center.cc_destination[],
    sys_offset_id smallint,
    min_offering_at bigint,
    created_at bigint DEFAULT ((date_part('epoch'::text, now()) * (1000)::double precision))::bigint
)
WITH (fillfactor='80', log_autovacuum_min_duration='0', autovacuum_analyze_threshold='50', autovacuum_vacuum_scale_factor='0.01', autovacuum_analyze_scale_factor='0.05', autovacuum_enabled='1', autovacuum_vacuum_cost_delay='50');
ALTER TABLE ONLY call_center.cc_member ALTER COLUMN "offset" SET STATISTICS 100;
ALTER TABLE ONLY call_center.cc_member ALTER COLUMN communications SET STATISTICS 100;


--
-- Name: cc_member_distribute_by_strategy(bigint, integer, integer, bigint); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_member_distribute_by_strategy(_queue_id bigint, _type_id integer, _limit integer, _calendar_id bigint) RETURNS SETOF call_center.cc_member
    LANGUAGE plpgsql
    AS $_$
declare
    _offsets interval[];
begin
    /*
    select x
    into _offsets
    from calendar_accept_of_day_timezones(_calendar_id) x;

    if not FOUND then
        return query select *
        from cc_member
        where false;
    end if;
*/
    _offsets = '{-02:30:00,-02:00:00,01:00:00,02:00:00,03:00:00,04:30:00}'::interval[];

   return query execute 'with active as (
        select a.id
        from cc_member_attempt a
        where a.queue_id = $1
        for update
    )
    select *
     from cc_member m1
     where m1.queue_id = $1
         and  m1.stop_at = 0
         and m1.last_hangup_at < 4999767110700
         and (m1."offset"::interval = any($2))
         and (m1.active_type_ids::integer[] @@ $3 )
         and m1.id not in (select id from active)
    order by m1.priority desc, m1.last_hangup_at
    limit $4'
    using  _queue_id, _offsets, (_type_id::text)::query_int, _limit;
end
$_$;


--
-- Name: cc_member_set_next_destination(jsonb); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_member_set_next_destination(communications jsonb) RETURNS jsonb
    LANGUAGE plpgsql
    AS $$
BEGIN
    return (select jsonb_array_elements(communications) limit 1);
END;
$$;


--
-- Name: cc_member_set_sys_destinations_tg(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_member_set_sys_destinations_tg() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    if new.communications notnull and jsonb_typeof(new.communications) = 'array' then
        new.sys_destinations = (select array(select cc_destination_in(idx::int4, (x -> 'type' ->> 'id')::int4, (x ->> 'last_activity_at')::int8,  (x -> 'resource' ->> 'id')::int, (x ->> 'priority')::int)
         from jsonb_array_elements(new.communications) with ordinality as x(x, idx)
         where coalesce((x.x -> 'stopped_at')::int8, 0) = 0
         and idx > -1));

    else
        new.sys_destinations = null;
    end if;

    return new;
END
$$;


--
-- Name: cc_member_statistic_trigger(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_member_statistic_trigger() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    RETURN NULL;
END;
$$;


--
-- Name: cc_member_statistic_trigger_deleted(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_member_statistic_trigger_deleted() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    declare cnt int;
BEGIN

    insert into cc_queue_statistics (bucket_id, queue_id, member_count, member_waiting)
    select t.bucket_id, t.queue_id, t.cnt, t.cntwait
    from (
             select queue_id, bucket_id, count(*) cnt, count(*) filter ( where m.stop_at = 0 ) cntwait
             from deleted m
                inner join cc_queue q on q.id = m.queue_id
             group by queue_id, bucket_id
         ) t
    on conflict (queue_id, coalesce(bucket_id, 0))
        do update
        set member_count   = cc_queue_statistics.member_count - EXCLUDED.member_count,
            member_waiting = cc_queue_statistics.member_waiting - EXCLUDED.member_waiting;

    RETURN NULL;
END
$$;


--
-- Name: cc_member_statistic_trigger_inserted(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_member_statistic_trigger_inserted() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    insert into cc_queue_statistics (bucket_id, queue_id, member_count, member_waiting)
    select t.bucket_id, t.queue_id, t.cnt, t.cntwait
    from (
             select queue_id, bucket_id, count(*) cnt, count(*) filter ( where m.stop_at = 0 ) cntwait
             from inserted m
             group by queue_id, bucket_id
         ) t
    on conflict (queue_id, coalesce(bucket_id, 0))
        do update
        set member_count   = EXCLUDED.member_count + cc_queue_statistics.member_count,
            member_waiting = EXCLUDED.member_waiting + cc_queue_statistics.member_waiting;


    --    raise notice '% % %', TG_TABLE_NAME, TG_OP, (select count(*) from inserted );
--    PERFORM pg_notify(TG_TABLE_NAME, TG_OP);
    RETURN NULL;
END
$$;


--
-- Name: cc_member_statistic_trigger_updated(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_member_statistic_trigger_updated() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    insert into cc_queue_statistics (queue_id, bucket_id, member_count, member_waiting)
    select t.queue_id, t.bucket_id, t.cnt, t.cntwait
    from (
        select queue_id, bucket_id, sum(cnt) cnt, sum(cntwait) cntwait
        from (
             select m.queue_id,
                    m.bucket_id,
                    -1 * count(*) cnt,
                    -1 * count(*) filter ( where m.stop_at = 0 ) cntwait
             from old_data m
             group by m.queue_id, m.bucket_id

             union all
            select m.queue_id,
                    m.bucket_id   bucket_id ,
                    count(*) cnt,
                    count(*) filter ( where m.stop_at = 0 ) cntwait
             from new_data m
             group by m.queue_id, m.bucket_id
        ) o
        group by queue_id, bucket_id
    ) t
    --where t.cntwait != 0
    on conflict (queue_id, coalesce(bucket_id, 0)) do update
        set member_waiting = excluded.member_waiting + cc_queue_statistics.member_waiting,
            member_count = excluded.member_count + cc_queue_statistics.member_count;

   RETURN NULL;
END
$$;


--
-- Name: cc_member_sys_offset_id_trigger_inserted(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_member_sys_offset_id_trigger_inserted() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare res int4[];
BEGIN
    if new.timezone_id isnull or new.timezone_id = 0 then
        res = cc_queue_default_timezone_offset_id(new.queue_id);
        new.timezone_id = res[1];
        new.sys_offset_id = res[2];
    else
        new.sys_offset_id = cc_timezone_offset_id(new.timezone_id);
    end if;

    if new.timezone_id isnull or new.sys_offset_id isnull then
        raise exception 'not found timezone';
    end if;

    RETURN new;
END
$$;


--
-- Name: cc_member_sys_offset_id_trigger_update(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_member_sys_offset_id_trigger_update() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    declare res int4[];
BEGIN
    new.sys_offset_id = cc_timezone_offset_id(new.timezone_id);

    if new.timezone_id isnull or new.sys_offset_id isnull then
        raise exception 'not found timezone';
    end if;

    RETURN new;
END
$$;


--
-- Name: cc_originate_communication(bigint, bigint, bigint, smallint); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_originate_communication(_attempt_id bigint, _member_id bigint, _communication_id bigint, _state smallint) RETURNS TABLE(name character varying, variables jsonb, number character varying, description character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
	return query with att as (
		update cc_member_attempt
			set state = _state,
				originate_at = ((date_part('epoch'::text, now()) * (1000)::double precision))::bigint
			where id = _attempt_id and communication_id = _communication_id and member_id = _member_id
			returning id, originate_at::bigint
	)
	select m.name, m.variables, c.number, c.description
	from cc_member m,
		 lateral (
				select *
				from cc_member_communications
				where id = _communication_id
			) c
	where m.id = _member_id and exists(select * from att);
END;
$$;


--
-- Name: cc_outbound_resource_timing(jsonb); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_outbound_resource_timing(jsonb) RETURNS smallint[]
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $_$
declare res_ smallint[];
BEGIN
    with times as (
        select (e->'start_time_of_day')::int as start, (e->'end_time_of_day')::int as end
        from jsonb_array_elements($1) e
    )
    select array_agg(distinct t.id) x
    into res_
    from calendar_timezone_offsets t,
         lateral (select current_timestamp AT TIME ZONE t.names[1] t) with_timezone
    where exists (select 1 from times where (to_char(with_timezone.t, 'SSSS') :: int / 60) between times.start and times.end);

    return res_;
END;
$_$;


--
-- Name: cc_queue_actual_timing(bigint); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_queue_actual_timing(_queue_id bigint) RETURNS TABLE(communication_id bigint, max_attempt integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
  return query select t.communication_id::bigint, max(t.max_attempt::integer) - 10
    from cc_queue_timing t
    where t.queue_id = _queue_id and -1 between t.start_time_of_day and t.end_time_of_day
    group by t.communication_id;

end;
$$;


--
-- Name: cc_queue_default_timezone_offset_id(integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_queue_default_timezone_offset_id(integer) RETURNS integer[]
    LANGUAGE sql IMMUTABLE
    AS $_$
    select array[c.timezone_id, z.offset_id]::int4[]
    from cc_queue q
        inner join calendar c on c.id = q.calendar_id
        inner join calendar_timezones z on z.id = c.timezone_id
    where q.id = $1;
$_$;


--
-- Name: cc_queue_distribute_resources; Type: VIEW; Schema: call_center; Owner: -
--

CREATE VIEW call_center.cc_queue_distribute_resources AS
SELECT
    NULL::integer AS queue_id,
    NULL::integer AS resource_id,
    NULL::integer[] AS routing_ids,
    NULL::bigint AS min_activity_at,
    NULL::integer AS call_count,
    NULL::bigint AS dnc_list_id,
    NULL::call_center.cc_communication_type_l[] AS times,
    NULL::smallint AS type,
    NULL::character varying(20) AS strategy,
    NULL::jsonb AS payload,
    NULL::bigint AS team_id;


--
-- Name: cc_queue_distribute_ivr(character varying, call_center.cc_queue_distribute_resources); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_queue_distribute_ivr(node character varying, rec call_center.cc_queue_distribute_resources) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
  declare
    v_cnt integer;
    count integer = 0;
    seg_cnt integer;
    x cc_communication_type_l;
BEGIN
    seg_cnt = 0;

    foreach x in array rec.times
    loop
      execute 'insert into cc_member_attempt(result, communication_id, queue_id, member_id, resource_id, routing_id, node_id)
      select
             case when lc.number is null then null else ''OUTGOING_CALL_BARRED'' end,
             t.communication_id,
             $2,
             t.member_id,
             $7,
             t.routing_id,
             $8
      from (
        select
           c.communication_id,
           c.communication_number,
           c.member_id,
          (c.routing_ids & $1::int[])[1] as routing_id,
           row_number() over (partition by c.member_id order by c.last_hangup_at, c.priority desc) d
        from (
          select cmc.id as communication_id, cmc.number as communication_number, cmc.routing_ids, cmc.last_hangup_at, cmc.priority, cmc.member_id
          from cc_member m
           cross join cc_member_communications cmc
              where m.queue_id = $2
                and not exists(
                select *
                from cc_member_attempt a
                where a.member_id = m.id and a.state > 0
              )
              and m.stop_at = 0
              and m.last_hangup_at < $3
              and m."offset"::interval = any ($4::interval[])

              and cmc.member_id = m.id
              and cmc.state = 0
              and cmc.routing_ids && $1
              and cmc.communication_id = $5

            order by m.priority desc, m.last_hangup_at asc
          limit $6 * 3 --todo 3 is avg communication count
        ) c
      ) t
      left join cc_list_communications lc on lc.list_id = $9 and lc.number = t.communication_number
      where t.d =1
      limit $6'
        using
          rec.routing_ids::int[],
          rec.queue_id::bigint,
          rec.min_activity_at,
          x.l::interval [],
          x.type_id::int,
          rec.call_count::int - seg_cnt,
          rec.resource_id::int,
          node::text,
          rec.dnc_list_id::bigint;

      get diagnostics v_cnt = row_count;
      count = count + v_cnt;
      seg_cnt = seg_cnt + v_cnt;

      exit when rec.call_count::int - seg_cnt <= 0;
    end loop;

    return  count;
END;
$_$;


--
-- Name: cc_queue_distribute_preview(character varying, call_center.cc_queue_distribute_resources); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_queue_distribute_preview(node_ character varying, rec call_center.cc_queue_distribute_resources) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
 declare
  v_cnt integer;
  count integer = 0;
  seg_cnt integer;
  x cc_communication_type_l;
BEGIN
    seg_cnt = 0;
    
    if rec.team_id isnull then 
      return 0;
    end if;

    foreach x in array rec.times
    loop
      execute 'insert into cc_member_attempt(result, communication_id, member_id, routing_id, agent_id, resource_id, queue_id , node_id)
              select
                 case when lc.number is null then null else ''OUTGOING_CALL_BARRED'' end result,
                 t.communication_id,
                 t.member_id,
                 t.routing_id,
                 a.agent_id as agent_id,
                 $1 as queue_id,
                 $2 as resource_id,
                 $3 as node_name
              from (
                select
                     c.communication_id,
                     c.communication_number,
                     c.member_id,
                    (c.routing_ids & $4::int[])[1] as routing_id,
                     row_number() over (partition by c.member_id order by c.last_hangup_at, c.priority desc) d,
                     dense_rank()  over (order by  c.member_id) ra
                    from (
                      select cmc.id as communication_id, cmc.number as communication_number, cmc.routing_ids, cmc.last_hangup_at, cmc.priority, cmc.member_id
                      from cc_member m
                       cross join cc_member_communications cmc
                          where m.queue_id = $1
                            and not exists(
                            select *
                            from cc_member_attempt a
                            where a.member_id = m.id and a.state > 0
                          )
                          and m.stop_at = 0
                          and m.last_hangup_at < $5
                          and m."offset"::interval =  any ($6::interval[])

                          and cmc.member_id = m.id
                          and cmc.state = 0
                          and cmc.routing_ids && $4::int[]
                          and cmc.communication_id = $7

                        order by m.priority desc, m.last_hangup_at asc
                      limit $8 * 3 for UPDATE SKIP LOCKED --todo 3 is avg communication count
                ) c
              ) t
              left join cc_list_communications lc on lc.list_id = 1 and lc.number = t.communication_number
              cross join cc_waiting_agents($9, $8, null) a
              where t.d = 1 and t.ra = a.pos and not exists(
                  select 1
                  from cc_member_attempt a1
                  where a1.agent_id = a.agent_id
              )
              limit $8'
          using
            rec.queue_id::bigint,
            rec.resource_id::int,
            node_,
            rec.routing_ids::int[],
            rec.min_activity_at,
            x.l,
            x.type_id,
            rec.call_count::int - seg_cnt,
            rec.team_id;

      get diagnostics v_cnt = row_count;
      count = count + v_cnt;
      seg_cnt = seg_cnt + v_cnt;

      exit when rec.call_count::int - seg_cnt <= 0;
    end loop;

  return count;
END;
$_$;


--
-- Name: cc_queue_distribute_progressive(character varying, call_center.cc_queue_distribute_resources); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_queue_distribute_progressive(node_ character varying, rec call_center.cc_queue_distribute_resources) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
 declare
  v_cnt integer;
  count integer = 0;
  seg_cnt integer;
  x cc_communication_type_l;
BEGIN
    seg_cnt = 0;

    foreach x in array rec.times
    loop
      execute 'insert into cc_member_attempt(result, communication_id, member_id, routing_id, agent_id, queue_id, resource_id, node_id)
              select
                 t.result,
                 t.communication_id,
                 t.member_id,
                 t.routing_id,
                 a.agent_id as agent_id,
                  $1 as queue_id,
                  $2 as resource_id,
                  $3 as node_name
            from (
              select
                     row_number() over  (partition by ra % $10 order by result nulls first ) rn,
                     *
                from (
                  select
                   case when lc.number is null then null else ''OUTGOING_CALL_BARRED'' end result,
                   t.communication_id,
                   t.member_id,
                   t.routing_id,
                   row_number() over (order by lc.number nulls first, t.member_id ) ra,
                   t.d
                  from (
                    select
                         c.communication_id,
                         c.communication_number,
                         c.member_id,
                        (c.routing_ids & $4::int[])[1] as routing_id,
                         row_number() over (partition by c.member_id order by c.last_hangup_at, c.priority desc) d
                        from (
                          select cmc.id as communication_id, cmc.number as communication_number, cmc.routing_ids, cmc.last_hangup_at, cmc.priority, cmc.member_id
                          from cc_member m
                           cross join cc_member_communications cmc
                              where m.queue_id = $1
                                and not exists(
                                select *
                                from cc_member_attempt a
                                where a.member_id = m.id and a.state > 0
                              )
                              and m.stop_at = 0
                              and m.last_hangup_at < $5
                              and m."offset"::interval = any ($6::interval[])

                              and cmc.member_id = m.id
                              and cmc.state = 0
                              and cmc.routing_ids && $4::int[]
                              and cmc.communication_id = $7

                            order by m.priority desc, m.last_hangup_at asc
                          limit $8 * 3 --todo 3 is avg communication count
                    ) c
                  ) t
                  left join cc_list_communications lc on lc.list_id = 1 and lc.number = t.communication_number
                  where t.d = 1
                ) t
            ) t
            left join cc_waiting_agents($1, $8, $9) a on a.pos = t.rn and t.result isnull
            where (a.agent_id isnull and t.result notnull ) or a.agent_id notnull
            limit $8'
          using
            rec.queue_id::bigint,
            rec.resource_id::int,
            node_,
            rec.routing_ids::int[],
            rec.min_activity_at,
            x.l,
            x.type_id,
            rec.call_count::int - seg_cnt,
            (rec.payload->'agent'->'strategy')::varchar(50),
            coalesce((rec.payload->'agent'->>'call_per_agent')::int, 1)::int;

      get diagnostics v_cnt = row_count;
      count = count + v_cnt;
      seg_cnt = seg_cnt + v_cnt;

      exit when rec.call_count::int - seg_cnt <= 0;
    end loop;

  return count;
END;
$_$;


--
-- Name: cc_queue_require_agents(integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_queue_require_agents(integer) RETURNS boolean
    LANGUAGE plpgsql
    AS $_$
BEGIN
  if $1 = 2 then
    return false;
  end if;
  RETURN true;
END
$_$;


--
-- Name: cc_queue_require_resources(integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_queue_require_resources(integer) RETURNS boolean
    LANGUAGE plpgsql
    AS $_$
BEGIN
  if $1 = 1 then
    return false;
  end if;
  RETURN true;
END
$_$;


--
-- Name: cc_queue_timing_communication_ids(bigint); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_queue_timing_communication_ids(_queue_id bigint) RETURNS integer[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  return array(select distinct cqt.communication_id
from cc_queue q
  inner join calendar c on q.calendar_id = c.id
  inner join cc_queue_timing cqt on q.id = cqt.queue_id
where q.id = _queue_id
  and (to_char(current_timestamp AT TIME ZONE c.timezone, 'SSSS') :: int / 60)
    between cqt.start_time_of_day and cqt.end_time_of_day);
END;
$$;


--
-- Name: cc_queue_timing_timezones(bigint, bigint); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_queue_timing_timezones(queue_id_ bigint, calendar_id_ bigint) RETURNS call_center.cc_communication_type_l[]
    LANGUAGE plpgsql
    AS $$
declare res_types cc_communication_type_l[];
  declare res_type cc_communication_type_l;
  declare r record;
  declare i int default 0;
BEGIN
  for r in select t.id
           , t.communication_id
           , t.priority
           , z.ofs
      from cc_queue_timing t,
           lateral (
              select array_agg(distinct ct.utc_offset) ofs
              from calendar_timezones_by_interval ct,
                   lateral (select current_timestamp AT TIME ZONE ct.names[1] t) with_timezone
              where (to_char(with_timezone.t, 'SSSS') :: int / 60)
                  between t.start_time_of_day and t.end_time_of_day
                   and exists (
                      select 1
                      from calendar_accept_of_day a
                      where a.calendar_id = calendar_id_
                        and a.day = extract(dow from with_timezone.t) + 1
                        and (to_char(with_timezone.t, 'SSSS') :: int / 60) between a.start_time_of_day and a.end_time_of_day

                  )
           ) z
      where t.queue_id = queue_id_ and z.ofs notnull
      order by priority desc
  loop

    if res_types[i] notnull and (res_types[i]::cc_communication_type_l).type_id = r.communication_id  then

      SELECT r.communication_id::int, array_agg(distinct t.v)::interval[]
      into res_type
      from (
           select unnest(array_cat(res_types[i].l, r.ofs)) v
      ) t
      limit 1;

      res_types[i] = res_type;
    else
      SELECT
             array_append(res_types, (r.communication_id, r.ofs)::cc_communication_type_l)
      into res_types;
      i = i + 1;
    end if;

  end loop;
  return res_types;
END;
$$;


--
-- Name: cc_reserve_members_with_resources(character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_reserve_members_with_resources(node_id character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
DECLARE
        queue RECORD;
        domain_id int8 = null;
        cur_time int8 = (select extract(EPOCH from now())::bigint * 1000);
        seg_cnt int = 0;
        cnt int = 0;
BEGIN

    if NOT pg_try_advisory_xact_lock(13213211) then
      raise notice 'LOCK';
      return 0;
    end if;

FOR queue IN select *, case when bucket_id isnull  then null
                        --TODO Формула розподілу ресурсів (подумати щоб конфігурувати на рівні черги)
                        -- це не зовсім правильно, тому що губиться пропорція бакета
                        else (( buckets_cnt * 100 ) / sum(buckets_cnt) filter ( where bucket_id notnull ) over (partition by id))::int4
                        end resource_ratio
                from cc_sys_distribute_queue
                where buckets_cnt > 0
            LOOP

            if domain_id isnull or domain_id != queue.domain_id then
                domain_id = queue.domain_id;
                --raise notice 'change domain to % %', cur_time, domain_id;
            end if;

            insert into cc_member_attempt (queue_id, bucket_id, member_id, resource_id, node_id, destination)
            select r.queue_id, queue.bucket_id::int, x.id, x.resource_id, node_id, jsonb_path_query(m.communications, ('$[' || x.destination_idx  || ']')::jsonpath) communication
            from cc_sys_queue_distribute_resources r,
                  cc_sys_distribute_members(
                     r.queue_id::int4, --queue
                     queue.bucket_id::int4, --bucket
                     100, --queue.resource_ratio::int4, -- bucket ratio
                     1::int, --strategy
                     queue.buckets_cnt::int4, --limit
                     cur_time,
                     r.ran,
                     r.types,
                     r.resources,
                     null
                 ) x
            inner join cc_member m on m.id = x.id
            where r.queue_id = queue.id;

            get diagnostics seg_cnt = row_count;
            cnt = cnt + seg_cnt;

            --raise notice 'res b % = % (ratio=%, max=%)', queue.bucket_id, seg_cnt, queue.resource_ratio::int4, queue.buckets_cnt::int4;

            if seg_cnt > 0 then
               -- raise notice 'commit queue %s new records %', queue.id, seg_cnt;
--                 commit;
            end if;

            END LOOP;

    return cnt;
END;
$_$;


--
-- Name: cc_reserve_members_with_resources2(character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_reserve_members_with_resources2(node_id character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    queue     RECORD;
    domain_id int8 = null;
    cur_time  int8 = (select extract(EPOCH from now())::bigint * 1000);
    seg_cnt   int  = 0;
    cnt       int  = 0;
BEGIN

    if NOT pg_try_advisory_xact_lock(13213211) then
        raise notice 'LOCK';
        return 0;
    end if;

    CREATE temp table cc_distribute_member_tmp ON COMMIT DROP as
    with dis as (
        select q.domain_id,
               row_number() over (partition by q.domain_id order by q.priority desc, csdqbs.bucket_id nulls last) pos,
               q.id,
               q.team_id,
               q.calendar_id,
               q.type,
               csdqbs.bucket_id,
               case
                   when q.type = 1 then (select count(*) --fixme for test
                                         from cc_member_attempt a
                                         where a.queue_id = q.id
                                           and a.state = 3
                                           and a.agent_id isnull)
                   else csdqbs.member_waiting end                                                                 member_waiting
        from cc_queue q
                 left join cc_sys_distribute_queue_bucket_seg csdqbs on q.id = csdqbs.queue_id and q.type > 1
        where q.enabled
          and (q.type < 2 or csdqbs.member_waiting > 0)
    )
            ,
         res as (
             select dis.*, r.resources, r.types, r.ran
             from dis
                      left join cc_sys_queue_distribute_resources r on r.queue_id = dis.id and dis.type != 1
             where dis.member_waiting > 0
               and (dis.type = 1 or r.queue_id notnull)
         ),
         ag as (
             select t.*, cc_team_agents_by_bucket(t.team_id::int, t.bucket_id::int) agents
             from (
                      select res.team_id, res.bucket_id
                      from res
                      where res.team_id notnull
                        and res.type != 2
                      group by res.team_id, res.bucket_id
                  ) t
         )
    select x.*, t.bucket_id, t.id as queue_id
    from (
             select res.*,
                    ag.agents,
                    row (res.id, res.bucket_id, res.type, 499976700000000, res.ran, 100, 100, 2)::cc_sys_distribute_request req
             from res
                      left join ag on res.type != 2 and res.team_id = ag.team_id and
                                      coalesce(res.bucket_id, 0) = coalesce(ag.bucket_id, 0)
             where (res.type = 2 or ag.agents notnull) --and res.id = 2 and ag.bucket_id isnull
             order by res.pos
         ) t,
         lateral cc_test_recursion(
                 t.req,
                 t.agents,
                 t.resources,
                 t.types
             ) x (id bigint, destination_idx int4, resource_id int4, agent_id int4);

    cnt = (select count(*) from cc_distribute_member_tmp);

    insert into cc_member_attempt(member_id, queue_id, resource_id, agent_id, bucket_id, destination)
    select t.id, t.queue_id, t.resource_id, t.agent_id, t.bucket_id, (cm.communications->t.destination_idx - 1) as destination
    from cc_distribute_member_tmp t
        inner join cc_member cm on t.id = cm.id;

    return cnt;
END;
$$;


--
-- Name: cc_reserved_agent_for_attempt(character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_reserved_agent_for_attempt(_node_id character varying) RETURNS TABLE(attempt_id bigint, agent_id bigint, agent_updated_at bigint)
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN QUERY update cc_member_attempt a
    set agent_id = res.agent_id
    from (
    with tmp as (
      select *, row_number() over (partition by tmp.queue_id order by tmp.queue_id) rn --TODO strategy
        from (
          select distinct on(a.agent_id) a.agent_id, a.queue_id
          from available_agent_in_queue a
          order by a.agent_id, a.ratio desc
        ) tmp
      )
      select r.id as attempt_id, r.queue_id, tmp.agent_id
      from (
        select *, row_number() over (partition by queue_id order by created_at) rn
        from cc_member_attempt a
        where a.hangup_at = 0 and a.state = 3 and a.agent_id isnull
      ) r
      inner join tmp on r.queue_id = tmp.queue_id and r.rn = tmp.rn
    ) res
    inner join cc_agent ag on ag.id = res.agent_id
    where a.id = res.attempt_id and a.agent_id isnull
    returning a.id::bigint as attempt_id, a.agent_id::bigint, ag.updated_at::bigint as agent_updated_at;
END;
$$;


--
-- Name: cc_resource_set_error(bigint, bigint, character varying, character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_resource_set_error(_id bigint, _routing_id bigint, _error_id character varying, _strategy character varying) RETURNS record
    LANGUAGE plpgsql
    AS $$
DECLARE _res record;
  _stopped boolean;
  _successively_errors smallint;
  _un_reserved_id bigint;
BEGIN

  update cc_outbound_resource
  set last_error_id = _error_id,
      last_error_at = ((date_part('epoch'::text, now()) * (1000)::double precision))::bigint,
    successively_errors = case when successively_errors + 1 >= max_successively_errors then 0 else successively_errors + 1 end,
    enabled = case when successively_errors + 1 >= max_successively_errors then false else enabled end
  where id = _id and "enabled" is true
  returning successively_errors >= max_successively_errors, successively_errors into _stopped, _successively_errors
  ;

  if _stopped is true then
    update cc_outbound_resource o
    set reserve = false,
        successively_errors = 0
    from (
      select id
      from cc_outbound_resource r
      where r.enabled is true
        and r.reserve is true
--         and exists(
--           select *
--           from cc_resource_in_routing crir
--           where crir.routing_id = _routing_id
--             and crir.resource_id = r.id
--         )
      order by case when _strategy = 'top_down' then r.last_error_at else null end asc,
               case _strategy
                 when 'by_limit' then r."limit"
                 when 'random' then random()
               else null
               end desc
      limit 1
    ) r
    where r.id = o.id
    returning o.id::bigint into _un_reserved_id;
  end if;

  select _successively_errors::smallint, _stopped::boolean, _un_reserved_id::bigint into _res;
  return _res;
END;
$$;


--
-- Name: cc_set_active_members(character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_set_active_members(node character varying) RETURNS TABLE(id bigint, member_id bigint, result character varying, queue_id integer, queue_updated_at bigint, queue_count integer, queue_active_count integer, resource_id integer, resource_updated_at bigint, gateway_updated_at bigint, destination jsonb, variables jsonb, name character varying, leg_a_id character varying, agent_id bigint, agent_updated_at bigint, team_updated_at bigint)
    LANGUAGE plpgsql
    AS $$
BEGIN
    return query update cc_member_attempt a
        set state = 1
            ,node_id = node
            ,result = case c.state when 3 then 'TIMEOUT' when 7 then 'CANCEL' else a.result end
        from (
--         with stats as (
--           select a.queue_id,
--                  count(*)                            count,
--                  count(*) filter ( where state = 5 ) active
--           from cc_member_attempt a
--           where a.hangup_at = 0
--           group by a.queue_id
--         )
            select c.id,
                   cq.updated_at                      as queue_updated_at,
                   r.updated_at                       as resource_updated_at,
                   gw.updated_at                      as gateway_updated_at,
                   c.destination                      as destination,
                   cm.variables                       as variables,
                   cm.name                            as member_name,
                   c.state                            as state,
                   cq.sec_locate_agent,
--                s.count as queue_cnt,
                   0                                  as queue_cnt,
--                s.active as queue_active_cnt
                   0                                  as queue_active_cnt,
                   ca.updated_at                      as agent_updated_at,
                   tm.updated_at                      as team_updated_at
            from cc_member_attempt c
                     --inner join stats s on s.queue_id = c.queue_id
                     inner join cc_member cm on c.member_id = cm.id
                     inner join cc_queue cq on cm.queue_id = cq.id
                     left join cc_team tm on tm.id = cq.team_id
                     left join cc_outbound_resource r on r.id = c.resource_id
                     left join directory.sip_gateway gw on gw.id = r.gateway_id
                     left join cc_agent ca on c.agent_id = ca.id
            where (c.state = 0
                or (c.state = 3 and c.agent_id isnull and cq.sec_locate_agent > 0 and
                    c.created_at <= current_timestamp - (cq.sec_locate_agent || ' sec')::interval)
                or c.state = 7
                )
              and c.hangup_at = 0
            order by cq.priority desc, c.weight desc
                for update of c skip locked
        ) c
        where a.id = c.id
        returning
            a.id::bigint as id,
            a.member_id::bigint as member_id,
            a.result as result,
            a.queue_id::int as qeueue_id,
            c.queue_updated_at::bigint as queue_updated_at,
            c.queue_cnt::int,
            c.queue_active_cnt::int,
            a.resource_id::int as resource_id,
            c.resource_updated_at::bigint as resource_updated_at,
            c.gateway_updated_at::bigint as gateway_updated_at,
            c.destination,
            c.variables,
            c.member_name,
            a.leg_a_id,
            a.agent_id,
            c.agent_updated_at,
            c.team_updated_at;
END;
$$;


--
-- Name: cc_set_agent_change_status(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_set_agent_change_status() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  insert into cc_agent_state_history (agent_id, joined_at, state, queue_id)
  values (new.id, now(), new.state, new.active_queue_id);
  RETURN new;
END;
$$;


--
-- Name: cc_set_agent_state_set_leaving_at(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_set_agent_state_set_leaving_at() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  update cc_agent_status_history h
    set leaving_at  =  new.join_at
  from (
    select h.id
    from cc_agent_status_history h
    where h.agent_id = new.agent_id
    order by h.join_at desc
    limit 1
    for update --todo
  ) prev
  where h.id = prev.id;

  RETURN new;
END;
$$;


--
-- Name: cc_set_attempt_barred(bigint, bigint, jsonb, character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_set_attempt_barred(_attempt_id bigint, _hangup_at bigint, _logs jsonb, _cause character varying) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cnt int;
  _stopped boolean;
  _member_id bigint;
  _communication_id bigint;
BEGIN
     update cc_member_attempt
     set hangup_at = _hangup_at,
         state = -1, --todo
         result = _cause,
         logs = _logs
     where id = _attempt_id
     returning member_id, communication_id into _member_id, _communication_id;

     GET DIAGNOSTICS _cnt = ROW_COUNT;

     if _cnt = 0 then
       RAISE EXCEPTION 'not found attempt';
     end if;

     update cc_member_communications c
      set state = 1,
          last_hangup_cause = _cause,
          last_hangup_at = _hangup_at
     where c.id = _communication_id;

     GET DIAGNOSTICS _cnt = ROW_COUNT;

     if _cnt = 0 then
       RAISE EXCEPTION 'not found communication';
     end if;

     _stopped = false;
     if not exists(select * from cc_member_communications where member_id = _member_id and state = 0) then
       update cc_member m
        set stop_at = _hangup_at,
            last_hangup_at = _hangup_at,
            stop_cause = _cause
       where m.id = _member_id;

       _stopped = true;
     end if;

  return _stopped;
END;
$$;


--
-- Name: cc_set_attempt_stop(bigint, smallint, boolean, bigint, jsonb, character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_set_attempt_stop(_attempt_id bigint, _delta smallint, _is_err boolean, _hangup_at bigint, _logs jsonb, _cause character varying) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
DECLARE
--   _cnt int;
  _stopped boolean;
  _break boolean;
  _member_id bigint;
BEGIN
     update cc_member_attempt
     set hangup_at = _hangup_at,
         state = -1, --todo
         result = _cause,
         logs = _logs
     where id = _attempt_id
     returning member_id into _member_id;


     if _member_id isnull then
       RAISE EXCEPTION 'not found attempt';
     end if;
     update cc_member m
     set attempts = attempts + _delta,
         stop_cause = case when (q.max_of_retry <= attempts + _delta) or true then _cause else stop_cause end,
         stop_at = case when (q.max_of_retry <= attempts + _delta) or true  then _hangup_at else stop_at end,
         last_hangup_at = _hangup_at
     from cc_queue q
     where m.id = _member_id and q.id = m.queue_id and _delta != 0
     returning stop_at > 0, TRUE into _stopped, _break;

--      GET DIAGNOSTICS _cnt = ROW_COUNT;
--
--      if _cnt = 0 and _delta != 0 then
--        RAISE EXCEPTION 'not found member in attempt';
--      end if;

     if _stopped is true and _break is true then
--
--        update cc_member_communications
--         set state = 1
--        where member_id = _member_id and id != _communication_id;
     end if;

     if _stopped isnull then
       _stopped = false;
     end if;

     return _stopped;
END;
$$;


--
-- Name: cc_set_attempt_success(bigint, bigint, jsonb, character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_set_attempt_success(_attempt_id bigint, _hangup_at bigint, _logs jsonb, _cause character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
  _cnt int;
  _member_id bigint;
  _communication_id bigint;
BEGIN
     update cc_member_attempt
     set hangup_at = _hangup_at,
         state = -2, --todo
         result = _cause,
         logs = _logs
     where id = _attempt_id
     returning member_id, communication_id into _member_id, _communication_id;

     GET DIAGNOSTICS _cnt = ROW_COUNT;

     if _cnt = 0 then
       RAISE EXCEPTION 'not found attempt';
     end if;

     update cc_member
     set attempts = attempts + 1,
         stop_cause = _cause,
         stop_at = _hangup_at,
         last_hangup_at = _hangup_at
     where id = _member_id;

     GET DIAGNOSTICS _cnt = ROW_COUNT;

     if _cnt = 0 then
       RAISE EXCEPTION 'not found member in attempt';
     end if;

     update cc_member_communications
      set state = 1,
          attempts = case _communication_id when id then attempts + 1 else attempts end,
          last_hangup_at = case _communication_id when id then _hangup_at else last_hangup_at end,
          last_hangup_cause = case _communication_id when id then _cause else last_hangup_cause end
     where member_id = _member_id;

     GET DIAGNOSTICS _cnt = ROW_COUNT;

     if _cnt = 0 then
       RAISE EXCEPTION 'not found member communications';
     end if;
END;
$$;


--
-- Name: cc_stop_attempt(bigint, smallint, smallint, bigint, character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_stop_attempt(_attempt_id bigint, _delta smallint, _state smallint, _hangup_at bigint, _cause character varying) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
DECLARE
  _member_id bigint;
  _communication_id bigint;
BEGIN

     update cc_member_attempt
     set hangup_at = _hangup_at,
         state = _state,
         result = _cause
     where id = _attempt_id;


     update cc_member m
      set stop_cause = _cause,
          stop_at = _hangup_at
     from cc_queue q
     where _delta != 0 and m.id = _member_id and q.id = m.queue_id
     returning m.id into _member_id;


     return _member_id;
END;
$$;


--
-- Name: cc_sys_distribute_members(integer, integer, integer, integer, integer, bigint, smallint[], call_center.cc_sys_distribute_type[], call_center.cc_sys_distribute_resource[], integer[]); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_sys_distribute_members(integer, integer, integer, integer, integer, bigint, smallint[], call_center.cc_sys_distribute_type[], call_center.cc_sys_distribute_resource[], integer[]) RETURNS TABLE(id bigint, destination_idx smallint, resource_id bigint, agent_id integer)
    LANGUAGE c IMMUTABLE
    AS '$libdir/wbt_cc_sql.so', 'cc_sys_distribute_members';


--
-- Name: cc_team_agents_by_bucket(integer, integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_team_agents_by_bucket(team_id_ integer, bucket_id integer) RETURNS integer[]
    LANGUAGE plpgsql
    AS $_$
    declare res int4[];
begin
    select array_agg(ab.agent_id order by a.last_state_change)
    into res
    from cc_sys_agent_group_team_bucket ab
        inner join cc_agent a on a.id = ab.agent_id
    where ab.team_id = $1::int4 and  case when $2 isnull then ab.bucket_id isnull else ab.bucket_id = $2 end;

    return res;
end;
$_$;


--
-- Name: cc_team_fetch_agent(integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_team_fetch_agent(team_id_ integer) RETURNS integer
    LANGUAGE sql
    AS $$
with ag as (
    select distinct on (s.agent_id) s.agent_id, s.lvl, s.capacity
    from (
             select sa.agent_id, max(aq.lvl) lvl, max(sa.capacity) capacity
             from cc_agent_in_team aq
                      inner join cc_skill_in_agent sa on sa.skill_id = aq.skill_id
             where aq.team_id = team_id_
               and aq.skill_id notnull
               and sa.capacity between aq.min_capacity and aq.max_capacity
             group by sa.agent_id

             union
             distinct

             select aq.agent_id, lvl, 0
             from cc_agent_in_team aq
             where aq.team_id = team_id_
               and aq.agent_id notnull
         ) s
    order by s.agent_id, s.lvl desc, s.capacity desc
)
select a.id::int
from ag
         inner join cc_agent a on ag.agent_id = a.id
where a.status = 'online'
  and a.state = 'waiting'
  and not exists(select * from cc_member_attempt att where att.agent_id = a.id for update skip locked )
order by ag.lvl desc, ag.capacity desc, a.last_state_change asc
limit 1;

$$;


--
-- Name: cc_test_any(jsonb); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_test_any(jsonb) RETURNS integer
    LANGUAGE plpgsql IMMUTABLE
    AS $$
    begin
        return (random() * 100)::int;
    end;
$$;


--
-- Name: cc_test_calendar(character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_test_calendar(timezone_ character varying) RETURNS boolean
    LANGUAGE plpgsql COST 999
    AS $$
BEGIN
  return false;
END;
$$;


--
-- Name: cc_test_cursor(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_test_cursor() RETURNS void
    LANGUAGE plpgsql
    AS $$
declare parent_id bigint;
    comm jsonb;
    idx int;
    cur CURSOR(_queue_id bigint, _type query_int) for
     SELECT id, communications FROM cc_member m
     where m.stop_at = 0 and m.queue_id = _queue_id and cc_test_c_fn(communications) = 0
    --order by m.priority desc, m.last_hangup_at;
    ;
BEGIN
    FOR counter IN 1..1000 LOOP
        open cur(_queue_id := counter, _type := ('1 | 2'::text)::query_int);
        idx := 0;
        loop
            FETCH NEXT FROM cur INTO parent_id, comm;
            EXIT WHEN NOT FOUND or idx > 10;

--             if 20  = (select (k->>'type')::int
--             from jsonb_array_elements(comm::jsonb) k
--             where (k->'state')::int = 0
--             order by (k->'priority')::int desc nulls first
--             limit 1) then
--                  raise notice 'rec > % %', counter, comm;
--
                 idx := idx + 1;
--             end if;


        end loop;
        close cur;
        --raise notice '%', counter;
    end loop ;
    return;
END;
$$;


--
-- Name: cc_member_communications; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_member_communications (
    id integer NOT NULL,
    member_id bigint NOT NULL,
    priority smallint DEFAULT 0 NOT NULL,
    number character varying(20) NOT NULL,
    last_originate_at bigint DEFAULT 0 NOT NULL,
    state smallint DEFAULT 0 NOT NULL,
    communication_id bigint NOT NULL,
    routing_ids integer[],
    description character varying(100) DEFAULT ''::character varying,
    last_hangup_at bigint DEFAULT 0 NOT NULL,
    attempts bigint DEFAULT 0 NOT NULL,
    last_hangup_cause character varying(50) DEFAULT ''::character varying NOT NULL,
    queue_id bigint
);
ALTER TABLE ONLY call_center.cc_member_communications ALTER COLUMN member_id SET STATISTICS 3000;
ALTER TABLE ONLY call_center.cc_member_communications ALTER COLUMN communication_id SET STATISTICS 1500;
ALTER TABLE ONLY call_center.cc_member_communications ALTER COLUMN last_hangup_at SET STATISTICS 3000;


--
-- Name: cc_test_pair(call_center.cc_member_communications); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_test_pair(call_center.cc_member_communications) RETURNS call_center.cc_pair_test
    LANGUAGE sql
    AS $_$
    select row($1.communication_id, $1.attempts)::cc_pair_test
$_$;


--
-- Name: cc_test_recursion(call_center.cc_sys_distribute_request, integer[], call_center.cc_sys_distribute_resource[], call_center.cc_sys_distribute_type[]); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_test_recursion(req call_center.cc_sys_distribute_request, agents integer[], resources call_center.cc_sys_distribute_resource[], types call_center.cc_sys_distribute_type[]) RETURNS SETOF record
    LANGUAGE c IMMUTABLE
    AS '$libdir/wbt_cc_sql.so', 'cc_test_recursion';


--
-- Name: cc_test_recursive(integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_test_recursive(arg1 integer) RETURNS integer
    LANGUAGE plpgsql
    AS $$
begin
    raise notice 'in %', arg1;
    return null;
end
$$;


--
-- Name: cc_test_time(interval); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_test_time(timezone_ interval) RETURNS boolean
    LANGUAGE plpgsql IMMUTABLE COST 10
    AS $$
BEGIN
  return false;
END;
$$;


--
-- Name: cc_test_time(jsonb); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_test_time(timezone_ jsonb) RETURNS bigint
    LANGUAGE plpgsql IMMUTABLE COST 10
    AS $$
BEGIN
  return 0;
END;
$$;


--
-- Name: cc_timezone_offset_id(integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_timezone_offset_id(integer) RETURNS smallint
    LANGUAGE sql IMMUTABLE
    AS $_$
    select z.offset_id
    from calendar_timezones z
    where z.id = $1;
$_$;


--
-- Name: cc_transfer_attempt_to_log(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_transfer_attempt_to_log() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  with rem as (
    delete from cc_member_attempt a
      where a.id = new.id
      returning *
  )
  insert
  into cc_member_attempt_log_day_tmp (id, queue_id, state, member_id, created_at, weight,
                              hangup_at, bridged_at, resource_id, leg_a_id, leg_b_id, node_id, result,
                              originate_at, answered_at, logs, agent_id, bucket_id)
  select id,
         queue_id,
         state,
         member_id,
         created_at,
         weight,
         hangup_at,
         bridged_at,
         resource_id,
         leg_a_id,
         leg_b_id,
         node_id,
         result,
         originate_at,
         answered_at,
         logs,
         agent_id,
         bucket_id
  from rem;

  return new;
END;
$$;


--
-- Name: cc_un_reserve_members_with_resources(character varying, character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_un_reserve_members_with_resources(node character varying, res character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    count integer;
BEGIN
    update cc_member_attempt
      set state  = -1,
          hangup_at = ((date_part('epoch'::text, now()) * (1000)::double precision))::bigint,
          result = res
    where hangup_at = 0 and node_id = node and state = 0;

    get diagnostics count = row_count;
    return count;
END;
$$;


--
-- Name: cc_unreserve_members_with_resources(character varying, character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_unreserve_members_with_resources(node character varying, res character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    count integer;
BEGIN
    update cc_member_attempt
      set state  = -1,
          hangup_at = ((date_part('epoch'::text, now()) * (1000)::double precision))::bigint,
          result = res
    where hangup_at = 0 and node_id = node and state = 0;

    get diagnostics count = row_count;
    return count;
END;
$$;


--
-- Name: cc_waiting_agents(bigint, integer, character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.cc_waiting_agents(team_id_ bigint, limit_ integer, strategy_ character varying) RETURNS TABLE(agent_id bigint, pos integer)
    LANGUAGE plpgsql IMMUTABLE COST 70
    AS $$
BEGIN
  return query select distinct on(a.agent_id) a.agent_id::bigint agent_id, (row_number() over (order by a.lvl, a.capacity desc))::int as pos
  from (
    select aq.agent_id, aq.lvl, aq.capacity
    from (

      select sa.agent_id, max(aq.lvl) lvl, max(sa.capacity) capacity
       from cc_agent_in_team aq
          inner join cc_skill_in_agent sa on sa.skill_id = aq.skill_id
       where aq.team_id = team_id_ and aq.skill_id notnull and sa.capacity between aq.min_capacity and aq.max_capacity
       group by sa.agent_id

      union distinct

      select aq.agent_id, lvl, 0
      from cc_agent_in_team aq
      where aq.team_id = team_id_ and aq.agent_id notnull
    ) aq
      inner join cc_agent a on a.id = aq.agent_id
    where a.state = 'waiting' and a.status = 'online' and not exists(
        select 1
        from cc_member_attempt at
        where at.agent_id = a.id
    )
    order by aq.lvl, aq.capacity desc--, random()
    limit limit_
  ) a;
END;
$$;


--
-- Name: f_add_task_for_call(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.f_add_task_for_call() RETURNS integer
    LANGUAGE plpgsql
    AS $$
declare
  i_cnt integer;
BEGIN
  if pg_try_advisory_lock(77515154878) != true
  then
    return -1;
  end if;

  insert into cc_member_attempt (communication_id, queue_id, member_id, weight)

    select
      m.cc_id as communication_id,
      q.id    as queue_id,
      m.id ,
      row_number() over (order by q.priority desc )
    from cc_queue_is_working q
      , lateral (select case when q.max_calls - q.active_calls <= 0
      then 0
                        else q.max_calls - q.active_calls end) as qq(need_calls)
      inner join lateral (
                 select
                   c.cc_id as cc_id,
                   m.id
                 from cc_member m
                   inner join lateral (
                              select
                                id as cc_id,
                                queue_id,
                                number,
                                communication_id
                              from cc_member_communications c
                              where c.member_id = m.id and c.state = 0 and last_calle_at <= q.sec_between_retries
                              order by last_calle_at, priority
                              limit 1
                              ) as c on true

                 where m.queue_id = q.id
                       and not exists(select 1
                                      from cc_member_attempt a
                                      where a.member_id = m.id and a.state = 0)
                       and pg_try_advisory_xact_lock('cc_member_communications' :: regclass :: oid :: integer, m.id)
                 order by m.priority asc
                 limit qq.need_calls
                 ) m on true
    order by q.priority desc;
  GET DIAGNOSTICS i_cnt = ROW_COUNT;

  RETURN i_cnt; -- true if INSERT
END
$$;


--
-- Name: f_jsonb_arr_lower(jsonb, text[]); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.f_jsonb_arr_lower(_j jsonb, VARIADIC _path text[]) RETURNS integer[]
    LANGUAGE sql IMMUTABLE
    AS $$SELECT array_agg(lower(elem #>> _path))::int[]
 FROM jsonb_array_elements(_j) elem$$;


--
-- Name: f_jsonb_arr_lower_dev_1(jsonb, text[]); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.f_jsonb_arr_lower_dev_1(_j jsonb, VARIADIC _path text[]) RETURNS text[]
    LANGUAGE sql IMMUTABLE
    AS $$SELECT array_agg(lower(elem #>> _path)) FROM jsonb_array_elements(_j) elem$$;


--
-- Name: flush_daily_counts_queue(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.flush_daily_counts_queue() RETURNS boolean
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN
  SET transaction ISOLATION LEVEL SERIALIZABLE;
  update cc_queue
  set priority = priority + 1 + (select 1
                                 from pg_sleep(10)
                                 limit 1)
  where cc_queue.id = 1;
  return true;
  commit;

  EXCEPTION --exception within loop
  WHEN OTHERS
    THEN
      begin

        RAISE INFO 'Error Name:%', SQLERRM;

        RAISE INFO 'Error State:%', SQLSTATE;
      end;

      return false;


END;
$$;


--
-- Name: flush_daily_counts_queue2(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.flush_daily_counts_queue2() RETURNS void
    LANGUAGE plpgsql
    AS $$
DECLARE
BEGIN

  SET transaction ISOLATION LEVEL SERIALIZABLE;

  update cc_queue
  set priority = priority + 1 + (select 1
                                 from pg_sleep(10)
                                 limit 1)
    where cc_queue.id = 1;


  EXCEPTION --exception within loop
  WHEN OTHERS
    THEN ROLLBACK;

  return;
  commit ;


END;
$$;


--
-- Name: fn_idx_test(record); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.fn_idx_test(r record) RETURNS integer
    LANGUAGE plpgsql
    AS $$
BEGIN
    return length(r.number) > 5;
END;
$$;


--
-- Name: fn_idx_test(text); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.fn_idx_test(r text) RETURNS integer
    LANGUAGE plpgsql IMMUTABLE
    AS $$
BEGIN
    return length(r) > 5;
END;
$$;


--
-- Name: get_agents_available_count_by_queue_id(integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.get_agents_available_count_by_queue_id(_queue_id integer) RETURNS SETOF integer
    LANGUAGE plpgsql
    AS $$
BEGIN
  return query select (count(distinct  COALESCE(aq.agent_id, csia.agent_id)))::integer as cnt
    from cc_agent_in_queue aq
       left join cc_skill cs on aq.skill_id = cs.id
       left join cc_skill_in_agent csia on cs.id = csia.skill_id
    where aq.queue_id = _queue_id
      --and COALESCE(aq.agent_id, csia.agent_id) notnull
      and  COALESCE(aq.agent_id, csia.agent_id) not in (
        select a.agent_id
        from cc_member_attempt a
        where a.state > 0 and not a.agent_id isnull
      );
END;
$$;


--
-- Name: get_agents_for_queue(bigint); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.get_agents_for_queue(_queue_id bigint) RETURNS TABLE(agent_id bigint, capacity integer, lvl integer)
    LANGUAGE sql
    AS $$
  select
        (COALESCE(aq.agent_id, csia.agent_id))::bigint as agent_id,
        (COALESCE(max(csia.capacity), 0))::int capacity,
        (max(aq.lvl))::int lvl
      from cc_agent_in_queue aq
        left join cc_skill_in_agent csia on aq.skill_id = csia.skill_id
      where aq.queue_id = _queue_id
      group by aq.queue_id, COALESCE(aq.agent_id, csia.agent_id);
$$;


--
-- Name: get_available_member_communication(integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.get_available_member_communication(integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    IF NOT pg_try_advisory_xact_lock(1) THEN
         RAISE NOTICE 'skipping queue flush';
         RETURN ;
    END IF;

    perform pg_sleep(10);

 END
$$;


--
-- Name: calendar; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.calendar (
    id integer NOT NULL,
    start_at bigint,
    end_at bigint,
    name character varying(20) NOT NULL,
    domain_id bigint NOT NULL,
    description character varying(200),
    timezone_id integer NOT NULL,
    created_at bigint NOT NULL,
    created_by bigint NOT NULL,
    updated_at bigint NOT NULL,
    updated_by bigint NOT NULL,
    excepts call_center.calendar_except_date[],
    accepts call_center.calendar_accept_time[]
);


--
-- Name: get_calendars(text, text, boolean, integer, integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.get_calendars(_filter text, _orderby text, _desc boolean, _limit integer, _offset integer) RETURNS SETOF call_center.calendar
    LANGUAGE plpgsql STRICT
    AS $_$
DECLARE
 _empty text := '';
BEGIN
   RETURN QUERY EXECUTE FORMAT('SELECT
     *
   from calendar where ($1 = $2 OR name ILIKE $1)
   order by %I %s
   limit ($3)
   offset ($4)', _orderby, case _desc when true then 'DESC' else 'ASC' end)
   USING _filter, _empty, _limit, _offset;
END
$_$;


--
-- Name: get_count_active_resources(integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.get_count_active_resources(integer) RETURNS SETOF integer
    LANGUAGE plpgsql
    AS $_$
BEGIN
  RETURN QUERY SELECT count(*) :: integer
               FROM cc_member_attempt a
               WHERE hangup_at = 0
                 AND a.resource_id = $1;
END
$_$;


--
-- Name: get_count_call(integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.get_count_call(integer) RETURNS SETOF integer
    LANGUAGE plpgsql
    AS $_$
BEGIN
  RETURN QUERY SELECT count(*) :: integer
               FROM cc_member_attempt
               WHERE hangup_at = 0 AND queue_id = $1; -- AND state > -1; TODO
  RETURN;
END
$_$;


--
-- Name: get_free_resources(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.get_free_resources() RETURNS TABLE(queue_id integer, resource_id integer, routing_ids integer[], call_count integer, sec_between_retries integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN QUERY
    with rr as (
      select q.id as q_id,
             q.sec_between_retries,
             cor.id resource_id,
             q.need_call as q_cnt,
             (case when cor.max_call_count - cor.reserved_count <= 0 then
               0 else cor.max_call_count - cor.reserved_count end) r_cnt,

             --todo absolute to calc priority!!!
             round(100.0 * (q.need_call + 1) / NULLIF(SUM(q.need_call + 1) OVER(partition by cor.id),0)) AS "ratio",
             array_agg(r.id order by r.priority desc, crir2.priority desc) as routing_ids
      from cc_queue_is_working q
             inner join cc_queue_routing r on q.id = r.queue_id
             inner join cc_resource_in_routing crir2 on r.id = crir2.routing_id
             inner join cc_queue_resources_is_working cor on crir2.resource_id = cor.id
      where q.need_call > 0 and q.type != 0
--           and exists (
--             select * from cc_member_communications cmc
--             where cmc.state = 0 and cmc.routing_ids && array[r.id])
      group by q.id, q.sec_between_retries, q.need_call, cor.id, cor.max_call_count, cor.reserved_count

    ), res_s as (
        select * ,
               sum(cnt) over (partition by rr.q_id order by ratio desc ) s
        from rr,
             lateral (select round(rr.ratio * rr.r_cnt / 100) ) resources_by_ration(cnt)
      ),
      res as (
        select *, coalesce(lag(s) over(partition by q_id order by ratio desc), 0) as lag_sum
        from res_s
      )
      select res.q_id::int, res.resource_id::int, res.routing_ids::int[],
             (case when s < q_cnt then res.cnt else res.q_cnt - res.lag_sum end)::int call_count,
             res.sec_between_retries
      from res
    where res.lag_sum < res.q_cnt;
END;
$$;


--
-- Name: cc_outbound_resource; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_outbound_resource (
    id integer NOT NULL,
    "limit" integer DEFAULT 0 NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    updated_at bigint NOT NULL,
    rps integer DEFAULT '-1'::integer,
    domain_id bigint NOT NULL,
    reserve boolean DEFAULT false,
    variables jsonb DEFAULT '{}'::jsonb NOT NULL,
    number character varying(20) NOT NULL,
    max_successively_errors integer DEFAULT 0,
    name character varying(50) NOT NULL,
    dial_string character varying(50) NOT NULL,
    last_error_id character varying(50),
    successively_errors smallint DEFAULT 0 NOT NULL,
    last_error_at bigint DEFAULT 0,
    created_at bigint NOT NULL,
    created_by bigint NOT NULL,
    updated_by bigint NOT NULL,
    error_ids character varying(50)[] DEFAULT '{}'::character varying[] NOT NULL,
    gateway_id bigint NOT NULL
);


--
-- Name: get_outbound_resources(text, text, boolean, integer, integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.get_outbound_resources(_filter text, _orderby text, _desc boolean, _limit integer, _offset integer) RETURNS SETOF call_center.cc_outbound_resource
    LANGUAGE plpgsql STRICT
    AS $_$
DECLARE
 _empty text := '';
BEGIN
   RETURN QUERY EXECUTE FORMAT('SELECT
     *
   from cc_outbound_resource where ($1 = $2 OR name ILIKE $1)
   order by %I %s
   limit ($3)
   offset ($4)', _orderby, case _desc when true then 'DESC' else 'ASC' end)
   USING _filter, _empty, _limit, _offset;
END
$_$;


--
-- Name: heap_page(text, integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.heap_page(relname text, pageno integer) RETURNS TABLE(ctid tid, state text, xmin text, xmax text, hhu text, hot text, t_ctid tid)
    LANGUAGE sql
    AS $$
SELECT (pageno,lp)::text::tid AS ctid,
       CASE lp_flags
         WHEN 0 THEN 'unused'
         WHEN 1 THEN 'normal'
         WHEN 2 THEN 'redirect to '||lp_off
         WHEN 3 THEN 'dead'
       END AS state,
       t_xmin || CASE
         WHEN (t_infomask & 256) > 0 THEN ' (c)'
         WHEN (t_infomask & 512) > 0 THEN ' (a)'
         ELSE ''
       END AS xmin,
       t_xmax || CASE
         WHEN (t_infomask & 1024) > 0 THEN ' (c)'
         WHEN (t_infomask & 2048) > 0 THEN ' (a)'
         ELSE ''
       END AS xmax,
       CASE WHEN (t_infomask2 & 16384) > 0 THEN 't' END AS hhu,
       CASE WHEN (t_infomask2 & 32768) > 0 THEN 't' END AS hot,
       t_ctid
FROM heap_page_items(get_raw_page(relname,pageno))
ORDER BY lp;
$$;


--
-- Name: index_page(text, integer); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.index_page(relname text, pageno integer) RETURNS TABLE(itemoffset smallint, ctid tid)
    LANGUAGE sql
    AS $$
SELECT itemoffset,
       ctid
FROM bt_page_items(relname,pageno);
$$;


--
-- Name: reserve_members_with_resources(character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.reserve_members_with_resources(node_id character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    rec RECORD;
    count integer;
    v_cnt integer;
BEGIN
    count = 0;


    if NOT pg_try_advisory_xact_lock(13213211) then
      raise notice 'LOCK';
      return 0;
    end if;


    FOR rec IN SELECT r.*, q.dnc_list_id, cc_queue_timing_communication_ids(r.queue_id) as type_ids
      from get_free_resources() r
        inner join cc_queue q on q.id = r.queue_id
      where r.call_count > 0
      group by r.queue_id, resource_id, routing_ids, call_count, r.sec_between_retries, q.id
      order by q.priority desc
    LOOP
      insert into cc_member_attempt(result, communication_id, queue_id, member_id, resource_id, routing_id, node_id)
      select
              case when lc.number is null then null else 'OUTGOING_CALL_BARRED' end,
             t.communication_id,
             rec.queue_id,
             t.member_id,
             rec.resource_id,
             t.routing_id,
             node_id
      from (
        select
               c.*,
              (c.routing_ids & rec.routing_ids)[1] as routing_id,
               row_number() over (partition by c.member_id order by c.last_hangup_at, c.priority desc) d
        from (
          select c.id as communication_id, c.number as communication_number, c.routing_ids, c.last_hangup_at, c.priority, c.member_id
          from cc_member cm
           cross join cc_member_communications c
              where
                not exists(
                  select *
                  from cc_member_attempt a
                  where a.member_id = cm.id and a.state > 0
                )
                and cm.last_hangup_at < ((date_part('epoch'::text, now()) * (1000)::double precision))::bigint
                                          - (rec.sec_between_retries * 1000)
                and cm.stop_at = 0
                and cm.queue_id = rec.queue_id

                and c.state = 0
                and ( (c.communication_id = any(rec.type_ids) ) or c.communication_id isnull )
                and c.member_id = cm.id
                and c.routing_ids && rec.routing_ids

            order by cm.priority desc
          limit rec.call_count * 3 --todo 3 is avg communication count
        ) c
      ) t
      left join cc_list_communications lc on lc.list_id = rec.dnc_list_id and lc.number = t.communication_number
      where t.d =1
      limit rec.call_count;

      get diagnostics v_cnt = row_count;
      count = count + v_cnt;
    END LOOP;
    return count;
END;
$$;


--
-- Name: test_sp(integer); Type: PROCEDURE; Schema: call_center; Owner: -
--

CREATE PROCEDURE call_center.test_sp(INOUT cnt integer)
    LANGUAGE plpgsql
    AS $$
    begin
        if NOT pg_try_advisory_xact_lock(13213211) then
        raise notice 'LOCK';
        return;
    end if;

    CREATE temp table cc_distribute_member_tmp ON COMMIT DROP as
    with dis as (
        select q.domain_id,
               row_number() over (partition by q.domain_id order by q.priority desc, csdqbs.bucket_id nulls last) pos,
               q.id,
               q.team_id,
               q.calendar_id,
               q.type,
               csdqbs.bucket_id,
               case
                   when q.type = 1 then (select count(*) --fixme for test
                                         from cc_member_attempt a
                                         where a.queue_id = q.id
                                           and a.state = 3
                                           and a.agent_id isnull)
                   else csdqbs.member_waiting end                                                                 member_waiting
        from cc_queue q
                 left join cc_sys_distribute_queue_bucket_seg csdqbs on q.id = csdqbs.queue_id and q.type > 1
        where q.enabled
          and (q.type < 2 or csdqbs.member_waiting > 0)
    )
            ,
         res as (
             select dis.*, r.resources, r.types, r.ran
             from dis
                      left join cc_sys_queue_distribute_resources r on r.queue_id = dis.id and dis.type != 1
             where dis.member_waiting > 0
               and (dis.type = 1 or r.queue_id notnull)
         ),
         ag as (
             select t.*, cc_team_agents_by_bucket(t.team_id::int, t.bucket_id::int) agents
             from (
                      select res.team_id, res.bucket_id
                      from res
                      where res.team_id notnull
                        and res.type != 2
                      group by res.team_id, res.bucket_id
                  ) t
         )
    select x.*, t.bucket_id, t.id as queue_id
    from (
             select res.*,
                    ag.agents,
                    row (res.id, res.bucket_id, res.type, 499976700000000, res.ran, 100, 100, 2)::cc_sys_distribute_request req
             from res
                      left join ag on res.type != 2 and res.team_id = ag.team_id and
                                      coalesce(res.bucket_id, 0) = coalesce(ag.bucket_id, 0)
             where (res.type = 2 or ag.agents notnull) --and res.id = 2 and ag.bucket_id isnull
             order by res.pos
         ) t,
         lateral cc_test_recursion(
                 t.req,
                 t.agents,
                 t.resources,
                 t.types
             ) x (id bigint, destination_idx int4, resource_id int4, agent_id int4);

    cnt = (select count(*) from cc_distribute_member_tmp);

    insert into cc_member_attempt(member_id, queue_id, resource_id, agent_id, bucket_id, destination)
    select t.id, t.queue_id, t.resource_id, t.agent_id, t.bucket_id, (cm.communications->t.destination_idx - 1) as destination
    from cc_distribute_member_tmp t
        inner join cc_member cm on t.id = cm.id;
    end;
$$;


--
-- Name: tg_fill_member_communication_resource(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.tg_fill_member_communication_resource() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN

  if (tg_op = 'UPDATE' or tg_op = 'DELETE') then

    update cc_member_communications c
        set routing_ids = c.routing_ids - ARRAY [old.id]
    from cc_member_communications t
    where c.id = t.id and t.queue_id = old.queue_id and t.routing_ids @> array[old.id];
  end if;

--  raise notice 'end delete';
  if (tg_op = 'UPDATE' or tg_op = 'INSERT') then

      update cc_member_communications c
            set routing_ids = c.routing_ids | array[new.id]
      from cc_member_communications t
      where t.id = c.id and t.queue_id = new.queue_id and t.number ~ new.pattern;
  end if;

--  raise notice 'end add';
  RETURN new;
END;
$$;


--
-- Name: tg_get_member_communication_resource(); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.tg_get_member_communication_resource() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  --TODO change to STATEMENT !!!
  new.routing_ids = ARRAY(select r.id
  from cc_queue_routing r
  where r.queue_id = (select queue_id from cc_member m where m.id = new.member_id)
        and new.number ~ r.pattern
  );
 --raise notice 'TG "%" % -> %', new.routing_ids, new.member_id, new.number;

 RETURN new;
END;
$$;


--
-- Name: un_reserve_members_with_resources(character varying, character varying); Type: FUNCTION; Schema: call_center; Owner: -
--

CREATE FUNCTION call_center.un_reserve_members_with_resources(node character varying, res character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    count integer;
BEGIN
    update cc_member_attempt
      set state  = -1,
          hangup_at = ((date_part('epoch'::text, now()) * (1000)::double precision))::bigint,
          result = res
    where hangup_at = 0 and node_id = node and state = 0;

    get diagnostics count = row_count;
    return count;
END;
$$;


--
-- Name: current_roles(integer, integer); Type: FUNCTION; Schema: directory; Owner: -
--

CREATE FUNCTION directory.current_roles(domain_id integer, user_id integer, OUT roles integer[]) RETURNS integer[]
    LANGUAGE plpgsql STABLE STRICT COST 10
    AS $$
-- DECLARE
--     domain_id int = 50;
--     user_id int = 1510089;
BEGIN
    raise notice 'directory.current_roles(dc=%, id=%);', domain_id, user_id;
    select array_agg(sub.id) -- order by sub.id)
    from (
      select rol.id
      from wbt_auth rol
      where (rol.dc, rol.id) = (domain_id, user_id)
      union distinct
      select sup.role_id
      from directory.wbt_auth_member sup
      where (sup.dc, sup.member_id) = (domain_id, user_id)
    ) sub
    having count(id) > 0 --;
    into current_roles.roles;

    if not FOUND then
        raise exception invalid_authorization_specification using message = 'auth: authorization role does not exists';
    end if;

    return; -- domain_id, roles;

END;
$$;


--
-- Name: get_roles(integer, integer); Type: FUNCTION; Schema: directory; Owner: -
--

CREATE FUNCTION directory.get_roles(domain_id integer, user_id integer) RETURNS integer[]
    LANGUAGE plpgsql STABLE
    AS $$
  declare
    res integer[];
BEGIN
    select array_agg(distinct r.id order by r.id) from (
      select id
      from directory.wbt_auth
      where (dc, id) = (domain_id, user_id)
      union distinct
      select role_id
      from directory.wbt_auth_member
      where (dc, member_id) = (domain_id, user_id)
    ) r into res;

    if res isnull then
      raise exception 'not found roles';
    end if;

    raise notice 'roles';

    return res;

END;
$$;


--
-- Name: rbac_permission(integer, integer[], smallint, character varying); Type: FUNCTION; Schema: directory; Owner: -
--

CREATE FUNCTION directory.rbac_permission(domain_id integer, group_ids integer[], ac smallint, class_name character varying) RETURNS boolean
    LANGUAGE plpgsql IMMUTABLE STRICT
    AS $$
  declare res boolean = null;
BEGIN
    /*
    select oc.rbac
    from wbt_class oc
    where (oc.dc, oc.name) = (domain_id, class_name)
      and (
        (oc.obac or oc.rbac) -- access control disabled
        and
        exists( -- [OBAC]: check mandatory(CLASS) operation(:access) allowed
               select *
               from wbt_class_acl dac
                    -- join cte_roles sub on (dac.subject, dac.dc) = (sub.id, :dc)
               where dac.object = oc.id
                 and dac.access & ac = ac
                 and dac.subject = any (group_ids)
                 and dac.dc = domain_id
             )
      )
    limit 1
    into res;
    --return res;*/
      raise notice 'ddd';

    return true;
END;
$$;


--
-- Name: rbac_permission_test(integer, integer[], smallint, character varying); Type: FUNCTION; Schema: directory; Owner: -
--

CREATE FUNCTION directory.rbac_permission_test(domain_id integer, group_ids integer[], ac smallint, class_name character varying) RETURNS boolean
    LANGUAGE plpgsql STABLE STRICT COST 4900
    AS $$
BEGIN
  return  rbac_permission(domain_id, group_ids, ac, class_name);
end;
$$;


--
-- Name: rls_enabled(integer, integer[], smallint, character varying); Type: FUNCTION; Schema: directory; Owner: -
--

CREATE FUNCTION directory.rls_enabled(dc integer, roles integer[], acc smallint, class character varying) RETURNS boolean
    LANGUAGE plpgsql STABLE STRICT COST 20
    AS $$
DECLARE
    -- pdc int;
    -- sub int[];
    rls boolean;
BEGIN

    -- select p.dc, p.roles from current_roles() p into pdc, sub;

    raise notice 'directory.rls_enabled(dc=%, class=%, access=%);', dc, class, acc;


    -- explain analyse
    select oc.rbac -- returns: whether [R]ecord[b]ased[A]ccess[C]ontrol is enables for class
     from wbt_class oc
    where (oc.dc = rls_enabled.dc and lower(oc.name) = lower(class))
      and
          ((not(oc.obac) and not(oc.rbac)) -- access control disabled
              or
            exists( -- [OBAC]: check mandatory(CLASS) operation(:access) allowed
               select
                 from wbt_class_acl dac
                where dac.object = oc.id
                  and dac.subject = any(roles)
                  and dac.access & acc = acc
                  -- and dac.dc = oc.dc
          ))
    into rls;

    -- 1012000 -- NO class access
    -- 1012001 -- HAS class access

    if not FOUND then
        raise exception insufficient_privilege using message = 'objclass: insufficient privilege to perform operation';
    end if;

    return rls;

END;
$$;


--
-- Name: test(); Type: FUNCTION; Schema: directory; Owner: -
--

CREATE FUNCTION directory.test() RETURNS boolean
    LANGUAGE plpgsql STABLE
    AS $$
BEGIN
  return true;
END;
$$;


--
-- Name: wbt_access_token(); Type: FUNCTION; Schema: permissions; Owner: -
--

CREATE FUNCTION permissions.wbt_access_token() RETURNS text
    LANGUAGE plpgsql STABLE STRICT COST 1 PARALLEL SAFE
    AS $$
    BEGIN
        -- PostgreSQL (v.9.6+) current_setting(setting_name, missing_ok)
    	RETURN NULLIF(current_setting('webitel.session.access','t'),'')::TEXT;
    EXCEPTION
        WHEN OTHERS THEN -- UNDEFINED_OBJECT OR INVALID_TEXT_REPRESENTATION
            RAISE INVALID_ROLE_SPECIFICATION -- SQLSTATE '0P000' -- Class 0P — Invalid Role Specification
            USING MESSAGE = 'Unauthorized', HINT = 'DC: Please provide authorization with wbt_session_bind(access_token) function first';
    END
$$;


--
-- Name: wbt_acl_explode(permissions.acrule[]); Type: FUNCTION; Schema: permissions; Owner: -
--

CREATE FUNCTION permissions.wbt_acl_explode(permissions.acrule[], OUT grantor integer, OUT grantee integer, OUT privilege smallint, OUT grantable smallint) RETURNS SETOF record
    LANGUAGE sql STABLE STRICT ROWS 16
    AS $_$

    SELECT grantor,
           grantee,
          (granted & 15::int2),       -- grantable::mask [ ---- ---- ---- crud ]
         ((granted >> 4) & 15::int2)  -- privilege::mask [ ---- ---- crud ---- ]
    FROM  (SELECT (UNNEST($1)).*) acl

$_$;


--
-- Name: wbt_acl_explore(permissions.acrule[]); Type: FUNCTION; Schema: permissions; Owner: -
--

CREATE FUNCTION permissions.wbt_acl_explore(permissions.acrule[], OUT grantor integer, OUT grantee integer, OUT privilege_type "char", OUT is_grantable boolean) RETURNS SETOF record
    LANGUAGE sql STABLE STRICT ROWS 64
    AS $_$

    SELECT  grantor, grantee, act.code, (aci.grantable & act.mask) = act.mask
    FROM    permissions.wbt_acl_explode($1) aci,
    /*(
        SELECT (UNNEST(acl)).*
    )
    aci(grantor, grantee, privilege, grantable ),
    */
    (
        VALUES -- enum::flags
        ( 1::int2, 'd'::"char"), -- DELETE [d]elete
        ( 2,       'u' ),        -- MODIFY [w]rite
        ( 4,       'r' ),        -- SEARCH [r]ead
        ( 8,       'c' )         -- CREATE [a]ppend
    )
    act(mask, code)
    WHERE
    (aci.privilege & act.mask) = act.mask
    

$_$;


--
-- Name: wbt_has_privilege(permissions.acrule[], integer, integer[], smallint); Type: FUNCTION; Schema: permissions; Owner: -
--

CREATE FUNCTION permissions.wbt_has_privilege(permissions.acrule[], dc integer, roles integer[], grants smallint) RETURNS boolean
    LANGUAGE plpgsql STABLE STRICT
    AS $_$

DECLARE
	granted int2 = 0;
	prule permissions.acrule;
BEGIN
    FOREACH prule IN ARRAY $1 -- SLICE 1 
    LOOP
     -- операторы
        -- IF wbt_has_role(realm, authid, prule.grantee) THEN
        IF prule.grantee = any(roles) THEN
        	-- RAISE NOTICE '%::role ( % | % & % ) = %', prule.grantee, granted, (prule.granted & 15::int2), grants, granted | ((prule.granted & 15::int2) & grants); --::bit(8);
        	granted = granted | ((prule.granted & 15::int2) & grants);
            if granted = grants THEN
            	-- RAISE NOTICE 'GRANTED'; --::bit(8);
        		RETURN true; -- EXIT ablock;  -- выход из блока BEGIN
            END IF;
    	END IF;
    END LOOP;
    -- RAISE NOTICE 'DENIED'; --::bit(8);
    RETURN false;
END;

$_$;


--
-- Name: wbt_session_bind(text, boolean); Type: FUNCTION; Schema: permissions; Owner: -
--

CREATE FUNCTION permissions.wbt_session_bind(access_token text, local boolean DEFAULT false) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    PERFORM set_config('webitel.session.access', access_token, local);
END
$$;


--
-- Name: wbt_session_role(); Type: FUNCTION; Schema: permissions; Owner: -
--

CREATE FUNCTION permissions.wbt_session_role(OUT dc integer, OUT id integer) RETURNS record
    LANGUAGE plpgsql STABLE STRICT SECURITY DEFINER
    AS $_$
DECLARE
	-- __user__ users;
BEGIN
	-- RAISE NOTICE 'permissions.wbt_session_role()';
	BEGIN 
        SELECT s.domain_id, coalesce(s.user_id, s.domain_id)
        	INTO STRICT $1, $2
        FROM permissions.wbt_session AS s
        WHERE s.access = wbt_access_token();
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE INVALID_ROLE_SPECIFICATION -- SQLSTATE '0P000' -- Class 0P — Invalid Role Specification
            	USING MESSAGE = 'Unauthorized', HINT = 'DC: invalid access token';
        WHEN TOO_MANY_ROWS THEN
            RAISE EXCEPTION 'DC: Session authorization conflict';
    END;
    
    RETURN;
END
$_$;


--
-- Name: wbt_session_roles(); Type: FUNCTION; Schema: permissions; Owner: -
--

CREATE FUNCTION permissions.wbt_session_roles(OUT dc integer, OUT roles integer[]) RETURNS record
    LANGUAGE plpgsql STABLE STRICT SECURITY DEFINER
    AS $_$
DECLARE
	-- __user__ users;
BEGIN
	-- RAISE NOTICE 'permissions.wbt_session_roles()';
	BEGIN
    	with recursive cte_roles(dc, id) as
        (
        	select u.dc, u.id
            from permissions.wbt_session_role() u
            union
            select m.dc, m.role_id
        	from permissions.wbt_auth_member m, cte_roles u
            where (m.dc, m.member_id) = (u.dc, u.id)
        )
        select cte_roles.dc, array_agg(cte_roles.id)
        	into strict $1, $2
        from cte_roles
        group by cte_roles.dc;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RAISE INVALID_ROLE_SPECIFICATION -- SQLSTATE '0P000' -- Class 0P — Invalid Role Specification
            	USING MESSAGE = 'Unauthorized', HINT = 'DC: invalid access token';
    END;
    
    RETURN;
END
$_$;


--
-- Name: callflow_default_check_destination_number(character varying); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.callflow_default_check_destination_number(reg_txt character varying) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
BEGIN
  PERFORM regexp_matches('', reg_txt);
  RETURN reg_txt != '';
END;
$$;


--
-- Name: callflow_public_check_duplicate_destination(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.callflow_public_check_duplicate_destination() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
  domain_b VARCHAR(75);
begin
    SELECT domain
    INTO domain_b
    FROM callflow_public WHERE destination_number && NEW.destination_number AND disabled IS NOT TRUE AND id != NEW.id
    LIMIT  1;

    if not domain_b is NULL AND NEW.disabled IS NOT TRUE THEN
      RAISE 'Duplicate destination number: % at domain: %', NEW.destination_number, domain_b  USING ERRCODE = '23505';
    END IF;

    return new;
end
$$;


--
-- Name: cc_available_agents_by_strategy(bigint, character varying, integer, bigint[], bigint[]); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.cc_available_agents_by_strategy(_queue_id bigint, _strategy character varying, _limit integer, _last_agents bigint[], _except_agents bigint[]) RETURNS SETOF integer[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  return query select ARRAY(
    select a.id
    from cc_agent a
    inner join (
      select
       COALESCE(aq.agent_id, csia.agent_id) as agent_id,
       COALESCE(max(csia.capacity), 0) max_of_capacity,
       max(aq.lvl) max_of_lvl
      from cc_agent_in_queue aq
        left join cc_skill_in_agent csia on aq.skill_id = csia.skill_id
      where aq.queue_id = _queue_id and not COALESCE(aq.agent_id, csia.agent_id) isnull
      group by COALESCE(aq.agent_id, csia.agent_id)
      --order by max(aq.lvl) desc, COALESCE(max(csia.capacity), 0) desc
    ) t on t.agent_id = a.id
    inner join cc_agent_activity ac on t.agent_id = ac.agent_id
    where a.status = 'online' and a.state = 'waiting'
      and not exists(select 1 from cc_member_attempt at where at.state > 0 and at.agent_id = a.id)
      and not (_except_agents::bigint[] && array[a.id]::bigint[])
    order by
     --a.id,
     case when _last_agents && array[a.id::bigint] then 1 else null end asc nulls last,
     t.max_of_lvl desc, t.max_of_capacity desc,
     ac.last_offering_call_at asc
    limit _limit

  );
END;
$$;


--
-- Name: cc_distribute_agent_to_attempt(character varying); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.cc_distribute_agent_to_attempt(_node_id character varying) RETURNS SETOF public.cc_agent_in_attempt
    LANGUAGE plpgsql
    AS $$
declare
  rec RECORD;
  agents bigint[];
  reserved_agents bigint[] := array[0];
  at cc_agent_in_attempt;
  counter int := 0;
BEGIN
FOR rec IN select cq.id::bigint queue_id, cq.strategy::varchar(50), count(*)::int as cnt,
                     array_agg((a.id, la.agent_id)::cc_agent_in_attempt order by a.created_at asc, a.weight desc )::cc_agent_in_attempt[] ids, array_agg(distinct la.agent_id) filter ( where not la.agent_id isnull )  last_agents
           from cc_member_attempt a
            inner join cc_queue cq on a.queue_id = cq.id
            left join lateral (
             select a1.agent_id
             from cc_member_attempt a1
             where a1.member_id = a.member_id and a1.created_at < a.created_at
             order by a1.created_at desc
             limit 1
           ) la on true
           where a.hangup_at = 0 and a.agent_id isnull and a.state = 3
           group by cq.id
           order by cq.priority desc
   LOOP

    select cc_available_agents_by_strategy(rec.queue_id, rec.strategy, rec.cnt, rec.last_agents, reserved_agents)
    into agents;

    counter := 0;
    foreach at IN ARRAY rec.ids
    LOOP
      if array_length(agents, 1) isnull then
        exit;
      end if;

      counter := counter + 1;

      if at.agent_id isnull OR not (agents && array[at.agent_id]) then
        at.agent_id = agents[array_upper(agents, 1)];
      end if;

      select agents::int[] - at.agent_id::int, reserved_agents::int[] || at.agent_id::int
      into agents, reserved_agents;

      return next at;
    END LOOP;
   END LOOP;

   --raise notice '%', reserved_agents;

  return;
END;
$$;


--
-- Name: cc_queue_timing_communication_ids(bigint); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.cc_queue_timing_communication_ids(_queue_id bigint) RETURNS integer[]
    LANGUAGE plpgsql
    AS $$
BEGIN
  return array(select distinct cqt.communication_id
from cc_queue q
  inner join calendar c on q.calendar_id = c.id
  inner join cc_queue_timing cqt on q.id = cqt.queue_id
where q.id = _queue_id
  and (to_char(current_timestamp AT TIME ZONE c.timezone, 'SSSS') :: int / 60)
    between cqt.start_time_of_day and cqt.end_time_of_day);
END;
$$;


--
-- Name: cc_reserve_members_with_resources(character varying); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.cc_reserve_members_with_resources(node_id character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    rec RECORD;
    count integer;
    v_cnt integer;
BEGIN
    count = 0;


    if NOT pg_try_advisory_xact_lock(13213211) then
      raise notice 'LOCK';
      return 0;
    end if;


    FOR rec IN SELECT r.*, q.dnc_list_id, cc_queue_timing_communication_ids(r.queue_id) as type_ids
      from get_free_resources() r
        inner join cc_queue q on q.id = r.queue_id
      where r.call_count > 0
      group by r.queue_id, resource_id, routing_ids, call_count, r.sec_between_retries, q.id
      order by q.priority desc
    LOOP
      insert into cc_member_attempt(result, communication_id, queue_id, member_id, resource_id, routing_id, node_id)
      select
              case when lc.number is null then null else 'OUTGOING_CALL_BARRED' end,
             t.communication_id,
             rec.queue_id,
             t.member_id,
             rec.resource_id,
             t.routing_id,
             node_id
      from (
        select
               c.*,
              (c.routing_ids & rec.routing_ids)[1] as routing_id,
               row_number() over (partition by c.member_id order by c.last_hangup_at, c.priority desc) d
        from (
          select c.id as communication_id, c.number as communication_number, c.routing_ids, c.last_hangup_at, c.priority, c.member_id
          from cc_member cm
           cross join cc_member_communications c
              where
                not exists(
                  select *
                  from cc_member_attempt a
                  where a.member_id = cm.id and a.state > 0
                )
                and cm.last_hangup_at < ((date_part('epoch'::text, now()) * (1000)::double precision))::bigint
                                          - (rec.sec_between_retries * 1000)
                and cm.stop_at = 0
                and cm.queue_id = rec.queue_id

                and c.state = 0
                and ( (c.communication_id = any(rec.type_ids) ) or c.communication_id isnull )
                and c.member_id = cm.id
                and c.routing_ids && rec.routing_ids

            order by cm.priority desc
          limit rec.call_count * 3 --todo 3 is avg communication count
        ) c
      ) t
      left join cc_list_communications lc on lc.list_id = rec.dnc_list_id and lc.number = t.communication_number
      where t.d =1
      limit rec.call_count;

      get diagnostics v_cnt = row_count;
      count = count + v_cnt;
    END LOOP;
    return count;
END;
$$;


--
-- Name: cc_set_active_members(character varying); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.cc_set_active_members(node character varying) RETURNS TABLE(id bigint, member_id bigint, communication_id bigint, result character varying, queue_id integer, queue_updated_at bigint, resource_id integer, resource_updated_at bigint, routing_id integer, routing_pattern character varying, destination character varying, description character varying, variables jsonb, name character varying)
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN QUERY
    update cc_member_attempt a
      set state = 1
        ,node_id = node
      from (
        select
               c.id,
               cq.updated_at as queue_updated_at,
               r.updated_at as resource_updated_at,
               qr.id as routing_id,
               qr.pattern as routing_pattern,
               cmc.number as destination,
               cmc.description as description,
               cm.variables as variables,
               cm.name as member_name
        from cc_member_attempt c
               inner join cc_member cm on c.member_id = cm.id
               inner join cc_member_communications cmc on cmc.id = c.communication_id
               inner join cc_queue cq on cm.queue_id = cq.id
               left join cc_queue_routing qr on qr.id = c.routing_id
               left join cc_outbound_resource r on r.id = c.resource_id
        where c.state = 0 and c.hangup_at = 0
        order by cq.priority desc, cm.priority desc
        for update of c
      ) c
      where a.id = c.id
      returning
        a.id::bigint as id,
        a.member_id::bigint as member_id,
        a.communication_id::bigint as communication_id,
        a.result as result,
        a.queue_id::int as qeueue_id,
        c.queue_updated_at::bigint as queue_updated_at,
        a.resource_id::int as resource_id,
        c.resource_updated_at::bigint as resource_updated_at,
        c.routing_id,
        c.routing_pattern,
        c.destination,
        c.description,
        c.variables,
        c.member_name;
END;
$$;


--
-- Name: cc_set_agent_change_status(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.cc_set_agent_change_status() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  insert into cc_agent_state_history (agent_id, joined_at, state)
  values (new.id, now(), new.state);
  RETURN new;
END;
$$;


--
-- Name: cc_unreserve_members_with_resources(character varying, character varying); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.cc_unreserve_members_with_resources(node character varying, res character varying) RETURNS integer
    LANGUAGE plpgsql
    AS $$
DECLARE
    count integer;
BEGIN
    update cc_member_attempt
      set state  = -1,
          hangup_at = ((date_part('epoch'::text, now()) * (1000)::double precision))::bigint,
          result = res
    where hangup_at = 0 and node_id = node and state = 0;

    get diagnostics count = row_count;
    return count;
END;
$$;


--
-- Name: cdr_a_instead_insert(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.cdr_a_instead_insert() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   RETURN new;
   EXCEPTION WHEN others THEN  -- or be more specific
    raise notice 'error save cdr %', new.uuid;
    RETURN NULL;   -- cancel row
END
$$;


--
-- Name: cdr_b_instead_insert(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.cdr_b_instead_insert() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
   RETURN new;
   EXCEPTION WHEN others THEN  -- or be more specific
    raise notice 'error save cdr %', new.uuid;
    RETURN NULL;   -- cancel row
END
$$;


--
-- Name: concat(text, text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.concat(text, text) RETURNS text
    LANGUAGE sql
    AS $_$SELECT $1 || $2;$_$;


--
-- Name: create_constraint_if_not_exists(regclass, text, text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.create_constraint_if_not_exists(rel_table regclass, constraint_name text, constraint_sql text) RETURNS void
    LANGUAGE plpgsql
    AS $$
BEGIN
    -- -- Look for our constraint -- exists
    -- if not exists (select true 
    --                 from information_schema.constraint_column_usage
    --                 where table_name = t_name and constraint_name = c_name) then
    --     execute 'ALTER TABLE ' || t_name || ' ADD CONSTRAINT ' || c_name || ' ' || constraint_sql;
    -- end if;

    -- Because of reference constraint table_name refer to other side table.
    -- Look for our constraint -- exists
    IF NOT EXISTS
    (
        SELECT TRUE 
            FROM information_schema.constraint_column_usage
            WHERE constraint_column_usage.constraint_name = create_constraint_if_not_exists.constraint_name
    ) THEN
        EXECUTE 'ALTER TABLE '|| rel_table::text ||' ADD CONSTRAINT '|| constraint_name ||' '|| constraint_sql;
    END IF;
END
$$;


--
-- Name: create_trigger_if_not_exists(text, text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.create_trigger_if_not_exists(trigger_name text, definition_sql text) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
    -- Look for our trigger
    IF NOT EXISTS
    (
        SELECT TRUE 
            FROM information_schema.triggers
            WHERE triggers.trigger_name = create_trigger_if_not_exists.trigger_name
    ) THEN
        -- and triggers.event_object_table = event_table::regclass::text) then
        EXECUTE 'CREATE TRIGGER '|| trigger_name ||' '|| definition_sql;
    END IF;
END
$$;


--
-- Name: get_agents_available_count_by_queue_id(integer); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.get_agents_available_count_by_queue_id(_queue_id integer) RETURNS SETOF integer
    LANGUAGE plpgsql
    AS $$
BEGIN
  return query select count(distinct qa.agent_id)::integer as cnt
               from (
                      select aq.queue_id, COALESCE(aq.agent_id, csia.agent_id) as agent_id
                      from cc_agent_in_queue aq
                             left join cc_skils cs on aq.skill_id = cs.id
                             left join cc_skill_in_agent csia on cs.id = csia.skill_id
                      where aq.queue_id = _queue_id
                      group by aq.queue_id, aq.agent_id, csia.agent_id
                    ) as qa

               where qa.queue_id = _queue_id
                 and not qa.agent_id is null
                 and not exists(select * from cc_member_attempt a where a.hangup_at = 0 and a.agent_id = qa.agent_id);
END;
$$;


--
-- Name: get_count_active_resources(integer); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.get_count_active_resources(integer) RETURNS SETOF integer
    LANGUAGE plpgsql
    AS $_$
BEGIN
  RETURN QUERY SELECT count(*) :: integer
               FROM cc_member_attempt a
               WHERE hangup_at = 0
                 AND a.resource_id = $1;
END
$_$;


--
-- Name: get_count_call(integer); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.get_count_call(integer) RETURNS SETOF integer
    LANGUAGE plpgsql
    AS $_$
BEGIN
  RETURN QUERY SELECT count(*) :: integer
               FROM cc_member_attempt
               WHERE hangup_at = 0 AND queue_id = $1 AND state > -1;
  RETURN;
END
$_$;


--
-- Name: get_free_resources(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.get_free_resources() RETURNS TABLE(queue_id integer, resource_id integer, routing_ids integer[], call_count integer, sec_between_retries integer)
    LANGUAGE plpgsql
    AS $$
BEGIN
  RETURN QUERY
    with rr as (
      select q.id as q_id,
             q.sec_between_retries,
             cor.id resource_id,
             q.need_call as q_cnt,
             (case when cor.max_call_count - cor.reserved_count <= 0 then
               0 else cor.max_call_count - cor.reserved_count end) r_cnt,

             --todo absolute to calc priority!!!
             round(100.0 * (q.need_call + 1) / NULLIF(SUM(q.need_call + 1) OVER(partition by cor.id),0)) AS "ratio",
              array_agg(r.id order by r.priority desc, crir2.priority desc) as routing_ids
      from cc_queue_is_working q
             inner join cc_queue_routing r on q.id = r.queue_id
             inner join cc_resource_in_routing crir2 on r.id = crir2.routing_id
             inner join cc_queue_resources_is_working cor on crir2.resource_id = cor.id
      where q.need_call > 0
--           and exists ( --todo big table... не можуть пересікитися в чергах
--             select * from cc_member_communications cmc
--             where cmc.state = 0 and cmc.routing_ids && array[r.id])
      group by q.id, q.sec_between_retries, q.need_call, cor.id, cor.max_call_count, cor.reserved_count

    ), res_s as (
        select * ,
               sum(cnt) over (partition by rr.q_id order by ratio desc ) s
        from rr,
             lateral (select round(rr.ratio * rr.r_cnt / 100) ) resources_by_ration(cnt)
      ),
      res as (
        select *, coalesce(lag(s) over(partition by q_id order by ratio desc), 0) as lag_sum
        from res_s
      )
      select res.q_id::int, res.resource_id::int, res.routing_ids::int[],
             (case when s < q_cnt then res.cnt else res.q_cnt - res.lag_sum end)::int call_count,
             res.sec_between_retries
      from res
    where res.lag_sum < res.q_cnt;
END;
$$;


--
-- Name: insert_member_public(bigint, jsonb); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.insert_member_public(widget_id bigint, INOUT member jsonb, OUT destination_number character varying, OUT queue_name character varying, OUT call_timeout smallint, OUT error smallint) RETURNS record
    LANGUAGE plpgsql
    AS $$
    DECLARE
      queue_id BIGINT;
      limit_by_number BOOLEAN;
      limit_by_ip SMALLINT;
    BEGIN
      SELECT
        widget.queue_id,
        widget.limit_by_number,
        widget.limit_by_ip,
        json_extract_path_text(widget.config,'destinationNumber')::VARCHAR(50),
        c.name,
        json_extract_path_text(widget.config,'hookCountDown')::SMALLINT
      INTO queue_id, limit_by_number, limit_by_ip, destination_number, queue_name, call_timeout
      FROM widget
        INNER JOIN callback_queue c on widget.queue_id = c.id
      where widget.id = widget_id AND (widget.blacklist is null or not cast(member->>'request_ip' as CIDR) <<= ANY(widget.blacklist)) LIMIT 1;

      if queue_id is NULL THEN
        error := -1;
        return ;
      END IF;

      if exists(
        SELECT count(id) as c
        FROM callback_members m
        WHERE (m.request_ip = member->>'request_ip'::varchar(50) ) AND m.created_on BETWEEN ((now() at time zone 'utc')::TIMESTAMP - INTERVAL '30 min')::TIMESTAMP AND (now() at time zone 'utc')
        HAVING count(*) >= limit_by_ip
      ) THEN
        error := -2;
        return;
      END IF;

      if limit_by_number = true AND exists(
        SELECT count(*) as c
        FROM callback_members m
        WHERE (m.number = cast(member->>'number' as varchar(50)) ) AND m.created_on BETWEEN ((now() at time zone 'utc')::TIMESTAMP - INTERVAL '30 min')::TIMESTAMP AND (now() at time zone 'utc')
        HAVING count(*) >= 1
      ) THEN
        error := -3;
        return;
      END IF;

      with rows as (
        INSERT INTO callback_members (
          number,
          href,
          user_agent,
          location,
          domain,
          queue_id,
          callback_time,
          widget_id,
          request_ip,
          done,
          done_at,
          done_by,
          logs)
        VALUES (
          member->>'number'::VARCHAR(50),
          cast(member->>'href' as VARCHAR(255)),
          cast(member->>'user_agent' as VARCHAR(300)),
          member->'location',
          cast(member->>'domain' as VARCHAR(70)),
          queue_id,
          cast(member->>'callback_time' as bigint),
          widget_id,
          cast(member->>'request_ip' as VARCHAR(50)),
          cast(member->>'done' as BOOLEAN),
          cast(member->>'done_at' as BIGINT),
          cast(member->>'done_by' as VARCHAR(100)),
          member->'logs'
        )  RETURNING *
      )
      SELECT row_to_json(rows) into member from rows;
      return;
    END;
    $$;


--
-- Name: rand(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.rand() RETURNS double precision
    LANGUAGE sql
    AS $$SELECT random();$$;


--
-- Name: tg_fill_member_communication_resource(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.tg_fill_member_communication_resource() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN

  if (tg_op = 'UPDATE' or tg_op = 'DELETE') then
    update cc_member_communications c
    set routing_ids = c.routing_ids - ARRAY [old.id]
    where c.id in (
      select c1.id
      from cc_member_communications c1
      	inner join cc_member cm on c1.member_id = cm.id
      where c1.routing_ids @> ARRAY [old.id] and cm.queue_id = old.queue_id
    );
  end if;

--  raise notice 'end delete';
  if (tg_op = 'UPDATE' or tg_op = 'INSERT') then

    update cc_member_communications c
    set routing_ids = c.routing_ids | ARRAY [new.id]
		from cc_member_communications c1
			inner join cc_member cm on c1.member_id = cm.id
		where c1.id = c.id and cm.queue_id = new.queue_id and not c1.routing_ids @> ARRAY [new.id]
        and c1.number ~* new.pattern;
  end if;

--  raise notice 'end add';
  RETURN new;
END;
$$;


--
-- Name: tg_get_member_communication_resource(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.tg_get_member_communication_resource() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
  --TODO change to STATEMENT !!!
  new.routing_ids = ARRAY(select r.id
  from cc_queue_routing r
  where r.queue_id = (select queue_id from cc_member m where m.id = new.member_id)
        and new.number ~ r.pattern
  );
 --raise notice 'TG "%" % -> %', new.routing_ids, new.member_id, new.number;

 RETURN new;
END;
$$;


--
-- Name: wbt_acl_explode(public.actl[]); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.wbt_acl_explode(public.actl[], OUT grantor bigint, OUT grantee bigint, OUT privilege smallint, OUT grantable smallint) RETURNS SETOF record
    LANGUAGE sql STABLE STRICT ROWS 16
    AS $_$

    SELECT grantor,
           grantee,
         ((granted >> 4) & 15::INT2),             -- privilege::mask [ ---- ---- crud ---- ]
          (granted & ((granted >> 4) & 15::INT2)) -- grantable::mask [ ---- ---- ---- crud ] adwr
    FROM  (SELECT (UNNEST($1)).*) acl;

$_$;


--
-- Name: wbt_acl_explore(public.actl[]); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.wbt_acl_explore(acl public.actl[], OUT grantor bigint, OUT grantee bigint, OUT privilege_type "char", OUT is_grantable boolean) RETURNS SETOF record
    LANGUAGE sql STABLE STRICT ROWS 64
    AS $$

    SELECT  grantor, grantee, act.code, (aci.grantable & act.mask) = act.mask
    FROM    wbt_acl_explode(acl) aci,
    /*(
        SELECT (UNNEST(acl)).*
    )
    aci(grantor, grantee, privilege, grantable ),
    */
    (
        VALUES -- enum::flags
        ( 1::int2, 'r'::"char"), -- SEARCH [r]ead
        ( 2,       'w' ),        -- MODIFY [w]rite
        ( 4,       'd' ),        -- DELETE [d]elete
        ( 8,       'a' )         -- CREATE [a]ppend
    )
    act(mask, code)
    WHERE
    (aci.privilege & act.mask) = act.mask;
    
$$;


--
-- Name: wbt_authz(bigint, bigint); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.wbt_authz(realm bigint, authid bigint, OUT sub bigint) RETURNS SETOF bigint
    LANGUAGE plpgsql STABLE STRICT ROWS 16
    AS $$
-- DECLARE
--	member_of bigint;
BEGIN

	-- RAISE NOTICE 'wbt::current_roles::call([realm]=[%],[auth]=[%])', realm, authid;
    
    return query with recursive roles(sub) as
    (
    	select id
          from wbt_auth
		 where (dc, id) = (realm, authid)
		 union distinct -- avoid inheritance cycles
		select rel.role
		  from wbt_auth_member rel, roles sup
		 where (rel.dc, rel.member) = (realm, sup.sub) -- and sup.rel < maxdepth
    )
    select roles.sub from roles;

    -- Так как выполнение ещё не закончено, можно проверить, были ли возвращены строки,
    -- и если нет, выдать исключение.
    IF NOT FOUND THEN
        RAISE INVALID_ROLE_SPECIFICATION USING
            message = format('unauthorized: role(%, %) not found', realm, authid);
    END IF;

    RETURN;

END;
$$;


--
-- Name: wbt_domain_role_owner(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.wbt_domain_role_owner() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN

	IF TG_OP = 'INSERT' THEN
        -- temporarily authenticate new domain su to complete the operation
    	-- PERFORM set_config('webitel.session.user', '@'|| new.name, true);
        raise notice 'CREATE %.% %', tg_table_schema, tg_table_name, new;
        IF NEW.DC IS NULL THEN
            NEW.DC := wbt_seqnext('oid');
        END IF;
        insert into wbt_auth
        (
              ID
            , DC
            , rolName
            , rolAdmin
            , canLogin
            , password
            , inactive
        )
        values
        (
              NEW.DC -- master role.id
            , NEW.DC -- primary role.id
            , split_part(NEW.DN, '.', 1) -- [c]ommon[n]ame
            , FALSE  -- new.admin,
            , FALSE  -- it's default group
            , NULL   -- new.password, -- TODO: root_password
            , FALSE  -- coalesce(new.inactive, false),
            
            -- -- ,null   -- new.expires_at,
            -- ,current_timestamp
            -- ,new.id
        );
    /* elsif tg_op = 'UPDATE' then
    	-- TODO: check has access
        raise notice 'MODIFY %.% % AS %', tg_table_schema, tg_table_name, old, new;
        if new.id is distinct from old.id then
        	update wbt_auth set id = new.id
            where id = old.id and dc = new.id;
        end if; */
    end if;

	return NEW;
END;
$$;


--
-- Name: wbt_group_operation(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.wbt_group_operation() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN

	IF TG_OP = 'INSERT' THEN
        -- temporarily authenticate new domain su to complete the operation
    	IF NEW.ID IS NULL THEN 
            NEW.ID := wbt_seqnext('oid');
        END IF;
        IF NEW.DC IS NULL THEN 
            -- NEW.DC := wbt_session_domain();
            RAISE EXCEPTION 'Domain reference is missing';
        END IF;
        NEW.groupName := NULLIF(TRIM(NEW.groupName),'');
        IF NEW.groupName IS NULL THEN 
            RAISE NOT_NULL_VIOLATION USING MESSAGE = 'Please, provide group name';
        END IF;
        -- CHECK (wbt_session_user().superuser)
        RAISE NOTICE 'CREATE %.% %', tg_table_schema, tg_table_name, NEW;
        INSERT INTO wbt_auth
        (
              ID
            , DC
            , rolName
            , rolAdmin
            , canLogin
            , password
            , inactive
        --    , expires_at
        --    , created_at
        --    , created_by
        )
        VALUES
        (
              NEW.ID -- master role.id
            , NEW.DC -- primary role.id
            , NEW.groupName -- [c]ommon[n]ame
            , false  -- new.admin,
            , false  -- coalesce(new.inactive, false),
            , NULL   -- new.password, -- TODO: root_password
            , false -- definitely NOT
            
        --    , NULL
        --    , current_timestamp
        --    , wbt_session_user()
        );
        -- TODO: sync .members with [wbt_auth_members]
    ELSIF TG_OP = 'UPDATE' THEN
    	-- TODO: check has access
        RAISE NOTICE 'MODIFY %.% % AS %', tg_table_schema, tg_table_name, OLD, NEW;
        UPDATE wbt_auth SET
        
              ID         = NEW.ID
            , DC         = NEW.DC
            , rolName    = NEW.groupName
            , canLogin   = false
        --    , updated_at = current_timestamp
        --    , updated_by = wbt_session_user()
        
        WHERE DC = OLD.DC AND ID = OLD.ID; -- USING index
        IF NOT FOUND THEN RETURN NULL; END IF;
        -- TODO: sync .members with [wbt_auth_members]
    ELSIF TG_OP = 'DELETE' THEN
    	-- TODO: check has access
        RAISE NOTICE 'DELETE %.% %', tg_table_schema, tg_table_name, old;
        -- IF NOT OLD.deleted_at IS NULL THEN
        DELETE FROM wbt_auth WHERE DC = OLD.DC AND ID = OLD.ID; -- USING index
        IF NOT FOUND THEN RETURN NULL; END IF;
        -- ELSE
        --     OLD.deleted_at := current_timestamp;
        --     OLD.deleted_by := wbt_session_user();
        --     UPDATE wbt_auth SET
        --          deleted_at = OLD.deleted_at
        --         ,deleted_by = OLD.deleted_by
        --     WHERE id = OLD.id;
        -- END IF;
        -- RETURN OLD;

    END IF;
    RETURN NEW;
END;
$$;


--
-- Name: wbt_seqnext(bigint); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.wbt_seqnext(seqclass bigint, OUT oid bigint) RETURNS bigint
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
    UPDATE wbt_sequence AS seq
    SET currval = seq.currval + 1
    WHERE seq.oid = seqclass
    RETURNING seq.currval
    INTO STRICT wbt_seqnext.oid;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
    	RAISE UNDEFINED_OBJECT USING
        MESSAGE = format('sequence "%I" does not exists', seqname);
END
$$;


--
-- Name: FUNCTION wbt_seqnext(seqclass bigint, OUT oid bigint); Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON FUNCTION public.wbt_seqnext(seqclass bigint, OUT oid bigint) IS 'Next sequential OID value';


--
-- Name: wbt_seqnext(text); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.wbt_seqnext(seqname text, OUT oid bigint) RETURNS bigint
    LANGUAGE plpgsql SECURITY DEFINER
    AS $$
BEGIN
    UPDATE wbt_sequence AS seq
    SET currval = seq.currval + 1
    WHERE seq.name = seqname
    RETURNING seq.currval
    INTO STRICT wbt_seqnext.oid;
EXCEPTION
	WHEN NO_DATA_FOUND THEN
    	RAISE UNDEFINED_OBJECT USING
        MESSAGE = format('sequence "%I" does not exists', seqname);
END
$$;


--
-- Name: FUNCTION wbt_seqnext(seqname text, OUT oid bigint); Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON FUNCTION public.wbt_seqnext(seqname text, OUT oid bigint) IS 'Next sequential OID value';


--
-- Name: wbt_user_operation(); Type: FUNCTION; Schema: public; Owner: -
--

CREATE FUNCTION public.wbt_user_operation() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN

	IF TG_OP = 'INSERT' THEN
        -- temporarily authenticate new domain su to complete the operation
    	IF NEW.ID IS NULL THEN 
            NEW.ID := wbt_seqnext('oid');
        END IF;
        IF NEW.DC IS NULL THEN 
            NEW.DC := wbt_session_domain();
        END IF;
        NEW.username := NULLIF(TRIM(NEW.username),'');
        IF NEW.username IS NULL THEN 
            RAISE NOT_NULL_VIOLATION USING MESSAGE = 'Please provide username';
        END IF;
        IF NEW.password IS NULL THEN
            RAISE NOT_NULL_VIOLATION USING MESSAGE = 'Please provide password';
        END IF;
        -- CHECK wbt_session_user().superuser
        raise notice 'CREATE %.% %', tg_table_schema, tg_table_name, NEW;
        INSERT INTO wbt_auth
        (
              ID
            , DC
            , rolName
            , rolAdmin
            , canLogin
            , password
            , inactive
        --    , expires_at
        --    , created_at
        --    , created_by
        )
        VALUES
        (
              NEW.ID -- master role.id
            , NEW.DC -- primary role.id
            , NEW.username -- [c]ommon[n]ame
            , coalesce(NEW.superuser, false)  -- new.admin,
            , TRUE -- definitely true
            , NEW.password   -- new.password, -- TODO: root_password
            , coalesce(NEW.inactive, false)  -- coalesce(new.inactive, false),
        --    , NEW.expires_at
        --    , current_timestamp
        --    , wbt_session_user()
        );
    ELSIF TG_OP = 'UPDATE' THEN
    	-- TODO: check has access
        raise notice 'MODIFY %.% % AS %', tg_table_schema, tg_table_name, old, new;
        UPDATE wbt_auth SET
        
              ID         = NEW.ID
            , DC         = NEW.DC
            , rolName    = NEW.username
            , rolAdmin   = NEW.superuser
            , canLogin   = TRUE
            , password   = NEW.password
            , inactive   = NEW.inactive
        --    , updated_at = current_timestamp
        --    , updated_by = wbt_session_user()

        WHERE DC = OLD.DC AND ID = OLD.ID; -- using index
        IF NOT FOUND THEN RETURN NULL; END IF;
    ELSIF TG_OP = 'DELETE' THEN
    	-- TODO: check has access
        RAISE NOTICE 'DELETE %.% %', tg_table_schema, tg_table_name, OLD;
        -- IF NOT OLD.deleted_at IS NULL THEN
        DELETE FROM wbt_auth WHERE DC = OLD.DC AND ID = OLD.ID; -- using index
        IF NOT FOUND THEN RETURN NULL; END IF;
        -- ELSE
        --     OLD.deleted_at := current_timestamp;
        --     OLD.deleted_by := wbt_session_user();
        --     UPDATE wbt_auth SET
        --          deleted_at = OLD.deleted_at
        --         ,deleted_by = OLD.deleted_by
        --     WHERE id = OLD.id;
        -- END IF;
        RETURN OLD;

    END IF;
    RETURN NEW;
END;
$$;


--
-- Name: gin_cc_pair_test2_ops; Type: OPERATOR FAMILY; Schema: call_center; Owner: -
--

CREATE OPERATOR FAMILY call_center.gin_cc_pair_test2_ops USING gin;


--
-- Name: acr_jobs; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.acr_jobs (
    id bigint NOT NULL,
    start_at timestamp without time zone DEFAULT now() NOT NULL,
    stop_at timestamp without time zone,
    name name NOT NULL,
    state smallint DEFAULT 0 NOT NULL,
    direction character varying(10) NOT NULL,
    schema_id integer NOT NULL
);


--
-- Name: acr_jobs_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.acr_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: acr_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.acr_jobs_id_seq OWNED BY call_center.acr_jobs.id;


--
-- Name: acr_routing_inbound_call; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.acr_routing_inbound_call (
    id bigint NOT NULL,
    domain_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(200) DEFAULT ''::character varying NOT NULL,
    created_at bigint NOT NULL,
    created_by bigint NOT NULL,
    updated_at bigint NOT NULL,
    updated_by bigint NOT NULL,
    start_scheme_id bigint NOT NULL,
    stop_scheme_id bigint,
    numbers character varying(50)[] DEFAULT '{}'::character varying[] NOT NULL,
    host character varying(50),
    timezone_id integer NOT NULL,
    debug boolean DEFAULT false NOT NULL,
    disabled boolean DEFAULT false
);


--
-- Name: acr_routing_inbound_call_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.acr_routing_inbound_call_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: acr_routing_inbound_call_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.acr_routing_inbound_call_id_seq OWNED BY call_center.acr_routing_inbound_call.id;


--
-- Name: acr_routing_outbound_call; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.acr_routing_outbound_call (
    id bigint NOT NULL,
    domain_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description character varying(200) DEFAULT ''::character varying NOT NULL,
    created_at bigint NOT NULL,
    created_by bigint NOT NULL,
    updated_at bigint NOT NULL,
    updated_by bigint NOT NULL,
    pattern character varying(50) NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    disabled boolean DEFAULT false,
    scheme_id bigint NOT NULL,
    pos integer NOT NULL
);


--
-- Name: acr_routing_outbound_call_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.acr_routing_outbound_call_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: acr_routing_outbound_call_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.acr_routing_outbound_call_id_seq OWNED BY call_center.acr_routing_outbound_call.id;


--
-- Name: acr_routing_outbound_call_pos_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.acr_routing_outbound_call_pos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: acr_routing_outbound_call_pos_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.acr_routing_outbound_call_pos_seq OWNED BY call_center.acr_routing_outbound_call.pos;


--
-- Name: acr_routing_scheme; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.acr_routing_scheme (
    id bigint NOT NULL,
    domain_id bigint NOT NULL,
    name character varying(100) NOT NULL,
    scheme jsonb NOT NULL,
    payload jsonb DEFAULT '{}'::jsonb NOT NULL,
    type smallint DEFAULT 0 NOT NULL,
    created_at bigint NOT NULL,
    created_by bigint NOT NULL,
    updated_at bigint NOT NULL,
    updated_by bigint NOT NULL,
    description character varying(200) DEFAULT ''::character varying NOT NULL,
    debug boolean DEFAULT false NOT NULL,
    state smallint
);


--
-- Name: COLUMN acr_routing_scheme.state; Type: COMMENT; Schema: call_center; Owner: -
--

COMMENT ON COLUMN call_center.acr_routing_scheme.state IS 'draft / new / used';


--
-- Name: acr_routing_scheme_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.acr_routing_scheme_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: acr_routing_scheme_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.acr_routing_scheme_id_seq OWNED BY call_center.acr_routing_scheme.id;


--
-- Name: acr_routing_variables; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.acr_routing_variables (
    id bigint NOT NULL,
    domain_id bigint NOT NULL,
    key character varying(20) NOT NULL,
    value character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Name: acr_routing_variables_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.acr_routing_variables_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: acr_routing_variables_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.acr_routing_variables_id_seq OWNED BY call_center.acr_routing_variables.id;


--
-- Name: cc_agent_activity; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_agent_activity (
    id integer NOT NULL,
    agent_id integer NOT NULL,
    last_bridge_start_at bigint DEFAULT 0 NOT NULL,
    last_bridge_end_at bigint DEFAULT 0 NOT NULL,
    last_offering_call_at bigint DEFAULT 0,
    calls_abandoned integer DEFAULT 0 NOT NULL,
    calls_answered integer DEFAULT 0 NOT NULL,
    sum_talking_of_day bigint DEFAULT 0 NOT NULL,
    sum_pause_of_day bigint DEFAULT 0 NOT NULL,
    successively_no_answers smallint DEFAULT 0 NOT NULL,
    last_answer_at bigint DEFAULT 0 NOT NULL,
    sum_idle_of_day bigint DEFAULT 0 NOT NULL
);


--
-- Name: agent_statistic_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.agent_statistic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: agent_statistic_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.agent_statistic_id_seq OWNED BY call_center.cc_agent_activity.id;


--
-- Name: calendar_accept_of_day; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.calendar_accept_of_day (
    id integer NOT NULL,
    calendar_id integer NOT NULL,
    day smallint NOT NULL,
    start_time_of_day smallint DEFAULT 0 NOT NULL,
    end_time_of_day smallint DEFAULT 1440 NOT NULL,
    disabled boolean DEFAULT false NOT NULL
);


--
-- Name: calendar_accept_of_day_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.calendar_accept_of_day_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: calendar_accept_of_day_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.calendar_accept_of_day_id_seq OWNED BY call_center.calendar_accept_of_day.id;


--
-- Name: calendar_acl; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.calendar_acl (
    dc bigint NOT NULL,
    object bigint NOT NULL,
    grantor bigint NOT NULL,
    subject bigint NOT NULL,
    access smallint DEFAULT 0 NOT NULL
);


--
-- Name: calendar_except; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.calendar_except (
    id integer NOT NULL,
    calendar_id bigint NOT NULL,
    date bigint NOT NULL,
    disabled boolean DEFAULT false NOT NULL,
    name character varying(50) NOT NULL,
    repeat boolean DEFAULT false NOT NULL
);


--
-- Name: calendar_except_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.calendar_except_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: calendar_except_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.calendar_except_id_seq OWNED BY call_center.calendar_except.id;


--
-- Name: calendar_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.calendar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: calendar_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.calendar_id_seq OWNED BY call_center.calendar.id;


--
-- Name: calendar_timezones; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.calendar_timezones (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    utc_offset interval NOT NULL,
    offset_id smallint NOT NULL
);


--
-- Name: calendar_intervals; Type: MATERIALIZED VIEW; Schema: call_center; Owner: -
--

CREATE MATERIALIZED VIEW call_center.calendar_intervals AS
 SELECT row_number() OVER (ORDER BY calendar_timezones.utc_offset) AS id,
    calendar_timezones.utc_offset
   FROM call_center.calendar_timezones
  GROUP BY calendar_timezones.utc_offset
  ORDER BY calendar_timezones.utc_offset
  WITH NO DATA;


--
-- Name: calendar_timezone_offsets; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.calendar_timezone_offsets (
    id bigint,
    utc_offset interval,
    names text[]
);


--
-- Name: calendar_timezones_by_interval; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.calendar_timezones_by_interval (
    id bigint,
    utc_offset interval,
    names character varying[]
);


--
-- Name: calendar_timezones_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.calendar_timezones_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: calendar_timezones_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.calendar_timezones_id_seq OWNED BY call_center.calendar_timezones.id;


--
-- Name: cc_agent; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_agent (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    updated_at bigint DEFAULT 0 NOT NULL,
    status character varying(20) DEFAULT 'offline'::character varying NOT NULL,
    status_payload jsonb,
    state character varying(20) DEFAULT 'waiting'::character varying NOT NULL,
    state_timeout timestamp without time zone,
    description character varying(250) DEFAULT ''::character varying NOT NULL,
    domain_id bigint NOT NULL,
    last_answer_at bigint DEFAULT 0 NOT NULL,
    last_bridge_start_at bigint DEFAULT 0 NOT NULL,
    last_bridge_end_at bigint DEFAULT 0 NOT NULL,
    successively_no_answers integer DEFAULT 0 NOT NULL,
    last_offering_at bigint DEFAULT 0 NOT NULL,
    last_state_change bigint DEFAULT 0 NOT NULL,
    active_queue_id integer
);


--
-- Name: cc_agent_acl; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_agent_acl (
    id bigint NOT NULL,
    dc bigint NOT NULL,
    grantor bigint NOT NULL,
    object integer NOT NULL,
    subject bigint NOT NULL,
    access smallint DEFAULT 0 NOT NULL
);


--
-- Name: cc_agent_acl_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_agent_acl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_agent_acl_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_agent_acl_id_seq OWNED BY call_center.cc_agent_acl.id;


--
-- Name: cc_agent_attempt; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_agent_attempt (
    id bigint NOT NULL,
    queue_id bigint NOT NULL,
    agent_id bigint,
    attempt_id bigint NOT NULL
);


--
-- Name: cc_agent_attempt_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_agent_attempt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_agent_attempt_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_agent_attempt_id_seq OWNED BY call_center.cc_agent_attempt.id;


--
-- Name: cc_agent_missed_attempt; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_agent_missed_attempt (
    id bigint NOT NULL,
    attempt_id bigint NOT NULL,
    agent_id integer NOT NULL,
    cause character varying,
    missed_at bigint NOT NULL,
    created_at timestamp without time zone DEFAULT now() NOT NULL
);


--
-- Name: cc_member_attempt; Type: TABLE; Schema: call_center; Owner: -
--

CREATE UNLOGGED TABLE call_center.cc_member_attempt (
    id bigint NOT NULL,
    queue_id integer NOT NULL,
    state integer DEFAULT 0 NOT NULL,
    member_id bigint NOT NULL,
    weight integer DEFAULT 0 NOT NULL,
    hangup_at bigint DEFAULT 0 NOT NULL,
    bridged_at bigint DEFAULT 0 NOT NULL,
    resource_id integer,
    leg_a_id character varying(36),
    leg_b_id character varying(36),
    node_id character varying(20),
    result character varying(200),
    originate_at bigint DEFAULT 0 NOT NULL,
    answered_at bigint DEFAULT 0 NOT NULL,
    logs jsonb,
    agent_id bigint,
    bucket_id bigint,
    created_at timestamp without time zone DEFAULT now() NOT NULL,
    destination jsonb,
    display character varying(50),
    offering_at bigint,
    deadline bigint DEFAULT 0 NOT NULL
)
WITH (fillfactor='20', log_autovacuum_min_duration='0', autovacuum_vacuum_scale_factor='0.01', autovacuum_analyze_scale_factor='0.05', autovacuum_enabled='1', autovacuum_vacuum_cost_delay='20');


--
-- Name: TABLE cc_member_attempt; Type: COMMENT; Schema: call_center; Owner: -
--

COMMENT ON TABLE call_center.cc_member_attempt IS 'todo';


--
-- Name: cc_member_attempt_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_member_attempt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_member_attempt_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_member_attempt_id_seq OWNED BY call_center.cc_member_attempt.id;


--
-- Name: cc_member_attempt_log; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_member_attempt_log (
    id bigint DEFAULT nextval('call_center.cc_member_attempt_id_seq'::regclass) NOT NULL,
    queue_id bigint NOT NULL,
    state integer DEFAULT 0 NOT NULL,
    member_id bigint NOT NULL,
    weight integer DEFAULT 0 NOT NULL,
    hangup_at bigint DEFAULT 0 NOT NULL,
    bridged_at bigint DEFAULT 0 NOT NULL,
    resource_id integer,
    leg_a_id character varying(36),
    leg_b_id character varying(36),
    node_id character varying(20),
    result character varying(200),
    originate_at bigint DEFAULT 0 NOT NULL,
    answered_at bigint DEFAULT 0 NOT NULL,
    logs jsonb,
    agent_id bigint,
    bucket_id bigint,
    created_at timestamp without time zone NOT NULL,
    success boolean DEFAULT false NOT NULL
);
ALTER TABLE ONLY call_center.cc_member_attempt_log ALTER COLUMN created_at SET STATISTICS 1000;


--
-- Name: cc_agent_daily_calls_mat; Type: MATERIALIZED VIEW; Schema: call_center; Owner: -
--

CREATE MATERIALIZED VIEW call_center.cc_agent_daily_calls_mat AS
 SELECT a.id,
    COALESCE(calls.success_calls, (0)::bigint) AS success_calls,
    COALESCE(calls.max_data, (CURRENT_DATE)::timestamp without time zone) AS max_success_call_time,
    COALESCE(missed.cnt, (0)::bigint) AS missed_calls,
    COALESCE(missed.max_data, (CURRENT_DATE)::timestamp without time zone) AS max_missed_call_time
   FROM ((call_center.cc_agent a
     LEFT JOIN ( SELECT l.agent_id,
            count(*) AS success_calls,
            max(l.created_at) AS max_data
           FROM call_center.cc_member_attempt_log l
          WHERE ((l.created_at > CURRENT_DATE) AND (l.agent_id IS NOT NULL))
          GROUP BY l.agent_id) calls ON ((calls.agent_id = a.id)))
     LEFT JOIN ( SELECT m.agent_id,
            count(*) AS cnt,
            max(m.created_at) AS max_data
           FROM call_center.cc_agent_missed_attempt m
          WHERE (m.created_at > CURRENT_DATE)
          GROUP BY m.agent_id) missed ON ((missed.agent_id = a.id)))
  WITH NO DATA;


--
-- Name: cc_agent_daily_calls; Type: VIEW; Schema: call_center; Owner: -
--

CREATE VIEW call_center.cc_agent_daily_calls AS
 SELECT a.id AS agent_id,
    (a.success_calls + n.cnt) AS success_calls,
    (a.missed_calls + m.cnt) AS missed_calls
   FROM ((call_center.cc_agent_daily_calls_mat a
     LEFT JOIN LATERAL ( SELECT count(*) AS cnt
           FROM call_center.cc_member_attempt_log l
          WHERE ((l.created_at > a.max_success_call_time) AND (l.agent_id = a.id))) n ON (true))
     LEFT JOIN LATERAL ( SELECT count(*) AS cnt
           FROM call_center.cc_agent_missed_attempt l
          WHERE ((l.created_at > a.max_missed_call_time) AND (l.agent_id = a.id))) m ON (true));


--
-- Name: cc_agent_state_history; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_agent_state_history (
    id bigint NOT NULL,
    agent_id bigint NOT NULL,
    joined_at timestamp without time zone DEFAULT now() NOT NULL,
    state character varying(20) NOT NULL,
    timeout_at timestamp without time zone,
    payload jsonb,
    queue_id integer
);


--
-- Name: cc_agent_daily_state_activity_mat; Type: MATERIALIZED VIEW; Schema: call_center; Owner: -
--

CREATE MATERIALIZED VIEW call_center.cc_agent_daily_state_activity_mat AS
 SELECT h.agent_id,
    h.queue_id,
    h.state,
    sum((h2.joined_at - h.joined_at)) AS t,
    max(h.joined_at) AS last_activity
   FROM (call_center.cc_agent_state_history h
     JOIN LATERAL ( SELECT h2_1.id,
            h2_1.agent_id,
            h2_1.joined_at,
            h2_1.state,
            h2_1.timeout_at,
            h2_1.payload,
            h2_1.queue_id
           FROM call_center.cc_agent_state_history h2_1
          WHERE ((h2_1.agent_id = h.agent_id) AND (h2_1.joined_at > h.joined_at))
          ORDER BY h2_1.joined_at
         LIMIT 1) h2 ON (true))
  WHERE (h.joined_at > CURRENT_DATE)
  GROUP BY h.agent_id, h.queue_id, h.state
  WITH NO DATA;


--
-- Name: cc_agent_end_state_day_5min; Type: MATERIALIZED VIEW; Schema: call_center; Owner: -
--

CREATE MATERIALIZED VIEW call_center.cc_agent_end_state_day_5min AS
 SELECT s.trunc_5_minute,
    s.state,
    s.agent_id,
    sum(s.t) AS state_time
   FROM ( SELECT h.agent_id,
            h.state,
            sum((h2.joined_at - h.joined_at)) AS t,
            (date_trunc('minute'::text, h.joined_at) - ((((date_part('minute'::text, h.joined_at))::integer % 5))::double precision * '00:01:00'::interval)) AS trunc_5_minute
           FROM ((call_center.cc_agent_state_history h
             LEFT JOIN LATERAL ( SELECT h2_1.id,
                    h2_1.agent_id,
                    h2_1.joined_at,
                    h2_1.state,
                    h2_1.timeout_at,
                    h2_1.payload
                   FROM call_center.cc_agent_state_history h2_1
                  WHERE ((h2_1.agent_id = h.agent_id) AND (h2_1.joined_at > h.joined_at))
                  ORDER BY h2_1.joined_at
                 LIMIT 1) h2 ON (true))
             JOIN call_center.cc_agent ca ON ((h.agent_id = ca.id)))
          WHERE ((h.joined_at > CURRENT_DATE) AND (h2.joined_at IS NOT NULL))
          GROUP BY h.agent_id, h.state, ca.id, (date_trunc('minute'::text, h.joined_at) - ((((date_part('minute'::text, h.joined_at))::integer % 5))::double precision * '00:01:00'::interval))) s
  WHERE ((s.state)::text <> 'logged_out'::text)
  GROUP BY s.agent_id, s.state, s.trunc_5_minute
  WITH NO DATA;


--
-- Name: cc_agent_history_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_agent_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_agent_history_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_agent_history_id_seq OWNED BY call_center.cc_agent_state_history.id;


--
-- Name: cc_agent_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_agent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_agent_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_agent_id_seq OWNED BY call_center.cc_agent.id;


--
-- Name: cc_agent_in_team; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_agent_in_team (
    id integer NOT NULL,
    team_id integer NOT NULL,
    agent_id integer,
    skill_id integer,
    lvl integer DEFAULT 0 NOT NULL,
    min_capacity smallint DEFAULT 0 NOT NULL,
    max_capacity smallint DEFAULT 100 NOT NULL,
    bucket_id integer
);


--
-- Name: cc_agent_in_team_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_agent_in_team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_agent_in_team_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_agent_in_team_id_seq OWNED BY call_center.cc_agent_in_team.id;


--
-- Name: cc_agent_last_2hour_calls_mat; Type: MATERIALIZED VIEW; Schema: call_center; Owner: -
--

CREATE MATERIALIZED VIEW call_center.cc_agent_last_2hour_calls_mat AS
 SELECT a.id,
    COALESCE(calls.success_calls, (0)::bigint) AS success_calls,
    COALESCE((calls.max_data)::timestamp with time zone, (now() - '02:00:00'::interval)) AS max_success_call_time,
    COALESCE(missed.cnt, (0)::bigint) AS missed_calls,
    COALESCE((missed.max_data)::timestamp with time zone, (now() - '02:00:00'::interval)) AS max_missed_call_time
   FROM ((call_center.cc_agent a
     LEFT JOIN ( SELECT l.agent_id,
            count(*) AS success_calls,
            max(l.created_at) AS max_data
           FROM call_center.cc_member_attempt_log l
          WHERE ((l.created_at > (now() - '02:00:00'::interval)) AND (l.agent_id IS NOT NULL))
          GROUP BY l.agent_id) calls ON ((calls.agent_id = a.id)))
     LEFT JOIN ( SELECT m.agent_id,
            count(*) AS cnt,
            max(m.created_at) AS max_data
           FROM call_center.cc_agent_missed_attempt m
          WHERE (m.created_at > (now() - '02:00:00'::interval))
          GROUP BY m.agent_id) missed ON ((missed.agent_id = a.id)))
  WITH NO DATA;


--
-- Name: cc_agent_last_2hour_calls; Type: VIEW; Schema: call_center; Owner: -
--

CREATE VIEW call_center.cc_agent_last_2hour_calls AS
 SELECT a.id AS agent_id,
    (a.success_calls + n.cnt) AS success_calls,
    (a.missed_calls + m.cnt) AS missed_calls
   FROM ((call_center.cc_agent_last_2hour_calls_mat a
     LEFT JOIN LATERAL ( SELECT count(*) AS cnt
           FROM call_center.cc_member_attempt_log l
          WHERE ((l.created_at > a.max_success_call_time) AND (l.agent_id = a.id))) n ON (true))
     LEFT JOIN LATERAL ( SELECT count(*) AS cnt
           FROM call_center.cc_agent_missed_attempt l
          WHERE ((l.created_at > a.max_missed_call_time) AND (l.agent_id = a.id))) m ON (true));


--
-- Name: cc_agent_missed_attempt_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_agent_missed_attempt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_agent_missed_attempt_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_agent_missed_attempt_id_seq OWNED BY call_center.cc_agent_missed_attempt.id;


--
-- Name: voip_channel; Type: TABLE; Schema: directory; Owner: -
--

CREATE UNLOGGED TABLE directory.voip_channel (
    uuid uuid NOT NULL,
    hostname name,
    direction integer DEFAULT 0 NOT NULL,
    created_at timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL,
    user_id bigint,
    domain_id bigint,
    device_id bigint,
    gateway_id bigint,
    caller_name text,
    caller_number character varying(64) NOT NULL,
    destination character varying(64) NOT NULL,
    callee_name text,
    callee_number character varying(64),
    call_state integer DEFAULT 0 NOT NULL,
    call_uuid uuid,
    exec text,
    exec_args text
)
WITH (fillfactor='20', log_autovacuum_min_duration='0', autovacuum_vacuum_scale_factor='0.01', autovacuum_analyze_scale_factor='0.05', autovacuum_enabled='1', autovacuum_vacuum_cost_delay='20');


--
-- Name: wbt_auth; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_auth (
    id bigint NOT NULL,
    dc bigint NOT NULL,
    auth name NOT NULL,
    name text,
    password text,
    can_login boolean DEFAULT false NOT NULL,
    tel_number name,
    usage text
);


--
-- Name: TABLE wbt_auth; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON TABLE directory.wbt_auth IS 'Webitel Administrative Roles';


--
-- Name: COLUMN wbt_auth.usage; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.wbt_auth.usage IS 'optional short usage description';


--
-- Name: wbt_auth_id_seq; Type: SEQUENCE; Schema: directory; Owner: -
--

CREATE SEQUENCE directory.wbt_auth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wbt_auth_id_seq; Type: SEQUENCE OWNED BY; Schema: directory; Owner: -
--

ALTER SEQUENCE directory.wbt_auth_id_seq OWNED BY directory.wbt_auth.id;


--
-- Name: wbt_user; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_user (
    id bigint DEFAULT nextval('directory.wbt_auth_id_seq'::regclass) NOT NULL,
    dc bigint NOT NULL,
    name text,
    email character varying(255),
    username name NOT NULL,
    password name NOT NULL,
    extension name,
    profile jsonb,
    dnd boolean DEFAULT false NOT NULL,
    online integer DEFAULT 0 NOT NULL,
    status text,
    created_at timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL,
    created_by bigint,
    updated_at timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL,
    updated_by bigint,
    deleted_at timestamp without time zone,
    deleted_by bigint,
    device_id bigint,
    envars jsonb
);


--
-- Name: COLUMN wbt_user.device_id; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.wbt_user.device_id IS 'Default SIP Register Endpoint Credentials';


--
-- Name: cc_agent_waiting; Type: VIEW; Schema: call_center; Owner: -
--

CREATE VIEW call_center.cc_agent_waiting AS
 SELECT a.id,
    COALESCE(u.name, ('<empty>'::character varying)::text) AS name,
    u.extension AS desctination
   FROM (call_center.cc_agent a
     JOIN directory.wbt_user u ON ((u.id = a.user_id)))
  WHERE (((a.state)::text = 'waiting'::text) AND (NOT (EXISTS ( SELECT 1
           FROM directory.voip_channel c
          WHERE (c.user_id = u.id)))));


--
-- Name: cc_bucket; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_bucket (
    id bigint NOT NULL,
    name name NOT NULL,
    domain_id bigint NOT NULL,
    description character varying(200) DEFAULT ''::character varying NOT NULL
);


--
-- Name: cc_bucket_acl; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_bucket_acl (
    dc bigint NOT NULL,
    object integer NOT NULL,
    subject bigint NOT NULL,
    access smallint DEFAULT 0 NOT NULL,
    grantor bigint NOT NULL
);


--
-- Name: cc_bucket_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_bucket_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_bucket_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_bucket_id_seq OWNED BY call_center.cc_bucket.id;


--
-- Name: cc_bucket_in_queue; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_bucket_in_queue (
    id integer NOT NULL,
    queue_id integer NOT NULL,
    ratio integer DEFAULT 0 NOT NULL,
    bucket_id integer NOT NULL
);


--
-- Name: cc_bucket_in_queue_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_bucket_in_queue_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_bucket_in_queue_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_bucket_in_queue_id_seq OWNED BY call_center.cc_bucket_in_queue.id;


--
-- Name: cc_list; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_list (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    type integer DEFAULT 0 NOT NULL,
    description character varying(20),
    domain_id bigint NOT NULL,
    created_at bigint NOT NULL,
    created_by bigint NOT NULL,
    updated_at bigint NOT NULL,
    updated_by bigint NOT NULL
);


--
-- Name: cc_call_list_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_call_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_call_list_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_call_list_id_seq OWNED BY call_center.cc_list.id;


--
-- Name: cc_calls; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_calls (
    id bigint NOT NULL
);


--
-- Name: cc_calls_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_calls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_calls_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_calls_id_seq OWNED BY call_center.cc_calls.id;


--
-- Name: cc_cluster; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_cluster (
    id integer NOT NULL,
    node_name character varying(20) NOT NULL,
    updated_at bigint NOT NULL,
    master boolean NOT NULL,
    started_at bigint DEFAULT 0 NOT NULL
);


--
-- Name: cc_cluster_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_cluster_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_cluster_id_seq OWNED BY call_center.cc_cluster.id;


--
-- Name: cc_communication; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_communication (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    code character varying(10) NOT NULL,
    type character varying(5),
    domain_id bigint,
    description character varying(200) DEFAULT ''::character varying
);


--
-- Name: cc_communication_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_communication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_communication_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_communication_id_seq OWNED BY call_center.cc_communication.id;


--
-- Name: cc_list_acl; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_list_acl (
    id bigint NOT NULL,
    dc bigint NOT NULL,
    object bigint NOT NULL,
    grantor bigint NOT NULL,
    subject bigint NOT NULL,
    access smallint DEFAULT 0 NOT NULL
);


--
-- Name: cc_list_acl_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_list_acl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_list_acl_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_list_acl_id_seq OWNED BY call_center.cc_list_acl.id;


--
-- Name: cc_list_communications; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_list_communications (
    list_id bigint NOT NULL,
    number character varying(25) NOT NULL,
    id bigint NOT NULL,
    description text
);


--
-- Name: cc_list_communications_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_list_communications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_list_communications_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_list_communications_id_seq OWNED BY call_center.cc_list_communications.id;


--
-- Name: cc_member_attempt_log_day_5min; Type: MATERIALIZED VIEW; Schema: call_center; Owner: -
--

CREATE MATERIALIZED VIEW call_center.cc_member_attempt_log_day_5min AS
 SELECT l.queue_id,
    l.bucket_id,
    (date_trunc('minute'::text, l.created_at) - ((((date_part('minute'::text, l.created_at))::integer % 5))::double precision * '00:01:00'::interval)) AS trunc_5_minute,
    count(*) AS count,
    count(*) FILTER (WHERE ((l.result)::text = 'SUCCESS'::text)) AS success_count,
    max(l.created_at) AS max,
    avg(((l.hangup_at - l.bridged_at) / 1000)) FILTER (WHERE (l.bridged_at > 0)) AS avg_bill_sec
   FROM call_center.cc_member_attempt_log l
  WHERE (date(l.created_at) = date(now()))
  GROUP BY l.queue_id, l.bucket_id, (date_trunc('minute'::text, l.created_at) - ((((date_part('minute'::text, l.created_at))::integer % 5))::double precision * '00:01:00'::interval))
  ORDER BY (date_trunc('minute'::text, l.created_at) - ((((date_part('minute'::text, l.created_at))::integer % 5))::double precision * '00:01:00'::interval))
  WITH NO DATA;


--
-- Name: cc_member_attempt_log_day; Type: VIEW; Schema: call_center; Owner: -
--

CREATE VIEW call_center.cc_member_attempt_log_day AS
 SELECT t.queue_id,
    t.bucket_id,
    (t.count + (COALESCE(g.count, (0)::bigint))::numeric) AS count,
    (t.success_count + (COALESCE(g.success_count, (0)::bigint))::numeric) AS success_count,
    (COALESCE(t.avg_bill_sec, (0)::numeric) + COALESCE(g.avg_bill_sec, (0)::numeric)) AS avg_bill_sec
   FROM (( SELECT q.queue_id,
            q.bucket_id,
            sum(q.count) AS count,
            sum(q.success_count) AS success_count,
            max(q.max) AS max,
            avg(q.avg_bill_sec) AS avg_bill_sec
           FROM call_center.cc_member_attempt_log_day_5min q
          GROUP BY q.queue_id, q.bucket_id) t
     LEFT JOIN LATERAL ( SELECT l.queue_id,
            l.bucket_id,
            count(*) AS count,
            count(*) FILTER (WHERE ((l.result)::text = 'SUCCESSFUL'::text)) AS success_count,
            max(l.created_at) AS max,
            avg(((l.hangup_at - l.bridged_at) / 1000)) FILTER (WHERE (l.bridged_at > 0)) AS avg_bill_sec
           FROM call_center.cc_member_attempt_log l
          WHERE ((l.created_at > (CURRENT_DATE - '1 day'::interval)) AND (l.created_at > t.max) AND (COALESCE(l.bucket_id, (0)::bigint) = COALESCE(t.bucket_id, (0)::bigint)) AND (l.queue_id = t.queue_id))
          GROUP BY l.queue_id, l.bucket_id
          ORDER BY l.queue_id, COALESCE(l.bucket_id, (0)::bigint)) g ON (true));


--
-- Name: cc_member_attempt_log_day_tmp; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_member_attempt_log_day_tmp (
    id bigint,
    queue_id bigint,
    state integer,
    member_id bigint,
    weight integer,
    hangup_at bigint,
    bridged_at bigint,
    resource_id integer,
    leg_a_id character varying(36),
    leg_b_id character varying(36),
    node_id character varying(20),
    result character varying(200),
    originate_at bigint,
    answered_at bigint,
    logs jsonb,
    agent_id bigint,
    bucket_id bigint,
    created_at timestamp without time zone,
    success boolean
);


--
-- Name: cc_member_communications_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_member_communications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_member_communications_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_member_communications_id_seq OWNED BY call_center.cc_member_communications.id;


--
-- Name: cc_member_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_member_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_member_id_seq OWNED BY call_center.cc_member.id;


--
-- Name: cc_member_messages; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_member_messages (
    id bigint NOT NULL,
    member_id bigint NOT NULL,
    communication_id bigint NOT NULL,
    state integer DEFAULT 0 NOT NULL,
    created_at bigint DEFAULT 0 NOT NULL,
    message bytea
);


--
-- Name: cc_member_messages_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_member_messages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_member_messages_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_member_messages_id_seq OWNED BY call_center.cc_member_messages.id;


--
-- Name: cc_outbound_resource_acl; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_outbound_resource_acl (
    id bigint NOT NULL,
    dc bigint NOT NULL,
    grantor bigint NOT NULL,
    object bigint NOT NULL,
    subject bigint NOT NULL,
    access smallint DEFAULT 0 NOT NULL
);


--
-- Name: cc_outbound_resource_acl_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_outbound_resource_acl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_outbound_resource_acl_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_outbound_resource_acl_id_seq OWNED BY call_center.cc_outbound_resource_acl.id;


--
-- Name: cc_outbound_resource_display; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_outbound_resource_display (
    id bigint NOT NULL,
    resource_id bigint NOT NULL,
    display character varying(50) NOT NULL
);


--
-- Name: cc_outbound_resource_display_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_outbound_resource_display_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_outbound_resource_display_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_outbound_resource_display_id_seq OWNED BY call_center.cc_outbound_resource_display.id;


--
-- Name: cc_outbound_resource_group; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_outbound_resource_group (
    id bigint NOT NULL,
    domain_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    strategy character varying(10) NOT NULL,
    description character varying(200) DEFAULT ''::character varying NOT NULL,
    communication_id bigint NOT NULL,
    created_at bigint NOT NULL,
    created_by bigint NOT NULL,
    updated_at bigint NOT NULL,
    updated_by bigint NOT NULL,
    "time" jsonb
);


--
-- Name: cc_outbound_resource_group_acl; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_outbound_resource_group_acl (
    id bigint NOT NULL,
    dc bigint NOT NULL,
    grantor bigint NOT NULL,
    subject bigint NOT NULL,
    object bigint NOT NULL,
    access smallint DEFAULT 0 NOT NULL
);


--
-- Name: cc_outbound_resource_group_acl_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_outbound_resource_group_acl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_outbound_resource_group_acl_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_outbound_resource_group_acl_id_seq OWNED BY call_center.cc_outbound_resource_group_acl.id;


--
-- Name: cc_outbound_resource_group_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_outbound_resource_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_outbound_resource_group_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_outbound_resource_group_id_seq OWNED BY call_center.cc_outbound_resource_group.id;


--
-- Name: cc_outbound_resource_in_group; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_outbound_resource_in_group (
    id bigint NOT NULL,
    resource_id bigint NOT NULL,
    group_id bigint NOT NULL
);


--
-- Name: cc_outbound_resource_in_group_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_outbound_resource_in_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_outbound_resource_in_group_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_outbound_resource_in_group_id_seq OWNED BY call_center.cc_outbound_resource_in_group.id;


--
-- Name: cc_queue; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_queue (
    id integer NOT NULL,
    strategy character varying(20) NOT NULL,
    enabled boolean NOT NULL,
    payload jsonb,
    calendar_id integer NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    max_calls integer DEFAULT 0 NOT NULL,
    sec_between_retries integer DEFAULT 10 NOT NULL,
    updated_at bigint DEFAULT ((date_part('epoch'::text, now()) * (1000)::double precision))::bigint NOT NULL,
    name character varying(50),
    max_of_retry smallint DEFAULT 0 NOT NULL,
    variables jsonb DEFAULT '{}'::jsonb NOT NULL,
    timeout integer DEFAULT 60 NOT NULL,
    domain_id bigint NOT NULL,
    dnc_list_id bigint,
    sec_locate_agent integer DEFAULT 5 NOT NULL,
    type smallint DEFAULT 1 NOT NULL,
    team_id bigint,
    created_at bigint NOT NULL,
    created_by bigint NOT NULL,
    updated_by bigint NOT NULL,
    schema_id integer,
    callback_timeout integer DEFAULT 0 NOT NULL,
    description character varying DEFAULT ''::character varying
);


--
-- Name: cc_queue_acl; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_queue_acl (
    id bigint NOT NULL,
    dc bigint NOT NULL,
    grantor bigint NOT NULL,
    subject bigint NOT NULL,
    access smallint DEFAULT 0 NOT NULL,
    object bigint NOT NULL
);


--
-- Name: cc_queue_acl_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_queue_acl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_queue_acl_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_queue_acl_id_seq OWNED BY call_center.cc_queue_acl.id;


--
-- Name: cc_queue_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_queue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_queue_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_queue_id_seq OWNED BY call_center.cc_queue.id;


--
-- Name: cc_queue_statistics; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_queue_statistics (
    id bigint NOT NULL,
    queue_id bigint NOT NULL,
    member_count integer DEFAULT 0 NOT NULL,
    member_waiting integer DEFAULT 0 NOT NULL,
    bucket_id bigint
);


--
-- Name: cc_queue_member_statistics_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_queue_member_statistics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_queue_member_statistics_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_queue_member_statistics_id_seq OWNED BY call_center.cc_queue_statistics.id;


--
-- Name: cc_queue_resource; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_queue_resource (
    id bigint NOT NULL,
    queue_id bigint NOT NULL,
    resource_group_id bigint NOT NULL
);


--
-- Name: cc_queue_resource_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_queue_resource_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_queue_resource_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_queue_resource_id_seq OWNED BY call_center.cc_outbound_resource.id;


--
-- Name: cc_queue_resource_id_seq1; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_queue_resource_id_seq1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_queue_resource_id_seq1; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_queue_resource_id_seq1 OWNED BY call_center.cc_queue_resource.id;


--
-- Name: cc_skill; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_skill (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    domain_id bigint NOT NULL,
    description character varying(100) DEFAULT ''::character varying NOT NULL
);


--
-- Name: cc_skill_in_agent; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_skill_in_agent (
    id integer NOT NULL,
    skill_id integer NOT NULL,
    agent_id integer NOT NULL,
    capacity smallint DEFAULT 0 NOT NULL,
    created_at bigint NOT NULL,
    created_by bigint NOT NULL,
    updated_at bigint NOT NULL,
    updated_by bigint NOT NULL
);


--
-- Name: cc_skill_in_agent_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_skill_in_agent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_skill_in_agent_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_skill_in_agent_id_seq OWNED BY call_center.cc_skill_in_agent.id;


--
-- Name: cc_skils_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_skils_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_skils_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_skils_id_seq OWNED BY call_center.cc_skill.id;


--
-- Name: cc_supervisor_in_team; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_supervisor_in_team (
    id bigint NOT NULL,
    agent_id bigint NOT NULL,
    team_id bigint NOT NULL
);


--
-- Name: cc_supervisor_in_team_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_supervisor_in_team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_supervisor_in_team_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_supervisor_in_team_id_seq OWNED BY call_center.cc_supervisor_in_team.id;


--
-- Name: cc_sys_agent_group_team_bucket; Type: VIEW; Schema: call_center; Owner: -
--

CREATE VIEW call_center.cc_sys_agent_group_team_bucket AS
 WITH ag AS (
         SELECT s.team_id,
            s.bucket_id,
            s.agent_id,
            max(s.lvl) AS lvl,
            max(s.capacity) AS capacity
           FROM ( SELECT aq.team_id,
                    aq.bucket_id,
                    sa.agent_id,
                    aq.lvl,
                    sa.capacity
                   FROM (call_center.cc_agent_in_team aq
                     JOIN call_center.cc_skill_in_agent sa ON ((sa.skill_id = aq.skill_id)))
                  WHERE ((aq.skill_id IS NOT NULL) AND ((sa.capacity >= aq.min_capacity) AND (sa.capacity <= aq.max_capacity)))
                UNION
                 SELECT aq.team_id,
                    aq.bucket_id,
                    aq.agent_id,
                    aq.lvl,
                    0
                   FROM call_center.cc_agent_in_team aq
                  WHERE (aq.agent_id IS NOT NULL)) s
          GROUP BY s.team_id, s.bucket_id, s.agent_id
        )
 SELECT row_number() OVER (PARTITION BY ag.team_id, ag.bucket_id ORDER BY ag.lvl DESC, ag.capacity DESC, a.last_state_change) AS pos,
    ag.team_id,
    ag.bucket_id,
    ag.agent_id,
    ag.lvl,
    ag.capacity
   FROM (ag
     JOIN call_center.cc_agent a ON ((a.id = ag.agent_id)))
  WHERE (((a.state)::text = 'waiting'::text) AND ((a.status)::text = 'online'::text));


--
-- Name: cc_sys_distribute_queue_bucket_seg; Type: VIEW; Schema: call_center; Owner: -
--

CREATE VIEW call_center.cc_sys_distribute_queue_bucket_seg AS
 SELECT s.queue_id,
    s.bucket_id,
    s.member_waiting,
        CASE
            WHEN ((s.bucket_id IS NULL) OR (s.member_waiting < 2)) THEN (s.member_waiting)::bigint
            ELSE (((ceil((((s.member_count * cbiq.ratio) / 100))::double precision))::integer - log.log))::bigint
        END AS lim,
    cbiq.ratio
   FROM ((call_center.cc_queue_statistics s
     LEFT JOIN call_center.cc_bucket_in_queue cbiq ON (((s.queue_id = cbiq.queue_id) AND (s.bucket_id = cbiq.bucket_id))))
     LEFT JOIN LATERAL call_center.cc_member_attempt_log_day_f((s.queue_id)::integer, (s.bucket_id)::integer) log(log) ON ((s.bucket_id IS NOT NULL)))
  WHERE ((s.member_waiting > 0) AND ((
        CASE
            WHEN ((s.bucket_id IS NULL) OR (s.member_waiting < 2)) THEN (s.member_waiting)::bigint
            ELSE (((round((((s.member_count * cbiq.ratio) / 100))::double precision))::integer - COALESCE(log.log, 0)))::bigint
        END)::numeric > (0)::numeric));


--
-- Name: cc_sys_distribute_queue; Type: VIEW; Schema: call_center; Owner: -
--

CREATE VIEW call_center.cc_sys_distribute_queue AS
 SELECT q.domain_id,
    q.id,
    q.type,
    q.strategy,
    q.team_id,
    q.calendar_id,
    cqs.bucket_id,
    cqs.lim AS buckets_cnt,
    cqs.ratio
   FROM (call_center.cc_queue q
     JOIN call_center.cc_sys_distribute_queue_bucket_seg cqs ON ((q.id = cqs.queue_id)))
  WHERE (q.enabled AND (cqs.member_waiting > 0) AND (cqs.lim > 0) AND (q.type > 1))
  ORDER BY q.domain_id, q.priority DESC, cqs.ratio DESC NULLS LAST;


--
-- Name: cc_sys_queue_distribute_resources; Type: VIEW; Schema: call_center; Owner: -
--

CREATE VIEW call_center.cc_sys_queue_distribute_resources AS
 WITH res AS (
         SELECT cqr.queue_id,
            corg.communication_id,
            cor.id,
            cor."limit",
            call_center.cc_outbound_resource_timing(corg."time") AS t
           FROM (((call_center.cc_queue_resource cqr
             JOIN call_center.cc_outbound_resource_group corg ON ((cqr.resource_group_id = corg.id)))
             JOIN call_center.cc_outbound_resource_in_group corig ON ((corg.id = corig.group_id)))
             JOIN call_center.cc_outbound_resource cor ON ((corig.resource_id = cor.id)))
          WHERE (cor.enabled AND (NOT cor.reserve))
          GROUP BY cqr.queue_id, corg.communication_id, corg."time", cor.id, cor."limit"
        )
 SELECT res.queue_id,
    array_agg(DISTINCT ROW(res.communication_id, (res.id)::bigint, res.t)::call_center.cc_sys_distribute_type) AS types,
    array_agg(DISTINCT ROW((res.id)::bigint, ((res."limit" - ac.count))::integer)::call_center.cc_sys_distribute_resource) AS resources,
    array_agg(DISTINCT f.f) AS ran
   FROM res,
    (LATERAL ( SELECT count(*) AS count
           FROM call_center.cc_member_attempt a
          WHERE (a.resource_id = res.id)) ac
     JOIN LATERAL ( SELECT f_1.f
           FROM unnest(res.t) f_1(f)) f ON (true))
  WHERE ((res."limit" - ac.count) > 0)
  GROUP BY res.queue_id;


--
-- Name: cc_sys_resources; Type: VIEW; Schema: call_center; Owner: -
--

CREATE VIEW call_center.cc_sys_resources AS
 WITH res AS (
         SELECT q_1.id AS queue_id,
            corg.communication_id,
            cor.id,
            cor."limit",
            call_center.cc_outbound_resource_timing(corg."time") AS t
           FROM ((((call_center.cc_queue q_1
             JOIN call_center.cc_queue_resource cqr ON ((q_1.id = cqr.queue_id)))
             JOIN call_center.cc_outbound_resource_group corg ON ((cqr.resource_group_id = corg.id)))
             JOIN call_center.cc_outbound_resource_in_group corig ON ((corg.id = corig.group_id)))
             JOIN call_center.cc_outbound_resource cor ON ((corig.resource_id = cor.id)))
          WHERE (q_1.enabled AND cor.enabled AND (NOT cor.reserve))
          GROUP BY q_1.id, q_1.priority, corg.communication_id, corg."time", cor.id, cor."limit"
        )
 SELECT q.domain_id,
    q.id,
    array_agg(DISTINCT ROW(res.communication_id, (res.id)::bigint, res.t)::call_center.cc_sys_distribute_type) AS types,
    array_agg(DISTINCT ROW((res.id)::bigint, res."limit")::call_center.cc_sys_distribute_resource) AS resources,
    array_agg(f.f) AS ran
   FROM ((res
     JOIN LATERAL ( SELECT f_1.f
           FROM unnest(res.t) f_1(f)) f ON (true))
     JOIN call_center.cc_queue q ON ((q.id = res.queue_id)))
  GROUP BY q.domain_id, q.id, q.priority
  ORDER BY q.domain_id, q.priority DESC;


--
-- Name: cc_team; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_team (
    id bigint NOT NULL,
    domain_id bigint NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(500) DEFAULT ''::character varying NOT NULL,
    strategy character varying(20) NOT NULL,
    max_no_answer smallint DEFAULT 0 NOT NULL,
    wrap_up_time smallint DEFAULT 0 NOT NULL,
    reject_delay_time smallint DEFAULT 0 NOT NULL,
    busy_delay_time smallint DEFAULT 0 NOT NULL,
    no_answer_delay_time smallint DEFAULT 0 NOT NULL,
    call_timeout smallint DEFAULT 0 NOT NULL,
    updated_at bigint DEFAULT 0 NOT NULL
);


--
-- Name: cc_team_acl; Type: TABLE; Schema: call_center; Owner: -
--

CREATE TABLE call_center.cc_team_acl (
    id bigint NOT NULL,
    dc bigint NOT NULL,
    grantor bigint NOT NULL,
    subject bigint NOT NULL,
    access smallint DEFAULT 0 NOT NULL,
    object bigint NOT NULL
);


--
-- Name: cc_team_acl_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_team_acl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_team_acl_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_team_acl_id_seq OWNED BY call_center.cc_team_acl.id;


--
-- Name: cc_team_id_seq; Type: SEQUENCE; Schema: call_center; Owner: -
--

CREATE SEQUENCE call_center.cc_team_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_team_id_seq; Type: SEQUENCE OWNED BY; Schema: call_center; Owner: -
--

ALTER SEQUENCE call_center.cc_team_id_seq OWNED BY call_center.cc_team.id;


--
-- Name: cc_vw_members; Type: VIEW; Schema: call_center; Owner: -
--

CREATE VIEW call_center.cc_vw_members AS
 SELECT m.id,
    m.stop_at,
    m.stop_cause,
    m.attempts,
    m.last_hangup_at,
    m.created_at,
    m.queue_id,
    m.priority,
    m.expire_at,
    m.variables,
    m.name,
    call_center.cc_get_lookup((ct.id)::bigint, ct.name) AS timezone,
    call_center.cc_member_communications(m.communications) AS communications,
    call_center.cc_get_lookup(qb.id, ((qb.name)::text)::character varying) AS bucket,
    m.min_offering_at
   FROM ((call_center.cc_member m
     LEFT JOIN call_center.calendar_timezones ct ON ((m.timezone_id = ct.id)))
     LEFT JOIN call_center.cc_bucket qb ON ((m.bucket_id = qb.id)));


--
-- Name: certs; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.certs (
    serial uuid NOT NULL,
    not_before timestamp without time zone,
    not_after timestamp without time zone,
    this_update timestamp without time zone,
    next_update timestamp without time zone,
    cert bytea NOT NULL
);


--
-- Name: contacts; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.contacts (
    id integer NOT NULL,
    dc integer NOT NULL,
    name text NOT NULL,
    number name
);


--
-- Name: contacts_acl; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.contacts_acl (
    dc integer NOT NULL,
    object integer NOT NULL,
    grantor integer,
    subject integer NOT NULL,
    access smallint NOT NULL
);


--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: directory; Owner: -
--

CREATE SEQUENCE directory.contacts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: directory; Owner: -
--

ALTER SEQUENCE directory.contacts_id_seq OWNED BY directory.contacts.id;


--
-- Name: wbt_device; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_device (
    id bigint NOT NULL,
    dc bigint NOT NULL,
    account name NOT NULL,
    password text NOT NULL,
    logged_in timestamp without time zone,
    user_id bigint,
    vendor name,
    model name,
    mac macaddr8,
    ip inet,
    vars jsonb,
    created_at timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL,
    created_by bigint,
    updated_at timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL,
    updated_by bigint,
    deleted_at timestamp without time zone,
    deleted_by bigint,
    name text NOT NULL
);


--
-- Name: device_id_seq; Type: SEQUENCE; Schema: directory; Owner: -
--

CREATE SEQUENCE directory.device_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: device_id_seq; Type: SEQUENCE OWNED BY; Schema: directory; Owner: -
--

ALTER SEQUENCE directory.device_id_seq OWNED BY directory.wbt_device.id;


--
-- Name: license; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.license (
    serial uuid NOT NULL,
    user_id bigint NOT NULL,
    issued_at timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL,
    expires_at timestamp without time zone,
    signature bytea
);


--
-- Name: roles; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.roles (
    id bigint DEFAULT nextval('directory.wbt_auth_id_seq'::regclass) NOT NULL,
    dc bigint NOT NULL,
    name text NOT NULL,
    about text,
    created_at timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL,
    created_by bigint,
    updated_at timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL,
    updated_by bigint,
    deleted_at timestamp without time zone,
    deleted_by bigint
);


--
-- Name: sip_gateway; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.sip_gateway (
    id bigint NOT NULL,
    dc bigint,
    name character varying(255) NOT NULL,
    usage text,
    host character varying(255) NOT NULL,
    proxy character varying(255) NOT NULL,
    enable boolean DEFAULT false NOT NULL,
    register boolean DEFAULT false NOT NULL,
    account character varying(255),
    username character varying(64),
    password character varying(64),
    expires integer,
    binding_uri character varying(255),
    binding_params character varying(64),
    registrar character varying(255),
    r_state integer DEFAULT 0 NOT NULL,
    r_sent timestamp without time zone,
    r_next timestamp without time zone,
    r_sync timestamp without time zone,
    scheme_id bigint,
    envar jsonb
);


--
-- Name: COLUMN sip_gateway.host; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.sip_gateway.host IS 'opensips.registrar.sip: host[:port] local realm';


--
-- Name: COLUMN sip_gateway.proxy; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.sip_gateway.proxy IS 'opensips.registrant.registrar: [INVITE|REGISTER] remote realm';


--
-- Name: COLUMN sip_gateway.account; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.sip_gateway.account IS 'opensips.registrant.aor: register.to';


--
-- Name: COLUMN sip_gateway.registrar; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.sip_gateway.registrar IS 'opensips.registrant.registrar: [REGISTER] proxy';


--
-- Name: COLUMN sip_gateway.r_state; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.sip_gateway.r_state IS 'opensips.registrant.state';


--
-- Name: COLUMN sip_gateway.r_sent; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.sip_gateway.r_sent IS 'opensips.registrant.last_register_sent';


--
-- Name: COLUMN sip_gateway.r_next; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.sip_gateway.r_next IS 'opensips.registrant.registration_t_out';


--
-- Name: sip_gateway_allow; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.sip_gateway_allow (
    id bigint NOT NULL,
    ip inet NOT NULL,
    port smallint DEFAULT 0 NOT NULL,
    proto character varying(4) DEFAULT 'any'::character varying NOT NULL
);


--
-- Name: sip_address_allow; Type: VIEW; Schema: directory; Owner: -
--

CREATE VIEW directory.sip_address_allow AS
 SELECT sv.id,
    sv.dc,
    sv.host,
    (sa.ip)::cidr AS cidr,
    sa.port,
    sa.proto,
    1 AS grp,
    (host(sa.ip))::character varying(50) AS ip,
    (masklen(sa.ip))::smallint AS mask,
    NULL::character varying(64) AS pattern,
    NULL::character varying(32) AS context_info
   FROM (directory.sip_gateway sv
     JOIN directory.sip_gateway_allow sa USING (id))
  WHERE (sv.enable AND (NOT sv.register));


--
-- Name: sip_gateway_id_seq; Type: SEQUENCE; Schema: directory; Owner: -
--

CREATE SEQUENCE directory.sip_gateway_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: sip_gateway_id_seq; Type: SEQUENCE OWNED BY; Schema: directory; Owner: -
--

ALTER SEQUENCE directory.sip_gateway_id_seq OWNED BY directory.sip_gateway.id;


--
-- Name: sip_gateway_register; Type: TABLE; Schema: directory; Owner: -
--

CREATE UNLOGGED TABLE directory.sip_gateway_register (
    id bigint NOT NULL,
    attempt smallint DEFAULT 0 NOT NULL,
    state smallint DEFAULT 0 NOT NULL,
    sync timestamp without time zone,
    last timestamp without time zone,
    next timestamp without time zone,
    ip inet
);


--
-- Name: COLUMN sip_gateway_register.state; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.sip_gateway_register.state IS 'registration state';


--
-- Name: COLUMN sip_gateway_register.sync; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.sip_gateway_register.sync IS 'last state updated';


--
-- Name: COLUMN sip_gateway_register.last; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.sip_gateway_register.last IS 'last register sent';


--
-- Name: COLUMN sip_gateway_register.next; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.sip_gateway_register.next IS 'next register send';


--
-- Name: sip_registrant; Type: VIEW; Schema: directory; Owner: -
--

CREATE VIEW directory.sip_registrant AS
 SELECT sip_gateway.id,
    sip_gateway.dc,
    sip_gateway.registrar,
    NULLIF(('sip:'::text || (sip_gateway.proxy)::text), (sip_gateway.registrar)::text) AS proxy,
    sip_gateway.account AS aor,
    NULL::text AS third_party_registrant,
    COALESCE(sip_gateway.username, 'anonymous'::character varying) AS username,
    sip_gateway.password,
    sip_gateway.binding_uri,
    sip_gateway.binding_params,
    sip_gateway.expires,
    COALESCE((sip_gateway_register.state)::integer, 0) AS state,
    NULL::text AS forced_socket,
    NULL::text AS cluster_shtag
   FROM (directory.sip_gateway
     LEFT JOIN directory.sip_gateway_register USING (id))
  WHERE (sip_gateway.enable AND sip_gateway.register);


--
-- Name: users; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.users (
    username name NOT NULL,
    password name NOT NULL,
    extension name,
    profile jsonb,
    online integer DEFAULT 0 NOT NULL,
    status text,
    dnd boolean DEFAULT false NOT NULL
)
INHERITS (directory.roles);


--
-- Name: voip_session; Type: TABLE; Schema: directory; Owner: -
--

CREATE UNLOGGED TABLE directory.voip_session (
    uuid uuid NOT NULL,
    hostname name,
    created_at timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL,
    caller_uuid uuid,
    callee_uuid uuid
)
WITH (fillfactor='20', log_autovacuum_min_duration='0', autovacuum_vacuum_scale_factor='0.01', autovacuum_analyze_scale_factor='0.05', autovacuum_enabled='1', autovacuum_vacuum_cost_delay='20');


--
-- Name: wbt_auth_acl; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_auth_acl (
    dc bigint NOT NULL,
    grantor bigint,
    subject bigint NOT NULL,
    object bigint NOT NULL,
    access smallint NOT NULL
);


--
-- Name: TABLE wbt_auth_acl; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON TABLE directory.wbt_auth_acl IS 'Roles [R]ecord-[b]ased [A]ccess [C]ontrol List';


--
-- Name: COLUMN wbt_auth_acl.access; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.wbt_auth_acl.access IS 'AccessLvl[0x77]: [ ---- ---- -RUD -RUD ]
Grantable[0x70]: [ -RUD ---- ]
Privilege[0x07]: [ ---- -RUD ]';


--
-- Name: wbt_auth_grants; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_auth_grants (
    dc integer NOT NULL,
    role_id integer NOT NULL,
    grant_id integer NOT NULL
);


--
-- Name: TABLE wbt_auth_grants; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON TABLE directory.wbt_auth_grants IS 'Role mandatory privileges';


--
-- Name: wbt_auth_member; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_auth_member (
    dc integer NOT NULL,
    role_id integer NOT NULL,
    member_id integer NOT NULL,
    role_admin boolean DEFAULT false NOT NULL
);


--
-- Name: TABLE wbt_auth_member; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON TABLE directory.wbt_auth_member IS 'Webitel Group of members';


--
-- Name: wbt_cert_v0; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_cert_v0 (
    serial bigint NOT NULL,
    valid_from timestamp without time zone,
    valid_till timestamp without time zone,
    this_update timestamp without time zone NOT NULL,
    next_update timestamp without time zone,
    certificate bytea NOT NULL
);


--
-- Name: wbt_class; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_class (
    id integer NOT NULL,
    dc integer,
    name name NOT NULL,
    abac boolean DEFAULT false NOT NULL,
    obac boolean DEFAULT false NOT NULL,
    rbac boolean DEFAULT false NOT NULL,
    usage text
);


--
-- Name: TABLE wbt_class; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON TABLE directory.wbt_class IS 'Webitel Object Classes';


--
-- Name: COLUMN wbt_class.dc; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.wbt_class.dc IS 'NULL means default settings';


--
-- Name: COLUMN wbt_class.abac; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.wbt_class.abac IS '[a]ttribute-[b]ased [a]ccess [c]ontrol';


--
-- Name: COLUMN wbt_class.obac; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.wbt_class.obac IS '[o]peration-[b]ased [a]ccess [c]ontrol';


--
-- Name: COLUMN wbt_class.rbac; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.wbt_class.rbac IS '[r]ecord-[b]ased [a]ccess [c]ontrol';


--
-- Name: wbt_class_acl; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_class_acl (
    dc integer NOT NULL,
    object integer NOT NULL,
    grantor integer,
    subject integer NOT NULL,
    access smallint NOT NULL
);


--
-- Name: TABLE wbt_class_acl; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON TABLE directory.wbt_class_acl IS 'Object Class Access List';


--
-- Name: COLUMN wbt_class_acl.access; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.wbt_class_acl.access IS 'access level mask: [ ---- ---- ---- crud ]';


--
-- Name: wbt_class_id_seq; Type: SEQUENCE; Schema: directory; Owner: -
--

CREATE SEQUENCE directory.wbt_class_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wbt_class_id_seq; Type: SEQUENCE OWNED BY; Schema: directory; Owner: -
--

ALTER SEQUENCE directory.wbt_class_id_seq OWNED BY directory.wbt_class.id;


--
-- Name: wbt_customer; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_customer (
    id uuid NOT NULL,
    created_at timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL,
    updated_at timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL,
    deleted_at timestamp without time zone,
    issued_at timestamp without time zone NOT NULL,
    not_before timestamp without time zone NOT NULL,
    not_after timestamp without time zone NOT NULL,
    this_update timestamp without time zone,
    next_update timestamp without time zone,
    competitive integer DEFAULT 0 NOT NULL,
    organization text,
    logo text,
    cert bytea NOT NULL
);


--
-- Name: wbt_device_acl; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_device_acl (
    dc integer NOT NULL,
    grantor integer,
    subject integer NOT NULL,
    object integer NOT NULL,
    access smallint NOT NULL
);


--
-- Name: TABLE wbt_device_acl; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON TABLE directory.wbt_device_acl IS 'Device [R]ecord-[b]ased [A]ccess [C]ontrol List';


--
-- Name: COLUMN wbt_device_acl.access; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON COLUMN directory.wbt_device_acl.access IS 'AccessLvl[0x77]: [ ---- ---- -RUD -RUD ]
Grantable[0x70]: [ -RUD ---- ]
Privilege[0x07]: [ ---- -RUD ]';


--
-- Name: wbt_device_audit; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_device_audit (
    dc bigint NOT NULL,
    hotdesk name,
    user_id bigint,
    username text NOT NULL,
    device_id bigint,
    account text NOT NULL,
    logged_in timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL,
    logged_out timestamp without time zone
);


--
-- Name: wbt_device_audit_revoke; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_device_audit_revoke (
    dc bigint NOT NULL,
    hotdesk name,
    user_id bigint,
    device_id bigint NOT NULL,
    logged_in timestamp without time zone DEFAULT LOCALTIMESTAMP NOT NULL,
    logged_out timestamp without time zone
);


--
-- Name: wbt_domain; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_domain (
    dc bigint NOT NULL,
    name character varying(255) NOT NULL,
    organization text,
    country name,
    locality name,
    province name,
    street text,
    timezone_id bigint,
    customer_id uuid NOT NULL
);


--
-- Name: TABLE wbt_domain; Type: COMMENT; Schema: directory; Owner: -
--

COMMENT ON TABLE directory.wbt_domain IS 'Webitel Organizational Domains';


--
-- Name: wbt_grant; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_grant (
    uuid bigint NOT NULL,
    code name NOT NULL
);


--
-- Name: wbt_grant_id_seq; Type: SEQUENCE; Schema: directory; Owner: -
--

CREATE SEQUENCE directory.wbt_grant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wbt_grant_id_seq; Type: SEQUENCE OWNED BY; Schema: directory; Owner: -
--

ALTER SEQUENCE directory.wbt_grant_id_seq OWNED BY directory.wbt_grant.uuid;


--
-- Name: wbt_hotdesk; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_hotdesk (
    dc bigint NOT NULL,
    name name NOT NULL,
    device_id bigint NOT NULL
);


--
-- Name: wbt_license; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_license (
    serial uuid NOT NULL,
    user_id bigint NOT NULL
);


--
-- Name: wbt_session; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_session (
    uuid uuid DEFAULT gen_random_uuid() NOT NULL,
    scope name[],
    user_id integer,
    domain_id integer,
    client_id name,
    network_ip inet,
    redirect_uri text,
    code text,
    access text,
    refresh text,
    accessed timestamp without time zone,
    created timestamp without time zone,
    rotated timestamp without time zone,
    expires timestamp without time zone,
    max_age timestamp without time zone,
    props jsonb
);


--
-- Name: location; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.location (
    contact_id bigint NOT NULL,
    username character varying(64) DEFAULT ''::character varying NOT NULL,
    domain character varying(64) DEFAULT NULL::character varying,
    contact character varying(255) DEFAULT ''::character varying NOT NULL,
    received character varying(255) DEFAULT NULL::character varying,
    path character varying(255) DEFAULT NULL::character varying,
    expires integer NOT NULL,
    q real DEFAULT 1.0 NOT NULL,
    callid character varying(255) DEFAULT 'Default-Call-ID'::character varying NOT NULL,
    cseq integer DEFAULT 13 NOT NULL,
    last_modified timestamp without time zone DEFAULT '1900-01-01 00:00:01'::timestamp without time zone NOT NULL,
    flags integer DEFAULT 0 NOT NULL,
    cflags character varying(255) DEFAULT NULL::character varying,
    user_agent character varying(255) DEFAULT ''::character varying NOT NULL,
    socket character varying(64) DEFAULT NULL::character varying,
    methods integer,
    sip_instance character varying(255) DEFAULT NULL::character varying,
    kv_store text,
    attr character varying(255) DEFAULT NULL::character varying,
    device_id character varying(255)
);


--
-- Name: wbt_subscriber; Type: VIEW; Schema: directory; Owner: -
--

CREATE VIEW directory.wbt_subscriber AS
 SELECT a.dc,
    a.id AS oid,
    u.id AS uid,
    lower((r.name)::text) AS realm,
    a.account AS auth_id,
    COALESCE(u.username, a.account) AS user_id,
    COALESCE(n.name, (u.extension)::text, (a.account)::text) AS caller_id_name,
    md5((((((a.account)::text || ':'::text) || (r.name)::text) || ':'::text) || a.password)) AS digest_ha1,
    loc.contacts
   FROM ((((directory.wbt_device a
     JOIN directory.wbt_domain r USING (dc))
     LEFT JOIN directory.wbt_user u ON ((a.user_id = u.id)))
     LEFT JOIN directory.wbt_auth n ON ((a.user_id = n.id)))
     CROSS JOIN LATERAL ( SELECT count(c.contact_id) AS contacts
           FROM public.location c
          WHERE ((lower((c.domain)::text) = lower((r.name)::text)) AND ((c.attr)::text = a.account))) loc)
  WHERE ((a.deleted_at IS NULL) AND ((a.user_id IS NOT NULL) OR (EXISTS ( SELECT
           FROM directory.wbt_hotdesk
          WHERE (wbt_hotdesk.device_id = a.id)))));


--
-- Name: wbt_user_id_seq; Type: SEQUENCE; Schema: directory; Owner: -
--

CREATE SEQUENCE directory.wbt_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wbt_user_id_seq; Type: SEQUENCE OWNED BY; Schema: directory; Owner: -
--

ALTER SEQUENCE directory.wbt_user_id_seq OWNED BY directory.wbt_user.id;


--
-- Name: wbt_user_token; Type: TABLE; Schema: directory; Owner: -
--

CREATE TABLE directory.wbt_user_token (
    id uuid NOT NULL,
    dc bigint NOT NULL,
    token name NOT NULL,
    usage text,
    user_id bigint NOT NULL,
    created_at timestamp without time zone DEFAULT LOCALTIMESTAMP,
    created_by bigint,
    updated_at timestamp without time zone DEFAULT LOCALTIMESTAMP,
    updated_by bigint,
    deleted_at timestamp without time zone,
    deleted_by bigint
);


--
-- Name: wbt_auth; Type: TABLE; Schema: permissions; Owner: -
--

CREATE TABLE permissions.wbt_auth (
    id integer NOT NULL,
    name name NOT NULL,
    dc integer NOT NULL,
    can_login boolean DEFAULT false NOT NULL
);


--
-- Name: wbt_auth_id_seq; Type: SEQUENCE; Schema: permissions; Owner: -
--

CREATE SEQUENCE permissions.wbt_auth_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wbt_auth_id_seq; Type: SEQUENCE OWNED BY; Schema: permissions; Owner: -
--

ALTER SEQUENCE permissions.wbt_auth_id_seq OWNED BY permissions.wbt_auth.id;


--
-- Name: wbt_auth_member; Type: TABLE; Schema: permissions; Owner: -
--

CREATE TABLE permissions.wbt_auth_member (
    dc integer NOT NULL,
    role_id integer NOT NULL,
    member_id integer NOT NULL
);


--
-- Name: wbt_domain; Type: TABLE; Schema: permissions; Owner: -
--

CREATE TABLE permissions.wbt_domain (
    dc integer NOT NULL,
    name name NOT NULL
);


--
-- Name: wbt_domain_id_seq; Type: SEQUENCE; Schema: permissions; Owner: -
--

CREATE SEQUENCE permissions.wbt_domain_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wbt_domain_id_seq; Type: SEQUENCE OWNED BY; Schema: permissions; Owner: -
--

ALTER SEQUENCE permissions.wbt_domain_id_seq OWNED BY permissions.wbt_domain.dc;


--
-- Name: wbt_module_id_seq; Type: SEQUENCE; Schema: permissions; Owner: -
--

CREATE SEQUENCE permissions.wbt_module_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wbt_module; Type: TABLE; Schema: permissions; Owner: -
--

CREATE TABLE permissions.wbt_module (
    dc integer,
    id integer DEFAULT nextval('permissions.wbt_module_id_seq'::regclass) NOT NULL,
    name name,
    acl permissions.acrule[]
);


--
-- Name: wbt_module_privileges; Type: VIEW; Schema: permissions; Owner: -
--

CREATE VIEW permissions.wbt_module_privileges AS
 SELECT m.dc,
    m.id,
    m.name,
    acl.grantor,
    acl.grantee,
    acl.privilege_type,
    acl.is_grantable
   FROM (permissions.wbt_module m
     CROSS JOIN LATERAL ( SELECT g.name AS grantor,
            s.name AS grantee,
            c.privilege_type,
            c.is_grantable
           FROM ((permissions.wbt_acl_explore(COALESCE(m.acl, ARRAY[ROW(m.dc, m.dc, (15)::smallint)::permissions.acrule])) c(grantor, grantee, privilege_type, is_grantable)
             JOIN permissions.wbt_auth g ON (((g.dc = m.dc) AND (g.id = c.grantor))))
             JOIN permissions.wbt_auth s ON (((s.dc = m.dc) AND (s.id = c.grantee))))) acl);


--
-- Name: wbt_session; Type: TABLE; Schema: permissions; Owner: -
--

CREATE TABLE permissions.wbt_session (
    id bigint NOT NULL,
    scope text[],
    user_id integer,
    domain_id integer,
    client_id text,
    network_ip inet,
    redirect_uri text,
    code text,
    access text,
    refresh text,
    accessed timestamp without time zone,
    created timestamp without time zone,
    rotated timestamp without time zone,
    expires timestamp without time zone,
    max_age timestamp without time zone
);


--
-- Name: wbt_test_acl; Type: TABLE; Schema: permissions; Owner: -
--

CREATE TABLE permissions.wbt_test_acl (
    id bigint NOT NULL,
    module_id integer NOT NULL,
    role_id integer NOT NULL,
    can_read boolean DEFAULT false NOT NULL,
    new_column integer,
    acl integer[] NOT NULL
);


--
-- Name: wbt_test_acl_id_seq; Type: SEQUENCE; Schema: permissions; Owner: -
--

CREATE SEQUENCE permissions.wbt_test_acl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: wbt_test_acl_id_seq; Type: SEQUENCE OWNED BY; Schema: permissions; Owner: -
--

ALTER SEQUENCE permissions.wbt_test_acl_id_seq OWNED BY permissions.wbt_test_acl.id;


--
-- Name: acc; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.acc (
    id integer NOT NULL,
    method character varying(16) DEFAULT ''::character varying NOT NULL,
    from_tag character varying(64) DEFAULT ''::character varying NOT NULL,
    to_tag character varying(64) DEFAULT ''::character varying NOT NULL,
    callid character varying(64) DEFAULT ''::character varying NOT NULL,
    sip_code character varying(3) DEFAULT ''::character varying NOT NULL,
    sip_reason character varying(32) DEFAULT ''::character varying NOT NULL,
    "time" timestamp without time zone NOT NULL,
    duration integer DEFAULT 0 NOT NULL,
    ms_duration integer DEFAULT 0 NOT NULL,
    setuptime integer DEFAULT 0 NOT NULL,
    created timestamp without time zone
);


--
-- Name: acc_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.acc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: acc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.acc_id_seq OWNED BY public.acc.id;


--
-- Name: active_watchers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.active_watchers (
    id integer NOT NULL,
    presentity_uri character varying(255) NOT NULL,
    watcher_username character varying(64) NOT NULL,
    watcher_domain character varying(64) NOT NULL,
    to_user character varying(64) NOT NULL,
    to_domain character varying(64) NOT NULL,
    event character varying(64) DEFAULT 'presence'::character varying NOT NULL,
    event_id character varying(64),
    to_tag character varying(64) NOT NULL,
    from_tag character varying(64) NOT NULL,
    callid character varying(64) NOT NULL,
    local_cseq integer NOT NULL,
    remote_cseq integer NOT NULL,
    contact character varying(255) NOT NULL,
    record_route text,
    expires integer NOT NULL,
    status integer DEFAULT 2 NOT NULL,
    reason character varying(64),
    version integer DEFAULT 0 NOT NULL,
    socket_info character varying(64) NOT NULL,
    local_contact character varying(255) NOT NULL,
    sharing_tag character varying(32) DEFAULT NULL::character varying
);


--
-- Name: active_watchers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.active_watchers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: active_watchers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.active_watchers_id_seq OWNED BY public.active_watchers.id;


--
-- Name: address; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.address (
    id integer NOT NULL,
    grp smallint DEFAULT 0 NOT NULL,
    ip character varying(50) NOT NULL,
    mask smallint DEFAULT 32 NOT NULL,
    port smallint DEFAULT 0 NOT NULL,
    proto character varying(4) DEFAULT 'any'::character varying NOT NULL,
    pattern character varying(64) DEFAULT NULL::character varying,
    context_info character varying(32) DEFAULT NULL::character varying
);


--
-- Name: address_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: address_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.address_id_seq OWNED BY public.address.id;


--
-- Name: b2b_entities; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.b2b_entities (
    id integer NOT NULL,
    type integer NOT NULL,
    state integer NOT NULL,
    ruri character varying(255),
    from_uri character varying(255) NOT NULL,
    to_uri character varying(255) NOT NULL,
    from_dname character varying(64),
    to_dname character varying(64),
    tag0 character varying(64) NOT NULL,
    tag1 character varying(64),
    callid character varying(64) NOT NULL,
    cseq0 integer NOT NULL,
    cseq1 integer,
    contact0 character varying(255) NOT NULL,
    contact1 character varying(255),
    route0 text,
    route1 text,
    sockinfo_srv character varying(64),
    param character varying(255) NOT NULL,
    lm integer NOT NULL,
    lrc integer,
    lic integer,
    leg_cseq integer,
    leg_route text,
    leg_tag character varying(64),
    leg_contact character varying(255),
    leg_sockinfo character varying(255)
);


--
-- Name: b2b_entities_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.b2b_entities_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: b2b_entities_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.b2b_entities_id_seq OWNED BY public.b2b_entities.id;


--
-- Name: b2b_logic; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.b2b_logic (
    id integer NOT NULL,
    si_key character varying(64) NOT NULL,
    scenario character varying(64),
    sstate integer NOT NULL,
    next_sstate integer NOT NULL,
    sparam0 character varying(64),
    sparam1 character varying(64),
    sparam2 character varying(64),
    sparam3 character varying(64),
    sparam4 character varying(64),
    sdp text,
    lifetime integer DEFAULT 0 NOT NULL,
    e1_type integer NOT NULL,
    e1_sid character varying(64),
    e1_from character varying(255) NOT NULL,
    e1_to character varying(255) NOT NULL,
    e1_key character varying(64) NOT NULL,
    e2_type integer NOT NULL,
    e2_sid character varying(64),
    e2_from character varying(255) NOT NULL,
    e2_to character varying(255) NOT NULL,
    e2_key character varying(64) NOT NULL,
    e3_type integer,
    e3_sid character varying(64),
    e3_from character varying(255),
    e3_to character varying(255),
    e3_key character varying(64)
);


--
-- Name: b2b_logic_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.b2b_logic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: b2b_logic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.b2b_logic_id_seq OWNED BY public.b2b_logic.id;


--
-- Name: cachedb; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cachedb (
    keyname character varying(255) NOT NULL,
    value text NOT NULL,
    counter integer DEFAULT 0 NOT NULL,
    expires integer DEFAULT 0 NOT NULL
);


--
-- Name: calendar; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.calendar (
    id integer NOT NULL,
    timezone character varying(15) DEFAULT 'utc'::character varying NOT NULL,
    start integer,
    finish integer,
    name character varying(20) NOT NULL,
    domain_id integer
);


--
-- Name: calendar_accept_of_day; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.calendar_accept_of_day (
    id integer NOT NULL,
    calendar_id integer NOT NULL,
    week_day smallint NOT NULL,
    start_time_of_day smallint DEFAULT 0 NOT NULL,
    end_time_of_day smallint DEFAULT 1440 NOT NULL
);


--
-- Name: calendar_accept_of_day_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.calendar_accept_of_day_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: calendar_accept_of_day_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.calendar_accept_of_day_id_seq OWNED BY public.calendar_accept_of_day.id;


--
-- Name: calendar_except; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.calendar_except (
    id integer NOT NULL,
    calendar_id integer NOT NULL,
    date integer NOT NULL,
    repeat smallint
);


--
-- Name: calendar_except_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.calendar_except_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: calendar_except_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.calendar_except_id_seq OWNED BY public.calendar_except.id;


--
-- Name: calendar_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.calendar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: calendar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.calendar_id_seq OWNED BY public.calendar.id;


--
-- Name: callback_calls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.callback_calls (
    id bigint NOT NULL,
    member_id bigint NOT NULL,
    created_by character varying(50) NOT NULL,
    created_at bigint
);


--
-- Name: callback_calls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.callback_calls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: callback_calls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.callback_calls_id_seq OWNED BY public.callback_calls.id;


--
-- Name: callback_members; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.callback_members (
    id integer NOT NULL,
    number character varying(50) NOT NULL,
    href character varying(255),
    user_agent character varying(300),
    location jsonb,
    domain character varying(70) NOT NULL,
    queue_id integer NOT NULL,
    done boolean,
    done_by character varying(100),
    callback_time bigint,
    widget_id integer,
    done_at bigint,
    created_on timestamp without time zone DEFAULT (now())::timestamp without time zone,
    request_ip character varying(50),
    logs jsonb
);


--
-- Name: callback_members_comment; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.callback_members_comment (
    id integer NOT NULL,
    created_by character varying(100) NOT NULL,
    text text NOT NULL,
    created_on bigint NOT NULL,
    member_id integer NOT NULL
);


--
-- Name: callback_members_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.callback_members_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: callback_members_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.callback_members_comment_id_seq OWNED BY public.callback_members_comment.id;


--
-- Name: callback_members_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.callback_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: callback_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.callback_members_id_seq OWNED BY public.callback_members.id;


--
-- Name: callback_queue; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.callback_queue (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(250),
    domain character varying(70) NOT NULL,
    agents character varying(100)[]
);


--
-- Name: callback_queue_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.callback_queue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: callback_queue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.callback_queue_id_seq OWNED BY public.callback_queue.id;


--
-- Name: callflow_default; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.callflow_default (
    id integer NOT NULL,
    destination_number character varying(120) NOT NULL,
    name character varying(120) NOT NULL,
    "order" integer NOT NULL,
    disabled boolean DEFAULT false,
    debug boolean DEFAULT false,
    domain character varying(75) NOT NULL,
    fs_timezone character varying(35),
    callflow json,
    callflow_on_disconnect json,
    cf_diagram json,
    version smallint DEFAULT 2,
    call_count bigint DEFAULT 0,
    description character varying(500),
    dc bigint NOT NULL,
    CONSTRAINT callflow_default_check_destination_number_cs CHECK ((public.callflow_default_check_destination_number(destination_number) = true))
);


--
-- Name: callflow_default_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.callflow_default_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: callflow_default_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.callflow_default_id_seq OWNED BY public.callflow_default.id;


--
-- Name: callflow_extension; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.callflow_extension (
    id integer NOT NULL,
    destination_number character varying(50) NOT NULL,
    domain character varying(75) NOT NULL,
    user_id character varying(120) NOT NULL,
    name character varying(75),
    version smallint DEFAULT 2,
    callflow json,
    callflow_on_disconnect json,
    cf_diagram json,
    fs_timezone character varying(35),
    dc bigint NOT NULL
);


--
-- Name: callflow_extension_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.callflow_extension_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: callflow_extension_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.callflow_extension_id_seq OWNED BY public.callflow_extension.id;


--
-- Name: callflow_public_1; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.callflow_public_1 (
    id integer NOT NULL,
    destination_number character varying(120)[],
    name character varying(120) NOT NULL,
    disabled boolean DEFAULT false,
    domain character varying(75) NOT NULL,
    fs_timezone character varying(35),
    callflow json,
    callflow_on_disconnect json,
    cf_diagram json,
    call_count bigint DEFAULT 0,
    version smallint DEFAULT 2,
    description character varying(500),
    debug boolean DEFAULT false,
    dc bigint NOT NULL
);


--
-- Name: callflow_public_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.callflow_public_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: callflow_public_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.callflow_public_id_seq OWNED BY public.callflow_public_1.id;


--
-- Name: callflow_variables; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.callflow_variables (
    id integer NOT NULL,
    domain character varying(75) NOT NULL,
    variables jsonb,
    dc bigint NOT NULL
);


--
-- Name: callflow_variables_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.callflow_variables_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: callflow_variables_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.callflow_variables_id_seq OWNED BY public.callflow_variables.id;


--
-- Name: carrierfailureroute; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.carrierfailureroute (
    id integer NOT NULL,
    carrier integer DEFAULT 0 NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    scan_prefix character varying(64) DEFAULT ''::character varying NOT NULL,
    host_name character varying(255) DEFAULT ''::character varying NOT NULL,
    reply_code character varying(3) DEFAULT ''::character varying NOT NULL,
    flags integer DEFAULT 0 NOT NULL,
    mask integer DEFAULT 0 NOT NULL,
    next_domain character varying(64) DEFAULT ''::character varying NOT NULL,
    description character varying(255) DEFAULT NULL::character varying
);


--
-- Name: carrierfailureroute_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.carrierfailureroute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: carrierfailureroute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.carrierfailureroute_id_seq OWNED BY public.carrierfailureroute.id;


--
-- Name: carrierroute; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.carrierroute (
    id integer NOT NULL,
    carrier integer DEFAULT 0 NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    scan_prefix character varying(64) DEFAULT ''::character varying NOT NULL,
    flags integer DEFAULT 0 NOT NULL,
    mask integer DEFAULT 0 NOT NULL,
    prob real DEFAULT 0 NOT NULL,
    strip integer DEFAULT 0 NOT NULL,
    rewrite_host character varying(255) DEFAULT ''::character varying NOT NULL,
    rewrite_prefix character varying(64) DEFAULT ''::character varying NOT NULL,
    rewrite_suffix character varying(64) DEFAULT ''::character varying NOT NULL,
    description character varying(255) DEFAULT NULL::character varying
);


--
-- Name: carrierroute_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.carrierroute_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: carrierroute_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.carrierroute_id_seq OWNED BY public.carrierroute.id;


--
-- Name: cc_agent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_agent (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    max_no_answer integer DEFAULT 0 NOT NULL,
    wrap_up_time integer DEFAULT 0 NOT NULL,
    reject_delay_time integer DEFAULT 0 NOT NULL,
    busy_delay_time integer DEFAULT 0 NOT NULL,
    no_answer_delay_time integer DEFAULT 0 NOT NULL,
    user_id bigint,
    updated_at bigint DEFAULT 0 NOT NULL,
    destination character varying(50) DEFAULT 'error/USER_BUSY'::character varying NOT NULL,
    call_timeout integer DEFAULT 0 NOT NULL,
    status character varying(20) DEFAULT ''::character varying NOT NULL,
    status_payload jsonb,
    state character varying(20) DEFAULT '_none_'::character varying NOT NULL,
    state_timeout timestamp without time zone
);


--
-- Name: cc_agent_activity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_agent_activity (
    id integer NOT NULL,
    agent_id bigint NOT NULL,
    last_bridge_start_at bigint DEFAULT 0 NOT NULL,
    last_bridge_end_at bigint DEFAULT 0 NOT NULL,
    last_offering_call_at bigint DEFAULT 0,
    calls_abandoned integer DEFAULT 0 NOT NULL,
    calls_answered integer DEFAULT 0 NOT NULL,
    sum_talking_of_day bigint DEFAULT 0 NOT NULL,
    sum_pause_of_day bigint DEFAULT 0 NOT NULL,
    successively_no_answers smallint DEFAULT 0 NOT NULL,
    last_answer_at bigint DEFAULT 0 NOT NULL,
    sum_idle_of_day bigint DEFAULT 0 NOT NULL
);


--
-- Name: cc_agent_activity_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_agent_activity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_agent_activity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_agent_activity_id_seq OWNED BY public.cc_agent_activity.id;


--
-- Name: cc_agent_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_agent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_agent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_agent_id_seq OWNED BY public.cc_agent.id;


--
-- Name: cc_agent_in_queue; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_agent_in_queue (
    id integer NOT NULL,
    agent_id integer,
    queue_id integer NOT NULL,
    skill_id integer,
    lvl smallint DEFAULT 0 NOT NULL
);


--
-- Name: cc_agent_in_queue_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_agent_in_queue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_agent_in_queue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_agent_in_queue_id_seq OWNED BY public.cc_agent_in_queue.id;


--
-- Name: cc_agent_state_history; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_agent_state_history (
    id bigint NOT NULL,
    agent_id bigint NOT NULL,
    joined_at timestamp without time zone DEFAULT now() NOT NULL,
    state character varying(20) NOT NULL,
    timeout_at timestamp without time zone,
    payload jsonb
);


--
-- Name: cc_agent_state_history_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_agent_state_history_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_agent_state_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_agent_state_history_id_seq OWNED BY public.cc_agent_state_history.id;


--
-- Name: cc_agents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_agents (
    id integer NOT NULL,
    agentid character varying(128) NOT NULL,
    location character varying(128) NOT NULL,
    logstate integer DEFAULT 0 NOT NULL,
    skills character varying(255) NOT NULL,
    last_call_end integer DEFAULT 0 NOT NULL
);


--
-- Name: cc_agents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_agents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: cc_agents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_agents_id_seq OWNED BY public.cc_agents.id;


--
-- Name: cc_calls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_calls (
    id integer NOT NULL,
    state integer NOT NULL,
    ig_cback integer NOT NULL,
    no_rej integer NOT NULL,
    setup_time integer NOT NULL,
    eta integer NOT NULL,
    last_start integer NOT NULL,
    recv_time integer NOT NULL,
    caller_dn character varying(128) NOT NULL,
    caller_un character varying(128) NOT NULL,
    b2buaid character varying(128) DEFAULT ''::character varying NOT NULL,
    flow character varying(128) NOT NULL,
    agent character varying(128) NOT NULL
);


--
-- Name: cc_calls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_calls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: cc_calls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_calls_id_seq OWNED BY public.cc_calls.id;


--
-- Name: cc_cdrs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_cdrs (
    id integer NOT NULL,
    caller character varying(64) NOT NULL,
    received_timestamp timestamp without time zone NOT NULL,
    wait_time integer DEFAULT 0 NOT NULL,
    pickup_time integer DEFAULT 0 NOT NULL,
    talk_time integer DEFAULT 0 NOT NULL,
    flow_id character varying(128) NOT NULL,
    agent_id character varying(128) DEFAULT NULL::character varying,
    call_type integer DEFAULT '-1'::integer NOT NULL,
    rejected integer DEFAULT 0 NOT NULL,
    fstats integer DEFAULT 0 NOT NULL,
    cid integer DEFAULT 0
);


--
-- Name: cc_cdrs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_cdrs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: cc_cdrs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_cdrs_id_seq OWNED BY public.cc_cdrs.id;


--
-- Name: cc_cluster; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_cluster (
    id bigint NOT NULL,
    node_name character varying(20) NOT NULL,
    updated_at bigint NOT NULL,
    master boolean NOT NULL,
    started_at bigint DEFAULT 0 NOT NULL
);


--
-- Name: cc_cluster_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_cluster_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_cluster_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_cluster_id_seq OWNED BY public.cc_cluster.id;


--
-- Name: cc_communication; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_communication (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    code character varying(10) NOT NULL,
    type character varying(5)
);


--
-- Name: cc_communication_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_communication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_communication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_communication_id_seq OWNED BY public.cc_communication.id;


--
-- Name: cc_flows; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_flows (
    id integer NOT NULL,
    flowid character varying(64) NOT NULL,
    priority integer DEFAULT 256 NOT NULL,
    skill character varying(64) NOT NULL,
    prependcid character varying(32) NOT NULL,
    message_welcome character varying(128) DEFAULT NULL::character varying,
    message_queue character varying(128) NOT NULL
);


--
-- Name: cc_flows_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_flows_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: cc_flows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_flows_id_seq OWNED BY public.cc_flows.id;


--
-- Name: cc_list; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_list (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    type integer DEFAULT 0 NOT NULL,
    description character varying(20),
    domain_id integer NOT NULL
);


--
-- Name: cc_list_communications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_list_communications (
    list_id bigint NOT NULL,
    number character varying(25) NOT NULL,
    id bigint NOT NULL
);


--
-- Name: cc_list_communications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_list_communications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_list_communications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_list_communications_id_seq OWNED BY public.cc_list_communications.id;


--
-- Name: cc_list_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_list_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_list_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_list_id_seq OWNED BY public.cc_list.id;


--
-- Name: cc_member; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_member (
    id integer NOT NULL,
    queue_id integer NOT NULL,
    priority smallint DEFAULT 0 NOT NULL,
    expire_at integer,
    variables jsonb DEFAULT '{}'::jsonb,
    name character varying(50) DEFAULT ''::character varying NOT NULL,
    stop_cause character varying(50),
    stop_at bigint DEFAULT 0 NOT NULL,
    last_hangup_at bigint DEFAULT 0 NOT NULL,
    attempts integer DEFAULT 0 NOT NULL
);


--
-- Name: cc_member_attempt; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_member_attempt (
    id bigint NOT NULL,
    communication_id bigint NOT NULL,
    timing_id integer,
    queue_id bigint NOT NULL,
    state integer DEFAULT 0 NOT NULL,
    member_id bigint NOT NULL,
    created_at bigint DEFAULT ((date_part('epoch'::text, now()) * (1000)::double precision))::bigint NOT NULL,
    weight integer DEFAULT 0 NOT NULL,
    hangup_at bigint DEFAULT 0 NOT NULL,
    bridged_at bigint DEFAULT 0 NOT NULL,
    resource_id integer,
    leg_a_id character varying(36),
    leg_b_id character varying(36),
    node_id character varying(20),
    result character varying(200),
    originate_at bigint DEFAULT 0 NOT NULL,
    answered_at bigint DEFAULT 0 NOT NULL,
    routing_id integer,
    logs jsonb,
    hangup_time timestamp without time zone,
    agent_id bigint
);


--
-- Name: cc_member_attempt_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_member_attempt_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_member_attempt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_member_attempt_id_seq OWNED BY public.cc_member_attempt.id;


--
-- Name: cc_member_communications; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_member_communications (
    id integer NOT NULL,
    member_id integer NOT NULL,
    priority smallint DEFAULT 0 NOT NULL,
    number character varying(20) NOT NULL,
    last_originate_at bigint DEFAULT 0 NOT NULL,
    state smallint DEFAULT 0 NOT NULL,
    communication_id integer,
    routing_ids integer[],
    description character varying(100) DEFAULT ''::character varying,
    last_hangup_at bigint DEFAULT 0 NOT NULL,
    attempts smallint DEFAULT 0 NOT NULL,
    last_hangup_cause character varying(50) DEFAULT ''::character varying NOT NULL
);


--
-- Name: cc_member_communications_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_member_communications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_member_communications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_member_communications_id_seq OWNED BY public.cc_member_communications.id;


--
-- Name: cc_member_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_member_id_seq OWNED BY public.cc_member.id;


--
-- Name: cc_outbound_resource; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_outbound_resource (
    id integer NOT NULL,
    "limit" integer DEFAULT 0 NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    updated_at integer NOT NULL,
    rps integer DEFAULT '-1'::integer,
    domain_id bigint,
    reserve boolean DEFAULT false,
    variables jsonb DEFAULT '{}'::jsonb NOT NULL,
    number character varying(20) NOT NULL,
    max_successively_errors integer DEFAULT 0,
    name character varying(50) NOT NULL,
    dial_string character varying(50) NOT NULL,
    error_ids jsonb DEFAULT '[]'::jsonb NOT NULL,
    last_error_id character varying(50),
    successively_errors smallint DEFAULT 0 NOT NULL,
    last_error_at bigint DEFAULT 0
);


--
-- Name: cc_outbound_resource_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_outbound_resource_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_outbound_resource_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_outbound_resource_id_seq OWNED BY public.cc_outbound_resource.id;


--
-- Name: cc_queue; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_queue (
    id integer NOT NULL,
    type integer NOT NULL,
    strategy character varying(20) NOT NULL,
    enabled boolean NOT NULL,
    payload jsonb NOT NULL,
    calendar_id integer NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    max_calls integer DEFAULT 0 NOT NULL,
    sec_between_retries integer DEFAULT 10 NOT NULL,
    updated_at bigint DEFAULT ((date_part('epoch'::text, now()) * (1000)::double precision))::bigint NOT NULL,
    name character varying(50),
    max_of_retry smallint DEFAULT 0 NOT NULL,
    variables jsonb DEFAULT '{}'::jsonb NOT NULL,
    timeout integer DEFAULT 60 NOT NULL,
    domain_id bigint,
    dnc_list_id bigint
);


--
-- Name: cc_queue_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_queue_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_queue_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_queue_id_seq OWNED BY public.cc_queue.id;


--
-- Name: cc_queue_is_working; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.cc_queue_is_working AS
 SELECT c1.id,
    c1.type,
    c1.strategy,
    c1.enabled,
    c1.payload,
    c1.calendar_id,
    c1.priority,
    c1.max_calls,
    c1.sec_between_retries,
    c1.updated_at,
    c1.name,
        CASE
            WHEN ((c1.max_calls - tmp.active_calls) <= 0) THEN 0
            ELSE (c1.max_calls - tmp.active_calls)
        END AS need_call,
    a.a AS available_agents
   FROM public.cc_queue c1,
    (LATERAL ( SELECT public.get_count_call(c1.id) AS active_calls) tmp(active_calls)
     LEFT JOIN LATERAL ( SELECT public.get_agents_available_count_by_queue_id(c1.id) AS a
          WHERE (c1.type <> 1)) a ON (true))
  WHERE ((c1.enabled = true) AND (EXISTS ( SELECT d.id,
            d.calendar_id,
            d.week_day,
            d.start_time_of_day,
            d.end_time_of_day,
            c2.id,
            c2.timezone,
            c2.start,
            c2.finish,
            c2.name
           FROM (public.calendar_accept_of_day d
             JOIN public.calendar c2 ON ((d.calendar_id = c2.id)))
          WHERE ((d.calendar_id = c1.calendar_id) AND ((((to_char(timezone((c2.timezone)::text, CURRENT_TIMESTAMP), 'SSSS'::text))::integer / 60) >= d.start_time_of_day) AND (((to_char(timezone((c2.timezone)::text, CURRENT_TIMESTAMP), 'SSSS'::text))::integer / 60) <= d.end_time_of_day))))));


--
-- Name: cc_queue_resources_is_working; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.cc_queue_resources_is_working AS
 SELECT r.id,
    r."limit" AS max_call_count,
    r.enabled,
    public.get_count_active_resources(r.id) AS reserved_count
   FROM public.cc_outbound_resource r
  WHERE ((r.enabled IS TRUE) AND (NOT (r.reserve IS TRUE)));


--
-- Name: cc_queue_routing; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_queue_routing (
    id integer NOT NULL,
    queue_id integer NOT NULL,
    pattern character varying(50) NOT NULL,
    priority integer DEFAULT 0 NOT NULL
);


--
-- Name: cc_queue_routing_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_queue_routing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_queue_routing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_queue_routing_id_seq OWNED BY public.cc_queue_routing.id;


--
-- Name: cc_queue_timing; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_queue_timing (
    id integer NOT NULL,
    queue_id integer NOT NULL,
    communication_id integer NOT NULL,
    priority smallint DEFAULT 0 NOT NULL,
    start_time_of_day smallint DEFAULT 0 NOT NULL,
    end_time_of_day smallint DEFAULT 1439 NOT NULL,
    max_attempt smallint DEFAULT 0 NOT NULL,
    enabled boolean DEFAULT false
);


--
-- Name: cc_queue_timing_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_queue_timing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_queue_timing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_queue_timing_id_seq OWNED BY public.cc_queue_timing.id;


--
-- Name: cc_resource_in_routing; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_resource_in_routing (
    id integer NOT NULL,
    resource_id integer NOT NULL,
    priority smallint DEFAULT 0 NOT NULL,
    routing_id integer NOT NULL,
    capacity integer DEFAULT 0
);


--
-- Name: cc_resource_in_routing_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_resource_in_routing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_resource_in_routing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_resource_in_routing_id_seq OWNED BY public.cc_resource_in_routing.id;


--
-- Name: cc_skill_in_agent; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_skill_in_agent (
    id integer NOT NULL,
    skill_id integer NOT NULL,
    agent_id integer NOT NULL,
    capacity smallint DEFAULT 0 NOT NULL
);


--
-- Name: cc_skill_in_agent_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_skill_in_agent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_skill_in_agent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_skill_in_agent_id_seq OWNED BY public.cc_skill_in_agent.id;


--
-- Name: cc_skils; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cc_skils (
    id integer NOT NULL,
    code character varying(20) NOT NULL,
    domain_id bigint
);


--
-- Name: cc_skils_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cc_skils_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cc_skils_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cc_skils_id_seq OWNED BY public.cc_skils.id;


--
-- Name: cdr_a; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cdr_a (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    created_at bigint,
    size integer,
    event jsonb
);


--
-- Name: cdr_a_elastic; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cdr_a_elastic (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    event jsonb,
    state smallint,
    created_at bigint
);


--
-- Name: cdr_a_elastic_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cdr_a_elastic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cdr_a_elastic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cdr_a_elastic_id_seq OWNED BY public.cdr_a_elastic.id;


--
-- Name: cdr_a_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cdr_a_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cdr_a_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cdr_a_id_seq OWNED BY public.cdr_a.id;


--
-- Name: cdr_b; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cdr_b (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    parent_uuid character varying(255),
    created_at bigint,
    size integer,
    event jsonb
);


--
-- Name: cdr_b_elastic; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cdr_b_elastic (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    event jsonb,
    state smallint,
    created_at bigint
);


--
-- Name: cdr_b_elastic_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cdr_b_elastic_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cdr_b_elastic_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cdr_b_elastic_id_seq OWNED BY public.cdr_b_elastic.id;


--
-- Name: cdr_b_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cdr_b_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cdr_b_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cdr_b_id_seq OWNED BY public.cdr_b.id;


--
-- Name: cdr_bad_event; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cdr_bad_event (
    id integer NOT NULL,
    created_at integer DEFAULT (date_part('epoch'::text, timezone('utc'::text, now())))::integer NOT NULL,
    uuid character varying(50),
    leg character varying(1),
    event bytea NOT NULL
);


--
-- Name: cdr_bad_event_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cdr_bad_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: cdr_bad_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cdr_bad_event_id_seq OWNED BY public.cdr_bad_event.id;


--
-- Name: clusterer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.clusterer (
    id integer NOT NULL,
    cluster_id integer NOT NULL,
    node_id integer NOT NULL,
    url character varying(64) NOT NULL,
    state integer DEFAULT 1 NOT NULL,
    no_ping_retries integer DEFAULT 3 NOT NULL,
    priority integer DEFAULT 50 NOT NULL,
    sip_addr character varying(64),
    flags character varying(64),
    description character varying(64)
);


--
-- Name: clusterer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.clusterer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: clusterer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.clusterer_id_seq OWNED BY public.clusterer.id;


--
-- Name: complete; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.complete (
    sticky integer,
    a1 character varying(128),
    a2 character varying(128),
    a3 character varying(128),
    a4 character varying(128),
    a5 character varying(128),
    a6 character varying(128),
    a7 character varying(128),
    a8 character varying(128),
    a9 character varying(128),
    a10 character varying(128),
    hostname character varying(256)
);


--
-- Name: cpl; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cpl (
    id integer NOT NULL,
    username character varying(64) NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    cpl_xml text,
    cpl_bin text
);


--
-- Name: cpl_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.cpl_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: cpl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.cpl_id_seq OWNED BY public.cpl.id;


--
-- Name: dbaliases; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dbaliases (
    id integer NOT NULL,
    alias_username character varying(64) DEFAULT ''::character varying NOT NULL,
    alias_domain character varying(64) DEFAULT ''::character varying NOT NULL,
    username character varying(64) DEFAULT ''::character varying NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL
);


--
-- Name: dbaliases_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dbaliases_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: dbaliases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dbaliases_id_seq OWNED BY public.dbaliases.id;


--
-- Name: dialog; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dialog (
    dlg_id bigint NOT NULL,
    callid character varying(255) NOT NULL,
    from_uri character varying(255) NOT NULL,
    from_tag character varying(64) NOT NULL,
    to_uri character varying(255) NOT NULL,
    to_tag character varying(64) NOT NULL,
    mangled_from_uri character varying(64) DEFAULT NULL::character varying,
    mangled_to_uri character varying(64) DEFAULT NULL::character varying,
    caller_cseq character varying(11) NOT NULL,
    callee_cseq character varying(11) NOT NULL,
    caller_ping_cseq integer NOT NULL,
    callee_ping_cseq integer NOT NULL,
    caller_route_set text,
    callee_route_set text,
    caller_contact character varying(255),
    callee_contact character varying(255),
    caller_sock character varying(64) NOT NULL,
    callee_sock character varying(64) NOT NULL,
    state integer NOT NULL,
    start_time integer NOT NULL,
    timeout integer NOT NULL,
    vars bytea,
    profiles text,
    script_flags integer DEFAULT 0 NOT NULL,
    module_flags integer DEFAULT 0 NOT NULL,
    flags integer DEFAULT 0 NOT NULL
);


--
-- Name: dialplan; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dialplan (
    id integer NOT NULL,
    dpid integer NOT NULL,
    pr integer NOT NULL,
    match_op integer NOT NULL,
    match_exp character varying(64) NOT NULL,
    match_flags integer NOT NULL,
    subst_exp character varying(64),
    repl_exp character varying(32),
    timerec character varying(255),
    disabled integer DEFAULT 0 NOT NULL,
    attrs character varying(255)
);


--
-- Name: dialplan_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dialplan_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: dialplan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dialplan_id_seq OWNED BY public.dialplan.id;


--
-- Name: dispatcher; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dispatcher (
    id integer NOT NULL,
    setid integer DEFAULT 0 NOT NULL,
    destination character varying(192) DEFAULT ''::character varying NOT NULL,
    socket character varying(128) DEFAULT NULL::character varying,
    state integer DEFAULT 0 NOT NULL,
    weight character varying(64) DEFAULT 1 NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    attrs character varying(128) DEFAULT ''::character varying NOT NULL,
    description character varying(64) DEFAULT ''::character varying NOT NULL
);


--
-- Name: dispatcher_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dispatcher_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: dispatcher_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dispatcher_id_seq OWNED BY public.dispatcher.id;


--
-- Name: domain; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.domain (
    id integer NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    attrs character varying(255) DEFAULT NULL::character varying,
    last_modified timestamp without time zone DEFAULT '1900-01-01 00:00:01'::timestamp without time zone NOT NULL
);


--
-- Name: domain_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.domain_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: domain_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.domain_id_seq OWNED BY public.domain.id;


--
-- Name: domainpolicy; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.domainpolicy (
    id integer NOT NULL,
    rule character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    att character varying(255),
    val character varying(128),
    description character varying(255) NOT NULL
);


--
-- Name: domainpolicy_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.domainpolicy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: domainpolicy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.domainpolicy_id_seq OWNED BY public.domainpolicy.id;


--
-- Name: dr_carriers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dr_carriers (
    id integer NOT NULL,
    carrierid character varying(64) NOT NULL,
    gwlist character varying(255) NOT NULL,
    flags integer DEFAULT 0 NOT NULL,
    state integer DEFAULT 0 NOT NULL,
    attrs character varying(255) DEFAULT NULL::character varying,
    description character varying(128) DEFAULT NULL::character varying
);


--
-- Name: dr_carriers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dr_carriers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: dr_carriers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dr_carriers_id_seq OWNED BY public.dr_carriers.id;


--
-- Name: dr_gateways; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dr_gateways (
    id integer NOT NULL,
    gwid character varying(64) NOT NULL,
    type integer DEFAULT 0 NOT NULL,
    address character varying(128) NOT NULL,
    strip integer DEFAULT 0 NOT NULL,
    pri_prefix character varying(16) DEFAULT NULL::character varying,
    attrs character varying(255) DEFAULT NULL::character varying,
    probe_mode integer DEFAULT 0 NOT NULL,
    state integer DEFAULT 0 NOT NULL,
    socket character varying(128) DEFAULT NULL::character varying,
    description character varying(128) DEFAULT NULL::character varying
);


--
-- Name: dr_gateways_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dr_gateways_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: dr_gateways_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dr_gateways_id_seq OWNED BY public.dr_gateways.id;


--
-- Name: dr_groups; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dr_groups (
    id integer NOT NULL,
    username character varying(64) NOT NULL,
    domain character varying(128) DEFAULT NULL::character varying,
    groupid integer DEFAULT 0 NOT NULL,
    description character varying(128) DEFAULT NULL::character varying
);


--
-- Name: dr_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dr_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: dr_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dr_groups_id_seq OWNED BY public.dr_groups.id;


--
-- Name: dr_partitions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dr_partitions (
    id integer NOT NULL,
    partition_name character varying(255) NOT NULL,
    db_url character varying(255) NOT NULL,
    drd_table character varying(255),
    drr_table character varying(255),
    drg_table character varying(255),
    drc_table character varying(255),
    ruri_avp character varying(255),
    gw_id_avp character varying(255),
    gw_priprefix_avp character varying(255),
    gw_sock_avp character varying(255),
    rule_id_avp character varying(255),
    rule_prefix_avp character varying(255),
    carrier_id_avp character varying(255)
);


--
-- Name: dr_partitions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dr_partitions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: dr_partitions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dr_partitions_id_seq OWNED BY public.dr_partitions.id;


--
-- Name: dr_rules; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.dr_rules (
    ruleid integer NOT NULL,
    groupid character varying(255) NOT NULL,
    prefix character varying(64) NOT NULL,
    timerec character varying(255) DEFAULT NULL::character varying,
    priority integer DEFAULT 0 NOT NULL,
    routeid character varying(255) DEFAULT NULL::character varying,
    gwlist character varying(255) NOT NULL,
    attrs character varying(255) DEFAULT NULL::character varying,
    description character varying(128) DEFAULT NULL::character varying
);


--
-- Name: dr_rules_ruleid_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.dr_rules_ruleid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: dr_rules_ruleid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.dr_rules_ruleid_seq OWNED BY public.dr_rules.ruleid;


--
-- Name: emergency_report; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.emergency_report (
    id integer NOT NULL,
    callid character varying(25) NOT NULL,
    selectiveroutingid character varying(11) NOT NULL,
    routingesn integer DEFAULT 0 NOT NULL,
    npa integer DEFAULT 0 NOT NULL,
    esgwri character varying(50) NOT NULL,
    lro character varying(20) NOT NULL,
    vpc_organizationname character varying(50) NOT NULL,
    vpc_hostname character varying(50) NOT NULL,
    vpc_timestamp character varying(30) NOT NULL,
    result character varying(4) NOT NULL,
    disposition character varying(10) NOT NULL
);


--
-- Name: emergency_report_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.emergency_report_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: emergency_report_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.emergency_report_id_seq OWNED BY public.emergency_report.id;


--
-- Name: emergency_routing; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.emergency_routing (
    id integer NOT NULL,
    selectiveroutingid character varying(11) NOT NULL,
    routingesn integer DEFAULT 0 NOT NULL,
    npa integer DEFAULT 0 NOT NULL,
    esgwri character varying(50) NOT NULL
);


--
-- Name: emergency_routing_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.emergency_routing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: emergency_routing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.emergency_routing_id_seq OWNED BY public.emergency_routing.id;


--
-- Name: emergency_service_provider; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.emergency_service_provider (
    id integer NOT NULL,
    organizationname character varying(50) NOT NULL,
    hostid character varying(30) NOT NULL,
    nenaid character varying(50) NOT NULL,
    contact character varying(20) NOT NULL,
    certuri character varying(50) NOT NULL,
    nodeip character varying(20) NOT NULL,
    attribution integer NOT NULL
);


--
-- Name: emergency_service_provider_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.emergency_service_provider_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: emergency_service_provider_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.emergency_service_provider_id_seq OWNED BY public.emergency_service_provider.id;


--
-- Name: fraud_detection; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fraud_detection (
    ruleid integer NOT NULL,
    profileid integer NOT NULL,
    prefix character varying(64) NOT NULL,
    start_hour character varying(5) NOT NULL,
    end_hour character varying(5) NOT NULL,
    daysoftheweek character varying(64) NOT NULL,
    cpm_warning integer NOT NULL,
    cpm_critical integer NOT NULL,
    call_duration_warning integer NOT NULL,
    call_duration_critical integer NOT NULL,
    total_calls_warning integer NOT NULL,
    total_calls_critical integer NOT NULL,
    concurrent_calls_warning integer NOT NULL,
    concurrent_calls_critical integer NOT NULL,
    sequential_calls_warning integer NOT NULL,
    sequential_calls_critical integer NOT NULL
);


--
-- Name: fraud_detection_ruleid_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.fraud_detection_ruleid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: fraud_detection_ruleid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.fraud_detection_ruleid_seq OWNED BY public.fraud_detection.ruleid;


--
-- Name: freeswitch; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.freeswitch (
    id integer NOT NULL,
    username character varying(64),
    password character varying(64) NOT NULL,
    ip character varying(20) NOT NULL,
    port integer DEFAULT 8021 NOT NULL,
    events_csv character varying(255)
);


--
-- Name: freeswitch_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.freeswitch_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: freeswitch_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.freeswitch_id_seq OWNED BY public.freeswitch.id;


--
-- Name: globalblacklist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.globalblacklist (
    id integer NOT NULL,
    prefix character varying(64) DEFAULT ''::character varying NOT NULL,
    whitelist smallint DEFAULT 0 NOT NULL,
    description character varying(255) DEFAULT NULL::character varying
);


--
-- Name: globalblacklist_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.globalblacklist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: globalblacklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.globalblacklist_id_seq OWNED BY public.globalblacklist.id;


--
-- Name: grp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.grp (
    id integer NOT NULL,
    username character varying(64) DEFAULT ''::character varying NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    grp character varying(64) DEFAULT ''::character varying NOT NULL,
    last_modified timestamp without time zone DEFAULT '1900-01-01 00:00:01'::timestamp without time zone NOT NULL
);


--
-- Name: grp_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.grp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: grp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.grp_id_seq OWNED BY public.grp.id;


--
-- Name: imc_members; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.imc_members (
    id integer NOT NULL,
    username character varying(64) NOT NULL,
    domain character varying(64) NOT NULL,
    room character varying(64) NOT NULL,
    flag integer NOT NULL
);


--
-- Name: imc_members_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.imc_members_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: imc_members_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.imc_members_id_seq OWNED BY public.imc_members.id;


--
-- Name: imc_rooms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.imc_rooms (
    id integer NOT NULL,
    name character varying(64) NOT NULL,
    domain character varying(64) NOT NULL,
    flag integer NOT NULL
);


--
-- Name: imc_rooms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.imc_rooms_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: imc_rooms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.imc_rooms_id_seq OWNED BY public.imc_rooms.id;


--
-- Name: load_balancer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.load_balancer (
    id integer NOT NULL,
    group_id integer DEFAULT 0 NOT NULL,
    dst_uri character varying(128) NOT NULL,
    resources character varying(255) NOT NULL,
    probe_mode integer DEFAULT 0 NOT NULL,
    description character varying(128) DEFAULT NULL::character varying
);


--
-- Name: load_balancer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.load_balancer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: load_balancer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.load_balancer_id_seq OWNED BY public.load_balancer.id;


--
-- Name: location_contact_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.location_contact_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1
    CYCLE;


--
-- Name: location_contact_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.location_contact_id_seq OWNED BY public.location.contact_id;


--
-- Name: missed_calls; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.missed_calls (
    id integer NOT NULL,
    method character varying(16) DEFAULT ''::character varying NOT NULL,
    from_tag character varying(64) DEFAULT ''::character varying NOT NULL,
    to_tag character varying(64) DEFAULT ''::character varying NOT NULL,
    callid character varying(64) DEFAULT ''::character varying NOT NULL,
    sip_code character varying(3) DEFAULT ''::character varying NOT NULL,
    sip_reason character varying(32) DEFAULT ''::character varying NOT NULL,
    "time" timestamp without time zone NOT NULL,
    setuptime integer DEFAULT 0 NOT NULL,
    created timestamp without time zone
);


--
-- Name: missed_calls_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.missed_calls_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: missed_calls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.missed_calls_id_seq OWNED BY public.missed_calls.id;


--
-- Name: nat; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.nat (
    sticky integer,
    port integer,
    proto integer,
    hostname character varying(256)
);


--
-- Name: presentity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.presentity (
    id integer NOT NULL,
    username character varying(64) NOT NULL,
    domain character varying(64) NOT NULL,
    event character varying(64) NOT NULL,
    etag character varying(64) NOT NULL,
    expires integer NOT NULL,
    received_time integer NOT NULL,
    body bytea,
    extra_hdrs bytea,
    sender character varying(255) DEFAULT NULL::character varying
);


--
-- Name: presentity_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.presentity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: presentity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.presentity_id_seq OWNED BY public.presentity.id;


--
-- Name: pua; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.pua (
    id integer NOT NULL,
    pres_uri character varying(255) NOT NULL,
    pres_id character varying(255) NOT NULL,
    event integer NOT NULL,
    expires integer NOT NULL,
    desired_expires integer NOT NULL,
    flag integer NOT NULL,
    etag character varying(64),
    tuple_id character varying(64),
    watcher_uri character varying(255),
    to_uri character varying(255),
    call_id character varying(64),
    to_tag character varying(64),
    from_tag character varying(64),
    cseq integer,
    record_route text,
    contact character varying(255),
    remote_contact character varying(255),
    version integer,
    extra_headers text
);


--
-- Name: pua_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.pua_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: pua_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.pua_id_seq OWNED BY public.pua.id;


--
-- Name: re_grp; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.re_grp (
    id integer NOT NULL,
    reg_exp character varying(128) DEFAULT ''::character varying NOT NULL,
    group_id integer DEFAULT 0 NOT NULL
);


--
-- Name: re_grp_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.re_grp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: re_grp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.re_grp_id_seq OWNED BY public.re_grp.id;


--
-- Name: registrant; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.registrant (
    id integer NOT NULL,
    registrar character varying(255) DEFAULT ''::character varying NOT NULL,
    proxy character varying(255) DEFAULT NULL::character varying,
    aor character varying(255) DEFAULT ''::character varying NOT NULL,
    third_party_registrant character varying(255) DEFAULT NULL::character varying,
    username character varying(64) DEFAULT NULL::character varying,
    password character varying(64) DEFAULT NULL::character varying,
    binding_uri character varying(255) DEFAULT ''::character varying NOT NULL,
    binding_params character varying(64) DEFAULT NULL::character varying,
    expiry integer,
    forced_socket character varying(64) DEFAULT NULL::character varying,
    cluster_shtag character varying(64) DEFAULT NULL::character varying
);


--
-- Name: registrant_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.registrant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: registrant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.registrant_id_seq OWNED BY public.registrant.id;


--
-- Name: registrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.registrations (
    reg_user character varying(256),
    realm character varying(256),
    token character varying(256),
    url text,
    expires integer,
    network_ip character varying(256),
    network_port character varying(256),
    network_proto character varying(256),
    hostname character varying(256),
    metadata character varying(256)
);


--
-- Name: rls_presentity; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rls_presentity (
    id integer NOT NULL,
    rlsubs_did character varying(255) NOT NULL,
    resource_uri character varying(255) NOT NULL,
    content_type character varying(255) NOT NULL,
    presence_state bytea NOT NULL,
    expires integer NOT NULL,
    updated integer NOT NULL,
    auth_state integer NOT NULL,
    reason character varying(64) NOT NULL
);


--
-- Name: rls_presentity_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.rls_presentity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: rls_presentity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.rls_presentity_id_seq OWNED BY public.rls_presentity.id;


--
-- Name: rls_watchers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rls_watchers (
    id integer NOT NULL,
    presentity_uri character varying(255) NOT NULL,
    to_user character varying(64) NOT NULL,
    to_domain character varying(64) NOT NULL,
    watcher_username character varying(64) NOT NULL,
    watcher_domain character varying(64) NOT NULL,
    event character varying(64) DEFAULT 'presence'::character varying NOT NULL,
    event_id character varying(64),
    to_tag character varying(64) NOT NULL,
    from_tag character varying(64) NOT NULL,
    callid character varying(64) NOT NULL,
    local_cseq integer NOT NULL,
    remote_cseq integer NOT NULL,
    contact character varying(64) NOT NULL,
    record_route text,
    expires integer NOT NULL,
    status integer DEFAULT 2 NOT NULL,
    reason character varying(64) NOT NULL,
    version integer DEFAULT 0 NOT NULL,
    socket_info character varying(64) NOT NULL,
    local_contact character varying(255) NOT NULL
);


--
-- Name: rls_watchers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.rls_watchers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: rls_watchers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.rls_watchers_id_seq OWNED BY public.rls_watchers.id;


--
-- Name: route_tree; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.route_tree (
    id integer NOT NULL,
    carrier character varying(64) DEFAULT NULL::character varying
);


--
-- Name: route_tree_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.route_tree_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: route_tree_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.route_tree_id_seq OWNED BY public.route_tree.id;


--
-- Name: rtpengine; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rtpengine (
    id integer NOT NULL,
    socket text NOT NULL,
    set_id integer NOT NULL
);


--
-- Name: rtpengine_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.rtpengine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: rtpengine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.rtpengine_id_seq OWNED BY public.rtpengine.id;


--
-- Name: rtpproxy_sockets; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.rtpproxy_sockets (
    id integer NOT NULL,
    rtpproxy_sock text NOT NULL,
    set_id integer NOT NULL
);


--
-- Name: rtpproxy_sockets_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.rtpproxy_sockets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: rtpproxy_sockets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.rtpproxy_sockets_id_seq OWNED BY public.rtpproxy_sockets.id;


--
-- Name: session; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.session (
    "Id" character varying(26) NOT NULL,
    "Token" character varying(500),
    "UserId" character varying(26)
);


--
-- Name: silo; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.silo (
    id integer NOT NULL,
    src_addr character varying(255) DEFAULT ''::character varying NOT NULL,
    dst_addr character varying(255) DEFAULT ''::character varying NOT NULL,
    username character varying(64) DEFAULT ''::character varying NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    inc_time integer DEFAULT 0 NOT NULL,
    exp_time integer DEFAULT 0 NOT NULL,
    snd_time integer DEFAULT 0 NOT NULL,
    ctype character varying(255) DEFAULT NULL::character varying,
    body bytea
);


--
-- Name: silo_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.silo_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: silo_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.silo_id_seq OWNED BY public.silo.id;


--
-- Name: sip_authentication; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sip_authentication (
    nonce character varying(255),
    expires bigint,
    profile_name character varying(255),
    hostname character varying(255),
    last_nc integer
);


--
-- Name: sip_dialogs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sip_dialogs (
    call_id character varying(255),
    uuid character varying(255),
    sip_to_user character varying(255),
    sip_to_host character varying(255),
    sip_from_user character varying(255),
    sip_from_host character varying(255),
    contact_user character varying(255),
    contact_host character varying(255),
    state character varying(255),
    direction character varying(255),
    user_agent character varying(255),
    profile_name character varying(255),
    hostname character varying(255),
    contact character varying(255),
    presence_id character varying(255),
    presence_data character varying(255),
    call_info character varying(255),
    call_info_state character varying(255) DEFAULT ''::character varying,
    expires bigint DEFAULT 0,
    status character varying(255),
    rpid character varying(255),
    sip_to_tag character varying(255),
    sip_from_tag character varying(255),
    rcd integer DEFAULT 0 NOT NULL
);


--
-- Name: sip_presence; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sip_presence (
    sip_user character varying(255),
    sip_host character varying(255),
    status character varying(255),
    rpid character varying(255),
    expires bigint,
    user_agent character varying(255),
    profile_name character varying(255),
    hostname character varying(255),
    network_ip character varying(255),
    network_port character varying(6),
    open_closed character varying(255)
);


--
-- Name: sip_shared_appearance_dialogs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sip_shared_appearance_dialogs (
    profile_name character varying(255),
    hostname character varying(255),
    contact_str character varying(255),
    call_id character varying(255),
    network_ip character varying(255),
    expires bigint
);


--
-- Name: sip_shared_appearance_subscriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sip_shared_appearance_subscriptions (
    subscriber character varying(255),
    call_id character varying(255),
    aor character varying(255),
    profile_name character varying(255),
    hostname character varying(255),
    contact_str character varying(255),
    network_ip character varying(255)
);


--
-- Name: sip_subscriptions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sip_subscriptions (
    proto character varying(255),
    sip_user character varying(255),
    sip_host character varying(255),
    sub_to_user character varying(255),
    sub_to_host character varying(255),
    presence_hosts character varying(255),
    event character varying(255),
    contact character varying(1024),
    call_id character varying(255),
    full_from character varying(255),
    full_via character varying(255),
    expires bigint,
    user_agent character varying(255),
    accept character varying(255),
    profile_name character varying(255),
    hostname character varying(255),
    network_port character varying(6),
    network_ip character varying(255),
    version integer DEFAULT 0 NOT NULL,
    orig_proto character varying(255),
    full_to character varying(255)
);


--
-- Name: sip_trace; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.sip_trace (
    id integer NOT NULL,
    time_stamp timestamp without time zone DEFAULT '1900-01-01 00:00:01'::timestamp without time zone NOT NULL,
    callid character varying(255) DEFAULT ''::character varying NOT NULL,
    trace_attrs character varying(255) DEFAULT NULL::character varying,
    msg text NOT NULL,
    method character varying(32) DEFAULT ''::character varying NOT NULL,
    status character varying(255) DEFAULT NULL::character varying,
    from_proto character varying(5) NOT NULL,
    from_ip character varying(50) DEFAULT ''::character varying NOT NULL,
    from_port integer NOT NULL,
    to_proto character varying(5) NOT NULL,
    to_ip character varying(50) DEFAULT ''::character varying NOT NULL,
    to_port integer NOT NULL,
    fromtag character varying(64) DEFAULT ''::character varying NOT NULL,
    direction character varying(4) DEFAULT ''::character varying NOT NULL
);


--
-- Name: sip_trace_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.sip_trace_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: sip_trace_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.sip_trace_id_seq OWNED BY public.sip_trace.id;


--
-- Name: speed_dial; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.speed_dial (
    id integer NOT NULL,
    username character varying(64) DEFAULT ''::character varying NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    sd_username character varying(64) DEFAULT ''::character varying NOT NULL,
    sd_domain character varying(64) DEFAULT ''::character varying NOT NULL,
    new_uri character varying(255) DEFAULT ''::character varying NOT NULL,
    fname character varying(64) DEFAULT ''::character varying NOT NULL,
    lname character varying(64) DEFAULT ''::character varying NOT NULL,
    description character varying(64) DEFAULT ''::character varying NOT NULL
);


--
-- Name: speed_dial_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.speed_dial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: speed_dial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.speed_dial_id_seq OWNED BY public.speed_dial.id;


--
-- Name: subscriber; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.subscriber (
    id integer NOT NULL,
    username character varying(64) DEFAULT ''::character varying NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    password character varying(25) DEFAULT ''::character varying NOT NULL,
    email_address character varying(64) DEFAULT ''::character varying NOT NULL,
    ha1 character varying(64) DEFAULT ''::character varying NOT NULL,
    ha1b character varying(64) DEFAULT ''::character varying NOT NULL,
    rpid character varying(64) DEFAULT NULL::character varying
);


--
-- Name: subscriber_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.subscriber_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: subscriber_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.subscriber_id_seq OWNED BY public.subscriber.id;


--
-- Name: tls_mgm; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.tls_mgm (
    id integer NOT NULL,
    domain character varying(64) NOT NULL,
    address character varying(64) DEFAULT NULL::character varying,
    type integer DEFAULT 1 NOT NULL,
    method character varying(16) DEFAULT 'SSLv23'::character varying,
    verify_cert integer DEFAULT 1,
    require_cert integer DEFAULT 1,
    certificate bytea,
    private_key bytea,
    crl_check_all integer DEFAULT 0,
    crl_dir character varying(255) DEFAULT NULL::character varying,
    ca_list bytea,
    ca_dir character varying(255) DEFAULT NULL::character varying,
    cipher_list character varying(255) DEFAULT NULL::character varying,
    dh_params bytea,
    ec_curve character varying(255) DEFAULT NULL::character varying
);


--
-- Name: tls_mgm_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.tls_mgm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: tls_mgm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.tls_mgm_id_seq OWNED BY public.tls_mgm.id;


--
-- Name: uri; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.uri (
    id integer NOT NULL,
    username character varying(64) DEFAULT ''::character varying NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    uri_user character varying(64) DEFAULT ''::character varying NOT NULL,
    last_modified timestamp without time zone DEFAULT '1900-01-01 00:00:01'::timestamp without time zone NOT NULL
);


--
-- Name: uri_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.uri_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: uri_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.uri_id_seq OWNED BY public.uri.id;


--
-- Name: user; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public."user" (
    id bigint NOT NULL,
    name character varying(50) NOT NULL,
    variables jsonb
);


--
-- Name: user_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.user_id_seq OWNED BY public."user".id;


--
-- Name: userblacklist; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.userblacklist (
    id integer NOT NULL,
    username character varying(64) DEFAULT ''::character varying NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    prefix character varying(64) DEFAULT ''::character varying NOT NULL,
    whitelist smallint DEFAULT 0 NOT NULL
);


--
-- Name: userblacklist_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.userblacklist_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: userblacklist_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.userblacklist_id_seq OWNED BY public.userblacklist.id;


--
-- Name: usr_preferences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.usr_preferences (
    id integer NOT NULL,
    uuid character varying(64) DEFAULT ''::character varying NOT NULL,
    username character varying(64) DEFAULT 0 NOT NULL,
    domain character varying(64) DEFAULT ''::character varying NOT NULL,
    attribute character varying(32) DEFAULT ''::character varying NOT NULL,
    type integer DEFAULT 0 NOT NULL,
    value character varying(128) DEFAULT ''::character varying NOT NULL,
    last_modified timestamp without time zone DEFAULT '1900-01-01 00:00:01'::timestamp without time zone NOT NULL
);


--
-- Name: usr_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.usr_preferences_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: usr_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.usr_preferences_id_seq OWNED BY public.usr_preferences.id;


--
-- Name: version; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.version (
    table_name character varying(32) NOT NULL,
    table_version integer DEFAULT 0 NOT NULL
);


--
-- Name: watchers; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.watchers (
    id integer NOT NULL,
    presentity_uri character varying(255) NOT NULL,
    watcher_username character varying(64) NOT NULL,
    watcher_domain character varying(64) NOT NULL,
    event character varying(64) DEFAULT 'presence'::character varying NOT NULL,
    status integer NOT NULL,
    reason character varying(64),
    inserted_time integer NOT NULL
);


--
-- Name: watchers_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.watchers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: watchers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.watchers_id_seq OWNED BY public.watchers.id;


--
-- Name: wbt_auth; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wbt_auth (
    id bigint DEFAULT public.wbt_seqnext('oid'::text) NOT NULL,
    dc bigint NOT NULL,
    rolname name NOT NULL,
    roladmin boolean DEFAULT false NOT NULL,
    canlogin boolean DEFAULT false NOT NULL,
    password text COLLATE pg_catalog."C",
    inactive boolean DEFAULT false NOT NULL,
    caller_name name,
    caller_number name,
    extern_name name,
    extern_number name,
    do_not_disturb boolean DEFAULT false NOT NULL
);


--
-- Name: wbt_auth_member; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wbt_auth_member (
    dc bigint NOT NULL,
    role bigint NOT NULL,
    member bigint NOT NULL,
    grantor bigint,
    roladmin boolean DEFAULT false NOT NULL,
    CONSTRAINT wbt_membership_cycle CHECK ((member <> role)),
    CONSTRAINT wbt_membership_prime CHECK ((member <> dc))
);


--
-- Name: wbt_cert; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wbt_cert (
    serial bigint NOT NULL,
    valid_from timestamp without time zone,
    valid_till timestamp without time zone,
    this_update timestamp without time zone NOT NULL,
    next_update timestamp without time zone,
    certificate bytea NOT NULL
);


--
-- Name: wbt_cert_grants; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wbt_cert_grants (
    id bigint NOT NULL,
    serial bigint NOT NULL,
    valid_from timestamp without time zone,
    valid_till timestamp without time zone,
    grant_type text NOT NULL COLLATE pg_catalog."C",
    grant_usage integer
);


--
-- Name: wbt_cert_usage; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wbt_cert_usage (
    dc bigint NOT NULL,
    id bigint NOT NULL,
    ci bigint NOT NULL
);


--
-- Name: wbt_device; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wbt_device (
    id bigint DEFAULT public.wbt_seqnext('device_id'::text) NOT NULL,
    dc bigint NOT NULL,
    device_type text NOT NULL,
    device_id text NOT NULL,
    password text NOT NULL,
    owner_id bigint,
    mac_addr macaddr8,
    ip_addr inet,
    acl public.actl[]
);


--
-- Name: wbt_domain; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wbt_domain (
    dc bigint DEFAULT public.wbt_seqnext('oid'::text) NOT NULL,
    dn character varying(255) NOT NULL COLLATE pg_catalog."C",
    serial bigint NOT NULL,
    organization text NOT NULL,
    country text COLLATE pg_catalog."C",
    locality text COLLATE pg_catalog."C",
    province text,
    streetaddr text,
    postaladdr text,
    postalcode text,
    attrs character varying(255) DEFAULT NULL::character varying
);


--
-- Name: wbt_group; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.wbt_group AS
 SELECT wbt_auth.id,
    wbt_auth.dc,
    wbt_auth.rolname AS groupname,
    ARRAY( SELECT wbt_auth_member.member
           FROM public.wbt_auth_member
          WHERE ((wbt_auth_member.dc = wbt_auth.dc) AND (wbt_auth_member.role = wbt_auth.id))) AS members
   FROM public.wbt_auth
  WHERE (NOT COALESCE(wbt_auth.canlogin, false));


--
-- Name: wbt_registrant; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.wbt_registrant AS
 SELECT sip_gateway.id,
    sip_gateway.dc,
    sip_gateway.registrar,
    NULLIF(('sip:'::text || (sip_gateway.proxy)::text), (sip_gateway.registrar)::text) AS proxy,
    sip_gateway.account AS aor,
    NULL::text AS third_party_registrant,
    COALESCE(sip_gateway.username, 'anonymous'::character varying) AS username,
    sip_gateway.password,
    sip_gateway.binding_uri,
    sip_gateway.binding_params,
    sip_gateway.expires AS expiry,
    NULL::text AS forced_socket,
    NULL::text AS cluster_shtag
   FROM directory.sip_gateway
  WHERE (sip_gateway.enable AND sip_gateway.register);


--
-- Name: COLUMN wbt_registrant.registrar; Type: COMMENT; Schema: public; Owner: -
--

COMMENT ON COLUMN public.wbt_registrant.registrar IS 'opensips.registrant.registrar: [REGISTER] proxy';


--
-- Name: wbt_sequence; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wbt_sequence (
    oid bigint DEFAULT public.wbt_seqnext((0)::bigint) NOT NULL,
    name name NOT NULL,
    currval bigint NOT NULL
);


--
-- Name: wbt_subscriber; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.wbt_subscriber AS
 SELECT auth.dc,
    auth.id AS oid,
    caller.id AS uid,
    lower((realm.name)::text) AS realm,
    auth.account AS auth_id,
    COALESCE(caller.username, auth.account) AS user_id,
    COALESCE(display.name, (caller.extension)::text, (auth.account)::text) AS caller_id_name,
    auth.password AS digest_ha1,
    loc.contacts
   FROM ((((directory.wbt_device auth
     JOIN directory.wbt_domain realm USING (dc))
     LEFT JOIN directory.wbt_user caller ON ((auth.user_id = caller.id)))
     LEFT JOIN directory.wbt_auth display ON ((auth.user_id = display.id)))
     CROSS JOIN LATERAL ( SELECT count(c.contact_id) AS contacts
           FROM public.location c
          WHERE ((c.device_id)::bigint = auth.id)) loc)
  WHERE ((auth.deleted_at IS NULL) AND ((auth.user_id IS NOT NULL) OR (EXISTS ( SELECT
           FROM directory.wbt_hotdesk
          WHERE (wbt_hotdesk.device_id = auth.id)))));


--
-- Name: wbt_subscriber_old; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.wbt_subscriber_old AS
 SELECT auth.dc,
    auth.id AS oid,
    cid.id AS uid,
    realm.dn AS realm,
    auth.device_id AS auth_id,
    COALESCE(cid.caller_number, (auth.device_id)::name) AS user_id,
    COALESCE(cid.caller_name, cid.caller_number, (auth.device_id)::name) AS caller_id_name,
    auth.password AS digest_ha1,
    usrloc.contacts
   FROM (((public.wbt_device auth
     JOIN public.wbt_domain realm USING (dc))
     LEFT JOIN public.wbt_auth cid ON (((auth.dc = cid.dc) AND (auth.owner_id = cid.id) AND cid.canlogin)))
     CROSS JOIN LATERAL ( SELECT count(c.contact_id) AS contacts
           FROM public.location c
          WHERE (((c.domain)::text = (realm.dn)::text) AND ((c.attr)::text = auth.device_id))) usrloc);


--
-- Name: wbt_token; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.wbt_token (
    id bigint NOT NULL,
    scope text[],
    owner_id bigint,
    domain_id bigint,
    client_id text,
    network_ip inet,
    redirect_uri text,
    code text,
    access text,
    refresh text,
    accessed timestamp without time zone,
    created timestamp without time zone,
    rotated timestamp without time zone,
    expires integer,
    max_age timestamp without time zone
);


--
-- Name: wbt_user; Type: VIEW; Schema: public; Owner: -
--

CREATE VIEW public.wbt_user AS
 SELECT wbt_auth.id,
    wbt_auth.dc,
    wbt_auth.rolname AS username,
    wbt_auth.roladmin AS superuser,
    '********'::text AS password,
    wbt_auth.inactive
   FROM public.wbt_auth
  WHERE COALESCE(wbt_auth.canlogin, false);


--
-- Name: widget; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.widget (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(200),
    config json,
    domain character varying(255) NOT NULL,
    limit_by_number boolean,
    limit_by_ip smallint,
    _file_path character varying(250),
    blacklist cidr[],
    queue_id integer NOT NULL,
    language character varying(4),
    callflow_id character varying(24)
);


--
-- Name: widget_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.widget_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: widget_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.widget_id_seq OWNED BY public.widget.id;


--
-- Name: xcap; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.xcap (
    id integer NOT NULL,
    username character varying(64) NOT NULL,
    domain character varying(64) NOT NULL,
    doc bytea NOT NULL,
    doc_type integer NOT NULL,
    etag character varying(64) NOT NULL,
    source integer NOT NULL,
    doc_uri character varying(255) NOT NULL,
    port integer NOT NULL
);


--
-- Name: xcap_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.xcap_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
    CYCLE;


--
-- Name: xcap_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.xcap_id_seq OWNED BY public.xcap.id;


--
-- Name: file_backend_profiles; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.file_backend_profiles (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    expire_day integer DEFAULT 0 NOT NULL,
    priority integer DEFAULT 0 NOT NULL,
    disabled boolean,
    max_size_mb integer DEFAULT 0 NOT NULL,
    properties jsonb NOT NULL,
    created_at bigint NOT NULL,
    updated_at bigint NOT NULL,
    data_size double precision DEFAULT 0 NOT NULL,
    data_count bigint DEFAULT 0 NOT NULL,
    created_by bigint,
    updated_by bigint,
    domain_id bigint,
    description character varying DEFAULT ''::character varying,
    type character varying(10) NOT NULL
);


--
-- Name: file_backend_profiles_acl; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.file_backend_profiles_acl (
    id bigint NOT NULL,
    dc bigint NOT NULL,
    grantor bigint NOT NULL,
    subject bigint NOT NULL,
    access smallint DEFAULT 0 NOT NULL,
    object bigint NOT NULL
);


--
-- Name: file_backend_profiles_acl_id_seq; Type: SEQUENCE; Schema: storage; Owner: -
--

CREATE SEQUENCE storage.file_backend_profiles_acl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: file_backend_profiles_acl_id_seq; Type: SEQUENCE OWNED BY; Schema: storage; Owner: -
--

ALTER SEQUENCE storage.file_backend_profiles_acl_id_seq OWNED BY storage.file_backend_profiles_acl.id;


--
-- Name: file_backend_profiles_id_seq; Type: SEQUENCE; Schema: storage; Owner: -
--

CREATE SEQUENCE storage.file_backend_profiles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: file_backend_profiles_id_seq; Type: SEQUENCE OWNED BY; Schema: storage; Owner: -
--

ALTER SEQUENCE storage.file_backend_profiles_id_seq OWNED BY storage.file_backend_profiles.id;


--
-- Name: files; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.files (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    size bigint NOT NULL,
    mime_type character varying(20),
    properties jsonb NOT NULL,
    instance character varying(50) NOT NULL,
    uuid character varying(36) NOT NULL,
    profile_id integer,
    created_at bigint,
    removed boolean,
    not_exists boolean,
    domain_id bigint NOT NULL
);


--
-- Name: files_id_seq; Type: SEQUENCE; Schema: storage; Owner: -
--

CREATE SEQUENCE storage.files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: storage; Owner: -
--

ALTER SEQUENCE storage.files_id_seq OWNED BY storage.files.id;


--
-- Name: jobs; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.jobs (
    id character varying(26) NOT NULL,
    type character varying(32),
    priority bigint,
    schedule_id bigint,
    schedule_time bigint,
    create_at bigint,
    start_at bigint,
    last_activity_at bigint,
    status character varying(32),
    progress bigint,
    data character varying(1024)
);


--
-- Name: media_files; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.media_files (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    size bigint NOT NULL,
    mime_type character varying(40),
    properties jsonb,
    instance character varying(50),
    created_at bigint,
    updated_at bigint,
    domain_id bigint NOT NULL,
    created_by bigint NOT NULL,
    updated_by bigint NOT NULL
);


--
-- Name: media_files_id_seq; Type: SEQUENCE; Schema: storage; Owner: -
--

CREATE SEQUENCE storage.media_files_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: media_files_id_seq; Type: SEQUENCE OWNED BY; Schema: storage; Owner: -
--

ALTER SEQUENCE storage.media_files_id_seq OWNED BY storage.media_files.id;


--
-- Name: remove_file_jobs; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.remove_file_jobs (
    id integer NOT NULL,
    file_id bigint NOT NULL,
    created_at bigint,
    created_by character varying(50)
);


--
-- Name: remove_file_jobs_id_seq; Type: SEQUENCE; Schema: storage; Owner: -
--

CREATE SEQUENCE storage.remove_file_jobs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: remove_file_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: storage; Owner: -
--

ALTER SEQUENCE storage.remove_file_jobs_id_seq OWNED BY storage.remove_file_jobs.id;


--
-- Name: schedulers; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.schedulers (
    id bigint NOT NULL,
    cron_expression character varying(50) NOT NULL,
    type character varying(50) NOT NULL,
    name character varying(50) NOT NULL,
    description character varying(500),
    time_zone character varying(50),
    created_at bigint NOT NULL,
    enabled boolean NOT NULL
);


--
-- Name: schedulers_id_seq; Type: SEQUENCE; Schema: storage; Owner: -
--

CREATE SEQUENCE storage.schedulers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: schedulers_id_seq; Type: SEQUENCE OWNED BY; Schema: storage; Owner: -
--

ALTER SEQUENCE storage.schedulers_id_seq OWNED BY storage.schedulers.id;


--
-- Name: upload_file_jobs; Type: TABLE; Schema: storage; Owner: -
--

CREATE TABLE storage.upload_file_jobs (
    id bigint NOT NULL,
    state integer DEFAULT 0 NOT NULL,
    name character varying(100) NOT NULL,
    uuid character varying(36) NOT NULL,
    mime_type character varying(36),
    size bigint NOT NULL,
    email_msg character varying(500) DEFAULT ''::character varying NOT NULL,
    email_sub character varying(150) DEFAULT ''::character varying NOT NULL,
    instance character varying(50),
    created_at bigint NOT NULL,
    updated_at bigint,
    attempts integer DEFAULT 0 NOT NULL,
    domain_id bigint NOT NULL
);


--
-- Name: upload_file_jobs_id_seq; Type: SEQUENCE; Schema: storage; Owner: -
--

CREATE SEQUENCE storage.upload_file_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: upload_file_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: storage; Owner: -
--

ALTER SEQUENCE storage.upload_file_jobs_id_seq OWNED BY storage.upload_file_jobs.id;


--
-- Name: acr_jobs id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_jobs ALTER COLUMN id SET DEFAULT nextval('call_center.acr_jobs_id_seq'::regclass);


--
-- Name: acr_routing_inbound_call id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_inbound_call ALTER COLUMN id SET DEFAULT nextval('call_center.acr_routing_inbound_call_id_seq'::regclass);


--
-- Name: acr_routing_outbound_call id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_outbound_call ALTER COLUMN id SET DEFAULT nextval('call_center.acr_routing_outbound_call_id_seq'::regclass);


--
-- Name: acr_routing_outbound_call pos; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_outbound_call ALTER COLUMN pos SET DEFAULT nextval('call_center.acr_routing_outbound_call_pos_seq'::regclass);


--
-- Name: acr_routing_scheme id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_scheme ALTER COLUMN id SET DEFAULT nextval('call_center.acr_routing_scheme_id_seq'::regclass);


--
-- Name: acr_routing_variables id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_variables ALTER COLUMN id SET DEFAULT nextval('call_center.acr_routing_variables_id_seq'::regclass);


--
-- Name: calendar id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar ALTER COLUMN id SET DEFAULT nextval('call_center.calendar_id_seq'::regclass);


--
-- Name: calendar_accept_of_day id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar_accept_of_day ALTER COLUMN id SET DEFAULT nextval('call_center.calendar_accept_of_day_id_seq'::regclass);


--
-- Name: calendar_except id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar_except ALTER COLUMN id SET DEFAULT nextval('call_center.calendar_except_id_seq'::regclass);


--
-- Name: calendar_timezones id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar_timezones ALTER COLUMN id SET DEFAULT nextval('call_center.calendar_timezones_id_seq'::regclass);


--
-- Name: cc_agent id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent ALTER COLUMN id SET DEFAULT nextval('call_center.cc_agent_id_seq'::regclass);


--
-- Name: cc_agent_acl id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_acl ALTER COLUMN id SET DEFAULT nextval('call_center.cc_agent_acl_id_seq'::regclass);


--
-- Name: cc_agent_activity id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_activity ALTER COLUMN id SET DEFAULT nextval('call_center.agent_statistic_id_seq'::regclass);


--
-- Name: cc_agent_attempt id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_attempt ALTER COLUMN id SET DEFAULT nextval('call_center.cc_agent_attempt_id_seq'::regclass);


--
-- Name: cc_agent_in_team id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_in_team ALTER COLUMN id SET DEFAULT nextval('call_center.cc_agent_in_team_id_seq'::regclass);


--
-- Name: cc_agent_missed_attempt id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_missed_attempt ALTER COLUMN id SET DEFAULT nextval('call_center.cc_agent_missed_attempt_id_seq'::regclass);


--
-- Name: cc_agent_state_history id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_state_history ALTER COLUMN id SET DEFAULT nextval('call_center.cc_agent_history_id_seq'::regclass);


--
-- Name: cc_bucket id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_bucket ALTER COLUMN id SET DEFAULT nextval('call_center.cc_bucket_id_seq'::regclass);


--
-- Name: cc_bucket_in_queue id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_bucket_in_queue ALTER COLUMN id SET DEFAULT nextval('call_center.cc_bucket_in_queue_id_seq'::regclass);


--
-- Name: cc_calls id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_calls ALTER COLUMN id SET DEFAULT nextval('call_center.cc_calls_id_seq'::regclass);


--
-- Name: cc_cluster id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_cluster ALTER COLUMN id SET DEFAULT nextval('call_center.cc_cluster_id_seq'::regclass);


--
-- Name: cc_communication id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_communication ALTER COLUMN id SET DEFAULT nextval('call_center.cc_communication_id_seq'::regclass);


--
-- Name: cc_list id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_list ALTER COLUMN id SET DEFAULT nextval('call_center.cc_call_list_id_seq'::regclass);


--
-- Name: cc_list_acl id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_list_acl ALTER COLUMN id SET DEFAULT nextval('call_center.cc_list_acl_id_seq'::regclass);


--
-- Name: cc_list_communications id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_list_communications ALTER COLUMN id SET DEFAULT nextval('call_center.cc_list_communications_id_seq'::regclass);


--
-- Name: cc_member id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member ALTER COLUMN id SET DEFAULT nextval('call_center.cc_member_id_seq'::regclass);


--
-- Name: cc_member_attempt id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_attempt ALTER COLUMN id SET DEFAULT nextval('call_center.cc_member_attempt_id_seq'::regclass);


--
-- Name: cc_member_communications id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_communications ALTER COLUMN id SET DEFAULT nextval('call_center.cc_member_communications_id_seq'::regclass);


--
-- Name: cc_member_messages id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_messages ALTER COLUMN id SET DEFAULT nextval('call_center.cc_member_messages_id_seq'::regclass);


--
-- Name: cc_outbound_resource id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource ALTER COLUMN id SET DEFAULT nextval('call_center.cc_queue_resource_id_seq'::regclass);


--
-- Name: cc_outbound_resource_acl id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_acl ALTER COLUMN id SET DEFAULT nextval('call_center.cc_outbound_resource_acl_id_seq'::regclass);


--
-- Name: cc_outbound_resource_display id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_display ALTER COLUMN id SET DEFAULT nextval('call_center.cc_outbound_resource_display_id_seq'::regclass);


--
-- Name: cc_outbound_resource_group id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_group ALTER COLUMN id SET DEFAULT nextval('call_center.cc_outbound_resource_group_id_seq'::regclass);


--
-- Name: cc_outbound_resource_group_acl id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_group_acl ALTER COLUMN id SET DEFAULT nextval('call_center.cc_outbound_resource_group_acl_id_seq'::regclass);


--
-- Name: cc_outbound_resource_in_group id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_in_group ALTER COLUMN id SET DEFAULT nextval('call_center.cc_outbound_resource_in_group_id_seq'::regclass);


--
-- Name: cc_queue id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue ALTER COLUMN id SET DEFAULT nextval('call_center.cc_queue_id_seq'::regclass);


--
-- Name: cc_queue_acl id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_acl ALTER COLUMN id SET DEFAULT nextval('call_center.cc_queue_acl_id_seq'::regclass);


--
-- Name: cc_queue_resource id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_resource ALTER COLUMN id SET DEFAULT nextval('call_center.cc_queue_resource_id_seq1'::regclass);


--
-- Name: cc_queue_statistics id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_statistics ALTER COLUMN id SET DEFAULT nextval('call_center.cc_queue_member_statistics_id_seq'::regclass);


--
-- Name: cc_skill id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_skill ALTER COLUMN id SET DEFAULT nextval('call_center.cc_skils_id_seq'::regclass);


--
-- Name: cc_skill_in_agent id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_skill_in_agent ALTER COLUMN id SET DEFAULT nextval('call_center.cc_skill_in_agent_id_seq'::regclass);


--
-- Name: cc_supervisor_in_team id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_supervisor_in_team ALTER COLUMN id SET DEFAULT nextval('call_center.cc_supervisor_in_team_id_seq'::regclass);


--
-- Name: cc_team id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_team ALTER COLUMN id SET DEFAULT nextval('call_center.cc_team_id_seq'::regclass);


--
-- Name: cc_team_acl id; Type: DEFAULT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_team_acl ALTER COLUMN id SET DEFAULT nextval('call_center.cc_team_acl_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.contacts ALTER COLUMN id SET DEFAULT nextval('directory.contacts_id_seq'::regclass);


--
-- Name: sip_gateway id; Type: DEFAULT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.sip_gateway ALTER COLUMN id SET DEFAULT nextval('directory.sip_gateway_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.users ALTER COLUMN id SET DEFAULT nextval('directory.wbt_auth_id_seq'::regclass);


--
-- Name: users created_at; Type: DEFAULT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.users ALTER COLUMN created_at SET DEFAULT LOCALTIMESTAMP;


--
-- Name: users updated_at; Type: DEFAULT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.users ALTER COLUMN updated_at SET DEFAULT LOCALTIMESTAMP;


--
-- Name: wbt_auth id; Type: DEFAULT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth ALTER COLUMN id SET DEFAULT nextval('directory.wbt_auth_id_seq'::regclass);


--
-- Name: wbt_class id; Type: DEFAULT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_class ALTER COLUMN id SET DEFAULT nextval('directory.wbt_class_id_seq'::regclass);


--
-- Name: wbt_device id; Type: DEFAULT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device ALTER COLUMN id SET DEFAULT nextval('directory.device_id_seq'::regclass);


--
-- Name: wbt_grant uuid; Type: DEFAULT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_grant ALTER COLUMN uuid SET DEFAULT nextval('directory.wbt_grant_id_seq'::regclass);


--
-- Name: wbt_auth id; Type: DEFAULT; Schema: permissions; Owner: -
--

ALTER TABLE ONLY permissions.wbt_auth ALTER COLUMN id SET DEFAULT nextval('permissions.wbt_auth_id_seq'::regclass);


--
-- Name: wbt_domain dc; Type: DEFAULT; Schema: permissions; Owner: -
--

ALTER TABLE ONLY permissions.wbt_domain ALTER COLUMN dc SET DEFAULT nextval('permissions.wbt_domain_id_seq'::regclass);


--
-- Name: wbt_test_acl id; Type: DEFAULT; Schema: permissions; Owner: -
--

ALTER TABLE ONLY permissions.wbt_test_acl ALTER COLUMN id SET DEFAULT nextval('permissions.wbt_test_acl_id_seq'::regclass);


--
-- Name: acc id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acc ALTER COLUMN id SET DEFAULT nextval('public.acc_id_seq'::regclass);


--
-- Name: active_watchers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.active_watchers ALTER COLUMN id SET DEFAULT nextval('public.active_watchers_id_seq'::regclass);


--
-- Name: address id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.address ALTER COLUMN id SET DEFAULT nextval('public.address_id_seq'::regclass);


--
-- Name: b2b_entities id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.b2b_entities ALTER COLUMN id SET DEFAULT nextval('public.b2b_entities_id_seq'::regclass);


--
-- Name: b2b_logic id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.b2b_logic ALTER COLUMN id SET DEFAULT nextval('public.b2b_logic_id_seq'::regclass);


--
-- Name: calendar id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calendar ALTER COLUMN id SET DEFAULT nextval('public.calendar_id_seq'::regclass);


--
-- Name: calendar_accept_of_day id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calendar_accept_of_day ALTER COLUMN id SET DEFAULT nextval('public.calendar_accept_of_day_id_seq'::regclass);


--
-- Name: calendar_except id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calendar_except ALTER COLUMN id SET DEFAULT nextval('public.calendar_except_id_seq'::regclass);


--
-- Name: callback_calls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callback_calls ALTER COLUMN id SET DEFAULT nextval('public.callback_calls_id_seq'::regclass);


--
-- Name: callback_members id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callback_members ALTER COLUMN id SET DEFAULT nextval('public.callback_members_id_seq'::regclass);


--
-- Name: callback_members_comment id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callback_members_comment ALTER COLUMN id SET DEFAULT nextval('public.callback_members_comment_id_seq'::regclass);


--
-- Name: callback_queue id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callback_queue ALTER COLUMN id SET DEFAULT nextval('public.callback_queue_id_seq'::regclass);


--
-- Name: callflow_default id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callflow_default ALTER COLUMN id SET DEFAULT nextval('public.callflow_default_id_seq'::regclass);


--
-- Name: callflow_default order; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callflow_default ALTER COLUMN "order" SET DEFAULT currval('public.callflow_default_id_seq'::regclass);


--
-- Name: callflow_extension id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callflow_extension ALTER COLUMN id SET DEFAULT nextval('public.callflow_extension_id_seq'::regclass);


--
-- Name: callflow_public_1 id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callflow_public_1 ALTER COLUMN id SET DEFAULT nextval('public.callflow_public_id_seq'::regclass);


--
-- Name: callflow_variables id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callflow_variables ALTER COLUMN id SET DEFAULT nextval('public.callflow_variables_id_seq'::regclass);


--
-- Name: carrierfailureroute id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carrierfailureroute ALTER COLUMN id SET DEFAULT nextval('public.carrierfailureroute_id_seq'::regclass);


--
-- Name: carrierroute id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carrierroute ALTER COLUMN id SET DEFAULT nextval('public.carrierroute_id_seq'::regclass);


--
-- Name: cc_agent id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agent ALTER COLUMN id SET DEFAULT nextval('public.cc_agent_id_seq'::regclass);


--
-- Name: cc_agent_activity id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agent_activity ALTER COLUMN id SET DEFAULT nextval('public.cc_agent_activity_id_seq'::regclass);


--
-- Name: cc_agent_in_queue id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agent_in_queue ALTER COLUMN id SET DEFAULT nextval('public.cc_agent_in_queue_id_seq'::regclass);


--
-- Name: cc_agent_state_history id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agent_state_history ALTER COLUMN id SET DEFAULT nextval('public.cc_agent_state_history_id_seq'::regclass);


--
-- Name: cc_agents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agents ALTER COLUMN id SET DEFAULT nextval('public.cc_agents_id_seq'::regclass);


--
-- Name: cc_calls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_calls ALTER COLUMN id SET DEFAULT nextval('public.cc_calls_id_seq'::regclass);


--
-- Name: cc_cdrs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_cdrs ALTER COLUMN id SET DEFAULT nextval('public.cc_cdrs_id_seq'::regclass);


--
-- Name: cc_cluster id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_cluster ALTER COLUMN id SET DEFAULT nextval('public.cc_cluster_id_seq'::regclass);


--
-- Name: cc_communication id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_communication ALTER COLUMN id SET DEFAULT nextval('public.cc_communication_id_seq'::regclass);


--
-- Name: cc_flows id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_flows ALTER COLUMN id SET DEFAULT nextval('public.cc_flows_id_seq'::regclass);


--
-- Name: cc_list id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_list ALTER COLUMN id SET DEFAULT nextval('public.cc_list_id_seq'::regclass);


--
-- Name: cc_list_communications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_list_communications ALTER COLUMN id SET DEFAULT nextval('public.cc_list_communications_id_seq'::regclass);


--
-- Name: cc_member id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_member ALTER COLUMN id SET DEFAULT nextval('public.cc_member_id_seq'::regclass);


--
-- Name: cc_member_attempt id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_member_attempt ALTER COLUMN id SET DEFAULT nextval('public.cc_member_attempt_id_seq'::regclass);


--
-- Name: cc_member_communications id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_member_communications ALTER COLUMN id SET DEFAULT nextval('public.cc_member_communications_id_seq'::regclass);


--
-- Name: cc_outbound_resource id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_outbound_resource ALTER COLUMN id SET DEFAULT nextval('public.cc_outbound_resource_id_seq'::regclass);


--
-- Name: cc_queue id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_queue ALTER COLUMN id SET DEFAULT nextval('public.cc_queue_id_seq'::regclass);


--
-- Name: cc_queue_routing id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_queue_routing ALTER COLUMN id SET DEFAULT nextval('public.cc_queue_routing_id_seq'::regclass);


--
-- Name: cc_queue_timing id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_queue_timing ALTER COLUMN id SET DEFAULT nextval('public.cc_queue_timing_id_seq'::regclass);


--
-- Name: cc_resource_in_routing id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_resource_in_routing ALTER COLUMN id SET DEFAULT nextval('public.cc_resource_in_routing_id_seq'::regclass);


--
-- Name: cc_skill_in_agent id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_skill_in_agent ALTER COLUMN id SET DEFAULT nextval('public.cc_skill_in_agent_id_seq'::regclass);


--
-- Name: cc_skils id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_skils ALTER COLUMN id SET DEFAULT nextval('public.cc_skils_id_seq'::regclass);


--
-- Name: cdr_a id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cdr_a ALTER COLUMN id SET DEFAULT nextval('public.cdr_a_id_seq'::regclass);


--
-- Name: cdr_a_elastic id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cdr_a_elastic ALTER COLUMN id SET DEFAULT nextval('public.cdr_a_elastic_id_seq'::regclass);


--
-- Name: cdr_b id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cdr_b ALTER COLUMN id SET DEFAULT nextval('public.cdr_b_id_seq'::regclass);


--
-- Name: cdr_b_elastic id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cdr_b_elastic ALTER COLUMN id SET DEFAULT nextval('public.cdr_b_elastic_id_seq'::regclass);


--
-- Name: cdr_bad_event id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cdr_bad_event ALTER COLUMN id SET DEFAULT nextval('public.cdr_bad_event_id_seq'::regclass);


--
-- Name: clusterer id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusterer ALTER COLUMN id SET DEFAULT nextval('public.clusterer_id_seq'::regclass);


--
-- Name: cpl id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cpl ALTER COLUMN id SET DEFAULT nextval('public.cpl_id_seq'::regclass);


--
-- Name: dbaliases id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dbaliases ALTER COLUMN id SET DEFAULT nextval('public.dbaliases_id_seq'::regclass);


--
-- Name: dialplan id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dialplan ALTER COLUMN id SET DEFAULT nextval('public.dialplan_id_seq'::regclass);


--
-- Name: dispatcher id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dispatcher ALTER COLUMN id SET DEFAULT nextval('public.dispatcher_id_seq'::regclass);


--
-- Name: domain id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.domain ALTER COLUMN id SET DEFAULT nextval('public.domain_id_seq'::regclass);


--
-- Name: domainpolicy id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.domainpolicy ALTER COLUMN id SET DEFAULT nextval('public.domainpolicy_id_seq'::regclass);


--
-- Name: dr_carriers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dr_carriers ALTER COLUMN id SET DEFAULT nextval('public.dr_carriers_id_seq'::regclass);


--
-- Name: dr_gateways id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dr_gateways ALTER COLUMN id SET DEFAULT nextval('public.dr_gateways_id_seq'::regclass);


--
-- Name: dr_groups id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dr_groups ALTER COLUMN id SET DEFAULT nextval('public.dr_groups_id_seq'::regclass);


--
-- Name: dr_partitions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dr_partitions ALTER COLUMN id SET DEFAULT nextval('public.dr_partitions_id_seq'::regclass);


--
-- Name: dr_rules ruleid; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dr_rules ALTER COLUMN ruleid SET DEFAULT nextval('public.dr_rules_ruleid_seq'::regclass);


--
-- Name: emergency_report id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.emergency_report ALTER COLUMN id SET DEFAULT nextval('public.emergency_report_id_seq'::regclass);


--
-- Name: emergency_routing id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.emergency_routing ALTER COLUMN id SET DEFAULT nextval('public.emergency_routing_id_seq'::regclass);


--
-- Name: emergency_service_provider id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.emergency_service_provider ALTER COLUMN id SET DEFAULT nextval('public.emergency_service_provider_id_seq'::regclass);


--
-- Name: fraud_detection ruleid; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fraud_detection ALTER COLUMN ruleid SET DEFAULT nextval('public.fraud_detection_ruleid_seq'::regclass);


--
-- Name: freeswitch id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.freeswitch ALTER COLUMN id SET DEFAULT nextval('public.freeswitch_id_seq'::regclass);


--
-- Name: globalblacklist id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.globalblacklist ALTER COLUMN id SET DEFAULT nextval('public.globalblacklist_id_seq'::regclass);


--
-- Name: grp id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grp ALTER COLUMN id SET DEFAULT nextval('public.grp_id_seq'::regclass);


--
-- Name: imc_members id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imc_members ALTER COLUMN id SET DEFAULT nextval('public.imc_members_id_seq'::regclass);


--
-- Name: imc_rooms id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imc_rooms ALTER COLUMN id SET DEFAULT nextval('public.imc_rooms_id_seq'::regclass);


--
-- Name: load_balancer id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.load_balancer ALTER COLUMN id SET DEFAULT nextval('public.load_balancer_id_seq'::regclass);


--
-- Name: location contact_id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.location ALTER COLUMN contact_id SET DEFAULT nextval('public.location_contact_id_seq'::regclass);


--
-- Name: missed_calls id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.missed_calls ALTER COLUMN id SET DEFAULT nextval('public.missed_calls_id_seq'::regclass);


--
-- Name: presentity id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.presentity ALTER COLUMN id SET DEFAULT nextval('public.presentity_id_seq'::regclass);


--
-- Name: pua id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pua ALTER COLUMN id SET DEFAULT nextval('public.pua_id_seq'::regclass);


--
-- Name: re_grp id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.re_grp ALTER COLUMN id SET DEFAULT nextval('public.re_grp_id_seq'::regclass);


--
-- Name: registrant id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.registrant ALTER COLUMN id SET DEFAULT nextval('public.registrant_id_seq'::regclass);


--
-- Name: rls_presentity id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rls_presentity ALTER COLUMN id SET DEFAULT nextval('public.rls_presentity_id_seq'::regclass);


--
-- Name: rls_watchers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rls_watchers ALTER COLUMN id SET DEFAULT nextval('public.rls_watchers_id_seq'::regclass);


--
-- Name: route_tree id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.route_tree ALTER COLUMN id SET DEFAULT nextval('public.route_tree_id_seq'::regclass);


--
-- Name: rtpengine id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rtpengine ALTER COLUMN id SET DEFAULT nextval('public.rtpengine_id_seq'::regclass);


--
-- Name: rtpproxy_sockets id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rtpproxy_sockets ALTER COLUMN id SET DEFAULT nextval('public.rtpproxy_sockets_id_seq'::regclass);


--
-- Name: silo id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.silo ALTER COLUMN id SET DEFAULT nextval('public.silo_id_seq'::regclass);


--
-- Name: sip_trace id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sip_trace ALTER COLUMN id SET DEFAULT nextval('public.sip_trace_id_seq'::regclass);


--
-- Name: speed_dial id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.speed_dial ALTER COLUMN id SET DEFAULT nextval('public.speed_dial_id_seq'::regclass);


--
-- Name: subscriber id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscriber ALTER COLUMN id SET DEFAULT nextval('public.subscriber_id_seq'::regclass);


--
-- Name: tls_mgm id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tls_mgm ALTER COLUMN id SET DEFAULT nextval('public.tls_mgm_id_seq'::regclass);


--
-- Name: uri id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.uri ALTER COLUMN id SET DEFAULT nextval('public.uri_id_seq'::regclass);


--
-- Name: user id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."user" ALTER COLUMN id SET DEFAULT nextval('public.user_id_seq'::regclass);


--
-- Name: userblacklist id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userblacklist ALTER COLUMN id SET DEFAULT nextval('public.userblacklist_id_seq'::regclass);


--
-- Name: usr_preferences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usr_preferences ALTER COLUMN id SET DEFAULT nextval('public.usr_preferences_id_seq'::regclass);


--
-- Name: watchers id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.watchers ALTER COLUMN id SET DEFAULT nextval('public.watchers_id_seq'::regclass);


--
-- Name: widget id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.widget ALTER COLUMN id SET DEFAULT nextval('public.widget_id_seq'::regclass);


--
-- Name: xcap id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.xcap ALTER COLUMN id SET DEFAULT nextval('public.xcap_id_seq'::regclass);


--
-- Name: file_backend_profiles id; Type: DEFAULT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.file_backend_profiles ALTER COLUMN id SET DEFAULT nextval('storage.file_backend_profiles_id_seq'::regclass);


--
-- Name: file_backend_profiles_acl id; Type: DEFAULT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.file_backend_profiles_acl ALTER COLUMN id SET DEFAULT nextval('storage.file_backend_profiles_acl_id_seq'::regclass);


--
-- Name: files id; Type: DEFAULT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.files ALTER COLUMN id SET DEFAULT nextval('storage.files_id_seq'::regclass);


--
-- Name: media_files id; Type: DEFAULT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.media_files ALTER COLUMN id SET DEFAULT nextval('storage.media_files_id_seq'::regclass);


--
-- Name: remove_file_jobs id; Type: DEFAULT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.remove_file_jobs ALTER COLUMN id SET DEFAULT nextval('storage.remove_file_jobs_id_seq'::regclass);


--
-- Name: schedulers id; Type: DEFAULT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.schedulers ALTER COLUMN id SET DEFAULT nextval('storage.schedulers_id_seq'::regclass);


--
-- Name: upload_file_jobs id; Type: DEFAULT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.upload_file_jobs ALTER COLUMN id SET DEFAULT nextval('storage.upload_file_jobs_id_seq'::regclass);


--
-- Name: acr_jobs acr_jobs_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_jobs
    ADD CONSTRAINT acr_jobs_pk PRIMARY KEY (id);


--
-- Name: acr_routing_inbound_call acr_routing_inbound_call_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_inbound_call
    ADD CONSTRAINT acr_routing_inbound_call_pk PRIMARY KEY (id);


--
-- Name: acr_routing_outbound_call acr_routing_outbound_call_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_outbound_call
    ADD CONSTRAINT acr_routing_outbound_call_pk PRIMARY KEY (id);


--
-- Name: acr_routing_scheme acr_routing_scheme_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_scheme
    ADD CONSTRAINT acr_routing_scheme_pk PRIMARY KEY (id);


--
-- Name: acr_routing_variables acr_routing_variables_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_variables
    ADD CONSTRAINT acr_routing_variables_pk PRIMARY KEY (id);


--
-- Name: cc_agent_activity agent_statistic_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_activity
    ADD CONSTRAINT agent_statistic_pk PRIMARY KEY (id);


--
-- Name: calendar_accept_of_day calendar_accept_of_day_pkey; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar_accept_of_day
    ADD CONSTRAINT calendar_accept_of_day_pkey PRIMARY KEY (id);


--
-- Name: calendar_except calendar_except_pkey; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar_except
    ADD CONSTRAINT calendar_except_pkey PRIMARY KEY (id);


--
-- Name: calendar calendar_pkey; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar
    ADD CONSTRAINT calendar_pkey PRIMARY KEY (id);


--
-- Name: calendar_timezones calendar_timezones_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar_timezones
    ADD CONSTRAINT calendar_timezones_pk PRIMARY KEY (name);


--
-- Name: cc_agent_acl cc_agent_acl_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_acl
    ADD CONSTRAINT cc_agent_acl_pk PRIMARY KEY (id);


--
-- Name: cc_agent_attempt cc_agent_attempt_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_attempt
    ADD CONSTRAINT cc_agent_attempt_pk PRIMARY KEY (id);


--
-- Name: cc_agent_in_team cc_agent_in_team_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_in_team
    ADD CONSTRAINT cc_agent_in_team_pk PRIMARY KEY (id);


--
-- Name: cc_agent_missed_attempt cc_agent_missed_attempt_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_missed_attempt
    ADD CONSTRAINT cc_agent_missed_attempt_pk PRIMARY KEY (id);


--
-- Name: cc_agent cc_agent_pkey; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent
    ADD CONSTRAINT cc_agent_pkey PRIMARY KEY (id);


--
-- Name: cc_agent_state_history cc_agent_status_history_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_state_history
    ADD CONSTRAINT cc_agent_status_history_pk PRIMARY KEY (id);


--
-- Name: cc_bucket_in_queue cc_bucket_in_queue_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_bucket_in_queue
    ADD CONSTRAINT cc_bucket_in_queue_pk PRIMARY KEY (id);


--
-- Name: cc_bucket cc_bucket_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_bucket
    ADD CONSTRAINT cc_bucket_pk PRIMARY KEY (id);


--
-- Name: cc_list cc_call_list_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_list
    ADD CONSTRAINT cc_call_list_pk PRIMARY KEY (id);


--
-- Name: cc_calls cc_calls_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_calls
    ADD CONSTRAINT cc_calls_pk PRIMARY KEY (id);


--
-- Name: cc_cluster cc_cluster_pkey; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_cluster
    ADD CONSTRAINT cc_cluster_pkey PRIMARY KEY (id);


--
-- Name: cc_communication cc_communication_pkey; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_communication
    ADD CONSTRAINT cc_communication_pkey PRIMARY KEY (id);


--
-- Name: cc_list_acl cc_list_acl_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_list_acl
    ADD CONSTRAINT cc_list_acl_pk PRIMARY KEY (id);


--
-- Name: cc_list_communications cc_list_communications_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_list_communications
    ADD CONSTRAINT cc_list_communications_pk PRIMARY KEY (id);


--
-- Name: cc_member_attempt_log cc_member_attempt_log_pkey; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_attempt_log
    ADD CONSTRAINT cc_member_attempt_log_pkey PRIMARY KEY (id);


--
-- Name: cc_member_attempt cc_member_attempt_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_attempt
    ADD CONSTRAINT cc_member_attempt_pk PRIMARY KEY (id);


--
-- Name: cc_member_communications cc_member_communications_id_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_communications
    ADD CONSTRAINT cc_member_communications_id_pk PRIMARY KEY (id);


--
-- Name: cc_member_messages cc_member_messages_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_messages
    ADD CONSTRAINT cc_member_messages_pk PRIMARY KEY (id);


--
-- Name: cc_member cc_member_pkey; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member
    ADD CONSTRAINT cc_member_pkey PRIMARY KEY (id);


--
-- Name: cc_outbound_resource_acl cc_outbound_resource_acl_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_acl
    ADD CONSTRAINT cc_outbound_resource_acl_pk PRIMARY KEY (id);


--
-- Name: cc_outbound_resource_display cc_outbound_resource_display_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_display
    ADD CONSTRAINT cc_outbound_resource_display_pk PRIMARY KEY (id);


--
-- Name: cc_outbound_resource_group_acl cc_outbound_resource_group_acl_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_group_acl
    ADD CONSTRAINT cc_outbound_resource_group_acl_pk PRIMARY KEY (id);


--
-- Name: cc_outbound_resource_group cc_outbound_resource_group_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_group
    ADD CONSTRAINT cc_outbound_resource_group_pk PRIMARY KEY (id);


--
-- Name: cc_outbound_resource_in_group cc_outbound_resource_in_group_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_in_group
    ADD CONSTRAINT cc_outbound_resource_in_group_pk PRIMARY KEY (id);


--
-- Name: cc_queue_acl cc_queue_acl_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_acl
    ADD CONSTRAINT cc_queue_acl_pk PRIMARY KEY (id);


--
-- Name: cc_queue cc_queue_pkey; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue
    ADD CONSTRAINT cc_queue_pkey PRIMARY KEY (id);


--
-- Name: cc_queue_resource cc_queue_resource_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_resource
    ADD CONSTRAINT cc_queue_resource_pk PRIMARY KEY (id);


--
-- Name: cc_outbound_resource cc_queue_resource_pkey; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource
    ADD CONSTRAINT cc_queue_resource_pkey PRIMARY KEY (id);


--
-- Name: cc_queue_statistics cc_queue_statistics_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_statistics
    ADD CONSTRAINT cc_queue_statistics_pk PRIMARY KEY (id);


--
-- Name: cc_skill_in_agent cc_skill_in_agent_pkey; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_skill_in_agent
    ADD CONSTRAINT cc_skill_in_agent_pkey PRIMARY KEY (id);


--
-- Name: cc_skill cc_skils_pkey; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_skill
    ADD CONSTRAINT cc_skils_pkey PRIMARY KEY (id);


--
-- Name: cc_supervisor_in_team cc_supervisor_in_team_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_supervisor_in_team
    ADD CONSTRAINT cc_supervisor_in_team_pk PRIMARY KEY (id);


--
-- Name: cc_team_acl cc_team_acl_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_team_acl
    ADD CONSTRAINT cc_team_acl_pk PRIMARY KEY (id);


--
-- Name: cc_team cc_team_pk; Type: CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_team
    ADD CONSTRAINT cc_team_pk PRIMARY KEY (id);


--
-- Name: certs certs_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.certs
    ADD CONSTRAINT certs_pk PRIMARY KEY (serial);


--
-- Name: contacts_acl contacts_acl_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.contacts_acl
    ADD CONSTRAINT contacts_acl_pk PRIMARY KEY (object, subject);


--
-- Name: contacts contacts_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.contacts
    ADD CONSTRAINT contacts_pk PRIMARY KEY (id);


--
-- Name: license license_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.license
    ADD CONSTRAINT license_pk PRIMARY KEY (serial, user_id);


--
-- Name: roles roles_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.roles
    ADD CONSTRAINT roles_pk PRIMARY KEY (id);


--
-- Name: sip_gateway sip_gateway_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.sip_gateway
    ADD CONSTRAINT sip_gateway_pk PRIMARY KEY (id);


--
-- Name: sip_gateway_register sip_gateway_register_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.sip_gateway_register
    ADD CONSTRAINT sip_gateway_register_pk PRIMARY KEY (id);


--
-- Name: voip_channel voip_channel_uuid; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.voip_channel
    ADD CONSTRAINT voip_channel_uuid PRIMARY KEY (uuid);


--
-- Name: voip_session voip_session_uuid; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.voip_session
    ADD CONSTRAINT voip_session_uuid PRIMARY KEY (uuid);


--
-- Name: wbt_auth_grants wbt_auth_grants_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth_grants
    ADD CONSTRAINT wbt_auth_grants_pk PRIMARY KEY (role_id, grant_id);


--
-- Name: wbt_auth_member wbt_auth_member_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth_member
    ADD CONSTRAINT wbt_auth_member_pk PRIMARY KEY (member_id, role_id);


--
-- Name: wbt_auth wbt_auth_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth
    ADD CONSTRAINT wbt_auth_pk PRIMARY KEY (id);


--
-- Name: wbt_cert_v0 wbt_cert_pkey; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_cert_v0
    ADD CONSTRAINT wbt_cert_pkey PRIMARY KEY (serial);


--
-- Name: wbt_class wbt_class_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_class
    ADD CONSTRAINT wbt_class_pk UNIQUE (dc, id);


--
-- Name: wbt_customer wbt_customer_id_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_customer
    ADD CONSTRAINT wbt_customer_id_pk PRIMARY KEY (id);


--
-- Name: wbt_device wbt_device_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device
    ADD CONSTRAINT wbt_device_pk PRIMARY KEY (id);


--
-- Name: wbt_device wbt_device_user_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device
    ADD CONSTRAINT wbt_device_user_pk UNIQUE (id, user_id, dc);


--
-- Name: wbt_auth wbt_domain_auth_fk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth
    ADD CONSTRAINT wbt_domain_auth_fk UNIQUE (id, dc);


--
-- Name: wbt_domain wbt_domain_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_domain
    ADD CONSTRAINT wbt_domain_pk PRIMARY KEY (dc);


--
-- Name: wbt_grant wbt_grant_pkey; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_grant
    ADD CONSTRAINT wbt_grant_pkey PRIMARY KEY (uuid);


--
-- Name: wbt_license wbt_license_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_license
    ADD CONSTRAINT wbt_license_pk PRIMARY KEY (serial, user_id);


--
-- Name: wbt_session wbt_session_token_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_session
    ADD CONSTRAINT wbt_session_token_pk PRIMARY KEY (uuid);


--
-- Name: wbt_user wbt_user_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_user
    ADD CONSTRAINT wbt_user_pk PRIMARY KEY (id);


--
-- Name: wbt_user_token wbt_user_token_pk; Type: CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_user_token
    ADD CONSTRAINT wbt_user_token_pk PRIMARY KEY (id);


--
-- Name: wbt_auth wbt_auth_pk; Type: CONSTRAINT; Schema: permissions; Owner: -
--

ALTER TABLE ONLY permissions.wbt_auth
    ADD CONSTRAINT wbt_auth_pk PRIMARY KEY (dc, id);


--
-- Name: wbt_domain wbt_domain_pk; Type: CONSTRAINT; Schema: permissions; Owner: -
--

ALTER TABLE ONLY permissions.wbt_domain
    ADD CONSTRAINT wbt_domain_pk PRIMARY KEY (dc);


--
-- Name: wbt_module wbt_modules_pk; Type: CONSTRAINT; Schema: permissions; Owner: -
--

ALTER TABLE ONLY permissions.wbt_module
    ADD CONSTRAINT wbt_modules_pk PRIMARY KEY (id);


--
-- Name: wbt_test_acl wbt_test_acl_pk; Type: CONSTRAINT; Schema: permissions; Owner: -
--

ALTER TABLE ONLY permissions.wbt_test_acl
    ADD CONSTRAINT wbt_test_acl_pk PRIMARY KEY (id);


--
-- Name: wbt_session wbt_token_access_key; Type: CONSTRAINT; Schema: permissions; Owner: -
--

ALTER TABLE ONLY permissions.wbt_session
    ADD CONSTRAINT wbt_token_access_key UNIQUE (access);


--
-- Name: wbt_session wbt_token_code_key; Type: CONSTRAINT; Schema: permissions; Owner: -
--

ALTER TABLE ONLY permissions.wbt_session
    ADD CONSTRAINT wbt_token_code_key UNIQUE (code);


--
-- Name: wbt_session wbt_token_pkey; Type: CONSTRAINT; Schema: permissions; Owner: -
--

ALTER TABLE ONLY permissions.wbt_session
    ADD CONSTRAINT wbt_token_pkey PRIMARY KEY (id);


--
-- Name: wbt_session wbt_token_refresh_key; Type: CONSTRAINT; Schema: permissions; Owner: -
--

ALTER TABLE ONLY permissions.wbt_session
    ADD CONSTRAINT wbt_token_refresh_key UNIQUE (refresh);


--
-- Name: acc acc_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.acc
    ADD CONSTRAINT acc_pkey PRIMARY KEY (id);


--
-- Name: active_watchers active_watchers_active_watchers_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.active_watchers
    ADD CONSTRAINT active_watchers_active_watchers_idx UNIQUE (presentity_uri, callid, to_tag, from_tag);


--
-- Name: active_watchers active_watchers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.active_watchers
    ADD CONSTRAINT active_watchers_pkey PRIMARY KEY (id);


--
-- Name: address address_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.address
    ADD CONSTRAINT address_pkey PRIMARY KEY (id);


--
-- Name: cc_agent_activity agent_statistic_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agent_activity
    ADD CONSTRAINT agent_statistic_pk PRIMARY KEY (id);


--
-- Name: b2b_entities b2b_entities_b2b_entities_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.b2b_entities
    ADD CONSTRAINT b2b_entities_b2b_entities_idx UNIQUE (type, tag0, tag1, callid);


--
-- Name: b2b_entities b2b_entities_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.b2b_entities
    ADD CONSTRAINT b2b_entities_pkey PRIMARY KEY (id);


--
-- Name: b2b_logic b2b_logic_b2b_logic_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.b2b_logic
    ADD CONSTRAINT b2b_logic_b2b_logic_idx UNIQUE (si_key);


--
-- Name: b2b_logic b2b_logic_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.b2b_logic
    ADD CONSTRAINT b2b_logic_pkey PRIMARY KEY (id);


--
-- Name: cachedb cachedb_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cachedb
    ADD CONSTRAINT cachedb_pkey PRIMARY KEY (keyname);


--
-- Name: calendar_accept_of_day calendar_accept_of_day_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calendar_accept_of_day
    ADD CONSTRAINT calendar_accept_of_day_pkey PRIMARY KEY (id);


--
-- Name: calendar_except calendar_except_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calendar_except
    ADD CONSTRAINT calendar_except_pkey PRIMARY KEY (id);


--
-- Name: calendar calendar_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calendar
    ADD CONSTRAINT calendar_pkey PRIMARY KEY (id);


--
-- Name: callback_calls callback_calls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callback_calls
    ADD CONSTRAINT callback_calls_pkey PRIMARY KEY (id);


--
-- Name: callback_members_comment callback_members_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callback_members_comment
    ADD CONSTRAINT callback_members_comment_pkey PRIMARY KEY (id);


--
-- Name: callback_members callback_members_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callback_members
    ADD CONSTRAINT callback_members_pkey PRIMARY KEY (id);


--
-- Name: callback_queue callback_queue_id_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callback_queue
    ADD CONSTRAINT callback_queue_id_pk PRIMARY KEY (id);


--
-- Name: callflow_default callflow_default_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callflow_default
    ADD CONSTRAINT callflow_default_pkey PRIMARY KEY (id);


--
-- Name: callflow_extension callflow_extension_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callflow_extension
    ADD CONSTRAINT callflow_extension_pkey PRIMARY KEY (id);


--
-- Name: callflow_public_1 callflow_public_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callflow_public_1
    ADD CONSTRAINT callflow_public_pkey PRIMARY KEY (id);


--
-- Name: callflow_variables callflow_variables_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callflow_variables
    ADD CONSTRAINT callflow_variables_pkey PRIMARY KEY (id);


--
-- Name: carrierfailureroute carrierfailureroute_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carrierfailureroute
    ADD CONSTRAINT carrierfailureroute_pkey PRIMARY KEY (id);


--
-- Name: carrierroute carrierroute_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.carrierroute
    ADD CONSTRAINT carrierroute_pkey PRIMARY KEY (id);


--
-- Name: cc_agent_in_queue cc_agent_in_queue_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agent_in_queue
    ADD CONSTRAINT cc_agent_in_queue_pkey PRIMARY KEY (id);


--
-- Name: cc_agent cc_agent_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agent
    ADD CONSTRAINT cc_agent_pkey PRIMARY KEY (id);


--
-- Name: cc_agent_state_history cc_agent_status_history_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agent_state_history
    ADD CONSTRAINT cc_agent_status_history_pk PRIMARY KEY (id);


--
-- Name: cc_agents cc_agents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agents
    ADD CONSTRAINT cc_agents_pkey PRIMARY KEY (id);


--
-- Name: cc_agents cc_agents_unique_agentid; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agents
    ADD CONSTRAINT cc_agents_unique_agentid UNIQUE (agentid);


--
-- Name: cc_list cc_call_list_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_list
    ADD CONSTRAINT cc_call_list_pk PRIMARY KEY (id);


--
-- Name: cc_calls cc_calls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_calls
    ADD CONSTRAINT cc_calls_pkey PRIMARY KEY (id);


--
-- Name: cc_calls cc_calls_unique_id; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_calls
    ADD CONSTRAINT cc_calls_unique_id UNIQUE (b2buaid);


--
-- Name: cc_cdrs cc_cdrs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_cdrs
    ADD CONSTRAINT cc_cdrs_pkey PRIMARY KEY (id);


--
-- Name: cc_cluster cc_cluster_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_cluster
    ADD CONSTRAINT cc_cluster_pkey PRIMARY KEY (id);


--
-- Name: cc_communication cc_communication_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_communication
    ADD CONSTRAINT cc_communication_pkey PRIMARY KEY (id);


--
-- Name: cc_flows cc_flows_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_flows
    ADD CONSTRAINT cc_flows_pkey PRIMARY KEY (id);


--
-- Name: cc_flows cc_flows_unique_flowid; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_flows
    ADD CONSTRAINT cc_flows_unique_flowid UNIQUE (flowid);


--
-- Name: cc_list_communications cc_list_communications_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_list_communications
    ADD CONSTRAINT cc_list_communications_pk PRIMARY KEY (id);


--
-- Name: cc_member_attempt cc_member_attempt_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_member_attempt
    ADD CONSTRAINT cc_member_attempt_pk PRIMARY KEY (id);


--
-- Name: cc_member_communications cc_member_communications_id_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_member_communications
    ADD CONSTRAINT cc_member_communications_id_pk PRIMARY KEY (id);


--
-- Name: cc_member cc_member_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_member
    ADD CONSTRAINT cc_member_pkey PRIMARY KEY (id);


--
-- Name: cc_queue cc_queue_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_queue
    ADD CONSTRAINT cc_queue_pkey PRIMARY KEY (id);


--
-- Name: cc_outbound_resource cc_queue_resource_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_outbound_resource
    ADD CONSTRAINT cc_queue_resource_pkey PRIMARY KEY (id);


--
-- Name: cc_queue_routing cc_queue_routing_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_queue_routing
    ADD CONSTRAINT cc_queue_routing_pkey PRIMARY KEY (id);


--
-- Name: cc_queue_timing cc_queue_timing_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_queue_timing
    ADD CONSTRAINT cc_queue_timing_pkey PRIMARY KEY (id);


--
-- Name: cc_resource_in_routing cc_resource_in_queue_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_resource_in_routing
    ADD CONSTRAINT cc_resource_in_queue_pkey PRIMARY KEY (id);


--
-- Name: cc_skill_in_agent cc_skill_in_agent_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_skill_in_agent
    ADD CONSTRAINT cc_skill_in_agent_pkey PRIMARY KEY (id);


--
-- Name: cc_skils cc_skils_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_skils
    ADD CONSTRAINT cc_skils_pkey PRIMARY KEY (id);


--
-- Name: cdr_a_elastic cdr_a_elastic_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cdr_a_elastic
    ADD CONSTRAINT cdr_a_elastic_pkey PRIMARY KEY (id);


--
-- Name: cdr_a cdr_a_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cdr_a
    ADD CONSTRAINT cdr_a_pkey PRIMARY KEY (id);


--
-- Name: cdr_b_elastic cdr_b_elastic_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cdr_b_elastic
    ADD CONSTRAINT cdr_b_elastic_pkey PRIMARY KEY (id);


--
-- Name: cdr_b cdr_b_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cdr_b
    ADD CONSTRAINT cdr_b_pkey PRIMARY KEY (id);


--
-- Name: cdr_bad_event cdr_bad_event_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cdr_bad_event
    ADD CONSTRAINT cdr_bad_event_pkey PRIMARY KEY (id);


--
-- Name: clusterer clusterer_clusterer_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusterer
    ADD CONSTRAINT clusterer_clusterer_idx UNIQUE (cluster_id, node_id);


--
-- Name: clusterer clusterer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.clusterer
    ADD CONSTRAINT clusterer_pkey PRIMARY KEY (id);


--
-- Name: cpl cpl_account_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cpl
    ADD CONSTRAINT cpl_account_idx UNIQUE (username, domain);


--
-- Name: cpl cpl_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cpl
    ADD CONSTRAINT cpl_pkey PRIMARY KEY (id);


--
-- Name: dbaliases dbaliases_alias_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dbaliases
    ADD CONSTRAINT dbaliases_alias_idx UNIQUE (alias_username, alias_domain);


--
-- Name: dbaliases dbaliases_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dbaliases
    ADD CONSTRAINT dbaliases_pkey PRIMARY KEY (id);


--
-- Name: dialog dialog_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dialog
    ADD CONSTRAINT dialog_pkey PRIMARY KEY (dlg_id);


--
-- Name: dialplan dialplan_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dialplan
    ADD CONSTRAINT dialplan_pkey PRIMARY KEY (id);


--
-- Name: dispatcher dispatcher_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dispatcher
    ADD CONSTRAINT dispatcher_pkey PRIMARY KEY (id);


--
-- Name: domain domain_domain_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.domain
    ADD CONSTRAINT domain_domain_idx UNIQUE (domain);


--
-- Name: domain domain_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.domain
    ADD CONSTRAINT domain_pkey PRIMARY KEY (id);


--
-- Name: domainpolicy domainpolicy_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.domainpolicy
    ADD CONSTRAINT domainpolicy_pkey PRIMARY KEY (id);


--
-- Name: domainpolicy domainpolicy_rav_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.domainpolicy
    ADD CONSTRAINT domainpolicy_rav_idx UNIQUE (rule, att, val);


--
-- Name: dr_carriers dr_carriers_dr_carrier_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dr_carriers
    ADD CONSTRAINT dr_carriers_dr_carrier_idx UNIQUE (carrierid);


--
-- Name: dr_carriers dr_carriers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dr_carriers
    ADD CONSTRAINT dr_carriers_pkey PRIMARY KEY (id);


--
-- Name: dr_gateways dr_gateways_dr_gw_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dr_gateways
    ADD CONSTRAINT dr_gateways_dr_gw_idx UNIQUE (gwid);


--
-- Name: dr_gateways dr_gateways_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dr_gateways
    ADD CONSTRAINT dr_gateways_pkey PRIMARY KEY (id);


--
-- Name: dr_groups dr_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dr_groups
    ADD CONSTRAINT dr_groups_pkey PRIMARY KEY (id);


--
-- Name: dr_partitions dr_partitions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dr_partitions
    ADD CONSTRAINT dr_partitions_pkey PRIMARY KEY (id);


--
-- Name: dr_rules dr_rules_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.dr_rules
    ADD CONSTRAINT dr_rules_pkey PRIMARY KEY (ruleid);


--
-- Name: emergency_report emergency_report_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.emergency_report
    ADD CONSTRAINT emergency_report_pkey PRIMARY KEY (id);


--
-- Name: emergency_routing emergency_routing_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.emergency_routing
    ADD CONSTRAINT emergency_routing_pkey PRIMARY KEY (id);


--
-- Name: emergency_service_provider emergency_service_provider_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.emergency_service_provider
    ADD CONSTRAINT emergency_service_provider_pkey PRIMARY KEY (id);


--
-- Name: fraud_detection fraud_detection_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fraud_detection
    ADD CONSTRAINT fraud_detection_pkey PRIMARY KEY (ruleid);


--
-- Name: freeswitch freeswitch_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.freeswitch
    ADD CONSTRAINT freeswitch_pkey PRIMARY KEY (id);


--
-- Name: globalblacklist globalblacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.globalblacklist
    ADD CONSTRAINT globalblacklist_pkey PRIMARY KEY (id);


--
-- Name: grp grp_account_group_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grp
    ADD CONSTRAINT grp_account_group_idx UNIQUE (username, domain, grp);


--
-- Name: grp grp_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.grp
    ADD CONSTRAINT grp_pkey PRIMARY KEY (id);


--
-- Name: imc_members imc_members_account_room_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imc_members
    ADD CONSTRAINT imc_members_account_room_idx UNIQUE (username, domain, room);


--
-- Name: imc_members imc_members_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imc_members
    ADD CONSTRAINT imc_members_pkey PRIMARY KEY (id);


--
-- Name: imc_rooms imc_rooms_name_domain_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imc_rooms
    ADD CONSTRAINT imc_rooms_name_domain_idx UNIQUE (name, domain);


--
-- Name: imc_rooms imc_rooms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.imc_rooms
    ADD CONSTRAINT imc_rooms_pkey PRIMARY KEY (id);


--
-- Name: load_balancer load_balancer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.load_balancer
    ADD CONSTRAINT load_balancer_pkey PRIMARY KEY (id);


--
-- Name: location location_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.location
    ADD CONSTRAINT location_pkey PRIMARY KEY (contact_id);


--
-- Name: missed_calls missed_calls_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.missed_calls
    ADD CONSTRAINT missed_calls_pkey PRIMARY KEY (id);


--
-- Name: presentity presentity_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.presentity
    ADD CONSTRAINT presentity_pkey PRIMARY KEY (id);


--
-- Name: presentity presentity_presentity_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.presentity
    ADD CONSTRAINT presentity_presentity_idx UNIQUE (username, domain, event, etag);


--
-- Name: pua pua_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.pua
    ADD CONSTRAINT pua_pkey PRIMARY KEY (id);


--
-- Name: re_grp re_grp_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.re_grp
    ADD CONSTRAINT re_grp_pkey PRIMARY KEY (id);


--
-- Name: registrant registrant_aor_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.registrant
    ADD CONSTRAINT registrant_aor_idx UNIQUE (aor);


--
-- Name: registrant registrant_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.registrant
    ADD CONSTRAINT registrant_pkey PRIMARY KEY (id);


--
-- Name: rls_presentity rls_presentity_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rls_presentity
    ADD CONSTRAINT rls_presentity_pkey PRIMARY KEY (id);


--
-- Name: rls_presentity rls_presentity_rls_presentity_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rls_presentity
    ADD CONSTRAINT rls_presentity_rls_presentity_idx UNIQUE (rlsubs_did, resource_uri);


--
-- Name: rls_watchers rls_watchers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rls_watchers
    ADD CONSTRAINT rls_watchers_pkey PRIMARY KEY (id);


--
-- Name: rls_watchers rls_watchers_rls_watcher_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rls_watchers
    ADD CONSTRAINT rls_watchers_rls_watcher_idx UNIQUE (presentity_uri, callid, to_tag, from_tag);


--
-- Name: route_tree route_tree_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.route_tree
    ADD CONSTRAINT route_tree_pkey PRIMARY KEY (id);


--
-- Name: rtpengine rtpengine_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rtpengine
    ADD CONSTRAINT rtpengine_pkey PRIMARY KEY (id);


--
-- Name: rtpproxy_sockets rtpproxy_sockets_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.rtpproxy_sockets
    ADD CONSTRAINT rtpproxy_sockets_pkey PRIMARY KEY (id);


--
-- Name: session session_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.session
    ADD CONSTRAINT session_pkey PRIMARY KEY ("Id");


--
-- Name: silo silo_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.silo
    ADD CONSTRAINT silo_pkey PRIMARY KEY (id);


--
-- Name: sip_trace sip_trace_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.sip_trace
    ADD CONSTRAINT sip_trace_pkey PRIMARY KEY (id);


--
-- Name: speed_dial speed_dial_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.speed_dial
    ADD CONSTRAINT speed_dial_pkey PRIMARY KEY (id);


--
-- Name: speed_dial speed_dial_speed_dial_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.speed_dial
    ADD CONSTRAINT speed_dial_speed_dial_idx UNIQUE (username, domain, sd_domain, sd_username);


--
-- Name: subscriber subscriber_account_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscriber
    ADD CONSTRAINT subscriber_account_idx UNIQUE (username, domain);


--
-- Name: subscriber subscriber_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.subscriber
    ADD CONSTRAINT subscriber_pkey PRIMARY KEY (id);


--
-- Name: tls_mgm tls_mgm_domain_type_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tls_mgm
    ADD CONSTRAINT tls_mgm_domain_type_idx UNIQUE (domain, type);


--
-- Name: tls_mgm tls_mgm_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.tls_mgm
    ADD CONSTRAINT tls_mgm_pkey PRIMARY KEY (id);


--
-- Name: uri uri_account_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.uri
    ADD CONSTRAINT uri_account_idx UNIQUE (username, domain, uri_user);


--
-- Name: uri uri_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.uri
    ADD CONSTRAINT uri_pkey PRIMARY KEY (id);


--
-- Name: userblacklist userblacklist_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.userblacklist
    ADD CONSTRAINT userblacklist_pkey PRIMARY KEY (id);


--
-- Name: user users_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public."user"
    ADD CONSTRAINT users_pk PRIMARY KEY (id);


--
-- Name: usr_preferences usr_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.usr_preferences
    ADD CONSTRAINT usr_preferences_pkey PRIMARY KEY (id);


--
-- Name: version version_t_name_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.version
    ADD CONSTRAINT version_t_name_idx UNIQUE (table_name);


--
-- Name: watchers watchers_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.watchers
    ADD CONSTRAINT watchers_pkey PRIMARY KEY (id);


--
-- Name: watchers watchers_watcher_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.watchers
    ADD CONSTRAINT watchers_watcher_idx UNIQUE (presentity_uri, watcher_username, watcher_domain, event);


--
-- Name: wbt_auth wbt_authoid; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_auth
    ADD CONSTRAINT wbt_authoid PRIMARY KEY (dc, id);


--
-- Name: wbt_cert_grants wbt_cert_grants_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_cert_grants
    ADD CONSTRAINT wbt_cert_grants_pkey PRIMARY KEY (id);


--
-- Name: wbt_cert wbt_cert_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_cert
    ADD CONSTRAINT wbt_cert_pkey PRIMARY KEY (serial);


--
-- Name: wbt_cert_usage wbt_cert_usage_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_cert_usage
    ADD CONSTRAINT wbt_cert_usage_pk PRIMARY KEY (dc, id, ci);


--
-- Name: wbt_device wbt_device_id; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_device
    ADD CONSTRAINT wbt_device_id UNIQUE (dc, device_id);


--
-- Name: wbt_device wbt_device_oid; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_device
    ADD CONSTRAINT wbt_device_oid PRIMARY KEY (dc, id);


--
-- Name: wbt_domain wbt_domain_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_domain
    ADD CONSTRAINT wbt_domain_pkey PRIMARY KEY (dc);


--
-- Name: wbt_auth_member wbt_membership; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_auth_member
    ADD CONSTRAINT wbt_membership PRIMARY KEY (dc, role, member);


--
-- Name: wbt_sequence wbt_sequence_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_sequence
    ADD CONSTRAINT wbt_sequence_pkey PRIMARY KEY (oid);


--
-- Name: wbt_token wbt_token_access_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_token
    ADD CONSTRAINT wbt_token_access_key UNIQUE (access);


--
-- Name: wbt_token wbt_token_code_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_token
    ADD CONSTRAINT wbt_token_code_key UNIQUE (code);


--
-- Name: wbt_token wbt_token_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_token
    ADD CONSTRAINT wbt_token_pkey PRIMARY KEY (id);


--
-- Name: wbt_token wbt_token_refresh_key; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_token
    ADD CONSTRAINT wbt_token_refresh_key UNIQUE (refresh);


--
-- Name: widget widget_id_pk; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.widget
    ADD CONSTRAINT widget_id_pk PRIMARY KEY (id);


--
-- Name: xcap xcap_account_doc_type_idx; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.xcap
    ADD CONSTRAINT xcap_account_doc_type_idx UNIQUE (username, domain, doc_type, doc_uri);


--
-- Name: xcap xcap_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.xcap
    ADD CONSTRAINT xcap_pkey PRIMARY KEY (id);


--
-- Name: file_backend_profiles_acl file_backend_profiles_acl_pk; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.file_backend_profiles_acl
    ADD CONSTRAINT file_backend_profiles_acl_pk PRIMARY KEY (id);


--
-- Name: file_backend_profiles file_backend_profiles_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.file_backend_profiles
    ADD CONSTRAINT file_backend_profiles_pkey PRIMARY KEY (id);


--
-- Name: files files_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: media_files media_files_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.media_files
    ADD CONSTRAINT media_files_pkey PRIMARY KEY (id);


--
-- Name: remove_file_jobs remove_file_jobs_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.remove_file_jobs
    ADD CONSTRAINT remove_file_jobs_pkey PRIMARY KEY (id);


--
-- Name: schedulers schedulers_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.schedulers
    ADD CONSTRAINT schedulers_pkey PRIMARY KEY (id);


--
-- Name: upload_file_jobs upload_file_jobs_pkey; Type: CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.upload_file_jobs
    ADD CONSTRAINT upload_file_jobs_pkey PRIMARY KEY (id);


--
-- Name: acr_jobs_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX acr_jobs_id_uindex ON call_center.acr_jobs USING btree (id);


--
-- Name: acr_routing_inbound_call_domain_id_numbers_host_disabled_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX acr_routing_inbound_call_domain_id_numbers_host_disabled_index ON call_center.acr_routing_inbound_call USING btree (domain_id, numbers, host, disabled);


--
-- Name: acr_routing_inbound_call_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX acr_routing_inbound_call_id_uindex ON call_center.acr_routing_inbound_call USING btree (id);


--
-- Name: acr_routing_outbound_call_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX acr_routing_outbound_call_id_uindex ON call_center.acr_routing_outbound_call USING btree (id);


--
-- Name: acr_routing_scheme_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX acr_routing_scheme_id_uindex ON call_center.acr_routing_scheme USING btree (id);


--
-- Name: acr_routing_variables_domain_id_key_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX acr_routing_variables_domain_id_key_uindex ON call_center.acr_routing_variables USING btree (domain_id, key);


--
-- Name: acr_routing_variables_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX acr_routing_variables_id_uindex ON call_center.acr_routing_variables USING btree (id);


--
-- Name: agent_statistic_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX agent_statistic_id_uindex ON call_center.cc_agent_activity USING btree (id);


--
-- Name: calendar_accept_of_day_calendar_id_week_day_start_time_of_day_e; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX calendar_accept_of_day_calendar_id_week_day_start_time_of_day_e ON call_center.calendar_accept_of_day USING btree (calendar_id, day, start_time_of_day, end_time_of_day DESC);


--
-- Name: calendar_accept_of_day_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX calendar_accept_of_day_id_uindex ON call_center.calendar_accept_of_day USING btree (id);


--
-- Name: calendar_acl_grantor_idx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX calendar_acl_grantor_idx ON call_center.calendar_acl USING btree (grantor);


--
-- Name: calendar_acl_object_subject_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX calendar_acl_object_subject_udx ON call_center.calendar_acl USING btree (object, subject) INCLUDE (access);


--
-- Name: calendar_acl_subject_object_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX calendar_acl_subject_object_udx ON call_center.calendar_acl USING btree (subject, object) INCLUDE (access);


--
-- Name: calendar_domain_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX calendar_domain_udx ON call_center.calendar USING btree (id, domain_id);


--
-- Name: calendar_except_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX calendar_except_id_uindex ON call_center.calendar_except USING btree (id);


--
-- Name: calendar_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX calendar_id_uindex ON call_center.calendar USING btree (id);


--
-- Name: calendar_timezones_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX calendar_timezones_id_uindex ON call_center.calendar_timezones USING btree (id);


--
-- Name: calendar_timezones_name_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX calendar_timezones_name_uindex ON call_center.calendar_timezones USING btree (name);


--
-- Name: calendar_timezones_utc_offset_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX calendar_timezones_utc_offset_index ON call_center.calendar_timezones USING btree (id, utc_offset, name);


--
-- Name: cc_agent_acl_grantor_idx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_agent_acl_grantor_idx ON call_center.cc_agent_acl USING btree (grantor);


--
-- Name: cc_agent_acl_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_agent_acl_id_uindex ON call_center.cc_agent_acl USING btree (id);


--
-- Name: cc_agent_acl_object_subject_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_agent_acl_object_subject_udx ON call_center.cc_agent_acl USING btree (object, subject) INCLUDE (access);


--
-- Name: cc_agent_acl_subject_object_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_agent_acl_subject_object_udx ON call_center.cc_agent_acl USING btree (subject, object) INCLUDE (access);


--
-- Name: cc_agent_activity_agent_id_last_offering_call_at_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_agent_activity_agent_id_last_offering_call_at_uindex ON call_center.cc_agent_activity USING btree (agent_id, last_offering_call_at);


--
-- Name: cc_agent_attempt_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_agent_attempt_id_uindex ON call_center.cc_agent_attempt USING btree (id);


--
-- Name: cc_agent_domain_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_agent_domain_udx ON call_center.cc_agent USING btree (id, domain_id);


--
-- Name: cc_agent_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_agent_id_uindex ON call_center.cc_agent USING btree (id);


--
-- Name: cc_agent_in_team_agent_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_agent_in_team_agent_id_index ON call_center.cc_agent_in_team USING btree (agent_id);


--
-- Name: cc_agent_in_team_dis_agent; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_agent_in_team_dis_agent ON call_center.cc_agent_in_team USING btree (team_id, bucket_id, agent_id, lvl);


--
-- Name: cc_agent_in_team_dis_skill; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_agent_in_team_dis_skill ON call_center.cc_agent_in_team USING btree (team_id, bucket_id, skill_id, lvl) INCLUDE (min_capacity, max_capacity);


--
-- Name: cc_agent_in_team_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_agent_in_team_id_uindex ON call_center.cc_agent_in_team USING btree (id);


--
-- Name: cc_agent_in_team_skill_id_team_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_agent_in_team_skill_id_team_id_index ON call_center.cc_agent_in_team USING btree (skill_id, team_id);


--
-- Name: cc_agent_in_team_team_id_agent_id_skill_id_lvl_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_agent_in_team_team_id_agent_id_skill_id_lvl_uindex ON call_center.cc_agent_in_team USING btree (team_id, agent_id, skill_id, lvl DESC);


--
-- Name: cc_agent_in_team_team_id_lvl_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_agent_in_team_team_id_lvl_index ON call_center.cc_agent_in_team USING btree (team_id, lvl DESC);


--
-- Name: cc_agent_last_2hour_calls_mat_agent_id_adx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_agent_last_2hour_calls_mat_agent_id_adx ON call_center.cc_agent_last_2hour_calls_mat USING btree (id);


--
-- Name: cc_agent_missed_attempt_agent_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_agent_missed_attempt_agent_id_index ON call_center.cc_agent_missed_attempt USING btree (agent_id);


--
-- Name: cc_agent_missed_attempt_attempt_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_agent_missed_attempt_attempt_id_index ON call_center.cc_agent_missed_attempt USING btree (attempt_id);


--
-- Name: cc_agent_missed_attempt_created_at_agent_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_agent_missed_attempt_created_at_agent_id_uindex ON call_center.cc_agent_missed_attempt USING btree (created_at DESC, agent_id);


--
-- Name: cc_agent_missed_attempt_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_agent_missed_attempt_id_uindex ON call_center.cc_agent_missed_attempt USING btree (id);


--
-- Name: cc_agent_state_timeout_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_agent_state_timeout_index ON call_center.cc_agent USING btree (state_timeout);


--
-- Name: cc_agent_status_history_agent_id_join_at_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_agent_status_history_agent_id_join_at_index ON call_center.cc_agent_state_history USING btree (joined_at DESC, agent_id, queue_id, state);


--
-- Name: cc_agent_status_history_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_agent_status_history_id_uindex ON call_center.cc_agent_state_history USING btree (id);


--
-- Name: cc_agent_status_state_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_agent_status_state_id_index ON call_center.cc_agent USING btree (status, state, id);


--
-- Name: cc_bucket_acl_grantor_idx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_bucket_acl_grantor_idx ON call_center.cc_bucket_acl USING btree (grantor);


--
-- Name: cc_bucket_acl_object_subject_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_bucket_acl_object_subject_udx ON call_center.cc_bucket_acl USING btree (object, subject) INCLUDE (access);


--
-- Name: cc_bucket_acl_subject_object_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_bucket_acl_subject_object_udx ON call_center.cc_bucket_acl USING btree (subject, object) INCLUDE (access);


--
-- Name: cc_bucket_domain_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_bucket_domain_udx ON call_center.cc_bucket USING btree (id, domain_id);


--
-- Name: cc_bucket_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_bucket_id_uindex ON call_center.cc_bucket USING btree (id);


--
-- Name: cc_bucket_in_queue_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_bucket_in_queue_id_uindex ON call_center.cc_bucket_in_queue USING btree (id);


--
-- Name: cc_bucket_in_queue_queue_id_bucket_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_bucket_in_queue_queue_id_bucket_id_uindex ON call_center.cc_bucket_in_queue USING btree (queue_id, bucket_id);


--
-- Name: cc_call_list_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_call_list_id_uindex ON call_center.cc_list USING btree (id);


--
-- Name: cc_calls_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_calls_id_uindex ON call_center.cc_calls USING btree (id);


--
-- Name: cc_cluster_node_name_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_cluster_node_name_uindex ON call_center.cc_cluster USING btree (node_name);


--
-- Name: cc_communication_code_domain_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_communication_code_domain_id_uindex ON call_center.cc_communication USING btree (code, domain_id);


--
-- Name: cc_communication_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_communication_id_uindex ON call_center.cc_communication USING btree (id);


--
-- Name: cc_list_acl_grantor_idx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_list_acl_grantor_idx ON call_center.cc_list_acl USING btree (grantor);


--
-- Name: cc_list_acl_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_list_acl_id_uindex ON call_center.cc_list_acl USING btree (id);


--
-- Name: cc_list_acl_object_subject_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_list_acl_object_subject_udx ON call_center.cc_list_acl USING btree (object, subject) INCLUDE (access);


--
-- Name: cc_list_acl_subject_object_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_list_acl_subject_object_udx ON call_center.cc_list_acl USING btree (subject, object) INCLUDE (access);


--
-- Name: cc_list_communications_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_list_communications_id_uindex ON call_center.cc_list_communications USING btree (id);


--
-- Name: cc_list_communications_list_id_number_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_list_communications_list_id_number_uindex ON call_center.cc_list_communications USING btree (list_id, number);


--
-- Name: cc_list_domain_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_list_domain_udx ON call_center.cc_list USING btree (id, domain_id);


--
-- Name: cc_member_agent_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_agent_id_index ON call_center.cc_member USING btree (agent_id);


--
-- Name: cc_member_attempt_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_member_attempt_id_uindex ON call_center.cc_member_attempt USING btree (id);


--
-- Name: cc_member_attempt_log_created_at_agent_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_attempt_log_created_at_agent_id_index ON call_center.cc_member_attempt_log USING btree (created_at DESC, agent_id) WHERE (agent_id IS NOT NULL);


--
-- Name: cc_member_attempt_log_created_at_agent_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_member_attempt_log_created_at_agent_id_uindex ON call_center.cc_member_attempt_log USING btree (created_at DESC, agent_id);


--
-- Name: cc_member_attempt_log_created_at_queue_id_bucket_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_attempt_log_created_at_queue_id_bucket_id_index ON call_center.cc_member_attempt_log USING btree (queue_id, COALESCE(bucket_id, (0)::bigint), created_at DESC);


--
-- Name: cc_member_attempt_log_hangup_at_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_attempt_log_hangup_at_index ON call_center.cc_member_attempt_log USING btree (hangup_at DESC);


--
-- Name: cc_member_attempt_log_member_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_attempt_log_member_id_index ON call_center.cc_member_attempt_log USING btree (member_id);


--
-- Name: cc_member_attempt_log_queue_id_idx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_attempt_log_queue_id_idx ON call_center.cc_member_attempt_log USING btree (queue_id);


--
-- Name: cc_member_attempt_member_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_attempt_member_id_index ON call_center.cc_member_attempt USING btree (member_id);


--
-- Name: cc_member_attempt_queue_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_attempt_queue_id_index ON call_center.cc_member_attempt USING btree (queue_id);


--
-- Name: cc_member_communication_dis_idx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_communication_dis_idx ON call_center.cc_member_communications USING btree (queue_id, member_id, communication_id, last_hangup_at) INCLUDE (id) WHERE (state = 0);


--
-- Name: cc_member_communications_member_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_communications_member_id_index ON call_center.cc_member_communications USING btree (member_id);


--
-- Name: cc_member_communications_queue_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_communications_queue_id_index ON call_center.cc_member_communications USING btree (queue_id);


--
-- Name: cc_member_communications_test1_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_communications_test1_index ON call_center.cc_member_communications USING btree (member_id, last_hangup_at) INCLUDE (id, attempts) WHERE (state = 0);


--
-- Name: cc_member_distribute_check_sys_offset_id; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_distribute_check_sys_offset_id ON call_center.cc_member USING btree (queue_id, bucket_id, sys_offset_id);


--
-- Name: cc_member_distribute_cycle_idx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_distribute_cycle_idx ON call_center.cc_member USING btree (queue_id, bucket_id, last_hangup_at, priority DESC) INCLUDE (sys_offset_id, id, sys_destinations, last_agent) WHERE (stop_at = 0);


--
-- Name: cc_member_distribute_to_down_idx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_distribute_to_down_idx ON call_center.cc_member USING btree (queue_id, bucket_id, priority DESC, last_hangup_at) INCLUDE (sys_offset_id, id, sys_destinations, last_agent) WHERE (stop_at = 0);


--
-- Name: cc_member_messages_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_member_messages_id_uindex ON call_center.cc_member_messages USING btree (id);


--
-- Name: cc_member_queue_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_queue_id_index ON call_center.cc_member USING btree (queue_id);


--
-- Name: cc_member_timezone_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_member_timezone_index ON call_center.cc_member USING btree (timezone);


--
-- Name: cc_outbound_resource_acl_grantor_idx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_outbound_resource_acl_grantor_idx ON call_center.cc_outbound_resource_acl USING btree (grantor);


--
-- Name: cc_outbound_resource_acl_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_outbound_resource_acl_id_uindex ON call_center.cc_outbound_resource_acl USING btree (id);


--
-- Name: cc_outbound_resource_acl_object_subject_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_outbound_resource_acl_object_subject_udx ON call_center.cc_outbound_resource_acl USING btree (object, subject) INCLUDE (access);


--
-- Name: cc_outbound_resource_acl_subject_object_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_outbound_resource_acl_subject_object_udx ON call_center.cc_outbound_resource_acl USING btree (subject, object) INCLUDE (access);


--
-- Name: cc_outbound_resource_display_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_outbound_resource_display_id_uindex ON call_center.cc_outbound_resource_display USING btree (id);


--
-- Name: cc_outbound_resource_display_resource_id_display_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_outbound_resource_display_resource_id_display_uindex ON call_center.cc_outbound_resource_display USING btree (resource_id, display);


--
-- Name: cc_outbound_resource_display_resource_id_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_outbound_resource_display_resource_id_index ON call_center.cc_outbound_resource_display USING btree (resource_id);


--
-- Name: cc_outbound_resource_domain_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_outbound_resource_domain_udx ON call_center.cc_outbound_resource USING btree (id, domain_id);


--
-- Name: cc_outbound_resource_gateway_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_outbound_resource_gateway_id_uindex ON call_center.cc_outbound_resource USING btree (gateway_id);


--
-- Name: cc_outbound_resource_group_acl_grantor_idx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_outbound_resource_group_acl_grantor_idx ON call_center.cc_outbound_resource_group_acl USING btree (grantor);


--
-- Name: cc_outbound_resource_group_acl_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_outbound_resource_group_acl_id_uindex ON call_center.cc_outbound_resource_group_acl USING btree (id);


--
-- Name: cc_outbound_resource_group_acl_object_subject_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_outbound_resource_group_acl_object_subject_udx ON call_center.cc_outbound_resource_group_acl USING btree (object, subject) INCLUDE (access);


--
-- Name: cc_outbound_resource_group_acl_subject_object_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_outbound_resource_group_acl_subject_object_udx ON call_center.cc_outbound_resource_group_acl USING btree (subject, object) INCLUDE (access);


--
-- Name: cc_outbound_resource_group_distr_res_idx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_outbound_resource_group_distr_res_idx ON call_center.cc_outbound_resource_group USING btree (id, domain_id) INCLUDE (name);


--
-- Name: cc_outbound_resource_group_domain_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_outbound_resource_group_domain_udx ON call_center.cc_outbound_resource_group USING btree (id, domain_id);


--
-- Name: cc_outbound_resource_in_group_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_outbound_resource_in_group_id_uindex ON call_center.cc_outbound_resource_in_group USING btree (id);


--
-- Name: cc_outbound_resource_in_group_resource_id_group_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_outbound_resource_in_group_resource_id_group_id_uindex ON call_center.cc_outbound_resource_in_group USING btree (resource_id, group_id);


--
-- Name: cc_queue_acl_grantor_idx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_queue_acl_grantor_idx ON call_center.cc_queue_acl USING btree (grantor);


--
-- Name: cc_queue_acl_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_queue_acl_id_uindex ON call_center.cc_queue_acl USING btree (id);


--
-- Name: cc_queue_acl_object_subject_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_queue_acl_object_subject_udx ON call_center.cc_queue_acl USING btree (object, subject) INCLUDE (access);


--
-- Name: cc_queue_acl_subject_object_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_queue_acl_subject_object_udx ON call_center.cc_queue_acl USING btree (subject, object) INCLUDE (access);


--
-- Name: cc_queue_distribute_res_idx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_queue_distribute_res_idx ON call_center.cc_queue USING btree (domain_id, priority DESC) INCLUDE (id, name, calendar_id, type) WHERE (enabled IS TRUE);


--
-- Name: cc_queue_domain_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_queue_domain_udx ON call_center.cc_queue USING btree (id, domain_id);


--
-- Name: cc_queue_enabled_priority_index; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_queue_enabled_priority_index ON call_center.cc_queue USING btree (enabled, priority DESC);


--
-- Name: cc_queue_id_priority_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_queue_id_priority_uindex ON call_center.cc_queue USING btree (priority, sec_locate_agent, updated_at);


--
-- Name: cc_queue_member_statistics_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_queue_member_statistics_id_uindex ON call_center.cc_queue_statistics USING btree (id);


--
-- Name: cc_queue_resource_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_queue_resource_id_uindex ON call_center.cc_outbound_resource USING btree (id);


--
-- Name: cc_queue_resource_queue_id_resource_group_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_queue_resource_queue_id_resource_group_id_uindex ON call_center.cc_queue_resource USING btree (queue_id, resource_group_id);


--
-- Name: cc_queue_statistics_queue_id_bucket_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_queue_statistics_queue_id_bucket_id_uindex ON call_center.cc_queue_statistics USING btree (queue_id, COALESCE(bucket_id, (0)::bigint));


--
-- Name: cc_skill_in_agent_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_skill_in_agent_id_uindex ON call_center.cc_skill_in_agent USING btree (id);


--
-- Name: cc_skill_in_agent_skill_id_agent_id_capacity_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_skill_in_agent_skill_id_agent_id_capacity_uindex ON call_center.cc_skill_in_agent USING btree (skill_id, agent_id, capacity DESC);


--
-- Name: cc_skils_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_skils_id_uindex ON call_center.cc_skill USING btree (id);


--
-- Name: cc_supervisor_in_team_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_supervisor_in_team_id_uindex ON call_center.cc_supervisor_in_team USING btree (id);


--
-- Name: cc_supervisor_in_team_team_id_agent_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_supervisor_in_team_team_id_agent_id_uindex ON call_center.cc_supervisor_in_team USING btree (team_id, agent_id);


--
-- Name: cc_team_acl_grantor_idx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE INDEX cc_team_acl_grantor_idx ON call_center.cc_team_acl USING btree (grantor);


--
-- Name: cc_team_acl_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_team_acl_id_uindex ON call_center.cc_team_acl USING btree (id);


--
-- Name: cc_team_acl_object_subject_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_team_acl_object_subject_udx ON call_center.cc_team_acl USING btree (object, subject) INCLUDE (access);


--
-- Name: cc_team_acl_subject_object_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_team_acl_subject_object_udx ON call_center.cc_team_acl USING btree (subject, object) INCLUDE (access);


--
-- Name: cc_team_domain_udx; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_team_domain_udx ON call_center.cc_team USING btree (id, domain_id);


--
-- Name: cc_team_id_uindex; Type: INDEX; Schema: call_center; Owner: -
--

CREATE UNIQUE INDEX cc_team_id_uindex ON call_center.cc_team USING btree (id);


--
-- Name: contacts_acl_object_subject_access_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX contacts_acl_object_subject_access_uindex ON directory.contacts_acl USING btree (object, subject, access);


--
-- Name: contacts_acl_subject_object_access_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX contacts_acl_subject_object_access_uindex ON directory.contacts_acl USING btree (subject, object, access);


--
-- Name: contacts_dc_index; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX contacts_dc_index ON directory.contacts USING btree (dc);


--
-- Name: contacts_dc_name_index; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX contacts_dc_name_index ON directory.contacts USING btree (dc, name);


--
-- Name: contacts_dc_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX contacts_dc_uindex ON directory.contacts USING btree (dc, id);


--
-- Name: hotdesk_dc_name_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX hotdesk_dc_name_uindex ON directory.wbt_hotdesk USING btree (dc, lower((name)::text));


--
-- Name: hotdesk_device_id_index; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX hotdesk_device_id_index ON directory.wbt_hotdesk USING btree (device_id);


--
-- Name: license_id_index; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX license_id_index ON directory.license USING btree (serial);


--
-- Name: license_user_id_index; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX license_user_id_index ON directory.license USING btree (user_id);


--
-- Name: roles_dc_udx; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX roles_dc_udx ON directory.roles USING btree (id, dc);


--
-- Name: sip_gateway_allow_inet_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX sip_gateway_allow_inet_uindex ON directory.sip_gateway_allow USING btree (id, ip, port, proto);


--
-- Name: sip_gateway_dc_udx; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX sip_gateway_dc_udx ON directory.sip_gateway USING btree (id, dc);


--
-- Name: sip_gateway_register_state_index; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX sip_gateway_register_state_index ON directory.sip_gateway_register USING btree (id, state);


--
-- Name: sip_proxy_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX sip_proxy_uindex ON directory.sip_gateway USING btree (host, proxy) WHERE (NOT register);


--
-- Name: sip_registrant_aor_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX sip_registrant_aor_uindex ON directory.sip_gateway USING btree (account) WHERE register;


--
-- Name: voip_channel_call_uuid_index; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX voip_channel_call_uuid_index ON directory.voip_channel USING btree (call_uuid) WHERE (call_uuid IS NOT NULL);


--
-- Name: wbt_auth_acl_grantor_index; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX wbt_auth_acl_grantor_index ON directory.wbt_auth_acl USING btree (grantor);


--
-- Name: wbt_auth_acl_object_subject_pkx; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_auth_acl_object_subject_pkx ON directory.wbt_auth_acl USING btree (object, subject) INCLUDE (access);


--
-- Name: wbt_auth_acl_subject_object_udx; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_auth_acl_subject_object_udx ON directory.wbt_auth_acl USING btree (subject, object) INCLUDE (access);


--
-- Name: wbt_class_acl_grantor_index; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX wbt_class_acl_grantor_index ON directory.wbt_class_acl USING btree (grantor);


--
-- Name: wbt_class_acl_object_subject_pk; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_class_acl_object_subject_pk ON directory.wbt_class_acl USING btree (object, subject) INCLUDE (access);


--
-- Name: wbt_class_acl_subject_object_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_class_acl_subject_object_uindex ON directory.wbt_class_acl USING btree (subject, object) INCLUDE (access);


--
-- Name: wbt_dc_domain_index; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX wbt_dc_domain_index ON directory.wbt_domain USING btree (dc, name);


--
-- Name: wbt_device_acl_grantor_index; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX wbt_device_acl_grantor_index ON directory.wbt_device_acl USING btree (grantor);


--
-- Name: wbt_device_acl_object_subject_pk; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_device_acl_object_subject_pk ON directory.wbt_device_acl USING btree (object, subject) INCLUDE (access);


--
-- Name: wbt_device_acl_subject_object_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_device_acl_subject_object_uindex ON directory.wbt_device_acl USING btree (subject, object) INCLUDE (access);


--
-- Name: wbt_device_audit_device_idx; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX wbt_device_audit_device_idx ON directory.wbt_device_audit USING btree (device_id);


--
-- Name: wbt_device_audit_udx; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_device_audit_udx ON directory.wbt_device_audit USING btree (device_id, user_id, logged_in);


--
-- Name: wbt_device_audit_user_idx; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX wbt_device_audit_user_idx ON directory.wbt_device_audit USING btree (user_id);


--
-- Name: wbt_device_dc_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_device_dc_uindex ON directory.wbt_device USING btree (id, dc);


--
-- Name: wbt_device_id_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_device_id_uindex ON directory.wbt_device USING btree (lower((account)::text), dc);


--
-- Name: wbt_device_ip_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_device_ip_uindex ON directory.wbt_device USING btree (ip, dc) WHERE (ip IS NOT NULL);


--
-- Name: wbt_device_mac_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_device_mac_uindex ON directory.wbt_device USING btree (mac, dc) WHERE (mac IS NOT NULL);


--
-- Name: wbt_device_user_index; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX wbt_device_user_index ON directory.wbt_device USING btree (user_id) WHERE (user_id IS NOT NULL);


--
-- Name: wbt_domain_auth_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_domain_auth_uindex ON directory.wbt_auth USING btree (lower((auth)::text), dc);


--
-- Name: wbt_domain_class_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_domain_class_uindex ON directory.wbt_class USING btree (dc, lower((name)::text));


--
-- Name: wbt_domain_dc_index; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX wbt_domain_dc_index ON directory.wbt_domain USING btree (name, dc);


--
-- Name: wbt_domain_name_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_domain_name_uindex ON directory.wbt_domain USING btree (lower((name)::text));


--
-- Name: wbt_domain_tel_number_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_domain_tel_number_uindex ON directory.wbt_auth USING btree (dc, tel_number) WHERE (tel_number IS NOT NULL);


--
-- Name: wbt_license_user_id_serial_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_license_user_id_serial_uindex ON directory.wbt_license USING btree (user_id, serial);


--
-- Name: wbt_role_member_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_role_member_uindex ON directory.wbt_auth_member USING btree (role_id, member_id);


--
-- Name: wbt_session_access_token_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_session_access_token_uindex ON directory.wbt_session USING btree (access) WHERE (access IS NOT NULL);


--
-- Name: wbt_session_code_token_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_session_code_token_uindex ON directory.wbt_session USING btree (code) WHERE (code IS NOT NULL);


--
-- Name: wbt_session_refresh_token_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_session_refresh_token_uindex ON directory.wbt_session USING btree (refresh) WHERE (refresh IS NOT NULL);


--
-- Name: wbt_user_dc_udx; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_user_dc_udx ON directory.wbt_user USING btree (id, dc);


--
-- Name: wbt_user_email_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_user_email_uindex ON directory.wbt_user USING btree (lower((email)::text));


--
-- Name: wbt_user_extension_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_user_extension_uindex ON directory.wbt_user USING btree (dc, extension) WHERE (extension IS NOT NULL);


--
-- Name: wbt_user_id_uindex; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_user_id_uindex ON directory.wbt_user USING btree (lower((username)::text), dc);


--
-- Name: wbt_user_token_domain_id_idx; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX wbt_user_token_domain_id_idx ON directory.wbt_user_token USING btree (dc);


--
-- Name: wbt_user_token_udx; Type: INDEX; Schema: directory; Owner: -
--

CREATE UNIQUE INDEX wbt_user_token_udx ON directory.wbt_user_token USING btree (token);


--
-- Name: wbt_user_token_user_id_idx; Type: INDEX; Schema: directory; Owner: -
--

CREATE INDEX wbt_user_token_user_id_idx ON directory.wbt_user_token USING btree (user_id);


--
-- Name: tst; Type: INDEX; Schema: permissions; Owner: -
--

CREATE INDEX tst ON permissions.wbt_test_acl USING gin (acl);


--
-- Name: wbt_auth_id_uindex; Type: INDEX; Schema: permissions; Owner: -
--

CREATE UNIQUE INDEX wbt_auth_id_uindex ON permissions.wbt_auth USING btree (id);


--
-- Name: wbt_auth_member_dc_member_id_index; Type: INDEX; Schema: permissions; Owner: -
--

CREATE INDEX wbt_auth_member_dc_member_id_index ON permissions.wbt_auth_member USING btree (dc, member_id);


--
-- Name: wbt_domain_id_uindex; Type: INDEX; Schema: permissions; Owner: -
--

CREATE UNIQUE INDEX wbt_domain_id_uindex ON permissions.wbt_domain USING btree (dc);


--
-- Name: wbt_module_dc_id_index; Type: INDEX; Schema: permissions; Owner: -
--

CREATE INDEX wbt_module_dc_id_index ON permissions.wbt_module USING btree (dc, id);


--
-- Name: wbt_module_dc_id_uindex; Type: INDEX; Schema: permissions; Owner: -
--

CREATE UNIQUE INDEX wbt_module_dc_id_uindex ON permissions.wbt_module USING btree (dc, id);


--
-- Name: wbt_module_dc_index; Type: INDEX; Schema: permissions; Owner: -
--

CREATE INDEX wbt_module_dc_index ON permissions.wbt_module USING btree (dc);


--
-- Name: wbt_test_acl_id_uindex; Type: INDEX; Schema: permissions; Owner: -
--

CREATE UNIQUE INDEX wbt_test_acl_id_uindex ON permissions.wbt_test_acl USING btree (id);


--
-- Name: wbt_test_acl_module_id_index; Type: INDEX; Schema: permissions; Owner: -
--

CREATE INDEX wbt_test_acl_module_id_index ON permissions.wbt_test_acl USING btree (module_id);


--
-- Name: wbt_test_acl_role_id_can_read_module_id_index; Type: INDEX; Schema: permissions; Owner: -
--

CREATE INDEX wbt_test_acl_role_id_can_read_module_id_index ON permissions.wbt_test_acl USING btree (role_id, can_read, module_id);


--
-- Name: acc_callid_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX acc_callid_idx ON public.acc USING btree (callid);


--
-- Name: agent_statistic_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX agent_statistic_id_uindex ON public.cc_agent_activity USING btree (id);


--
-- Name: b2b_entities_b2b_entities_param; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX b2b_entities_b2b_entities_param ON public.b2b_entities USING btree (param);


--
-- Name: calendar_accept_of_day_calendar_id_week_day_start_time_of_day_e; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX calendar_accept_of_day_calendar_id_week_day_start_time_of_day_e ON public.calendar_accept_of_day USING btree (calendar_id, week_day, start_time_of_day, end_time_of_day);


--
-- Name: calendar_accept_of_day_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX calendar_accept_of_day_id_uindex ON public.calendar_accept_of_day USING btree (id);


--
-- Name: calendar_except_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX calendar_except_id_uindex ON public.calendar_except USING btree (id);


--
-- Name: calendar_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX calendar_id_uindex ON public.calendar USING btree (id);


--
-- Name: calendar_name_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX calendar_name_id_index ON public.calendar USING btree (name, id);


--
-- Name: callback_calls_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX callback_calls_id_uindex ON public.callback_calls USING btree (id);


--
-- Name: callback_members_callback_time_domain_done_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX callback_members_callback_time_domain_done_index ON public.callback_members USING btree (callback_time, domain, done);


--
-- Name: callback_members_callback_time_domain_done_number_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX callback_members_callback_time_domain_done_number_index ON public.callback_members USING btree (callback_time, domain, done, number);


--
-- Name: callback_members_callback_time_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX callback_members_callback_time_index ON public.callback_members USING btree (callback_time);


--
-- Name: callback_members_comment_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX callback_members_comment_id_uindex ON public.callback_members_comment USING btree (id);


--
-- Name: callback_members_created_on_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX callback_members_created_on_index ON public.callback_members USING btree (created_on);


--
-- Name: callback_members_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX callback_members_id_uindex ON public.callback_members USING btree (id);


--
-- Name: callback_members_queue_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX callback_members_queue_id_index ON public.callback_members USING btree (queue_id);


--
-- Name: callback_queue_agents_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX callback_queue_agents_index ON public.callback_queue USING gin (agents);


--
-- Name: callback_queue_domain_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX callback_queue_domain_index ON public.callback_queue USING btree (domain);


--
-- Name: callflow_default_destination_number_disabled_domain_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX callflow_default_destination_number_disabled_domain_index ON public.callflow_default USING btree (destination_number, disabled, domain);


--
-- Name: callflow_default_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX callflow_default_id_uindex ON public.callflow_default USING btree (id);


--
-- Name: callflow_default_order_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX callflow_default_order_index ON public.callflow_default USING btree ("order");


--
-- Name: callflow_extension_destination_number_domain_index; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX callflow_extension_destination_number_domain_index ON public.callflow_extension USING btree (destination_number, domain);


--
-- Name: callflow_extension_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX callflow_extension_id_uindex ON public.callflow_extension USING btree (id);


--
-- Name: callflow_public_destination_number_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX callflow_public_destination_number_index ON public.callflow_public_1 USING gin (destination_number);


--
-- Name: callflow_public_disabled_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX callflow_public_disabled_index ON public.callflow_public_1 USING btree (disabled);


--
-- Name: callflow_public_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX callflow_public_id_uindex ON public.callflow_public_1 USING btree (id);


--
-- Name: cc_agent_activity_agent_id_last_offering_call_at_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_agent_activity_agent_id_last_offering_call_at_uindex ON public.cc_agent_activity USING btree (agent_id, last_offering_call_at);


--
-- Name: cc_agent_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_agent_id_uindex ON public.cc_agent USING btree (id);


--
-- Name: cc_agent_in_queue_agent_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_agent_in_queue_agent_id_index ON public.cc_agent_in_queue USING btree (agent_id);


--
-- Name: cc_agent_in_queue_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_agent_in_queue_id_uindex ON public.cc_agent_in_queue USING btree (id);


--
-- Name: cc_agent_in_queue_queue_id_agent_id_skill_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_agent_in_queue_queue_id_agent_id_skill_id_uindex ON public.cc_agent_in_queue USING btree (queue_id, agent_id, skill_id);


--
-- Name: cc_agent_in_queue_queue_id_lvl_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_agent_in_queue_queue_id_lvl_index ON public.cc_agent_in_queue USING btree (queue_id, lvl DESC);


--
-- Name: cc_agent_in_queue_skill_id_queue_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_agent_in_queue_skill_id_queue_id_uindex ON public.cc_agent_in_queue USING btree (skill_id, queue_id);


--
-- Name: cc_agent_state_history_agent_id_joined_at_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_agent_state_history_agent_id_joined_at_uindex ON public.cc_agent_state_history USING btree (agent_id, joined_at DESC);


--
-- Name: cc_agent_state_timeout_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_agent_state_timeout_index ON public.cc_agent USING btree (state_timeout);


--
-- Name: cc_agent_status_history_agent_id_join_at_index; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_agent_status_history_agent_id_join_at_index ON public.cc_agent_state_history USING btree (joined_at DESC, agent_id, state);


--
-- Name: cc_agent_status_history_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_agent_status_history_id_uindex ON public.cc_agent_state_history USING btree (id);


--
-- Name: cc_agent_status_state_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_agent_status_state_index ON public.cc_agent USING btree (status, state);


--
-- Name: cc_call_list_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_call_list_id_uindex ON public.cc_list USING btree (id);


--
-- Name: cc_calls_b2buaid_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_calls_b2buaid_idx ON public.cc_calls USING btree (b2buaid);


--
-- Name: cc_cluster_node_name_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_cluster_node_name_uindex ON public.cc_cluster USING btree (node_name);


--
-- Name: cc_communication_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_communication_id_uindex ON public.cc_communication USING btree (id);


--
-- Name: cc_list_communications_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_list_communications_id_uindex ON public.cc_list_communications USING btree (id);


--
-- Name: cc_list_communications_list_id_number_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_list_communications_list_id_number_uindex ON public.cc_list_communications USING btree (list_id, number);


--
-- Name: cc_member_attempt_communication_id_hangup_time_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_attempt_communication_id_hangup_time_index ON public.cc_member_attempt USING btree (communication_id, hangup_time);


--
-- Name: cc_member_attempt_hangup_at_queue_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_attempt_hangup_at_queue_id_index ON public.cc_member_attempt USING btree (hangup_at, queue_id);


--
-- Name: cc_member_attempt_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_member_attempt_id_uindex ON public.cc_member_attempt USING btree (id);


--
-- Name: cc_member_attempt_member_id_created_at_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_attempt_member_id_created_at_index ON public.cc_member_attempt USING btree (member_id, created_at DESC);


--
-- Name: cc_member_attempt_member_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_attempt_member_id_index ON public.cc_member_attempt USING btree (member_id);


--
-- Name: cc_member_attempt_member_id_state_hangup_at_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_attempt_member_id_state_hangup_at_index ON public.cc_member_attempt USING btree (member_id, state, hangup_at);


--
-- Name: cc_member_attempt_node_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_attempt_node_id_index ON public.cc_member_attempt USING btree (node_id) WHERE (hangup_at = 0);


--
-- Name: cc_member_attempt_queue_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_attempt_queue_id_index ON public.cc_member_attempt USING btree (queue_id);


--
-- Name: cc_member_attempt_state_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_attempt_state_index ON public.cc_member_attempt USING btree (state);


--
-- Name: cc_member_attempt_state_index_test; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_attempt_state_index_test ON public.cc_member_attempt USING btree (state) WHERE (hangup_at = 0);


--
-- Name: cc_member_communications_member_id_last_hangup_at_priority_inde; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_communications_member_id_last_hangup_at_priority_inde ON public.cc_member_communications USING btree (communication_id, member_id, last_hangup_at, priority DESC) WHERE (state = 0);


--
-- Name: cc_member_communications_member_id_number_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_member_communications_member_id_number_uindex ON public.cc_member_communications USING btree (member_id, number);


--
-- Name: cc_member_communications_number_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_communications_number_index ON public.cc_member_communications USING btree (number);


--
-- Name: cc_member_communications_routing_ids_gin; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_communications_routing_ids_gin ON public.cc_member_communications USING btree (member_id, routing_ids) WHERE (state = 0);


--
-- Name: cc_member_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_id_index ON public.cc_member USING btree (id);


--
-- Name: cc_member_last_hangup_at_queue_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_last_hangup_at_queue_id_index ON public.cc_member USING btree (last_hangup_at, queue_id);


--
-- Name: cc_member_priority_id_last_hangup_at_queue_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_member_priority_id_last_hangup_at_queue_id_index ON public.cc_member USING btree (priority DESC, id, last_hangup_at, queue_id DESC) WHERE (stop_at = 0);


--
-- Name: cc_queue_enabled_priority_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_queue_enabled_priority_index ON public.cc_queue USING btree (enabled, priority DESC);


--
-- Name: cc_queue_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_queue_id_uindex ON public.cc_queue USING btree (id);


--
-- Name: cc_queue_resource_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_queue_resource_id_uindex ON public.cc_outbound_resource USING btree (id);


--
-- Name: cc_queue_routing_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_queue_routing_id_uindex ON public.cc_queue_routing USING btree (id);


--
-- Name: cc_queue_routing_queue_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_queue_routing_queue_id_index ON public.cc_queue_routing USING btree (queue_id);


--
-- Name: cc_queue_timing_communication_id_max_attempt_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_queue_timing_communication_id_max_attempt_index ON public.cc_queue_timing USING btree (communication_id, max_attempt);


--
-- Name: cc_queue_timing_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_queue_timing_id_uindex ON public.cc_queue_timing USING btree (id);


--
-- Name: cc_queue_timing_queue_id_communication_id_start_time_of_day_end; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_queue_timing_queue_id_communication_id_start_time_of_day_end ON public.cc_queue_timing USING btree (queue_id, communication_id, start_time_of_day, end_time_of_day);


--
-- Name: cc_resource_in_queue_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_resource_in_queue_id_uindex ON public.cc_resource_in_routing USING btree (id);


--
-- Name: cc_resource_in_routing_priority_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_resource_in_routing_priority_index ON public.cc_resource_in_routing USING btree (priority);


--
-- Name: cc_resource_in_routing_resource_id_routing_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cc_resource_in_routing_resource_id_routing_id_index ON public.cc_resource_in_routing USING btree (resource_id, routing_id);


--
-- Name: cc_skill_in_agent_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_skill_in_agent_id_uindex ON public.cc_skill_in_agent USING btree (id);


--
-- Name: cc_skill_in_agent_skill_id_agent_id_capacity_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_skill_in_agent_skill_id_agent_id_capacity_uindex ON public.cc_skill_in_agent USING btree (skill_id, agent_id, capacity DESC);


--
-- Name: cc_skils_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cc_skils_id_uindex ON public.cc_skils USING btree (id);


--
-- Name: cdr_a_elastic_created_at_state_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cdr_a_elastic_created_at_state_index ON public.cdr_a_elastic USING btree (created_at, state);


--
-- Name: cdr_b_elastic_created_at_state_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX cdr_b_elastic_created_at_state_index ON public.cdr_b_elastic USING btree (created_at, state);


--
-- Name: cdr_bad_event_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX cdr_bad_event_id_uindex ON public.cdr_bad_event USING btree (id);


--
-- Name: complete1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX complete1 ON public.complete USING btree (a1, hostname);


--
-- Name: complete10; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX complete10 ON public.complete USING btree (a10, hostname);


--
-- Name: complete11; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX complete11 ON public.complete USING btree (a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, hostname);


--
-- Name: complete2; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX complete2 ON public.complete USING btree (a2, hostname);


--
-- Name: complete3; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX complete3 ON public.complete USING btree (a3, hostname);


--
-- Name: complete4; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX complete4 ON public.complete USING btree (a4, hostname);


--
-- Name: complete5; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX complete5 ON public.complete USING btree (a5, hostname);


--
-- Name: complete6; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX complete6 ON public.complete USING btree (a6, hostname);


--
-- Name: complete7; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX complete7 ON public.complete USING btree (a7, hostname);


--
-- Name: complete8; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX complete8 ON public.complete USING btree (a8, hostname);


--
-- Name: complete9; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX complete9 ON public.complete USING btree (a9, hostname);


--
-- Name: dbaliases_target_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX dbaliases_target_idx ON public.dbaliases USING btree (username, domain);


--
-- Name: domain_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX domain_id_uindex ON public.domain USING btree (id);


--
-- Name: domainpolicy_rule_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX domainpolicy_rule_idx ON public.domainpolicy USING btree (rule);


--
-- Name: globalblacklist_globalblacklist_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX globalblacklist_globalblacklist_idx ON public.globalblacklist USING btree (prefix);


--
-- Name: load_balancer_dsturi_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX load_balancer_dsturi_idx ON public.load_balancer USING btree (dst_uri);


--
-- Name: location_device_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX location_device_id_index ON public.location USING btree (device_id);


--
-- Name: missed_calls_callid_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX missed_calls_callid_idx ON public.missed_calls USING btree (callid);


--
-- Name: nat_map_port_proto; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX nat_map_port_proto ON public.nat USING btree (port, proto, hostname);


--
-- Name: pua_del1_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pua_del1_idx ON public.pua USING btree (pres_uri, event);


--
-- Name: pua_del2_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pua_del2_idx ON public.pua USING btree (expires);


--
-- Name: pua_update_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX pua_update_idx ON public.pua USING btree (pres_uri, pres_id, flag, event);


--
-- Name: re_grp_group_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX re_grp_group_idx ON public.re_grp USING btree (group_id);


--
-- Name: regindex1; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX regindex1 ON public.registrations USING btree (reg_user, realm, hostname);


--
-- Name: rls_presentity_updated_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX rls_presentity_updated_idx ON public.rls_presentity USING btree (updated);


--
-- Name: sa_expires; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sa_expires ON public.sip_authentication USING btree (expires);


--
-- Name: sa_hostname; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sa_hostname ON public.sip_authentication USING btree (hostname);


--
-- Name: sa_last_nc; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sa_last_nc ON public.sip_authentication USING btree (last_nc);


--
-- Name: sa_nonce; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sa_nonce ON public.sip_authentication USING btree (nonce);


--
-- Name: sd_call_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sd_call_id ON public.sip_dialogs USING btree (call_id);


--
-- Name: sd_call_info; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sd_call_info ON public.sip_dialogs USING btree (call_info);


--
-- Name: sd_call_info_state; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sd_call_info_state ON public.sip_dialogs USING btree (call_info_state);


--
-- Name: sd_expires; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sd_expires ON public.sip_dialogs USING btree (expires);


--
-- Name: sd_hostname; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sd_hostname ON public.sip_dialogs USING btree (hostname);


--
-- Name: sd_presence_data; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sd_presence_data ON public.sip_dialogs USING btree (presence_data);


--
-- Name: sd_presence_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sd_presence_id ON public.sip_dialogs USING btree (presence_id);


--
-- Name: sd_rcd; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sd_rcd ON public.sip_dialogs USING btree (rcd);


--
-- Name: sd_sip_from_host; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sd_sip_from_host ON public.sip_dialogs USING btree (sip_from_host);


--
-- Name: sd_sip_from_tag; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sd_sip_from_tag ON public.sip_dialogs USING btree (sip_from_tag);


--
-- Name: sd_sip_from_user; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sd_sip_from_user ON public.sip_dialogs USING btree (sip_from_user);


--
-- Name: sd_sip_to_host; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sd_sip_to_host ON public.sip_dialogs USING btree (sip_to_host);


--
-- Name: sd_sip_to_tag; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sd_sip_to_tag ON public.sip_dialogs USING btree (sip_to_tag);


--
-- Name: sd_uuid; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sd_uuid ON public.sip_dialogs USING btree (uuid);


--
-- Name: silo_account_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX silo_account_idx ON public.silo USING btree (username, domain);


--
-- Name: sip_trace_callid_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sip_trace_callid_idx ON public.sip_trace USING btree (callid);


--
-- Name: sip_trace_date_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sip_trace_date_idx ON public.sip_trace USING btree (time_stamp);


--
-- Name: sip_trace_fromip_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sip_trace_fromip_idx ON public.sip_trace USING btree (from_ip);


--
-- Name: sip_trace_trace_attrs_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sip_trace_trace_attrs_idx ON public.sip_trace USING btree (trace_attrs);


--
-- Name: sp_expires; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sp_expires ON public.sip_presence USING btree (expires);


--
-- Name: sp_hostname; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sp_hostname ON public.sip_presence USING btree (hostname);


--
-- Name: sp_open_closed; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sp_open_closed ON public.sip_presence USING btree (open_closed);


--
-- Name: sp_profile_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sp_profile_name ON public.sip_presence USING btree (profile_name);


--
-- Name: sp_sip_host; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sp_sip_host ON public.sip_presence USING btree (sip_host);


--
-- Name: sp_sip_user; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX sp_sip_user ON public.sip_presence USING btree (sip_user);


--
-- Name: ss_call_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_call_id ON public.sip_subscriptions USING btree (call_id);


--
-- Name: ss_contact; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_contact ON public.sip_subscriptions USING btree (contact);


--
-- Name: ss_event; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_event ON public.sip_subscriptions USING btree (event);


--
-- Name: ss_expires; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_expires ON public.sip_subscriptions USING btree (expires);


--
-- Name: ss_full_from; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_full_from ON public.sip_subscriptions USING btree (full_from);


--
-- Name: ss_hostname; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_hostname ON public.sip_subscriptions USING btree (hostname);


--
-- Name: ss_multi; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_multi ON public.sip_subscriptions USING btree (call_id, profile_name, hostname);


--
-- Name: ss_network_ip; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_network_ip ON public.sip_subscriptions USING btree (network_ip);


--
-- Name: ss_network_port; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_network_port ON public.sip_subscriptions USING btree (network_port);


--
-- Name: ss_orig_proto; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_orig_proto ON public.sip_subscriptions USING btree (orig_proto);


--
-- Name: ss_presence_hosts; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_presence_hosts ON public.sip_subscriptions USING btree (presence_hosts);


--
-- Name: ss_profile_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_profile_name ON public.sip_subscriptions USING btree (profile_name);


--
-- Name: ss_proto; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_proto ON public.sip_subscriptions USING btree (proto);


--
-- Name: ss_sip_host; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_sip_host ON public.sip_subscriptions USING btree (sip_host);


--
-- Name: ss_sip_user; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_sip_user ON public.sip_subscriptions USING btree (sip_user);


--
-- Name: ss_sub_to_host; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_sub_to_host ON public.sip_subscriptions USING btree (sub_to_host);


--
-- Name: ss_sub_to_user; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_sub_to_user ON public.sip_subscriptions USING btree (sub_to_user);


--
-- Name: ss_version; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ss_version ON public.sip_subscriptions USING btree (version);


--
-- Name: ssa_aor; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ssa_aor ON public.sip_shared_appearance_subscriptions USING btree (aor);


--
-- Name: ssa_hostname; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ssa_hostname ON public.sip_shared_appearance_subscriptions USING btree (hostname);


--
-- Name: ssa_network_ip; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ssa_network_ip ON public.sip_shared_appearance_subscriptions USING btree (network_ip);


--
-- Name: ssa_profile_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ssa_profile_name ON public.sip_shared_appearance_subscriptions USING btree (profile_name);


--
-- Name: ssa_subscriber; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ssa_subscriber ON public.sip_shared_appearance_subscriptions USING btree (subscriber);


--
-- Name: ssd_call_id; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ssd_call_id ON public.sip_shared_appearance_dialogs USING btree (call_id);


--
-- Name: ssd_contact_str; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ssd_contact_str ON public.sip_shared_appearance_dialogs USING btree (contact_str);


--
-- Name: ssd_expires; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ssd_expires ON public.sip_shared_appearance_dialogs USING btree (expires);


--
-- Name: ssd_hostname; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ssd_hostname ON public.sip_shared_appearance_dialogs USING btree (hostname);


--
-- Name: ssd_profile_name; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX ssd_profile_name ON public.sip_shared_appearance_dialogs USING btree (profile_name);


--
-- Name: subscriber_username_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX subscriber_username_idx ON public.subscriber USING btree (username);


--
-- Name: userblacklist_userblacklist_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX userblacklist_userblacklist_idx ON public.userblacklist USING btree (username, domain, prefix);


--
-- Name: users_id_uindex; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX users_id_uindex ON public."user" USING btree (id);


--
-- Name: usr_preferences_ua_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX usr_preferences_ua_idx ON public.usr_preferences USING btree (uuid, attribute);


--
-- Name: usr_preferences_uda_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX usr_preferences_uda_idx ON public.usr_preferences USING btree (username, domain, attribute);


--
-- Name: usr_preferences_value_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX usr_preferences_value_idx ON public.usr_preferences USING btree (value);


--
-- Name: wbt_authrid; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX wbt_authrid ON public.wbt_auth USING btree (dc, lower((rolname)::text));


--
-- Name: wbt_caller_number; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX wbt_caller_number ON public.wbt_auth USING btree (dc, caller_number) WHERE (caller_number IS NOT NULL);


--
-- Name: wbt_dnsrv; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX wbt_dnsrv ON public.wbt_domain USING btree (lower((dn)::text));


--
-- Name: wbt_membership_sup; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX wbt_membership_sup ON public.wbt_auth_member USING btree (dc, member, role);


--
-- Name: wbt_sequence_name; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX wbt_sequence_name ON public.wbt_sequence USING btree (lower((name)::text));


--
-- Name: widget_id_index; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX widget_id_index ON public.widget USING btree (id);


--
-- Name: xcap_source_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX xcap_source_idx ON public.xcap USING btree (source);


--
-- Name: file_backend_profiles_acl_grantor_idx; Type: INDEX; Schema: storage; Owner: -
--

CREATE INDEX file_backend_profiles_acl_grantor_idx ON storage.file_backend_profiles_acl USING btree (grantor);


--
-- Name: file_backend_profiles_acl_id_uindex; Type: INDEX; Schema: storage; Owner: -
--

CREATE UNIQUE INDEX file_backend_profiles_acl_id_uindex ON storage.file_backend_profiles_acl USING btree (id);


--
-- Name: file_backend_profiles_acl_object_subject_udx; Type: INDEX; Schema: storage; Owner: -
--

CREATE UNIQUE INDEX file_backend_profiles_acl_object_subject_udx ON storage.file_backend_profiles_acl USING btree (object, subject) INCLUDE (access);


--
-- Name: file_backend_profiles_acl_subject_object_udx; Type: INDEX; Schema: storage; Owner: -
--

CREATE UNIQUE INDEX file_backend_profiles_acl_subject_object_udx ON storage.file_backend_profiles_acl USING btree (subject, object) INCLUDE (access);


--
-- Name: file_backend_profiles_domain_udx; Type: INDEX; Schema: storage; Owner: -
--

CREATE UNIQUE INDEX file_backend_profiles_domain_udx ON storage.file_backend_profiles USING btree (id, domain_id);


--
-- Name: media_files_domain_id_name_uindex; Type: INDEX; Schema: storage; Owner: -
--

CREATE UNIQUE INDEX media_files_domain_id_name_uindex ON storage.media_files USING btree (domain_id, name);


--
-- Name: cc_member_timezone_stats; Type: STATISTICS; Schema: call_center; Owner: -
--

CREATE STATISTICS call_center.cc_member_timezone_stats (dependencies) ON queue_id, "offset" FROM call_center.cc_member;


--
-- Name: s1_test; Type: STATISTICS; Schema: directory; Owner: -
--

CREATE STATISTICS directory.s1_test (dependencies) ON object, subject FROM directory.contacts_acl;


--
-- Name: s2_test; Type: STATISTICS; Schema: directory; Owner: -
--

CREATE STATISTICS directory.s2_test (dependencies) ON object, subject FROM directory.contacts_acl;


--
-- Name: cc_queue_distribute_resources _RETURN; Type: RULE; Schema: call_center; Owner: -
--

CREATE OR REPLACE VIEW call_center.cc_queue_distribute_resources AS
 SELECT r.queue_id,
    r.resource_id,
    r.routing_ids,
    (((date_part('epoch'::text, now()) * (1000)::double precision))::bigint - (q.sec_between_retries * 1000)) AS min_activity_at,
    r.call_count,
    q.dnc_list_id,
    a.a AS times,
    q.type,
    q.strategy,
    q.payload,
    q.team_id
   FROM ((call_center.get_free_resources() r(queue_id, resource_id, routing_ids, call_count, sec_between_retries)
     JOIN call_center.cc_queue q ON ((q.id = r.queue_id)))
     CROSS JOIN LATERAL call_center.cc_queue_timing_timezones((q.id)::bigint, (q.calendar_id)::bigint) a(a))
  WHERE ((r.call_count > 0) AND (a.a IS NOT NULL))
  GROUP BY r.queue_id, a.a, r.resource_id, r.routing_ids, r.call_count, r.sec_between_retries, q.id
  ORDER BY q.priority DESC;


--
-- Name: wbt_user wbt_user_delete_auth; Type: RULE; Schema: directory; Owner: -
--

CREATE RULE wbt_user_delete_auth AS
    ON DELETE TO directory.wbt_user DO  DELETE FROM directory.wbt_auth
  WHERE ((wbt_auth.id = old.id) AND (wbt_auth.dc = old.dc));


--
-- Name: cc_member cc_member_set_sys_destinations_insert; Type: TRIGGER; Schema: call_center; Owner: -
--

CREATE TRIGGER cc_member_set_sys_destinations_insert BEFORE INSERT ON call_center.cc_member FOR EACH ROW EXECUTE FUNCTION call_center.cc_member_set_sys_destinations_tg();


--
-- Name: cc_member cc_member_set_sys_destinations_update; Type: TRIGGER; Schema: call_center; Owner: -
--

CREATE TRIGGER cc_member_set_sys_destinations_update BEFORE UPDATE ON call_center.cc_member FOR EACH ROW WHEN ((new.communications <> old.communications)) EXECUTE FUNCTION call_center.cc_member_set_sys_destinations_tg();


--
-- Name: cc_member cc_member_statistic_trigger_deleted; Type: TRIGGER; Schema: call_center; Owner: -
--

CREATE TRIGGER cc_member_statistic_trigger_deleted AFTER DELETE ON call_center.cc_member REFERENCING OLD TABLE AS deleted FOR EACH STATEMENT EXECUTE FUNCTION call_center.cc_member_statistic_trigger_deleted();


--
-- Name: cc_member cc_member_statistic_trigger_inserted; Type: TRIGGER; Schema: call_center; Owner: -
--

CREATE TRIGGER cc_member_statistic_trigger_inserted AFTER INSERT ON call_center.cc_member REFERENCING NEW TABLE AS inserted FOR EACH STATEMENT EXECUTE FUNCTION call_center.cc_member_statistic_trigger_inserted();


--
-- Name: cc_member cc_member_statistic_trigger_updated; Type: TRIGGER; Schema: call_center; Owner: -
--

CREATE TRIGGER cc_member_statistic_trigger_updated AFTER UPDATE ON call_center.cc_member REFERENCING OLD TABLE AS old_data NEW TABLE AS new_data FOR EACH STATEMENT EXECUTE FUNCTION call_center.cc_member_statistic_trigger_updated();


--
-- Name: cc_member cc_member_sys_offset_id_trigger_inserted; Type: TRIGGER; Schema: call_center; Owner: -
--

CREATE TRIGGER cc_member_sys_offset_id_trigger_inserted BEFORE INSERT ON call_center.cc_member FOR EACH ROW EXECUTE FUNCTION call_center.cc_member_sys_offset_id_trigger_inserted();


--
-- Name: cc_member cc_member_sys_offset_id_trigger_update; Type: TRIGGER; Schema: call_center; Owner: -
--

CREATE TRIGGER cc_member_sys_offset_id_trigger_update BEFORE UPDATE ON call_center.cc_member FOR EACH ROW WHEN ((new.timezone_id <> old.timezone_id)) EXECUTE FUNCTION call_center.cc_member_sys_offset_id_trigger_update();


--
-- Name: cc_agent tg_cc_set_agent_change_status_u; Type: TRIGGER; Schema: call_center; Owner: -
--

CREATE TRIGGER tg_cc_set_agent_change_status_u AFTER UPDATE ON call_center.cc_agent FOR EACH ROW WHEN (((old.state)::text <> (new.state)::text)) EXECUTE FUNCTION call_center.cc_set_agent_change_status();


--
-- Name: cc_member_communications tg_set_routing_ids_on_insert; Type: TRIGGER; Schema: call_center; Owner: -
--

CREATE TRIGGER tg_set_routing_ids_on_insert BEFORE INSERT ON call_center.cc_member_communications FOR EACH ROW WHEN (((new.number)::text <> ''::text)) EXECUTE FUNCTION call_center.tg_get_member_communication_resource();

ALTER TABLE call_center.cc_member_communications DISABLE TRIGGER tg_set_routing_ids_on_insert;


--
-- Name: cc_member_communications tg_set_routing_ids_on_update_number; Type: TRIGGER; Schema: call_center; Owner: -
--

CREATE TRIGGER tg_set_routing_ids_on_update_number BEFORE UPDATE ON call_center.cc_member_communications FOR EACH ROW WHEN (((new.number)::text <> (old.number)::text)) EXECUTE FUNCTION call_center.tg_get_member_communication_resource();


--
-- Name: callflow_public_1 callflow_public_check_destination_tg; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER callflow_public_check_destination_tg BEFORE INSERT OR UPDATE ON public.callflow_public_1 FOR EACH ROW EXECUTE FUNCTION public.callflow_public_check_duplicate_destination();


--
-- Name: cdr_a cdr_a_instead_insert_tg; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER cdr_a_instead_insert_tg BEFORE INSERT ON public.cdr_a FOR EACH ROW EXECUTE FUNCTION public.cdr_a_instead_insert();


--
-- Name: cdr_b cdr_b_instead_insert_tg; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER cdr_b_instead_insert_tg BEFORE INSERT ON public.cdr_b FOR EACH ROW EXECUTE FUNCTION public.cdr_b_instead_insert();


--
-- Name: cc_agent tg_cc_set_agent_change_status_u; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER tg_cc_set_agent_change_status_u AFTER UPDATE ON public.cc_agent FOR EACH ROW EXECUTE FUNCTION public.cc_set_agent_change_status();


--
-- Name: cc_member_communications tg_set_routing_ids_on_insert; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER tg_set_routing_ids_on_insert BEFORE INSERT ON public.cc_member_communications FOR EACH ROW EXECUTE FUNCTION public.tg_get_member_communication_resource();


--
-- Name: cc_queue_routing tg_set_routing_ids_on_insert_or_delete_pattern; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER tg_set_routing_ids_on_insert_or_delete_pattern AFTER INSERT OR DELETE ON public.cc_queue_routing FOR EACH ROW EXECUTE FUNCTION public.tg_fill_member_communication_resource();


--
-- Name: cc_member_communications tg_set_routing_ids_on_update_number; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER tg_set_routing_ids_on_update_number BEFORE UPDATE ON public.cc_member_communications FOR EACH ROW EXECUTE FUNCTION public.tg_get_member_communication_resource();


--
-- Name: cc_queue_routing tg_set_routing_ids_on_update_pattern; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER tg_set_routing_ids_on_update_pattern AFTER UPDATE ON public.cc_queue_routing FOR EACH ROW EXECUTE FUNCTION public.tg_fill_member_communication_resource();


--
-- Name: wbt_domain wbt_domain_role_owner; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER wbt_domain_role_owner AFTER INSERT ON public.wbt_domain FOR EACH ROW EXECUTE FUNCTION public.wbt_domain_role_owner();


--
-- Name: wbt_group wbt_group_constraints; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER wbt_group_constraints INSTEAD OF INSERT OR DELETE OR UPDATE ON public.wbt_group FOR EACH ROW EXECUTE FUNCTION public.wbt_group_operation();


--
-- Name: wbt_user wbt_user_constraints; Type: TRIGGER; Schema: public; Owner: -
--

CREATE TRIGGER wbt_user_constraints INSTEAD OF INSERT OR DELETE OR UPDATE ON public.wbt_user FOR EACH ROW EXECUTE FUNCTION public.wbt_user_operation();


--
-- Name: acr_jobs acr_jobs_acr_routing_scheme_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_jobs
    ADD CONSTRAINT acr_jobs_acr_routing_scheme_id_fk FOREIGN KEY (schema_id) REFERENCES call_center.acr_routing_scheme(id);


--
-- Name: acr_routing_inbound_call acr_routing_inbound_call___fka; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_inbound_call
    ADD CONSTRAINT acr_routing_inbound_call___fka FOREIGN KEY (stop_scheme_id) REFERENCES call_center.acr_routing_scheme(id);


--
-- Name: acr_routing_inbound_call acr_routing_inbound_call_acr_routing_scheme_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_inbound_call
    ADD CONSTRAINT acr_routing_inbound_call_acr_routing_scheme_id_fk FOREIGN KEY (start_scheme_id) REFERENCES call_center.acr_routing_scheme(id);


--
-- Name: acr_routing_inbound_call acr_routing_inbound_call_calendar_timezones_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_inbound_call
    ADD CONSTRAINT acr_routing_inbound_call_calendar_timezones_id_fk FOREIGN KEY (timezone_id) REFERENCES call_center.calendar_timezones(id);


--
-- Name: acr_routing_inbound_call acr_routing_inbound_call_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_inbound_call
    ADD CONSTRAINT acr_routing_inbound_call_wbt_domain_dc_fk FOREIGN KEY (domain_id) REFERENCES directory.wbt_domain(dc);


--
-- Name: acr_routing_outbound_call acr_routing_outbound_call_acr_routing_scheme_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_outbound_call
    ADD CONSTRAINT acr_routing_outbound_call_acr_routing_scheme_id_fk FOREIGN KEY (scheme_id) REFERENCES call_center.acr_routing_scheme(id);


--
-- Name: acr_routing_scheme acr_routing_scheme_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_scheme
    ADD CONSTRAINT acr_routing_scheme_wbt_domain_dc_fk FOREIGN KEY (domain_id) REFERENCES directory.wbt_domain(dc);


--
-- Name: acr_routing_variables acr_routing_variables_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.acr_routing_variables
    ADD CONSTRAINT acr_routing_variables_wbt_domain_dc_fk FOREIGN KEY (domain_id) REFERENCES directory.wbt_domain(dc);


--
-- Name: calendar_accept_of_day calendar_accept_of_day_calendar_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar_accept_of_day
    ADD CONSTRAINT calendar_accept_of_day_calendar_id_fk FOREIGN KEY (calendar_id) REFERENCES call_center.calendar(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: calendar_acl calendar_acl_domain_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar_acl
    ADD CONSTRAINT calendar_acl_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: calendar_acl calendar_acl_grantor_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar_acl
    ADD CONSTRAINT calendar_acl_grantor_fk FOREIGN KEY (grantor, dc) REFERENCES directory.wbt_auth(id, dc);


--
-- Name: calendar_acl calendar_acl_grantor_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar_acl
    ADD CONSTRAINT calendar_acl_grantor_id_fk FOREIGN KEY (grantor) REFERENCES directory.wbt_auth(id) ON DELETE SET NULL;


--
-- Name: calendar_acl calendar_acl_object_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar_acl
    ADD CONSTRAINT calendar_acl_object_fk FOREIGN KEY (object, dc) REFERENCES call_center.calendar(id, domain_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: calendar_acl calendar_acl_subject_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar_acl
    ADD CONSTRAINT calendar_acl_subject_fk FOREIGN KEY (subject, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE;


--
-- Name: calendar calendar_calendar_timezones_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar
    ADD CONSTRAINT calendar_calendar_timezones_id_fk FOREIGN KEY (timezone_id) REFERENCES call_center.calendar_timezones(id);


--
-- Name: calendar_except calendar_except_calendar_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar_except
    ADD CONSTRAINT calendar_except_calendar_id_fk FOREIGN KEY (calendar_id) REFERENCES call_center.calendar(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: calendar calendar_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.calendar
    ADD CONSTRAINT calendar_wbt_domain_dc_fk FOREIGN KEY (domain_id) REFERENCES directory.wbt_domain(dc);


--
-- Name: cc_agent_acl cc_agent_acl_cc_agent_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_acl
    ADD CONSTRAINT cc_agent_acl_cc_agent_id_fk FOREIGN KEY (object) REFERENCES call_center.cc_agent(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_agent_acl cc_agent_acl_domain_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_acl
    ADD CONSTRAINT cc_agent_acl_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: cc_agent_acl cc_agent_acl_grantor_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_acl
    ADD CONSTRAINT cc_agent_acl_grantor_fk FOREIGN KEY (grantor, dc) REFERENCES directory.wbt_auth(id, dc);


--
-- Name: cc_agent_acl cc_agent_acl_grantor_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_acl
    ADD CONSTRAINT cc_agent_acl_grantor_id_fk FOREIGN KEY (grantor) REFERENCES directory.wbt_auth(id) ON DELETE SET NULL;


--
-- Name: cc_agent_acl cc_agent_acl_object_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_acl
    ADD CONSTRAINT cc_agent_acl_object_fk FOREIGN KEY (object, dc) REFERENCES call_center.cc_agent(id, domain_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cc_agent_acl cc_agent_acl_subject_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_acl
    ADD CONSTRAINT cc_agent_acl_subject_fk FOREIGN KEY (subject, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE;


--
-- Name: cc_agent_attempt cc_agent_attempt_cc_agent_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_attempt
    ADD CONSTRAINT cc_agent_attempt_cc_agent_id_fk FOREIGN KEY (agent_id) REFERENCES call_center.cc_agent(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_agent_in_team cc_agent_in_team_cc_agent_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_in_team
    ADD CONSTRAINT cc_agent_in_team_cc_agent_id_fk FOREIGN KEY (agent_id) REFERENCES call_center.cc_agent(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_agent_in_team cc_agent_in_team_cc_bucket_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_in_team
    ADD CONSTRAINT cc_agent_in_team_cc_bucket_id_fk FOREIGN KEY (bucket_id) REFERENCES call_center.cc_bucket(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- Name: cc_agent_in_team cc_agent_in_team_cc_skils_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_in_team
    ADD CONSTRAINT cc_agent_in_team_cc_skils_id_fk FOREIGN KEY (skill_id) REFERENCES call_center.cc_skill(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_agent_in_team cc_agent_in_team_cc_team_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_in_team
    ADD CONSTRAINT cc_agent_in_team_cc_team_id_fk FOREIGN KEY (team_id) REFERENCES call_center.cc_team(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_agent_activity cc_agent_statistic_cc_agent_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_activity
    ADD CONSTRAINT cc_agent_statistic_cc_agent_id_fk FOREIGN KEY (agent_id) REFERENCES call_center.cc_agent(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_agent_state_history cc_agent_status_history_cc_agent_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent_state_history
    ADD CONSTRAINT cc_agent_status_history_cc_agent_id_fk FOREIGN KEY (agent_id) REFERENCES call_center.cc_agent(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_agent cc_agent_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent
    ADD CONSTRAINT cc_agent_wbt_domain_dc_fk FOREIGN KEY (domain_id) REFERENCES directory.wbt_domain(dc);


--
-- Name: cc_agent cc_agent_wbt_user_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_agent
    ADD CONSTRAINT cc_agent_wbt_user_id_fk FOREIGN KEY (user_id) REFERENCES directory.wbt_user(id);


--
-- Name: cc_bucket_acl cc_bucket_acl_cc_bucket_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_bucket_acl
    ADD CONSTRAINT cc_bucket_acl_cc_bucket_id_fk FOREIGN KEY (object) REFERENCES call_center.cc_bucket(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_bucket_acl cc_bucket_acl_domain_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_bucket_acl
    ADD CONSTRAINT cc_bucket_acl_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: cc_bucket_acl cc_bucket_acl_grantor_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_bucket_acl
    ADD CONSTRAINT cc_bucket_acl_grantor_fk FOREIGN KEY (grantor, dc) REFERENCES directory.wbt_auth(id, dc);


--
-- Name: cc_bucket_acl cc_bucket_acl_grantor_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_bucket_acl
    ADD CONSTRAINT cc_bucket_acl_grantor_id_fk FOREIGN KEY (grantor) REFERENCES directory.wbt_auth(id) ON DELETE SET NULL;


--
-- Name: cc_bucket_acl cc_bucket_acl_object_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_bucket_acl
    ADD CONSTRAINT cc_bucket_acl_object_fk FOREIGN KEY (object, dc) REFERENCES call_center.cc_bucket(id, domain_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cc_bucket_acl cc_bucket_acl_subject_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_bucket_acl
    ADD CONSTRAINT cc_bucket_acl_subject_fk FOREIGN KEY (subject, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE;


--
-- Name: cc_bucket_in_queue cc_bucket_in_queue_cc_bucket_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_bucket_in_queue
    ADD CONSTRAINT cc_bucket_in_queue_cc_bucket_id_fk FOREIGN KEY (bucket_id) REFERENCES call_center.cc_bucket(id);


--
-- Name: cc_bucket_in_queue cc_bucket_in_queue_cc_queue_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_bucket_in_queue
    ADD CONSTRAINT cc_bucket_in_queue_cc_queue_id_fk FOREIGN KEY (queue_id) REFERENCES call_center.cc_queue(id);


--
-- Name: cc_list_acl cc_list_acl_domain_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_list_acl
    ADD CONSTRAINT cc_list_acl_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: cc_list_acl cc_list_acl_grantor_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_list_acl
    ADD CONSTRAINT cc_list_acl_grantor_fk FOREIGN KEY (grantor, dc) REFERENCES directory.wbt_auth(id, dc);


--
-- Name: cc_list_acl cc_list_acl_grantor_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_list_acl
    ADD CONSTRAINT cc_list_acl_grantor_id_fk FOREIGN KEY (grantor) REFERENCES directory.wbt_auth(id) ON DELETE SET NULL;


--
-- Name: cc_list_acl cc_list_acl_object_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_list_acl
    ADD CONSTRAINT cc_list_acl_object_fk FOREIGN KEY (object, dc) REFERENCES call_center.cc_list(id, domain_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cc_list_acl cc_list_acl_subject_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_list_acl
    ADD CONSTRAINT cc_list_acl_subject_fk FOREIGN KEY (subject, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE;


--
-- Name: cc_list_communications cc_list_communications_cc_list_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_list_communications
    ADD CONSTRAINT cc_list_communications_cc_list_id_fk FOREIGN KEY (list_id) REFERENCES call_center.cc_list(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_list cc_list_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_list
    ADD CONSTRAINT cc_list_wbt_domain_dc_fk FOREIGN KEY (domain_id) REFERENCES directory.wbt_domain(dc) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_member_attempt cc_member_attempt_cc_bucket_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_attempt
    ADD CONSTRAINT cc_member_attempt_cc_bucket_id_fk FOREIGN KEY (bucket_id) REFERENCES call_center.cc_bucket(id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: cc_member_attempt cc_member_attempt_cc_member_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_attempt
    ADD CONSTRAINT cc_member_attempt_cc_member_id_fk FOREIGN KEY (member_id) REFERENCES call_center.cc_member(id);


--
-- Name: cc_member_attempt cc_member_attempt_cc_queue_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_attempt
    ADD CONSTRAINT cc_member_attempt_cc_queue_id_fk FOREIGN KEY (queue_id) REFERENCES call_center.cc_queue(id);


--
-- Name: cc_member_attempt_log cc_member_attempt_log_cc_member_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_attempt_log
    ADD CONSTRAINT cc_member_attempt_log_cc_member_id_fk FOREIGN KEY (member_id) REFERENCES call_center.cc_member(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_member_attempt_log cc_member_attempt_log_cc_queue_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_attempt_log
    ADD CONSTRAINT cc_member_attempt_log_cc_queue_id_fk FOREIGN KEY (queue_id) REFERENCES call_center.cc_queue(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_member cc_member_cc_bucket_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member
    ADD CONSTRAINT cc_member_cc_bucket_id_fk FOREIGN KEY (bucket_id) REFERENCES call_center.cc_bucket(id);


--
-- Name: cc_member cc_member_cc_queue_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member
    ADD CONSTRAINT cc_member_cc_queue_id_fk FOREIGN KEY (queue_id) REFERENCES call_center.cc_queue(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_member_communications cc_member_communications_cc_communication_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_communications
    ADD CONSTRAINT cc_member_communications_cc_communication_id_fk FOREIGN KEY (communication_id) REFERENCES call_center.cc_communication(id);


--
-- Name: cc_member_communications cc_member_communications_cc_member_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_communications
    ADD CONSTRAINT cc_member_communications_cc_member_id_fk FOREIGN KEY (member_id) REFERENCES call_center.cc_member(id) ON DELETE RESTRICT;


--
-- Name: cc_member_messages cc_member_messages_cc_member_communications_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_messages
    ADD CONSTRAINT cc_member_messages_cc_member_communications_id_fk FOREIGN KEY (communication_id) REFERENCES call_center.cc_member_communications(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_member_messages cc_member_messages_cc_member_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_member_messages
    ADD CONSTRAINT cc_member_messages_cc_member_id_fk FOREIGN KEY (member_id) REFERENCES call_center.cc_member(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_outbound_resource_acl cc_outbound_resource_acl_cc_outbound_resource_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_acl
    ADD CONSTRAINT cc_outbound_resource_acl_cc_outbound_resource_id_fk FOREIGN KEY (object) REFERENCES call_center.cc_outbound_resource(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_outbound_resource_acl cc_outbound_resource_acl_domain_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_acl
    ADD CONSTRAINT cc_outbound_resource_acl_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: cc_outbound_resource_acl cc_outbound_resource_acl_grantor_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_acl
    ADD CONSTRAINT cc_outbound_resource_acl_grantor_fk FOREIGN KEY (grantor, dc) REFERENCES directory.wbt_auth(id, dc);


--
-- Name: cc_outbound_resource_acl cc_outbound_resource_acl_grantor_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_acl
    ADD CONSTRAINT cc_outbound_resource_acl_grantor_id_fk FOREIGN KEY (grantor) REFERENCES directory.wbt_auth(id) ON DELETE SET NULL;


--
-- Name: cc_outbound_resource_acl cc_outbound_resource_acl_object_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_acl
    ADD CONSTRAINT cc_outbound_resource_acl_object_fk FOREIGN KEY (object, dc) REFERENCES call_center.cc_outbound_resource(id, domain_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cc_outbound_resource_acl cc_outbound_resource_acl_subject_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_acl
    ADD CONSTRAINT cc_outbound_resource_acl_subject_fk FOREIGN KEY (subject, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE;


--
-- Name: cc_outbound_resource_display cc_outbound_resource_display_cc_outbound_resource_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_display
    ADD CONSTRAINT cc_outbound_resource_display_cc_outbound_resource_id_fk FOREIGN KEY (resource_id) REFERENCES call_center.cc_outbound_resource(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_outbound_resource_group_acl cc_outbound_resource_group_acl_cc_outbound_resource_group_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_group_acl
    ADD CONSTRAINT cc_outbound_resource_group_acl_cc_outbound_resource_group_id_fk FOREIGN KEY (object) REFERENCES call_center.cc_outbound_resource_group(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_outbound_resource_group_acl cc_outbound_resource_group_acl_domain_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_group_acl
    ADD CONSTRAINT cc_outbound_resource_group_acl_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: cc_outbound_resource_group_acl cc_outbound_resource_group_acl_grantor_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_group_acl
    ADD CONSTRAINT cc_outbound_resource_group_acl_grantor_fk FOREIGN KEY (grantor, dc) REFERENCES directory.wbt_auth(id, dc);


--
-- Name: cc_outbound_resource_group_acl cc_outbound_resource_group_acl_grantor_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_group_acl
    ADD CONSTRAINT cc_outbound_resource_group_acl_grantor_id_fk FOREIGN KEY (grantor) REFERENCES directory.wbt_auth(id) ON DELETE SET NULL;


--
-- Name: cc_outbound_resource_group_acl cc_outbound_resource_group_acl_object_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_group_acl
    ADD CONSTRAINT cc_outbound_resource_group_acl_object_fk FOREIGN KEY (object, dc) REFERENCES call_center.cc_outbound_resource_group(id, domain_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cc_outbound_resource_group_acl cc_outbound_resource_group_acl_subject_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_group_acl
    ADD CONSTRAINT cc_outbound_resource_group_acl_subject_fk FOREIGN KEY (subject, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE;


--
-- Name: cc_outbound_resource_group_acl cc_outbound_resource_group_acl_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_group_acl
    ADD CONSTRAINT cc_outbound_resource_group_acl_wbt_domain_dc_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_outbound_resource_group_acl cc_outbound_resource_group_acl_wbt_user_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_group_acl
    ADD CONSTRAINT cc_outbound_resource_group_acl_wbt_user_id_fk FOREIGN KEY (grantor) REFERENCES directory.wbt_user(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_outbound_resource_group cc_outbound_resource_group_cc_communication_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_group
    ADD CONSTRAINT cc_outbound_resource_group_cc_communication_id_fk FOREIGN KEY (communication_id) REFERENCES call_center.cc_communication(id);


--
-- Name: cc_outbound_resource_group cc_outbound_resource_group_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_group
    ADD CONSTRAINT cc_outbound_resource_group_wbt_domain_dc_fk FOREIGN KEY (domain_id) REFERENCES directory.wbt_domain(dc);


--
-- Name: cc_outbound_resource_in_group cc_outbound_resource_in_group_cc_outbound_resource_group_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_in_group
    ADD CONSTRAINT cc_outbound_resource_in_group_cc_outbound_resource_group_id_fk FOREIGN KEY (group_id) REFERENCES call_center.cc_outbound_resource_group(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_outbound_resource_in_group cc_outbound_resource_in_group_cc_outbound_resource_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource_in_group
    ADD CONSTRAINT cc_outbound_resource_in_group_cc_outbound_resource_id_fk FOREIGN KEY (resource_id) REFERENCES call_center.cc_outbound_resource(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_outbound_resource cc_outbound_resource_sip_gateway_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource
    ADD CONSTRAINT cc_outbound_resource_sip_gateway_id_fk FOREIGN KEY (gateway_id) REFERENCES directory.sip_gateway(id);


--
-- Name: cc_outbound_resource cc_outbound_resource_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_outbound_resource
    ADD CONSTRAINT cc_outbound_resource_wbt_domain_dc_fk FOREIGN KEY (domain_id) REFERENCES directory.wbt_domain(dc);


--
-- Name: cc_queue_acl cc_queue_acl_cc_queue_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_acl
    ADD CONSTRAINT cc_queue_acl_cc_queue_id_fk FOREIGN KEY (object) REFERENCES call_center.cc_queue(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_queue_acl cc_queue_acl_domain_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_acl
    ADD CONSTRAINT cc_queue_acl_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: cc_queue_acl cc_queue_acl_grantor_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_acl
    ADD CONSTRAINT cc_queue_acl_grantor_fk FOREIGN KEY (grantor, dc) REFERENCES directory.wbt_auth(id, dc);


--
-- Name: cc_queue_acl cc_queue_acl_grantor_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_acl
    ADD CONSTRAINT cc_queue_acl_grantor_id_fk FOREIGN KEY (grantor) REFERENCES directory.wbt_auth(id) ON DELETE SET NULL;


--
-- Name: cc_queue_acl cc_queue_acl_object_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_acl
    ADD CONSTRAINT cc_queue_acl_object_fk FOREIGN KEY (object, dc) REFERENCES call_center.cc_queue(id, domain_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cc_queue_acl cc_queue_acl_subject_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_acl
    ADD CONSTRAINT cc_queue_acl_subject_fk FOREIGN KEY (subject, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE;


--
-- Name: cc_queue cc_queue_calendar_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue
    ADD CONSTRAINT cc_queue_calendar_id_fk FOREIGN KEY (calendar_id) REFERENCES call_center.calendar(id);


--
-- Name: cc_queue cc_queue_cc_list_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue
    ADD CONSTRAINT cc_queue_cc_list_id_fk FOREIGN KEY (dnc_list_id) REFERENCES call_center.cc_list(id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: cc_queue cc_queue_cc_team_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue
    ADD CONSTRAINT cc_queue_cc_team_id_fk FOREIGN KEY (team_id) REFERENCES call_center.cc_team(id);


--
-- Name: cc_queue_resource cc_queue_resource_cc_outbound_resource_group_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_resource
    ADD CONSTRAINT cc_queue_resource_cc_outbound_resource_group_id_fk FOREIGN KEY (resource_group_id) REFERENCES call_center.cc_outbound_resource_group(id);


--
-- Name: cc_queue_resource cc_queue_resource_cc_queue_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_resource
    ADD CONSTRAINT cc_queue_resource_cc_queue_id_fk FOREIGN KEY (queue_id) REFERENCES call_center.cc_queue(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_queue_resource cc_queue_resource_cc_queue_id_fk_2; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_resource
    ADD CONSTRAINT cc_queue_resource_cc_queue_id_fk_2 FOREIGN KEY (queue_id) REFERENCES call_center.cc_queue(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_queue_statistics cc_queue_statistics_cc_bucket_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_statistics
    ADD CONSTRAINT cc_queue_statistics_cc_bucket_id_fk FOREIGN KEY (bucket_id) REFERENCES call_center.cc_bucket(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_queue_statistics cc_queue_statistics_cc_queue_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue_statistics
    ADD CONSTRAINT cc_queue_statistics_cc_queue_id_fk FOREIGN KEY (queue_id) REFERENCES call_center.cc_queue(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_queue cc_queue_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_queue
    ADD CONSTRAINT cc_queue_wbt_domain_dc_fk FOREIGN KEY (domain_id) REFERENCES directory.wbt_domain(dc);


--
-- Name: cc_skill_in_agent cc_skill_in_agent_cc_agent_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_skill_in_agent
    ADD CONSTRAINT cc_skill_in_agent_cc_agent_id_fk FOREIGN KEY (agent_id) REFERENCES call_center.cc_agent(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_skill_in_agent cc_skill_in_agent_cc_skils_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_skill_in_agent
    ADD CONSTRAINT cc_skill_in_agent_cc_skils_id_fk FOREIGN KEY (skill_id) REFERENCES call_center.cc_skill(id);


--
-- Name: cc_skill cc_skill_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_skill
    ADD CONSTRAINT cc_skill_wbt_domain_dc_fk FOREIGN KEY (domain_id) REFERENCES directory.wbt_domain(dc);


--
-- Name: cc_supervisor_in_team cc_supervisor_in_team_cc_agent_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_supervisor_in_team
    ADD CONSTRAINT cc_supervisor_in_team_cc_agent_id_fk FOREIGN KEY (agent_id) REFERENCES call_center.cc_agent(id);


--
-- Name: cc_supervisor_in_team cc_supervisor_in_team_cc_team_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_supervisor_in_team
    ADD CONSTRAINT cc_supervisor_in_team_cc_team_id_fk FOREIGN KEY (team_id) REFERENCES call_center.cc_team(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_team_acl cc_team_acl_cc_team_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_team_acl
    ADD CONSTRAINT cc_team_acl_cc_team_id_fk FOREIGN KEY (object) REFERENCES call_center.cc_team(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_team_acl cc_team_acl_domain_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_team_acl
    ADD CONSTRAINT cc_team_acl_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: cc_team_acl cc_team_acl_grantor_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_team_acl
    ADD CONSTRAINT cc_team_acl_grantor_fk FOREIGN KEY (grantor, dc) REFERENCES directory.wbt_auth(id, dc);


--
-- Name: cc_team_acl cc_team_acl_grantor_id_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_team_acl
    ADD CONSTRAINT cc_team_acl_grantor_id_fk FOREIGN KEY (grantor) REFERENCES directory.wbt_auth(id) ON DELETE SET NULL;


--
-- Name: cc_team_acl cc_team_acl_object_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_team_acl
    ADD CONSTRAINT cc_team_acl_object_fk FOREIGN KEY (object, dc) REFERENCES call_center.cc_team(id, domain_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: cc_team_acl cc_team_acl_subject_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_team_acl
    ADD CONSTRAINT cc_team_acl_subject_fk FOREIGN KEY (subject, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE;


--
-- Name: cc_team cc_team_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: call_center; Owner: -
--

ALTER TABLE ONLY call_center.cc_team
    ADD CONSTRAINT cc_team_wbt_domain_dc_fk FOREIGN KEY (domain_id) REFERENCES directory.wbt_domain(dc);


--
-- Name: contacts_acl contacts_acl_domain_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.contacts_acl
    ADD CONSTRAINT contacts_acl_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: contacts_acl contacts_acl_object_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.contacts_acl
    ADD CONSTRAINT contacts_acl_object_fk FOREIGN KEY (dc, object) REFERENCES directory.contacts(dc, id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: contacts contacts_domain_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.contacts
    ADD CONSTRAINT contacts_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: wbt_hotdesk hotdesk_device_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_hotdesk
    ADD CONSTRAINT hotdesk_device_id_fk FOREIGN KEY (device_id, dc) REFERENCES directory.wbt_device(id, dc) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: license license_user_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.license
    ADD CONSTRAINT license_user_id_fk FOREIGN KEY (user_id) REFERENCES directory.wbt_user(id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: roles role_created_by_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.roles
    ADD CONSTRAINT role_created_by_fk FOREIGN KEY (created_by, dc) REFERENCES directory.roles(id, dc) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: roles role_creator_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.roles
    ADD CONSTRAINT role_creator_id_fk FOREIGN KEY (created_by) REFERENCES directory.roles(id) ON DELETE SET NULL;


--
-- Name: roles role_deleted_by_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.roles
    ADD CONSTRAINT role_deleted_by_fk FOREIGN KEY (deleted_by, dc) REFERENCES directory.roles(id, dc) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: roles role_deletor_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.roles
    ADD CONSTRAINT role_deletor_id_fk FOREIGN KEY (deleted_by) REFERENCES directory.roles(id) ON DELETE SET NULL;


--
-- Name: roles role_updated_by_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.roles
    ADD CONSTRAINT role_updated_by_fk FOREIGN KEY (updated_by, dc) REFERENCES directory.roles(id, dc) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: roles role_updator_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.roles
    ADD CONSTRAINT role_updator_id_fk FOREIGN KEY (updated_by) REFERENCES directory.roles(id) ON DELETE SET NULL;


--
-- Name: roles roles_dc_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.roles
    ADD CONSTRAINT roles_dc_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: sip_gateway sip_gateway_domain_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.sip_gateway
    ADD CONSTRAINT sip_gateway_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: sip_gateway_allow sip_gateway_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.sip_gateway_allow
    ADD CONSTRAINT sip_gateway_id_fk FOREIGN KEY (id) REFERENCES directory.sip_gateway(id) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: sip_gateway_register sip_gateway_register_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.sip_gateway_register
    ADD CONSTRAINT sip_gateway_register_id_fk FOREIGN KEY (id) REFERENCES directory.sip_gateway(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: voip_channel voip_channel_device_id; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.voip_channel
    ADD CONSTRAINT voip_channel_device_id FOREIGN KEY (device_id, domain_id) REFERENCES directory.wbt_device(id, dc);


--
-- Name: voip_channel voip_channel_domain_id; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.voip_channel
    ADD CONSTRAINT voip_channel_domain_id FOREIGN KEY (domain_id) REFERENCES directory.wbt_domain(dc);


--
-- Name: voip_channel voip_channel_gateway_id; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.voip_channel
    ADD CONSTRAINT voip_channel_gateway_id FOREIGN KEY (gateway_id, domain_id) REFERENCES directory.sip_gateway(id, dc);


--
-- Name: voip_channel voip_channel_user_id; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.voip_channel
    ADD CONSTRAINT voip_channel_user_id FOREIGN KEY (user_id, domain_id) REFERENCES directory.wbt_user(id, dc);


--
-- Name: wbt_auth_acl wbt_auth_acl_domain_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth_acl
    ADD CONSTRAINT wbt_auth_acl_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: wbt_auth_acl wbt_auth_acl_grantor_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth_acl
    ADD CONSTRAINT wbt_auth_acl_grantor_fk FOREIGN KEY (grantor, dc) REFERENCES directory.wbt_auth(id, dc);


--
-- Name: wbt_auth_acl wbt_auth_acl_grantor_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth_acl
    ADD CONSTRAINT wbt_auth_acl_grantor_id_fk FOREIGN KEY (grantor) REFERENCES directory.wbt_auth(id) ON DELETE SET NULL;


--
-- Name: wbt_auth_acl wbt_auth_acl_object_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth_acl
    ADD CONSTRAINT wbt_auth_acl_object_fk FOREIGN KEY (object, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_auth_acl wbt_auth_acl_subject_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth_acl
    ADD CONSTRAINT wbt_auth_acl_subject_fk FOREIGN KEY (subject, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_auth wbt_auth_domain_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth
    ADD CONSTRAINT wbt_auth_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: wbt_auth_grants wbt_auth_grants_domain_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth_grants
    ADD CONSTRAINT wbt_auth_grants_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: wbt_auth_grants wbt_auth_grants_wbt_grant_uuid_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth_grants
    ADD CONSTRAINT wbt_auth_grants_wbt_grant_uuid_fk FOREIGN KEY (grant_id) REFERENCES directory.wbt_grant(uuid) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: wbt_auth_member wbt_auth_member_role_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth_member
    ADD CONSTRAINT wbt_auth_member_role_id_fk FOREIGN KEY (role_id, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_auth_member wbt_auth_member_user_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth_member
    ADD CONSTRAINT wbt_auth_member_user_fk FOREIGN KEY (member_id, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_class_acl wbt_class_acl_domain_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_class_acl
    ADD CONSTRAINT wbt_class_acl_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: wbt_class_acl wbt_class_acl_grantor_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_class_acl
    ADD CONSTRAINT wbt_class_acl_grantor_fk FOREIGN KEY (grantor, dc) REFERENCES directory.wbt_auth(id, dc) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: wbt_class_acl wbt_class_acl_object_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_class_acl
    ADD CONSTRAINT wbt_class_acl_object_fk FOREIGN KEY (dc, object) REFERENCES directory.wbt_class(dc, id) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_class_acl wbt_class_acl_subject_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_class_acl
    ADD CONSTRAINT wbt_class_acl_subject_fk FOREIGN KEY (subject, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE;


--
-- Name: wbt_class wbt_class_domain_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_class
    ADD CONSTRAINT wbt_class_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: wbt_device_acl wbt_device_acl_domain_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device_acl
    ADD CONSTRAINT wbt_device_acl_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: wbt_device_acl wbt_device_acl_grantor_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device_acl
    ADD CONSTRAINT wbt_device_acl_grantor_fk FOREIGN KEY (grantor, dc) REFERENCES directory.wbt_auth(id, dc) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: wbt_device_acl wbt_device_acl_object_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device_acl
    ADD CONSTRAINT wbt_device_acl_object_fk FOREIGN KEY (object, dc) REFERENCES directory.wbt_device(id, dc) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_device_acl wbt_device_acl_subject_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device_acl
    ADD CONSTRAINT wbt_device_acl_subject_fk FOREIGN KEY (subject, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE;


--
-- Name: wbt_device_audit_revoke wbt_device_audit_dc_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device_audit_revoke
    ADD CONSTRAINT wbt_device_audit_dc_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: wbt_device_audit wbt_device_audit_dc_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device_audit
    ADD CONSTRAINT wbt_device_audit_dc_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: wbt_device_audit_revoke wbt_device_audit_device_dc_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device_audit_revoke
    ADD CONSTRAINT wbt_device_audit_device_dc_fk FOREIGN KEY (device_id, dc) REFERENCES directory.wbt_device(id, dc) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_device_audit wbt_device_audit_device_dc_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device_audit
    ADD CONSTRAINT wbt_device_audit_device_dc_fk FOREIGN KEY (device_id, dc) REFERENCES directory.wbt_device(id, dc) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_device_audit wbt_device_audit_device_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device_audit
    ADD CONSTRAINT wbt_device_audit_device_id_fk FOREIGN KEY (device_id) REFERENCES directory.wbt_device(id) ON DELETE SET NULL;


--
-- Name: wbt_device_audit_revoke wbt_device_audit_user_dc_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device_audit_revoke
    ADD CONSTRAINT wbt_device_audit_user_dc_fk FOREIGN KEY (user_id, dc) REFERENCES directory.wbt_user(id, dc);


--
-- Name: wbt_device_audit wbt_device_audit_user_dc_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device_audit
    ADD CONSTRAINT wbt_device_audit_user_dc_fk FOREIGN KEY (user_id, dc) REFERENCES directory.wbt_user(id, dc);


--
-- Name: wbt_device_audit_revoke wbt_device_audit_user_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device_audit_revoke
    ADD CONSTRAINT wbt_device_audit_user_id_fk FOREIGN KEY (user_id) REFERENCES directory.wbt_user(id) ON DELETE SET NULL;


--
-- Name: wbt_device_audit wbt_device_audit_user_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device_audit
    ADD CONSTRAINT wbt_device_audit_user_id_fk FOREIGN KEY (user_id) REFERENCES directory.wbt_user(id) ON DELETE SET NULL;


--
-- Name: wbt_device wbt_device_created_by_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device
    ADD CONSTRAINT wbt_device_created_by_fk FOREIGN KEY (created_by, dc) REFERENCES directory.wbt_user(id, dc) ON DELETE SET NULL;


--
-- Name: wbt_device wbt_device_dc_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device
    ADD CONSTRAINT wbt_device_dc_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: wbt_device wbt_device_deleted_by_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device
    ADD CONSTRAINT wbt_device_deleted_by_fk FOREIGN KEY (deleted_by, dc) REFERENCES directory.wbt_user(id, dc) ON DELETE SET NULL;


--
-- Name: wbt_device wbt_device_updated_by_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device
    ADD CONSTRAINT wbt_device_updated_by_fk FOREIGN KEY (updated_by, dc) REFERENCES directory.wbt_user(id, dc) ON DELETE SET NULL;


--
-- Name: wbt_device wbt_device_user_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_device
    ADD CONSTRAINT wbt_device_user_id_fk FOREIGN KEY (user_id, dc) REFERENCES directory.wbt_user(id, dc) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_auth_member wbt_domain_auth_member_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_auth_member
    ADD CONSTRAINT wbt_domain_auth_member_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: wbt_domain wbt_domain_cert_serial_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_domain
    ADD CONSTRAINT wbt_domain_cert_serial_fk FOREIGN KEY (customer_id) REFERENCES directory.wbt_customer(id) ON UPDATE CASCADE ON DELETE RESTRICT;


--
-- Name: wbt_session wbt_session_auth_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_session
    ADD CONSTRAINT wbt_session_auth_id_fk FOREIGN KEY (user_id, domain_id) REFERENCES directory.wbt_user(id, dc) ON DELETE CASCADE;


--
-- Name: wbt_session wbt_session_domain_dc_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_session
    ADD CONSTRAINT wbt_session_domain_dc_fk FOREIGN KEY (domain_id) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_user wbt_user_auth_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_user
    ADD CONSTRAINT wbt_user_auth_id_fk FOREIGN KEY (id, dc) REFERENCES directory.wbt_auth(id, dc) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_user wbt_user_created_by_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_user
    ADD CONSTRAINT wbt_user_created_by_fk FOREIGN KEY (created_by, dc) REFERENCES directory.wbt_user(id, dc) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: wbt_user wbt_user_dc_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_user
    ADD CONSTRAINT wbt_user_dc_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: wbt_user wbt_user_deleted_by_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_user
    ADD CONSTRAINT wbt_user_deleted_by_fk FOREIGN KEY (deleted_by, dc) REFERENCES directory.wbt_user(id, dc) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: wbt_user wbt_user_device_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_user
    ADD CONSTRAINT wbt_user_device_id_fk FOREIGN KEY (device_id, id, dc) REFERENCES directory.wbt_device(id, user_id, dc) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_user wbt_user_device_id_ref; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_user
    ADD CONSTRAINT wbt_user_device_id_ref FOREIGN KEY (device_id) REFERENCES directory.wbt_device(id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_user_token wbt_user_token_created_by_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_user_token
    ADD CONSTRAINT wbt_user_token_created_by_fk FOREIGN KEY (created_by) REFERENCES directory.wbt_user(id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_user_token wbt_user_token_disabled_by_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_user_token
    ADD CONSTRAINT wbt_user_token_disabled_by_fk FOREIGN KEY (deleted_by) REFERENCES directory.wbt_user(id) ON DELETE SET NULL;


--
-- Name: wbt_user_token wbt_user_token_domain_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_user_token
    ADD CONSTRAINT wbt_user_token_domain_id_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_user_token wbt_user_token_owner_id_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_user_token
    ADD CONSTRAINT wbt_user_token_owner_id_fk FOREIGN KEY (user_id, dc) REFERENCES directory.wbt_user(id, dc) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_user_token wbt_user_token_updated_by_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_user_token
    ADD CONSTRAINT wbt_user_token_updated_by_fk FOREIGN KEY (updated_by) REFERENCES directory.wbt_user(id) ON DELETE SET NULL DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_user wbt_user_updated_by_fk; Type: FK CONSTRAINT; Schema: directory; Owner: -
--

ALTER TABLE ONLY directory.wbt_user
    ADD CONSTRAINT wbt_user_updated_by_fk FOREIGN KEY (updated_by, dc) REFERENCES directory.wbt_user(id, dc) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: wbt_auth_member wbt_auth_member_domain_dc_fk; Type: FK CONSTRAINT; Schema: permissions; Owner: -
--

ALTER TABLE ONLY permissions.wbt_auth_member
    ADD CONSTRAINT wbt_auth_member_domain_dc_fk FOREIGN KEY (dc) REFERENCES permissions.wbt_domain(dc);


--
-- Name: wbt_auth_member wbt_auth_member_group_fk; Type: FK CONSTRAINT; Schema: permissions; Owner: -
--

ALTER TABLE ONLY permissions.wbt_auth_member
    ADD CONSTRAINT wbt_auth_member_group_fk FOREIGN KEY (dc, role_id) REFERENCES permissions.wbt_auth(dc, id);


--
-- Name: wbt_auth wbt_auth_wbt_domain_id_fk; Type: FK CONSTRAINT; Schema: permissions; Owner: -
--

ALTER TABLE ONLY permissions.wbt_auth
    ADD CONSTRAINT wbt_auth_wbt_domain_id_fk FOREIGN KEY (dc) REFERENCES permissions.wbt_domain(dc);


--
-- Name: calendar_accept_of_day calendar_accept_of_day_calendar_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calendar_accept_of_day
    ADD CONSTRAINT calendar_accept_of_day_calendar_id_fk FOREIGN KEY (calendar_id) REFERENCES public.calendar(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: calendar calendar_domain_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calendar
    ADD CONSTRAINT calendar_domain_id_fk FOREIGN KEY (domain_id) REFERENCES public.domain(id);


--
-- Name: calendar_except calendar_except_calendar_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.calendar_except
    ADD CONSTRAINT calendar_except_calendar_id_fk FOREIGN KEY (calendar_id) REFERENCES public.calendar(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: callback_calls callback_calls_callback_members_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callback_calls
    ADD CONSTRAINT callback_calls_callback_members_id_fk FOREIGN KEY (member_id) REFERENCES public.callback_members(id) ON DELETE CASCADE;


--
-- Name: callback_members callback_members_callback_queue_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callback_members
    ADD CONSTRAINT callback_members_callback_queue_id_fk FOREIGN KEY (queue_id) REFERENCES public.callback_queue(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: callback_members_comment callback_members_comment_callback_members_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callback_members_comment
    ADD CONSTRAINT callback_members_comment_callback_members_id_fk FOREIGN KEY (member_id) REFERENCES public.callback_members(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: callback_members callback_members_widget_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callback_members
    ADD CONSTRAINT callback_members_widget_id_fk FOREIGN KEY (widget_id) REFERENCES public.widget(id);


--
-- Name: callflow_default callflow_default_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callflow_default
    ADD CONSTRAINT callflow_default_wbt_domain_dc_fk FOREIGN KEY (dc) REFERENCES public.wbt_domain(dc) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: callflow_extension callflow_extension_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callflow_extension
    ADD CONSTRAINT callflow_extension_wbt_domain_dc_fk FOREIGN KEY (dc) REFERENCES public.wbt_domain(dc) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: callflow_public_1 callflow_public_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callflow_public_1
    ADD CONSTRAINT callflow_public_wbt_domain_dc_fk FOREIGN KEY (dc) REFERENCES public.wbt_domain(dc) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: callflow_variables callflow_variables_wbt_domain_dc_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.callflow_variables
    ADD CONSTRAINT callflow_variables_wbt_domain_dc_fk FOREIGN KEY (dc) REFERENCES public.wbt_domain(dc) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_agent_in_queue cc_agent_in_queue_cc_agent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agent_in_queue
    ADD CONSTRAINT cc_agent_in_queue_cc_agent_id_fk FOREIGN KEY (agent_id) REFERENCES public.cc_agent(id);


--
-- Name: cc_agent_in_queue cc_agent_in_queue_cc_queue_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agent_in_queue
    ADD CONSTRAINT cc_agent_in_queue_cc_queue_id_fk FOREIGN KEY (queue_id) REFERENCES public.cc_queue(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_agent_in_queue cc_agent_in_queue_cc_skils_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agent_in_queue
    ADD CONSTRAINT cc_agent_in_queue_cc_skils_id_fk FOREIGN KEY (skill_id) REFERENCES public.cc_skils(id);


--
-- Name: cc_agent_activity cc_agent_statistic_cc_agent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agent_activity
    ADD CONSTRAINT cc_agent_statistic_cc_agent_id_fk FOREIGN KEY (agent_id) REFERENCES public.cc_agent(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_agent_state_history cc_agent_status_history_cc_agent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agent_state_history
    ADD CONSTRAINT cc_agent_status_history_cc_agent_id_fk FOREIGN KEY (agent_id) REFERENCES public.cc_agent(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_agent cc_agent_user_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_agent
    ADD CONSTRAINT cc_agent_user_id_fk FOREIGN KEY (user_id) REFERENCES public."user"(id);


--
-- Name: cc_list_communications cc_list_communications_cc_list_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_list_communications
    ADD CONSTRAINT cc_list_communications_cc_list_id_fk FOREIGN KEY (list_id) REFERENCES public.cc_list(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_list cc_list_domain_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_list
    ADD CONSTRAINT cc_list_domain_id_fk FOREIGN KEY (domain_id) REFERENCES public.domain(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_member_attempt cc_member_attempt_cc_agent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_member_attempt
    ADD CONSTRAINT cc_member_attempt_cc_agent_id_fk FOREIGN KEY (agent_id) REFERENCES public.cc_agent(id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: cc_member_attempt cc_member_attempt_cc_member_communications_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_member_attempt
    ADD CONSTRAINT cc_member_attempt_cc_member_communications_id_fk FOREIGN KEY (communication_id) REFERENCES public.cc_member_communications(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_member_attempt cc_member_attempt_cc_member_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_member_attempt
    ADD CONSTRAINT cc_member_attempt_cc_member_id_fk FOREIGN KEY (member_id) REFERENCES public.cc_member(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_member_attempt cc_member_attempt_cc_queue_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_member_attempt
    ADD CONSTRAINT cc_member_attempt_cc_queue_id_fk FOREIGN KEY (queue_id) REFERENCES public.cc_queue(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_member_attempt cc_member_attempt_cc_queue_timing_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_member_attempt
    ADD CONSTRAINT cc_member_attempt_cc_queue_timing_id_fk FOREIGN KEY (timing_id) REFERENCES public.cc_queue_timing(id);


--
-- Name: cc_member cc_member_cc_queue_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_member
    ADD CONSTRAINT cc_member_cc_queue_id_fk FOREIGN KEY (queue_id) REFERENCES public.cc_queue(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_member_communications cc_member_communications_cc_communication_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_member_communications
    ADD CONSTRAINT cc_member_communications_cc_communication_id_fk FOREIGN KEY (communication_id) REFERENCES public.cc_communication(id);


--
-- Name: cc_member_communications cc_member_communications_cc_member_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_member_communications
    ADD CONSTRAINT cc_member_communications_cc_member_id_fk FOREIGN KEY (member_id) REFERENCES public.cc_member(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_outbound_resource cc_outbound_resource_domain_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_outbound_resource
    ADD CONSTRAINT cc_outbound_resource_domain_id_fk FOREIGN KEY (domain_id) REFERENCES public.domain(id);


--
-- Name: cc_queue cc_queue_calendar_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_queue
    ADD CONSTRAINT cc_queue_calendar_id_fk FOREIGN KEY (calendar_id) REFERENCES public.calendar(id);


--
-- Name: cc_queue cc_queue_cc_list_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_queue
    ADD CONSTRAINT cc_queue_cc_list_id_fk FOREIGN KEY (dnc_list_id) REFERENCES public.cc_list(id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: cc_queue cc_queue_domain_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_queue
    ADD CONSTRAINT cc_queue_domain_id_fk FOREIGN KEY (domain_id) REFERENCES public.domain(id);


--
-- Name: cc_queue_routing cc_queue_routing_cc_queue_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_queue_routing
    ADD CONSTRAINT cc_queue_routing_cc_queue_id_fk FOREIGN KEY (queue_id) REFERENCES public.cc_queue(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_queue_timing cc_queue_timing_cc_communication_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_queue_timing
    ADD CONSTRAINT cc_queue_timing_cc_communication_id_fk FOREIGN KEY (communication_id) REFERENCES public.cc_communication(id);


--
-- Name: cc_queue_timing cc_queue_timing_cc_queue_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_queue_timing
    ADD CONSTRAINT cc_queue_timing_cc_queue_id_fk FOREIGN KEY (queue_id) REFERENCES public.cc_queue(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_resource_in_routing cc_resource_in_queue_cc_outbound_resource_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_resource_in_routing
    ADD CONSTRAINT cc_resource_in_queue_cc_outbound_resource_id_fk FOREIGN KEY (resource_id) REFERENCES public.cc_outbound_resource(id);


--
-- Name: cc_resource_in_routing cc_resource_in_routing_cc_queue_routing_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_resource_in_routing
    ADD CONSTRAINT cc_resource_in_routing_cc_queue_routing_id_fk FOREIGN KEY (routing_id) REFERENCES public.cc_queue_routing(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_skill_in_agent cc_skill_in_agent_cc_agent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_skill_in_agent
    ADD CONSTRAINT cc_skill_in_agent_cc_agent_id_fk FOREIGN KEY (agent_id) REFERENCES public.cc_agent(id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: cc_skill_in_agent cc_skill_in_agent_cc_skils_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_skill_in_agent
    ADD CONSTRAINT cc_skill_in_agent_cc_skils_id_fk FOREIGN KEY (skill_id) REFERENCES public.cc_skils(id);


--
-- Name: cc_skils cc_skils_domain_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cc_skils
    ADD CONSTRAINT cc_skils_domain_id_fk FOREIGN KEY (domain_id) REFERENCES public.domain(id);


--
-- Name: wbt_auth wbt_authdc; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_auth
    ADD CONSTRAINT wbt_authdc FOREIGN KEY (dc) REFERENCES public.wbt_domain(dc) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_cert_grants wbt_cert_claim; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_cert_grants
    ADD CONSTRAINT wbt_cert_claim FOREIGN KEY (serial) REFERENCES public.wbt_cert(serial) ON UPDATE RESTRICT ON DELETE CASCADE;


--
-- Name: wbt_cert_usage wbt_cert_domain; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_cert_usage
    ADD CONSTRAINT wbt_cert_domain FOREIGN KEY (dc) REFERENCES public.wbt_domain(dc) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: wbt_cert_usage wbt_cert_usage_wbt_cert_grants_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_cert_usage
    ADD CONSTRAINT wbt_cert_usage_wbt_cert_grants_id_fk FOREIGN KEY (ci) REFERENCES public.wbt_cert_grants(id);


--
-- Name: wbt_cert_usage wbt_cert_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_cert_usage
    ADD CONSTRAINT wbt_cert_user FOREIGN KEY (dc, id) REFERENCES public.wbt_auth(dc, id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: wbt_device wbt_device_domain; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_device
    ADD CONSTRAINT wbt_device_domain FOREIGN KEY (dc) REFERENCES public.wbt_domain(dc) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: wbt_device wbt_device_user; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_device
    ADD CONSTRAINT wbt_device_user FOREIGN KEY (dc, owner_id) REFERENCES public.wbt_auth(dc, id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: wbt_domain wbt_domain_role_owner; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_domain
    ADD CONSTRAINT wbt_domain_role_owner FOREIGN KEY (dc, dc) REFERENCES public.wbt_auth(dc, id) MATCH FULL ON UPDATE RESTRICT ON DELETE RESTRICT DEFERRABLE INITIALLY DEFERRED;


--
-- Name: wbt_auth_member wbt_membership_domain; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_auth_member
    ADD CONSTRAINT wbt_membership_domain FOREIGN KEY (dc) REFERENCES public.wbt_domain(dc) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: wbt_auth_member wbt_membership_grantor; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_auth_member
    ADD CONSTRAINT wbt_membership_grantor FOREIGN KEY (dc, grantor) REFERENCES public.wbt_auth(dc, id) ON UPDATE CASCADE ON DELETE SET NULL;


--
-- Name: wbt_auth_member wbt_membership_owner; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_auth_member
    ADD CONSTRAINT wbt_membership_owner FOREIGN KEY (dc, member) REFERENCES public.wbt_auth(dc, id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: wbt_auth_member wbt_membership_role; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_auth_member
    ADD CONSTRAINT wbt_membership_role FOREIGN KEY (dc, role) REFERENCES public.wbt_auth(dc, id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: wbt_token wbt_token_domain; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_token
    ADD CONSTRAINT wbt_token_domain FOREIGN KEY (domain_id) REFERENCES public.wbt_domain(dc) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: wbt_token wbt_token_owner; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.wbt_token
    ADD CONSTRAINT wbt_token_owner FOREIGN KEY (domain_id, owner_id) REFERENCES public.wbt_auth(dc, id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: widget widget_callback_queue_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.widget
    ADD CONSTRAINT widget_callback_queue_id_fk FOREIGN KEY (queue_id) REFERENCES public.callback_queue(id);


--
-- Name: file_backend_profiles_acl file_backend_profiles_acl_domain_fk; Type: FK CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.file_backend_profiles_acl
    ADD CONSTRAINT file_backend_profiles_acl_domain_fk FOREIGN KEY (dc) REFERENCES directory.wbt_domain(dc) ON DELETE CASCADE;


--
-- Name: file_backend_profiles_acl file_backend_profiles_acl_grantor_fk; Type: FK CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.file_backend_profiles_acl
    ADD CONSTRAINT file_backend_profiles_acl_grantor_fk FOREIGN KEY (grantor, dc) REFERENCES directory.wbt_auth(id, dc);


--
-- Name: file_backend_profiles_acl file_backend_profiles_acl_grantor_id_fk; Type: FK CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.file_backend_profiles_acl
    ADD CONSTRAINT file_backend_profiles_acl_grantor_id_fk FOREIGN KEY (grantor) REFERENCES directory.wbt_auth(id) ON DELETE SET NULL;


--
-- Name: file_backend_profiles_acl file_backend_profiles_acl_object_fk; Type: FK CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.file_backend_profiles_acl
    ADD CONSTRAINT file_backend_profiles_acl_object_fk FOREIGN KEY (object, dc) REFERENCES storage.file_backend_profiles(id, domain_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: file_backend_profiles_acl file_backend_profiles_acl_subject_fk; Type: FK CONSTRAINT; Schema: storage; Owner: -
--

ALTER TABLE ONLY storage.file_backend_profiles_acl
    ADD CONSTRAINT file_backend_profiles_acl_subject_fk FOREIGN KEY (subject, dc) REFERENCES directory.wbt_auth(id, dc) ON DELETE CASCADE;


--
-- Name: TABLE wbt_session; Type: ACL; Schema: permissions; Owner: -
--

GRANT SELECT ON TABLE permissions.wbt_session TO PUBLIC;


--
-- Name: TABLE wbt_auth; Type: ACL; Schema: public; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.wbt_auth TO PUBLIC;


--
-- Name: TABLE wbt_auth_member; Type: ACL; Schema: public; Owner: -
--

GRANT SELECT ON TABLE public.wbt_auth_member TO PUBLIC;


--
-- Name: TABLE wbt_device; Type: ACL; Schema: public; Owner: -
--

GRANT SELECT ON TABLE public.wbt_device TO PUBLIC;


--
-- Name: TABLE wbt_domain; Type: ACL; Schema: public; Owner: -
--

GRANT SELECT,DELETE,UPDATE ON TABLE public.wbt_domain TO PUBLIC;


--
-- Name: TABLE wbt_group; Type: ACL; Schema: public; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.wbt_group TO PUBLIC;


--
-- Name: TABLE wbt_sequence; Type: ACL; Schema: public; Owner: -
--

GRANT SELECT ON TABLE public.wbt_sequence TO PUBLIC;


--
-- Name: TABLE wbt_token; Type: ACL; Schema: public; Owner: -
--

GRANT SELECT ON TABLE public.wbt_token TO PUBLIC;


--
-- Name: TABLE wbt_user; Type: ACL; Schema: public; Owner: -
--

GRANT SELECT,INSERT,DELETE,UPDATE ON TABLE public.wbt_user TO PUBLIC;


--
-- PostgreSQL database dump complete
--

