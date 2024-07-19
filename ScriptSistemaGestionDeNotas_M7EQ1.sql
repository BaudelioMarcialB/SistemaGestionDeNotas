-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.4.0 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para notas
CREATE DATABASE IF NOT EXISTS `notas` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `notas`;

-- Volcando estructura para tabla notas.notas
CREATE TABLE IF NOT EXISTS `notas` (
  `id_note` int NOT NULL AUTO_INCREMENT,
  `title_note` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `text_note` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `date_creation` varchar(45) DEFAULT NULL,
  `usuarios_id_user` int NOT NULL,
  PRIMARY KEY (`id_note`),
  KEY `fk_Notas_Usuarios_idx` (`usuarios_id_user`),
  CONSTRAINT `fk_Notas_Usuarios` FOREIGN KEY (`usuarios_id_user`) REFERENCES `usuarios` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla notas.notas: ~2 rows (aproximadamente)
DELETE FROM `notas`;
INSERT INTO `notas` (`id_note`, `title_note`, `text_note`, `date_creation`, `usuarios_id_user`) VALUES
	(1, 'Registros del dia', 'Todos se fueron de fiesta del aniversario. ', '2024-07-18', 19),
	(2, 'Notas de los dias de mi trabajo', 'Avisos de revisiones', '2024-07-18', 19),
	(3, 'Notas del dia de clases', 'Hoy se avanzo el trabajo fina', '2024-07-18', 20),
	(4, 'Notas de los dias de descanso.', 'Escribí el informe del dia', '2024-07-18', 20),
	(7, 'Registros del dia', 'Notas nueva del dia. Notas de los dias de descanso.', '2024-07-19', 19),
	(8, 'Diplomado', 'No hay clases el 19 y 20 de julio.', '2024-07-18', 22),
	(9, 'Registros del dia', 'No se tiene revisiones del dia.', '2024-07-18', 22),
	(10, 'Notas del dia de clases', 'Favor de realizar la tarea a tiempo', '2024-07-18', 23),
	(11, 'Vacaciones para agosto', 'Revisar pendientes del mes.', '2024-07-18', 23);

-- Volcando estructura para tabla notas.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(45) DEFAULT NULL,
  `user_mail` varchar(45) DEFAULT NULL,
  `user_pwd` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla notas.usuarios: ~2 rows (aproximadamente)
DELETE FROM `usuarios`;
INSERT INTO `usuarios` (`id_user`, `user_name`, `user_mail`, `user_pwd`) VALUES
	(19, 'adrian', '', '12345'),
	(20, 'David', 'davidlopezr@gmail.com', '12345'),
	(21, 'isabel', 'isabel@gmail.com', '12345'),
	(22, 'isabel', 'isabel@gmail.com', '12345'),
	(23, 'baudelio', 'baudelio@eglobal.com.mx', 'abcde'),
	(24, 'Karen', 'karen@gmail.com', '54321');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
