-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 04 fév. 2024 à 22:44
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

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `question3`
--
ALTER TABLE `question3`
  ADD PRIMARY KEY (`id_quest`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `question3`
--
ALTER TABLE `question3`
  MODIFY `id_quest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
