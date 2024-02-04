-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 04 fév. 2024 à 22:48
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `qcm`
--

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id_quest` int(11) NOT NULL,
  `quest` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id_quest`, `quest`) VALUES
(1, 'Quelle est la capitale de Suisse ?'),
(2, 'Quelle est la capitale de l\'Inde ?'),
(3, 'Quelle est la monnaie de l\'Afrique du Sud ? '),
(4, 'Quelle est la capitale de Botswana ?'),
(5, 'Quelle est la caplitale de Comores ?'),
(6, 'Quelle est la monnaie de Somalie ?'),
(7, 'Quelle est la capitale de Mauritanie ?'),
(8, 'Quel est le taux de chômage aux Etats-Unis en 2021 ?'),
(9, 'Quel est le plus grand média social parmi les adolescents ?'),
(11, 'ysfdfhfkshhsk'),
(12, 'hjsgdfhkjshk'),
(158, 'jgvigukb');

-- --------------------------------------------------------

--
-- Structure de la table `question1`
--

CREATE TABLE `question1` (
  `id_quest` int(11) NOT NULL,
  `quest1` text NOT NULL,
  `juge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `question1`
--

INSERT INTO `question1` (`id_quest`, `quest1`, `juge`) VALUES
(1, 'Suicky', 0),
(2, 'New Dheli', 0),
(3, 'Franc Sud Africain', 0),
(4, 'Kalahari', 0),
(5, 'Morroni', 0),
(6, 'Rand', 0),
(7, 'Nuakchott', 0),
(8, '4.7', 0),
(9, 'Facebook', 0);

-- --------------------------------------------------------

--
-- Structure de la table `question2`
--

CREATE TABLE `question2` (
  `id_quest` int(11) NOT NULL,
  `quest2` text NOT NULL,
  `juge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `question2`
--

INSERT INTO `question2` (`id_quest`, `quest2`, `juge`) VALUES
(1, 'Buenos Aires', 0),
(2, 'New Deli', 0),
(3, 'Pula', 0),
(4, 'Tswana', 0),
(5, 'Comore', 0),
(6, 'Yang', 0),
(7, 'Nukdusho', 0),
(8, '5.7', 0),
(9, 'WhatsApp', 0);

-- --------------------------------------------------------

--
-- Structure de la table `question3`
--

CREATE TABLE `question3` (
  `id_quest` int(11) NOT NULL,
  `quest3` text NOT NULL,
  `juge` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `question3`
--

INSERT INTO `question3` (`id_quest`, `quest3`, `juge`) VALUES
(1, 'Moscou', 0),
(2, 'New Hili', 0),
(3, 'Livre', 0),
(4, 'Shona', 0),
(5, 'Masure', 0),
(6, 'New Hili', 0),
(7, 'Mukdusho', 0),
(8, '7.7', 0),
(9, 'Télégramme', 0);

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `id_quest` int(11) NOT NULL,
  `quest_res` text NOT NULL,
  `juge` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `reponse`
--

INSERT INTO `reponse` (`id_quest`, `quest_res`, `juge`) VALUES
(1, 'Berne', '1'),
(2, 'New Delhi', '1'),
(3, 'Rand', '1'),
(4, 'Gaborone', '1'),
(5, 'Moroni', '1'),
(6, 'Shilling', '1'),
(7, 'Nouakchott', '1'),
(8, '6.7', '1'),
(9, 'TikTok', '1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id_quest`);

--
-- Index pour la table `question1`
--
ALTER TABLE `question1`
  ADD PRIMARY KEY (`id_quest`);

--
-- Index pour la table `question2`
--
ALTER TABLE `question2`
  ADD PRIMARY KEY (`id_quest`);

--
-- Index pour la table `question3`
--
ALTER TABLE `question3`
  ADD PRIMARY KEY (`id_quest`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id_quest`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id_quest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT pour la table `question1`
--
ALTER TABLE `question1`
  MODIFY `id_quest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `question2`
--
ALTER TABLE `question2`
  MODIFY `id_quest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `question3`
--
ALTER TABLE `question3`
  MODIFY `id_quest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `id_quest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
