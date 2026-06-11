# 🌿 Gestion d'une Jardinerie - Base de données MySQL

##  Présentation du projet

Ce projet a pour objectif la conception et la mise en œuvre d'une base de données relationnelle permettant de gérer l'activité d'une jardinerie.

La base de données permet de gérer :

- Les produits et leurs catégories
- Les espèces végétales
- Les stocks et emplacements
- Les fournisseurs et les achats
- Les clients et les commandes
- Les employés
- Les lots de produits

Le projet a été réalisé en suivant les différentes étapes de conception d'une base de données relationnelle.

---

# Étapes de conception

## 1. Analyse des besoins

L'objectif est de modéliser le fonctionnement d'une jardinerie afin de :

- Suivre les produits disponibles
- Gérer les fournisseurs et les achats
- Gérer les clients et leurs commandes
- Organiser le stockage des produits
- Assurer la traçabilité des lots

---

## 2. MCD (Modèle Conceptuel de Données)

Le MCD a été réalisé afin d'identifier :

### Entités principales

- Produit
- Catégorie
- Espèce
- Stock
- Emplacement
- Fournisseur
- Achat
- Client
- Commande
- Employé
- Lot Produit

### Associations

- Achat ↔ Produit
- Client ↔ Produit
- Commande ↔ Client
- Employé ↔ Emplacement

Le MCD permet de représenter les règles de gestion indépendamment du système de gestion de base de données.

---

## 3. MLD (Modèle Logique de Données)

Transformation du MCD en schéma relationnel.

### Exemple

```text
PRODUIT(
    id_produit,
    nom_produit,
    reference,
    prix,
    description,
    date_fabrication,
    date_peremption,
    id_categorie,
    id_espece,
    id_stock
)

CATEGORIE(
    id_categorie,
    nom_categorie
)

ESPECE(
    id_espece,
    nom_espece,
    nom_scientifique
)
```

Les associations plusieurs-à-plusieurs ont été transformées en tables de liaison :

- achat_prod
- client_prod
- employe_emplacement

---

## 4. MPD (Modèle Physique de Données)

Le MLD a été adapté au SGBD MySQL :

- Définition des types de données
- Création des clés primaires
- Création des clés étrangères
- Contraintes d'intégrité référentielle

Exemple :

```sql
CREATE TABLE categorie (
    id_categorie INT PRIMARY KEY,
    nom_categorie VARCHAR(50)
);
```

---

## 5. Implémentation

La base a été implémentée sous MySQL à l'aide d'un script SQL contenant :

- Création des tables
- Définition des relations
- Insertion des données de test

Chaque table contient au minimum 15 enregistrements afin de permettre la réalisation de requêtes et de tests.

---

# 🗄️ Structure de la base

## Tables principales

| Table | Description |
|---------|-------------|
| categorie | Catégories de produits |
| espece | Espèces végétales |
| produit | Produits vendus |
| stock | Quantités en stock |
| emplacement | Localisation du stock |
| fournisseur | Fournisseurs |
| achat | Achats effectués |
| client | Clients |
| commande_client | Commandes clients |
| employe | Employés |
| lot_produit | Gestion des lots |

## Tables de liaison

| Table | Description |
|---------|-------------|
| achat_prod | Relation achat/produit |
| client_prod | Relation client/produit |
| com_prod | Relation commande/client |
| employe_emplacement | Relation employé/emplacement |

---

#  Technologies utilisées

- MySQL
- SQL
- MySQL Workbench / phpMyAdmin
- GitHub

---

## Importer la base

```sql
SOURCE script.sql;
```

ou via phpMyAdmin :

1. Créer une base de données.
2. Importer le fichier SQL.
3. Exécuter le script.

---

#  Exemples de requêtes

### Afficher tous les produits

```sql
SELECT * FROM produit;
```

### Afficher les produits avec leur catégorie

```sql
SELECT p.nom_produit, c.nom_categorie
FROM produit p
JOIN categorie c
ON p.id_categorie = c.id_categorie;
```

### Afficher les achats effectués par fournisseur

```sql
SELECT a.id_achat, f.nom_fournisseur
FROM achat a
JOIN fournisseur f
ON a.id_fournisseur = f.id_fournisseur;
```
---

#  Auteur

Bah Mohamed Lamine.

---

# Licence

Projet pédagogique destiné à l'apprentissage de la modélisation de données et du langage SQL.
