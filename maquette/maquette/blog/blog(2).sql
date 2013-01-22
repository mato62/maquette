-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Jeu 17 Janvier 2013 à 17:12
-- Version du serveur: 5.5.24-log
-- Version de PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) NOT NULL,
  `texte` text NOT NULL,
  `date` int(11) NOT NULL,
  `id_tag` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
  
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `texte`, `date`, `id_tag`) VALUES
(2, 'scie', 'marque stanley très tranchante =)', 1348040000, 0),
(4, 'tronçoneuse', 'édition limité !', 1348040024, 0),
(8, 'test date', 'est-ce bon ?', 1347980206, 0),
(11, 'naruto', 'uzumaki hoho', 1348579716, 0),
(13, 'borderlands 2', 'C''est trop de la balle !!!', 1349189580, 0),
(14, 'test', 'petit test pour avoir plus d''article', 1349195337, 0),
(18, 'Blog', 'Le prof va nous dire quand nous devrons lui envoyer la maquette du blog !', 1353329036, 0),
(22, 'robert', 'patrick chirac !!!', 1353332662, 0),
(24, 'test 1045', 'test pour tester', 1355233130, 0),
(25, 'test 1046', 'ca commence à être lourd !', 1355233214, 0),
(31, 'titi', 'et grossifflet!', 1355237994, 0),
(32, 'Benzema', 'Aujourd''hui, après une interview avec Karim Benzema attaquant des Bleus mais aussi du Real Madrid nous confirmé que son avenir se jouerait au Real et non au PSG comme les rumeurs l''indiqué !\r\n', 1355844199, 0),
(33, 're test', 'encore un test =)', 1358440041, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_libelle` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `mdp` varchar(30) NOT NULL,
  `sid` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `email`, `mdp`, `sid`) VALUES
(1, 'mato@gmail.com', '010691', '4bc32f2ba16f8242338b6fdea95b9b9c');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
