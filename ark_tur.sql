-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 20 2023 г., 19:42
-- Версия сервера: 10.4.27-MariaDB
-- Версия PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ark_tur`
--

-- --------------------------------------------------------

--
-- Структура таблицы `darbnieki`
--

CREATE TABLE `darbnieki` (
  `mail` varchar(100) NOT NULL,
  `vards` varchar(50) NOT NULL,
  `uzvards` varchar(50) NOT NULL,
  `numurs` varchar(30) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `darbnieki`
--

INSERT INTO `darbnieki` (`mail`, `vards`, `uzvards`, `numurs`, `level`) VALUES
('arkadijs.jegorovs@gmail.com', 'Arkadijs', 'Jegorovs', '+491010...', 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `tures`
--

CREATE TABLE `tures` (
  `data` date NOT NULL,
  `laiks` time NOT NULL,
  `kur` varchar(50) NOT NULL,
  `cena` int(10) NOT NULL,
  `apraksts` varchar(535) NOT NULL,
  `gids` varchar(50) NOT NULL,
  `reg_users` varchar(535) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `tures`
--

INSERT INTO `tures` (`data`, `laiks`, `kur`, `cena`, `apraksts`, `gids`, `reg_users`) VALUES
('0000-00-00', '08:00:00', 'Daugavpils', 100, 'Apskates ekskursija pa Daugavpili gida pavadībā. Iespēja apmeklēt arī Daugavpils cietoksni .', 'Valdis', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `mail` varchar(100) NOT NULL,
  `vards` varchar(50) NOT NULL,
  `uzvards` varchar(50) NOT NULL,
  `numurs` varchar(15) NOT NULL,
  `extravel` varchar(535) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`mail`, `vards`, `uzvards`, `numurs`, `extravel`) VALUES
('testuser@test.de', 'Otto', 'Berzinsch', '+370 07...', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `darbnieki`
--
ALTER TABLE `darbnieki`
  ADD KEY `mail` (`mail`);

--
-- Индексы таблицы `tures`
--
ALTER TABLE `tures`
  ADD KEY `data` (`data`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`mail`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
