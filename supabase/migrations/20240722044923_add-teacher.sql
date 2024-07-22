CREATE TABLE IF NOT EXISTS "public"."teacher" (
    "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
    "account_id" uuid NOT NULL,
    "teacher_id" smallint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);

ALTER TABLE "public"."teacher" OWNER TO "postgres";

ALTER TABLE ONLY "public"."teacher"
    ADD CONSTRAINT "teacher_teacher_id_key" UNIQUE ("teacher_id");

ALTER TABLE ONLY "public"."teacher"
    ADD CONSTRAINT "teacher_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."teacher"
    ADD CONSTRAINT "account_id_fkey" FOREIGN KEY ("account_id") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "public"."teacher" ENABLE ROW LEVEL SECURITY;

GRANT ALL ON TABLE "public"."teacher" TO "anon";
GRANT ALL ON TABLE "public"."teacher" TO "authenticated";
GRANT ALL ON TABLE "public"."teacher" TO "service_role";