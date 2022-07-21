-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-07-2022 a las 19:34:31
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `noticias`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tendencias`
--

CREATE TABLE `tendencias` (
  `nombre` varchar(250) NOT NULL,
  `texto` text NOT NULL,
  `tipo` varchar(250) NOT NULL,
  `categoria` varchar(250) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `id` int(10) NOT NULL,
  `extracto` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tendencias`
--

INSERT INTO `tendencias` (`nombre`, `texto`, `tipo`, `categoria`, `imagen`, `fecha`, `id`, `extracto`) VALUES
('Enemigos, pero hagámonos pasito', 'Una de las reuniones más esperadas de los últimos años llegó. Álvaro Uribe y Gustavo Petro se vieron en una oficina en el norte de Bogotá para hablar del famoso acuerdo nacional. Quienes son enemigos políticos de hace décadas dejaron esas peleas a un lado para comenzar a hacerse pasito.<br><br>\r\n\r\n- Luego de la reunión Uribe dio una rueda de prensa y contó detalles. Uno de los temas más importantes es que dijo que el Centro Democrático apoyará al Pacto Histórico en los proyectos \"que sean beneficiosos para el país\". Es un poco gaseoso, pero un paso importante.<br><br>\r\n\r\n- Hablaron de impuestos, y dijeron que se debe hacer una recaudación \"amable, que el contribuyente pague con gusto, sin miedo; que no pongan al contribuyente, con unos impuestos excesivos, a buscar maniobras evasivas\".<br><br>\r\n\r\n- \"Hablamos del tema de tierras. Petro hizo un comentario favorable al avalúo (catastro) multipropósito que está adelantando el gobierno del presidente Duque\", añadió Uribe.<br><br>\r\n\r\nEn general fue una reunión con buen ambiente, con 30 minutos a puerta cerrada entre los dos mandatarios, y luego con participación de Alfonso Prada y Ciro Ramírez. Avanza el acuerdo nacional.', 'Noticia', 'Politica', 'https://cdn.webcat.media/-N5lz1usvl9jXr60SWv0/_petro.jpeg', '2022-06-30', 1, 'Una de las reuniones más esperadas de los últimos años llegó. Álvaro Uribe y Gustavo Petro se vieron en una oficina en el norte de Bogotá para hablar del famoso acuerdo nacional.'),
('Polémica por equipo de empalme de Petro', '¿Les suena el nombre Alejandra Barrios? Bueno, pues les contamos que es la directora de la Misión de Observación Electoral (MOE), y ayer fue el centro de la polémica porque su nombre aparece en la lista de empalme de Gustavo Petro para el Ministerio del Interior.<br><br>\r\n\r\n- Sectores opositores, como el Centro Democrático, manifestaron su molestia. El congresista Gabriel Vallejo dijo: \"Con razón en algunas de las entrevistas y debates que tuve con representantes de la MOE se notaba sesgo ideológico hacia el progresismo\".<br><br>\r\n\r\n- El tuitero Daniel Briceño, por ejemplo, dijo que esto \"muestra que la cabeza de esta organización estaba muy jugada por Petro en esta elección\".<br><br>\r\n\r\n- De la MOE sacaron un comunicado explicando que no es que Barrios haga parte del equipo del empalme, sino que la organización aceptó una invitación para hacer \"un acompañamiento exclusivamente técnico al equipo del empalme del Ministerio del Interior\".<br><br>\r\n\r\nÑapa: en el equipo de empalme del MinTIC está Sebastián Guanumen, el asesor de Petro que salía en los videos filtrados diciendo cómo hacerle campaña sucia a otros candidatos, lo cual también generó polémica.', 'Noticia', 'Politica', 'https://cdn.webcat.media/-N5m1-J__aD7JjCqIuB2/_god.gif', '2022-06-30', 2, '¿Les suena el nombre Alejandra Barrios? Bueno, pues les contamos que es la directora de la Misión de Observación Electoral (MOE), y ayer fue el centro de la polémica porque su nombre aparece en la lista de empalme...'),
('Bonnie: el potencial ciclón tropical', 'El Caribe colombiano se encuentra en alerta por el inminente paso de un potencial ciclón tropical, con altas posibilidades de convertirse en un huracán. El Ideam lanzó una alerta en el oriente y centro del mar Caribe Colombiano y la costa de Magdalena y La Guajira. Se estima que los vientos alcancen un fuerza de tormenta tropical que equivale a intensidades mayores a 63km/h, sin embargo la incertidumbre de la evolución de la tormenta es muy alta.<br><br>\r\n\r\n- Esta onda tropical preocupa al Ideam y al Centro Nacional de Huracanes por su alta probabilidad de convertirse, primero en una tormenta tropical y luego en un huracán esté viernes 1 de julio.<br><br>\r\n\r\n- Sin embargo, el Ideam agregó que existe una incertidumbre más alta de lo normal en el pronóstico, una vez alcance el suroeste del mar Caribe entre el jueves y el viernes. Su comportamiento a partir de ahí dependerá de cuanto interactúe el sistema con el área continental.', 'Noticia', 'Mundo', 'https://cdn.webcat.media/-N5mDwl7nzKQ3DsgGUL2/_hurricane_bonnie_big-(1).gif', '2022-06-30', 3, 'El Caribe colombiano se encuentra en alerta por el inminente paso de un potencial ciclón tropical, con altas posibilidades de convertirse en un huracán. El Ideam lanzó una alerta en el oriente y centro del mar Caribe Colombiano...'),
('Duque condecoró al fiscal del caso Uribe', 'Arriba tenían la polémica del empalme, y cerramos con la polémica del Gobierno. Resulta que el presidente Iván Duque condecoró este miércoles a Gabriel Jaimes, fiscal que pidió la preclusión del caso Uribe (que al final no prosperó).<br><br>\r\n\r\n- La condecoración se hizo durante la celebración de los 30 años de la Fiscalía y puntualmente le entregó la medalla Enrique Low Murtra, creada como reconocimiento “a las virtudes y estímulo a la honestidad”.<br><br>\r\n\r\n- Esto, por supuesto, generó críticas. Por ejemplo el analista Gabriel Cifuentes dijo: \"Niveles de prioridad nacional: @IvanDuque no asiste a la presentación del informe de la @ComisionVerdadC, pero sí a la condecoración del fiscal Jaimes, quien desde la fiscalía pidió absolver a Uribe... Ese es el tamaño de estadista que nos tocó\". Cabe añadir acá que anoche Duque tuvo reunión privada con el padre Francisco de Roux para recibir finalmente el informe de la Comisión.<br><br>\r\n\r\n- Duque también le entregó la misma medalla a Martha Yannet Mancera, vicefiscal general de la Nación, y a Alberto Acebedo Quintero, director nacional del cuerpo técnico de investigación de la Fiscalía.', 'Noticia', 'Politica', 'https://cdn.webcat.media/-N5m36FMvoHqJV_MYo4Q/_duque.gif', '2022-06-30', 4, 'Arriba tenían la polémica del empalme, y cerramos con la polémica del Gobierno. Resulta que el presidente Iván Duque condecoró este miércoles a Gabriel Jaimes, fiscal que pidió la preclusión del caso Uribe...'),
('Inversión de $US60 millones en el programa más grande de inclusión', 'La Agencia de EE. UU. para el Desarrollo Internacional (USAID) lidera una alianza con diez organizaciones afrocolombianas e indígenas, que buscará fortalecer la gobernanza, autonomía, identidad y desarrollo de los pueblos indígenas y afro. El programa de Juntanza Étnica tendrá una duración de 5 años y una inversión de 60 millones de dólares, convirtiéndose en el programa más grande de inclusión de USAID en el mundo.<br><br>\r\n\r\n- El programa se implementará en 29 municipios de las regiones de Amazonía, Cauca, Valle, Nariño, Chocó y Caribe, beneficiando a 30 mil personas de manera directa.<br><br>\r\n\r\n- El 77% y el 68,9% de los hogares indígenas y afrodescendientes respectivamente, presentan inseguridad alimentaria y nutricional, Juntanza Étnica es una oportunidad para fortalecer su autonomía y soberanía alimentaria.', 'Noticia', 'Mundo', 'https://cdn.webcat.media/-N5lbGq2gBDXaztHwQX7/_USAID,-ACDI_VOCA-y-10-organizaciones-%C3%A9tnicas-le-dan-la-bienvenida-al---Programa-Juntanza-%C3%89tnica-XII.JPG', '2022-06-30', 5, 'La Agencia de EE. UU. para el Desarrollo Internacional (USAID) lidera una alianza con diez organizaciones afrocolombianas e indígenas, que buscará fortalecer la gobernanza, autonomía, identidad y desarrollo de los pueblos indígenas...'),
('Twitter', '#AcordamosQue<br>\r\n#EmigrarEs<br>\r\n#FelizJueves<br>\r\n#PremioAlEcocidio<br>\r\n#HayFuturoSiHayVerdad\r\n', 'Tendencia', '', 'https://images.unsplash.com/photo-1611605698335-8b1569810432?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dHdpdHRlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', '2022-06-30', 6, ''),
('TikTok', '#Foodie<br>\r\n#Footloose<br>\r\n#Minions<br>\r\n#Cine<br>\r\n#Viral\r\n', 'Tendencia', '', 'https://images.unsplash.com/photo-1611605698323-b1e99cfd37ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dGlrdG9rfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', '2022-06-30', 7, ''),
('Redes sociales:<br>\r\nHoy es el Día Mundial de las redes sociales \r\n', '¡Hoy es el Día Mundial de las Redes Sociales!<br> ¿Sabes cuáles son las más usadas en la historia? <br>\r\n- Facebook, Messenger, YouTube, Instagram, TikTok, Pinterest, Snapchat, LinkedIn, Twitter.', 'Tendencia', '', 'https://images.unsplash.com/photo-1611162617213-7d7a39e9b1d7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cmVkZXMlMjBzb2NpYWxlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', '2022-06-30', 8, '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tendencias`
--
ALTER TABLE `tendencias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tendencias`
--
ALTER TABLE `tendencias`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
