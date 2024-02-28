

-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Feb 28. 11:29
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `grafika`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `elemek`
--

CREATE TABLE `elemek` (
  `type` varchar(10) NOT NULL,
  `r` int(11) NOT NULL,
  `g` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  `colorname` varchar(20) NOT NULL,
  `x1` int(11) NOT NULL,
  `y1` int(11) NOT NULL,
  `x2` int(11) NOT NULL,
  `y2` int(11) NOT NULL,
  `centerx` int(11) NOT NULL,
  `centery` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `elemek`
--

INSERT INTO `elemek` (`type`, `r`, `g`, `b`, `colorname`, `x1`, `y1`, `x2`, `y2`, `centerx`, `centery`, `width`, `height`, `code`) VALUES
('color', 255, 0, 0, 'piros', 0, 0, 0, 0, 0, 0, 0, 0, 1),
('color', 0, 255, 0, 'zold', 0, 0, 0, 0, 0, 0, 0, 0, 2),
('color', 33, 99, 120, 'nemtom', 0, 0, 0, 0, 0, 0, 0, 0, 3),
('circle', 0, 0, 0, 'nemtom', 0, 0, 0, 0, 150, 150, 50, 50, 4),
('rectangle', 0, 0, 0, 'piros', 20, 20, 150, 150, 0, 0, 0, 0, 5);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `elemek`
--
ALTER TABLE `elemek`
  ADD PRIMARY KEY (`code`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `elemek`
--
ALTER TABLE `elemek`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
