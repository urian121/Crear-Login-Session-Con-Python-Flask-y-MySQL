-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-09-2022 a las 04:36:49
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ejemplo_youtube`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login_python`
--

CREATE TABLE `login_python` (
  `id` int(11) NOT NULL,
  `tipo_user` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `sexo` varchar(20) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `create_at` varchar(100) DEFAULT NULL,
  `te_gusta_la_programacion` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `login_python`
--

INSERT INTO `login_python` (`id`, `tipo_user`, `nombre`, `apellido`, `email`, `password`, `sexo`, `pais`, `create_at`, `te_gusta_la_programacion`) VALUES
(2, 1, 'Urian Viera', 'Viera Parra', 'desarrollo@gmail.com', 'sha256$rNCs0EiH36AogNa3$c8b59ab82bdd53643143ad04d80767e7c21157fcf035ee4022e8eba70a7c5003', 'Masculino', 'Venezuela (Bolivarian Republic of)', '2022-9-3', 'Si'),
(3, 2, 'Brenda', 'Viera', 'brenda@gmail.com', 'sha256$7jaYfYrtIWJngvFv$9dda11aea048705442096b09eabf54808fb2db537aaff3da48f2fe2b38834e29', 'Femenino', 'Colombia', '2022-9-4', 'Si');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `login_python`
--
ALTER TABLE `login_python`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `login_python`
--
ALTER TABLE `login_python`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
