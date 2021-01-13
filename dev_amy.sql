-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 11 Juillet 2020 à 11:23
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
-- Structure de la table `commande`
--

CREATE TABLE IF NOT EXISTS `commande` (
  `ID_COMMANDE` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_COMMANDE` text NOT NULL,
  `CODE_PRODUIT` text NOT NULL,
  `QUANTITE` int(11) DEFAULT NULL,
  `PRIX` int(11) NOT NULL,
  `CODE_COMPTE` text NOT NULL,
  `DATE_COMMANDE` date NOT NULL,
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_COMMANDE`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`ID_COMMANDE`, `CODE_COMMANDE`, `CODE_PRODUIT`, `QUANTITE`, `PRIX`, `CODE_COMPTE`, `DATE_COMMANDE`, `DATE_CREATION`, `IS_ACTIF`) VALUES
(1, 'comd325a94c2d8e229eecc079c253fea6b0ba6c6f057', 'prod45c29735bcc85ae9db763643f4ae36053fceb79e', NULL, 10000, 'compte3e5e45ceb5e7e9167cbc663ed1ea4a2198528a30', '2020-06-08', '2020-06-08 20:33:02', 1),
(2, 'comdd3535ff98990c08df97d21530a02c914328b5318', 'prodadf1bbe53675e92bf5b060df0ce3f2c212417046', NULL, 120, 'compteaf45c1e23bdf5fd63a3ee82a49e1a295c5bf64e1', '2020-06-23', '2020-06-23 09:16:05', 1),
(3, 'comd499d7393907952a177119fa2701710dbf8ce56e4', 'prodbd5abe6350466211800963d3cf7e9a33a3be2577', NULL, 5000, 'compte3e5e45ceb5e7e9167cbc663ed1ea4a2198528a30', '2020-06-24', '2020-06-24 08:53:51', 1),
(4, 'comde97501d4eb0575a68a415829c752d43c94e97a3f', 'prod49b1e748458e8dbe6e4e92fdd6e3a32ec0eee986', NULL, 5000, 'utibbac3411fe31d47a24a3304001cfe3c570dd76e5', '2020-07-07', '2020-07-07 08:35:38', 1);

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

