-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-07-2023 a las 06:51:19
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdpalalu`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_publicaciones`
--

CREATE TABLE `tabla_publicaciones` (
  `col_id` int(3) NOT NULL,
  `col_titulo` varchar(100) NOT NULL,
  `col_subtitulo` varchar(100) NOT NULL,
  `col_link` varchar(200) NOT NULL,
  `col_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tabla_videos`
--

CREATE TABLE `tabla_videos` (
  `col_id` int(3) NOT NULL,
  `col_titulo` varchar(200) NOT NULL,
  `col_descrip` varchar(1000) NOT NULL,
  `col_fecha` date NOT NULL,
  `col_iframesrc` varchar(200) NOT NULL,
  `col_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `tabla_videos`
--

INSERT INTO `tabla_videos` (`col_id`, `col_titulo`, `col_descrip`, `col_fecha`, `col_iframesrc`, `col_img`) VALUES
(1, 'Mi sombrerito vueltiao | música infantil', 'Esta es la primera canción infantil que hace un lindo homenaje al reconocido sombrero vueltiao, pieza artesanal del caribe colombiano.  \r\nVersión subtitula para cantar y bailar, como antesala al video oficial de este lindo tema.', '2023-06-13', 'https://www.youtube.com/embed/-sPwqBsN0zo', 'misombrerito.png'),
(2, 'Hellen visita colegio de niños comprometidos con el planeta | The Lighthouse School | Earth day', 'Hellen Palalú asiste a su primera invitación, The Lighthouse School celebra el día de la tierra y reconociendo el trabajo de Palalú Kids en cabeza de Hellen con el llamado a cuidar nuestro planeta, participa de las actividades organizadas por el colegio.', '2023-05-03', 'https://www.youtube.com/embed/JxnNKL0kBs4', 'Earthday.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `union_video_publicacion`
--

CREATE TABLE `union_video_publicacion` (
  `col_id` int(4) NOT NULL,
  `col_idpubli` int(3) NOT NULL,
  `col_idvideo` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tabla_publicaciones`
--
ALTER TABLE `tabla_publicaciones`
  ADD PRIMARY KEY (`col_id`);

--
-- Indices de la tabla `tabla_videos`
--
ALTER TABLE `tabla_videos`
  ADD PRIMARY KEY (`col_id`);

--
-- Indices de la tabla `union_video_publicacion`
--
ALTER TABLE `union_video_publicacion`
  ADD PRIMARY KEY (`col_id`),
  ADD KEY `col_idpubli` (`col_idpubli`),
  ADD KEY `col_idvideo` (`col_idvideo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tabla_publicaciones`
--
ALTER TABLE `tabla_publicaciones`
  MODIFY `col_id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tabla_videos`
--
ALTER TABLE `tabla_videos`
  MODIFY `col_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `union_video_publicacion`
--
ALTER TABLE `union_video_publicacion`
  MODIFY `col_id` int(4) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
