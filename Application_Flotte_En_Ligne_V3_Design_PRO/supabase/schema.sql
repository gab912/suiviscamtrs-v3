-- TABLE SUPABASE POUR VERSION EN LIGNE PARTAGÉE
-- À exécuter dans Supabase > SQL Editor.

create table if not exists app_state (
  id text primary key,
  data jsonb not null,
  updated_at timestamptz default now()
);

alter table app_state enable row level security;

drop policy if exists "shared read app_state" on app_state;
drop policy if exists "shared insert app_state" on app_state;
drop policy if exists "shared update app_state" on app_state;
drop policy if exists "shared delete app_state" on app_state;

-- Version simple : accès avec la clé publique Supabase.
-- À utiliser seulement si l'adresse de l'application reste privée.
create policy "shared read app_state"
on app_state for select
to anon
using (true);

create policy "shared insert app_state"
on app_state for insert
to anon
with check (true);

create policy "shared update app_state"
on app_state for update
to anon
using (true)
with check (true);

create policy "shared delete app_state"
on app_state for delete
to anon
using (true);
