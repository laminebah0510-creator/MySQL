# Projet Base de Données - Végétaux

## Présentation

Ce projet consiste en la conception et l’implémentation d’une base de données relationnelle nommée `vegetaux`, destinée à gérer les activités liées aux végétaux, aux clients, aux fournisseurs, aux commandes, aux achats et au stock.

Le projet a été réalisé selon une démarche de modélisation de données en plusieurs étapes, allant du besoin métier jusqu’à l’implémentation SQL finale [web:20][web:22][web:23].

## Objectifs du projet

L’objectif principal est de structurer les données de manière cohérente afin de :

- gérer les clients, les employés et les fournisseurs ;
- suivre les produits, les catégories et les espèces ;
- organiser les commandes clients et les achats ;
- administrer le stock, les emplacements et les lots produits ;
- garantir l’intégrité des données grâce aux clés primaires et étrangères.

## Étapes de conception

### 1. MCD — Modèle Conceptuel de Données
Le MCD permet de représenter les données du système d’information indépendamment de toute contrainte technique. Il met en évidence les entités, les associations, les attributs et les cardinalités [web:20][web:22][web:24].

### 2. MLD — Modèle Logique de Données
Le MLD est la traduction du MCD dans un modèle relationnel. Il précise la structure logique des tables, les relations entre elles et le passage des identifiants vers les clés primaires et étrangères [web:20][web:22][web:25].

### 3. MPD — Modèle Physique de Données
Le MPD correspond à l’implémentation concrète dans le SGBDR. Il définit les tables, les champs, les types de données, les clés primaires, les clés étrangères et les contraintes SQL utilisées dans le script [web:20][web:23][web:25].

## Modèle de données

La base de données contient notamment les tables suivantes :

- `achat`
- `achat_prod`
- `categorie`
- `client`
- `client_prod`
- `commande_client`
- `com_prod`
- `emplacement`
- `employe`
- `employe_emplacement`
- `espece`
- `fournisseur`
- `lot_produit`
- `produit`
- `stock`

Ces tables permettent de couvrir les principaux besoins fonctionnels du projet, notamment la gestion des produits, des commandes, des relations avec les clients et le suivi du stock.

## Contraintes et intégrité

Le schéma repose sur plusieurs contraintes d’intégrité :

- clés primaires pour identifier chaque enregistrement ;
- clés étrangères pour garantir la cohérence entre les tables ;
- contraintes `ON DELETE RESTRICT` et `ON UPDATE RESTRICT` afin d’éviter la suppression ou la modification de données référencées.

Ces règles assurent la fiabilité et la cohérence des données dans la base.

## Cas de test

Pour valider le bon fonctionnement de la base, plusieurs cas de test peuvent être réalisés :

- insertion d’un fournisseur ;
- insertion d’un client ;
- insertion d’un produit valide ;
- mise à jour d’un produit ;
- mise à jour d’un stock ;
- création d’une commande client ;
- ajout de produits à une commande ;
- suppression d’un enregistrement non référencé ;
- tentative de suppression d’un enregistrement référencé ;
- tentative d’insertion avec une clé étrangère invalide.

## Prérequis

- MySQL ou MariaDB ;
- phpMyAdmin ou un autre outil de gestion SQL ;
- un serveur local de type XAMPP, WAMP ou MAMP.

## Installation

1. Importer le fichier `script.sql` dans votre SGBD.
2. Vérifier la création de la base `vegetaux`.
3. Exécuter les requêtes de test pour valider le schéma.
4. Ajouter ensuite les données de démonstration si nécessaire.

## Structure du projet

```bash
.
├── script.sql
└── README.md
```

## Remarques

Certaines tables d’association et certaines contraintes doivent être vérifiées avant une utilisation en production, notamment pour s’assurer que toutes les clés étrangères pointent vers les bonnes tables.

## Auteur

Bah Mohamed Lamine
