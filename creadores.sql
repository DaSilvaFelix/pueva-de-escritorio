-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-06-2024 a las 04:51:30
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `creadores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tareas`
--

CREATE TABLE `tareas` (
  `id_tareas` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `tema` varchar(40) NOT NULL,
  `autor` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tareas`
--

INSERT INTO `tareas` (`id_tareas`, `nombre`, `tema`, `autor`) VALUES
(1, 'funciones', 'matematicas', 'Felix'),
(2, 'sql', 'base de datos', 'tobias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `nombre_user` varchar(50) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `contrasenia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `nombre`, `apellido`, `nombre_user`, `correo`, `contrasenia`) VALUES
(1, 'Felix', 'da silva', 'Felix030', 'brunolok79@gmail.com', '$2b$10$V9GmYqh0bTXN3/q5VY0.yew3bVRCp5F8z.rHMjYWCYomq0GwoNfvS'),
(2, 'Felix', 'da silva', 'Felix030', 'brunolok79@gmail.com', '$2b$10$noJcO4aY5DirDIP1YB3XGOelLYDiG3WGzLPhWJi8agsmlGMf/uaae'),
(3, 'bruno', 'da silva', 'Usuario01', 'brunolok79@gmail.com', '$2b$10$HsdrpDK8t1OsShQ0GWRq9OaPf2sWasXZ2IO.ZMrheEyc5mXx6XkKG'),
(4, 'hernesto', 'benites', 'pacogerte', 'chupa@gmail.com', '$2b$10$8NaEA4lOl2OkjFqSOukZw.t6EvcJdUFcydM/lrZ6Cg7aq0aJLlhke'),
(5, 'tobias', 'de la cruz', 'elDestruyeVaginas', 'ropechonchas@gmail.com', '$2b$10$Ht4GzS5C.am2YzR6zxi5N.kKwJuOiPlAM9q1lBitrE9CEDhBjxe6O');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tareas`
--
ALTER TABLE `tareas`
  ADD PRIMARY KEY (`id_tareas`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tareas`
--
ALTER TABLE `tareas`
  MODIFY `id_tareas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
