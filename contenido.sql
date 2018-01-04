-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 04-01-2018 a las 12:18:34
-- Versión del servidor: 5.7.20-0ubuntu0.16.04.1
-- Versión de PHP: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido`
--

CREATE TABLE `contenido` (
  `id` int(11) NOT NULL,
  `titulo` varchar(25) NOT NULL,
  `fecha` datetime NOT NULL,
  `comentario` text NOT NULL,
  `imagen` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `contenido`
--

INSERT INTO `contenido` (`id`, `titulo`, `fecha`, `comentario`, `imagen`) VALUES
(4, 'Hola Mundo', '2017-12-23 18:32:06', 'Hola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola MundoHola Mundo', 'noalapublicidad.jpg'),
(5, 'caramelo azul', '2017-12-25 16:16:30', 'caramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azulcaramelo azul', 'aconcagua.jpg'),
(6, '', '2017-12-25 16:16:50', '', ''),
(7, '', '2017-12-25 16:19:39', '', ''),
(8, '', '2017-12-25 16:19:41', '', ''),
(9, '', '2017-12-25 16:19:41', '', ''),
(10, '', '2017-12-25 16:19:42', '', ''),
(11, '', '2017-12-25 16:19:43', '', ''),
(12, '', '2017-12-25 16:20:28', '', ''),
(13, 'Chau mundo', '2017-12-25 16:21:14', 'Chau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundo', 'aconcagua.jpg'),
(14, 'Chau mundo', '2017-12-25 16:23:17', 'Chau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundoChau mundo', 'aconcagua.jpg'),
(15, 'Peto p', '2017-12-25 17:07:46', 'Peto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto pPeto p', 'Map_Westeros_Political.gif'),
(16, 'yo s&eacute;.', '2017-12-26 21:54:09', 'yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.yo s&eacute;.', 'banderaarg.jpg'),
(17, '', '2017-12-29 19:32:21', '', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contenido`
--
ALTER TABLE `contenido`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contenido`
--
ALTER TABLE `contenido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
