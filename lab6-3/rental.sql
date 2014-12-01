-- phpMyAdmin SQL Dump
-- version 4.0.10
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 27 2014 г., 20:27
-- Версия сервера: 5.5.38-log
-- Версия PHP: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `rental`
--

-- --------------------------------------------------------

--
-- Структура таблицы `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `last_name` text NOT NULL,
  `passport_code` int(11) NOT NULL,
  `registration_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='таблица customer для хранения информации о клиентах';

-- --------------------------------------------------------

--
-- Структура таблицы `dvd`
--

CREATE TABLE IF NOT EXISTS `dvd` (
  `dvd_id` int(4) NOT NULL COMMENT 'уникальный ключ записи',
  `Title` text NOT NULL COMMENT 'название DVD диска',
  `Production_year` int(11) NOT NULL COMMENT 'год выпуска DVD диска',
  UNIQUE KEY `dvd_id` (`dvd_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='таблица dvd для хранение информации о DVD диске';

-- --------------------------------------------------------

--
-- Структура таблицы `offer`
--

CREATE TABLE IF NOT EXISTS `offer` (
  `offer_id` int(11) NOT NULL,
  `dvd_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `offer_date` date NOT NULL,
  `return_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
