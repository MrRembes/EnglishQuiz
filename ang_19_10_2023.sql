-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Paź 21, 2023 at 12:08 AM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `angielski_slowka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ang_19_10_2023`
--

CREATE TABLE `ang_19_10_2023` (
  `id` int(3) NOT NULL,
  `słówko` varchar(50) NOT NULL,
  `popr.odp_1` varchar(50) NOT NULL,
  `popr.odp_2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ang_19_10_2023`
--

INSERT INTO `ang_19_10_2023` (`id`, `słówko`, `popr.odp_1`, `popr.odp_2`) VALUES
(1, 'Block of flats', 'Blok mieszkalny', NULL),
(2, 'Bungalow', 'Dom parterowy', NULL),
(3, 'Cabin', 'Chata', 'Domek'),
(4, 'Cottage', 'Domek wiejski', NULL),
(5, 'Detached house', 'Wolnostojący dom jednorodzinny', NULL),
(6, 'Family house', 'Dom rodzinny', NULL),
(7, 'Farmhouse', 'Dom w gospodarstwie rolnym', NULL),
(8, 'Housing estate', 'Osiedle mieszkalne', NULL),
(9, 'Mansion', 'Pałac', 'Rezydencja'),
(10, 'Nursing home', 'Dom spokojnej starości', NULL),
(11, 'Semi', 'Bliźniaki', NULL),
(12, 'Skyscrapper', 'Wieżowiec', NULL),
(13, 'Studio flat', 'Kawalerka', NULL),
(14, 'Terraced house', 'Dom szeregowy', NULL),
(15, 'Attic', 'Strych', 'Poddasze'),
(16, 'Basement', 'Piwnica', NULL),
(17, 'Carport', 'Wiata na samochód', NULL),
(18, 'Ceiling', 'Sufit', NULL),
(19, 'Chimney', 'Komin', NULL),
(20, 'Downstairs', 'Na dole', NULL),
(21, 'Drive', 'Podjazd', NULL),
(22, 'Fence', 'Ogrodzenie', 'Płot'),
(23, 'Fireplace', 'Kominek', NULL),
(24, 'Front door', 'Frontowe drzwi', NULL),
(25, 'Back door', 'Tylne drzwi', NULL),
(26, 'Gate', 'Brama', NULL),
(27, 'Hedge', 'Żywopłot', NULL),
(28, 'Ground floor', 'Parter', NULL),
(29, 'Laundry', 'Domowa pralnia', NULL),
(30, 'Lawn', 'trawnik', NULL),
(31, 'Lift', 'winda', NULL),
(32, 'Living room', 'salon', NULL),
(33, 'Loft' , 'trych' , 'poddasze'),
(34, 'Porch', 'ganek', NULL),
(35, 'Roof', 'dach', NULL),
(36, 'Shed', 'szopa', NULL),
(37, 'Staircase', 'klatka schodowa', NULL),
(38, 'Steps', 'schodki', NULL),
(39, 'Study', 'gabinet', NULL),
(40, 'Upstairs', 'na górze', NULL),
(41, 'Yard', 'dziedziniec' , 'podwórko'),
(42, 'Brush', 'szczotka', NULL),
(43, 'Change the sheets', 'zmienić pościel', NULL),
(44, 'Dustpan', 'szufelka', NULL),
(45, 'Do the gardening', 'pracować w ogrodzie', NULL),
(46, 'Do the grocery shopping', 'robić zakupy spożywcze', NULL),
(47, 'Do the laundry', 'robić pranie', NULL),
(48, 'Do the housework', 'zajmować się domem', NULL),
(49, 'Dust the furniture', 'wycierać kurz z mebli', NULL),
(50, 'Empty the dishwasher', 'opróżnić zmywarkę', NULL),
(51, 'Empty the rubbish bin', 'opróżnić kosz na śmieci', NULL),
(52, 'Have a clear-out', 'pozbywać się zbędnych rzeczy', 'pozbywać się nieużywanych rzeczy'),
(53, 'Have a greenfingers', 'mieć dobrą rękę do roślin', NULL),
(54, 'Hoover the carpet', 'odkurzać dywan', NULL),
(55, 'Iron the clothes', 'prasować ubrania', NULL),
(56, 'Keep something neat and tidy', 'Utrzymywać porządek', 'utrzymywać coś w nienagannym porządku'),
(57, 'Make improvements', 'wprowadzać ulepszenia', NULL),
(58, 'Make the bed', 'ścielić łóżko', NULL),
(59, 'Mop the floor', 'wycierać podłogę mopem', NULL),
(60, 'Mow the lawn', 'kosić trawnik', NULL),
(61, 'Renovate a corridor', 'odnowić korytarz', NULL),
(62, 'Rubber gloves', 'gumowe rękawiczki', NULL),
(63, 'Shopping bag', 'torba na zakupy', NULL),
(64, 'Sponge', 'gąbka', NULL),
(65, 'Sweep the floor', 'zamiatać podłogę', NULL),
(66, 'Tea towel', 'ścierka', NULL),
--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `ang_19_10_2023`
--
ALTER TABLE `ang_19_10_2023`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ang_19_10_2023`
--
ALTER TABLE `ang_19_10_2023`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
