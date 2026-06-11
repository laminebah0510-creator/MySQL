-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : jeu. 11 juin 2026 à 20:15
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `vegetaux`
--

-- --------------------------------------------------------

--
-- Structure de la table `achat`
--

DROP TABLE IF EXISTS `achat`;
CREATE TABLE IF NOT EXISTS `achat` (
  `id_achat` varchar(50) NOT NULL,
  `date_achat` date DEFAULT NULL,
  `quantite_achat` int DEFAULT NULL,
  `prix_unitaire_achat` decimal(15,2) DEFAULT NULL,
  `statut` varchar(50) DEFAULT NULL,
  `id_fournisseur` int NOT NULL,
  PRIMARY KEY (`id_achat`),
  KEY `fk_achat_fournisseur` (`id_fournisseur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `achat`
--

INSERT INTO `achat` (`id_achat`, `date_achat`, `quantite_achat`, `prix_unitaire_achat`, `statut`, `id_fournisseur`) VALUES
('1', '2026-03-01', 10, 5.50, 'livré', 1),
('10', '2026-03-10', 13, 5.20, 'en cours', 10),
('11', '2026-03-11', 16, 3.80, 'livré', 11),
('12', '2026-03-12', 18, 4.10, 'annulé', 12),
('13', '2026-03-13', 6, 9.00, 'livré', 13),
('14', '2026-03-14', 10, 7.20, 'en cours', 14),
('15', '2026-03-15', 5, 10.00, 'livré', 15),
('16', '2026-04-01', 20, 6.50, 'livré', 1),
('17', '2026-04-01', 20, 6.50, 'en cours', 2),
('2', '2026-03-02', 12, 6.00, 'livré', 2),
('3', '2026-03-03', 8, 7.50, 'en cours', 3),
('4', '2026-03-04', 15, 4.50, 'livré', 4),
('5', '2026-03-05', 20, 3.50, 'annulé', 5),
('6', '2026-03-06', 9, 6.50, 'livré', 6),
('7', '2026-03-07', 11, 5.00, 'en cours', 7),
('8', '2026-03-08', 14, 4.00, 'livré', 8),
('9', '2026-03-09', 7, 8.00, 'livré', 9);

-- --------------------------------------------------------

--
-- Structure de la table `achat_prod`
--

DROP TABLE IF EXISTS `achat_prod`;
CREATE TABLE IF NOT EXISTS `achat_prod` (
  `id_produit` int NOT NULL,
  `id_achat` varchar(50) NOT NULL,
  PRIMARY KEY (`id_produit`,`id_achat`),
  KEY `fk_achat_prod_achat` (`id_achat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `achat_prod`
--

INSERT INTO `achat_prod` (`id_produit`, `id_achat`) VALUES
(1, '1'),
(10, '10'),
(11, '11'),
(12, '12'),
(13, '13'),
(14, '14'),
(15, '15'),
(1, '16'),
(2, '2'),
(3, '3'),
(4, '4'),
(5, '5'),
(6, '6'),
(7, '7'),
(8, '8'),
(9, '9');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int NOT NULL,
  `nom_categorie` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `nom_categorie`) VALUES
(1, 'Plantes'),
(2, 'Fleurs'),
(3, 'Arbres'),
(4, 'Arbustes'),
(5, 'Graines'),
(6, 'Succulentes'),
(7, 'Herbes'),
(8, 'Fougères'),
(9, 'Bonsaï'),
(10, 'Cactus'),
(11, 'Orchidées'),
(12, 'Palmier'),
(13, 'Aquatique'),
(14, 'Carnivore'),
(15, 'Médicinale');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int NOT NULL,
  `nom_client` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `adresse`, `email`) VALUES
(1, 'Dupont', 'Paris', 'a@mail.com'),
(2, 'Martin', 'Lyon', 'b@mail.com'),
(3, 'Durand', 'Marseille', 'c@mail.com'),
(4, 'Petit', 'Lille', 'd@mail.com'),
(5, 'Moreau', 'Nice', 'e@mail.com'),
(6, 'Simon', 'Nantes', 'f@mail.com'),
(7, 'Laurent', 'Bordeaux', 'g@mail.com'),
(8, 'Michel', 'Toulouse', 'h@mail.com'),
(9, 'Garcia', 'Rennes', 'i@mail.com'),
(10, 'David', 'Dijon', 'j@mail.com'),
(11, 'Bertrand', 'Tours', 'k@mail.com'),
(12, 'Roux', 'Angers', 'l@mail.com'),
(13, 'Vincent', 'Reims', 'm@mail.com'),
(14, 'Fournier', 'Grenoble', 'n@mail.com'),
(15, 'Girard', 'Clermont', 'o@mail.com');

