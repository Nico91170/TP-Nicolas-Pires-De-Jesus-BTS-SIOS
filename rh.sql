-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mer 14 Décembre 2022 à 12:04
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `RH`
--

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE IF NOT EXISTS `employe` (
  `NumEmp` int(11) NOT NULL,
  `Nom` text NOT NULL,
  `Prenom` text NOT NULL,
  `Sexe` text NOT NULL,
  `Salaire` float NOT NULL,
  `Type_Contrat` text NOT NULL,
  `Fonction` varchar(20) NOT NULL,
  `Site` varchar(50) NOT NULL,
  `Date_embauche` date NOT NULL,
  `Date_naissance` date NOT NULL,
  `NumSrv` int(11) NOT NULL,
  PRIMARY KEY (`NumEmp`),
  KEY `NumSrv` (`NumSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`NumEmp`, `Nom`, `Prenom`, `Sexe`, `Salaire`, `Type_Contrat`, `Fonction`, `Site`, `Date_embauche`, `Date_naissance`, `NumSrv`) VALUES
(10, 'Zinédine', 'Hamid', 'Homme', 2000, 'CDI', 'directeurs', 'Paris', '1994-10-06', '1999-04-01', 100),
(15, 'kalenji', 'Baptiste', 'Homme', 2000, 'CDI', 'Comptables', 'Ulis', '2009-08-29', '1997-02-06', 150);

-- --------------------------------------------------------

--
-- Structure de la table `intervenir`
--

CREATE TABLE IF NOT EXISTS `intervenir` (
  `Num_Interv` int(11) NOT NULL,
  `NumProj` int(11) NOT NULL,
  `NumEmp` int(11) NOT NULL,
  `NbHeures` int(11) NOT NULL,
  PRIMARY KEY (`Num_Interv`),
  KEY `NumProj` (`NumProj`),
  KEY `NumEmp` (`NumEmp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `intervenir`
--

INSERT INTO `intervenir` (`Num_Interv`, `NumProj`, `NumEmp`, `NbHeures`) VALUES
(2, 10, 15, 36),
(3, 14, 10, 36);

-- --------------------------------------------------------

--
-- Structure de la table `projet`
--

CREATE TABLE IF NOT EXISTS `projet` (
  `NumProjet` int(11) NOT NULL,
  `LibelleProjet` text NOT NULL,
  `NomSrv` int(11) NOT NULL,
  PRIMARY KEY (`NumProjet`),
  KEY `NomSrv` (`NomSrv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `projet`
--

INSERT INTO `projet` (`NumProjet`, `LibelleProjet`, `NomSrv`) VALUES
(10, 'site 1', 100),
(14, 'site 2', 150);

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `NumSrv` int(11) NOT NULL AUTO_INCREMENT,
  `NomSrv` text NOT NULL,
  PRIMARY KEY (`NumSrv`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=153 ;

--
-- Contenu de la table `service`
--

INSERT INTO `service` (`NumSrv`, `NomSrv`) VALUES
(100, 'Service 2'),
(150, 'Service 1');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `intervenir`
--
ALTER TABLE `intervenir`
  ADD CONSTRAINT `intervenir_ibfk_2` FOREIGN KEY (`NumEmp`) REFERENCES `employe` (`NumEmp`),
  ADD CONSTRAINT `intervenir_ibfk_1` FOREIGN KEY (`NumProj`) REFERENCES `projet` (`NumProjet`);

--
-- Contraintes pour la table `projet`
--
ALTER TABLE `projet`
  ADD CONSTRAINT `projet_ibfk_1` FOREIGN KEY (`NomSrv`) REFERENCES `service` (`NumSrv`);

--
-- Contraintes pour la table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_1` FOREIGN KEY (`NumSrv`) REFERENCES `employe` (`NumSrv`);
