-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.24-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para convocatoria
CREATE DATABASE IF NOT EXISTS `convocatoria` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */;
USE `convocatoria`;

-- Volcando estructura para tabla convocatoria.estudiante
CREATE TABLE IF NOT EXISTS `estudiante` (
  `codigo_SIS` varchar(50) COLLATE utf8_spanish2_ci NOT NULL DEFAULT '',
  `nombre` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `correo_Institucional` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `contraseña` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`codigo_SIS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla convocatoria.estudiante: ~25 rows (aproximadamente)
INSERT INTO `estudiante` (`codigo_SIS`, `nombre`, `apellidos`, `direccion`, `telefono`, `correo_Institucional`, `contraseña`) VALUES
	('202001051', 'Kevin', 'Kayo', 'zzz', '911', '202001051@est.umss.edu', '123'),
	('202001052', 'Kino', 'Lama', 'zzz', '911', '202001052@est.umss.edu', '123'),
	('202001053', 'Luan', 'Mono', 'zzz', '911', '202001053@est.umss.edu', '123'),
	('202001054', 'Martin', 'Newton', 'qwe', '125', '202001054@est.umss.edu', '123'),
	('202001055', 'Neison', 'Nigga', 'gdq', '523', '202001055@est.umss.edu', '123'),
	('202001056', 'Mipa', 'Ñuelo', 'htr', '522', '202001056@est.umss.edu', '123'),
	('202001057', 'Lupa', 'Lanca', 'twq', '783', '202001057@est.umss.edu', '123'),
	('202001058', 'Kupa', 'Lorio', 'hsc', '321', '202001058@est.umss.edu', '123'),
	('202001059', 'Nestor', 'Lito', 'ghs', '511', '202001059@est.umss.edu', '123'),
	('202001060', 'Kila', 'Liko', 'ggs', '223', '202001060@est.umss.edu', '123'),
	('202001061', 'Lipo', 'Mono', 'lli', '664', '202001061@est.umss.edu', '123'),
	('202001062', 'Lit', 'Kilah', 'loo', '521', '202001062@est.umss.edu', '123'),
	('202001063', 'Kuma', 'Miuka', 'gor', '588', '202001063@est.umss.edu', '123'),
	('202001064', 'Kit', 'Teemo', 'oir', '111', '202001064@est.umss.edu', '123'),
	('202001065', 'Lika', 'Mito', 'pol', '577', '202001065@est.umss.edu', '123'),
	('202001066', 'Lida', 'Llampa', 'wld', '100', '202001066@est.umss.ediu', '123'),
	('202001067', 'Milton', 'Mana', 'ñol', '876', '202001067@est.umss.edu', '123'),
	('202001068', 'Kaja', 'Mobile', 'tyu', '229', '202001068@est.umss.edu', '123'),
	('202001069', 'Kufra', 'Lina', 'bmn', '209', '202001069@est.umss.edu', '123'),
	('202001070', 'Lola', 'Mota', 'lkj', '238', '202001070@est.umss.edu', '123'),
	('202001071', 'Minsi', 'Lata', 'bsa', '009', '202001071@est.umss.edu', '123'),
	('202001072', 'Lesa', 'Kala', 'usa', '110', '202001072@est.umss.edu', '123'),
	('202001073', 'Lil', 'Manto', 'aka', '821', '202001073@est.umss.edu', '123'),
	('202001074', 'Nana', 'Lopo', 'min', '669', '202001074@est.umss.edu', '123'),
	('202001075', 'Moto', 'Moto', 'mot', '908', '202001075@est.umss.edu', '123');

-- Volcando estructura para tabla convocatoria.laboratorio
CREATE TABLE IF NOT EXISTS `laboratorio` (
  `item` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cantidad` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `hrs_academicas` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `auxiliatura` varchar(100) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `codigo_aux` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod_SIS_lab` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Nro_identificacion_labo` int(11) NOT NULL AUTO_INCREMENT,
  `habilitado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Nro_identificacion_labo`),
  KEY `FK_laboratorio_estudiante` (`cod_SIS_lab`),
  CONSTRAINT `FK_laboratorio_estudiante` FOREIGN KEY (`cod_SIS_lab`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla convocatoria.laboratorio: ~0 rows (aproximadamente)
INSERT INTO `laboratorio` (`item`, `cantidad`, `hrs_academicas`, `auxiliatura`, `codigo_aux`, `cod_SIS_lab`, `Nro_identificacion_labo`, `habilitado`) VALUES
	('2', '2 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Desarrollo', 'LDS – ADM', '202001057', 36, b'0'),
	('2', '2 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Desarrollo', 'LDS – ADM', '202001058', 37, b'0'),
	('3', '2 Aux.', '56 Hrs/mes', 'Auxiliar de Laboratorio de Desarrollo', 'LDS – AUX', '202001059', 38, b'0'),
	('3', '2 Aux.', '56 Hrs/mes', 'Auxiliar de Laboratorio de Desarrollo', 'LDS – AUX', '202001060', 39, b'0'),
	('4', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Software', 'LM – ADM –SW', '202001061', 40, b'0'),
	('4', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Software', 'LM – ADM –SW', '202001062', 41, b'0'),
	('5', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Software', 'LM – AUX – SW', '202001063', 42, b'0'),
	('5', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Software', 'LM – AUX – SW', '202001064', 43, b'0'),
	('6', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Hardware', 'LM – ADM – HW', '202001065', 44, b'0'),
	('6', '1 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Mantenimiento de Hardware', 'LM – ADM – HW', '202001066', 45, b'0'),
	('7', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Hardware', 'LM – AUX – HW', '202001067', 46, b'0'),
	('7', '4 Aux.', '32 Hrs/mes', 'Auxiliar de Laboratorio de Mantenimiento de Hardware', 'LM – AUX – HW', '202001068', 47, b'0'),
	('1', '7 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Computo', 'LCO – ADM', '202001069', 48, b'0'),
	('1', '7 Aux.', '80 Hrs/mes', 'Administrador de Laboratorio de Computo', 'LCO – ADM', '202001070', 49, b'0'),
	('8', '1 Aux.', '80 Hrs/mes', 'Auxiliar de Terminal de Laboratorio de Computo', 'LDS – ATL', '202001071', 50, b'0'),
	('8', '1 Aux.', '80 Hrs/mes', 'Auxiliar de Terminal de Laboratorio de Computo', 'LDS – ATL', '202001072', 51, b'0');

-- Volcando estructura para tabla convocatoria.pizarron
CREATE TABLE IF NOT EXISTS `pizarron` (
  `item` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cantidad` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `hrs_academicas` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `destino` varchar(50) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `cod_SIS_pizarra` varchar(50) COLLATE utf8_spanish2_ci NOT NULL,
  `Nro_identificacion_piza` int(11) NOT NULL AUTO_INCREMENT,
  `habilitado` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Nro_identificacion_piza`) USING BTREE,
  KEY `FK_pizarra_estudiante` (`cod_SIS_pizarra`),
  CONSTRAINT `FK_pizarra_estudiante` FOREIGN KEY (`cod_SIS_pizarra`) REFERENCES `estudiante` (`codigo_SIS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- Volcando datos para la tabla convocatoria.pizarron: ~0 rows (aproximadamente)
INSERT INTO `pizarron` (`item`, `cantidad`, `hrs_academicas`, `destino`, `cod_SIS_pizarra`, `Nro_identificacion_piza`, `habilitado`) VALUES
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001051', 35, b'0'),
	('1', '9 Aux.', '8 Hrs/mes', 'Introduccion a la Programacion', '202001052', 36, b'0'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001053', 37, b'0'),
	('3', '1 Aux.', '8 Hrs/mes', 'Teoria de Grafos', '202001054', 38, b'0'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001055', 39, b'0'),
	('4', '2 Aux.', '8 Hrs/mes', 'Computacion I', '202001056', 40, b'0'),
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001073', 41, b'0'),
	('2', '4 Aux.', '8 Hrs/mes', 'Elementos de Programacion y Estructura de Datos', '202001074', 42, b'0');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
