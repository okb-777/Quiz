-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 19 Paź 2022, 09:04
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `quiz`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `answears`
--

CREATE TABLE `answears` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(45) DEFAULT NULL,
  `is_right` tinyint(4) DEFAULT NULL,
  `questions_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `answears`
--

INSERT INTO `answears` (`id`, `content`, `is_right`, `questions_id`) VALUES
(1, '102', 0, 1),
(2, '-6', 1, 1),
(3, '6', 0, 1),
(4, '10', 1, 1),
(5, 'Warszawa', 1, 2),
(6, 'Elbląg', 0, 2),
(7, 'Opole', 0, 2),
(8, 'Praga', 1, 2),
(9, 'Różowy', 0, 3),
(10, 'Czarny', 1, 3),
(11, 'Żółty', 0, 3),
(12, 'Biały', 1, 3),
(13, 'Nikola Tesla', 0, 4),
(14, 'Elon Musk', 1, 4),
(15, 'Edd Tesla', 0, 4),
(16, 'Tak', 1, 5),
(17, 'Nie', 0, 5),
(18, 'Może', 0, 5),
(19, 'No', 0, 6),
(20, 'Yes', 1, 6),
(21, 'FSA', 0, 6),
(22, 'bipiripiiiaris', 0, 7),
(23, 'sagdsd', 1, 7),
(24, 'sagdas', 1, 7),
(25, 'fsdfsao', 0, 7),
(26, 'safd', 1, 7),
(27, 'safdolaopo', 1, 8),
(28, 'sfadas', 0, 8),
(29, 'rewrew', 1, 8),
(30, 'fsda', 0, 8),
(31, 'fdgdfs', 1, 8),
(32, 'safd', 0, 9),
(33, 'safdas325', 1, 9),
(34, 'vcncftg', 0, 9),
(35, 'pskap', 0, 10),
(36, 'vcncftg', 1, 10),
(37, 'popasfoikpokpz', 0, 10);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `questions`
--

INSERT INTO `questions` (`id`, `content`) VALUES
(1, '7+3=?'),
(2, 'Co jest stolicą polski?'),
(3, 'Jakiego koloru jest czarny kot?'),
(4, 'Tesle założył?'),
(5, 'Słońce świeci?'),
(6, 'oosaf'),
(7, 'jadsj'),
(8, '83282919'),
(9, 'mikksjafkj'),
(10, 'pppsodpokklk');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `students`
--

INSERT INTO `students` (`id`, `name`, `surname`) VALUES
(1, 'Grzegorz', 'Bąk'),
(2, 'Filip', 'Szop'),
(3, 'Gracjan', 'Wiór'),
(4, 'Edek', 'Fistaszek'),
(5, 'Olga', 'Głodna'),
(6, 'Kasia', 'Dąb'),
(7, 'Igor', 'Srot');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `students_has_tests`
--

CREATE TABLE `students_has_tests` (
  `students_id` int(10) UNSIGNED NOT NULL,
  `tests_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `students_has_tests`
--

INSERT INTO `students_has_tests` (`students_id`, `tests_id`) VALUES
(1, 3),
(2, 1),
(3, 6),
(4, 2),
(5, 4),
(6, 7),
(7, 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `tests`
--

INSERT INTO `tests` (`id`, `date`) VALUES
(1, '2015-08-11'),
(2, '2022-06-14'),
(3, '2019-10-10'),
(4, '2013-10-10'),
(5, '2018-01-19'),
(6, '2016-04-06'),
(7, '2022-04-06');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tests_has_questions`
--

CREATE TABLE `tests_has_questions` (
  `tests_id` int(10) UNSIGNED NOT NULL,
  `questions_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `tests_has_questions`
--

INSERT INTO `tests_has_questions` (`tests_id`, `questions_id`) VALUES
(1, 2),
(1, 4),
(2, 1),
(2, 4),
(3, 2),
(3, 3),
(4, 1),
(4, 3);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `answears`
--
ALTER TABLE `answears`
  ADD PRIMARY KEY (`id`,`questions_id`);

--
-- Indeksy dla tabeli `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `students_has_tests`
--
ALTER TABLE `students_has_tests`
  ADD PRIMARY KEY (`students_id`,`tests_id`);

--
-- Indeksy dla tabeli `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tests_has_questions`
--
ALTER TABLE `tests_has_questions`
  ADD PRIMARY KEY (`tests_id`,`questions_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `answears`
--
ALTER TABLE `answears`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT dla tabeli `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
