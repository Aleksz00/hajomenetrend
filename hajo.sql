-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Jan 17. 13:21
-- Kiszolgáló verziója: 10.1.34-MariaDB
-- PHP verzió: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `hajo`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `menetrend`
--

CREATE TABLE `menetrend` (
  `azon` int(11) NOT NULL,
  `jarat` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `honnan` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `hova` varchar(255) COLLATE utf8_hungarian_ci NOT NULL,
  `indul` time NOT NULL,
  `erkezik` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `menetrend`
--

INSERT INTO `menetrend` (`azon`, `jarat`, `honnan`, `hova`, `indul`, `erkezik`) VALUES
(1, 'A1', 'Siófok', 'Balatonalmádi', '09:30:00', '10:30:00'),
(2, 'A2', 'Balatonalmádi', 'Alsóörs', '10:35:00', '11:10:00'),
(3, 'A2', 'Alsóörs', 'Csopak', '11:10:00', '11:40:00'),
(4, 'A2', 'Csopak', 'Siófok', '11:40:00', '12:20:00'),
(5, 'A3', 'Siófok', 'Csopak', '16:00:00', '16:45:00'),
(6, 'A3', 'Csopak', 'Alsóörs', '16:45:00', '17:15:00'),
(7, 'A3', 'Alsóörs', 'Balatonalmádi', '17:15:00', '17:45:00'),
(8, 'A4', 'Balatonalmádi', 'Siófok', '17:50:00', '18:50:00'),
(9, 'B1', 'Balatonboglár', 'Révfülöp', '08:50:00', '09:15:00'),
(10, 'B2', 'Révfülöp', 'Balatonboglár', '09:50:00', '10:15:00'),
(11, 'B3', 'Balatonboglár', 'Révfülöp', '10:30:00', '10:55:00'),
(12, 'B4', 'Révfülöp', 'Balatonboglár', '11:15:00', '11:40:00'),
(13, 'B5', 'Balatonboglár', 'Révfülöp', '14:30:00', '14:55:00'),
(14, 'B6', 'Révfülöp', 'Balatonboglár', '15:10:00', '15:35:00'),
(15, 'B7', 'Balatonboglár', 'Révfülöp', '17:30:00', '17:55:00'),
(16, 'B8', 'Révfülöp', 'Balatonboglár', '18:30:00', '18:55:00'),
(17, 'D1', 'Siófok', 'Balatonfüred', '10:00:00', '11:00:00'),
(18, 'D1', 'Balatonfüred', 'Tihany', '11:00:00', '11:20:00'),
(19, 'D2', 'Tihany', 'Balatonfüred', '11:30:00', '11:55:00'),
(20, 'D2', 'Balatonfüred', 'Siófok', '11:55:00', '12:45:00'),
(21, 'D3', 'Siófok', 'Balatonfüred', '13:00:00', '14:00:00'),
(22, 'D3', 'Balatonfüred', 'Tihany', '14:00:00', '14:20:00'),
(23, 'D4', 'Tihany', 'Balatonfüred', '16:30:00', '17:00:00'),
(24, 'D4', 'Balatonfüred', 'Siófok', '17:00:00', '17:50:00'),
(25, 'D5', 'Siófok', 'Balatonfüred', '18:00:00', '18:50:00'),
(26, 'D6', 'Balatonfüred', 'Siófok', '19:00:00', '19:50:00'),
(27, 'E1', 'Siófok', 'Balatonfüred', '09:00:00', '10:00:00'),
(28, 'E1', 'Balatonfüred', 'Tihany', '10:00:00', '10:20:00'),
(29, 'E2', 'Tihany', 'Balatonfüred', '10:30:00', '11:00:00'),
(30, 'E2', 'Balatonfüred', 'Siófok', '11:00:00', '11:50:00'),
(31, 'E3', 'Siófok', 'Balatonfüred', '12:00:00', '13:00:00'),
(32, 'E3', 'Balatonfüred', 'Tihany', '13:00:00', '13:20:00'),
(33, 'E4', 'Tihany', 'Balatonfüred', '14:30:00', '15:00:00'),
(34, 'E4', 'Balatonfüred', 'Siófok', '15:00:00', '15:50:00'),
(35, 'E5', 'Siófok', 'Balatonfüred', '16:00:00', '17:00:00'),
(36, 'E5', 'Balatonfüred', 'Tihany', '17:00:00', '17:20:00'),
(37, 'E6', 'Tihany', 'Balatonfüred', '17:30:00', '18:00:00'),
(38, 'E6', 'Balatonfüred', 'Siófok', '18:00:00', '18:50:00'),
(39, 'F1', 'Fonyód', 'Badacsony', '08:15:00', '08:45:00'),
(40, 'F10', 'Badacsony', 'Fonyód', '15:30:00', '16:00:00'),
(41, 'F11', 'Fonyód', 'Badacsony', '16:15:00', '16:45:00'),
(42, 'F12', 'Badacsony', 'Fonyód', '17:00:00', '17:30:00'),
(43, 'F13', 'Fonyód', 'Badacsony', '17:45:00', '18:15:00'),
(44, 'F14', 'Badacsony', 'Fonyód', '18:30:00', '19:00:00'),
(45, 'F2', 'Badacsony', 'Fonyód', '09:00:00', '09:30:00'),
(46, 'F3', 'Fonyód', 'Badacsony', '10:00:00', '10:30:00'),
(47, 'F4', 'Badacsony', 'Fonyód', '10:45:00', '11:15:00'),
(48, 'F5', 'Fonyód', 'Badacsony', '11:30:00', '12:00:00'),
(49, 'F6', 'Badacsony', 'Fonyód', '12:15:00', '12:45:00'),
(50, 'F7', 'Fonyód', 'Badacsony', '13:15:00', '13:45:00'),
(51, 'F8', 'Badacsony', 'Fonyód', '14:00:00', '14:30:00'),
(52, 'F9', 'Fonyód', 'Badacsony', '14:45:00', '15:15:00'),
(53, 'G1', 'Balatonföldvár', 'Balatonszemes', '09:10:00', '10:05:00'),
(54, 'G1', 'Balatonszemes', 'Balatonlelle', '10:05:00', '10:45:00'),
(55, 'G1', 'Balatonlelle', 'Balatonboglár', '10:45:00', '11:15:00'),
(56, 'G1', 'Balatonboglár', 'Badacsony', '11:15:00', '12:00:00'),
(57, 'G2', 'Badacsony', 'Balatonboglár', '16:00:00', '16:55:00'),
(58, 'G2', 'Balatonboglár', 'Balatonlelle', '16:55:00', '17:25:00'),
(59, 'G2', 'Balatonlelle', 'Balatonszemes', '17:25:00', '18:05:00'),
(60, 'G2', 'Balatonszemes', 'Balatonföldvár', '18:05:00', '18:50:00'),
(61, 'J1', 'Balatonkenese', 'Balatonalmádi', '09:45:00', '10:20:00'),
(62, 'J1', 'Balatonalmádi', 'Alsóörs', '10:20:00', '10:55:00'),
(63, 'J1', 'Alsóörs', 'Csopak', '10:55:00', '11:20:00'),
(64, 'J1', 'Csopak', 'Balatonfüred', '11:20:00', '11:45:00'),
(65, 'J1', 'Balatonfüred', 'Tihany', '11:45:00', '12:05:00'),
(66, 'J2', 'Tihany', 'Balatonfüred', '16:00:00', '16:30:00'),
(67, 'J2', 'Balatonfüred', 'Csopak', '16:30:00', '17:00:00'),
(68, 'J2', 'Csopak', 'Alsóörs', '17:00:00', '17:30:00'),
(69, 'J2', 'Alsóörs', 'Balatonalmádi', '17:30:00', '18:05:00'),
(70, 'J2', 'Balatonalmádi', 'Balatonkenese', '18:05:00', '18:35:00'),
(71, 'K1', 'Keszthely', 'Balatonmária', '10:00:00', '11:00:00'),
(72, 'K1', 'Balatonmária', 'Balatongyörök', '11:00:00', '11:30:00'),
(73, 'K1', 'Balatongyörök', 'Szigliget', '11:30:00', '12:15:00'),
(74, 'K1', 'Szigliget', 'Badacsony', '12:15:00', '12:45:00'),
(75, 'K2', 'Badacsony', 'Szigliget', '16:00:00', '16:35:00'),
(76, 'K2', 'Szigliget', 'Balatongyörök', '16:35:00', '17:20:00'),
(77, 'K2', 'Balatongyörök', 'Balatonmária', '17:20:00', '17:50:00'),
(78, 'K2', 'Balatonmária', 'Keszthely', '17:50:00', '18:40:00'),
(79, 'L1', 'Balatonföldvár', 'Tihanyrév', '08:45:00', '09:05:00'),
(80, 'L1', 'Tihanyrév', 'Tihany', '09:05:00', '09:30:00'),
(81, 'L1', 'Tihany', 'Balatonfüred', '09:30:00', '10:00:00'),
(82, 'L1', 'Balatonfüred', 'Siófok', '10:00:00', '10:50:00'),
(83, 'L2', 'Siófok', 'Tihany', '11:00:00', '11:50:00'),
(84, 'L3', 'Tihany', 'Balatonfüred', '13:00:00', '13:30:00'),
(85, 'L3', 'Balatonfüred', 'Siófok', '13:30:00', '14:20:00'),
(86, 'L4', 'Siófok', 'Balatonfüred', '15:00:00', '16:00:00'),
(87, 'L4', 'Balatonfüred', 'Tihany', '16:00:00', '16:30:00'),
(88, 'L4', 'Tihany', 'Tihanyrév', '16:30:00', '16:50:00'),
(89, 'L4', 'Tihanyrév', 'Balatonföldvár', '16:50:00', '17:05:00'),
(90, 'M1', 'Balatonföldvár', 'Tihanyrév', '10:30:00', '10:50:00'),
(91, 'M1', 'Tihanyrév', 'Tihany', '10:50:00', '11:05:00'),
(92, 'M2', 'Tihany', 'Tihanyrév', '12:15:00', '12:35:00'),
(93, 'M2', 'Tihanyrév', 'Balatonföldvár', '12:35:00', '12:50:00'),
(94, 'M3', 'Balatonföldvár', 'Tihanyrév', '13:05:00', '13:25:00'),
(95, 'M3', 'Tihanyrév', 'Tihany', '13:25:00', '13:40:00'),
(96, 'M4', 'Tihany', 'Tihanyrév', '14:30:00', '14:50:00'),
(97, 'M4', 'Tihanyrév', 'Balatonföldvár', '14:50:00', '15:05:00'),
(98, 'M5', 'Balatonföldvár', 'Tihanyrév', '15:20:00', '15:40:00'),
(99, 'M5', 'Tihanyrév', 'Tihany', '15:40:00', '15:55:00'),
(100, 'M6', 'Tihany', 'Tihanyrév', '17:30:00', '17:50:00'),
(101, 'M6', 'Tihanyrév', 'Balatonföldvár', '17:50:00', '18:05:00');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `menetrend`
--
ALTER TABLE `menetrend`
  ADD PRIMARY KEY (`azon`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