CREATE TABLE IF NOT EXISTS `compte` (
  `ID_UTILISATEUR` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_COMPTE` text NOT NULL,
  `NOM` varchar(255) NOT NULL,
  `PRENOM` varchar(255) NOT NULL,
  `PSEUDO` varchar(255) NOT NULL,
  `SEXE` varchar(255) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `ADRESSE` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(255) DEFAULT NULL,
  `PROFIL` int(11) NOT NULL DEFAULT '1',
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_UTILISATEUR`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `compte`
--

INSERT INTO `compte` (`ID_UTILISATEUR`, `CODE_COMPTE`, `NOM`, `PRENOM`, `PSEUDO`, `SEXE`, `PASSWORD`, `ADRESSE`, `TELEPHONE`, `PROFIL`, `DATE_CREATION`, `IS_ACTIF`) VALUES
(1, 'compte3e5e45ceb5e7e9167cbc663ed1ea4a2198528a30', 'ben', 'gaga', 'ben', 'Masculin', '25d55ad283aa400af464c76d713c07ad', NULL, NULL, 1, '2020-05-30 07:55:40', 1),
(2, 'comptebcc88278117395819ab8b80394ba7896715a81ef', 'YENE', 'KOKO', 'yenne', 'Masculin', '25d55ad283aa400af464c76d713c07ad', NULL, NULL, 1, '2020-05-30 07:57:13', 1);

-- --------------------------------------------------------

--
-- Structure de la table `galerie`
--

CREATE TABLE IF NOT EXISTS `galerie` (
  `ID_GALERIE` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_GALERIE` text NOT NULL,
  `LINK_IMAGE` text NOT NULL,
  `CODE_PRODUIT` text NOT NULL,
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_GALERIE`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `galerie`
--

INSERT INTO `galerie` (`ID_GALERIE`, `CODE_GALERIE`, `LINK_IMAGE`, `CODE_PRODUIT`, `DATE_CREATION`, `IS_ACTIF`) VALUES
(1, 'gal96a2791d4edf38fcaa078d46536a0d141c68f25f', './upload/50d00abe50d386ac7841.jpg', 'prod0869ae944f915e4e1c6139dd25a54064133b1974', '2020-07-08 06:09:21', 1),
(2, 'gal3a1d5477defa80d4b4e586a86de7e46d71bee59a', './upload/ff3422ccc8ed3456bbd0.jpg', 'prod0869ae944f915e4e1c6139dd25a54064133b1974', '2020-07-08 06:09:38', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mrk_banner`
--

CREATE TABLE IF NOT EXISTS `mrk_banner` (
  `ID_BANNER` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_BANNER` text NOT NULL,
  `TITRE` varchar(255) NOT NULL,
  `CODE_CATEGORIE` text NOT NULL,
  `LINK_IMAGE` text NOT NULL,
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_BANNER`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `mrk_banner`
--

INSERT INTO `mrk_banner` (`ID_BANNER`, `CODE_BANNER`, `TITRE`, `CODE_CATEGORIE`, `LINK_IMAGE`, `DATE_CREATION`, `IS_ACTIF`) VALUES
(1, 'banner75c200e8efa3f6d9b42e978c36a10577aab873d8', 'Banner1', 'bvjfgjhgahgh', './upload/banner/b6386eae0b0b645595f7.jpg', '2020-07-07 13:00:34', 1),
(2, 'banner78c692e736005814ff4c3448d7825ac1e5897f8e', 'Publicite ici...', 'bvjfgjhgahgh', './upload/banner/c0db7c301b603ca055bc.jpg', '2020-07-07 13:01:51', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mrk_boutique`
--

CREATE TABLE IF NOT EXISTS `mrk_boutique` (
  `ID_BOUTIQUE` int(11) NOT NULL AUTO_INCREMENT,
  `DESCRIPTION` text NOT NULL,
  `LINK_IMAGE` text NOT NULL,
  `CODE_UTILISATEUR` text NOT NULL,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_BOUTIQUE`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `mrk_boutique`
--

INSERT INTO `mrk_boutique` (`ID_BOUTIQUE`, `DESCRIPTION`, `LINK_IMAGE`, `CODE_UTILISATEUR`, `IS_ACTIF`, `DATE_CREATION`) VALUES
(1, '2k KIOSK', './upload/logo/boutique.PNG', 'uti2804bd0c879c192fd0f5083162ee8ffb7d9b5e84', 1, '2019-10-28 13:47:34'),
(2, 'GJOE KIOSK22', './upload/logo/7ffd3a15cae26b5a61e2.jpg', 'uti3e000e7e74e1501e2b2bf1b28457ab60739c723b', 1, '2019-10-30 10:45:26'),
(3, 'be', './upload/logo/d180e0a8ee6729bc4caf.jpg', 'utic520fe8be5896f5f8def63c0314b5d800a3333f0', 1, '2019-10-30 10:30:56'),
(4, 'gbmc', './upload/logo/c5ced519e51bdc9df988.png', 'utid2d6a028f1b41fa1ca80d91faf0d569d337dc0e0', 1, '2019-11-19 06:46:14'),
(5, 'vvvw', './upload/logo/6c7441cdc3cfdd18e454.png', 'uti90cb1c52d4caf2133f9beee217fcc89beb1b1dc6', 1, '2019-11-19 13:24:34'),
(6, 'ww', './upload/logo/01433b9d9ae35ac0e205.jpg', 'uti3b3d66243851ed2c2a5e833141b09364bc188a1b', 1, '2019-11-19 14:57:45'),
(7, 'bbb', './upload/logo/2112e42f21e37e42fd43.png', 'utif0ed2c9c486c52c7244eb4197f0ff83bf1cd862b', 1, '2019-11-19 14:58:04');

-- --------------------------------------------------------

--
-- Structure de la table `mrk_categorie`
--

CREATE TABLE IF NOT EXISTS `mrk_categorie` (
  `ID_CATEGORIE` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_CATEGORIE` text NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `LINK_IMAGE` text,
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_CATEGORIE`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Contenu de la table `mrk_categorie`
--

INSERT INTO `mrk_categorie` (`ID_CATEGORIE`, `CODE_CATEGORIE`, `DESCRIPTION`, `LINK_IMAGE`, `DATE_CREATION`, `IS_ACTIF`) VALUES
(1, 'bvjfgjhgahgh', 'Anniversaire', './upload/categorie/3a00a63f70be218978fd.jpg', '2020-07-07 11:04:47', 1),
(2, 'cat27f5f3bad08418f15f32def2105510c25607491d', 'Appareil Mobile', './upload/categorie/600cdd3f1d6e8ac3b0a1.jpg', '2020-07-07 11:06:04', 1),
(3, 'catbc9c30c4bdecb8b4fbec46d662bb4e353287fde1', 'BEN', NULL, '2019-10-29 09:49:02', 1),
(4, 'cateabf08cdc11a19bf6b76b3086addb5c3d48f168c', 'GOOGLE', NULL, '2019-11-18 08:28:22', 1),
(5, 'cat031fe2f6cd24996c8aa03c0f7c917d610a9bb662', 'Soulier', NULL, '2019-11-18 08:28:30', 1),
(6, 'catb0dd078464b5e3e14e38ef9713456d9aa86b132f', 'GABA', NULL, '2019-11-18 08:28:56', 1),
(9, 'catb00a804a7b47700b0ad916bd7b4b0745ac0d522e', 'Occasion 2', './upload/categorie/77725f47f3137460a034.png', '2020-07-07 11:01:36', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mrk_commande`
--

CREATE TABLE IF NOT EXISTS `mrk_commande` (
  `ID_COMMANDE` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_COMMANDE` text NOT NULL,
  `CODE_PRODUIT` text NOT NULL,
  `QUANTITE` int(11) DEFAULT NULL,
  `PRIX` int(11) NOT NULL,
  `CODE_UTILISATEUR` text NOT NULL,
  `DATE_COMMANDE` date DEFAULT NULL,
  `HEURE_VUE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CODE_TRANSACTION` text,
  `ADRESSE_LIVRAISON` text,
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_COMMANDE`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `mrk_commande`
--

INSERT INTO `mrk_commande` (`ID_COMMANDE`, `CODE_COMMANDE`, `CODE_PRODUIT`, `QUANTITE`, `PRIX`, `CODE_UTILISATEUR`, `DATE_COMMANDE`, `HEURE_VUE`, `CODE_TRANSACTION`, `ADRESSE_LIVRAISON`, `DATE_CREATION`, `IS_ACTIF`) VALUES
(1, 'comd23841adcad15bc8727de4fcfa463d7d0500c6fdc', 'prodf4c2f48765fd106031365ec84986e3fbbb4f1569', 1, 1500, 'uti0d04906d9a75d38b11a09cb7e5bd6fff0495c015', NULL, '2020-07-09 12:01:55', 'EDDSSSS', '+2578454121', '2020-07-09 12:01:55', 3),
(2, 'comd98e6526def4191d5f1500a9feda2692bffa4c74b', 'prod0f540f6ef3c36632be23213fd1d80f37703bb8a0', NULL, 2000, 'uti0d04906d9a75d38b11a09cb7e5bd6fff0495c015', '2020-07-09', '2020-07-09 12:27:31', NULL, NULL, '2020-07-09 12:27:31', 1),
(3, 'comdc779f6130e5b68e3889af3fc5ae227940fba60b5', 'prodf6102e592249719f4c11f1da93a77e6adeabe03d', 1, 200, 'comptef7835a4175c07782a74f451fbcf176fd9235d70d', NULL, '2020-07-10 08:06:17', NULL, NULL, '2020-07-10 08:06:17', 1),
(4, 'comde56c703ee4d273c69e3d33e61b492d5e91a1b4d8', 'prodf6102e592249719f4c11f1da93a77e6adeabe03d', NULL, 200, 'comptef7835a4175c07782a74f451fbcf176fd9235d70d', '2020-07-10', '2020-07-10 10:45:12', NULL, NULL, '2020-07-10 10:45:12', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mrk_commentaire`
--

CREATE TABLE IF NOT EXISTS `mrk_commentaire` (
  `ID_COMMENTAIRE` int(11) NOT NULL AUTO_INCREMENT,
  `COMMENTAIRE` text NOT NULL,
  `CODE_PRODUIT` text NOT NULL,
  `CODE_UTILISATEUR` text NOT NULL,
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_COMMENTAIRE`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `mrk_commentaire`
--

INSERT INTO `mrk_commentaire` (`ID_COMMENTAIRE`, `COMMENTAIRE`, `CODE_PRODUIT`, `CODE_UTILISATEUR`, `DATE_CREATION`, `IS_ACTIF`) VALUES
(1, 'genial ce prod coool', 'prod79cd141ea3c0379527af0f43f89dc10a39367a1f', 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', '2019-10-25 09:46:06', 1),
(2, 'genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit\r\n\r\ngenial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit genial ce produit', 'prod79cd141ea3c0379527af0f43f89dc10a39367a1f', 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', '2019-10-25 10:06:38', 1),
(3, 'genial ce produit', 'prod036b5fed944a4967dbc7bec36bf34b8369431002', 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', '2019-10-25 09:24:44', 1),
(4, 'geni', 'prod036b5fed944a4967dbc7bec36bf34b8369431002', 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', '2019-10-25 09:31:38', 1),
(5, 'bbb', 'prod79cd141ea3c0379527af0f43f89dc10a39367a1f', 'uti9c5eaf31abd8ac4457e50df8f6b61825bcafeb1e', '2019-10-25 10:55:36', 1),
(6, 'cool', 'prodadf1bbe53675e92bf5b060df0ce3f2c212417046', 'uti9c5eaf31abd8ac4457e50df8f6b61825bcafeb1e', '2019-10-25 10:56:31', 1),
(7, 'cool', 'prodadf1bbe53675e92bf5b060df0ce3f2c212417046', 'uti9c5eaf31abd8ac4457e50df8f6b61825bcafeb1e', '2019-10-25 10:56:48', 1),
(8, 'dddd', 'prodadf1bbe53675e92bf5b060df0ce3f2c212417046', 'uti9c5eaf31abd8ac4457e50df8f6b61825bcafeb1e', '2019-10-25 11:22:39', 1),
(9, 'ben', 'prodadf1bbe53675e92bf5b060df0ce3f2c212417046', 'uti9c5eaf31abd8ac4457e50df8f6b61825bcafeb1e', '2019-10-25 11:23:51', 1),
(10, 'bebeg', 'prod79cd141ea3c0379527af0f43f89dc10a39367a1f', 'uti9c5eaf31abd8ac4457e50df8f6b61825bcafeb1e', '2019-10-25 11:35:11', 1),
(11, 'GAGAGAGA', 'prod79cd141ea3c0379527af0f43f89dc10a39367a1f', 'uti9c5eaf31abd8ac4457e50df8f6b61825bcafeb1e', '2019-10-25 11:35:29', 1),
(12, 'c bon votre article', 'prodadf1bbe53675e92bf5b060df0ce3f2c212417046', 'user68bad8c7fe034ba515e7a29db4937d3a4b8df63c', '2019-10-25 13:43:43', 1),
(13, 'c bon, j''aime ca', 'prod5771b8e558886e00da6279288119ab01f2aceed3', 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', '2019-10-28 14:35:57', 1),
(14, 'jjhgh', 'prod5771b8e558886e00da6279288119ab01f2aceed3', 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', '2019-10-29 09:24:45', 1),
(15, 'elle est cette montre', 'prod37f74f582dac4bcff692cf58ef395ad87cc17dd1', 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', '2019-10-29 09:41:08', 1),
(16, 'C BON', 'prod1db5cd31d82199aea4a87a32033ecad85210b575', 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', '2019-10-30 13:30:23', 1),
(17, 'Je le trouve aussi cool', 'prod1db5cd31d82199aea4a87a32033ecad85210b575', 'user43bd0508ae8da4ca347bf1b7ff49d399a13a557c', '2019-10-30 15:02:39', 1),
(18, 'j''aime vrement cet article', 'prod036b5fed944a4967dbc7bec36bf34b8369431002', 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', '2019-10-31 08:13:42', 1),
(19, 'Tres beau', 'prodfbe1a597c03a0ff711e6ba3bb3d932f249e8794c', 'userd62f55952ac9d62946db0c66b8e2a17d3dd8c38a', '2019-11-02 13:08:58', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mrk_demande`
--

CREATE TABLE IF NOT EXISTS `mrk_demande` (
  `ID_DEMANDE` int(11) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `CODE_UTILISATEUR` text NOT NULL,
  `CATEGORIE` text NOT NULL,
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `mrk_demande`
--

INSERT INTO `mrk_demande` (`ID_DEMANDE`, `DESCRIPTION`, `CODE_UTILISATEUR`, `CATEGORIE`, `DATE_CREATION`, `IS_ACTIF`) VALUES
(0, 'SS', 'user68bad8c7fe034ba515e7a29db4937d3a4b8df63c', 'SS', '2019-10-24 10:23:13', 1),
(0, 'gwege', 'user68bad8c7fe034ba515e7a29db4937d3a4b8df63c', 'bsbs', '2019-10-24 10:30:33', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mrk_diapo`
--

CREATE TABLE IF NOT EXISTS `mrk_diapo` (
  `ID_DIAPO` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_DIAPO` text NOT NULL,
  `TITRE` varchar(255) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `LINK_IMAGE` text NOT NULL,
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_DIAPO`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `mrk_diapo`
--

INSERT INTO `mrk_diapo` (`ID_DIAPO`, `CODE_DIAPO`, `TITRE`, `DESCRIPTION`, `LINK_IMAGE`, `DATE_CREATION`, `IS_ACTIF`) VALUES
(1, 'diapocbfbd69f8238b50250acef091c08b9e2329ca9b2', 'DIAPO', 'COOL', './upload/diapo/74ac15d5ff6c556762fb.jpg', '2020-07-07 13:21:01', 1),
(2, 'diapo4007a75f111492103980d5a0e8c5b4a1cbffd136', 'jj', 'jj', './upload/diapo/2193c35c878546073ca2.jpg', '2020-07-07 13:16:31', 1),
(3, 'diapo9ec681af068cd4bb7ab0ba51a792f218c16c1acc', 'Other', 'Other', './upload/diapo/aee31fee170543497865.jpg', '2020-07-07 13:24:24', 1);

-- --------------------------------------------------------

--
-- Structure de la table `mrk_dislike`
--

CREATE TABLE IF NOT EXISTS `mrk_dislike` (
  `ID_DESLIKE` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_UTILISATEUR` text NOT NULL,
  `CODE_PRODUIT` text NOT NULL,
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_DESLIKE`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `mrk_dislike`
--

INSERT INTO `mrk_dislike` (`ID_DESLIKE`, `CODE_UTILISATEUR`, `CODE_PRODUIT`, `DATE_CREATION`, `IS_ACTIF`) VALUES
(1, 'user68bad8c7fe034ba515e7a29db4937d3a4b8df63c', 'prod79cd141ea3c0379527af0f43f89dc10a39367a1f', '2019-10-25 13:43:18', 2),
(2, 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', 'prod036b5fed944a4967dbc7bec36bf34b8369431002', '2019-10-26 07:21:26', 1),
(3, 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', 'prod79cd141ea3c0379527af0f43f89dc10a39367a1f', '2019-10-26 07:22:32', 1),
(4, 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', 'prod5771b8e558886e00da6279288119ab01f2aceed3', '2019-10-28 14:43:56', 1),
(5, 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', 'prod37f74f582dac4bcff692cf58ef395ad87cc17dd1', '2019-10-29 07:41:11', 2),
(6, 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', 'proda28a3661d067841b3c03f76cea35d721175a2978', '2019-10-29 07:28:31', 2);

-- --------------------------------------------------------

--
-- Structure de la table `mrk_produit`
--

CREATE TABLE IF NOT EXISTS `mrk_produit` (
  `ID_PRODUIT` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_PRODUIT` text NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `DETAILS` text NOT NULL,
  `PRIX` int(11) NOT NULL,
  `UNITE_MONAITAIRE` varchar(255) NOT NULL,
  `DETAILS_LIVRAISON` varchar(255) NOT NULL,
  `PERIODE_LIVRAISON` varchar(255) NOT NULL,
  `LINK_IMAGE` text NOT NULL,
  `CODE_UTILISATEUR` text NOT NULL,
  `CODE_CATEGORIE` text NOT NULL,
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_PRODUIT`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `mrk_produit`
--

INSERT INTO `mrk_produit` (`ID_PRODUIT`, `CODE_PRODUIT`, `DESCRIPTION`, `DETAILS`, `PRIX`, `UNITE_MONAITAIRE`, `DETAILS_LIVRAISON`, `PERIODE_LIVRAISON`, `LINK_IMAGE`, `CODE_UTILISATEUR`, `CODE_CATEGORIE`, `DATE_CREATION`, `IS_ACTIF`) VALUES
(1, 'prod036b5fed944a4967dbc7bec36bf34b8369431002', 'Produit 65', '', 5210, 'Fc', 'Heure', '1', './upload/produit/8ac108de62aafddb3fea.jpg', 'utibbac3411fe31d47a24a3304001cfe3c570dd76e5', 'bvjfgjhgahgh', '2019-10-28 09:51:18', 1),
(2, 'prodadf1bbe53675e92bf5b060df0ce3f2c212417046', 'Produit 2', '', 120, '$', 'Heure', '6', './upload/produit/63d5309a8b03a28535a0.jpg', 'utibbac3411fe31d47a24a3304001cfe3c570dd76e5', 'bvjfgjhgahgh', '2019-11-18 08:57:13', 1),
(3, 'prod79cd141ea3c0379527af0f43f89dc10a39367a1f', 'DDD', '', 2221, 'Fbu', 'Mois', '2', './upload/produit/a16c690c81a7a9c7ac68.jpg', 'utibbac3411fe31d47a24a3304001cfe3c570dd76e5', 'cat27f5f3bad08418f15f32def2105510c25607491d', '2019-11-18 08:57:17', 1),
(4, 'prod2bbbae92b063c88524ce0a0ab6a6cf93fe48ef5a', 'Autre', '', 200, 'Fbu', 'Jours', '1', './upload/produit/9426c03f16a10406ad7f.jpg', 'uti9c5eaf31abd8ac4457e50df8f6b61825bcafeb1e', 'bvjfgjhgahgh', '2019-10-28 09:56:35', 1),
(5, 'prod343d1583953ca748d29106e6308d50150e9b063c', 'ge', 'hello', 1220, '$', 'Heure', '1', './upload/produit/6c570044827f6d06299a.jpg', 'uti9c5eaf31abd8ac4457e50df8f6b61825bcafeb1e', 'bvjfgjhgahgh', '2020-01-20 07:57:51', 1),
(6, 'proda28a3661d067841b3c03f76cea35d721175a2978', 'kjj', 'dghf', 1200, '$', 'Heure', '1', './upload/produit/8ac108de62aafddb3fea.jpg', 'uti9c5eaf31abd8ac4457e50df8f6b61825bcafeb1e', 'cat27f5f3bad08418f15f32def2105510c25607491d', '2019-12-13 08:56:32', 1),
(7, 'prodad35946df4183d992fd4939421ff0be10a8401de', 'oTHER', '', 12, '$', 'Heure', '1', './upload/produit/d9ff0cb33399316bee83.jpg', 'utibbac3411fe31d47a24a3304001cfe3c570dd76e5', 'cat27f5f3bad08418f15f32def2105510c25607491d', '2019-10-28 10:00:54', 1),
(8, 'prod37f74f582dac4bcff692cf58ef395ad87cc17dd1', 'mONTER', '', 200, 'Fbu', 'Jours', '2', './upload/produit/e00c74a10588f15aa97a.jpg', 'utibbac3411fe31d47a24a3304001cfe3c570dd76e5', 'cat27f5f3bad08418f15f32def2105510c25607491d', '2019-12-13 07:28:32', 3),
(9, 'prod5771b8e558886e00da6279288119ab01f2aceed3', 'GG', '', 120, 'Fbu', 'Heure', '120', './upload/produit/f91acb897295d511d5ad.jpg', 'utibbac3411fe31d47a24a3304001cfe3c570dd76e5', 'bvjfgjhgahgh', '2019-10-28 10:01:44', 1),
(10, 'prodfbe1a597c03a0ff711e6ba3bb3d932f249e8794c', 'Cahier', '', 100, '$', 'Jours', '1', './upload/produit/00f51c5349175032b43d.jpg', 'uti984b216465b5585da0d48b6d8877c5df2002ceeb', 'bvjfgjhgahgh', '2019-10-30 08:26:29', 1),
(11, 'prod213737628a519a4b5468f0bddcacb58b8f3fa0a5', 'Bic', '', 200, 'Fc', 'Heure', '1', './upload/produit/b6beec47e3de7cd35530.jpg', 'uti984b216465b5585da0d48b6d8877c5df2002ceeb', 'catbc9c30c4bdecb8b4fbec46d662bb4e353287fde1', '2019-10-30 08:27:11', 1),
(12, 'prodc65aba16eef54ec25cf0cbdace947a0d65237cc3', 'ORDINATEUR', '', 200000, 'Fbu', 'Heure', '1', './upload/produit/ab18ecb00f0fc8e09be7.jpg', 'utibbac3411fe31d47a24a3304001cfe3c570dd76e5', 'cat27f5f3bad08418f15f32def2105510c25607491d', '2019-10-30 09:06:53', 1),
(13, 'prod70c10847faab631f4cbbae18d2b33464177ee6eb', 'Mon Produit 1', '', 200000, 'Fc', 'Heure', '1', './upload/produit/0c9240e7a33f6ae9e1fe.jpg', 'uti3e000e7e74e1501e2b2bf1b28457ab60739c723b', 'cat27f5f3bad08418f15f32def2105510c25607491d', '2019-10-30 10:48:01', 1),
(14, 'prod1db5cd31d82199aea4a87a32033ecad85210b575', 'Produit 2', '', 32000, 'Fbu', 'Mois', '1', './upload/produit/b70f3149c563921236d5.jpg', 'uti3e000e7e74e1501e2b2bf1b28457ab60739c723b', 'bvjfgjhgahgh', '2019-10-30 10:48:59', 1),
(15, 'prod62dea7686b3a812352d482cec2b008d5ecd88929', 'Lunettes', '', 15000, 'Fbu', 'Heure', '2', './upload/produit/fffaeccfccb23d56b07f.jpg', 'uti2804bd0c879c192fd0f5083162ee8ffb7d9b5e84', 'bvjfgjhgahgh', '2019-11-02 13:16:05', 1),
(16, 'prod83b9480f50bcde906642ce96ab336734e496d354', 'Ordi', '', 15200, 'Fbu', 'Heure', '1', './upload/produit/a710884f891a54d78e88.jpg', 'utid2d6a028f1b41fa1ca80d91faf0d569d337dc0e0', 'cat27f5f3bad08418f15f32def2105510c25607491d', '2019-11-19 06:49:29', 1),
(17, 'prodced849edfede7694e89c9e01f5c812e27d6869cf', 'bvadvbf', 'detaille de produit', 200, 'Fbu', 'Heure', '1', './upload/produit/e5cac3d8255478ee32c7.jpg', 'uti0d04906d9a75d38b11a09cb7e5bd6fff0495c015', 'bvjfgjhgahgh', '2020-01-16 07:35:55', 1),
(18, 'prod3fcf7f8088bf0a257941861f472a8888f1066c3d', 'PRODUIT BNEN TEST', 'DETAILLE PRINC', 23000, '$', 'Heure', '1', './upload/produit/18b4307e585f6c9f1416.jpg', 'uti0d04906d9a75d38b11a09cb7e5bd6fff0495c015', 'bvjfgjhgahgh', '2020-02-05 10:07:33', 1),
(19, 'prodf3e9df0428e134aeb5d55dc3f3ec1f7556f72439', 'hhh', 'jdgfhg', 12020, 'Fbu', 'Heure', '2', './upload/produit/f3b73db1052a01d9e2a3.jpg', 'uti3e000e7e74e1501e2b2bf1b28457ab60739c723b', 'bvjfgjhgahgh', '2020-01-17 10:15:13', 1);

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `ID_PRODUIT` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_PRODUIT` text NOT NULL,
  `DESCRIPTION` varchar(255) NOT NULL,
  `TYPE_PRODUIT` int(11) DEFAULT '0',
  `DETAIL_PRODUIT` text NOT NULL,
  `PRIX` int(11) NOT NULL,
  `UNITE_MONAITAIRE` varchar(255) NOT NULL,
  `DETAILS_LIVRAISON` varchar(255) DEFAULT NULL,
  `PERIODE_LIVRAISON` varchar(255) DEFAULT NULL,
  `LINK_IMAGE` text NOT NULL,
  `TYPE` int(11) DEFAULT '1',
  `CODE_UTILISATEUR` text NOT NULL,
  `CODE_CATEGORIE` text NOT NULL,
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_PRODUIT`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`ID_PRODUIT`, `CODE_PRODUIT`, `DESCRIPTION`, `TYPE_PRODUIT`, `DETAIL_PRODUIT`, `PRIX`, `UNITE_MONAITAIRE`, `DETAILS_LIVRAISON`, `PERIODE_LIVRAISON`, `LINK_IMAGE`, `TYPE`, `CODE_UTILISATEUR`, `CODE_CATEGORIE`, `DATE_CREATION`, `IS_ACTIF`) VALUES
(1, 'prod036b5fed944a4967dbc7bec36bf34b8369431002', 'Produit 65', 0, '', 5210, 'Fc', 'Heure', '1', './upload/907e166222651bbb5ede.jpg', 2, 'utibbac3411fe31d47a24a3304001cfe3c570dd76e5', 'bvjfgjhgahgh', '2020-07-06 13:26:15', 3),
(2, 'prodadf1bbe53675e92bf5b060df0ce3f2c212417046', 'Produit 2', 0, '', 120, '$', 'Heure', '6', './upload/373318d55288a0a11764.jpg', 2, 'utibbac3411fe31d47a24a3304001cfe3c570dd76e5', 'bvjfgjhgahgh', '2020-07-06 13:26:15', 2),
(3, 'prod4ea92266431438a1754e73b38d2cfda7759afb6a', 'kdk', 0, 'dkdk', 200, 'FBU', NULL, NULL, '', 2, 'compteaf45c1e23bdf5fd63a3ee82a49e1a295c5bf64e1', 'cath2ddd5fdf1d45f4dsd5f45df5sdsdfe', '2020-07-06 13:26:15', 3),
(4, 'prod9b4668debc64c78dcd3a00a9d5eaa717d5cd3039', 'Hello', 0, 'Hdhshs', 5000, 'FBU', NULL, NULL, './upload/8e4aa94a829cb591018a.jpg', 2, 'compteaf45c1e23bdf5fd63a3ee82a49e1a295c5bf64e1', 'cath2ddd5fdf1d45f4dsd5f45df5sdsdfe', '2020-07-06 13:26:15', 2),
(5, 'prod212f06493c2dc5c44a5d3bf107eb67f2ce3b9b6b', 'Dhe', 0, 'Hdhd', 500, 'FBU', NULL, NULL, './upload/373318d55288a0a11764.jpg', 2, 'compteaf45c1e23bdf5fd63a3ee82a49e1a295c5bf64e1', 'cath2ddd5fdf1d45f4dsd5f45df5sdsdfe', '2020-07-06 13:26:15', 4),
(6, 'prod2e0647be3edb92a4b5f23024c45f0dac223980f9', 'mon produit', 0, 'ce vraiment impressionnennt de voir comment ....', 10000, 'FBU', NULL, NULL, './upload/8e4aa94a829cb591018a.jpg', 2, 'comptebcc88278117395819ab8b80394ba7896715a81ef', 'cath2ddd5fdf1d45f4dsd5f45df5sdsdfe', '2020-07-06 13:26:15', 1),
(7, 'prod8b0248d1e2313c92b75f31b6da19512ba1d2a57c', 'Autres', 0, 'sjjdkjd dkllkds sfhlkhdf', 20000, 'FBU', NULL, NULL, './upload/aeec4e3df66d329538e5.jpg', 2, 'comptebcc88278117395819ab8b80394ba7896715a81ef', 'cath2ddd5fdf1d45f4dsd5f45df5sdsdfe', '2020-07-06 13:26:15', 4),
(8, 'prod45c29735bcc85ae9db763643f4ae36053fceb79e', 'Habit', 0, 'Voila le detail', 10000, 'FBU', NULL, NULL, './upload/fddbfecf57b841259a21.jpg', 2, 'compte3e5e45ceb5e7e9167cbc663ed1ea4a2198528a30', 'cath2ddd5fdf1d45f4dsd5f45df5sdsdfe', '2020-07-06 13:26:15', 2),
(9, 'prod00bf202b2de998a9d2685028ac5148412a0f7d06', 'Sport', 0, 'Etes vous supportif??', 15000, 'FBU', NULL, NULL, './upload/5e97d84b3114f831f1e7.jpg', 2, 'comptebcc88278117395819ab8b80394ba7896715a81ef', 'cath2ddd5fdf1d45f4dsd5f45df5sdsdfe', '2020-07-06 13:26:15', 1),
(10, 'prodbd5abe6350466211800963d3cf7e9a33a3be2577', 'Soulier', 0, 'c soulier est vraiment neuf.\nil est à cuir', 5000, 'FBU', NULL, NULL, './upload/f6a314875fa1ef45e128.png', 2, 'compte3e5e45ceb5e7e9167cbc663ed1ea4a2198528a30', 'cath2ddd5fdf1d45f4dsd5f45df5sdsdfe', '2020-07-06 13:26:15', 4),
(11, 'prodb96b4e293cdd601106aa86ba6b05a14c543bf4e1', 'Design', 0, 'Genial', 5000, 'FBU', NULL, NULL, './upload/3e604afadffe80201ac4.jpg', 2, 'compte3e5e45ceb5e7e9167cbc663ed1ea4a2198528a30', 'cath2ddd5fdf1d45f4dsd5f45df5sdsdfe', '2020-07-06 13:26:15', 1),
(12, 'prod78596df64e743b16573c263a61be266462476903', 'fddd', 0, 'dddd', 5000, 'FBU', NULL, NULL, './upload/212b551121cbd8ab790c.jpg', 2, 'uti1e9a22ddd483501cf4c2fde405cef80c839f7254', 'bvjfgjhgahgh', '2020-07-06 14:25:47', 1),
(13, 'prod49b1e748458e8dbe6e4e92fdd6e3a32ec0eee986', 'Mon produit 2', 0, 'Donc tail', 5000, 'FBU', NULL, NULL, './upload/8f0db12a38333ef7814b.jpg', 2, 'utibbac3411fe31d47a24a3304001cfe3c570dd76e5', 'cat031fe2f6cd24996c8aa03c0f7c917d610a9bb662', '2020-07-07 08:35:38', 2),
(14, 'prod0f540f6ef3c36632be23213fd1d80f37703bb8a0', 'Canon', 0, 'jdjd', 2000, 'Fbu', 'Jours', '2', './upload/produit/ef5da31abe9ebb25cd0a.jpg', 1, 'uti0d04906d9a75d38b11a09cb7e5bd6fff0495c015', 'cat27f5f3bad08418f15f32def2105510c25607491d', '2020-07-09 12:27:31', 2),
(15, 'prod7cef2213445b1bd80f59a37d5386c5d68cc73143', 'Mon Produit Tel', 0, 'il est le meilleur', 5000, 'Fbu', 'Heure', '1', './upload/produit/71d016652958bc8b1867.jpg', 1, 'utibbac3411fe31d47a24a3304001cfe3c570dd76e5', 'bvjfgjhgahgh', '2020-07-10 10:40:19', 1),
(16, 'prod0869ae944f915e4e1c6139dd25a54064133b1974', 'Hey', 0, 'Bjje', 15000, 'FBU', NULL, NULL, './upload/c34e834451b0debbe46f.jpg', 2, 'comptef7835a4175c07782a74f451fbcf176fd9235d70d', 'bvjfgjhgahgh', '2020-07-07 14:28:39', 1),
(17, 'prodf6102e592249719f4c11f1da93a77e6adeabe03d', 'gg', 0, 'ggg', 200, 'Fbu', 'Heure', '1', './upload/produit/e9fc0bc1753146eebd29.png', 1, 'uti0d04906d9a75d38b11a09cb7e5bd6fff0495c015', 'bvjfgjhgahgh', '2020-07-09 10:44:28', 1),
(18, 'prodf4c2f48765fd106031365ec84986e3fbbb4f1569', 'FF', 1, 'K', 1500, 'Fbu', 'Heure', '1', './upload/produit/7906aefdaaadad99cfc8.jpg', 1, 'uti0d04906d9a75d38b11a09cb7e5bd6fff0495c015', 'cat27f5f3bad08418f15f32def2105510c25607491d', '2020-07-09 10:48:35', 1);

-- --------------------------------------------------------

--
-- Structure de la table `produitlike`
--

CREATE TABLE IF NOT EXISTS `produitlike` (
  `ID_LIKE` int(11) NOT NULL,
  `CODE_UTILISATEUR` text NOT NULL,
  `CODE_PRODUIT` text NOT NULL,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `ID_UTILISATEUR` int(11) NOT NULL AUTO_INCREMENT,
  `CODE_UTILISATEUR` text NOT NULL,
  `NOM` varchar(255) NOT NULL,
  `PRENOM` varchar(255) NOT NULL,
  `PSEUDO` varchar(255) NOT NULL,
  `SEXE` varchar(255) DEFAULT NULL,
  `PASSWORD` text NOT NULL,
  `ADRESSE` varchar(255) DEFAULT NULL,
  `TELEPHONE` varchar(255) DEFAULT NULL,
  `PROFIL` int(11) NOT NULL,
  `LINK_IMAGE` text,
  `DATE_CREATION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `IS_ACTIF` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_UTILISATEUR`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=39 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`ID_UTILISATEUR`, `CODE_UTILISATEUR`, `NOM`, `PRENOM`, `PSEUDO`, `SEXE`, `PASSWORD`, `ADRESSE`, `TELEPHONE`, `PROFIL`, `LINK_IMAGE`, `DATE_CREATION`, `IS_ACTIF`) VALUES
(1, 'uti0d04906d9a75d38b11a09cb7e5bd6fff0495c015', 'Ben', 'Gael', 'ben', NULL, '202cb962ac59075b964b07152d234b70', 'Gihosha', '12542', 1, './upload/produit/3c4fc91e2e0d0a408ae2.jpg', '2019-10-30 09:08:38', 1),
(2, 'utiae3a2e25b8d422e8e6d72d9d4e6f497e4901aa68', 'Gael', 'ben', 'gael', NULL, '', 'Kinama', '658214', 2, './upload/produit/3c4fc91e2e0d0a408ae2.jpg', '2019-10-29 14:17:35', 1),
(3, 'uti9c5eaf31abd8ac4457e50df8f6b61825bcafeb1e', 'Ben', 'gaga', 'gaga', NULL, 'd41d8cd98f00b204e9800998ecf8427e', 'hege', 'kks', 2, './upload/produit/3c4fc91e2e0d0a408ae2.jpg', '2019-12-13 09:22:43', 1),
(4, 'utibbac3411fe31d47a24a3304001cfe3c570dd76e5', 'GaelBen', 'gagaga', 'ben20', NULL, '202cb962ac59075b964b07152d234b70', 'kin', '122', 2, './upload/produit/3c4fc91e2e0d0a408ae2.jpg', '2020-01-17 11:33:20', 1),
(5, 'usera5f09913a0e68f4c70b3d2bc8ae29944f0bc5f69', 'Mukapa', 'Gael', 'benGiho', NULL, '202cb962ac59075b964b07152d234b70', 'gihosha', '365892', 3, './upload/produit/3c4fc91e2e0d0a408ae2.jpg', '2019-10-25 09:34:24', 1),
(6, 'user8ee6359d511d899c839130e3ef9ef014fcfd1799', 'Ben', 'gag', 'ben2', NULL, '202cb962ac59075b964b07152d234b70', 'jkwjs', 's122', 3, './upload/produit/3c4fc91e2e0d0a408ae2.jpg', '2019-10-25 09:34:22', 1),
(12, 'user7992bcb683fa4213d41da6735484c0dee344079a', 'bebe', 'kdekd', 'kd', NULL, '3644a684f98ea8fe223c713b77189a77', 'kdk', 'kdk', 3, './upload/produit/3c4fc91e2e0d0a408ae2.jpg', '2019-10-25 09:33:59', 1),
(13, 'user651205f1782e33ad8c843a0bf94349e83963b1da', 'BRUNO', 'BURNO', 'bruno', NULL, '202cb962ac59075b964b07152d234b70', 'HE', '122', 3, './upload/produit/3c4fc91e2e0d0a408ae2.jpg', '2019-10-25 09:33:56', 1),
(14, 'user68bad8c7fe034ba515e7a29db4937d3a4b8df63c', 'gaga', 'gaga', 'gaga1', NULL, '202cb962ac59075b964b07152d234b70', 'gaga', 'gaga', 3, './upload/produit/3c4fc91e2e0d0a408ae2.jpg', '2019-10-25 09:33:54', 1),
(15, 'user8d83a144b89c3d8e5e619890bdb66d4408f27137', 'BENJAMIN', 'GAGA', 'KO', NULL, 'd41d8cd98f00b204e9800998ecf8427e', 'KINAMA', '695214521', 3, './upload/produit/avatar5.jpg', '2020-02-05 10:00:56', 1),
(16, 'user99e415d062ff019ea59fe12e6da6106585a6889b', 'code', 'code', 'gagaben', NULL, '202cb962ac59075b964b07152d234b70', 'kin', '63210145', 3, '', '2019-10-25 11:42:50', 1),
(17, 'userb2dc99f8921522970802435923ccf66d263f99e8', 'ben', '123', '243', NULL, 'cb70ab375662576bd1ac5aaf16b3fca4', '5522', '254', 3, '', '2019-10-25 11:44:36', 1),
(18, 'user9e070b83031b7453197c86e17eaaa75faeb26c49', 'ben', 'ben', 'ben243', NULL, 'cb70ab375662576bd1ac5aaf16b3fca4', 'bem', 'ben', 3, '', '2019-10-25 11:45:58', 1),
(19, 'uti984b216465b5585da0d48b6d8877c5df2002ceeb', 'ben', 'gael', 'bengael', NULL, 'd41d8cd98f00b204e9800998ecf8427e', 'kinama2', '6321542', 2, '', '2019-12-13 08:13:21', 1),
(20, 'uti2804bd0c879c192fd0f5083162ee8ffb7d9b5e84', 'Gale', 'ben', 'galle', NULL, '202cb962ac59075b964b07152d234b70', 'jkks', 'j552', 2, './upload/produit/3c4fc91e2e0d0a408ae2.jpg', '2019-10-30 09:17:56', 1),
(22, 'uti3e000e7e74e1501e2b2bf1b28457ab60739c723b', 'JOHN BIN', 'MAKAMBI', 'GJOE', NULL, '202cb962ac59075b964b07152d234b70', 'BWIZA', '68521452', 2, '', '2019-10-30 10:46:16', 1),
(25, 'userd62f55952ac9d62946db0c66b8e2a17d3dd8c38a', 'Niyo', 'Christian', 'christian', NULL, '4a7d1ed414474e4033ac29ccb8653d9b', 'Asiatiqu', '00000', 3, '', '2019-11-02 13:08:29', 1),
(26, 'userc74cff9d77a591c1c14599e4fe343bf06a2e9346', 'bee', 'ldshljkdh', 'dhd', NULL, '202cb962ac59075b964b07152d234b70', 'dkjd', 'kdhkd', 3, '', '2019-11-15 07:57:59', 1),
(27, 'utid2d6a028f1b41fa1ca80d91faf0d569d337dc0e0', 'ben', 'eje', 'gbm', NULL, '202cb962ac59075b964b07152d234b70', 'jeje', '5525', 2, '', '2019-11-19 06:46:14', 1),
(28, 'user84537d2becbc32481009c8aa18d8732bc5c537a0', 'BEN', 'GAEL', 'gaga2', NULL, '202cb962ac59075b964b07152d234b70', 'G', '452100', 3, '', '2019-11-19 07:04:44', 1),
(29, 'user7c73ce6b58bf69710b8dec8b67e00f83084e750b', 'vdvd', 'hawhwh', 'bbb', NULL, '202cb962ac59075b964b07152d234b70', 'hwh', '352222', 3, '', '2019-11-19 07:56:30', 1),
(30, 'uti1e9a22ddd483501cf4c2fde405cef80c839f7254', 'ddd', 'ddd', 'dds', NULL, '202cb962ac59075b964b07152d234b70', 'd120', '5222', 1, '', '2019-11-19 13:23:41', 1),
(31, 'uti90cb1c52d4caf2133f9beee217fcc89beb1b1dc6', 'ddd', 'fddf', 'ddd1', NULL, '202cb962ac59075b964b07152d234b70', 'ddd', '27478', 2, '', '2019-11-19 13:24:34', 1),
(32, 'uti3b3d66243851ed2c2a5e833141b09364bc188a1b', 'test', 'tsts', 'tsts', NULL, '202cb962ac59075b964b07152d234b70', 'tsts', 'tsts', 2, '', '2019-11-19 14:57:45', 1),
(33, 'utif0ed2c9c486c52c7244eb4197f0ff83bf1cd862b', 'ccc', 'ss', 'sss', NULL, '202cb962ac59075b964b07152d234b70', 'ss', 'ss', 2, '', '2019-11-19 14:58:04', 1),
(34, 'userd332efa4052896669fdd195099fcd218d6768ed4', 'Josue', 'Josh', 'josh', NULL, '202cb962ac59075b964b07152d234b70', 'bwiza', '4514562', 3, './upload/produit/avatar5.jpg', '2020-01-21 07:35:53', 1),
(35, 'comptef7780a4d1bd8e402e396b4423c02d430e7416f59', 'Y', 'Y', 'y', 'Masculin', '25d55ad283aa400af464c76d713c07ad', NULL, '+2576961595', 3, NULL, '2020-07-06 12:24:04', 1),
(36, 'compte240b2b1f9cd69371451daf9a7955e5a9eb1f7c31', 'Y', 'Y', 'y2', 'Masculin', '25d55ad283aa400af464c76d713c07ad', NULL, '+2576961595', 3, NULL, '2020-07-06 12:25:33', 1),
(37, 'compte732ed725121a78361198e6971d007ad6807a71b6', 'J', 'J', 'J', 'Masculin', '25d55ad283aa400af464c76d713c07ad', NULL, '+256965212', 3, NULL, '2020-07-06 12:29:14', 1),
(38, 'comptef7835a4175c07782a74f451fbcf176fd9235d70d', 'YENNE', 'KOKO', 'Yenne', 'Masculin', '25d55ad283aa400af464c76d713c07ad', NULL, '69615952', 3, NULL, '2020-07-07 12:49:56', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
