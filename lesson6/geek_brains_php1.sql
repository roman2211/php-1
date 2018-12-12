-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 12 2018 г., 21:21
-- Версия сервера: 5.6.37
-- Версия PHP: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `geek_brains_php1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `fio` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `text` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comment`
--

INSERT INTO `comment` (`id`, `fio`, `email`, `text`, `date`) VALUES
(7, 'Roman', 'qwerty@mail.ru', 'Super!', '2017-10-28 15:44:53'),
(8, 'Roman', 'erer@mail.ru', '111111', '2017-10-28 15:46:34'),
(9, '11', '222@mail.ru', '333', '2017-10-28 18:49:03');

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `src` varchar(255) NOT NULL,
  `small_src` varchar(255) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `description`, `price`, `src`, `small_src`, `is_active`) VALUES
(1, 'Ноутбук Lenovo IdeaPad 110-15IBR (80T700С2RK)', 'Устройство справится с любыми профессиональными, бытовыми и учебными задачами, включая просмотр качественного видео и работу с офисными приложениями. Оно снабжено современным процессором Intel и оперативной памятью с большим объёмом.', 18990, 'uploads/7.jpg', 'uploads/mini/7.jpg', 1),
(2, 'Ноутбук HP 15-bs516ur 2GF21EA', 'Встроенный адаптер Wi-Fi a/c поддерживает такую же высокую скорость передачи данных, как линия Ethernet. При этом он сохраняет устойчивое соединение с роутером на большом расстоянии. Кроме того, ноутбук снабжён всем необходимым для подключения периферийного оборудования, включая порты USB и HDMI, а также передатчик Bluetooth.', 22500, 'uploads/5a48e1b05e92bbc5a50a809e516e1edf.jpg', 'uploads/mini/5a48e1b05e92bbc5a50a809e516e1edf.jpg', 1),
(16, 'Тест', 'тест', 11111, 'uploads/64270.jpg', 'uploads/mini/64270.jpg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  `small_src` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `images`
--

INSERT INTO `images` (`id`, `name`, `src`, `small_src`, `size`, `count`) VALUES
(32, '7.jpg', 'uploads/7.jpg', 'uploads/mini/7.jpg', 50232, 1),
(33, '5a48e1b05e92bbc5a50a809e516e1edf.jpg', 'uploads/5a48e1b05e92bbc5a50a809e516e1edf.jpg', 'uploads/mini/5a48e1b05e92bbc5a50a809e516e1edf.jpg', 759342, 0),
(34, '64270.jpg', 'uploads/64270.jpg', 'uploads/mini/64270.jpg', 108256, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `img`
--

CREATE TABLE `img` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `link` varchar(100) NOT NULL,
  `size` varchar(50) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `img`
--

INSERT INTO `img` (`id`, `title`, `link`, `size`, `count`) VALUES
(1, 'js world', '1.jpg', '2500x1250', 11),
(2, 'js monitor', '2.jpg', '750x422', 15),
(3, 'js learning', '3.jpg', '650x361', 9),
(4, 'js communal services', '4.jpg', '550x413', 7);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `src` (`src`);

--
-- Индексы таблицы `img`
--
ALTER TABLE `img`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT для таблицы `img`
--
ALTER TABLE `img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
