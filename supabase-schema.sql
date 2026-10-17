-- SCHEMA DE DÉPART — à relire avant activation.
-- Crée un bucket nommé "public-files" dans Supabase Storage uniquement
-- si les fichiers doivent réellement être publics.
-- Les fichiers privés exigent un bucket privé et des politiques différentes.

create table if not exists public.public_files (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  description text not null default '',
  category text not null,
  storage_path text not null,
  mime_type text,
  size_bytes bigint,
  is_published boolean not null default false,
  created_at timestamptz not null default now()
);

alter table public.public_files enable row level security;

-- Politique de lecture publique limitée aux métadonnées publiées.
create policy "Anyone can read published file metadata"
on public.public_files for select
to anon, authenticated
using (is_published = true);

-- IMPORTANT : aucune politique INSERT/UPDATE/DELETE n'est ajoutée ici.
-- Avant l'administration, configure une authentification réelle et des
-- politiques réservées à l'identité administrateur. Ne protège pas cela
-- avec un simple PIN JavaScript côté navigateur.
