-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2017 a las 19:04:53
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `aw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analisis`
--

CREATE TABLE `analisis` (
  `id_analisis` int(11) NOT NULL,
  `id_juego` varchar(50) NOT NULL,
  `id_usuario` varchar(15) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `texto` text NOT NULL,
  `titulo` text NOT NULL,
  `nota` int(11) NOT NULL,
  `val_pos` int(11) NOT NULL,
  `val_neg` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `analisis`
--

INSERT INTO `analisis` (`id_analisis`, `id_juego`, `id_usuario`, `fecha`, `texto`, `titulo`, `nota`, `val_pos`, `val_neg`, `valoracion`) VALUES
(1, 'Horizon: Zero Dawn', 'fran', '2017-05-23 07:21:26', '\n\nYa lo venía siguiendo desde hace tiempo y la verdad es que no decepciona. Voy por pasos. Gráficos: la verdad es que es el mejor junto con Uncharted 4, tengo como 250 capturas Jugabilidad: tiene una jugabilidad increíble, aunque lo mejor es que cuando tienes las mejores armas te crees dios, ahora te aparecen dos begimos y 3 patas largas y tienes que huir y quemar el círculo. Historia: muy bonita la del pasado, la del presente está bien aunque no es comparable Duracion: he tardado 70 horas y me quedan la mitad de secundarias y recados aunque he montado mucho jsjsja Vale lo que te gastes en el en definitiva. Yo lo tengo en el altar con bloodborne, last of usted y mis primeros Assassins\n', 'juegazo exclusivo para ps4', 95, 33, 12, 0),
(2, 'Horizon: Zero Dawn', 'pepe', '2017-05-23 07:21:41', '\n\nWow look at all these pathetic xbots and pc elitists with no games to play giving it 0 after only a few hours after being released. Anyways for a start this is one of the best looking games ever and the best looking game on console by far. Uncharted 4 is a close second and thats it. Ten hours in and I never get tired of just walking around climbing and doing nothing lol. Gameplay is so addictive. Every encounter is different. You have to figure out their weaknesses and how to move and respond. The story is surprisingly more engaging than I thought. Actually it seems to be very well written so far. Obviously in 2017 it is hard to avoid cliches with being raised and the loner type person but you cant really criticise that. Crafting and armor and weapons are great and diverse. I know there is a lot more because I seen somebody a few days ago in a playthrough with the whole weapon wheel filled so I\'ll just say myself that its very in depth. Nothing bad apart from slowish close combat at times and a few not the best executed voice acting lines but not game breaking. Its open world so with all the dialogue needed to be recorded thats something I could forgive and forget. Overall the voice acting is great. So far 10/10 and I don\'t see myself changing my mind\n', 'fiasco para sony', 65, 12, 122, 0),
(3, 'Mass Effect: Andromeda', 'pepe', '2017-05-23 16:57:15', 'This game is just trash.\r\n-Awful animations.\r\n-badly optimized for pc, frame rate drops every time\r\n-bugs everywhere\r\n-writing at high school level\r\n\r\neven though the combat is good, but by time it gets boring af, the crafting system is bad, it gives you all schematics at the beginning, the squadmates are extremely forgettable, i dont even remember the names.\r\n\r\ni would give it a 3/10 for the graphics and the combat, but i will give it 0/10 because it has Denuvo and they sell the game buggy as hell', 'Un apartado técnico limitado engorrona un proyecto prometedor  y esperanzador para la saga y sus fans', 56, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_an`
--

CREATE TABLE `com_an` (
  `id_comentario` int(11) NOT NULL,
  `id_usuario` varchar(15) NOT NULL,
  `id_analisis` int(11) NOT NULL,
  `texto` text NOT NULL,
  `val_pos` int(11) NOT NULL,
  `val_neg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `com_an`
--

INSERT INTO `com_an` (`id_comentario`, `id_usuario`, `id_analisis`, `texto`, `val_pos`, `val_neg`) VALUES
(1, 'pepe', 1, 'te equivocas, estáis todos lobotomizados', 2, 31),
(2, 'fran', 2, 'nada de raazón', 0, 0),
(3, 'pepe', 2, 'sabes que sÃ­ fran', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_op`
--

CREATE TABLE `com_op` (
  `id_comentario` int(11) NOT NULL,
  `id_usuario` varchar(15) NOT NULL,
  `id_opinion` int(11) NOT NULL,
  `texto` text NOT NULL,
  `val_pos` int(11) NOT NULL,
  `val_neg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `com_op`
--

INSERT INTO `com_op` (`id_comentario`, `id_usuario`, `id_opinion`, `texto`, `val_pos`, `val_neg`) VALUES
(1, 'fran', 1, 'esto un comentario', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes_foro`
--

CREATE TABLE `mensajes_foro` (
  `id_mensaje` int(11) NOT NULL,
  `id_tema` int(11) NOT NULL,
  `id_usuario` varchar(15) NOT NULL,
  `texto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opiniones`
--

CREATE TABLE `opiniones` (
  `id_opinion` int(11) NOT NULL,
  `id_juego` varchar(50) NOT NULL,
  `id_usuario` varchar(15) NOT NULL,
  `fecha` date NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `texto` text NOT NULL,
  `val_pos` int(11) NOT NULL,
  `val_neg` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opiniones`
--

INSERT INTO `opiniones` (`id_opinion`, `id_juego`, `id_usuario`, `fecha`, `titulo`, `texto`, `val_pos`, `val_neg`, `valoracion`) VALUES
(1, 'Horizon: Zero Dawn', 'pepe', '2017-05-23', 'esto es una opiniÃ³n', 'primera opinion', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema_foro`
--

CREATE TABLE `tema_foro` (
  `id_tema` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `id_usuario` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` varchar(15) NOT NULL,
  `password` varchar(16) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `correo` varchar(20) NOT NULL,
  `biografia` text NOT NULL,
  `valoracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `password`, `foto`, `correo`, `biografia`, `valoracion`) VALUES
('fran', 'fran', 'img/users/user-48.png', 'fran@gmail.com', 'no me he visto en otra igual.', 42),
('pepe', 'pepe', 'img/users/user-48.png', 'pepe@gmail.com', 'soy pepe', 32);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE `videojuegos` (
  `id_juego` varchar(50) NOT NULL,
  `portada` varchar(100) NOT NULL,
  `fecha_venta` date NOT NULL,
  `plataforma` enum('ps4','pc','xboxOne','ps3','switch','xbox360','wii','wiiU') NOT NULL,
  `genero` enum('accion/aventuras','deportivo','rol','estrategia','MMO','conduccion') NOT NULL,
  `descripcion` text NOT NULL,
  `nota` int(11) NOT NULL,
  `idioma` varchar(20) NOT NULL,
  `jugadores` int(11) NOT NULL,
  `pegi` int(11) NOT NULL,
  `duracion` varchar(20) NOT NULL,
  `trailer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `videojuegos`
--

INSERT INTO `videojuegos` (`id_juego`, `portada`, `fecha_venta`, `plataforma`, `genero`, `descripcion`, `nota`, `idioma`, `jugadores`, `pegi`, `duracion`, `trailer`) VALUES
('Horizon: Zero Dawn', 'img/porthzd.png', '2017-02-01', 'ps4', 'accion/aventuras', 'Aloy vive en un mundo post-apocalíptico, dominado por unos dinosaurios metálicos que están rebelándose frente a los humanos, que conviven ahora en tribus primitivas y que pretenden ignorar el verdadero pasado de la humanidad. ', 96, 'Español', 1, 16, '20-40 horas', 'https://www.youtube.com/embed/_BvZvkT5QHw'),
('Mass Effect: Andromeda', 'img/mea.png', '2017-02-21', 'ps4', 'accion/aventuras', 'Vuelve a sumergirte en una aventura galáctica de la mano de nuevos protagonistas, que lucharán por mantener la paz en el universo a través de campañas que les llevarán a lo largo de la infinidad del espacio exterior, luchando contra nuevos enemigos temibles y peligrosos. ', 72, 'Español-Inglés', 4, 18, '20-40 horas', 'https://www.youtube.com/embed/X6PJEmEHIaY');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `analisis`
--
ALTER TABLE `analisis`
  ADD PRIMARY KEY (`id_analisis`),
  ADD KEY `id_juego` (`id_juego`,`id_usuario`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `com_an`
--
ALTER TABLE `com_an`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_usuario` (`id_usuario`,`id_analisis`),
  ADD KEY `id_analisis` (`id_analisis`);

--
-- Indices de la tabla `com_op`
--
ALTER TABLE `com_op`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `id_usuario` (`id_usuario`,`id_opinion`),
  ADD KEY `id_opinion` (`id_opinion`);

--
-- Indices de la tabla `mensajes_foro`
--
ALTER TABLE `mensajes_foro`
  ADD PRIMARY KEY (`id_mensaje`),
  ADD KEY `id_tema` (`id_tema`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `opiniones`
--
ALTER TABLE `opiniones`
  ADD PRIMARY KEY (`id_opinion`),
  ADD KEY `id_juego` (`id_juego`,`id_usuario`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tema_foro`
--
ALTER TABLE `tema_foro`
  ADD PRIMARY KEY (`id_tema`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD PRIMARY KEY (`id_juego`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `analisis`
--
ALTER TABLE `analisis`
  MODIFY `id_analisis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `com_an`
--
ALTER TABLE `com_an`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `com_op`
--
ALTER TABLE `com_op`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `mensajes_foro`
--
ALTER TABLE `mensajes_foro`
  MODIFY `id_mensaje` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `opiniones`
--
ALTER TABLE `opiniones`
  MODIFY `id_opinion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tema_foro`
--
ALTER TABLE `tema_foro`
  MODIFY `id_tema` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `analisis`
--
ALTER TABLE `analisis`
  ADD CONSTRAINT `analisis_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON DELETE CASCADE,
  ADD CONSTRAINT `analisis_ibfk_2` FOREIGN KEY (`id_juego`) REFERENCES `videojuegos` (`id_juego`) ON DELETE CASCADE;

--
-- Filtros para la tabla `com_an`
--
ALTER TABLE `com_an`
  ADD CONSTRAINT `com_an_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `com_an_ibfk_2` FOREIGN KEY (`id_analisis`) REFERENCES `analisis` (`id_analisis`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `com_op`
--
ALTER TABLE `com_op`
  ADD CONSTRAINT `com_op_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `com_op_ibfk_2` FOREIGN KEY (`id_opinion`) REFERENCES `opiniones` (`id_opinion`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `mensajes_foro`
--
ALTER TABLE `mensajes_foro`
  ADD CONSTRAINT `mensajes_foro_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `mensajes_foro_ibfk_2` FOREIGN KEY (`id_tema`) REFERENCES `tema_foro` (`id_tema`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `opiniones`
--
ALTER TABLE `opiniones`
  ADD CONSTRAINT `opiniones_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE,
  ADD CONSTRAINT `opiniones_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `opiniones_ibfk_3` FOREIGN KEY (`id_juego`) REFERENCES `videojuegos` (`id_juego`) ON DELETE CASCADE;

--
-- Filtros para la tabla `tema_foro`
--
ALTER TABLE `tema_foro`
  ADD CONSTRAINT `tema_foro_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
