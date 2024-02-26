-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Nov 22. 09:35
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
-- Adatbázis: `egyetem`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `felev`
--

CREATE TABLE `felev` (
  `id` int(8) NOT NULL,
  `felev_neve` varchar(20) COLLATE utf8_hungarian_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `felev`
--

INSERT INTO `felev` (`id`, `felev_neve`) VALUES
(1, '1872/1873 I. félév'),
(2, '1872/1873 II. félév'),
(3, '1873/1874 I. félév'),
(4, '1873/1874 II. félév'),
(5, '1874/1875 I. félév'),
(6, '1874/1875 II. félév'),
(7, '1875/1876 I. félév'),
(8, '1875/1876 II. félév'),
(9, '1876/1877 I. félév'),
(10, '1876/1877 II. félév'),
(11, '1877/1878 I. félév'),
(12, '1877/1878 II. félév'),
(13, '1878/1879 I. félév'),
(14, '1878/1879 II. félév'),
(15, '1879/1880 I. félév'),
(16, '1879/1880 II. félév'),
(17, '1880/1881 I. félév'),
(18, '1880/1881 II. félév'),
(19, '1881/1882 I. félév'),
(20, '1881/1882 II. félév'),
(21, '1882/1883 I. félév'),
(22, '1882/1883 II. félév'),
(23, '1883/1884 I. félév'),
(24, '1883/1884 II. félév'),
(25, '1884/1885 I. félév'),
(26, '1884/1885 II. félév'),
(27, '1885/1886 I. félév'),
(28, '1885/1886 II. félév'),
(29, '1886/1887 I. félév'),
(30, '1886/1887 II. félév'),
(31, '1887/1888 I. félév'),
(32, '1887/1888 II. félév'),
(33, '1888/1889 I. félév'),
(34, '1888/1889 II. félév'),
(35, '1889/1890 I. félév'),
(36, '1889/1890 II. félév'),
(37, '1890/1891 I. félév'),
(38, '1890/1891 II. félév'),
(39, '1891/1892 I. félév'),
(40, '1891/1892 II. félév'),
(41, '1892/1893 I. félév'),
(42, '1892/1893 II. félév'),
(43, '1893/1894 I. félév'),
(44, '1893/1894 II. félév'),
(45, '1894/1895 I. félév'),
(46, '1894/1895 II. félév'),
(47, '1895/1896 I. félév'),
(48, '1895/1896 II. félév'),
(49, '1896/1897 I. félév'),
(50, '1896/1897 II. félév'),
(51, '1897/1898 I. félév'),
(52, '1897/1898 II. félév'),
(53, '1898/1899 I. félév'),
(54, '1898/1899 II. félév'),
(55, '1899/1900 I. félév'),
(56, '1899/1900 II. félév'),
(57, '1900/1901 I. félév'),
(58, '1900/1901 II. félév'),
(59, '1901/1902 I. félév'),
(60, '1901/1902 II. félév'),
(61, '1902/1903 I. félév'),
(62, '1902/1903 II. félév'),
(63, '1903/1904 I. félév'),
(64, '1903/1904 II. félév'),
(65, '1904/1905 I. félév'),
(66, '1904/1905 II. félév'),
(67, '1905/1906 I. félév'),
(68, '1905/1906 II. félév'),
(69, '1906/1907 I. félév'),
(70, '1906/1907 II. félév'),
(71, '1907/1908 I. félév'),
(72, '1907/1908 II. félév'),
(73, '1908/1909 I. félév'),
(74, '1908/1909 II. félév'),
(75, '1909/1910 I. félév'),
(76, '1909/1910 II. félév'),
(77, '1910/1911 I. félév'),
(78, '1910/1911 II. félév'),
(79, '1911/1912 I. félév'),
(80, '1911/1912 II. félév'),
(81, '1912/1913 I. félév'),
(82, '1912/1913 II. félév'),
(83, '1913/1914 I. félév'),
(84, '1913/1914 II. félév'),
(85, '1914/1915 I. félév'),
(86, '1914/1915 II. félév'),
(87, '1915/1916 I. félév'),
(88, '1915/1916 II. félév'),
(89, '1916/1917 I. félév'),
(90, '1916/1917 II. félév'),
(91, '1917/1918 I. félév'),
(92, '1917/1918 II. félév'),
(93, '1918/1919 I. félév'),
(94, '1918/1919 II. félév'),
(95, '1919/1920 I. félév'),
(96, '1919/1920 II. félév'),
(97, '1920/1921 I. félév'),
(98, '1920/1921 II. félév'),
(99, '1921/1922 I. félév'),
(100, '1921/1922 II. félév'),
(101, '1922/1923 I. félév'),
(102, '1922/1923 II. félév'),
(103, '1923/1924 I. félév'),
(104, '1923/1924 II. félév'),
(105, '1924/1925 I. félév'),
(106, '1924/1925 II. félév'),
(107, '1925/1926 I. félév'),
(108, '1925/1926 II. félév'),
(109, '1926/1927 I. félév'),
(110, '1926/1927 II. félév'),
(111, '1927/1928 I. félév'),
(112, '1927/1928 II. félév'),
(113, '1928/1929 I. félév'),
(114, '1928/1929 II. félév'),
(115, '1929/1930 I. félév'),
(116, '1929/1930 II. félév'),
(117, '1930/1931 I. félév'),
(118, '1930/1931 II. félév'),
(119, '1931/1932 I. félév'),
(120, '1931/1932 II. félév'),
(121, '1932/1933 I. félév'),
(122, '1932/1933 II. félév'),
(123, '1933/1934 I. félév'),
(124, '1933/1934 II. félév'),
(125, '1934/1935 I. félév'),
(126, '1934/1935 II. félév'),
(127, '1935/1936 I. félév'),
(128, '1935/1936 II. félév'),
(129, '1936/1937 I. félév'),
(130, '1936/1937 II. félév'),
(131, '1937/1938 I. félév'),
(132, '1937/1938 II. félév'),
(133, '1938/1939 I. félév'),
(134, '1938/1939 II. félév'),
(135, '1939/1940 I. félév'),
(136, '1939/1940 II. félév'),
(137, '1940/ II. félév');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `felev`
--
ALTER TABLE `felev`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;