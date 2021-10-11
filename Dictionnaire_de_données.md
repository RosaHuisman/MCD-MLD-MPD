## Table utilisateur

Champ | Type | Spécificités | Description
-- | -- | -- | --
id | INT | GENERATED ALWAYS AS IDENTITY PRIMARY KEY  | id de l'utilisateur 
email | TEXT | NOT NULL  | email de l'utilisateur 
mot de passe | TEXT | NOT NULL  | mot de passe de l'utilisateur 
prenom | TEXT | NOT NULL  | prénom de l'utilisateur 
nom | TEXT | NOT NULL  | prénom de l'utilisateur 
role | TEXT | DEFAULT 'user' | rôle de l'utilisateur
cree_le | TIMESTAMP | NOT NULL, DEFAULT CURRENT_TIMESTAMP | la date de création de l'utilisateur 
mis_a_jour_le | TIMESTAMP | NOT NULL, DEFAULT CURRENT_TIMESTAMP | la date de modification de l'utilisateur
statut | INT | DEFAULT 0  | statut de l'utilisateur

<br>
<br>

## Table galerie

Champ | Type | Spécificités | Description
-- | -- | -- | --
id | INT | GENERATED ALWAYS AS IDENTITY PRIMARY KEY  | id de la galerie 
nom | TEXT | NOT NULL  | nom de la galerie 
cree_le | TIMESTAMP | NOT NULL, DEFAULT CURRENT_TIMESTAMP | la date de création de la galerie 
mis_a_jour_le | TIMESTAMP | NOT NULL, DEFAULT CURRENT_TIMESTAMP | la date de modification de la galerie

<br>
<br>

## Table photo

Champ | Type | Spécificités | Description
-- | -- | -- | --
id | INT | GENERATED ALWAYS AS IDENTITY PRIMARY KEY  | id de la photo 
nom | TEXT | NOT NULL  | nom de la photo 
cree_le | TIMESTAMP | NOT NULL, DEFAULT CURRENT_TIMESTAMP | la date de création de la photo 
mis_a_jour_le | TIMESTAMP | NOT NULL, DEFAULT CURRENT_TIMESTAMP | la date de modification de la photo

