-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-05-2017 a las 18:50:04
-- Versión del servidor: 5.5.40
-- Versión de PHP: 5.5.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `aw`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analisis`
--

CREATE TABLE IF NOT EXISTS `analisis` (
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `analisis`
--

INSERT INTO `analisis` (`id_analisis`, `id_juego`, `id_usuario`, `fecha`, `texto`, `titulo`, `nota`, `val_pos`, `val_neg`, `valoracion`) VALUES
(1, 'Horizon: Zero Dawn', 'fran', '2017-05-26 16:27:13', '\n\nYa lo venía siguiendo desde hace tiempo y la verdad es que no decepciona. Voy por pasos. Gráficos: la verdad es que es el mejor junto con Uncharted 4, tengo como 250 capturas Jugabilidad: tiene una jugabilidad increíble, aunque lo mejor es que cuando tienes las mejores armas te crees dios, ahora te aparecen dos begimos y 3 patas largas y tienes que huir y quemar el círculo. Historia: muy bonita la del pasado, la del presente está bien aunque no es comparable Duracion: he tardado 70 horas y me quedan la mitad de secundarias y recados aunque he montado mucho jsjsja Vale lo que te gastes en el en definitiva. Yo lo tengo en el altar con bloodborne, last of usted y mis primeros Assassins\n', 'juegazo exclusivo para ps4', 95, 29, 12, 23),
(2, 'Horizon: Zero Dawn', 'pepe', '2017-05-26 16:30:34', '\n\nWow look at all these pathetic xbots and pc elitists with no games to play giving it 0 after only a few hours after being released. Anyways for a start this is one of the best looking games ever and the best looking game on console by far. Uncharted 4 is a close second and thats it. Ten hours in and I never get tired of just walking around climbing and doing nothing lol. Gameplay is so addictive. Every encounter is different. You have to figure out their weaknesses and how to move and respond. The story is surprisingly more engaging than I thought. Actually it seems to be very well written so far. Obviously in 2017 it is hard to avoid cliches with being raised and the loner type person but you cant really criticise that. Crafting and armor and weapons are great and diverse. I know there is a lot more because I seen somebody a few days ago in a playthrough with the whole weapon wheel filled so I''ll just say myself that its very in depth. Nothing bad apart from slowish close combat at times and a few not the best executed voice acting lines but not game breaking. Its open world so with all the dialogue needed to be recorded thats something I could forgive and forget. Overall the voice acting is great. So far 10/10 and I don''t see myself changing my mind\n', 'fiasco para sony', 65, 16, 122, -110),
(3, 'Mass Effect: Andromeda', 'pepe', '2017-05-26 16:42:36', 'This game is just trash.\r\n-Awful animations.\r\n-badly optimized for pc, frame rate drops every time\r\n-bugs everywhere\r\n-writing at high school level\r\n\r\neven though the combat is good, but by time it gets boring af, the crafting system is bad, it gives you all schematics at the beginning, the squadmates are extremely forgettable, i dont even remember the names.\r\n\r\ni would give it a 3/10 for the graphics and the combat, but i will give it 0/10 because it has Denuvo and they sell the game buggy as hell', 'Un apartado técnico limitado engorrona un proyecto prometedor  y esperanzador para la saga y sus fans', 56, 1, 1, -2),
(5, 'Mass Effect: Andromeda', 'xblackgamer', '2017-05-25 20:01:59', 'fÃ­sicas de antigua generaciÃ³n, caras de ps2, una historia mala y con un montÃ³n de contradicciones respecto a la anterior saga. A los mandos resulta divertido e incluso gratificante, pero la historia no engancha como para jugarlo.', 'lamentable', 69, 2, 0, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_an`
--

