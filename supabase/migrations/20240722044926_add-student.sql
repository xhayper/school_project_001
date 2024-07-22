CREATE TABLE IF NOT EXISTS "public"."student" (
    "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
    "account_id" uuid NOT NULL,
    "student_id" smallint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL
);

ALTER TABLE "public"."student" OWNER TO "postgres";

ALTER TABLE ONLY "public"."student"
    ADD CONSTRAINT "student_account_id_key" UNIQUE ("account_id");

ALTER TABLE ONLY "public"."student"
    ADD CONSTRAINT "student_student_id_key" UNIQUE ("student_id");

ALTER TABLE ONLY "public"."student"
    ADD CONSTRAINT "student_id_key" UNIQUE ("id");

ALTER TABLE ONLY "public"."student"
    ADD CONSTRAINT "student_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."student"
    ADD CONSTRAINT "account_id_fkey" FOREIGN KEY ("account_id") REFERENCES "auth"."users"("id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "public"."student" ENABLE ROW LEVEL SECURITY;

GRANT ALL ON TABLE "public"."student" TO "anon";
GRANT ALL ON TABLE "public"."student" TO "authenticated";
GRANT ALL ON TABLE "public"."student" TO "service_role";