-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 01 2025 г., 10:35
-- Версия сервера: 8.3.0
-- Версия PHP: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `sportvie_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `sports`
--

DROP TABLE IF EXISTS `sports`;
CREATE TABLE IF NOT EXISTS `sports` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `regles` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp_de_jeu` int NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sports`
--

INSERT INTO `sports` (`id`, `nom`, `regles`, `temp_de_jeu`, `image`, `created_at`) VALUES
(1, 'Yoga', 'Le yoga est une discipline millénaire qui combine des postures physiques (asanas), des exercices de respiration (pranayama) et de la méditation. Il vise à harmoniser le corps et l’esprit, à améliorer la souplesse, la concentration et à réduire le stress.', 90, 'C:\\cfitech\\SportVie\\img\\1689342282522.png', '2025-05-01 10:29:57'),
(2, 'TRX', 'Le TRX est un entraînement en suspension utilisant le poids du corps. Il sollicite tous les groupes musculaires à travers des mouvements fonctionnels et améliore la force, l’endurance, la stabilité et la coordination. Il se pratique à l’aide de sangles accrochées à un point fixe.', 60, 'C:\\cfitech\\SportVie\\img\\Screenshot_1.png', '2025-05-01 10:29:57'),
(3, 'Stretching', 'Le stretching est une méthode douce d\'étirement musculaire. Il permet d\'améliorer la souplesse, de prévenir les blessures et de favoriser la récupération après l\'effort. Il peut être statique, dynamique ou actif selon les objectifs.', 60, 'C:\\cfitech\\SportVie\\img\\4_5.jpg', '2025-05-01 10:32:28'),
(4, 'Fitness', 'Le fitness regroupe différentes activités physiques visant à améliorer la condition physique générale : cardio, renforcement musculaire, coordination, souplesse. Il se pratique en salle ou à domicile, en cours collectif ou en individuel.', 45, 'C:\\cfitech\\SportVie\\img\\depositphotos_25079259-stock-illustration-illustration-a-fat-man-and.jpg', '2025-05-01 10:32:28'),
(5, 'Natation', 'La natation est un sport complet qui sollicite l’ensemble des muscles. Elle se pratique en piscine ou en eau libre, en loisir ou en compétition. Elle améliore la respiration, l’endurance et ménage les articulations grâce à la portance de l’eau.', 60, 'C:\\cfitech\\SportVie\\img\\polza-rannego-plavan.jpg', '2025-05-01 10:34:57');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
