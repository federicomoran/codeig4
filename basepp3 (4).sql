-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 31-10-2023 a las 12:53:37
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `basepp3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE IF NOT EXISTS `alumnos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `dni` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `cuil` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `domicilio` varchar(255) DEFAULT NULL,
  `localidad` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `dni`, `mail`, `cuil`, `telefono`, `domicilio`, `localidad`) VALUES
(1, 'Facundo', 'Simeoni', '40086620', 'facundosimeoni@gmail.com', '20400866202', '2646293463', 'sargento cabral', '25 de Mayo'),
(2, 'Federico', 'Moran', '42300984', 'fedemoran@gmail.com', '20423009847', '2646287392', 'castro 2', 'Caucete'),
(3, 'Sebastian', 'Gutierrez', '43123456', 'sebagutierrez@gmail.com', '20910981231', '1231209341', 'ruta 20', 'Caucete'),
(6, 'Julieta', 'Moran', '45046914', 'julieta@gmail.com', '1082739301', '2644534736', 'Castro 2 manzana J casa 5', '9 de Julio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursa`
--

DROP TABLE IF EXISTS `cursa`;
CREATE TABLE IF NOT EXISTS `cursa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alumno` int(11) DEFAULT NULL,
  `materia` int(11) DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `cursa`
--

INSERT INTO `cursa` (`id`, `alumno`, `materia`, `division`, `fecha`) VALUES
(1, 1, 4, 1, '2023-10-16'),
(2, 2, 10, 1, '2023-10-16'),
(4, 3, 10, 1, '2023-10-19'),
(5, 2, 11, 1, '2023-10-20'),
(6, 6, 15, 1, '2023-10-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dicta`
--

DROP TABLE IF EXISTS `dicta`;
CREATE TABLE IF NOT EXISTS `dicta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profesor` int(11) DEFAULT NULL,
  `materia` int(11) DEFAULT NULL,
  `inicio` date DEFAULT NULL,
  `baja` date DEFAULT NULL,
  `condicion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_09` (`materia`),
  KEY `fk_08` (`profesor`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `dicta`
--

INSERT INTO `dicta` (`id`, `profesor`, `materia`, `inicio`, `baja`, `condicion`) VALUES
(1, 3, 7, '2023-10-16', '2023-10-20', NULL),
(2, 3, 8, '2023-10-16', NULL, NULL),
(3, 1, 4, '2023-10-16', '2023-10-20', NULL),
(4, 1, 6, '2023-10-16', '2023-10-16', NULL),
(5, 3, 10, '2023-10-16', '2023-10-20', NULL),
(6, 3, 4, '2023-10-16', '2023-10-26', NULL),
(7, 1, 10, '2023-10-16', '2023-10-17', NULL),
(8, 3, 11, '2023-10-16', '2023-10-20', NULL),
(9, 5, 10, '2023-10-16', '2023-10-20', NULL),
(10, 1, 7, '2023-10-16', '2023-10-17', NULL),
(11, 5, 6, '2023-10-20', '2023-10-20', NULL),
(12, 5, 11, '2023-10-20', '2023-10-26', NULL),
(13, 1, 10, '2023-10-20', NULL, NULL),
(14, 3, 6, '2023-10-20', '2023-10-20', NULL),
(15, 6, 13, '2023-10-20', '2023-10-20', NULL),
(16, 5, 13, '2023-10-20', NULL, NULL),
(17, 6, 15, '2023-10-25', '2023-10-26', NULL),
(18, 7, 16, '2023-10-30', NULL, NULL),
(19, 3, 15, '2023-10-30', NULL, 'Suplente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

DROP TABLE IF EXISTS `materia`;
CREATE TABLE IF NOT EXISTS `materia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `anno` int(11) DEFAULT NULL,
  `semestre` int(11) DEFAULT NULL,
  `plan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_03` (`plan`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id`, `nombre`, `anno`, `semestre`, `plan`) VALUES
(6, 'Base de datos II', 2, 1, 5),
(4, 'Base de datos I', 1, 1, 3),
(11, 'Matematica II', 2, 2, 5),
(10, 'Diseño', 1, 1, 5),
(14, 'Ambiente Empresarial', 1, 2, 10),
(13, 'Sistema Operativo y Redes', 2, 1, 5),
(15, 'Programacion II', 1, 2, 10),
(16, 'ESI', 3, 2, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_estudio`
--

DROP TABLE IF EXISTS `plan_estudio`;
CREATE TABLE IF NOT EXISTS `plan_estudio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `num_res` varchar(255) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `emision` date DEFAULT NULL,
  `expiracion` date DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  `modificacion` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `plan_estudio`
--

INSERT INTO `plan_estudio` (`id`, `num_res`, `titulo`, `emision`, `expiracion`, `estado`, `modificacion`) VALUES
(3, '2118-me-2021', 'Analista', '2023-10-09', NULL, 'Activo', NULL),
(2, '2122-me-2014', 'Analista', '2023-10-07', NULL, 'Activo', NULL),
(4, '2862-me-2011', 'Developer', '2023-10-07', '2023-10-14', 'Activo', NULL),
(5, '2120-me-2019', 'Diseñador Grafico', '2023-10-07', NULL, 'Activo', '2023-10-14'),
(7, '2022-me-2000', 'Diseñador', '2023-10-14', NULL, 'Activo', NULL),
(8, '2338', 'Tester', '2023-10-19', '2023-10-20', 'Activo', NULL),
(9, '091723897123', 'Quetecalienta', '2023-10-19', '2023-10-20', 'Activo', NULL),
(10, '0411-me-2023', 'Tester', '2023-10-25', NULL, 'Activo', NULL),
(11, '1900-me-2023', 'Tecnico Superior en Desarrollo de Software', '2023-10-30', NULL, 'Activo', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesores`
--

DROP TABLE IF EXISTS `profesores`;
CREATE TABLE IF NOT EXISTS `profesores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(80) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `dni` varchar(40) DEFAULT NULL,
  `cuil` varchar(50) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `cbu` varchar(30) DEFAULT NULL,
  `matricula` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `profesores`
--

INSERT INTO `profesores` (`id`, `nombre`, `apellido`, `dni`, `cuil`, `titulo`, `cbu`, `matricula`) VALUES
(1, 'Jorge', 'Benitez', '23882392', '2027654789', '1696708348_be4dcc5ef91465466550.pdf', '82349892348783', '38989238932'),
(3, 'Juan Roman', 'Riquelme', '17888888', '20178888882', '1697504249_3135b8b60e7e5ccfcd13.docx', '123456789', '987654321'),
(5, 'Marcelo', 'Aballay', '23483255', '1882810192387', '1697504249_3135b8b60e7e5ccfcd13.docx', '1091838320923', '847473992181'),
(7, 'Raquel', 'Michalek', '19888999', '10198889990', '1698701118_69e7c2c88b57853215f6.docx', '123456789009876', '1234567990');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
