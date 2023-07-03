-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 10 juin 2023 à 16:58
-- Version du serveur : 10.4.25-MariaDB
-- Version de PHP : 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `espace_scolaire`
--

-- --------------------------------------------------------

--
-- Structure de la table `absence`
--

CREATE TABLE `absence` (
  `absence_id` int(11) NOT NULL,
  `absence_user` int(11) NOT NULL,
  `absence_date` date NOT NULL,
  `absence_module` int(11) NOT NULL,
  `id_seance` int(11) NOT NULL,
  `absence_annee` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `absence`
--

INSERT INTO `absence` (`absence_id`, `absence_user`, `absence_date`, `absence_module`, `id_seance`, `absence_annee`) VALUES
(31, 13, '2023-06-12', 4, 1, '2023'),
(32, 13, '2023-06-05', 4, 2, '2023'),
(33, 13, '2023-06-12', 4, 2, '2023'),
(34, 14, '2023-06-05', 4, 1, '2023'),
(35, 13, '2023-05-08', 4, 1, '2023');

-- --------------------------------------------------------

--
-- Structure de la table `activities`
--

CREATE TABLE `activities` (
  `activity_id` int(11) NOT NULL,
  `activity_person` int(11) NOT NULL DEFAULT 44,
  `activity_content` varchar(255) NOT NULL,
  `activity_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `activities`
--

INSERT INTO `activities` (`activity_id`, `activity_person`, `activity_content`, `activity_date`) VALUES
(1, 44, 'Ajout du prof cc', '2023-04-21 17:00:19'),
(2, 44, 'Vous avez ajouté leu département cc', '2023-04-21 17:09:11'),
(3, 44, 'Vous avez supprimé le déparrtement ', '2023-04-21 17:09:15'),
(6, 44, 'Vous avez ajouté la class HHHHHHHHHHHH', '2023-04-21 17:15:25'),
(7, 44, 'Vous avez supprimé la classe HHHHHHHHHHHH', '2023-04-21 17:15:30'),
(8, 44, 'Vous avez ajouté le module model test', '2023-04-21 17:17:30'),
(9, 44, 'Vous avez supprimé le module model test', '2023-04-21 17:17:37'),
(10, 44, 'Vous avez ajouté le module nn', '2023-04-21 17:43:33'),
(11, 44, 'Vous avez ajoté l\'enseignant prof test', '2023-04-23 17:02:19'),
(12, 22, ' a ajouté un cours dans le module Linux', '2023-04-23 17:22:00'),
(14, 22, ' a ajouté les notes du module Data Structures du class 1eme annee informatique', '2023-04-23 17:41:49'),
(15, 9, ' a demandé Attestation scolaire', '2023-04-23 17:45:37'),
(16, 44, 'Vous avez ajouté une nouvautée ( Demain il n\'aura pas un cours ) ', '2023-05-15 09:25:32'),
(17, 22, ' a ajouté un cours pour le module Linux', '2023-05-15 09:47:58'),
(18, 22, ' a ajouté un cours pour le module Linux', '2023-05-15 10:33:07'),
(19, 22, ' a demandé Attestation de service', '2023-05-15 10:58:59'),
(20, 22, ' a demandé Demandes de rattrapage des séances', '2023-05-15 10:59:56'),
(21, 44, 'prof1 fullname a ajouté les notes du module Linux du class 1eme annee informatique', '2023-05-21 12:02:57'),
(22, 44, 'Vous avez ajouté la fillière CP3', '2023-05-21 12:40:16'),
(23, 44, 'Vous avez supprimé la fillière CP3', '2023-05-21 12:40:23'),
(24, 44, 'Vous avez ajouté la fillière CP3', '2023-05-21 14:29:51'),
(25, 22, 'a ajouté un devoir au module Linux', '2023-05-21 15:03:12'),
(26, 22, ' a ajouté un cours pour le module Data Structures', '2023-05-21 15:10:48'),
(27, 22, ' a ajouté un cours pour le module Linux', '2023-05-21 15:17:03'),
(28, 22, 'a ajouté un devoir au module Linux', '2023-05-21 15:21:38'),
(29, 22, ' a ajouté les notes du module Linux du class 1eme annee informatique', '2023-05-21 15:24:48'),
(30, 22, ' a ajouté les notes du module Linux du class 1eme annee informatique', '2023-05-21 15:28:34'),
(31, 22, ' a demandé Congés et autorisations d\'absence', '2023-05-21 15:54:28'),
(32, 22, ' a demandé Congés et autorisations d\'absence', '2023-05-21 15:55:14'),
(33, 22, ' a demandé Congés et autorisations d\'absence', '2023-05-21 15:56:24'),
(34, 22, ' a demandé Congés et autorisations d\'absence', '2023-05-21 15:57:59'),
(35, 22, ' a demandé Congés et autorisations d\'absence', '2023-05-21 15:58:21'),
(36, 22, ' a demandé Congés et autorisations d\'absence', '2023-05-21 16:05:39'),
(37, 22, ' a demandé Congés et autorisations d\'absence', '2023-05-21 16:07:13'),
(38, 22, ' a demandé Autorisations de recherche ou de publication', '2023-05-21 16:09:41'),
(39, 22, ' a demandé Autorisations de recherche ou de publication', '2023-05-21 16:11:02'),
(40, 44, 'Vous avez ajouté le module module test', '2023-05-21 16:23:55'),
(41, 22, ' a ajouté les notes du module Data Structures du class 1eme annee informatique', '2023-05-23 13:57:56'),
(42, 22, ' a ajouté les notes du module module test du class CP1', '2023-05-29 11:19:56'),
(43, 34, ' a ajouté les notes du module Java du class 1eme annee informatique', '2023-05-29 11:21:01'),
(44, 34, ' a ajouté les notes du module Uml du class 1eme annee informatique', '2023-05-29 11:21:19'),
(45, 40, ' a ajouté les notes du module JEE du class 3eme annee informatique', '2023-06-04 17:49:08'),
(46, 37, ' a ajouté les notes du module PFE du class 3eme annee informatique', '2023-06-04 17:49:42'),
(47, 39, ' a ajouté les notes du module mobile du class 2eme annee informatique', '2023-06-04 17:50:24'),
(48, 39, ' a ajouté les notes du module BlockChain du class 3eme annee informatique', '2023-06-04 17:51:02'),
(49, 22, ' a ajouté les notes du module  Java avancée du class 3eme année gtr', '2023-06-05 15:24:05'),
(50, 43, ' a ajouté les notes du module Analyse1 du class CP1', '2023-06-05 15:54:56'),
(51, 43, ' a ajouté les notes du module Algèbre1 du class CP1', '2023-06-05 15:55:38'),
(52, 37, ' a ajouté les notes du module Analyse3 du class CP2', '2023-06-05 19:23:32'),
(53, 37, ' a ajouté les notes du module Algèbre3 du class CP2', '2023-06-05 19:23:44'),
(54, 36, ' a ajouté les notes du module Signal électrique du class 1eme année gtr', '2023-06-05 19:25:17'),
(55, 36, ' a ajouté les notes du module electronique analogique  du class 1eme année gtr', '2023-06-05 19:25:29'),
(56, 36, ' a ajouté les notes du module Sécurité des réseaux et Systèmes du class 3eme année gtr', '2023-06-05 19:25:44'),
(57, 39, ' a ajouté les notes du module Qualité, Hygiène Sécurité  et Environnement  du class 3ème année industrile', '2023-06-05 19:27:29'),
(58, 40, ' a ajouté les notes du module Technologie avion, hélicoptère, aéronef, électricité et systèmes de bord du class 2eme année aéronautique', '2023-06-05 19:28:01'),
(59, 41, ' a ajouté les notes du module analyse de données du class 2eme annee informatique', '2023-06-05 19:28:29'),
(60, 41, ' a ajouté les notes du module  Management de l\'innovation du class 3ème année industrile', '2023-06-05 19:28:43'),
(61, 42, ' a ajouté les notes du module cloud du class 2eme annee informatique', '2023-06-05 19:29:12'),
(62, 42, ' a ajouté les notes du module  Technologie des hélices du class 2eme année aéronautique', '2023-06-05 19:29:22'),
(63, 43, ' a ajouté les notes du module Recyclage Et Energie Renouvlable du class 3eme année gpma', '2023-06-05 19:30:07'),
(64, 43, ' a ajouté les notes du module Céramiques avancées du class 3eme année gpma', '2023-06-05 19:30:22'),
(65, 40, ' a ajouté les notes du module PFE du class 3eme année gpma', '2023-06-05 20:05:48'),
(66, 40, ' a ajouté les notes du module PFE du class 3eme année gtr', '2023-06-05 20:06:12'),
(67, 42, ' a ajouté les notes du module PFE du class 3ème année industrile', '2023-06-05 20:06:38'),
(68, 42, ' a ajouté les notes du module Mécanique des points du class CP1', '2023-06-05 20:26:28'),
(69, 38, ' a ajouté les notes du module Mécanique du solide du class CP2', '2023-06-05 20:27:57'),
(70, 38, ' a ajouté les notes du module Mécanique fluide du class CP2', '2023-06-05 20:28:08'),
(71, 38, ' a ajouté les notes du module Data science du class 2eme annee informatique', '2023-06-05 20:28:49'),
(72, 37, ' a ajouté les notes du module Architecture des systèmes du class 1eme année gtr', '2023-06-05 20:31:06'),
(73, 37, ' a ajouté les notes du module Architecture des ordinatures du class 1eme année gtr', '2023-06-05 20:31:20'),
(74, 40, ' a ajouté les notes du module Lean six sigma et Manufacturing du class 2eme année aéronautique', '2023-06-05 20:32:36'),
(75, 39, ' a ajouté les notes du module  Systèmes embarqués II du class 2eme année aéronautique', '2023-06-05 20:32:58'),
(76, 37, ' a ajouté les notes du module Analyse3 du class CP2', '2023-06-06 12:41:04'),
(77, 37, ' a ajouté les notes du module Algèbre3 du class CP2', '2023-06-06 12:41:56'),
(78, 38, ' a ajouté les notes du module Mécanique du solide du class CP2', '2023-06-06 12:43:11'),
(79, 38, ' a ajouté les notes du module Mécanique fluide du class CP2', '2023-06-06 12:44:01'),
(80, 22, ' a ajouté les notes du module Linux du class 1eme annee informatique', '2023-06-10 09:20:02');

-- --------------------------------------------------------

--
-- Structure de la table `ajoune`
--

CREATE TABLE `ajoune` (
  `ajourne_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `anne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `classement_filliere`
--

CREATE TABLE `classement_filliere` (
  `classement_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `classement_value` varchar(10) NOT NULL,
  `annee` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `classement_filliere`
--

INSERT INTO `classement_filliere` (`classement_id`, `user_id`, `classement_value`, `annee`) VALUES
(2, 11, '1,2,3,4,5', '2023'),
(7, 12, '1,2,5,3,4', '2023'),
(8, 63, '1,2,3,4,5', '2023'),
(9, 64, '1,2,3,4,5', '2023'),
(10, 65, '1,2,3,4,5', '2023'),
(11, 66, '1,2,3,4,5', '2023'),
(12, 67, '3,1,2,4,5', '2023'),
(13, 68, '1,2,3,4,5', '2023'),
(14, 69, '1,2,3,4,5', '2023'),
(15, 70, '1,2,3,4,5', '2023');

-- --------------------------------------------------------

--
-- Structure de la table `classes`
--

CREATE TABLE `classes` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `seuil` float NOT NULL DEFAULT 10,
  `filliere_id` int(11) NOT NULL,
  `niveau` int(11) NOT NULL DEFAULT 1,
  `size` int(20) NOT NULL DEFAULT 2
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `classes`
--

INSERT INTO `classes` (`class_id`, `class_name`, `seuil`, `filliere_id`, `niveau`, `size`) VALUES
(1, '1eme annee informatique', 12, 1, 3, 2),
(2, '2eme annee informatique', 10, 1, 4, 2),
(3, '3eme annee informatique', 10, 1, 5, 2),
(4, '1eme anne industriel', 10, 2, 3, 2),
(5, '2ème année industrile', 10, 2, 4, 2),
(6, '3ème année industrile', 10, 2, 5, 2),
(7, '1eme année aéronautique', 10, 5, 3, 2),
(8, '2eme année aéronautique', 10, 5, 4, 2),
(9, '1eme année gtr', 10, 3, 3, 2),
(10, '2eme année gtr', 10, 3, 4, 2),
(11, '3eme année gtr', 10, 3, 5, 2),
(12, '1eme année gpma', 10, 4, 3, 2),
(13, '2eme année gpma', 10, 4, 4, 2),
(14, '3eme année gpma', 10, 4, 5, 2),
(15, 'CP1', 10, 7, 1, 10),
(16, 'CP2', 10, 7, 2, 10),
(23, '3eme année aéronautique', 12, 5, 5, 2);

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `cour_id` int(11) NOT NULL,
  `cour_name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `module_id` int(11) NOT NULL,
  `prof_id` int(11) NOT NULL,
  `date_pub` datetime NOT NULL DEFAULT current_timestamp(),
  `cour_annee` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`cour_id`, `cour_name`, `filename`, `module_id`, `prof_id`, `date_pub`, `cour_annee`) VALUES
(8, 'ooo', 'Modele.png', 9, 22, '0000-00-00 00:00:00', '2023'),
(20, 'eee', 'assets/Cours/67722771945_4.jpg', 4, 22, '2023-04-09 13:33:57', '2023'),
(22, 'Cours test', 'assets/Cours/28686805959_ML_PART1.pdf', 14, 42, '2023-04-17 17:37:45', '2023'),
(23, 'sss', 'assets/Cours/88519844098_iris.csv', 14, 42, '2023-04-17 17:50:18', '2023'),
(24, 'oo', 'assets/Cours/20492241504_iris1.csv', 14, 42, '2023-04-17 17:51:12', '2023'),
(25, 'oo', 'assets/Cours/8032621030_iris1.csv', 14, 42, '2023-04-17 17:51:36', '2023'),
(26, 'test cours for activities', 'assets/Cours/83709539501_test.py', 4, 22, '2023-04-23 17:22:00', '2023'),
(28, 'COURS TEST FOT TIME', 'assets/Cours/3791021874_star.png', 4, 22, '2023-05-15 10:33:07', '2023'),
(29, 'TF Isam', 'assets/Cours/38884766296_Réalisation.pdf', 6, 22, '2023-05-21 15:10:48', '2023'),
(30, 'logo php', 'assets/Cours/29396727931_php.jfif', 4, 22, '2023-05-21 15:17:03', '2023'),
(31, 'cour ancien 2022', 'cour_ancien_2022', 4, 22, '2023-06-03 17:55:46', '2022');

-- --------------------------------------------------------

--
-- Structure de la table `departement`
--

CREATE TABLE `departement` (
  `departement_id` int(11) NOT NULL,
  `departement_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `departement`
--

INSERT INTO `departement` (`departement_id`, `departement_name`) VALUES
(2, 'Industriel'),
(1, 'Informatique'),
(3, 'STI');

-- --------------------------------------------------------

--
-- Structure de la table `emploidetemps`
--

CREATE TABLE `emploidetemps` (
  `id` int(11) NOT NULL,
  `id_module` int(11) NOT NULL,
  `id_prof` int(11) NOT NULL,
  `dddd` int(11) DEFAULT NULL,
  `id_jour` int(11) NOT NULL,
  `id_temps` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `emploidetemps`
--

INSERT INTO `emploidetemps` (`id`, `id_module`, `id_prof`, `dddd`, `id_jour`, `id_temps`) VALUES
(1, 4, 22, NULL, 1, 1),
(2, 4, 22, NULL, 1, 2),
(3, 27, 22, NULL, 4, 3),
(4, 27, 22, NULL, 4, 4),
(5, 6, 22, NULL, 5, 1),
(6, 6, 22, NULL, 5, 2),
(7, 4, 22, NULL, 1, 1),
(8, 7, 34, NULL, 1, 1),
(9, 5, 34, NULL, 1, 1),
(10, 4, 22, NULL, 3, 3),
(11, 4, 22, NULL, 3, 4);

-- --------------------------------------------------------

--
-- Structure de la table `filliere`
--

CREATE TABLE `filliere` (
  `filliere_id` int(11) NOT NULL,
  `filliere_name` varchar(255) NOT NULL,
  `departement_id` int(11) NOT NULL,
  `niveau` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `filliere`
--

INSERT INTO `filliere` (`filliere_id`, `filliere_name`, `departement_id`, `niveau`) VALUES
(1, 'Génie informatique', 1, 1),
(2, 'Génie industriel', 2, 1),
(3, 'Génie réseau et télécommes', 1, 1),
(4, 'Génie de procédères et matériaux', 2, 1),
(5, 'Génie aéronotique et téchnologie de l\'espace', 1, 1),
(7, 'TSI', 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `historique_note`
--

CREATE TABLE `historique_note` (
  `note_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `note_value` decimal(4,2) NOT NULL,
  `annee` int(11) NOT NULL,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `historique_note`
--

INSERT INTO `historique_note` (`note_id`, `student_id`, `note_value`, `annee`, `class_id`) VALUES
(1, 56, '12.43', 2021, 1),
(2, 57, '13.55', 2021, 1),
(3, 56, '14.50', 2022, 2),
(4, 57, '12.97', 2022, 2),
(5, 62, '12.50', 2021, 12),
(6, 60, '14.50', 2021, 4),
(7, 60, '13.00', 2022, 5),
(8, 61, '16.00', 2021, 4),
(9, 61, '15.00', 2022, 5),
(10, 58, '14.25', 2021, 9),
(11, 58, '13.50', 2022, 10),
(12, 59, '13.75', 2021, 9),
(13, 59, '14.50', 2022, 10);

-- --------------------------------------------------------

--
-- Structure de la table `laureats`
--

CREATE TABLE `laureats` (
  `laureat_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `filliere_id` int(11) NOT NULL,
  `moyenne` decimal(4,2) NOT NULL,
  `annee` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `message_content` varchar(255) NOT NULL,
  `message_user` varchar(255) NOT NULL,
  `message_statut` int(11) NOT NULL DEFAULT 0,
  `message_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `messages`
--

INSERT INTO `messages` (`message_id`, `message_content`, `message_user`, `message_statut`, `message_date`) VALUES
(1, 'Hi I want a school certificate Hi I want a school certificate Hi I want a school certificate Hi I want a school certificate Hi I want a school certificate Hi I want a school certificate Hi I want a school certificate Hi I want a school certificate Hi I wa', 'student1 fullname', 1, '2023-05-31 20:35:32'),
(2, 'Hi everyone', 'student1 fullname', 1, '2023-05-31 20:35:32'),
(3, 'Hi everyone', 'student1 fullname', 0, '2023-05-31 20:35:32'),
(4, 'Hi everyone', 'student1 fullname', 0, '2023-05-31 20:35:32'),
(5, 'Hi everyone', 'student1 fullname', 0, '2023-05-31 20:35:32'),
(7, 'pppppppppp', 'student1 fullname', 0, '2023-05-31 20:35:32'),
(9, 'cccccccccccccccc', 'prof1 fullname', 0, '2023-05-31 20:35:32'),
(10, 'cccccccccccccccc', 'prof1 fullname', 0, '2023-05-31 20:35:32');

-- --------------------------------------------------------

--
-- Structure de la table `messanger`
--

CREATE TABLE `messanger` (
  `message_id` int(11) NOT NULL,
  `message_content` varchar(255) NOT NULL,
  `message_sender` int(11) NOT NULL,
  `message_receptor` int(11) NOT NULL,
  `message_time` datetime NOT NULL DEFAULT current_timestamp(),
  `message_isSeen` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `messanger`
--

INSERT INTO `messanger` (`message_id`, `message_content`, `message_sender`, `message_receptor`, `message_time`, `message_isSeen`) VALUES
(1, 'Hi stuent2', 9, 10, '2023-03-08 19:45:56', 1),
(3, 'Fine student1 and you ?', 10, 9, '2023-03-09 10:33:12', 1),
(4, 'Can I help you in something ?', 10, 9, '2023-03-09 10:43:19', 1),
(5, 'Nothing i just want to questionne about you', 9, 10, '2023-03-09 11:30:09', 1),
(6, 'How are you ?', 9, 10, '2023-03-09 11:31:33', 1),
(7, 'how do you pass your exam ?', 9, 10, '2023-03-09 11:32:01', 1),
(8, 'is good ?', 9, 10, '2023-03-09 11:33:23', 1),
(9, 'why you  dont talk ?', 9, 10, '2023-03-09 11:33:53', 1),
(10, 'I&#039;m fine Thanks for questionne ', 10, 9, '2023-03-09 11:44:17', 1),
(11, 'About the examen it was amazing', 10, 9, '2023-03-09 11:44:35', 1),
(13, 'what about you ?', 10, 9, '2023-03-09 12:11:07', 1),
(14, 'Hi Mr prof10', 10, 42, '2023-03-09 12:25:56', 1),
(15, 'prof10 HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH', 10, 42, '2023-03-09 12:26:11', 1),
(16, 'like you ', 9, 10, '2023-03-09 15:13:27', 1),
(17, 'fffff', 22, 13, '2023-03-09 20:48:44', 1),
(18, 'Hi Mr prof10', 9, 42, '2023-03-09 20:49:17', 1),
(19, 'Hello student10 Can I help you ?', 42, 9, '2023-03-09 20:50:04', 1),
(20, 'Yes please I just want a reponse about a question', 9, 42, '2023-03-09 20:50:31', 1),
(21, 'Ok what is it ?', 42, 9, '2023-03-09 20:50:45', 1),
(28, 'HI A3WZTANI', 9, 42, '2023-03-09 21:08:10', 1),
(29, 'hi', 42, 9, '2023-03-09 21:09:38', 1),
(30, 'ax biti', 42, 9, '2023-03-09 21:09:42', 1),
(31, '?', 42, 9, '2023-03-09 21:09:46', 1),
(32, 'ddddd', 9, 42, '2023-03-09 21:19:49', 1),
(33, 'oprppr', 9, 42, '2023-03-09 21:19:52', 1),
(34, 'fhhfle', 42, 9, '2023-03-09 21:30:04', 1),
(35, 'kk', 9, 42, '2023-03-09 21:45:47', 1),
(36, 'Nothing i just want to questionne about you Nothing i just want to questionne about you Nothing i just want to questionne about you', 9, 42, '2023-03-09 21:48:03', 1),
(37, 'test', 42, 9, '2023-03-09 22:40:53', 1),
(40, 'cv ?', 9, 10, '2023-03-09 22:55:22', 1),
(43, 'HI', 9, 10, '2023-03-10 20:15:51', 1),
(45, 'prof10 DKKKKKKKKKKKKKKKKKHKHKHKHKHKHKHKHKHKHKHK', 10, 42, '2023-03-10 20:18:06', 1),
(46, 'hi and ?', 42, 9, '2023-03-10 21:48:01', 1),
(47, 'JJJJ', 9, 10, '2023-03-10 21:49:03', 1),
(49, 'cc', 10, 9, '2023-03-20 17:12:01', 1),
(50, 'HI', 9, 10, '2023-03-24 11:10:17', 1),
(51, 'CC', 42, 9, '2023-03-24 11:11:05', 1),
(52, 'test test', 10, 9, '2023-03-27 10:19:15', 1),
(54, 'test ', 10, 9, '2023-03-27 10:42:21', 1),
(55, 'oo', 9, 10, '2023-03-27 12:25:17', 1),
(56, 'oo', 9, 10, '2023-03-27 12:25:40', 1),
(57, 'oo', 9, 10, '2023-03-27 12:26:01', 1),
(63, 'fin a student6', 22, 14, '2023-03-27 13:27:13', 1),
(65, 'cc', 22, 13, '2023-03-27 13:30:23', 1),
(66, 'cc', 22, 13, '2023-03-27 13:30:34', 1),
(67, 'cc', 22, 13, '2023-03-27 13:31:54', 1),
(69, 'hi', 14, 13, '2023-03-27 13:33:09', 1),
(70, 'HELLO', 13, 14, '2023-03-27 13:35:24', 1),
(71, 'test', 22, 13, '2023-03-31 18:33:48', 1),
(72, 'fiin', 22, 13, '2023-04-03 11:35:39', 1),
(73, 'hanya', 22, 13, '2023-04-03 11:35:55', 1),
(76, 'cc', 22, 14, '2023-04-03 11:36:38', 1),
(77, 'hack', 13, 22, '2023-04-03 11:39:25', 1),
(78, 'test', 14, 22, '2023-04-03 18:35:11', 1),
(79, 'test', 14, 22, '2023-04-03 18:36:32', 1),
(80, 'test', 14, 22, '2023-04-03 18:36:43', 1),
(81, 'test', 14, 22, '2023-04-03 18:36:56', 1),
(82, 'test', 14, 22, '2023-04-03 18:38:14', 1),
(83, 'test', 14, 22, '2023-04-03 18:38:55', 1),
(84, 'test', 14, 22, '2023-04-03 18:39:11', 1),
(85, 'test', 14, 22, '2023-04-03 18:39:26', 1),
(87, 'cc', 14, 34, '2023-04-03 18:47:22', 1),
(88, 'DD', 13, 22, '2023-04-04 09:01:07', 1),
(89, 'hack hta nta', 22, 13, '2023-04-04 09:03:38', 1),
(90, 'cc', 22, 13, '2023-04-04 09:06:19', 1),
(91, 'last test', 14, 22, '2023-04-04 09:09:10', 1),
(92, 'ok wslat nxoufouk nta', 22, 14, '2023-04-04 09:10:37', 1),
(93, 'ok wslat nxoufouk nta', 22, 14, '2023-04-04 09:10:45', 1),
(94, 'fin', 14, 34, '2023-04-04 09:12:59', 1),
(95, 'hi', 13, 22, '2023-04-04 09:15:29', 1),
(96, 'hello', 22, 13, '2023-04-04 09:21:08', 1),
(97, 'k', 9, 10, '2023-04-06 18:03:13', 1),
(98, 'vv', 9, 10, '2023-04-10 12:31:36', 0),
(99, 'Bonjour ', 9, 42, '2023-04-17 17:30:32', 1),
(100, 'Ahlan', 42, 9, '2023-04-17 17:38:46', 1),
(101, 'from prof1 to student6', 22, 14, '2023-04-21 18:02:11', 1),
(102, 'hi', 22, 13, '2023-05-21 15:48:17', 0),
(103, 'v', 13, 22, '2023-05-21 16:37:16', 1),
(104, 'Bonjour ', 9, 10, '2023-05-21 17:20:37', 0),
(105, 'hi', 9, 10, '2023-05-28 10:45:57', 0);

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

CREATE TABLE `modules` (
  `module_id` int(11) NOT NULL,
  `module_name` varchar(255) NOT NULL,
  `module_coeff` decimal(2,1) NOT NULL DEFAULT 1.0,
  `class_id` int(11) NOT NULL,
  `prof_id` int(11) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `modules`
--

INSERT INTO `modules` (`module_id`, `module_name`, `module_coeff`, `class_id`, `prof_id`, `semestre`) VALUES
(4, 'Linux', '1.0', 1, 22, 2),
(5, 'Java', '0.5', 1, 34, 2),
(6, 'Data Structures', '1.0', 1, 22, 1),
(7, 'Uml', '0.5', 1, 34, 2),
(8, 'Signal électrique', '1.0', 9, 36, 1),
(9, 'Architecture des systèmes', '1.0', 9, 37, 2),
(10, 'electronique analogique ', '1.0', 9, 36, 1),
(11, 'Architecture des ordinatures', '1.0', 9, 37, 2),
(12, 'Analyse1', '1.0', 15, 43, 1),
(13, 'Algèbre1', '1.0', 15, 43, 1),
(14, 'Mécanique des points', '1.0', 15, 42, 2),
(15, 'magnetostatique', '1.0', 15, 42, 2),
(16, 'Analyse3', '1.0', 16, 37, 1),
(17, 'Algèbre3', '1.0', 16, 37, 1),
(18, 'Mécanique du solide', '1.0', 16, 38, 2),
(19, 'Mécanique fluide', '1.0', 16, 38, 2),
(26, 'Programmation Réseaux ', '1.0', 10, 43, 1),
(27, 'module test', '1.0', 15, 22, 1),
(28, 'fluide', '1.0', 7, 54, 2),
(29, 'Thermodynamique', '1.0', 7, 41, 2),
(30, 'mobile', '1.0', 2, 39, 1),
(31, 'analyse de données', '1.0', 2, 41, 1),
(32, 'Data science', '1.0', 2, 38, 2),
(33, 'cloud', '1.0', 2, 42, 1),
(34, 'JEE', '1.0', 3, 40, 1),
(35, 'BlockChain', '1.0', 3, 39, 1),
(36, 'PFE', '1.0', 3, 37, 2),
(37, 'Recyclage Et Energie Renouvlable', '1.0', 14, 43, 1),
(38, 'Céramiques avancées', '1.0', 14, 43, 1),
(39, 'PFE', '1.0', 14, 40, 2),
(40, 'Qualité, Hygiène Sécurité  et Environnement ', '1.0', 6, 39, 1),
(41, ' Management de l\'innovation', '1.0', 6, 41, 1),
(42, 'PFE', '1.0', 6, 42, 2),
(43, 'PFE', '1.0', 11, 40, 2),
(44, 'Sécurité des réseaux et Systèmes', '1.0', 11, 36, 1),
(45, ' Java avancée', '1.0', 11, 22, 1),
(46, 'Thermofluide appliquée ', '1.0', 7, 40, 1),
(47, 'Système d\'Information', '1.0', 7, 41, 1),
(48, ' Technologie des hélices', '1.0', 8, 42, 1),
(49, 'Technologie avion, hélicoptère, aéronef, électricité et systèmes de bord', '1.0', 8, 40, 1),
(50, 'Lean six sigma et Manufacturing', '1.0', 8, 40, 2),
(51, ' Systèmes embarqués II', '1.0', 8, 39, 2),
(52, 'Administration Réseaux avancée  sous Linux', '1.0', 10, 37, 2);

-- --------------------------------------------------------

--
-- Structure de la table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_content` varchar(255) NOT NULL,
  `news_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `news_statut` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `news`
--

INSERT INTO `news` (`news_id`, `news_content`, `news_date`, `news_statut`) VALUES
(9, 'INTEL-IRRIS CODING CHALENGE\r\n', '2023-05-28 16:10:28', 0),
(10, 'Journées \"Ingénierie des données & Intelligence Artificielle\" , les 21, 22 et 23 novembre 2022', '2023-05-28 16:24:47', 0),
(11, 'Publication de la liste des résultats pour le concours de recrutement d’un Professeur de l\'Enseignement Supérieur Assistant spécialité « AUTOMATIQUE & GENIE ELECTRIQUE » session du 05/09/2022', '2023-05-28 16:27:05', 0),
(17, 'test', '2023-05-28 16:31:02', 1);

-- --------------------------------------------------------

--
-- Structure de la table `news_detail`
--

CREATE TABLE `news_detail` (
  `news_detail_id` int(11) NOT NULL,
  `news_id` int(11) NOT NULL,
  `news_desc` varchar(255) NOT NULL,
  `news_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `news_detail`
--

INSERT INTO `news_detail` (`news_detail_id`, `news_id`, `news_desc`, `news_img`) VALUES
(2, 9, 'Dans le cadre du projet Prima 2020 ‘Intel Irris’, l’Ecole Nationale des Sciences Appliquées de Safi organise le premier défi du codage autour des fermes intelligentes en utilisant l’internet des objets.\r\n\r\nLa compétition est ouverte aux différents établis', 'assets/News/84028950224_82-1.jpeg'),
(3, 10, 'Les étudiants de la filière GIIA/GINF (l1ère, 2ème et 3ème années) bénéficieront d\'une formation accélérée en sciences des données et intelligence artificielle lors des journées \"Ingénierie des données & Intelligence Artificielle\" organisées à l\'ENSA SAFI', 'assets/News/5501689481_69-AFFICHE IDIA 21-23 Nov 2022.jpeg'),
(4, 17, 'test content', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `notes`
--

CREATE TABLE `notes` (
  `note_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `note_value` decimal(4,2) NOT NULL,
  `note_annee` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `notes`
--

INSERT INTO `notes` (`note_id`, `module_id`, `student_id`, `note_value`, `note_annee`) VALUES
(5, 15, 9, '8.00', '2023'),
(6, 15, 10, '14.00', '2023'),
(7, 14, 9, '11.00', '2023'),
(14, 4, 14, '15.00', '2023'),
(15, 4, 13, '14.00', '2023'),
(19, 6, 14, '18.00', '2023'),
(20, 6, 13, '12.00', '2023'),
(21, 27, 10, '14.25', '2023'),
(22, 27, 9, '10.50', '2023'),
(23, 5, 13, '17.00', '2023'),
(24, 5, 14, '14.75', '2023'),
(25, 7, 13, '19.50', '2023'),
(26, 7, 14, '12.00', '2023'),
(27, 34, 56, '15.00', '2023'),
(28, 34, 57, '17.25', '2023'),
(29, 36, 56, '14.00', '2023'),
(30, 36, 57, '15.55', '2023'),
(31, 30, 21, '16.50', '2023'),
(32, 30, 55, '12.25', '2023'),
(33, 35, 56, '10.00', '2023'),
(34, 35, 57, '13.50', '2023'),
(35, 45, 58, '13.00', '2023'),
(36, 45, 59, '15.00', '2023'),
(37, 12, 10, '5.00', '2023'),
(38, 12, 9, '13.00', '2023'),
(39, 13, 9, '12.25', '2023'),
(40, 13, 10, '6.00', '2023'),
(41, 16, 11, '10.00', '2023'),
(42, 16, 12, '11.00', '2023'),
(43, 17, 11, '7.00', '2023'),
(44, 17, 12, '13.00', '2023'),
(45, 8, 15, '5.00', '2023'),
(46, 8, 16, '15.00', '2023'),
(47, 10, 15, '12.00', '2023'),
(48, 10, 16, '13.00', '2023'),
(49, 44, 58, '7.50', '2023'),
(50, 44, 59, '13.75', '2023'),
(51, 40, 60, '17.00', '2023'),
(52, 40, 61, '13.75', '2023'),
(53, 49, 19, '11.00', '2023'),
(54, 49, 20, '8.00', '2023'),
(55, 31, 21, '10.50', '2023'),
(56, 31, 55, '12.00', '2023'),
(57, 41, 60, '14.00', '2023'),
(58, 41, 61, '10.00', '2023'),
(59, 33, 21, '7.00', '2023'),
(60, 33, 55, '10.00', '2023'),
(61, 48, 19, '15.00', '2023'),
(62, 48, 20, '16.00', '2023'),
(63, 37, 62, '15.50', '2023'),
(64, 38, 62, '12.00', '2023'),
(65, 39, 62, '16.00', '2023'),
(66, 43, 58, '15.50', '2023'),
(67, 43, 59, '14.75', '2023'),
(68, 42, 60, '16.00', '2023'),
(69, 42, 61, '17.00', '2023'),
(70, 14, 10, '6.00', '2023'),
(71, 18, 11, '9.00', '2023'),
(72, 18, 12, '7.50', '2023'),
(73, 19, 11, '15.00', '2023'),
(74, 19, 12, '17.00', '2023'),
(75, 32, 21, '18.00', '2023'),
(76, 32, 55, '15.50', '2023'),
(77, 9, 15, '17.00', '2023'),
(78, 9, 16, '13.00', '2023'),
(79, 11, 15, '10.00', '2023'),
(80, 11, 16, '12.25', '2023'),
(81, 50, 19, '12.00', '2023'),
(82, 50, 20, '13.50', '2023'),
(83, 51, 19, '11.00', '2023'),
(84, 51, 20, '7.00', '2023'),
(85, 16, 63, '5.00', '2023'),
(86, 16, 64, '9.00', '2023'),
(87, 16, 65, '16.00', '2023'),
(88, 16, 66, '13.00', '2023'),
(89, 16, 67, '10.00', '2023'),
(90, 16, 68, '9.50', '2023'),
(91, 16, 69, '15.00', '2023'),
(92, 16, 70, '12.00', '2023'),
(93, 17, 70, '8.50', '2023'),
(94, 17, 69, '9.75', '2023'),
(95, 17, 68, '11.00', '2023'),
(96, 17, 67, '12.00', '2023'),
(97, 17, 66, '15.00', '2023'),
(98, 17, 65, '13.00', '2023'),
(99, 17, 64, '18.00', '2023'),
(100, 17, 63, '14.00', '2023'),
(101, 18, 63, '11.00', '2023'),
(102, 18, 64, '10.00', '2023'),
(103, 18, 65, '13.00', '2023'),
(104, 18, 66, '9.00', '2023'),
(105, 18, 67, '20.00', '2023'),
(106, 18, 68, '11.00', '2023'),
(107, 18, 69, '10.75', '2023'),
(108, 18, 70, '12.50', '2023'),
(109, 19, 70, '12.00', '2023'),
(110, 19, 69, '11.50', '2023'),
(111, 19, 68, '10.50', '2023'),
(112, 19, 67, '13.00', '2023'),
(113, 19, 66, '14.00', '2023'),
(114, 19, 63, '17.00', '2023'),
(115, 19, 64, '9.00', '2023'),
(116, 19, 65, '13.00', '2023');

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `notification_content` varchar(255) NOT NULL,
  `notification_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `notification_receptor` int(11) NOT NULL,
  `notification_statut` int(11) NOT NULL DEFAULT 0,
  `notification_module` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`notification_id`, `notification_content`, `notification_date`, `notification_receptor`, `notification_statut`, `notification_module`) VALUES
(3, ' a ajouté un cours pour Linux', '2023-03-20 18:06:51', 13, 1, 4),
(4, ' a ajouté un cours pour Linux', '2023-03-20 18:06:51', 14, 1, 4),
(5, ' a ajouté un cours : test Notification', '2023-03-20 18:08:44', 13, 1, 4),
(7, 'prof1 fullname a ajouté un cours : test', '2023-03-20 18:11:42', 13, 1, 6),
(8, 'prof1 fullname a ajouté un cours : test', '2023-03-20 18:11:42', 14, 1, 6),
(15, 'prof1 fullname a ajouté une nouvelle', '2023-03-20 20:38:38', 13, 1, 6),
(16, 'prof1 fullname a ajouté une nouvelle', '2023-03-20 20:38:38', 14, 1, 6),
(17, 'prof1 fullname a ajouté une nouvelle', '2023-03-20 20:39:20', 13, 1, 6),
(18, 'prof1 fullname a ajouté une nouvelle', '2023-03-20 20:39:20', 14, 1, 6),
(19, 'prof10 fullname a ajouté une nouvelle', '2023-03-24 11:10:56', 9, 1, 15),
(20, 'prof10 fullname a ajouté une nouvelle', '2023-03-24 11:10:56', 10, 1, 15),
(21, 'notification test', '2023-03-27 14:44:13', 9, 1, 14),
(22, 'test2', '2023-03-27 15:04:42', 9, 1, 15),
(23, ' a ajouté une cours au module Mécanique des points', '2023-04-17 17:50:18', 9, 1, 14),
(24, ' a ajouté une cours au module Mécanique des points', '2023-04-17 17:50:18', 10, 0, 14),
(25, ' a ajouté une cours au module Mécanique des points', '2023-04-17 17:51:12', 9, 1, 14),
(26, ' a ajouté une cours au module Mécanique des points', '2023-04-17 17:51:12', 10, 0, 14),
(27, 'prof10 fullname a ajouté une cours au module Mécanique des points', '2023-04-17 17:51:36', 9, 1, 14),
(28, 'prof10 fullname a ajouté une cours au module Mécanique des points', '2023-04-17 17:51:36', 10, 0, 14),
(29, 'prof10 fullname a ajouté une nouvelle au module Mécanique des points', '2023-04-17 17:53:11', 9, 1, 14),
(30, 'prof10 fullname a ajouté une nouvelle au module Mécanique des points', '2023-04-17 17:53:11', 10, 0, 14),
(31, 'prof1 fullname a ajouté une cours au module Linux', '2023-04-23 17:22:00', 13, 1, 4),
(32, 'prof1 fullname a ajouté une cours au module Linux', '2023-04-23 17:22:00', 14, 0, 4),
(33, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-15 09:46:28', 13, 1, 4),
(34, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-15 09:46:28', 14, 0, 4),
(35, 'prof1 fullname a ajouté une cours au module Linux', '2023-05-15 09:47:58', 13, 1, 4),
(36, 'prof1 fullname a ajouté une cours au module Linux', '2023-05-15 09:47:58', 14, 0, 4),
(37, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-15 09:49:07', 13, 1, 4),
(38, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-15 09:49:07', 14, 0, 4),
(39, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-15 09:49:31', 13, 1, 4),
(40, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-15 09:49:31', 14, 0, 4),
(41, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-15 09:49:41', 13, 1, 4),
(42, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-15 09:49:41', 14, 0, 4),
(43, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-15 09:51:33', 13, 1, 4),
(44, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-15 09:51:33', 14, 0, 4),
(45, 'prof1 fullname a ajouté une cours au module Linux', '2023-05-15 10:33:07', 13, 1, 4),
(46, 'prof1 fullname a ajouté une cours au module Linux', '2023-05-15 10:33:07', 14, 0, 4),
(47, 'prof1 fullname a ajouté une nouvelle au module Data Structures', '2023-05-21 14:58:44', 13, 1, 6),
(48, 'prof1 fullname a ajouté une nouvelle au module Data Structures', '2023-05-21 14:58:44', 14, 0, 6),
(49, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-21 15:00:58', 13, 1, 4),
(50, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-21 15:00:58', 14, 0, 4),
(51, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-21 15:03:12', 13, 1, 4),
(52, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-21 15:03:12', 14, 0, 4),
(53, 'prof1 fullname a ajouté une cours au module Data Structures', '2023-05-21 15:10:48', 13, 1, 6),
(54, 'prof1 fullname a ajouté une cours au module Data Structures', '2023-05-21 15:10:48', 14, 0, 6),
(57, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-21 15:21:38', 13, 1, 4),
(58, 'prof1 fullname a ajouté une nouvelle au module Linux', '2023-05-21 15:21:38', 14, 0, 4);

-- --------------------------------------------------------

--
-- Structure de la table `semaine`
--

CREATE TABLE `semaine` (
  `id_jour` int(11) NOT NULL,
  `nom_jour` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `semaine`
--

INSERT INTO `semaine` (`id_jour`, `nom_jour`) VALUES
(1, 'Mon'),
(2, 'Tue'),
(3, 'Wed'),
(4, 'Thu'),
(5, 'Fri'),
(6, 'Sun');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_user` int(11) NOT NULL,
  `service_type` varchar(200) NOT NULL,
  `service_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `service_statut` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `services`
--

INSERT INTO `services` (`service_id`, `service_user`, `service_type`, `service_date`, `service_statut`) VALUES
(3, 9, 'Attestation de stage', '2023-04-17 18:28:57', 1),
(5, 9, 'Attestation scolaire', '2023-04-23 17:45:37', 0),
(6, 22, 'Attestation de service', '2023-05-15 10:58:59', 1),
(7, 22, 'Demandes de rattrapage des séances', '2023-05-15 10:59:56', 1),
(8, 22, 'Congés et autorisations d\'absence', '2023-05-21 15:57:59', 0),
(11, 22, 'Autorisations de recherche ou de publication', '2023-05-21 16:11:02', 0),
(12, 9, 'Relvé de note', '2023-05-21 16:58:15', 0),
(13, 9, 'Demande de Transfert', '2023-06-01 22:56:41', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` int(11) NOT NULL,
  `task_content` varchar(255) NOT NULL,
  `module_id` int(11) NOT NULL,
  `task_date` datetime NOT NULL DEFAULT current_timestamp(),
  `task_annee` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `tasks`
--

INSERT INTO `tasks` (`task_id`, `task_content`, `module_id`, `task_date`, `task_annee`) VALUES
(11, 'install ', 14, '2023-03-10 21:40:22', '2023'),
(12, 'LLL\r\n', 14, '2023-03-10 21:50:07', '2023'),
(18, 'SSHHS', 15, '2023-03-24 11:10:56', '2023'),
(28, 'cc', 6, '2023-04-02 18:20:26', '2023'),
(29, 'test\r\n', 6, '2023-04-03 10:57:19', '2023'),
(34, 'Good', 14, '2023-04-17 17:53:11', '2023'),
(38, 'Vous aurez un devoir demain', 6, '2023-05-21 14:58:44', '2023'),
(39, 'hi', 4, '2023-05-21 15:00:58', '2023'),
(40, 'cc', 4, '2023-05-21 15:03:12', '2023'),
(41, 'test for pop up', 4, '2023-05-21 15:21:38', '2023');

-- --------------------------------------------------------

--
-- Structure de la table `temps`
--

CREATE TABLE `temps` (
  `id` int(11) NOT NULL,
  `name_temps` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `temps`
--

INSERT INTO `temps` (`id`, `name_temps`) VALUES
(1, '8:30-10:15'),
(2, '10:30-12:15'),
(3, '14:10-16:15'),
(4, '16:30-18:15');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_user` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL DEFAULT 'user.png',
  `statut` int(11) NOT NULL DEFAULT 3,
  `class` varchar(255) DEFAULT NULL,
  `departement` int(11) DEFAULT NULL,
  `filliere` int(11) DEFAULT NULL,
  `user_adress` varchar(255) NOT NULL,
  `user_number` varchar(255) NOT NULL DEFAULT '06**********'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `username`, `fullname`, `email`, `password_user`, `img`, `statut`, `class`, `departement`, `filliere`, `user_adress`, `user_number`) VALUES
(9, 'student1', 'student1 fullname', 'student1@gmail.com', '123', '47777604145_pexels-photo-771742.png', 3, '15', NULL, 7, '*', '06**********'),
(10, 'student2', 'student2 fullnames', 'student2@gmail.com', '123', 'user.png', 3, '15', NULL, 7, '', '06**********'),
(11, 'student3', 'student3 fullname', 'student3@gmail.com', '123', 'user.png', 3, '16', NULL, 7, '', '06**********'),
(12, 'student4', 'student4 fullname', 'student4@gmail.com', '123', 'user.png', 3, '16', NULL, 7, '', '06**********'),
(13, 'student5', 'student5 fullname', 'student5@gmail.comr', '123', '59631620051_1060-536x354-blur_2.jpg', 3, '1', NULL, 1, '', '06**********'),
(14, 'student6', 'student6 fullname', 'student6@gmail.com', '123', 'user.png', 3, '1', NULL, 1, '', '06**********'),
(15, 'student7', 'student7 fullname', 'student7@gmail.com', '123', 'user.png', 3, '9', NULL, 1, '', '06**********'),
(16, 'student8', 'student8 fullname', 'student8@gmail.com', '123', 'user.png', 3, '9', NULL, 1, '', '06**********'),
(17, 'student9', 'student9 fullname', 'student9@gmail.com', '123', 'user.png', 3, '4', NULL, 2, '', '06**********'),
(18, 'student10', 'student10 fullname', 'student10@gmail.com', '123', 'user.png', 3, '4', NULL, 2, '', '06**********'),
(19, 'student11', 'student11 fullname', 'student11@gmail.com', '123', 'user.png', 3, '8', NULL, 1, '', '06**********'),
(20, 'student12', 'student12 fullname', 'student12@gmail.com', '123', 'user.png', 3, '8', NULL, 1, '', '06**********'),
(21, 'student13', 'student13 fullname', 'student13@gmail.com', '123', 'user.png', 3, '2', NULL, 1, '', '06**********'),
(22, 'prof1', 'prof1 fullname', 'prof1@gmail.com', '123', 'user.png', 2, NULL, 1, NULL, 'Avenue Med V, Oulad Teima, Maroc', '+212653299145'),
(34, 'prof2', 'prof2 fullname', 'prof2@gmail.com', '123', 'user.png', 2, NULL, 1, NULL, 'Avenue Med V, Oulad Teima, Maroc', '+212653299145'),
(35, 'prof3', 'prof3 fullname', 'prof3@gmail.com', '123', 'user.png', 2, NULL, 1, NULL, '', '06**********'),
(36, 'prof4', 'prof4 fullname', 'prof4@gmail.com', '123', 'user.png', 2, NULL, 1, NULL, '', '06**********'),
(37, 'prof5', 'prof5 fullname', 'prof5@gmail.com', '123', 'user.png', 2, NULL, 1, NULL, '', '06**********'),
(38, 'prof6', 'prof6 fullname', 'prof6@gmail.com', '123', 'user.png', 2, NULL, 2, NULL, '', '06**********'),
(39, 'prof7', 'prof7 fullname', 'prof7@gmail.com', '123', 'user.png', 2, NULL, 2, NULL, '', '06**********'),
(40, 'prof8', 'prof8 fullname', 'prof8@gmail.com', '123', 'user.png', 2, NULL, 2, NULL, '', '06**********'),
(41, 'prof9', 'prof9 fullname', 'prof9@gmail.com', '123', 'user.png', 2, NULL, 2, NULL, '', '06**********'),
(42, 'prof10', 'prof10 fullname', 'prof10@gmail.com', '123', 'user.png', 2, NULL, 2, NULL, '', '06**********'),
(43, 'prof11', 'prof11 fullname', 'prof11@gmail.com', '123', 'user.png', 2, NULL, 1, NULL, '', '06**********'),
(44, 'admin1', 'fullname Admin1', 'admin1@test.com', '123', 'user.png', 1, NULL, NULL, NULL, '', '06**********'),
(54, 'proftest', 'prof test', 'tes@ldl.vppm', '123', 'user.png', 2, NULL, 2, NULL, 'PAris', '0798697849'),
(55, 'student14', 'student14 fullname', 'student14@gmail.com', '123', 'user.png', 3, '2', NULL, NULL, 'Sidi Bouzid Safi', '0634231947'),
(56, 'student15', 'student15 fullname', 'student15@gmail.com', '123', 'user.png', 3, '3', NULL, NULL, 'Sidi Bouzid Safi', '0736296174'),
(57, 'student16', 'student16 fullname', 'student16@gmail.coom', '123', 'user.png', 3, '3', NULL, NULL, 'Sidi Bouzid Safi', '07398472849'),
(58, 'student17', 'student17 fullname', 'student17@gmail.com', '123', 'user.png', 3, '11', NULL, NULL, 'Sidi Bouzid Safi', '0634231947'),
(59, 'student18', 'student18 fullname', 'student18@hal.do', '123', 'user.png', 3, '11', NULL, NULL, 'Sidi Bouzid Safi', '0736296174'),
(60, 'student19', 'student19 f', 'student19@dk.com', '123', 'user.png', 3, '6', NULL, NULL, 'Sidi Bouzid Safi', '0634231947'),
(61, 'student20', 'student20 fullname', 'student20@gmail.com', '123', 'user.png', 3, '6', NULL, NULL, 'Sidi Bouzid Safi', '0634231947'),
(62, 'student21', 'student21 fullname', 'student21@gmail.com', '123', 'user.png', 3, '14', NULL, NULL, 'Sidi Bouzid Safi', '0634231947'),
(63, 'student22', 'student22 fullname', 'student22@gmail.com', '123', 'user.png', 3, '16', NULL, NULL, 'Sidi Bouzid Safi', '0643566643'),
(64, 'student23', 'student23 fullname', 'student23@gmal.com', '123', 'user.png', 3, '16', NULL, NULL, 'Sidi Bouzid Safi', '0656784321'),
(65, 'student24', 'student24 fullname', 'student24@gmail.com', '123', 'user.png', 3, '16', NULL, NULL, 'Sidi Bouzid Safi', '0643566643'),
(66, 'student25', 'student25 fullname', 'student25@gmal.com', '123', 'user.png', 3, '16', NULL, NULL, 'Sidi Bouzid Safi', '0656784321'),
(67, 'student26', 'student26 fullname', 'student26@gmail.com', '123', 'user.png', 3, '16', NULL, NULL, 'Sidi Bouzid Safi', '0643566643'),
(68, 'student27', 'student27 fullname', 'student27@gmal.com', '123', 'user.png', 3, '16', NULL, NULL, 'Sidi Bouzid Safi', '0656784321'),
(69, 'student28', 'student28 fullname', 'student28@gmail.com', '123', 'user.png', 3, '16', NULL, NULL, 'Sidi Bouzid Safi', '0643566643'),
(70, 'student29', 'student29 fullname', 'student29@gmal.com', '123', 'user.png', 3, '16', NULL, NULL, 'Sidi Bouzid Safi', '0656784321');

-- --------------------------------------------------------

--
-- Structure de la table `website_setting`
--

CREATE TABLE `website_setting` (
  `setting_id` int(11) NOT NULL,
  `setting_label` varchar(255) NOT NULL,
  `setting_value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `website_setting`
--

INSERT INTO `website_setting` (`setting_id`, `setting_label`, `setting_value`) VALUES
(1, 'current_semestre', '2'),
(2, 'annee_universitaire', '2023');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `absence`
--
ALTER TABLE `absence`
  ADD PRIMARY KEY (`absence_id`);

--
-- Index pour la table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`activity_id`);

--
-- Index pour la table `ajoune`
--
ALTER TABLE `ajoune`
  ADD PRIMARY KEY (`ajourne_id`);

--
-- Index pour la table `classement_filliere`
--
ALTER TABLE `classement_filliere`
  ADD PRIMARY KEY (`classement_id`);

--
-- Index pour la table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`class_id`),
  ADD UNIQUE KEY `class_name` (`class_name`),
  ADD KEY `filliere_id` (`filliere_id`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`cour_id`),
  ADD KEY `prof_id` (`prof_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Index pour la table `departement`
--
ALTER TABLE `departement`
  ADD PRIMARY KEY (`departement_id`),
  ADD UNIQUE KEY `departement_name` (`departement_name`);

--
-- Index pour la table `emploidetemps`
--
ALTER TABLE `emploidetemps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_prof` (`id_prof`),
  ADD KEY `id_class` (`dddd`),
  ADD KEY `id_module` (`id_module`),
  ADD KEY `id_temps` (`id_temps`),
  ADD KEY `id_jour` (`id_jour`);

--
-- Index pour la table `filliere`
--
ALTER TABLE `filliere`
  ADD PRIMARY KEY (`filliere_id`),
  ADD UNIQUE KEY `filliere_name` (`filliere_name`),
  ADD KEY `departement_id` (`departement_id`);

--
-- Index pour la table `historique_note`
--
ALTER TABLE `historique_note`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Index pour la table `laureats`
--
ALTER TABLE `laureats`
  ADD PRIMARY KEY (`laureat_id`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Index pour la table `messanger`
--
ALTER TABLE `messanger`
  ADD PRIMARY KEY (`message_id`);

--
-- Index pour la table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_id`),
  ADD KEY `prof_id` (`prof_id`),
  ADD KEY `class_id` (`class_id`);

--
-- Index pour la table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`);

--
-- Index pour la table `news_detail`
--
ALTER TABLE `news_detail`
  ADD PRIMARY KEY (`news_detail_id`);

--
-- Index pour la table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`note_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `module_id` (`module_id`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`);

--
-- Index pour la table `semaine`
--
ALTER TABLE `semaine`
  ADD PRIMARY KEY (`id_jour`);

--
-- Index pour la table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Index pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- Index pour la table `temps`
--
ALTER TABLE `temps`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `website_setting`
--
ALTER TABLE `website_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `absence`
--
ALTER TABLE `absence`
  MODIFY `absence_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `activities`
--
ALTER TABLE `activities`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT pour la table `ajoune`
--
ALTER TABLE `ajoune`
  MODIFY `ajourne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `classement_filliere`
--
ALTER TABLE `classement_filliere`
  MODIFY `classement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `classes`
--
ALTER TABLE `classes`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `cour_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `departement`
--
ALTER TABLE `departement`
  MODIFY `departement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `emploidetemps`
--
ALTER TABLE `emploidetemps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `filliere`
--
ALTER TABLE `filliere`
  MODIFY `filliere_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `historique_note`
--
ALTER TABLE `historique_note`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT pour la table `laureats`
--
ALTER TABLE `laureats`
  MODIFY `laureat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `messanger`
--
ALTER TABLE `messanger`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT pour la table `modules`
--
ALTER TABLE `modules`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT pour la table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `news_detail`
--
ALTER TABLE `news_detail`
  MODIFY `news_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `notes`
--
ALTER TABLE `notes`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT pour la table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `semaine`
--
ALTER TABLE `semaine`
  MODIFY `id_jour` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pour la table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT pour la table `temps`
--
ALTER TABLE `temps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `website_setting`
--
ALTER TABLE `website_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `classes`
--
ALTER TABLE `classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`filliere_id`) REFERENCES `filliere` (`filliere_id`);

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`prof_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `cours_ibfk_2` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`);

--
-- Contraintes pour la table `emploidetemps`
--
ALTER TABLE `emploidetemps`
  ADD CONSTRAINT `emploidetemps_ibfk_1` FOREIGN KEY (`id_prof`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emploidetemps_ibfk_2` FOREIGN KEY (`dddd`) REFERENCES `classes` (`class_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emploidetemps_ibfk_3` FOREIGN KEY (`id_module`) REFERENCES `modules` (`module_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emploidetemps_ibfk_4` FOREIGN KEY (`id_temps`) REFERENCES `temps` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emploidetemps_ibfk_5` FOREIGN KEY (`id_jour`) REFERENCES `semaine` (`id_jour`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `filliere`
--
ALTER TABLE `filliere`
  ADD CONSTRAINT `filliere_ibfk_1` FOREIGN KEY (`departement_id`) REFERENCES `departement` (`departement_id`);

--
-- Contraintes pour la table `historique_note`
--
ALTER TABLE `historique_note`
  ADD CONSTRAINT `historique_note_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

--
-- Contraintes pour la table `modules`
--
ALTER TABLE `modules`
  ADD CONSTRAINT `modules_ibfk_2` FOREIGN KEY (`class_id`) REFERENCES `classes` (`class_id`);

--
-- Contraintes pour la table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `notes_ibfk_3` FOREIGN KEY (`module_id`) REFERENCES `modules` (`module_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