-- --------------------------------------------------------

--
-- Structure de la table `client_prod`
--

DROP TABLE IF EXISTS `client_prod`;
CREATE TABLE IF NOT EXISTS `client_prod` (
  `id_produit` int NOT NULL,
  `id_client` int NOT NULL,
  PRIMARY KEY (`id_produit`,`id_client`),
  KEY `fk_client_prod_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `client_prod`
--

INSERT INTO `client_prod` (`id_produit`, `id_client`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- --------------------------------------------------------

--
-- Structure de la table `commande_client`
--

DROP TABLE IF EXISTS `commande_client`;
CREATE TABLE IF NOT EXISTS `commande_client` (
  `id_commande` int NOT NULL,
  `date_commande` date DEFAULT NULL,
  `id_employe` int NOT NULL,
  `id_client` int NOT NULL,
  PRIMARY KEY (`id_commande`),
  KEY `fk_commande_client_client` (`id_client`),
  KEY `fk_commande_client_employe` (`id_employe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `commande_client`
--

INSERT INTO `commande_client` (`id_commande`, `date_commande`, `id_employe`, `id_client`) VALUES
(1, '2026-02-01', 1, 1),
(2, '2026-02-02', 2, 2),
(3, '2026-02-03', 3, 3),
(4, '2026-02-04', 4, 4),
(5, '2026-02-05', 5, 5),
(6, '2026-02-06', 6, 6),
(7, '2026-02-07', 7, 7),
(8, '2026-02-08', 8, 8),
(9, '2026-02-09', 9, 9),
(10, '2026-02-10', 10, 10),
(11, '2026-02-11', 11, 11),
(12, '2026-02-12', 12, 12),
(13, '2026-02-13', 13, 13),
(14, '2026-02-14', 14, 14),
(15, '2026-02-15', 15, 15);

-- --------------------------------------------------------

--
-- Structure de la table `com_prod`
--

DROP TABLE IF EXISTS `com_prod`;
CREATE TABLE IF NOT EXISTS `com_prod` (
  `id_produit` int NOT NULL,
  `id_commande` int NOT NULL,
  `quantité` int DEFAULT NULL,
  PRIMARY KEY (`id_produit`,`id_commande`),
  KEY `fk_com_prod_commande_client` (`id_commande`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `com_prod`
--

INSERT INTO `com_prod` (`id_produit`, `id_commande`, `quantité`) VALUES
(1, 1, 2),
(2, 2, 3),
(3, 3, 1),
(4, 4, 5),
(5, 5, 2),
(6, 6, 4),
(7, 7, 3),
(8, 8, 6),
(9, 9, 2),
(10, 10, 1),
(11, 11, 7),
(12, 12, 3),
(13, 13, 2),
(14, 14, 5),
(15, 15, 4);

-- --------------------------------------------------------

--
-- Structure de la table `emplacement`
--

DROP TABLE IF EXISTS `emplacement`;
CREATE TABLE IF NOT EXISTS `emplacement` (
  `id_emplacement` int NOT NULL,
  `code_emplacement` varchar(50) DEFAULT NULL,
  `allee` int DEFAULT NULL,
  `rayon` int DEFAULT NULL,
  `niveau` int DEFAULT NULL,
  `id_stock` int NOT NULL,
  PRIMARY KEY (`id_emplacement`),
  KEY `fk_emplacement_stock` (`id_stock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `emplacement`
--

INSERT INTO `emplacement` (`id_emplacement`, `code_emplacement`, `allee`, `rayon`, `niveau`, `id_stock`) VALUES
(1, 'EMP001', 0, 0, 1, 1),
(2, 'EMP002', 0, 0, 1, 2),
(3, 'EMP003', 0, 0, 2, 3),
(4, 'EMP004', 0, 0, 1, 4),
(5, 'EMP005', 0, 0, 2, 5),
(6, 'EMP006', 0, 0, 1, 6),
(7, 'EMP007', 0, 0, 2, 7),
(8, 'EMP008', 0, 0, 1, 8),
(9, 'EMP009', 0, 0, 2, 9),
(10, 'EMP010', 0, 0, 1, 10),
(11, 'EMP011', 0, 0, 2, 11),
(12, 'EMP012', 0, 0, 1, 12),
(13, 'EMP013', 0, 0, 2, 13),
(14, 'EMP014', 0, 0, 1, 14),
(15, 'EMP015', 0, 0, 2, 15);

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `id_employe` int NOT NULL,
  `nom_employe` varchar(50) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_employe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id_employe`, `nom_employe`, `tel`, `email`, `adresse`) VALUES
(1, 'Jean', '0101', 'j@mail.com', 'Paris'),
(2, 'Paul', '0202', 'p@mail.com', 'Lyon'),
(3, 'Marc', '0303', 'm@mail.com', 'Marseille'),
(4, 'Luc', '0404', 'l@mail.com', 'Lille'),
(5, 'Pierre', '0505', 'pi@mail.com', 'Nice'),
(6, 'Louis', '0606', 'lo@mail.com', 'Nantes'),
(7, 'Hugo', '0707', 'h@mail.com', 'Bordeaux'),
(8, 'Leo', '0808', 'le@mail.com', 'Toulouse'),
(9, 'Noah', '0909', 'n@mail.com', 'Rennes'),
(10, 'Adam', '1010', 'a@mail.com', 'Dijon'),
(11, 'Lucas', '1111', 'lu@mail.com', 'Tours'),
(12, 'Jules', '1212', 'ju@mail.com', 'Angers'),
(13, 'Nathan', '1313', 'na@mail.com', 'Reims'),
(14, 'Tom', '1414', 't@mail.com', 'Grenoble'),
(15, 'Enzo', '1515', 'e@mail.com', 'Clermont');

-- --------------------------------------------------------

--
-- Structure de la table `employe_emplacement`
--

DROP TABLE IF EXISTS `employe_emplacement`;
CREATE TABLE IF NOT EXISTS `employe_emplacement` (
  `id_emplacement` int NOT NULL,
  `id_employe` int NOT NULL,
  PRIMARY KEY (`id_emplacement`,`id_employe`),
  KEY `fk_employe_emplacement_employe` (`id_employe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `employe_emplacement`
--

INSERT INTO `employe_emplacement` (`id_emplacement`, `id_employe`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- --------------------------------------------------------

--
-- Structure de la table `espece`
--

DROP TABLE IF EXISTS `espece`;
CREATE TABLE IF NOT EXISTS `espece` (
  `id_espece` int NOT NULL,
  `nom_espece` varchar(50) DEFAULT NULL,
  `nom_scientifique` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_espece`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `espece`
--

INSERT INTO `espece` (`id_espece`, `nom_espece`, `nom_scientifique`) VALUES
(1, 'Rose', 'Rosa'),
(2, 'Tulipe', 'Tulipa'),
(3, 'Chêne', 'Quercus'),
(4, 'Pin', 'Pinus'),
(5, 'Bambou', 'Bambusa'),
(6, 'Aloe', 'Aloe vera'),
(7, 'Menthe', 'Mentha'),
(8, 'Fougère', 'Pteridium'),
(9, 'Ficus', 'Ficus'),
(10, 'Cactus', 'Echinocactus'),
(11, 'Orchidée', 'Phalaenopsis'),
(12, 'Palmier', 'Phoenix'),
(13, 'Nénuphar', 'Nymphaea'),
(14, 'Dionée', 'Dionaea'),
(15, 'Camomille', 'Matricaria');

-- --------------------------------------------------------

--
-- Structure de la table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `id_fournisseur` int NOT NULL,
  `adresse` varchar(50) DEFAULT NULL,
  `telephone` varchar(50) DEFAULT NULL,
  `mail` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_fournisseur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `fournisseur`
--

INSERT INTO `fournisseur` (`id_fournisseur`, `adresse`, `telephone`, `mail`) VALUES
(1, 'Fourn1', 'Paris', '0101'),
(2, 'Fourn2', 'Lyon', '0202'),
(3, 'Fourn3', 'Marseille', '0303'),
(4, 'Fourn4', 'Lille', '0404'),
(5, 'Fourn5', 'Nice', '0505'),
(6, 'Fourn6', 'Nantes', '0606'),
(7, 'Fourn7', 'Bordeaux', '0707'),
(8, 'Fourn8', 'Toulouse', '0808'),
(9, 'Fourn9', 'Rennes', '0909'),
(10, 'Fourn10', 'Dijon', '1010'),
(11, 'Fourn11', 'Tours', '1111'),
(12, 'Fourn12', 'Angers', '1212'),
(13, 'Fourn13', 'Reims', '1313'),
(14, 'Fourn14', 'Grenoble', '1414'),
(15, 'Fourn15', 'Clermont', '1515');

-- --------------------------------------------------------

--
-- Structure de la table `lot_produit`
--

DROP TABLE IF EXISTS `lot_produit`;
CREATE TABLE IF NOT EXISTS `lot_produit` (
  `id_lot` int NOT NULL,
  `n_lot` int DEFAULT NULL,
  `quantite_lot` int DEFAULT NULL,
  `date_arrivee` date DEFAULT NULL,
  `id_produit` int NOT NULL,
  PRIMARY KEY (`id_lot`),
  KEY `fk_lot_produit_produit` (`id_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `lot_produit`
--

INSERT INTO `lot_produit` (`id_lot`, `n_lot`, `quantite_lot`, `date_arrivee`, `id_produit`) VALUES
(1, 0, 50, '2026-01-01', 1),
(2, 0, 60, '2026-01-02', 2),
(3, 0, 70, '2026-01-03', 3),
(4, 0, 80, '2026-01-04', 4),
(5, 0, 90, '2026-01-05', 5),
(6, 0, 40, '2026-01-06', 6),
(7, 0, 55, '2026-01-07', 7),
(8, 0, 65, '2026-01-08', 8),
(9, 0, 75, '2026-01-09', 9),
(10, 0, 85, '2026-01-10', 10),
(11, 0, 95, '2026-01-11', 11),
(12, 0, 45, '2026-01-12', 12),
(13, 0, 35, '2026-01-13', 13),
(14, 0, 25, '2026-01-14', 14),
(15, 0, 100, '2026-01-15', 15);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id_produit` int NOT NULL,
  `nom_produit` varchar(50) DEFAULT NULL,
  `reference_produit` varchar(50) DEFAULT NULL,
  `prix_vente` decimal(15,2) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `date_production` date DEFAULT NULL,
  `date_expiration` date DEFAULT NULL,
  `id_stock` int NOT NULL,
  `id_espece` int NOT NULL,
  `id_categorie` int NOT NULL,
  PRIMARY KEY (`id_produit`),
  KEY `fk_produit_categorie` (`id_categorie`),
  KEY `fk_produit_espece` (`id_espece`),
  KEY `fk_produit_stock` (`id_stock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `nom_produit`, `reference_produit`, `prix_vente`, `description`, `date_production`, `date_expiration`, `id_stock`, `id_espece`, `id_categorie`) VALUES
(1, 'Prod1', 'REF1', 10.00, 'desc', '2026-01-01', '2027-01-01', 1, 1, 1),
(2, 'Prod2', 'REF2', 11.00, 'desc', '2026-01-01', '2027-01-01', 2, 2, 2),
(3, 'Prod3', 'REF3', 12.00, 'desc', '2026-01-01', '2027-01-01', 3, 3, 3),
(4, 'Prod4', 'REF4', 13.00, 'desc', '2026-01-01', '2027-01-01', 4, 4, 4),
(5, 'Prod5', 'REF5', 14.00, 'desc', '2026-01-01', '2027-01-01', 5, 5, 5),
(6, 'Prod6', 'REF6', 15.00, 'desc', '2026-01-01', '2027-01-01', 6, 6, 6),
(7, 'Prod7', 'REF7', 16.00, 'desc', '2026-01-01', '2027-01-01', 7, 7, 7),
(8, 'Prod8', 'REF8', 17.00, 'desc', '2026-01-01', '2027-01-01', 8, 8, 8),
(9, 'Prod9', 'REF9', 18.00, 'desc', '2026-01-01', '2027-01-01', 9, 9, 9),
(10, 'Prod10', 'REF10', 19.00, 'desc', '2026-01-01', '2027-01-01', 10, 10, 10),
(11, 'Prod11', 'REF11', 20.00, 'desc', '2026-01-01', '2027-01-01', 11, 11, 11),
(12, 'Prod12', 'REF12', 21.00, 'desc', '2026-01-01', '2027-01-01', 12, 12, 12),
(13, 'Prod13', 'REF13', 22.00, 'desc', '2026-01-01', '2027-01-01', 13, 13, 13),
(14, 'Prod14', 'REF14', 23.00, 'desc', '2026-01-01', '2027-01-01', 14, 14, 14),
(15, 'Prod15', 'REF15', 24.00, 'desc', '2026-01-01', '2027-01-01', 15, 15, 15);

-- --------------------------------------------------------

--
-- Structure de la table `stock`
--

DROP TABLE IF EXISTS `stock`;
CREATE TABLE IF NOT EXISTS `stock` (
  `id_stock` int NOT NULL,
  `quantite_disponible` int DEFAULT NULL,
  `date_maj` date DEFAULT NULL,
  PRIMARY KEY (`id_stock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `stock`
--

INSERT INTO `stock` (`id_stock`, `quantite_disponible`, `date_maj`) VALUES
(1, 100, '2026-01-01'),
(2, 200, '2026-01-02'),
(3, 150, '2026-01-03'),
(4, 80, '2026-01-04'),
(5, 60, '2026-01-05'),
(6, 90, '2026-01-06'),
(7, 120, '2026-01-07'),
(8, 75, '2026-01-08'),
(9, 55, '2026-01-09'),
(10, 140, '2026-01-10'),
(11, 110, '2026-01-11'),
(12, 95, '2026-01-12'),
(13, 130, '2026-01-13'),
(14, 160, '2026-01-14'),
(15, 170, '2026-01-15');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achat`
--
ALTER TABLE `achat`
  ADD CONSTRAINT `fk_achat_fournisseur` FOREIGN KEY (`id_fournisseur`) REFERENCES `fournisseur` (`id_fournisseur`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `achat_prod`
--
ALTER TABLE `achat_prod`
  ADD CONSTRAINT `fk_acaht_prod_prod` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_achat_prod_achat` FOREIGN KEY (`id_achat`) REFERENCES `achat` (`id_achat`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `client_prod`
--
ALTER TABLE `client_prod`
  ADD CONSTRAINT `fk_client_prod_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_client_prod_produit` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `commande_client`
--
ALTER TABLE `commande_client`
  ADD CONSTRAINT `fk_commande_client_client` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_commande_client_employe` FOREIGN KEY (`id_employe`) REFERENCES `employe` (`id_employe`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `com_prod`
--
ALTER TABLE `com_prod`
  ADD CONSTRAINT `fk_com_prod_commande_client` FOREIGN KEY (`id_commande`) REFERENCES `commande_client` (`id_commande`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_com_prod_produit` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `emplacement`
--
ALTER TABLE `emplacement`
  ADD CONSTRAINT `fk_emplacement_stock` FOREIGN KEY (`id_stock`) REFERENCES `stock` (`id_stock`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `employe_emplacement`
--
ALTER TABLE `employe_emplacement`
  ADD CONSTRAINT `fk_employe_emplacement_emplacement` FOREIGN KEY (`id_emplacement`) REFERENCES `emplacement` (`id_emplacement`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_employe_emplacement_employe` FOREIGN KEY (`id_employe`) REFERENCES `employe` (`id_employe`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `lot_produit`
--
ALTER TABLE `lot_produit`
  ADD CONSTRAINT `fk_lot_produit_produit` FOREIGN KEY (`id_produit`) REFERENCES `lot_produit` (`id_lot`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `fk_produit_categorie` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_produit_espece` FOREIGN KEY (`id_espece`) REFERENCES `espece` (`id_espece`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `fk_produit_stock` FOREIGN KEY (`id_stock`) REFERENCES `stock` (`id_stock`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