CREATE TABLE IF NOT EXISTS `com_an` (
`id_comentario` int(11) NOT NULL,
  `id_usuario` varchar(15) NOT NULL,
  `id_analisis` int(11) NOT NULL,
  `texto` text NOT NULL,
  `val_pos` int(11) NOT NULL,
  `val_neg` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `com_an`
--

INSERT INTO `com_an` (`id_comentario`, `id_usuario`, `id_analisis`, `texto`, `val_pos`, `val_neg`, `valoracion`, `fecha`) VALUES
(1, 'pepe', 1, 'te equivocas, estáis todos lobotomizados', 3, 30, -27, '2017-05-27 08:15:56'),
(2, 'fran', 2, 'nada de raazón', 1, 0, 1, '2017-05-27 08:15:56'),
(3, 'pepe', 2, 'sabes que sÃ­ fran', 0, 0, 0, '2017-05-27 08:15:56'),
(4, 'pepe', 2, 'que no', 0, 0, 0, '2017-05-27 08:15:56'),
(5, 'xblackgamer', 3, 'toda la razÃ³n compaÃ±ero', 0, 0, 0, '2017-05-27 08:15:56'),
(6, 'marius', 1, 'no pepe, no tienes razÃ³n', 1, 0, -1, '2017-05-27 08:15:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `com_op`
--

CREATE TABLE IF NOT EXISTS `com_op` (
`id_comentario` int(11) NOT NULL,
  `id_usuario` varchar(15) NOT NULL,
  `id_opinion` int(11) NOT NULL,
  `texto` text NOT NULL,
  `val_pos` int(11) NOT NULL,
  `val_neg` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `com_op`
--

INSERT INTO `com_op` (`id_comentario`, `id_usuario`, `id_opinion`, `texto`, `val_pos`, `val_neg`, `valoracion`, `fecha`) VALUES
(1, 'fran', 1, 'esto un comentario', 1, 0, 1, '2017-05-27 08:15:40'),
(2, 'fran', 1, 'comentario2', 0, 1, -1, '2017-05-27 08:15:40'),
(3, 'fran', 1, 'cpo2', 1, 0, 1, '2017-05-27 08:15:40'),
(4, 'xblackgamer', 2, 'igual que pepe, de acuerdo!!', 0, 0, 0, '2017-05-27 08:15:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lanzamientos`
--

CREATE TABLE IF NOT EXISTS `lanzamientos` (
  `id_lanzamiento` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `plataformas` enum('ps4','ps3','xboxOne','xbox360','pc','switch','wii','wiiU') NOT NULL,
  `genero` enum('accion/aventura','deportivo','rol','estrategia','MMO','conduccion') NOT NULL,
  `avance` text NOT NULL,
  `idioma` varchar(20) NOT NULL,
  `duracion` varchar(20) NOT NULL,
  `pegi` int(11) NOT NULL,
  `video` varchar(100) NOT NULL,
  `portada` varchar(100) NOT NULL,
  `jugadores` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `lanzamientos`
--

INSERT INTO `lanzamientos` (`id_lanzamiento`, `fecha`, `plataformas`, `genero`, `avance`, `idioma`, `duracion`, `pegi`, `video`, `portada`, `jugadores`) VALUES
('Outlast 2', '2017-04-24', 'ps4', 'accion/aventura', 'Tras invertir horas y horas explorando el sanatorio de Mount Massive en la primera parte de Outlast, su secuela llega con la intención de hacernos palidecer de miedo en un contexto completamente nuevo. El título de terror de Red Barrels aborda temas como el culto satánico en una producción que busca ahondar en temas más siniestros y pavorosos que el algo convencional argumento del original.\r\n', 'Español-Inglés', '10-12 horas', 18, 'https://www.youtube.com/embed/16pEzz_ihtY', 'img/portout.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `megusta_an`
--

CREATE TABLE IF NOT EXISTS `megusta_an` (
  `id_usuario` varchar(15) NOT NULL,
  `id_analisis` int(11) NOT NULL,
  `likedislike` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `megusta_an`
--

INSERT INTO `megusta_an` (`id_usuario`, `id_analisis`, `likedislike`) VALUES
('marius', 1, 1),
('marius', 2, 1),
('xblackgamer', 1, 1),
('xblackgamer', 3, 0),
('xblackgamer', 5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `megusta_com_an`
--

CREATE TABLE IF NOT EXISTS `megusta_com_an` (
  `id_comentario` int(11) NOT NULL,
  `id_usuario` varchar(15) NOT NULL,
  `likedislike` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `megusta_com_an`
--

INSERT INTO `megusta_com_an` (`id_comentario`, `id_usuario`, `likedislike`) VALUES
(1, 'xblackgamer', 1),
(2, 'xblackgamer', 1),
(6, 'xblackgamer', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `megusta_com_op`
--

CREATE TABLE IF NOT EXISTS `megusta_com_op` (
  `id_comentario` int(11) NOT NULL,
  `id_usuario` varchar(15) CHARACTER SET utf8 NOT NULL,
  `likedislike` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `megusta_com_op`
--

INSERT INTO `megusta_com_op` (`id_comentario`, `id_usuario`, `likedislike`) VALUES
(1, 'xblackgamer', 1),
(2, 'xblackgamer', 0),
(3, 'xblackgamer', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `megusta_op`
--

CREATE TABLE IF NOT EXISTS `megusta_op` (
  `id_usuario` varchar(15) NOT NULL,
  `id_opinion` int(11) NOT NULL,
  `likedislike` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `megusta_op`
--

INSERT INTO `megusta_op` (`id_usuario`, `id_opinion`, `likedislike`) VALUES
('marius', 2, 0),
('xblackgamer', 1, 1),
('xblackgamer', 2, 1),
('xblackgamer', 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mensajes_foro`
--

CREATE TABLE IF NOT EXISTS `mensajes_foro` (
`id_mensaje` int(11) NOT NULL,
  `id_tema` int(11) NOT NULL,
  `id_usuario` varchar(15) NOT NULL,
  `texto` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `val_pos` int(11) NOT NULL,
  `val_neg` int(11) NOT NULL,
  `puntuacion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opiniones`
--

CREATE TABLE IF NOT EXISTS `opiniones` (
`id_opinion` int(11) NOT NULL,
  `id_juego` varchar(50) NOT NULL,
  `id_usuario` varchar(15) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `titulo` varchar(50) NOT NULL,
  `texto` text NOT NULL,
  `val_pos` int(11) NOT NULL,
  `val_neg` int(11) NOT NULL,
  `valoracion` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `opiniones`
--

INSERT INTO `opiniones` (`id_opinion`, `id_juego`, `id_usuario`, `fecha`, `titulo`, `texto`, `val_pos`, `val_neg`, `valoracion`) VALUES
(1, 'Horizon: Zero Dawn', 'pepe', '2017-05-22 22:00:00', 'esto es una opiniÃ³n', 'primera opinion', 24, 1, 23),
(2, 'Mass Effect: Andromeda', 'fran', '2017-05-23 22:00:00', 'ea pierde el rumbo', 'me parece que sony hace fatal, pero fatal, en sacar un juego a medias, y más del renombre que tiene este...', 123, 3, 120),
(3, 'Horizon: Zero Dawn', 'xblackgamer', '2017-05-25 08:15:16', 'rÃ­diculo su platino', 'me parece lamentable que un juego exclusivo de ps4, que compita por ser una referencia de la consola y del gÃ©nero, tenga un platino taaaaan absequible.', 1, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tema_foro`
--

CREATE TABLE IF NOT EXISTS `tema_foro` (
`id_tema` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `id_usuario` varchar(15) NOT NULL,
  `contenido` text NOT NULL,
  `fecha` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `val_pos` int(11) NOT NULL,
  `val_neg` int(11) NOT NULL,
  `puntuacion` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tema_foro`
--

INSERT INTO `tema_foro` (`id_tema`, `titulo`, `id_usuario`, `contenido`, `fecha`, `val_pos`, `val_neg`, `puntuacion`) VALUES
(1, 'Tema creado', 'pepe', 'prueba 1', '2017-05-27 15:43:00', 0, 0, 0),
(2, 'tema 2', 'pepe', 'otra prueba', '2017-05-27 15:43:16', 0, 0, 0),
(3, 'tema 3', 'pepe', 'otro', '2017-05-27 15:46:17', 0, 0, 0),
(4, 'tema 4', 'pepe', 'zzz', '2017-05-27 15:46:33', 0, 0, 0),
(5, 'tema 5', 'pepe', 'prueba', '2017-05-27 15:46:51', 0, 0, 0),
(6, 'tema 6', 'pepe', 'este tendria que aparecer en otra pagina', '2017-05-27 15:47:14', 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` varchar(15) NOT NULL,
  `password` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `correo` varchar(20) NOT NULL,
  `biografia` text NOT NULL,
  `valoracion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `password`, `foto`, `correo`, `biografia`, `valoracion`) VALUES
('fran', 'fran', 'img/users/user-48.png', 'fran@gmail.com', 'no me he visto en otra igual.', 163),
('marius', 'Y/5L7KgI51KmuioZZPz2L3vH+xfi9ZTYM00EzaxGs6M=', 'img/users/pillows-cool-guy-sunglasses-emoji-pillow-1_grande.jpg', 'marius@gmail.com', 'soy mariuss siuuu', 1),
('pepe', 'pepe', 'img/users/user-48.png', 'pepe@gmail.com', 'soy pepe', 33),
('xblackgamer', 'N7NkZTUslkIN2lwVyzGaMBaV/Qz1nEG2KVviTy+0zS0=', 'img/users/db4771732a3b294248112e026c074ca9.jpg', 'xblackgamer@gmail.co', 'vÃ©nceme si puedes, que soy pro gamer', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE IF NOT EXISTS `videojuegos` (
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
 ADD PRIMARY KEY (`id_analisis`), ADD KEY `id_juego` (`id_juego`,`id_usuario`), ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `com_an`
--
ALTER TABLE `com_an`
 ADD PRIMARY KEY (`id_comentario`), ADD KEY `id_usuario` (`id_usuario`,`id_analisis`), ADD KEY `id_analisis` (`id_analisis`);

--
-- Indices de la tabla `com_op`
--
ALTER TABLE `com_op`
 ADD PRIMARY KEY (`id_comentario`), ADD KEY `id_usuario` (`id_usuario`,`id_opinion`), ADD KEY `id_opinion` (`id_opinion`);

--
-- Indices de la tabla `lanzamientos`
--
ALTER TABLE `lanzamientos`
 ADD PRIMARY KEY (`id_lanzamiento`);

--
-- Indices de la tabla `megusta_an`
--
ALTER TABLE `megusta_an`
 ADD PRIMARY KEY (`id_usuario`,`id_analisis`), ADD KEY `id_analisis` (`id_analisis`);

--
-- Indices de la tabla `megusta_com_an`
--
ALTER TABLE `megusta_com_an`
 ADD PRIMARY KEY (`id_comentario`,`id_usuario`), ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `megusta_com_op`
--
ALTER TABLE `megusta_com_op`
 ADD PRIMARY KEY (`id_comentario`,`id_usuario`), ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `megusta_op`
--
ALTER TABLE `megusta_op`
 ADD PRIMARY KEY (`id_usuario`,`id_opinion`), ADD KEY `id_opinion` (`id_opinion`);

--
-- Indices de la tabla `mensajes_foro`
--
ALTER TABLE `mensajes_foro`
 ADD PRIMARY KEY (`id_mensaje`), ADD KEY `id_tema` (`id_tema`), ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `opiniones`
--
ALTER TABLE `opiniones`
 ADD PRIMARY KEY (`id_opinion`), ADD KEY `id_juego` (`id_juego`,`id_usuario`), ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tema_foro`
--
ALTER TABLE `tema_foro`
 ADD PRIMARY KEY (`id_tema`), ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id_usuario`), ADD UNIQUE KEY `correo` (`correo`);

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
MODIFY `id_analisis` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `com_an`
--
ALTER TABLE `com_an`
MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `com_op`
--
ALTER TABLE `com_op`
MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `mensajes_foro`
--
ALTER TABLE `mensajes_foro`
MODIFY `id_mensaje` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `opiniones`
--
ALTER TABLE `opiniones`
MODIFY `id_opinion` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `tema_foro`
--
ALTER TABLE `tema_foro`
MODIFY `id_tema` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
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
-- Filtros para la tabla `megusta_an`
--
ALTER TABLE `megusta_an`
ADD CONSTRAINT `megusta_an_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE,
ADD CONSTRAINT `megusta_an_ibfk_2` FOREIGN KEY (`id_analisis`) REFERENCES `analisis` (`id_analisis`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `megusta_com_an`
--
ALTER TABLE `megusta_com_an`
ADD CONSTRAINT `megusta_com_an_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE,
ADD CONSTRAINT `megusta_com_an_ibfk_2` FOREIGN KEY (`id_comentario`) REFERENCES `com_an` (`id_comentario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `megusta_com_op`
--
ALTER TABLE `megusta_com_op`
ADD CONSTRAINT `megusta_com_op_ibfk_1` FOREIGN KEY (`id_comentario`) REFERENCES `com_op` (`id_comentario`) ON UPDATE CASCADE,
ADD CONSTRAINT `megusta_com_op_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `megusta_op`
--
ALTER TABLE `megusta_op`
ADD CONSTRAINT `megusta_op_ibfk_1` FOREIGN KEY (`id_opinion`) REFERENCES `opiniones` (`id_opinion`) ON UPDATE CASCADE,
ADD CONSTRAINT `megusta_op_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE;

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
