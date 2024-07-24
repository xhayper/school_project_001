create type user_data_role as ENUM ('STUDENT', 'TEACHER', 'ADMIN');

create table public.user_data (
    id uuid not null,
    constraint user_data_id_pkey primary key (id),
    constraint user_data_id_fkey foreign key (id) references auth.users (id) on delete cascade,

    school_id smallint not null,
    constraint user_data_school_id_unique unique (school_id),

    name text not null,
    constraint user_data_name_unique unique (name),

    role user_data_role not null,

    extra jsonb,

    created_at timestamp with time zone not null default now()
);

alter table public.user_data enable row level security;