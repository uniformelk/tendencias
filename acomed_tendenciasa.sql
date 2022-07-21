-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-07-2022 a las 19:35:16
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
-- Base de datos: `acomed_tendenciasa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tendencias`
--

CREATE TABLE `tendencias` (
  `nombre` varchar(250) NOT NULL,
  `extracto` text NOT NULL,
  `texto` text NOT NULL,
  `tipo` varchar(250) NOT NULL,
  `categoria` varchar(250) NOT NULL,
  `imagen` varchar(250) NOT NULL,
  `fecha` date NOT NULL,
  `id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tendencias`
--

INSERT INTO `tendencias` (`nombre`, `extracto`, `texto`, `tipo`, `categoria`, `imagen`, `fecha`, `id`) VALUES
('GOBIERNO BIDEN REACCIONÓ A LAS ELECCIONES PRESIDENCIALES DE COLOMBIA', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing so', 'Noticia', 'Politica', 'https://images.unsplash.com/photo-1575320181282-9afab399332c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80', '2022-06-05', 1),
('MANCHESTER UNITED CONFIRMA LA\r\nSALIDA DE POGBA', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing so', 'Noticia', 'Deportes', 'https://images.unsplash.com/photo-1563732809711-7e739503a706?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=871&q=80', '2022-06-05', 2),
('UNA MIRADA AL CONFLICTO', '', 'Rusia gasta cerca de 700 millones de euros al día para continuar la guerra en Ucrania, así lo calcularon los centros de investigación. quienes aseguran que ese dinero proviene de la venta de gas y petróleo a países europeos.', 'Tendencia', 'na', 'https://images.unsplash.com/photo-1630161861535-b39e5635da68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80', '2022-06-05', 3),
('EL EVENTO DEL AÑO', '', 'Gales, Escocia, Ucrania, Emiratos Árabes, Australia, Perú, Nueva Zelanda y Costa Rica se jugarán su paso a la Copa del Mundo de Qatar. Faltan 171 días para que Países Bajos y Senegal inauguren en el Al Thumama Stadium el Mundial de Qatar 2022', 'Tendencia', 'NA', 'https://images.unsplash.com/photo-1637203727700-9d86c74904d6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80', '2022-06-05', 4),
('Petro 42%, Hernández 41%: la Presidencia en el aire', '', 'La carrera presidencial en Colombia sigue siendo una moneda al aire. Yanhaas publicó este domingo su encuesta y la cosa sigue en empate técnico. Gustavo Petro marcó 42% y Rodolfo Hernández el 41%. Como el margen de error es 3,2%, como con la del CNC, esto es un empate técnico.<br><br>\r\n\r\n- El voto en blanco marcó 13% esta vez, muy alto comparado a lo que marca efectivamente en las elecciones. O sea, aún hay muchos votos acá en juego que irán a alguna campaña.<br><br>\r\n\r\n- Las zonas más fuertes de Hernández son Antioquia-Eje Cafetero y Centro-Oriente, donde está su amado Santander. En el eje gana por 20 puntos porcentuales y en la segunda vence 56% a 30%.<br><br>\r\n\r\n- Petro gana en Bogotá, Caribe y Pacífico. En orden estas son las diferencias: 49%-31%; 47%-36%. y 65%-24%.<br><br>\r\n\r\nEn la encuesta de Guarumo, publicada el sábado, Hernández lidera por 46,4% vs 43.3%. En ese caso el margen de error era 2,5%, por lo cual no se considera empate técnico. Pero bien apretada sí está la carrera.', 'Noticia', 'Politica', 'https://cdn.webcat.media/-N3qI7PH_UiQo5IbWxiA/_pr.jpeg', '2022-06-06', 5),
('Inflación bajo control, por ahora', '', 'Por primera vez en 2022 la inflación cayó. En mayo bajó 0,84%, con lo cual en el anual queda en 9,07%. A pesar de que es un freno momentáneo, aún se está muy lejos de las cifras de hace un año, cuando la variación anual fue de 3,30%.<br><br>\r\n\r\n- Siguen siendo las cifras más altas en los últimos 21 años.<br><br>\r\n\r\n- Los precios de los alimentos fue una de las explicaciones principales para este respiro en mayo. La variación mensual en los precios de los alimentos y bebidas no alcohólicas (1,56 %) y alojamiento, agua, electricidad, gas y otros combustibles (0,86 %).<br><br>\r\n\r\n- En mayo se comenzaron a ver disminuciones en los precios de la papa (-0,12 %), las frutas frescas (-0,02 %) y el plátano (-0,02 %).<br><br>\r\n\r\n- Un alimento al que aún hay que prestarle atención son las carnes de res y derivados, precios que crecieron 0,09%.', 'Noticia', 'Economia', 'https://cdn.webcat.media/-N3qXquCALFsUnvtYv80/_inflacion.jpeg', '2022-06-06', 6),
('\"Mi orden de captura es prevaricato\": Duque', '', 'El prevaricato es básicamente cuando una autoridad judicial dicta una resolución injusta, consciente de que lo es. Y seguro que todos y todas vieron que el Tribunal Superior de Ibagué ordenó cinco días de arresto a Duque por supuestamente no acatar un fallo de la Corte Suprema para proteger el Parque los Nevados. El Presidente habló de esto el domingo y fue duro: \"La decisión es inconstitucional (...), es un abierto prevaricato (...), es una decisión política\", dijo.<br><br>\r\n\r\n- La decisión se da porque “el presidente no ha creado ni asignado, como se le pidió en la tutela, una Fuerza Pública que realice patrullajes para proteger la salud ambiental del parque”.<br><br>\r\n\r\n- Contrario a esto, Duque dijo que sí se estaba haciendo la tarea para proteger el Parque. \"Los reportes están. Hemos ido trabajando con nuestros funcionarios para darle protección al Parque\", aseguró.<br><br>\r\n\r\n- Finalmente, les contamos que Duque le pidió a la Procuraduría (de Cabello) y a la Comisión de Disciplina Judicial hacerle seguimiento a los magistrados que tomaron esta decisión.', 'Noticia', 'Mundo', 'https://cdn.webcat.media/-N3qM01B0m6jO9hvMAJL/_ducales.jpeg', '2022-06-06', 7),
('Ñapa política: Fajardo no irá con Hernández', '', 'Rodolfo Hernández no logró una alianza con Sergio Fajardo. El candidato de la Centro Esperanza sacó un comunicado que dice: \"Hernández decidió, sin discusión previa, no aceptarlas (sus condiciones). En consecuencia, se acaban las conversaciones. Nuestro interés ha sido y es aportar con seriedad nuestra visión del país”. Por su parte, Hernández dijo que las conversaciones simplemente fueron una \"cortesía\" que quería tener. Esto lo aprovechó Petro para continuar enmarcando a su contrincante como el candidato del uribismo. \"El señor Hernández obviamente prefirió a Uribe sobre Fajardo. Era previsible, pero eso es lo que ha sucedido”, aseguró.', 'Noticia', 'Politica', 'https://cdn.webcat.media/-N3qEfRrPzwKiTEQq53t/_faajards.jpeg', '2022-06-06', 8),
('Tecnoglass hoy toca la campana', '', 'Tecnoglass se convertirá a partir de hoy en la primera empresa colombiana con acciones listadas directamente en la bolsa de Nueva York. Por eso, a las 8:30 a.m., la empresa tocará la campana de apertura en las instalaciones del New York Stock Exchange (NYSE). \"Este es el reflejo del gran trabajo que hemos venido realizando, por más de 38 años comprometidos con la calidad de nuestros productos, trabajando de la mano de un gran equipo de trabajo y posicionándonos como líderes en la industria de uno de los mercados más exigentes del mundo como lo es Estados Unidos\", aseguró Christian Daes, CFO de la compañía. En el primer trimestre del año la empresa creció 153% su utilidad neta y un 20,6% sus ingresos totales.', 'Noticia', 'Economia', 'https://cdn.webcat.media/-N3qwG-eiSS9Wy-0okKx/_teno.jpeg', '2022-06-06', 9),
('¿Qué debe contener el ADN de tu marca?', '', '- Una filosofía que los mueva.\r\n\r\n- Un esqueleto sustentable.\r\n\r\n- Un discurso comunicativo.\r\n\r\n-Identidad y genealogía de marca. ', 'Noticia', 'Marketing', 'https://images.unsplash.com/photo-1562577308-9e66f0c65ce5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fG1hcmtldGluZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', '2022-06-06', 10),
('Tik-Tok', '', '#Strangerthings<br>\r\n#Uñas<br>\r\n#Geekday<br>\r\n#HouseOfAnita<br>\r\n#TheBoys<br>', 'Tendencia', '', 'https://images.unsplash.com/photo-1611605698323-b1e99cfd37ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80', '2022-06-06', 11),
('Twitter', '', '#VotarEnBlancoEs<br>\r\n#GraciasPero<br>\r\n#LaCorrupcionPetrista<br>\r\n#FelizLunes<br>\r\n#AliasElIngeniero<br>', 'Tendencia', '', 'https://images.unsplash.com/photo-1611605698335-8b1569810432?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80', '2022-06-06', 12),
('Pobreza en Latam se dispara', 'La pobreza (entendida como la situación cuando los ingresos son inferiores al valor de una canasta básica de bienes y servicios) en América Latina llegará a 33,7% en 2022, advirtió la Cepal. Esto es un aumento de 1,6 puntos porcentuales respecto al año pasado. ', 'La pobreza (entendida como la situación cuando los ingresos son inferiores al valor de una canasta básica de bienes y servicios) en América Latina llegará a 33,7% en 2022, advirtió la Cepal. Esto es un aumento de 1,6 puntos porcentuales respecto al año pasado. Esta Comisión Económica explicó que una de las razones principales es la invasión de Rusia a Ucrania, que ha generado un aumento en los precios de la energía y los alimentos.<br>\n\n- La pobreza extrema (cuando no hay recursos para comer) subiría a 14,9% (antes 13,8%).<br><br>\n\n- El conflicto en Ucrania causará, según la Cepal, que 7,8 millones de personas en América Latina se sumen a los 86,4 millones que ya sufren inseguridad alimentaria.<br><br>\n\n- \"En Colombia, México, el Paraguay y Brasil tendrá lugar un fuerte retroceso de la lucha contra la pobreza\", indicó la organización.<br><br>\n\nRecorderis: la Cepal proyecta un crecimiento de 1,8% en el PIB regional para 2022, muy por debajo del 6,4% que se reportó en 2021.', 'Noticia', 'Economia', 'https://cdn.webcat.media/-N3vLfIlF38jzerdDBKx/_america.jpeg', '2022-06-07', 13),
('Reactivaron los ataques rusos en Kiev', 'Ya habían pasado varias semanas sin que las alarmas antibombas sonaran en Kiev, la capital de Ucrania, pero este domingo varios proyectiles golpearon dos barrios al este de la ciudad.', 'Ya habían pasado varias semanas sin que las alarmas antibombas sonaran en Kiev, la capital de Ucrania, pero este domingo varios proyectiles golpearon dos barrios al este de la ciudad. No se reportaron víctimas mortales, únicamente un herido, anunció el alcalde Vitali Klitshko. Moscú había argumentado que el bombardeo se dio sobre almacenes de tanques, versión que luego fue desmentida por Ucrania.<br>\r\n\r\n- El último ataque que se había registrado en la capital fue el 28 de abril, en el que murió una persona.\r\n<br><br>\r\n- Frente a esto, Ucrania lanzó un contraataque con el que recuperó una quinta parte de la ciudad de Severodonetsk al este de Ucrania, la cual había sido tomada por los rusos.', 'Noticia', 'Mundo', 'https://cdn.webcat.media/-N3uiZzL_KVFTx009SOQ/_imagen.jpg', '2022-06-07', 14),
('Los Galán van con Hernández', 'El Nuevo Liberalismo anunció que apoyará oficialmente a Rodolfo Hernández. Juan Manuel Galán dijo en una rueda de prensa que Hernández representa la emoción de centro en el país, que \"lastimosamente\" la Coalición de Centro Esperanza no supo capitalizar. ', 'El Nuevo Liberalismo anunció que apoyará oficialmente a Rodolfo Hernández. Juan Manuel Galán dijo en una rueda de prensa que Hernández representa la emoción de centro en el país, que \"lastimosamente\" la Coalición de Centro Esperanza no supo capitalizar. Por fuera de esta adhesión queda Mabel Lara, quien fue cabeza de lista al Senado y apoyará a Petro.<br>\r\n\r\n- Galán asegura que Hernández es \"ese centro no quiere el continuismo uribista, pero tampoco cree en la propuesta de Gustavo Petro\".<br><br>\r\n\r\n- Asimismo, el hijo mayor de Luis Carlos Galán le garantizó a su partido que no hubo acuerdos burocráticos de por medio para anunciar este apoyo.<br><br>\r\n\r\n- El Nuevo Liberalismo obtuvo más de 1,3 millones de votos en las elecciones al Congreso. Con la carrera tan apretada, cualquier votico es cariño.<br><br>\r\n\r\nÑapa: tras no llegar a un acuerdo con Hernández, Sergio Fajardo dijo en entrevista en Blu Radio que no votará por Petro. Aseguró que explicará sus razones por escrito en los próximos días.', 'Noticia', 'Politica', 'https://cdn.webcat.media/-N3vKb1IWZcIho6Gko9m/_galanchis.jpeg', '2022-06-07', 15),
('Personas en condición de discapacidad protestaron por falta de atención', 'Varias estaciones de TransMilenio tuvieron que suspender el servicio este lunes debido a las manifestaciones de personas en condición de discapacidad que exigen atención por parte de las autoridades, que según denuncian, los han dejado abandonados y han vulnerado sus derechos. ', 'Varias estaciones de TransMilenio tuvieron que suspender el servicio este lunes debido a las manifestaciones de personas en condición de discapacidad que exigen atención por parte de las autoridades que según denuncian, los han dejado abandonados y han vulnerado sus derechos. Las manifestaciones fueron convocadas por varias organizaciones, entre ellas el Comité Operativo Local de Discapacidad Bosa.<br>\r\n\r\n- El Comité Operativo Local de Discapacidad asegura que se han presentado retrasos en la implementación del proyecto 7771 de la Secretaría de Integración Social, la cual entrega bonos alimentarios para cuidadores y personas discapacitadas. Solo en Bosa hay más de 13.000 personas en esa condición.<br><br>\r\n\r\n- También denuncian la falta de canales de comunicación con las autoridades locales para tener acceso a los programas y tramitar sus necesidades de manera particular.<br><br>\r\n\r\n- Denuncian sobrecostos en sillas de ruedas y otros implementos que entrega el Distrito.<br><br>\r\n\r\n- Por otro lado, ayer la Secretaría lanzó la estrategia Cuidado Local con la cual se anunció una inversión de $60.000 millones para atender a más de 4.921 cuidadoras de las 20 localidades.', 'Noticia', 'Mundo', 'https://cdn.webcat.media/-N3vBjyz1n0GISd412fd/_p2_2.jpg', '2022-06-07', 16),
('Caso Marcelo Pecci: cuatro personas aceptaron cargos', 'Ayer fue la audiencia de imputación y solicitud de medida de aseguramiento en contra de las cinco personas que fueron capturadas por estar involucradas en el asesinato del fiscal paraguayo Marcelo Pecci, en Cartagena. ', 'Ayer fue la audiencia de imputación y solicitud de medida de aseguramiento en contra de las cinco personas que fueron capturadas por estar involucradas en el asesinato del fiscal paraguayo Marcelo Pecci, en Cartagena. Cuatro de los cinco implicados en el asesinato aceptaron los delitos de homicidio agravado y fabricación, tráfico y porte de armas de fuego ante la Fiscalía. El presunto autor intelectual del homicidio, Francisco Correa Galena, reservista del Ejército, no aceptó los cargos. Los cinco fueron enviados a la cárcel.', 'Noticia', 'Mundo', 'https://cdn.webcat.media/-N3uvwVDSscBkXPRGADc/_Q2WWGK4GSVBTDH5JNYWTHDYOKI.jpg', '2022-06-07', 17),
('TikTok', '', '#Strangerthings<br>\r\n#Mascotas<br>\r\n#Comedia<br>\r\n#Juanes<br>', 'Tendencia', '', 'https://images.unsplash.com/photo-1611605698323-b1e99cfd37ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8dGlrdG9rfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60', '2022-06-07', 18),
('Twitter', '', '#UnaVerdadEs<br>\r\n#Increible<br>\r\n#VotarEnBlancoEs<br>\r\n#PensarEnDemocraciaEs<br>\r\n#FelizMartes<br>', 'Tendencia', '', 'https://images.unsplash.com/photo-1611605698335-8b1569810432?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dHdpdHRlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60', '2022-06-07', 19),
('¿Sabes qué es User Generated Content o UGC?', '', 'Es el contenido que hacen los usuarios sobre tu marca y que proyecta mayor credibilidad.', 'Tendencia', '', 'https://images.unsplash.com/photo-1493612276216-ee3925520721?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80', '2022-06-07', 20);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
