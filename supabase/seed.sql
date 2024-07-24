-- pg_dump --column-inserts --data-only --table=auth.users --table=public.user_data --table=public.grade 'postgresql://postgres:postgres@localhost:54322/postgres'

--
-- PostgreSQL database dump
--
--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) VALUES ('00000000-0000-0000-0000-000000000000', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'authenticated', 'authenticated', 'admin@example.com', '$2a$10$yXC9wARSFzcUzcA3JScA3eLD4RUEcNjfXz.W1Epoa8LGbY7lC/fNO', '2024-07-24 01:53:47.40267+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-07-24 03:14:42.37375+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-07-24 01:53:47.39531+00', '2024-07-24 03:14:42.381676+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) VALUES ('00000000-0000-0000-0000-000000000000', '72154f9c-4faf-4dc1-8000-4933c35e427c', 'authenticated', 'authenticated', 'admin2@example.com', '$2a$10$J3kJ6/lssTx/rjIpLsGC5u9NTHW5WzmHWHgqYKQg3tUTd0dbghIxK', '2024-07-24 03:37:49.119789+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-07-24 03:39:18.73878+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-07-24 03:37:49.097275+00', '2024-07-24 03:39:18.747782+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: grade; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('97e55f3c-f11b-4464-9135-61f41ea23e9d', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'MATH', 100, NULL, '2024-07-24 01:53:47.40267+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('446be649-85c6-40f1-a95b-1ad75e9bf42b', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'BIOLOGY', 100, NULL, '2024-07-24 01:53:47.40267+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('5df5e908-65ad-45d2-a7e6-7bdfc72e8d0d', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'ENGLISH', 100, NULL, '2024-07-24 01:53:47.40267+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('8c8d8f49-bf6f-4e43-a0b7-0acec27b5cd5', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'PHYSICS', 100, NULL, '2024-07-24 01:53:47.40267+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('49f9d5f9-f33b-40c3-91b5-dbdfc136f7b6', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'CHEMISTRY', 100, NULL, '2024-07-24 01:53:47.40267+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('10495f39-5b07-43b0-bba7-999de6384fa2', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'HISTORY', 100, NULL, '2024-07-24 01:53:47.40267+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('47f53017-b006-41c7-a265-3d9284e222ba', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'ECONOMICS', 100, NULL, '2024-07-24 01:53:47.40267+00');

INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('60819c9b-ed3b-47f1-bfa9-1a010676693f', '72154f9c-4faf-4dc1-8000-4933c35e427c', 'MATH', 25, NULL, '2024-07-24 03:39:18.73878+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('e5a51df2-2bda-4657-8d3a-3690ceb8a7f9', '72154f9c-4faf-4dc1-8000-4933c35e427c', 'BIOLOGY', 50, NULL, '2024-07-24 03:39:18.73878+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('a4e0225c-85dc-45a3-bb9e-3d60b0a01ae6', '72154f9c-4faf-4dc1-8000-4933c35e427c', 'ENGLISH', 75, NULL, '2024-07-24 03:39:18.73878+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('005d830a-7fdf-49b6-acd0-496e20c6efb7', '72154f9c-4faf-4dc1-8000-4933c35e427c', 'PHYSICS', 100, NULL, '2024-07-24 03:39:18.73878+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('22dcd77d-9f11-44f7-9cc4-046a5ce45de0', '72154f9c-4faf-4dc1-8000-4933c35e427c', 'CHEMISTRY', 10, NULL, '2024-07-24 03:39:18.73878+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('319d35b1-e615-4679-92b5-89ecbf07edfe', '72154f9c-4faf-4dc1-8000-4933c35e427c', 'HISTORY', 20, NULL, '2024-07-24 03:39:18.73878+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('364c5efb-4f55-4063-87af-3f9eca7e0b97', '72154f9c-4faf-4dc1-8000-4933c35e427c', 'ECONOMICS', 30, NULL, '2024-07-24 03:39:18.73878+00');


--
-- Data for Name: user_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_data (id, school_id, name, role, extra, created_at) VALUES ('0bc340e6-f066-4b34-9e40-80f0f625b977', 1, 'A B', 'ADMIN', NULL, '2024-07-24 01:53:47.40267+00');
INSERT INTO public.user_data (id, school_id, name, role, extra, created_at) VALUES ('72154f9c-4faf-4dc1-8000-4933c35e427c', 2, 'C D', 'STUDENT', NULL, '2024-07-24 03:39:18.73878+00');


--
-- PostgreSQL database dump complete
--