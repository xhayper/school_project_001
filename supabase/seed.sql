-- pg_dump --column-inserts --data-only --table=auth.users --table=public.user_data --table=public.grade 'postgresql://postgres:postgres@localhost:54322/postgres'

--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) VALUES ('00000000-0000-0000-0000-000000000000', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'authenticated', 'authenticated', 'admin@skr.ac.th', '$2a$10$8xRCbiamnWdxS.iFIqZXfuNREsAjnIe/xfA9HeeVPclDZ1gVHEm1q', '2024-07-24 01:53:47.40267+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-07-24 01:53:47.39531+00', '2024-07-24 03:14:42.381676+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) VALUES ('00000000-0000-0000-0000-000000000000', 'd19fd549-a3dc-4096-a4cb-981cc0e4c6b1', 'authenticated', 'authenticated', 'skr6@tkt.ac.th', '$2a$10$QH8IHvlx1gp8Wmh73fWIWOI5Bu4LslfR8SAd8RPtzPP75aV2WVTUm', '2024-08-02 11:11:50.061072+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-08-02 11:11:50.057595+00', '2024-08-02 11:11:50.061297+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) VALUES ('00000000-0000-0000-0000-000000000000', '1538fb17-63e6-44ac-ba3d-095a0e647db3', 'authenticated', 'authenticated', 'skr9@tkt.ac.th', '$2a$10$u5K5XJKT3OxvhyFAQqtyaeQp92tY6BQw4SdD/HFBv9Y7szViDuoZC', '2024-08-02 11:11:49.641267+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-08-02 11:11:49.637209+00', '2024-08-02 11:11:49.64147+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) VALUES ('00000000-0000-0000-0000-000000000000', '6c0297b4-a6c2-4c29-90c6-b1a2f808fe3a', 'authenticated', 'authenticated', 'skr7@tkt.ac.th', '$2a$10$Yvnt38.EFH6dv5Vn2.ziR.ymX2UhHtX9RZAGWxSXsf1/Wj9ZWRYDK', '2024-08-02 11:11:49.945566+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-08-02 11:11:49.94217+00', '2024-08-02 11:11:49.945773+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) VALUES ('00000000-0000-0000-0000-000000000000', 'ad4cff79-4f7a-40d3-b3dd-792c39d2a7b8', 'authenticated', 'authenticated', 'skr3@tkt.ac.th', '$2a$10$CiBRMtJU7cgOwYl3RwEJSOJJL6RVFfPorzOuj3W596QnD.d6.VLc2', '2024-08-02 11:11:49.974509+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-08-02 11:11:49.971832+00', '2024-08-02 11:11:49.974723+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) VALUES ('00000000-0000-0000-0000-000000000000', 'c90de060-a79e-4748-b666-3f8476cee5f0', 'authenticated', 'authenticated', 'skr4@tkt.ac.th', '$2a$10$5z5b8PU.M/YkKg0eIv2fCuCJOlUuuEVbkikXetGIdHjQEswSkk/iK', '2024-08-02 11:11:49.992955+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-08-02 11:11:49.989933+00', '2024-08-02 11:11:49.993188+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) VALUES ('00000000-0000-0000-0000-000000000000', 'e02ad86c-d5c1-403c-856b-b070016d4cb7', 'authenticated', 'authenticated', 'skr10@tkt.ac.th', '$2a$10$LNRaevfVK346bg8tvqx6ueg0O19wJsFy5UU/ojAZWRpZMirbEvp2m', '2024-08-02 11:11:50.018394+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-08-02 11:11:50.013569+00', '2024-08-02 11:11:50.018638+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) VALUES ('00000000-0000-0000-0000-000000000000', '77692f5c-deed-4401-b0bf-a3b2d339893c', 'authenticated', 'authenticated', 'skr2@tkt.ac.th', '$2a$10$mbxVmCAQufK1ycoffWwGPejWuyEX8yvrkGyVvuQxOLc/aM3MgaAda', '2024-08-02 11:11:50.025064+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-08-02 11:11:50.016501+00', '2024-08-02 11:11:50.025298+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) VALUES ('00000000-0000-0000-0000-000000000000', '4710d49f-b8a6-4b5e-a990-c7a25c762d59', 'authenticated', 'authenticated', 'skr8@tkt.ac.th', '$2a$10$T/Z3UYzcaqJ465ahwas10u4vf6ZGUnvzmRAUIGB7M7RGRl44TGmp2', '2024-08-02 11:11:50.035642+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-08-02 11:11:50.03054+00', '2024-08-02 11:11:50.036261+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);
INSERT INTO auth.users (instance_id, id, aud, role, email, encrypted_password, email_confirmed_at, invited_at, confirmation_token, confirmation_sent_at, recovery_token, recovery_sent_at, email_change_token_new, email_change, email_change_sent_at, last_sign_in_at, raw_app_meta_data, raw_user_meta_data, is_super_admin, created_at, updated_at, phone, phone_confirmed_at, phone_change, phone_change_token, phone_change_sent_at, email_change_token_current, email_change_confirm_status, banned_until, reauthentication_token, reauthentication_sent_at, is_sso_user, deleted_at, is_anonymous) VALUES ('00000000-0000-0000-0000-000000000000', '01ec0f6a-0bef-4cba-9829-513d1fb7bb23', 'authenticated', 'authenticated', 'skr5@tkt.ac.th', '$2a$10$EdUxyxBHdqlJxfGxVMk18OImG1ApUS2nPHZitXNDkjjuj58afoF0q', '2024-08-02 11:11:50.043646+00', NULL, '', NULL, '', NULL, '', '', NULL, NULL, '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-08-02 11:11:50.032403+00', '2024-08-02 11:11:50.0439+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: grade; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('fb244f98-5776-486d-a88c-59de892c07c9', 'd19fd549-a3dc-4096-a4cb-981cc0e4c6b1', 'MATH', 55, NULL, '2024-08-02 11:11:50.77178+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('1312b398-adc0-4b0a-8608-26110f4409f6', 'ad4cff79-4f7a-40d3-b3dd-792c39d2a7b8', 'MATH', 0, NULL, '2024-08-02 11:11:50.901595+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('df98ff32-b67f-4c0e-9423-abbfb0dca25c', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'MATH', 82, NULL, '2024-08-02 11:11:50.215178+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('e9a27147-9932-4960-9ebb-6c2962c69702', '1538fb17-63e6-44ac-ba3d-095a0e647db3', 'MATH', 6, NULL, '2024-08-02 11:11:50.254329+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('564017dd-1ce8-49f6-b7f7-f2d6f6fd1a13', '6c0297b4-a6c2-4c29-90c6-b1a2f808fe3a', 'MATH', 52, NULL, '2024-08-02 11:11:50.778133+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('487ae7e7-40ac-4541-8375-42331f18ae3f', '4710d49f-b8a6-4b5e-a990-c7a25c762d59', 'MATH', 46, NULL, '2024-08-02 11:11:50.892605+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('30df170d-7c36-4aff-b5a1-52ead69a9a83', 'e02ad86c-d5c1-403c-856b-b070016d4cb7', 'MATH', 59, NULL, '2024-08-02 11:11:50.898732+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('ece01db1-0f4f-41a9-96bd-6342c35a1e82', '01ec0f6a-0bef-4cba-9829-513d1fb7bb23', 'MATH', 13, NULL, '2024-08-02 11:11:50.915179+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('bc601ab1-1568-454c-b4c3-33a0f49047be', 'c90de060-a79e-4748-b666-3f8476cee5f0', 'MATH', 56, NULL, '2024-08-02 11:11:50.909174+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('a157c529-5f46-4900-8f7d-b1fee44dbcc9', '1538fb17-63e6-44ac-ba3d-095a0e647db3', 'BIOLOGY', 98, NULL, '2024-08-02 11:13:56.326274+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('1fb4531b-155f-419b-af42-9ef5e8488467', '01ec0f6a-0bef-4cba-9829-513d1fb7bb23', 'BIOLOGY', 26, NULL, '2024-08-02 11:13:56.273115+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('0ca6388c-68ad-42c7-b95b-c1eddcd42173', 'ad4cff79-4f7a-40d3-b3dd-792c39d2a7b8', 'BIOLOGY', 100, NULL, '2024-08-02 11:13:56.365768+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('d356b33d-dbf7-4c5b-8058-2e4393f6a44c', 'd19fd549-a3dc-4096-a4cb-981cc0e4c6b1', 'BIOLOGY', 3, NULL, '2024-08-02 11:13:56.321672+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('db1c9409-6be4-48c2-a403-80548216c930', 'c90de060-a79e-4748-b666-3f8476cee5f0', 'BIOLOGY', 9, NULL, '2024-08-02 11:13:56.285088+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('69ec0647-bf89-4f9b-9076-a95a7e2bad08', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'BIOLOGY', 82, NULL, '2024-08-02 11:13:56.318594+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('dc066a2d-da58-4ef8-b106-a7874be1618a', '4710d49f-b8a6-4b5e-a990-c7a25c762d59', 'BIOLOGY', 89, NULL, '2024-08-02 11:13:56.43114+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('36e8e4ca-019b-4322-bdc3-4dd59d1215a6', 'e02ad86c-d5c1-403c-856b-b070016d4cb7', 'BIOLOGY', 69, NULL, '2024-08-02 11:13:56.421538+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('18e9ccdd-0aee-4574-b258-3612877896c6', '6c0297b4-a6c2-4c29-90c6-b1a2f808fe3a', 'BIOLOGY', 71, NULL, '2024-08-02 11:13:56.385362+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('e1d3eb93-edb6-4eec-b733-3fb7d8c337fa', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'ENGLISH', 65, NULL, '2024-08-02 11:14:17.815686+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('0430c9ed-073e-4276-9250-c843dd9a0887', 'e02ad86c-d5c1-403c-856b-b070016d4cb7', 'ENGLISH', 18, NULL, '2024-08-02 11:14:17.821793+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('ff264eef-c9d3-4591-9c4c-52435ca0cb32', 'ad4cff79-4f7a-40d3-b3dd-792c39d2a7b8', 'ENGLISH', 69, NULL, '2024-08-02 11:14:17.974138+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('fcf4892b-034c-4ded-9b1a-0da0f34e2bb5', '1538fb17-63e6-44ac-ba3d-095a0e647db3', 'ENGLISH', 93, NULL, '2024-08-02 11:14:17.9907+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('c882bad8-4b0d-42c2-8347-dafc204f8a78', '4710d49f-b8a6-4b5e-a990-c7a25c762d59', 'ENGLISH', 55, NULL, '2024-08-02 11:14:18.061103+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('b28e1c2b-4afc-44ff-abf9-73c41f875896', '01ec0f6a-0bef-4cba-9829-513d1fb7bb23', 'ENGLISH', 21, NULL, '2024-08-02 11:14:18.068359+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('1f899f67-6145-4cc8-8d5d-0b667e5d3e6d', 'd19fd549-a3dc-4096-a4cb-981cc0e4c6b1', 'ENGLISH', 57, NULL, '2024-08-02 11:14:18.226289+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('65be918f-1ab7-4809-8c88-facd36ed2fe5', 'c90de060-a79e-4748-b666-3f8476cee5f0', 'ENGLISH', 0, NULL, '2024-08-02 11:14:18.233662+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('0d131efe-4112-49d2-8b2d-89d67e413371', '6c0297b4-a6c2-4c29-90c6-b1a2f808fe3a', 'ENGLISH', 17, NULL, '2024-08-02 11:14:18.234075+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('8f0b4cb3-a766-4976-bd91-def95f295974', '01ec0f6a-0bef-4cba-9829-513d1fb7bb23', 'PHYSICS', 95, NULL, '2024-08-02 11:14:27.819333+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('59efcf56-5cdf-49e6-a882-50a155768151', '6c0297b4-a6c2-4c29-90c6-b1a2f808fe3a', 'PHYSICS', 68, NULL, '2024-08-02 11:14:27.827551+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('6919ef9d-63d2-4171-8633-83010727bc16', 'c90de060-a79e-4748-b666-3f8476cee5f0', 'PHYSICS', 38, NULL, '2024-08-02 11:14:27.836498+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('e684307c-8a35-484f-9116-8e83ebf7510c', '1538fb17-63e6-44ac-ba3d-095a0e647db3', 'PHYSICS', 21, NULL, '2024-08-02 11:14:27.838662+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('f0364fae-3c1a-4e2e-b498-0a79fdd6b0fc', 'd19fd549-a3dc-4096-a4cb-981cc0e4c6b1', 'PHYSICS', 85, NULL, '2024-08-02 11:14:27.840118+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('10505a80-6d5c-43f1-82b4-49c9c16559ba', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'PHYSICS', 49, NULL, '2024-08-02 11:14:27.848327+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('05d0cd9b-6757-4030-adaa-a20cf70f869a', '4710d49f-b8a6-4b5e-a990-c7a25c762d59', 'PHYSICS', 34, NULL, '2024-08-02 11:14:27.987595+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('39198a79-533d-4727-ac30-29c9a6f5dc6d', 'e02ad86c-d5c1-403c-856b-b070016d4cb7', 'PHYSICS', 75, NULL, '2024-08-02 11:14:28.025255+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('805c9f66-8052-4b89-8842-c5cc708d0262', 'ad4cff79-4f7a-40d3-b3dd-792c39d2a7b8', 'PHYSICS', 37, NULL, '2024-08-02 11:14:28.031379+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('3270f5df-834d-498f-b85d-2340c9f30c8b', 'c90de060-a79e-4748-b666-3f8476cee5f0', 'ECONOMICS', 40, NULL, '2024-08-02 11:15:16.636055+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('8b7015b3-934b-44e7-9d39-07877f03310b', '6c0297b4-a6c2-4c29-90c6-b1a2f808fe3a', 'ECONOMICS', 42, NULL, '2024-08-02 11:15:16.738002+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('14b068cf-6f79-4506-af24-513b5713975d', 'd19fd549-a3dc-4096-a4cb-981cc0e4c6b1', 'ECONOMICS', 73, NULL, '2024-08-02 11:15:16.40623+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('5f2d3ec6-2e4e-4aaf-b10e-2a333c4d417f', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'ECONOMICS', 71, NULL, '2024-08-02 11:15:16.22881+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('acbbad08-1d3d-4ed9-909b-e6490fd7d706', '1538fb17-63e6-44ac-ba3d-095a0e647db3', 'ECONOMICS', 44, NULL, '2024-08-02 11:15:16.370376+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('44cc281d-2a24-4291-992e-8c6a5eb9173e', 'e02ad86c-d5c1-403c-856b-b070016d4cb7', 'ECONOMICS', 56, NULL, '2024-08-02 11:15:16.229094+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('0806fb8c-5168-4e50-b2cf-c576f5fa84b0', '4710d49f-b8a6-4b5e-a990-c7a25c762d59', 'ECONOMICS', 95, NULL, '2024-08-02 11:15:16.725614+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('f9a4b573-b4e5-4f5f-8805-acef13cf0ee4', '77692f5c-deed-4401-b0bf-a3b2d339893c', 'BIOLOGY', 100, NULL, '2024-08-02 11:13:56.284736+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('ee6de593-c09c-455c-a2d7-893ff9b2ba77', '77692f5c-deed-4401-b0bf-a3b2d339893c', 'MATH', 100, NULL, '2024-08-02 11:11:50.770099+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('71ee7cbf-580c-4ecf-be24-a1981b8cb0b1', 'ad4cff79-4f7a-40d3-b3dd-792c39d2a7b8', 'CHEMISTRY', 34, NULL, '2024-08-02 11:14:34.734579+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('9a5f32da-dbd9-4980-a771-ea03dc95a613', '6c0297b4-a6c2-4c29-90c6-b1a2f808fe3a', 'CHEMISTRY', 30, NULL, '2024-08-02 11:14:34.735608+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('096b0992-bbe8-4656-814c-bfc89be1bc31', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'CHEMISTRY', 25, NULL, '2024-08-02 11:14:34.748903+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('babd001f-373f-498c-a32b-1bb3e03302ac', 'c90de060-a79e-4748-b666-3f8476cee5f0', 'CHEMISTRY', 55, NULL, '2024-08-02 11:14:34.81953+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('a5c15b0d-064c-4b73-a8cc-5b741dd8acde', '4710d49f-b8a6-4b5e-a990-c7a25c762d59', 'CHEMISTRY', 78, NULL, '2024-08-02 11:14:34.835871+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('13550a2f-1d2b-49ce-9267-c284fc6a0310', 'e02ad86c-d5c1-403c-856b-b070016d4cb7', 'CHEMISTRY', 76, NULL, '2024-08-02 11:14:34.841192+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('12859843-19b2-4fd7-a418-0dd0e9ec52f4', 'd19fd549-a3dc-4096-a4cb-981cc0e4c6b1', 'CHEMISTRY', 93, NULL, '2024-08-02 11:14:34.854105+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('2f48919f-0675-4356-aa7b-1a36168c3767', '01ec0f6a-0bef-4cba-9829-513d1fb7bb23', 'CHEMISTRY', 79, NULL, '2024-08-02 11:14:34.861508+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('e6dc7471-754f-411e-8bac-26dcf8b5d95c', '1538fb17-63e6-44ac-ba3d-095a0e647db3', 'CHEMISTRY', 4, NULL, '2024-08-02 11:14:34.885065+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('ddc2864b-b21a-4d9a-b344-9e0e12df619b', 'd19fd549-a3dc-4096-a4cb-981cc0e4c6b1', 'HISTORY', 77, NULL, '2024-08-02 11:14:42.196654+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('3c3d5c3a-406e-48ec-b580-e73efa7637e0', 'c90de060-a79e-4748-b666-3f8476cee5f0', 'HISTORY', 49, NULL, '2024-08-02 11:14:42.20091+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('1c067c96-fd50-478f-9f51-3b53ad4c1066', '01ec0f6a-0bef-4cba-9829-513d1fb7bb23', 'HISTORY', 56, NULL, '2024-08-02 11:14:42.241218+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('1d973228-092c-4826-8f45-6a396f04ac54', 'ad4cff79-4f7a-40d3-b3dd-792c39d2a7b8', 'HISTORY', 2, NULL, '2024-08-02 11:14:42.256522+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('f4e7732a-096e-4bea-a49c-5bfc00e769c1', '4710d49f-b8a6-4b5e-a990-c7a25c762d59', 'HISTORY', 84, NULL, '2024-08-02 11:14:42.434495+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('11db02df-12fd-4314-909a-8ae6991ce28d', '6c0297b4-a6c2-4c29-90c6-b1a2f808fe3a', 'HISTORY', 20, NULL, '2024-08-02 11:14:42.434768+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('6f699948-de92-416f-aba4-6a8c966682d8', 'e02ad86c-d5c1-403c-856b-b070016d4cb7', 'HISTORY', 76, NULL, '2024-08-02 11:14:42.434347+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('285171e7-e09b-4fc6-93ab-6ad593ca312c', '1538fb17-63e6-44ac-ba3d-095a0e647db3', 'HISTORY', 11, NULL, '2024-08-02 11:14:42.451504+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('d886c841-4eb4-4036-a92a-8c4c165c89a2', '0bc340e6-f066-4b34-9e40-80f0f625b977', 'HISTORY', 24, NULL, '2024-08-02 11:14:42.567101+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('3cbdad64-41fb-421f-9d4c-2c0f6fb8fa25', '77692f5c-deed-4401-b0bf-a3b2d339893c', 'PHYSICS', 100, NULL, '2024-08-02 11:14:28.020153+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('61d67369-01f1-41c7-a379-3e431132cf65', '77692f5c-deed-4401-b0bf-a3b2d339893c', 'ENGLISH', 100, NULL, '2024-08-02 11:14:17.981903+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('a0a98a7f-5331-453e-9138-2b64ca6cc30e', '77692f5c-deed-4401-b0bf-a3b2d339893c', 'HISTORY', 100, NULL, '2024-08-02 11:14:42.258624+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('10c16dff-cd60-4b35-baac-b741935db322', '77692f5c-deed-4401-b0bf-a3b2d339893c', 'CHEMISTRY', 100, NULL, '2024-08-02 11:14:34.876957+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('2300d68e-c153-4cde-ab89-5b21c6d2330c', '77692f5c-deed-4401-b0bf-a3b2d339893c', 'ECONOMICS', 100, NULL, '2024-08-02 11:15:16.623622+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('e76e9ee0-ef35-4e0c-b4af-8e70aa181621', 'ad4cff79-4f7a-40d3-b3dd-792c39d2a7b8', 'ECONOMICS', 95, NULL, '2024-08-02 11:15:16.628885+00');
INSERT INTO public.grade (id, user_id, subject, grade, extra, created_at) VALUES ('90f568ce-b98f-4fa7-8a6f-908b230dcf02', '01ec0f6a-0bef-4cba-9829-513d1fb7bb23', 'ECONOMICS', 79, NULL, '2024-08-02 11:15:16.398897+00');


--
-- Data for Name: user_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_data (id, school_id, name, role, extra, created_at) VALUES ('0bc340e6-f066-4b34-9e40-80f0f625b977', 1, 'John Doe', 'ADMIN', NULL, '2024-07-24 01:53:47.40267+00');
INSERT INTO public.user_data (id, school_id, name, role, extra, created_at) VALUES ('1538fb17-63e6-44ac-ba3d-095a0e647db3', 9, 'SKR 9', 'STUDENT', NULL, '2024-08-02 11:11:49.806568+00');
INSERT INTO public.user_data (id, school_id, name, role, extra, created_at) VALUES ('ad4cff79-4f7a-40d3-b3dd-792c39d2a7b8', 3, 'SKR 3', 'STUDENT', NULL, '2024-08-02 11:11:50.194372+00');
INSERT INTO public.user_data (id, school_id, name, role, extra, created_at) VALUES ('d19fd549-a3dc-4096-a4cb-981cc0e4c6b1', 6, 'SKR 6', 'STUDENT', NULL, '2024-08-02 11:11:50.197027+00');
INSERT INTO public.user_data (id, school_id, name, role, extra, created_at) VALUES ('01ec0f6a-0bef-4cba-9829-513d1fb7bb23', 5, 'SKR 5', 'STUDENT', NULL, '2024-08-02 11:11:50.19914+00');
INSERT INTO public.user_data (id, school_id, name, role, extra, created_at) VALUES ('c90de060-a79e-4748-b666-3f8476cee5f0', 4, 'SKR 4', 'STUDENT', NULL, '2024-08-02 11:11:50.199933+00');
INSERT INTO public.user_data (id, school_id, name, role, extra, created_at) VALUES ('77692f5c-deed-4401-b0bf-a3b2d339893c', 2, 'SKR 2', 'STUDENT', NULL, '2024-08-02 11:11:50.202707+00');
INSERT INTO public.user_data (id, school_id, name, role, extra, created_at) VALUES ('6c0297b4-a6c2-4c29-90c6-b1a2f808fe3a', 7, 'SKR 7', 'STUDENT', NULL, '2024-08-02 11:11:50.206753+00');
INSERT INTO public.user_data (id, school_id, name, role, extra, created_at) VALUES ('4710d49f-b8a6-4b5e-a990-c7a25c762d59', 8, 'SKR 8', 'STUDENT', NULL, '2024-08-02 11:11:50.222021+00');
INSERT INTO public.user_data (id, school_id, name, role, extra, created_at) VALUES ('e02ad86c-d5c1-403c-856b-b070016d4cb7', 10, 'SKR 10', 'STUDENT', NULL, '2024-08-02 11:11:50.235195+00');


--
-- PostgreSQL database dump complete
--