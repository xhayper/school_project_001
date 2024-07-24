create type grade_subject as ENUM ('MATH', 'BIOLOGY', 'ENGLISH', 'PHYSICS', 'CHEMISTRY', 'HISTORY', 'ECONOMICS');

create table public.grade (
    id uuid not null default uuid_generate_v4(),
    constraint grade_id_pkey primary key (id),

    user_id uuid not null,
    constraint grade_user_id_fkey foreign key (user_id) references auth.users (id) on delete cascade,

    subject grade_subject not null,

    grade smallint not null,
    constraint grade_grade_amount check (grade >= 0 and grade <= 100),

    extra jsonb,

    created_at timestamp with time zone not null default now()
);

alter table public.grade enable row level security;