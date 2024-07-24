-- pg_dump --column-inserts --data-only --table=auth.users --table=public.user_data --table=public.grade 'postgresql://postgres:postgres@localhost:54322/postgres'

--
-- PostgreSQL database dump
--

--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

-- admin@example.com - password

INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) VALUES ('00000000-0000-0000-0000-000000000000', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'authenticated', 'authenticated', 'admin@example.com', '$2a$10$yXC9wARSFzcUzcA3JScA3eLD4RUEcNjfXz.W1Epoa8LGbY7lC/fNO', '2024-07-24 01:53:47.40267+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-07-24 01:53:47.39531+00', '2024-07-24 01:53:47.402771+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);

--
-- Data for Name: grade; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('97e55f3c-f11b-4464-9135-61f41ea23e9d', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'ENGLISH', 100, NULL, '2024-07-24 02:11:05.245755+00');

--
-- Data for Name: user_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_data (id, school_id, name, role, extra, created_at) VALUES ('0bc340e6-f066-4b34-9e40-80f0f625b977', 1, 'A B', 'ADMIN', NULL, '2024-07-24 02:00:21.854454+00');


--
-- PostgreSQL database dump complete
--