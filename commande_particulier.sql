-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 14 Juillet 2020 à 15:39
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `dev_amy`
--

-- --------------------------------------------------------

--
-- Structure de la table `commande_particulier`
--

CREATE TABLE IF NOT EXISTS `commande_particulier` (
  `ID_COMMANDE` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_UTILISATEUR` text NOT NULL,
  `TITRE_RECHERCHE` varchar(255) NOT NULL,
  `AUTEUR_RECHERCHE` varchar(255) DEFAULT NULL,
  `DATE_COMMANDE` date NOT NULL,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_COMMANDE`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `commande_particulier`
--

INSERT INTO `commande_particulier` (`ID_COMMANDE`, `CODE_UTILISATEUR`, `TITRE_RECHERCHE`, `AUTEUR_RECHERCHE`, `DATE_COMMANDE`, `IS_ACTIF`, `DATE_CREATION`) VALUES
(1, 'comptef7835a4175c07782a74f451fbcf176fd9235d70d', 'J''aime jesus', '', '2020-07-14', 1, '2020-07-14 13:38:56');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
