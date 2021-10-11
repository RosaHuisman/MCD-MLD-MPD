BEGIN;

DROP TABLE IF EXISTS "user", "galerie",
"photos";


CREATE TABLE "user" (
  "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "email" TEXT NOT NULL,
  "password" TEXT NOT NULL,
  "firstname" TEXT NOT NULL,
  "lastname" TEXT NOT NULL,
  "role" TEXT DEFAULT 'user',
  "createdAt" TIMESTAMP NOT NULL DEFAULT NOW(),
  "updatedAt" TIMESTAMP,
  "status" INTEGER DEFAULT 0
);

CREATE TABLE "gallery" (
  "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" TEXT NOT NULL,
  "user_id" INTEGER NOT NULL REFERENCES "user"("id"),
  "createdAt" TIMESTAMP NOT NULL DEFAULT NOW(),
  "updatedAt" TIMESTAMP
);

CREATE TABLE "photo" (
  "id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  "name" TEXT NOT NULL,
  "galerie_id" integer NOT NULL REFERENCES "gallery"("id"),
  "createdAt" TIMESTAMP NOT NULL DEFAULT NOW(),
  "updatedAt" TIMESTAMP
);


COMMIT;

BEGIN;

--
-- PostGres avec le type serial n'incrémente pas automatiquement de façon implicite la séquence rattaché à la colonne !
-- Il faut donc mettre à jour la valeur courante de chacune des séquences en séléctionnant l'id maximum de chaque table
--
SELECT setval('user_id_seq', (SELECT MAX(id) from "user"));
SELECT setval('gallery_id_seq', (SELECT MAX(id) from "gallery"));
SELECT setval('photos_id_seq', (SELECT MAX(id) from "photos"));


COMMIT;
