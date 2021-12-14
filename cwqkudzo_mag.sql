-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Дек 14 2021 г., 12:55
-- Версия сервера: 5.7.35-cll-lve
-- Версия PHP: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cwqkudzo_mag`
--

-- --------------------------------------------------------

--
-- Структура таблицы `short_urls`
--

CREATE TABLE `short_urls` (
  `id` int(10) UNSIGNED NOT NULL,
  `long_url` text CHARACTER SET utf8 NOT NULL,
  `short_code` varchar(50) CHARACTER SET utf8 NOT NULL,
  `date_created` int(11) UNSIGNED NOT NULL,
  `counter` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `short_urls`
--

INSERT INTO `short_urls` (`id`, `long_url`, `short_code`, `date_created`, `counter`) VALUES
(1, 'https://s24.sharewood.cc/forums/%D0%90%D0%B4%D0%BC%D0%B8%D0%BD%D0%B8%D1%81%D1%82%D1%80%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5-%D0%B8-%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5.33/', 'vBxfKPgW5ICl', 1639398783, 0),
(2, 'https://www.vctr-green.com/page/settings/', 'aJcnOR2J', 1639419387, 2),
(3, 'ShortLinkhttps://skillbox.com.ua/ru/course/profession-php-developer/?utm_source=google&amp;utm_medium=cpc&amp;utm_campaign=1146_profession-php-developer_google_cpc_poisk_course_ua_code_skillbox_14938689483&amp;utm_content=adg_134012377368|ad_552816624235|ph_kwd-827765464294|key_junior%20php%20%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA|dev_m|pst_|rgnid_1012861|placement_|creative_{creative_name}&amp;utm_term=junior%20php%20%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA&amp;gclid=CjwKCAiA-9uNBhBTEiwAN3IlNJhwhjP4IKUxaR5XOi8d6qyFUJ-m-V2Rhl7sBqduwzxLeg8vWq7kJxoCRMIQAvD_BwE', 'RxHoUAGOiW', 1639426696, 4),
(4, 'https://s24.sharewood.cc/threads/webformyself-%D0%92%D0%B5%D1%80%D1%81%D1%82%D0%BA%D0%B0-%D0%9C%D0%B0%D1%81%D1%82%D0%B5%D1%80-%D0%9F%D0%BE%D0%BB%D0%BD%D0%BE%D0%B5-%D1%80%D1%83%D0%BA%D0%BE%D0%B2%D0%BE%D0%B4%D1%81%D1%82%D0%B2%D0%BE-2021.176816/', '4LByyoZd', 1639427048, 3),
(5, 'http://codly.ru/snippets/183/', 'Aey9ZNJbJe', 1639427444, 2),
(6, 'https://www.google.com.ar/search?sxsrf=AOaemvJTsHs8zLipnrSaVaEPOhyrAIhgWA:1639427553639&amp;q=wefewf+few&amp;spell=1&amp;sa=X&amp;ved=2ahUKEwi2hODHz-H0AhWhQuUKHShJBxkQBSgAegQIARAx&amp;biw=1920&amp;bih=937&amp;dpr=1', 'YSObknuC', 1639427564, 1),
(7, 'https://vctr-green.com/adminaka/adminstation.php?a=users', 'JeM7iEJmPTSo', 1639427615, 1),
(8, 'https://allcourses.club/search/6800115/?page=4&amp;q=PHP-%D1%80%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D1%87%D0%B8%D0%BA+%D1%81+%D0%BD%D1%83%D0%BB%D1%8F+%D0%B4%D0%BE+PRO&amp;o=date', 'S8rnpQ', 1639427653, 1),
(9, 'https://www.google.com.ar/search?q=%D0%9A%D0%B0%D0%BA+%D0%B2%D0%BA%D0%BB%D1%8E%D1%87%D0%B8%D1%82%D1%8C&amp;sxsrf=AOaemvLvaYaUdWj9xKbxj8UT55N8x1Z3MQ%3A1639427673048&amp;ei=Wa63YcSgApaI9u8P9Mig0A0&amp;ved=0ahUKEwiEsdiA0OH0AhUWhP0HHXQkCNoQ4dUDCA4&amp;oq=Rfr+drk.xbnm&amp;gs_lcp=Cgdnd3Mtd2l6EAxKBAhBGABKBAhGGABQAFgAYABoAHABeACAAQCIAQCSAQCYAQA&amp;sclient=gws-wiz', 'qTVitZv6', 1639427682, 3);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `short_urls`
--
ALTER TABLE `short_urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `short_code` (`short_code`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `short_urls`
--
ALTER TABLE `short_urls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
