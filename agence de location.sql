-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 07 Décembre 2022 à 11:41
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `agence de location`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `code_client` varchar(7) NOT NULL,
  `nom_prenom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `profession` varchar(20) NOT NULL,
  `numero_tel` varchar(10) NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `code_postal` varchar(5) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`code_client`, `nom_prenom`, `date_naissance`, `profession`, `numero_tel`, `adresse`, `code_postal`, `ville`, `email`) VALUES
('56C', 'Jean-Filipe', '2000-12-12', 'Developpeur', '0789875655', '35 Rue Duparchy', '91170', 'Viry-Châtillon', 'moi91@gmail.com'),
('65E', 'Nasser al-Khelaïfi', '1993-12-20', 'President du psg', '0678567645', '54 Allée de je ne sais pas', '93140', 'Bondy', 'Nasser91@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id_location` varchar(20) NOT NULL,
  `duree_location` int(11) NOT NULL,
  `date_location` date NOT NULL,
  `prix_location` int(11) NOT NULL,
  `immatriculation` varchar(20) NOT NULL,
  `code_clients` varchar(20) NOT NULL,
  `Caution` int(11) NOT NULL,
  PRIMARY KEY (`id_location`),
  KEY `code_clients` (`code_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `locations`
--

INSERT INTO `locations` (`id_location`, `duree_location`, `date_location`, `prix_location`, `immatriculation`, `code_clients`, `Caution`) VALUES
('loc91', 4, '2022-12-06', 250, 'ABC987', '56C', 3000),
('loc92', 2, '2022-12-30', 20, 'XYZ990', '65E', 250);

-- --------------------------------------------------------

--
-- Structure de la table `reparation`
--

CREATE TABLE IF NOT EXISTS `reparation` (
  `num_reparation` int(11) NOT NULL,
  `date_reparation` varchar(100) NOT NULL,
  `duree_reparation` varchar(100) NOT NULL,
  `cout_reparation` varchar(255) NOT NULL,
  `responsable_rep` varchar(255) NOT NULL,
  `immatriculation` varchar(255) NOT NULL,
  PRIMARY KEY (`num_reparation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `reparation`
--


-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `immatriculation` varchar(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `modele` varchar(20) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `carburant` varchar(10) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `nbr_place` int(11) NOT NULL,
  `nbr_porte` int(11) NOT NULL,
  `prix_achat` varchar(255) DEFAULT NULL,
  `etat` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--

INSERT INTO `voitures` (`immatriculation`, `marque`, `modele`, `kilometrage`, `carburant`, `couleur`, `nbr_place`, `nbr_porte`, `prix_achat`, `etat`) VALUES
('ABC987', 'Mercedes', 'CLS', 360, 'Diesel', 'Gris nardo', 5, 4, '75000', 'Neuf'),
('XYZ990', 'Renault', 'Twingo', 90, 'Essence', 'Rose', 5, 4, '750', 'Occasion');
