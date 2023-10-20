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
-- Struktura tabeli dla tabeli `ang_19_09_2023`
--

CREATE TABLE `ang_19_09_2023` (
  `id` int(3) NOT NULL,
  `słówko` varchar(50) NOT NULL,
  `popr.odp_1` varchar(50) NOT NULL,
  `popr.odp_2` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ang_19_09_2023`
--

INSERT INTO `ang_19_09_2023` (`id`, `słówko`, `popr.odp_1`, `popr.odp_2`) VALUES
(1, 'Personal data', 'Dane osobiste', NULL),
(2, 'Gender', 'Płeć', NULL),
(3, 'Male', 'Mężczyzna', NULL),
(4, 'Female', 'Kobieta', NULL),
(5, 'First name', 'Imię', NULL),
(6, 'Middle name', 'Drugie imię', NULL),
(7, 'Surname', 'Nazwisko', NULL),
(8, 'Marital status', 'Stan cywilny', NULL),
(9, 'Married', 'Żonaty', 'Zamężna'),
(10, 'Divorced', 'Rozwiedziony', 'Rozwiedziona'),
(11, 'Widowed', 'Owdowiały', 'Owdowiała'),
(12, 'Occupation', 'Zawód', NULL),
(13, 'Muscular', 'Umięśniony', NULL),
(14, 'Obese', 'Otyły', NULL),
(15, 'Overweight', 'Z nadwagą', NULL),
(16, 'Underweight', 'Z niedowagą', NULL),
(17, 'Plumb', 'Puszysty', 'Pulchny'),
(18, 'Skinny', 'Chudy', NULL),
(19, 'Slim', 'Szczupły', NULL),
(20, 'Beard', 'Broda', NULL),
(21, 'Freckes', 'Piegi', NULL),
(22, 'Moustache', 'Wąsy', NULL),
(23, 'Pale', 'Blady', NULL),
(24, 'Tanned', 'Opalony', NULL),
(25, 'Pierced ears', 'Przekłute uszy', NULL),
(26, 'Scar', 'Blizna', NULL),
(27, 'Spotty', 'Pryszczaty', NULL),
(28, 'Tattoo', 'Tatuaż', NULL),
(29, 'Wrinkles', 'Zmarszczki', NULL),
(30, 'Blouse', 'Bluzka', NULL),
(31, 'Boots', 'Wysokie buty', 'Kozaki'),
(32, 'Fleece', 'Bluza polarowa', NULL),
(33, 'High Heels', 'Wysokie obcasy', NULL),
(34, 'Hoodie', 'Bluza z kapturem', NULL),
(35, 'Jacket', 'Kurtka', 'Marynarka'),
(36, 'Jumper', 'Sweter', NULL),
(37, 'Pyjamas', 'Piżama', NULL),
(38, 'Sneakers', 'Trampki', NULL),
(39, 'Shoes', 'Buty', NULL),
(40, 'Skirt', 'Spódnica', NULL),
(41, 'Smart', 'Elegancki', NULL),
(42, 'Suit', 'Garnitur', NULL),
(43, 'Sweatshirt', 'Bluza sportowa', NULL),
(44, 'Tracksuit', 'Dres', NULL),
(45, 'Underwear', 'Bielizna', NULL),
(46, 'Waistcoat', 'Kamizelka', NULL),
(47, 'Absent-minded', 'Roztargniony', NULL),
(48, 'Bad-tempered', 'Wybuchowy', NULL),
(49, 'Bossy', 'Apodyktyczny', NULL),
(50, 'Careful', 'Ostrożny', NULL),
(51, 'Careless', 'Nieostrożny', NULL),
(52, 'Confident', 'Pewny siebie', NULL),
(53, 'Overconfident', 'Zbyt pewny siebie', NULL),
(54, 'Easygoing', 'Wyluzowany', 'Opanowany'),
(55, 'Extrovert', 'Ekstrawertyk', NULL),
(56, 'Gentle', 'Delikatny', 'Łagodny'),
(57, 'Helpful', 'Uczynny', NULL),
(58, 'Unhelpful', 'Nieskorny do pomocy', NULL),
(59, 'Honest', 'Uczciwy', NULL),
(60, 'Dishonest', 'Nieuczciwy', NULL),
(61, 'Imaginative', 'Pomysłowy', 'Kreatywny'),
(62, 'Unimaginative', 'Bez wyobraźni', NULL),
(63, 'Introvert', 'Introwertyk', NULL),
(64, 'Messy', 'Bałaganiarski', NULL),
(65, 'Modest', 'Skromny', NULL),
(66, 'Narrow-minded', 'Ograniczony', NULL),
(67, 'Optimistic', 'Optymistyczny', NULL),
(68, 'Pessimistic', 'Pesymistyczny', NULL),
(69, 'Outgoing', 'Otwarty', 'Towarzyski'),
(70, 'Patient', 'Cierpliwy', NULL),
(71, 'Impatient', 'Niecierpliwy', NULL),
(72, 'Polite', 'Uprzejmy', NULL),
(73, 'Impolite', 'Nieuprzejmy', NULL),
(74, 'Reliable', 'Solidny', 'Niezawodny'),
(75, 'Unreliable', 'Niesolidny', 'Zawodny'),
(76, 'Selfish', 'Samolubny', NULL),
(77, 'Unselfish', 'Bezinteresowny', NULL),
(78, 'Sensitive', 'Wrażliwy', NULL),
(79, 'Sincere', 'Szczery', NULL),
(80, 'Sociable', 'Towarzyski', NULL),
(81, 'Unsociable', 'Nietowarzyski', NULL),
(82, 'Tidy', 'Schludny', NULL),
(83, 'Untidy', 'Nieschludny', NULL),
(84, 'Tolerant', 'Tolerancyjny', NULL),
(85, 'Intolerant', 'Nietolerancyjny', NULL),
(86, 'Trustworthy', 'Godny zaufania', NULL),
(87, 'Vain', 'Próżny', NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `ang_19_09_2023`
--
ALTER TABLE `ang_19_09_2023`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ang_19_09_2023`
--
ALTER TABLE `ang_19_09_2023`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
