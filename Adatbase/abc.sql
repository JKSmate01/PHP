-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Feb 26. 12:01
-- Kiszolgáló verziója: 10.4.6-MariaDB
-- PHP verzió: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `abc`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vasarlasok`
--

CREATE TABLE `vasarlasok` (
  `vasarlasID` int(11) NOT NULL,
  `vasarloID` int(30) NOT NULL,
  `termek` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `darab` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `vasarlasok`
--

INSERT INTO `vasarlasok` (`vasarlasID`, `vasarloID`, `termek`, `darab`) VALUES
(1, 1, 'laptop', 1),
(2, 5, 'telefon', 2),
(3, 2, 'TV', 1),
(4, 2, 'egér', 5);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vasarlok`
--

CREATE TABLE `vasarlok` (
  `ID` int(11) NOT NULL,
  `vezeteknev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `keresztknev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `lakhely` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `szuletesi_ev` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `vasarlok`
--

INSERT INTO `vasarlok` (`ID`, `vezeteknev`, `keresztknev`, `lakhely`, `szuletesi_ev`) VALUES
(1, 'Horváth', 'Tamás', 'Budapest', 1989),
(2, 'Lakatos', 'Dezső', 'Debrecen', 1961),
(5, 'Losonczi', 'Léna', 'Nyíregyháza', 2005);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `vasarlasok`
--
ALTER TABLE `vasarlasok`
  ADD PRIMARY KEY (`vasarlasID`),
  ADD KEY `vasarloID` (`vasarloID`);

--
-- A tábla indexei `vasarlok`
--
ALTER TABLE `vasarlok`
  ADD PRIMARY KEY (`ID`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `vasarlasok`
--
ALTER TABLE `vasarlasok`
  ADD CONSTRAINT `vasarlasok_ibfk_1` FOREIGN KEY (`vasarloID`) REFERENCES `vasarlok` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
