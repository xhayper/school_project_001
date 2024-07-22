DROP TYPE IF EXISTS "public"."subject";
CREATE TYPE "public"."subject" AS ENUM (
    'MATH',
    'ENGLISH',
    'BIOLOGY',
    'CHEMISTRY',
    'PHYSICS',
    'HISTORY',
    'ECONOMIC'
);

ALTER TYPE "public"."subject" OWNER TO "postgres";

CREATE TABLE IF NOT EXISTS "public"."grade" (
    "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
    "student_id" smallint NOT NULL,
    "created_at" timestamp with time zone DEFAULT "now"() NOT NULL,
    "subject" "public"."subject" NOT NULL,
    "amount" integer DEFAULT 0 NOT NULL
);

ALTER TABLE "public"."grade" OWNER TO "postgres";

ALTER TABLE ONLY "public"."grade"
    ADD CONSTRAINT "grade_pkey" PRIMARY KEY ("id");

ALTER TABLE ONLY "public"."grade"
    ADD CONSTRAINT "grade_student_id_fkey" FOREIGN KEY ("student_id") REFERENCES "public"."student"("student_id") ON UPDATE CASCADE ON DELETE CASCADE;

ALTER TABLE "public"."grade" ENABLE ROW LEVEL SECURITY;

GRANT ALL ON TABLE "public"."grade" TO "anon";
GRANT ALL ON TABLE "public"."grade" TO "authenticated";
GRANT ALL ON TABLE "public"."grade" TO "service_role";