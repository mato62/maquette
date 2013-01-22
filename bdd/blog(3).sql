-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Client: localhost
-- Généré le: Lun 21 Janvier 2013 à 16:55
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
  `tag` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `id_2` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=57 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `texte`, `date`, `tag`) VALUES
(47, 'Baup «pessimiste» pour Sissoko', 'Ce lundi en conférence de presse, Elie Baup a fait le point sur le mercato hivernal de l''Olympique de Marseille. Concernant l''éventuelle venue de l''attaquant sénégalais de Cluj (Roumanie), Modou Sougou, l''entraîneur marseillais a indiqué : «On en est juste au stade des négociations».\r\n\r\nQuant à Moussa Sissoko (Toulouse), «ça tarde, a confié Elie Baup. Si je dois donner une tendance sur sa venue je suis plus pessimiste qu''optimiste». (Photo Presse-Sports)', 1358786514, 'om'),
(48, 'Béria touché', 'Obligé de céder sa place à Djibril Sidibé à la pause dimanche face à Nice (0-2, 21e j. de L1), Franck Béria souffre d''une cuisse. Le défenseur lillois de 29 ans doit passer des examens médicaux complémentaires pour déterminer la gravité de sa blessure (contracture ou élongation). Il est, pour l''heure, incertain pour le déplacement du LOSC à Plabennec (CFA) ce jeudi (20h55) lors des 16es de finale de la Coupe de France. (Photo Presse-Sports)\r\n\r\nAbsents contre les Niçois, Rio Mavuba (quadriceps) et Tulio De Melo (reprise) sont également incertains.', 1358786559, 'losc'),
(49, 'Sirigu se rapproche de Lama', 'Salvatore Sirigu, qui n''a plus encaissé le moindre but en Ligue 1 depuis 685 minutes, se rapproche du record d''invincibilité du Paris Saint-Germain détenu par un certain Bernard Lama. Lors de la saison 1996-1997, l''ancien international français était resté invaincu durant 699 minutes. Encore un petit effort pour Sirigu, face à Lille dimanche prochain, et il détrônera l''un des gardiens emblématiques du club parisien. (Photo Presse-Sports)', 1358786598, 'psg'),
(50, ' La Chasse au Gros Gibier de Sir Hammerlock', ' La Chasse au Gros Gibier de Sir Hammerlock sur PC est une extension pour le FPS Borderlands 2. Elle nous place dans le cadre d''un week-end de chasse en compagnie de Sir Hammerlock et propose 5 missions principales, 12 quêtes annexes, un nouveau véhicule (l''hydroglisseur) et un nouveau boss de groupe pour les personnages de niveau 50.', 1358786771, 'pc'),
(51, 'Nice au pied du podium !', 'Une semaine après avoir corrigé Valenciennes (5-0), Nice a confirmé sa bonne forme du moment en allant s''imposer à Lille, dimanche (2-0). Les Aiglons passent quatrièmes, alors que le Losc reste scotché à la dixième place. (Photo Reuters)\r\n\r\nSi 2012 s''était terminé sur une vilaine défaite à Lyon (0-3), Nice semble être parti sur de tout autres bases en 2013. Solides et réalistes à Lille, ce dimanche (2-0), les hommes de Claude Puel sont allés chercher dans le Nord leur troisièmes succès de l''année, en autant de rencontres (3-2 à Metz en Coupe, 5-0 face à Valenciennes en Ligue 1). Malgré une première période plutôt équilibrée, et assez pauvre en occasions franches, hormis un duel perdu par le très remuant Payet face à Ospina (40e), les Aiglons ont fait la différence après le repos.\r\n\r\nCivelli a d''abord profité d''un coup franc parfait de Bauthéac pour donner, de la tête, l''avantage aux siens (76e). Puis le jeune Maupay, entré en jeu quelques minutes plus tôt en lieu et place de Cvitanich, pour une fois resté muet, a doublé la mise en reprenant de près un centre tendu et puissant de Genevois (85e). Sonnés, les Lillois, certainement fatigués par leur match à rallonge de Coupe de la Ligue, mardi à Saint-Etienne (0-0 a.p., 6 à 7 aux tab), n''ont jamais semblé capables de réagir. Dixièmes, ils pointent désormais à cinq points de l''Europe. Et de Nice, quatrième et plus que jamais candidat à un ticket européen.', 1358786746, 'nice'),
(52, 'Naruto Shippuden : Ultimate Ninja Storm 3', 'Namco Bandai nous informe que Naruto Shippuden : Ultimate Ninja Storm 3 paraîtra finalement le 8 mars prochain sur PS3. L''éditeur nous prévient également que les premiers exemplaires vendus comprendront deux sympathiques bonus : un code donnant la possibilité de télécharger un costume Dragon Ball Z Goku exclusif pour Naruto ainsi qu''une carte de collection. Ces items étant assez rares, Namco conseille évidemment de précommander le jeu pour être sûr d''y avoir accès.', 1358786848, 'ps3'),
(53, 'Ribéry et Benzema en correctionnelle fin juin', 'Accusés d''avoir eu recours aux services d''une prostituée mineure, Franck Ribéry et Karim Benzema, cités dans l''affaire Zahia, comparaîtront en juin prochain devant le tribunal correctionnel de Paris. Le procès, où seront jugés six autres prévenus, se déroulera les 18, 19, 25 et 26 juin.\r\n\r\nAu cours de l''enquête, Zahia, une jeune prostituée, a affirmé aux policiers avoir eu des relations tarifées avec les deux joueurs alors qu''elle était mineure. Elle a ensuite assuré que ces derniers ignoraient qu''elle n''avait pas 18 ans. Le milieu de terrain du Bayern Munich a affirmé qu''il n''avait effectivement pas connaissance de son âge, tandis que l''attaquant madrilène a nié avoir eu des relations sexuelles avec elle. Ils encourent trois ans de prison et 45 000 euros d''amende. (AFP - Photo Presse-Sports)', 1358786946, 'france'),
(54, 'Lloris «reconnaissant» envers Deschamps', 'Désormais titulaire dans le but de Tottenham après avoir débuté la saison en tant que doublure de Brad Friedel, Hugo Lloris a tenu à revenir sur le soutien apporté par le sélectionneur de l''équipe de France, Didier Deschamps.\r\n\r\n«Ça fait toujours du bien d''avoir le soutien du sélectionneur. Là-dessus, je suis très reconnaissant parce que la situation n''était pas évidente, a ainsi affirmé l''ancien portier lyonnais ce mercredi, sur RMC. Ça m''a permis de garder cette sérénité avec la sélection. L''équipe de France, c''est quelque chose de très important pour moi. On se doit de retrouver une grande équipe de France et on travaille pour ça. Ce qu''on fait depuis le début de la saison, c''est très bien et il faut continuer.» (Photo Presse-Sports)', 1358786981, 'france'),
(56, 'Splinter Cell Blacklist', 'Dans Splinter Cell Blacklist sur PC, Sam Fisher enquête sur une opération terroriste menaçant le territoire américain : la Blacklist. Pour parvenir à ses fins et empêcher cette attaque massive envers votre patrie, il pourra compter sur un arsenal étendu de gadgets, ainsi que sur le nouveau système de "Killing in Motion", sans oublier bien sûr des méthodes d''interrogatoire brutales, mais efficaces !', 1358787101, 'pc');

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
(1, 'mato@gmail.com', '010691', '3507a985edda3c2deb469b1bf64a89e3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
