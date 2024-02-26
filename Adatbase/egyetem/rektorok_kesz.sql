-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Jún 02. 13:28
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
-- Adatbázis: `rektorok`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `magyarazat`
--

CREATE TABLE `magyarazat` (
  `jel` varchar(3) COLLATE utf8_hungarian_ci NOT NULL,
  `jelentes` varchar(50) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `magyarazat`
--

INSERT INTO `magyarazat` (`jel`, `jelentes`) VALUES
('b.', 'a bölcsészeti kar jelöltje'),
('j.', 'a jogi kar jelöltje'),
('k.', 'a közgazdaságtudományi kar jelöltje'),
('m.', 'a matematika-természettudományi kar jelöltje\r\n'),
('o.', 'az orvosi kar jelöltje');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `rektor`
--

CREATE TABLE `rektor` (
  `id` int(5) NOT NULL,
  `tanev` varchar(10) COLLATE utf8_hungarian_ci NOT NULL,
  `nev` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `szul_hely` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `szuletett` date NOT NULL,
  `halal_helye` varchar(80) COLLATE utf8_hungarian_ci NOT NULL,
  `meghalt` date DEFAULT NULL,
  `kar` varchar(20) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `rektor` tinyint(1) NOT NULL,
  `dekan` tinyint(1) NOT NULL,
  `link` varchar(255) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `rektor`
--

INSERT INTO `rektor` (`id`, `tanev`, `nev`, `szul_hely`, `szuletett`, `halal_helye`, `meghalt`, `kar`, `rektor`, `dekan`, `link`) VALUES
(1, '1872/1873', 'Berde Áron', 'Laborfalva', '1819-03-08', 'Kolozsvár', '1892-01-25', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/653271'),
(2, '1873/1874', 'Schulek Vilmos', 'Pest', '1843-04-21', 'Budapest', '1905-03-13', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/653048'),
(3, '1873/1874', 'Machik Béla', 'Zágráb', '1839-08-07', 'Budapest', '1879-07-13', 'o.', 1, 0, 'nincs'),
(4, '1874/1875', 'Finály Henrik', 'Óbuda', '1825-01-16', 'Kolozsvár', '1898-02-13', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/651858'),
(5, '1875/1876', 'Entz Géza', 'Mezőkomárom', '1842-03-29', 'Budapest', '1919-12-04', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/652866'),
(6, '1876/1877', 'Groisz Gusztáv', 'Kolozsvár', '1840-07-15', 'Budapest', '1899-01-21', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/719611'),
(7, '1877/1878', 'Genersich Antal', 'Nagyszombat', '1842-02-04', 'Budapest', '1918-06-04', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/651699'),
(8, '1878/1879', 'Imre Sándor', 'Hegyközpályi', '1820-08-06', 'Hódmezővásárhely', '1900-12-21', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/szemelyi-nevter/?id=651741&date=2023-05-26'),
(9, '1879/1880', 'Brassai Sámuel', 'Torockószentgyörgy', '1800-02-13', 'Kolozsvár', '1897-06-24', 'm.', 1, 0, 'nincs'),
(10, '1880/1881', 'Hilibi Haller Károly', 'Nagyszeben', '1836-10-14', 'Budapest', '1911-02-07', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/664463'),
(11, '1881/1882', 'Ajtay K. Sándor', 'Kolozsvár', '1845-03-24', 'Budapest', '1917-06-04', 'o.', 1, 0, 'nincs'),
(12, '1882/1883', 'Szabó Károly', 'Köröstarcsa', '1824-12-17', 'Kolozsvár', '1890-08-31', 'b.', 1, 1, 'nincs'),
(13, '1883/1884', 'Abt Antal', 'Rézbánya', '1828-11-04', 'Kolozsvár', '1902-04-02', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/658135'),
(14, '1884/1885', 'Csíky Viktor', 'Marosvásárhely', '1839-01-01', 'Marosvásárhely', '0000-00-00', 'j.', 1, 0, 'nincs'),
(15, '1885/1886', 'Maizner János', 'Vác', '1828-05-24', 'Kolozsvár', '1902-06-30', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/667308'),
(16, '1886/1887', 'Szamosi János', 'Kolozsvár', '1840-04-18', 'Kolozsvár', '1909-04-27', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/734056'),
(17, '1887/1888', 'Kanitz Ágoston', 'Lugos', '1843-04-25', 'Kolozsvár', '1896-07-02', 'm.', 1, 0, 'nincs'),
(18, '1888/1889', 'Kolosváry Sándor', 'Lukafalva', '1840-06-23', 'Budapest', '1922-08-07', 'j.', 1, 0, 'nincs'),
(19, '1889/1890', 'Klug Nándor', 'Kotterbach', '1845-10-18', 'Budapest', '1909-05-14', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/652288'),
(20, '1890/1891', 'Szász Béla', '\r\nNagyenyed', '1840-04-23', 'Kolozsvár', '1898-07-07', 'b.', 1, 1, 'nincs'),
(21, '1891/1892', 'Koch Antal', 'Zombor', '1843-01-07', 'Budapest', '1927-02-08', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/652294'),
(22, '1892/1893', 'Óvári Kelemen', 'Pécs', '1844-11-21', 'Kolozsvár', '1925-12-17', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/652781'),
(23, '1893/1894', 'Brandt József', 'Pósfalva', '1838-01-01', 'Kolozsvár', '1912-06-12', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/663629'),
(24, '1894/1895', 'Meltzl Hugó', 'Szászrégen', '1846-07-31', 'Nagyvárad', '1908-01-20', 'b.', 1, 0, '\r\nhttps://magyarnemzetinevter.hu/person/671532'),
(25, '1895/1896', 'Martin Lajos', 'Buda', '1827-08-30', 'Kolozsvár', '1897-03-04', 'm.', 1, 1, 'https://magyarnemzetinevter.hu/person/6517998'),
(26, '1896/1897', 'Farkas Lajos', 'Bonchida', '1841-11-14', 'Kolozsvár', '1921-06-24', 'j.', 1, 0, 'nincs'),
(27, '1897/1898', 'Lechner Károly', 'Pest', '1850-03-21', 'Budapest', '1922-01-19', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/652440'),
(28, '1898/1899', 'Terner Adolf', 'Buda', '1835-05-03', 'Lajtaszentmiklós', '1908-02-13', 'b.', 1, 0, 'https://magyarnemzetinevter.hu/szemelyi-nevter/?id=735502&date=2023-05-19'),
(29, '1899/1900', 'Fabinyi Rudolf', 'Jolsva', '1849-05-30', 'Budapest', '1920-03-07', 'm.', 1, 1, 'https://magyarnemzetinevter.hu/person/652870'),
(30, '1900/1901', 'Vályi Gábor', 'Marosvásárhely', '1844-05-12', 'Kolozsvár', '1926-05-16', 'j.', 1, 0, 'nincs'),
(31, '1901/1902 ', 'Illyefalvi Lőte József', 'Maroscsúcs', '1856-03-19', 'Budapest', '1938-07-13', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/657927'),
(32, '1902/1903 ', 'Schilling Lajos', 'Kolozsvár', '1854-01-27', 'Kolozsvár', '1921-08-29', 'b.', 1, 0, 'https://magyarnemzetinevter.hu/person/731968'),
(33, '1903/1904 ', 'Apáthy István', 'Pest', '1863-01-04', 'Szeged', '1922-09-27', 'm.', 1, 1, 'https://magyarnemzetinevter.hu/person/653181'),
(34, '1904/1905', 'Kiss Mór', 'Kolozsvár', '1857-05-12', 'Budapest', '1945-09-06', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/666975'),
(35, '1905/1906 ', 'Szabó Dénes', 'Pest', '1856-05-04', 'Kolozsvár', '0000-00-00', 'o.', 1, 0, 'nincs'),
(36, '1906/1907 ', 'Moldován Gergely', 'Szamosújvár', '1845-03-12', 'Kolozsvár', '1930-08-06', 'b.', 1, 0, 'nincs'),
(37, '1907/1908 ', 'Farkas Gyula', 'Sárosd', '1847-03-28', 'Budapest', '1930-12-27', 'm.', 1, 0, 'nincs'),
(38, '1908/1909 ', 'Jancsó György', 'Tállya', '1853-02-24', 'Rimini', '0000-00-00', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/661339'),
(39, '1909/1910 ', 'Udránszky László', 'Budatin', '1862-10-12', 'Budapest', '0000-00-00', 'o.', 1, 0, 'nincs'),
(40, '1910/1911 ', 'Szádeczky Lajos', 'Pusztafalu', '1859-04-05', 'Budapest', '0000-00-00', 'b.', 1, 0, 'https://magyarnemzetinevter.hu/person/653057'),
(41, '1911/1912 ', 'Szádeczky Gyula', 'Pusztafalu', '1860-12-30', 'Kolozsvár', '1935-11-08', 'm.', 1, 1, 'https://magyarnemzetinevter.hu/person/670577'),
(42, '1912/1913 ', 'Kosutány Ignác', 'Mátészalka', '1851-06-06', 'Budapest', '1940-01-20', 'j.', 1, 0, 'nincs'),
(43, '1913/1914 ', 'Kenyeres Balázs', 'Brassó', '1865-02-21', 'Budapest', '1940-02-10', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/652208'),
(44, '1914/1915 ', 'Márki Sándor', 'Kétegyház', '1853-03-27', 'Gödöllő', '1925-07-01', 'b.', 1, 0, 'https://magyarnemzetinevter.hu/person/652610'),
(45, '1915/1916 ', 'Tangl Károly', 'Pest', '1869-10-14', 'Budapest', '1940-01-10', 'm.', 1, 1, 'https://magyarnemzetinevter.hu/person/652837'),
(46, '1916/1917 ', 'Lukáts Adolf', 'Felsőolsva', '1848-05-16', 'Budapest', '1924-05-20', 'j.', 0, 0, 'https://magyarnemzetinevter.hu/person/662979'),
(47, '1917/1918 ', 'Rigler Gusztáv', 'Dunamocs', '1868-11-04', 'Budapest', '1930-08-20', 'o.', 1, 0, 'nincs'),
(48, '1918/1919 ', 'Schneller István', 'Kőszeg', '1847-08-03', 'Budapest', '1939-01-25', 'b.', 1, 0, 'https://magyarnemzetinevter.hu/person/653012'),
(49, '1919/1920 ', 'Kolosváry Bálint', 'Kolozsvár', '1875-01-25', 'Budapest', '1954-08-28', 'j.', 1, 0, 'nincs'),
(50, '1921/1922', 'Menyhárth Gáspár', 'Ekel', '1868-01-06', 'Szeged', '1940-07-30', 'j.', 1, 1, 'nincs'),
(51, '1922/1923', 'Pfeiffer Péter', 'Füle', '1862-01-31', 'Szeged', '1947-11-07', 'm.', 1, 0, 'nincs'),
(52, '1923/1924', 'Veszprémy Dezső', 'Sajószentandrás', '1871-03-01', 'Szeged', '1924-05-24', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/661064'),
(53, '1924/1925', 'Csengery János', 'Szatmárnémeti', '1856-10-02', 'Graz', '1945-04-21', 'b.', 1, 0, 'nincs'),
(54, '1925/1926', 'Riesz Frigyes', 'Győr', '1880-01-22', 'Budapest', '1956-02-28', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/652970'),
(55, '1926/1927', 'Tóth Károly', 'Kiskunhalas', '1876-09-28', 'Budapest', '1956-02-28', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/665722'),
(56, '1927/1928', 'Reinbold Béla', 'Hidasnémeti', '1880-12-19', 'Székesfehérvár', '1959-04-16', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/668376'),
(57, '1928/1929', 'Dézsi Lajos', 'Debrecen', '1868-08-22', 'Budapest', '1932-09-17', 'b.', 1, 0, 'nincs'),
(58, '1929/1930', 'Győrffy István', 'Hidasnémeti', '1880-12-19', 'Székesfehérvár', '1928-04-21', 'm.', 1, 1, 'https://magyarnemzetinevter.hu/person/652879'),
(59, '1930/1931', 'Kováts Ferenc', 'Pozsony', '1873-03-15', 'Budapest', '1956-10-26', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/651965'),
(60, '1931/1932', 'Veress Elemér', 'Kolozsvár', '1876-01-04', 'Szeged', '1959-03-31', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/670944'),
(61, '1932/1933', 'Schmidt Henrik', 'Újverbász', '1877-10-14', 'Szeged', '1953-12-18', 'b.', 1, 0, 'nincs'),
(62, '1933/1934', 'Széki Tibor', 'Kolozsvár', '1879-04-18', 'Budapest', '1950-12-04', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/651651'),
(63, '1934/1935', 'Kiss Albert', 'Kecskemét', '1874-11-02', 'Szikra', '1937-07-01', 'j.', 1, 1, 'https://magyarnemzetinevter.hu/person/664436'),
(64, '1935/1936', 'Ditrói Gábor', 'Kolozsvár', '1884-10-03', 'Szeged', '1950-05-07', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/666304'),
(65, '1936/1937', 'Erdélyi László Gyula', 'Zsigárd', '1868-03-02', 'Zalaapáti', '1947-08-17', 'b.', 1, 0, 'https://magyarnemzetinevter.hu/person/652284/'),
(66, '1937/1938', 'Gelei József', 'Árkos', '1885-08-20', 'Budapest', '1952-05-20', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/652877'),
(67, '1938/1939', 'Ereky István', 'Esztergom', '1876-12-26', 'Budapest', '1943-05-21', 'j.', 1, 1, 'nincs'),
(68, '1939/1940', 'Baló József', 'Budapest', '1895-11-10', 'Budapest', '1979-10-10', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/652678'),
(69, '1940/1941', 'Szent-Györgyi Albert', 'Budapest', '1893-09-16', 'Woods Hole, Massachusetts', '1986-10-22', '', 1, 0, 'https://magyarnemzetinevter.hu/person/651859'),
(70, '1941/1942', 'Kogutowicz Károly', 'Budapest', '1886-02-14', 'Ludwigsburg, Württemberg', '1948-09-06', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/667883'),
(71, '1942/1943', 'Fröhlich Pál', 'Torzsa', '1889-12-06', 'Szeged', '1904-10-15', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/651654'),
(72, '1945/1946', 'Purjesz Béla', 'Mindszent', '1884-10-14', 'Szeged', '1959-09-14', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/656415'),
(73, '1946/1947', 'Tóth László', 'Tápiószele', '1895-06-04', 'Szeged', '1958-10-12', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/654753'),
(74, '1947/1948', 'Székely István', 'Gyula', '1888-01-01', 'Budapest', '1954-10-12', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/666444'),
(75, '1948/1949', 'Ditrói Gábor', 'Kolozsvár', '1884-10-03', 'Szeged', '1950-05-07', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/666304'),
(76, '1949/1950', 'Trencsényi-Waidapfel Imre', 'Budapest', '1908-06-16', 'Budapest', '1970-06-02', 'b.', 1, 1, 'nincs'),
(77, '1950/1951', 'Kalmár László', 'Alsóbogát', '1905-03-27', 'Gyöngyös', '1976-08-02', 'm.', 1, 0, 'nincs'),
(78, '1953/1954', 'Fodor Gábor', 'Budapest', '1915-12-05', 'Morgantown, Nyugat-Virginia, USA', '2000-11-03', 'k.', 1, 0, 'https://magyarnemzetinevter.hu/person/652563'),
(79, '1954/1955', 'Kiss Árpád', 'Csernátfalu', '1907-04-21', 'Csernátfalu', '1979-09-29', 'j.', 1, 0, 'nincs'),
(80, '1955/1956', 'Baróti Dezső', 'Torda', '1911-10-02', 'Budapest', '1994-09-05', '0.', 1, 0, 'https://magyarnemzetinevter.hu/person/680162'),
(81, '1956/1957', 'Bólya Lajos', 'Kolozsnéma', '1905-01-09', 'Budapest', '1978-05-19', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/663442'),
(82, '1957/1958', 'Greguss Pál', 'Tornya', '1889-12-31', 'Szeged', '1984-03-23', '0.', 1, 0, 'https://magyarnemzetinevter.hu/person/662778'),
(83, '1958/1959', 'Antalffy György', 'Szeged', '1920-06-01', 'Szeged', '1993-12-26', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/655066'),
(84, '1959/1960', 'Antalffy György', 'Szeged', '1920-06-01', 'Szeged', '1993-12-26', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/655066'),
(85, '1960/1961', 'Antalffy György', 'Szeged', '1920-06-01', 'Szeged', '1993-12-26', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/655067'),
(86, '1961/1962', 'Antalffy György', 'Szeged', '1920-06-01', 'Szeged', '1993-12-26', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/655068'),
(87, '1962/1963', 'Antalffy György', 'Szeged', '1920-06-01', 'Szeged', '1993-12-26', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/655069'),
(88, '1963/1964', 'Antalffy György', 'Szeged', '1920-06-01', 'Szeged', '1993-12-26', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/655070'),
(89, '1964/1965', 'Szabó Zoltán', 'Budapest', '1912-06-05', 'Vannes', '1984-08-19', '?', 1, 0, 'nincs'),
(90, '1965/1966', 'Szabó Zoltán', 'Budapest', '1912-06-05', 'Vannes', '1984-08-19', '?', 1, 0, 'nincs'),
(91, '1966/1967', 'Szabó Zoltán', 'Budapest', '1912-06-05', 'Vannes', '1984-08-19', '?', 1, 0, 'nincs'),
(92, '1967/1968', 'Márta Ferenc', 'Kiskundorozsma', '1929-01-12', 'Budapest', '2010-02-25', '?', 1, 0, 'https://magyarnemzetinevter.hu/person/651029'),
(93, '1968/1969', 'Márta Ferenc', 'Kiskundorozsma', '1929-01-12', 'Budapest', '2010-02-25', '?', 1, 0, 'https://magyarnemzetinevter.hu/person/651030'),
(94, '1969/1970', 'Márta Ferenc', 'Kiskundorozsma', '1929-01-12', 'Budapest', '2010-02-25', '?', 1, 0, 'https://magyarnemzetinevter.hu/person/651031'),
(95, '1970/1971', 'Márta Ferenc', 'Kiskundorozsma', '1929-01-12', 'Budapest', '2010-02-25', '?', 1, 0, 'https://magyarnemzetinevter.hu/person/651032'),
(96, '1971/1972', 'Márta Ferenc', 'Kiskundorozsma', '1929-01-12', 'Budapest', '2010-02-25', '?', 1, 0, 'https://magyarnemzetinevter.hu/person/651033'),
(97, '1972/1973', 'Márta Ferenc', 'Kiskundorozsma', '1929-01-12', 'Budapest', '2010-02-25', '?', 1, 0, 'https://magyarnemzetinevter.hu/person/651034'),
(98, '1973/1974', 'Fodor Géza', 'Szeged', '1927-05-06', 'Szeged', '1977-09-28', '?', 1, 0, 'https://magyarnemzetinevter.hu/person/652564'),
(99, '1974/1975', 'Fodor Géza', 'Szeged', '1927-05-06', 'Szeged', '1977-09-28', '?', 1, 0, 'https://magyarnemzetinevter.hu/person/652565'),
(100, '1975/1976', 'Fodor Géza', 'Szeged', '1927-05-06', 'Szeged', '1977-09-28', '?', 1, 0, 'https://magyarnemzetinevter.hu/person/652566'),
(101, '1976/1977', 'Antalffy György', 'Szeged', '1920-06-01', 'Szeged', '1993-12-26', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/655066'),
(102, '1977/1978', 'Antalffy György', 'Szeged', '1920-06-01', 'Szeged', '1993-12-26', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/655067'),
(103, '1978/1979', 'Antalffy György', 'Szeged', '1920-06-01', 'Szeged', '1993-12-26', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/655068'),
(104, '1979/1980', 'Antalffy György', 'Szeged', '1920-06-01', 'Szeged', '1993-12-26', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/655069'),
(105, '1980/1981', 'Antalffy György', 'Szeged', '1920-06-01', 'Szeged', '1993-12-26', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/655070'),
(106, '1981/1982', 'Antalffy György', 'Szeged', '1920-06-01', 'Szeged', '1993-12-26', 'j.', 1, 0, 'https://magyarnemzetinevter.hu/person/655071'),
(107, '1982/1983', 'Kristó Gyula', 'Orosháza', '1939-07-11', 'Szeged', '2004-01-24', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/652390'),
(108, '1983/1984', 'Kristó Gyula', 'Orosháza', '1939-07-11', 'Szeged', '2004-01-24', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/652391'),
(109, '1984/1985', 'Kristó Gyula', 'Orosháza', '1939-07-11', 'Szeged', '2004-01-24', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/652392'),
(110, '1985/1986', 'Csákány Béla', 'Karcag', '1932-09-18', 'Karcag', '2022-03-13', 'm.', 1, 0, 'nincs'),
(111, '1986/1987', 'Csákány Béla', 'Karcag', '1932-09-18', 'Karcag', '2022-03-13', 'm.', 1, 0, 'nincs'),
(112, '1987/1988', 'Csákány Béla', 'Karcag', '1932-09-18', 'Karcag', '2022-03-13', 'm.', 1, 0, 'nincs'),
(113, '1988/1989', 'Csákány Béla', 'Karcag', '1932-09-18', 'Karcag', '2022-03-13', 'm.', 1, 0, 'nincs'),
(114, '1989/1990', 'Csákány Béla', 'Karcag', '1932-09-18', 'Karcag', '2022-03-13', 'm.', 1, 0, 'nincs'),
(115, '1990/1991', 'Csákány Béla', 'Karcag', '1932-09-18', 'Karcag', '2022-03-13', 'm.', 1, 0, 'nincs'),
(116, '1991/1992', 'Róna-Tas András', 'Budapest', '1931-12-30', '', '0000-00-00', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/654308'),
(117, '1992/1993', 'Csirik János', 'Ambrózfalva', '1946-04-14', '', '0000-00-00', 'm.', 1, 0, 'nincs'),
(118, '1993/1994', 'Csirik János', 'Ambrózfalva', '1946-04-14', '', '0000-00-00', 'm.', 1, 0, 'nincs'),
(119, '1994/1995', 'Csirik János', 'Ambrózfalva', '1946-04-14', '', '0000-00-00', 'm.', 1, 0, 'nincs'),
(120, '1995/1996', 'Mészáros Rezső', 'Makó', '1942-03-04', '', '0000-00-00', 't.', 1, 0, 'https://magyarnemzetinevter.hu/person/654058'),
(121, '1996/1997', 'Mészáros Rezső', 'Makó', '1942-03-04', '', '0000-00-00', 't.', 1, 0, 'https://magyarnemzetinevter.hu/person/654059'),
(122, '1997/1998', 'Mészáros Rezső', 'Makó', '1942-03-04', '', '0000-00-00', 't.', 1, 0, 'https://magyarnemzetinevter.hu/person/654060'),
(123, '1998/1999', 'Mészáros Rezső', 'Makó', '1942-03-04', '', '0000-00-00', 't.', 1, 0, 'https://magyarnemzetinevter.hu/person/654061'),
(124, '1999/2000', 'Mészáros Rezső', 'Makó', '1942-03-04', '', '0000-00-00', 't.', 1, 0, 'https://magyarnemzetinevter.hu/person/654062'),
(125, '2000/2001', 'Mészáros Rezső', 'Makó', '1942-03-04', '', '0000-00-00', 't.', 1, 0, 'https://magyarnemzetinevter.hu/person/654063'),
(126, '2001/2002', 'Mészáros Rezső', 'Makó', '1942-03-04', '', '0000-00-00', 't.', 1, 0, 'https://magyarnemzetinevter.hu/person/654064'),
(127, '2002/2003', 'Mészáros Rezső', 'Makó', '1942-03-04', '', '0000-00-00', 't.', 1, 0, 'https://magyarnemzetinevter.hu/person/654065'),
(128, '2003/2004', 'Keszthelyi Szabó Gábor', 'Karcag', '1953-04-16', '', '0000-00-00', 'g.', 1, 0, 'nincs'),
(129, '2004/2005', 'Keszthelyi Szabó Gábor', 'Karcag', '1953-04-16', '', '0000-00-00', 'g.', 1, 0, 'nincs'),
(130, '2005/2006', 'Keszthelyi Szabó Gábor', 'Karcag', '1953-04-16', '', '0000-00-00', 'g.', 1, 0, 'nincs'),
(131, '2006/2007', 'Keszthelyi Szabó Gábor', 'Karcag', '1953-04-16', '', '0000-00-00', 'g.', 1, 0, 'nincs'),
(132, '2007/2008', 'Keszthelyi Szabó Gábor', 'Karcag', '1953-04-16', '', '0000-00-00', 'g.', 1, 0, 'nincs'),
(133, '2008/2009', 'Keszthelyi Szabó Gábor', 'Karcag', '1953-04-16', '', '0000-00-00', 'g.', 1, 0, 'nincs'),
(134, '2009/2010', 'Keszthelyi Szabó Gábor', 'Karcag', '1953-04-16', '', '0000-00-00', 'g.', 1, 0, 'nincs'),
(135, '2010/2011', 'Szabó Gábor', 'Nagykanizsa', '1954-01-28', '', '0000-00-00', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/654428'),
(136, '2011/2012', 'Szabó Gábor', 'Nagykanizsa', '1954-01-29', '', '0000-00-00', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/654429'),
(137, '2012/2013', 'Szabó Gábor', 'Nagykanizsa', '1954-01-30', '', '0000-00-00', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/654430'),
(138, '2013/2014', 'Szabó Gábor', 'Nagykanizsa', '1954-01-31', '', '0000-00-00', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/654431'),
(139, '2014/2015', 'Szabó Gábor', 'Nagykanizsa', '1954-02-01', '', '0000-00-00', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/654432'),
(140, '201/2016', 'Szabó Gábor', 'Nagykanizsa', '1954-02-02', '', '0000-00-00', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/654433'),
(141, '2016/2017', 'Szabó Gábor', 'Nagykanizsa', '1954-02-03', '', '0000-00-00', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/654434'),
(142, '2017/2018', 'Szabó Gábor', 'Nagykanizsa', '1954-02-04', '', '0000-00-00', 'm.', 1, 0, 'https://magyarnemzetinevter.hu/person/654435'),
(143, '2018/2019', 'Rovó László', 'Szeged', '1965-01-03', '', '0000-00-00', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/1739815'),
(144, '2019/2020', 'Rovó László', 'Szeged', '1965-01-03', '', '0000-00-00', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/1739816'),
(145, '2020/2021', 'Rovó László', 'Szeged', '1965-01-03', '', '0000-00-00', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/1739817'),
(146, '2021/2022', 'Rovó László', 'Szeged', '1965-01-03', '', '0000-00-00', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/1739818'),
(147, '2022/2023', 'Rovó László', 'Szeged', '1965-01-03', '', '0000-00-00', 'o.', 1, 0, 'https://magyarnemzetinevter.hu/person/1739819'),
(148, '1872/73', 'Imre Sándor', 'Hegyközpályi', '1820-08-06', 'Hódmezővásárhely', '1900-12-21', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/651741'),
(149, '1873/74', 'Ladányi Gedeon', 'Hirip', '1824-05-24', 'Kolozsvár', '1886-02-04', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/651987'),
(150, '1874/75', 'Szamosi János', 'Kolozsvár', '1840-04-18', 'Kolozsvár', '1909-03-27', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/734056'),
(151, '1875/76', 'Szász Béla', 'Nagyenyed', '1840-04-23', 'Kolozsvár', '1898-07-07', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/651890'),
(152, '1876/77', 'Finály Henrik', 'Óbuda', '1825-01-16', 'Kolozsvár', '1898-02-13', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/651858'),
(153, '1877/78', 'Hóman Ottó', 'Magyaróvár', '1843-09-30', 'Budapest', '1903-10-16', 'b.', 0, 1, 'nincs'),
(154, '1878/79', 'Hóman Ottó', 'Magyaróvár', '1843-09-30', 'Budapest', '1903-10-16', 'b.', 0, 1, 'nincs'),
(155, '1879/80', 'Szász Béla', 'Nagyenyed', '1840-04-23', 'Kolozsvár', '1898-07-07', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/651890'),
(156, '1880/81', 'Terner Adolf', 'Budapest', '1835-05-03', 'Pozsony', '1918-02-13', 'b.', 1, 1, 'nincs'),
(157, '1881/82', 'Szabó Károly', 'Köröstarcsa', '1824-12-17', 'Kolozsvár', '1890-08-31', 'b.', 1, 1, ''),
(158, '1882/83', 'Felméri Lajos', 'Székelyudvarhely', '1840-09-29', 'Kolozsvár', '1894-05-22', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/670816'),
(159, '1883/84', 'Szilasi Gregoriu', 'Bethlen', '1836-01-27', 'Naszód', '1897-01-17', 'b.', 0, 1, ''),
(160, '1884/85', 'Hóman Ottó', 'Magyaróvár', '1843-09-30', 'Budapest', '1903-10-16', 'b.', 0, 1, ''),
(161, '1885/86', 'Szamosi János', 'Kolozsvár', '1840-04-18', 'Kolozsvár', '1909-04-27', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/734056'),
(162, '1886/87', 'Szász Béla', 'Nagyenyed', '1840-04-23', 'Kolozsvár', '1898-07-07', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/651890'),
(163, '1887/88', 'Finály Henrik', 'Óbuda', '1825-01-16', 'Kolozsvár', '1898-02-13', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/651858'),
(164, '1888/89', 'Meltzl Hugó', 'Szászrégen', '1846-07-31', 'Nagyvárad', '1908-01-20', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/671532'),
(165, '1889/90', 'Hegedűs István', 'Kolozsvár', '1848-09-07', 'Orosháza', '1925-12-31', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/651920'),
(166, '1890/91', 'Szinnyei József', 'Pozsony', '1857-05-26', 'Budapest', '1943-04-14', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/652940'),
(167, '1891/92', 'Schilling Lajos', 'Kolozsvár', '1854-01-27', 'Kolozsvár', '1921-08-29', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/731968'),
(168, '1892/93', 'Moldován Gergely', 'Szamosújvár', '1845-03-12', 'Kolozsvár', '1930-08-06', 'b.', 1, 1, 'nincs'),
(169, '1893/94', 'Széchy Károly', 'Cegléd', '1848-02-18', 'Budapest', '1906-01-03', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/651968'),
(170, '1894/95', 'Pecz Vilmos', 'Horgospataka', '1854-03-20', 'Budapest', '1923-11-09', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/653006'),
(171, '1895/96', 'Szádeczky-K. Lajos', 'Pusztafalu', '1895-04-05', 'Budapest', '1935-12-29', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/653057'),
(172, '1896/97', 'Márki Sándor', 'Kétegyháza', '1853-03-27', 'Gödöllő', '1925-07-01', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/652610'),
(173, '1897/98', 'Halász Ignác', 'Tés', '1855-05-26', 'Budapest', '1901-04-09', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/651869'),
(174, '1898/99', 'Schneller István', 'Kőszeg', '1847-08-03', 'Budapest', '1939-01-25', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/653012'),
(175, '1899/00', 'Haraszti Gyula', 'Kolozsvár', '1858-08-25', 'Budapest', '1921-07-15', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/651892'),
(176, '1900/01', 'Csengery János', 'Szatmárnémeti', '1856-10-02', 'Graz', '1945-04-21', 'b.', 1, 1, ''),
(177, '1901/02', 'Böhm Károly', 'Ismeretlen', '1880-01-01', 'Ismeretlen', '0000-00-00', 'b.', 0, 1, ''),
(178, '1902/03', 'Moldován Gergely', 'Szamosújvár', '1845-03-12', 'Kolozsvár', '1930-08-06', 'b.', 1, 1, ''),
(179, '1903/04', 'Vajda Gyula', 'Kaposvár', '1843-05-14', 'Kolozsvár', '1909-03-26', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/672222'),
(180, '1904/05', 'Posta Béla', 'Kecskemét', '1862-08-22', 'Kolozsvár', '1919-04-16', 'b.', 0, 1, 'nincs'),
(181, '1905/06', 'Schilling Lajos', 'Kolozsvár', '1854-01-27', 'Kolozsvár', '1921-08-29', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/731968'),
(182, '1906/07', 'Szádeczky-K. Lajos', 'Pusztafalu', '1859-04-05', 'Budapest', '1935-12-29', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/653057'),
(183, '1907/08', 'Márki Sándor', 'Kétegyháza', '1853-03-27', 'Gödölő', '1925-07-01', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/652610'),
(184, '1908/09', 'Schneller István', 'Kőszeg', '1847-08-03', 'Budapest', '1939-01-25', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/653012'),
(185, '1909/10', 'Haraszti Gyula', 'Kolozsvár', '1858-08-25', 'Budapest', '1921-07-15', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/651892'),
(186, '1910/11', 'Posta Béla', 'Kecskemét', '1862-08-22', 'Kolozsvár', '1919-04-16', 'b.', 0, 1, 'nincs'),
(187, '1911/12', 'Cholnoky Jenő', 'Veszprém', '1870-07-23', 'Budapest', '1950-07-05', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/652749'),
(188, '1912/13', 'Zolnai Gyula', 'Nagysomkút', '1862-12-03', 'Budapest', '1949-12-24', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/653148'),
(189, '1913/14', 'Dézsi Lajos', 'Debrecen', '1868-08-22', 'Budapest', '1932-09-17', 'b.', 1, 1, ''),
(190, '1914/15', 'Schmidt Henrik', 'Verbász', '1877-10-14', 'Szeged', '1953-12-18', 'b.', 1, 1, 'nincs'),
(191, '1915/16', 'Schmidt Henrik', 'Verbász', '1877-10-14', 'Szeged', '1953-12-18', 'b.', 0, 1, ''),
(192, '1916/17', 'Erdélyi László', 'Zsigárd', '1868-03-17', 'Zalaapáti', '1947-08-17', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/652284'),
(193, '1917/18', 'Hornyánszky Gyula', 'Pest', '1869-09-22', 'Budapest', '1933-01-31', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/651723'),
(194, '1918/19', 'Moldován Gergely', 'Szamosújvár', '1845-03-12', 'Kolozsvár', '1930-08-06', 'b.', 1, 1, ''),
(195, '1919/20', 'Cholnoky Jenő', 'Veszprém', '1870-07-23', 'Budapest', '1950-07-05', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/652749'),
(196, '1919/20', 'Márki Sándor', 'Kétegyháza', '1853-03-27', 'Gödölő', '1925-07-01', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/652610'),
(197, '1920/21', 'Márki Sándor', 'Kétegyháza', '1853-03-27', 'Gödölő', '1925-07-01', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/652610'),
(198, '1921/22', 'Csengery János', 'Szatmárnémeti', '1856-10-02', 'Graz', '1945-04-21', 'b.', 1, 1, ''),
(199, '1922/23', 'Dézsi Lajos', 'Debrecen', '1868-08-22', 'Budapest', '1932-09-17', 'b.', 1, 1, 'https://hu.wikipedia.org/wiki/D%C3%A9zsi_Lajos'),
(200, '1923/24', 'Schmidt Henrik', 'Verbász', '1877-10-14', 'Szeged', '1953-12-18', 'b.', 1, 1, ''),
(201, '1924/25', 'Erdélyi László', 'Zsigárd', '1868-03-02', 'Zalaapáti', '1947-08-15', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/652284'),
(202, '1925/26', 'Bartók György', 'Nagyenyed', '1882-08-03', 'Budapest', '1970-11-26', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/652849'),
(203, '1926/27', 'Bartók György', 'Nagyenyed', '1882-08-03', 'Budapest', '1970-11-26', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/652849'),
(204, '1927/28', 'Horger Antal', 'Lugos', '1872-05-28', 'Budapest', '1946-04-14', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Horger_Antal'),
(205, '1928/29', 'Mészöly Gedeon', 'Tabajd', '1880-06-10', 'Budapest', '1960-05-29', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/652690'),
(206, '1929/30', 'Kogutowicz Károly', 'Budapest', '1886-02-14', 'Ludwisburg', '1948-09-06', 'b.', 1, 1, ''),
(207, '1930/31', 'Huszti József', 'Zalabér', '1887-10-10', 'Budapest', '1954-01-02', 'b.', 0, 1, 'nincs'),
(208, '1931/32', 'Buday Árpád', 'Morosgezse', '1879-01-17', 'Szeged', '1937-04-07', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/663317'),
(209, '1932/33', 'Imre Sándor', 'Hódmezővásárhely', '1877-10-13', 'Budapest', '1945-03-11', 'b.', 1, 1, ''),
(210, '1933/34', 'Schmidt Henrik', 'Verbász', '1877-10-14', 'Szeged', '1953-12-18', 'b.', 1, 1, 'nincs'),
(211, '1934/35', 'Fógel József', 'Szatmárnémeti', '1884-03-10', 'Szeged', '1941-10-17', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/651886'),
(212, '1935/36', 'Zolnai Béla', 'Székesfehérvár', '1890-03-10', 'Budapest', '1969-05-26', 'b.', 0, 1, ''),
(213, '1936/37', 'Várkonyi Hildebrand', 'Ismeretlen', '0000-00-00', 'Ismeretlen', '0000-00-00', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/660977'),
(214, '1937/38', 'Várkonyi Hildebrand', 'kéménd', '1888-08-03', 'Budapest', '1971-05-20', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/660977'),
(215, '1938/39', 'Mester János', 'Magyarpécska', '1879-09-15', 'Budapest', '1954-07-01', 'b.', 0, 1, 'nincs'),
(216, '1939/40', 'Várady Imre', 'Nagybecskerek', '1892-07-03', '', '1974-08-24', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/669795'),
(217, '1940/41', 'Várady Imre', 'Nagybecskerek', '1892-07-04', '', '1974-08-25', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/669795'),
(218, '1941/42', 'Bartók György', 'Nagyenyed', '1882-08-03', 'Budapest', '1970-11-26', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/652849'),
(219, '1942/43', 'Mészöly Gedeon', 'Tabajd', '1880-06-10', '', '1960-05-29', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/652690'),
(220, '1943/44', 'Kristóf György', 'Tófalva', '1878-10-02', 'Kolozsvár', '1965-10-15', 'b.', 0, 1, 'nincs'),
(221, '1944/45', 'Koszó János', 'Lippa', '1892-04-25', 'Budapest', '1952-10-10', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/659791'),
(222, '1944/45', '(György Lajos)', 'Marosvásárhely', '1890-04-03', 'Kolozsvár', '1950-12-31', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Gy%C3%B6rgy_Lajos_(irodalomt%C3%B6rt%C3%A9n%C3%A9sz)'),
(223, '1945/1946', 'Tóth László', 'Tápiószele', '1895-06-04', 'Szeged', '1958-10-12', 'b.', 1, 1, ''),
(224, '1946/1947', 'Mester János', 'Magyarpécska', '1879-09-15', 'Budapest', '1954-07-01', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Mester_J%C3%A1nos_(filoz%C3%B3fus)'),
(225, '1947/1948', 'Birkás Géza', 'Köveskál', '1879-08-01', 'Szeged', '1951-10-15', 'b.', 0, 1, 'nincs'),
(226, '1948/1949', 'Prinz Gyula', 'Püspökmolnári (Rábamolnári)', '1882-01-11', 'Budapest', '1973-12-31', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/652768'),
(227, '1949/1950', 'Mészöly Gedeon', 'Tabajd', '1880-07-10', 'Budapest', '1960-05-29', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/652690'),
(228, '1950/1951', 'Tettamanti Béla', 'Budapest', '1884-09-30', 'Szeged', '1959-06-28', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/663767'),
(229, '1953/1954', 'Baróti Dezső', 'Torda', '1911-10-02', 'Budapest', '1994-09-05', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/680162'),
(230, '1954/1955', 'Baróti Dezső', 'Torda', '1911-10-02', 'Budapest', '1994-09-05', 'b.', 1, 1, 'https://magyarnemzetinevter.hu/person/680162'),
(231, '1955/1956', 'Nyíri Antal', 'Szentes', '1907-03-09', 'Szeged', '2000-12-13', 'b.', 0, 1, ''),
(232, '1956/1957', 'Nyíri Antal', 'Szentes', '1907-03-09', 'Szeged', '2000-12-13', 'b.', 0, 1, ''),
(233, '1957/1958', 'Halász Előd', 'Budapest', '1920-10-09', 'Budapest', '1997-06-28', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Hal%C3%A1sz_El%C5%91d'),
(234, '1958/1959', 'Halász Előd', 'Budapest', '1920-10-09', 'Budapest', '1997-06-28', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Hal%C3%A1sz_El%C5%91d'),
(235, '1959/1960', 'Halász Előd', 'Budapest', '1920-10-09', 'Budapest', '1997-06-28', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Hal%C3%A1sz_El%C5%91d'),
(236, '1960/1961', 'Mérei Gyula', 'Budapest', '1911-07-19', 'Szeged', '2002-06-29', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/M%C3%A9rei_Gyula'),
(237, '1961/1962', 'Mérei Gyula', 'Budapest', '1911-07-19', 'Szeged', '2002-06-29', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/M%C3%A9rei_Gyula'),
(238, '1962/1963', 'Mérei Gyula', 'Budapest', '1911-07-19', 'Szeged', '2002-06-29', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/M%C3%A9rei_Gyula'),
(239, '1963/1964', 'Mérei Gyula', 'Budapest', '1911-07-19', 'Szeged', '2002-06-29', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/M%C3%A9rei_Gyula'),
(240, '1964/1965', 'Szauder József', 'Budapest', '1917-02-26', 'Budapest', '1975-08-06', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Szauder_J%C3%B3zsef'),
(241, '1965/1966', 'Halász Előd', 'Budapest', '1920-10-09', 'Budapest', '1997-06-28', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Hal%C3%A1sz_El%C5%91d'),
(242, '1966/1967', 'Halász Előd', 'Budapest', '1920-10-09', 'Budapest', '1997-06-28', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Hal%C3%A1sz_El%C5%91d'),
(243, '1967/1968', 'Halász Előd', 'Budapest', '1920-10-09', 'Budapest', '1997-06-28', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Hal%C3%A1sz_El%C5%91d'),
(244, '1968/1969', 'Halász Előd', 'Budapest', '1920-10-09', 'Budapest', '1997-06-28', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Hal%C3%A1sz_El%C5%91d'),
(245, '1969/1970', 'Kalocsai Dezső', 'Bánréve', '1924-09-28', 'Budapest', '2006-01-15', 'b.', 0, 1, ''),
(246, '1970/1971', 'Kalocsai Dezső', 'Bánréve', '1924-09-28', 'Budapest', '2006-01-15', 'b.', 0, 1, ''),
(247, '1971/1972', 'Kalocsai Dezső', 'Bánréve', '1924-09-28', 'Budapest', '2006-01-15', 'b.', 0, 1, ''),
(248, '1972/1973', 'Hajdú Péter', 'Budapest', '1923-12-27', 'Budapest', '2002-09-19', 'b.', 0, 1, ''),
(249, '1973/1974', 'Hajdú Péter', 'Budapest', '1923-12-27', 'Budapest', '2002-09-19', 'b.', 0, 1, ''),
(250, '1974/1975', 'Csukás István', 'Kisújszállás', '1936-04-02', 'Budapest', '2020-02-24', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Csuk%C3%A1s_Istv%C3%A1n'),
(251, '1975/1976', 'Csukás István', 'Kisújszállás', '1936-04-02', 'Budapest', '2020-02-24', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Csuk%C3%A1s_Istv%C3%A1n'),
(252, '1976/1977', 'Csukás István', 'Kisújszállás', '1936-04-02', 'Budapest', '2020-02-24', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Csuk%C3%A1s_Istv%C3%A1n'),
(253, '1977/1978', 'Csukás István', 'Kisújszállás', '1936-04-02', 'Budapest', '2020-02-24', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Csuk%C3%A1s_Istv%C3%A1n'),
(254, '1978/1979', 'Csukás István', 'Kisújszállás', '1936-04-02', 'Budapest', '2020-02-24', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Csuk%C3%A1s_Istv%C3%A1n'),
(255, '1979/1980', 'Csukás István', 'Kisújszállás', '1936-04-02', 'Budapest', '2020-02-24', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Csuk%C3%A1s_Istv%C3%A1n'),
(256, '1980/1981', 'Serfőző Lajos', 'Szolnok', '1930-02-21', 'Szeged', '1994-04-30', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/830662'),
(257, '1981/1982', 'Serfőző Lajos', 'Szolnok', '1930-02-21', 'Szeged', '1994-04-30', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/830663'),
(258, '1982/1983', 'Serfőző Lajos', 'Szolnok', '1930-02-21', 'Szeged', '1994-04-30', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/830664'),
(259, '1983/1984', 'Serfőző Lajos', 'Szolnok', '1930-02-21', 'Szeged', '1994-04-30', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/830665'),
(260, '1984/1985', 'Mikola Tibor', 'Budapest', '1936-02-19', 'Szeged', '2000-06-13', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/684632'),
(261, '1985/1986', 'Mikola Tibor', 'Budapest', '1936-02-19', 'Szeged', '2000-06-13', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/684633'),
(262, '1986/1987', 'Mikola Tibor', 'Budapest', '1936-02-19', 'Szeged', '2000-06-13', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/684634'),
(263, '1987/1988', 'Kristó Gyula', 'Orosháza', '1939-06-11', 'Szeged', '2004-01-24', 'b.', 1, 1, 'https://hu.wikipedia.org/wiki/Krist%C3%B3_Gyula'),
(264, '1988/1989', 'Kristó Gyula', 'Orosháza', '1939-06-11', 'Szeged', '2004-01-24', 'b.', 1, 1, 'https://hu.wikipedia.org/wiki/Krist%C3%B3_Gyula'),
(265, '1989/1990', 'Kristó Gyula', 'Orosháza', '1939-06-11', 'Szeged', '2004-01-24', 'b.', 1, 1, 'https://hu.wikipedia.org/wiki/Krist%C3%B3_Gyula'),
(266, '1990/1991', 'Mikola Tibor', 'Budapest', '1936-02-19', 'Szeged', '2000-06-13', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/684632'),
(267, '1991/1992', 'Mikola Tibor', 'Budapest', '1936-02-19', 'Szeged', '2000-06-13', 'b.', 0, 1, 'https://magyarnemzetinevter.hu/person/684632'),
(268, '1992/1993', 'Pál József', 'Gyömrő', '1953-01-18', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/P%C3%A1l_J%C3%B3zsef_(irodalomt%C3%B6rt%C3%A9n%C3%A9sz)'),
(269, '1993/1994', 'Pál József', 'Gyömrő', '1953-01-18', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/P%C3%A1l_J%C3%B3zsef_(irodalomt%C3%B6rt%C3%A9n%C3%A9sz)'),
(270, '1994/1995', 'Bernáth Árpád', 'Jánoshalma', '1941-02-15', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Bern%C3%A1th_%C3%81rp%C3%A1d'),
(271, '1995/1996', 'Bernáth Árpád', 'Jánoshalma', '1941-02-15', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Bern%C3%A1th_%C3%81rp%C3%A1d'),
(272, '1996/1997', 'Bernáth Árpád', 'Jánoshalma', '1941-02-15', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Bern%C3%A1th_%C3%81rp%C3%A1d'),
(273, '1997/1998', 'Bernáth Árpád', 'Jánoshalma', '1941-02-15', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Bern%C3%A1th_%C3%81rp%C3%A1d'),
(274, '1998/1999', 'Berta Árpád', 'Hódmezővásárhely', '1951-07-28', 'Szeged', '2008-03-09', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Berta_%C3%81rp%C3%A1d'),
(275, '1999/2000', 'Berta Árpád', 'Hódmezővásárhely', '1951-07-28', 'Szeged', '2008-03-09', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Berta_%C3%81rp%C3%A1d'),
(276, '2000/2001', 'Berta Árpád', 'Hódmezővásárhely', '1951-07-28', 'Szeged', '2008-03-09', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Berta_%C3%81rp%C3%A1d'),
(277, '2001/2002', 'Berta Árpád', 'Hódmezővásárhely', '1951-07-28', 'Szeged', '2008-03-09', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Berta_%C3%81rp%C3%A1d'),
(278, '2002/2003', 'Berta Árpád', 'Hódmezővásárhely', '1951-07-28', 'Szeged', '2008-03-09', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Berta_%C3%81rp%C3%A1d'),
(279, '2003/2004', 'Berta Árpád', 'Hódmezővásárhely', '1951-07-28', 'Szeged', '2008-03-09', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Berta_%C3%81rp%C3%A1d'),
(280, '2004/2005', 'Berta Árpád', 'Hódmezővásárhely', '1951-07-28', 'Szeged', '2008-03-09', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Berta_%C3%81rp%C3%A1d'),
(281, '2005/2006', 'Almási Tibor', 'Szeged', '1952-06-23', 'el', '0000-00-00', 'b.', 0, 1, ''),
(282, '2006/2007', 'Almási Tibor', 'Szeged', '1952-06-23', 'el', '0000-00-00', 'b.', 0, 1, ''),
(283, '2007/2008', 'Almási Tibor', 'Szeged', '1952-06-23', 'el', '0000-00-00', 'b.', 0, 1, ''),
(284, '2008/2009', 'Csernus Sándor', 'Algyő', '0000-00-00', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Csernus_S%C3%A1ndor_(t%C3%B6rt%C3%A9n%C3%A9sz)'),
(285, '2009/2010', 'Csernus Sándor', 'Algyő', '0000-00-00', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Csernus_S%C3%A1ndor_(t%C3%B6rt%C3%A9n%C3%A9sz)'),
(286, '2010/2011', 'Csernus Sándor', 'Algyő', '0000-00-00', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Csernus_S%C3%A1ndor_(t%C3%B6rt%C3%A9n%C3%A9sz)'),
(287, '2011/2012', 'Csernus Sándor', 'Algyő', '0000-00-00', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Csernus_S%C3%A1ndor_(t%C3%B6rt%C3%A9n%C3%A9sz)'),
(288, '2012/2013', 'Csernus Sándor', 'Algyő', '0000-00-00', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Csernus_S%C3%A1ndor_(t%C3%B6rt%C3%A9n%C3%A9sz)'),
(289, '2013/2014', 'Csernus Sándor', 'Algyő', '0000-00-00', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Csernus_S%C3%A1ndor_(t%C3%B6rt%C3%A9n%C3%A9sz)'),
(290, '2014/2015', 'Szajbély Mihály', 'Budapest', '1952-11-27', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Szajb%C3%A9ly_Mih%C3%A1ly'),
(291, '201/2016', 'Szajbély Mihály', 'Budapest', '1952-11-27', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Szajb%C3%A9ly_Mih%C3%A1ly'),
(292, '2016/2017', 'Szajbély Mihály', 'Budapest', '1952-11-27', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Szajb%C3%A9ly_Mih%C3%A1ly'),
(293, '2017/2018', 'Szajbély Mihály', 'Budapest', '1952-11-27', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Szajb%C3%A9ly_Mih%C3%A1ly'),
(294, '2018/2019', 'Szajbély Mihály', 'Budapest', '1952-11-27', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Szajb%C3%A9ly_Mih%C3%A1ly'),
(295, '2019/2020', 'Szajbély Mihály', 'Budapest', '1952-11-27', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Szajb%C3%A9ly_Mih%C3%A1ly'),
(296, '2020/2021', 'Gyenge Zoltán', 'Berettyóújfalu', '1962-09-14', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Gyenge_Zolt%C3%A1n'),
(297, '2021/2022', 'Gyenge Zoltán', 'Berettyóújfalu', '1962-09-15', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Gyenge_Zolt%C3%A1n'),
(298, '2022/2023', 'Gyenge Zoltán', 'Berettyóújfalu', '1962-09-16', 'el', '0000-00-00', 'b.', 0, 1, 'https://hu.wikipedia.org/wiki/Gyenge_Zolt%C3%A1n');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `magyarazat`
--
ALTER TABLE `magyarazat`
  ADD PRIMARY KEY (`jel`),
  ADD KEY `jel` (`jel`);

--
-- A tábla indexei `rektor`
--
ALTER TABLE `rektor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kar` (`kar`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `rektor`
--
ALTER TABLE `rektor`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `magyarazat`
--
ALTER TABLE `magyarazat`
  ADD CONSTRAINT `magyarazat_ibfk_1` FOREIGN KEY (`jel`) REFERENCES `rektor` (`kar`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
