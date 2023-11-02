-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 02, 2023 at 02:48 PM
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
  `słówko` varchar(50) DEFAULT NULL,
  `popr.odp_1` varchar(50) DEFAULT NULL,
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
(30, 'Lawn', 'Trawnik', NULL),
(31, 'Lift', 'Winda', NULL),
(32, 'Living room', 'Salon', NULL),
(33, 'Loft', 'Strych', 'Poddasze'),
(34, 'Porch', 'Ganek', NULL),
(35, 'Roof', 'Dach', NULL),
(36, 'Shed', 'Szopa', NULL),
(37, 'Staircase', 'Klatka schodowa', NULL),
(38, 'Steps', 'Schodki', NULL),
(39, 'Study', 'Gabinet', NULL),
(40, 'Upstairs', 'Na górze', NULL),
(41, 'Yard', 'Dziedziniec', 'Podwórko'),
(42, 'Brush', 'Szczotka', NULL),
(43, 'Change the sheets', 'Zmienić pościel', NULL),
(44, 'Dustpan', 'Szufelka', NULL),
(45, 'Do the gardening', 'Pracować w ogrodzie', NULL),
(46, 'Do the grocery shopping', 'Robić zakupy spożywcze', NULL),
(47, 'Do the laundry', 'Robić pranie', NULL),
(48, 'Do the housework', 'Zajmować się domem', NULL),
(49, 'Dust the furniture', 'Wycierać kurz z mebli', NULL),
(50, 'Empty the dishwasher', 'Opróżnić zmywarkę', NULL),
(51, 'Empty the rubbish bin', 'Opróżnić kosz na śmieci', NULL),
(52, 'Have a clear-out', 'Pozbywać się zbędnych rzeczy', 'Pozbywać się nieużywanych rzeczy'),
(53, 'Have a greenfingers', 'Mieć dobrą rękę do roślin', NULL),
(54, 'Hoover the carpet', 'Odkurzać dywan', NULL),
(55, 'Iron the clothes', 'Prasować ubrania', NULL),
(56, 'Keep something neat and tidy', 'Utrzymywać porządek', 'Utrzymywać coś w nienagannym porządku'),
(57, 'Make improvements', 'Wprowadzać ulepszenia', NULL),
(58, 'Make the bed', 'Ścielić łóżko', NULL),
(59, 'Mop the floor', 'Wycierać podłogę mopem', NULL),
(60, 'Mow the lawn', 'Kosić trawnik', NULL),
(61, 'Renovate a corridor', 'Odnowić korytarz', NULL),
(62, 'Rubber gloves', 'Gumowe rękawiczki', NULL),
(63, 'Shopping bag', 'Torba na zakupy', NULL),
(64, 'Sponge', 'Gąbka', NULL),
(65, 'Sweep the floor', 'Zamiatać podłogę', NULL),
(66, 'Tea towel', 'Ścierka', NULL);

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
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
