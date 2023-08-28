-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.9.6-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando estructura para tabla c_salud.carreras
CREATE TABLE IF NOT EXISTS `carreras` (
  `idcarreras` int(11) NOT NULL AUTO_INCREMENT,
  `gradoEstudio` int(11) NOT NULL,
  `carreras` varchar(65) NOT NULL,
  PRIMARY KEY (`idcarreras`),
  KEY `FK_gradoestudios` (`gradoEstudio`),
  CONSTRAINT `FK_gradoestudios` FOREIGN KEY (`gradoEstudio`) REFERENCES `gradoestudios` (`idgradoestudios`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla c_salud.carreras: ~6 rows (aproximadamente)
INSERT INTO `carreras` (`idcarreras`, `gradoEstudio`, `carreras`) VALUES
	(1, 6, 'NA'),
	(2, 1, 'General por competencia'),
	(3, 1, 'Intensivo Semiescolarizado'),
	(4, 2, 'Psicologia'),
	(5, 2, 'Nutricion'),
	(6, 2, 'Actividad Fisica Desportiva Saludable');

-- Volcando estructura para tabla c_salud.centros
CREATE TABLE IF NOT EXISTS `centros` (
  `idcentros` int(11) NOT NULL AUTO_INCREMENT,
  `nombrecentros` varchar(45) NOT NULL,
  `domicilio` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `col` int(11) NOT NULL,
  `cp` int(11) NOT NULL,
  `municipio` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`idcentros`),
  KEY `FK_domicilio` (`domicilio`),
  KEY `FK_col` (`col`),
  KEY `FK_cp` (`cp`),
  KEY `FK_municipio` (`municipio`),
  KEY `FK_estado` (`estado`),
  CONSTRAINT `FK_col` FOREIGN KEY (`col`) REFERENCES `col` (`idcol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_cp` FOREIGN KEY (`cp`) REFERENCES `cp` (`idcp`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_domicilio` FOREIGN KEY (`domicilio`) REFERENCES `domicilio` (`iddomicilio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_estado` FOREIGN KEY (`estado`) REFERENCES `estado` (`idestado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_municipio` FOREIGN KEY (`municipio`) REFERENCES `municipio` (`idmunicipio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla c_salud.centros: ~2 rows (aproximadamente)
INSERT INTO `centros` (`idcentros`, `nombrecentros`, `domicilio`, `numero`, `col`, `cp`, `municipio`, `estado`) VALUES
	(1, 'NA', 1, 1, 1, 1, 1, 1),
	(2, 'Ciencias Sociales e Ingeneria', 2, 2, 2, 2, 2, 2);

-- Volcando estructura para tabla c_salud.col
CREATE TABLE IF NOT EXISTS `col` (
  `idcol` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_asen` varchar(45) NOT NULL,
  `asen` varchar(45) NOT NULL,
  PRIMARY KEY (`idcol`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla c_salud.col: ~2 rows (aproximadamente)
INSERT INTO `col` (`idcol`, `tipo_asen`, `asen`) VALUES
	(1, 'NA', 'NA'),
	(2, 'COLONIA', 'AMERICANA');

-- Volcando estructura para tabla c_salud.controlacceso
CREATE TABLE IF NOT EXISTS `controlacceso` (
  `idcontrolacceso` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` int(11) NOT NULL,
  `operacion` tinyint(1) NOT NULL,
  `fechahora` datetime(6) NOT NULL,
  `pinstatus` int(11) NOT NULL,
  PRIMARY KEY (`idcontrolacceso`,`pinstatus`),
  KEY `FK_usuario` (`usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla c_salud.controlacceso: ~0 rows (aproximadamente)

-- Volcando estructura para tabla c_salud.cp
CREATE TABLE IF NOT EXISTS `cp` (
  `idcp` int(11) NOT NULL AUTO_INCREMENT,
  `cp` varchar(45) NOT NULL,
  PRIMARY KEY (`idcp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla c_salud.cp: ~2 rows (aproximadamente)
INSERT INTO `cp` (`idcp`, `cp`) VALUES
	(1, 'NA'),
	(2, '44160');

-- Volcando estructura para tabla c_salud.domicilio
CREATE TABLE IF NOT EXISTS `domicilio` (
  `iddomicilio` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_vialidad` varchar(60) NOT NULL,
  `domicilio` varchar(60) NOT NULL,
  PRIMARY KEY (`iddomicilio`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla c_salud.domicilio: ~2 rows (aproximadamente)
INSERT INTO `domicilio` (`iddomicilio`, `tipo_vialidad`, `domicilio`) VALUES
	(1, 'NA', 'NA'),
	(2, 'AVENIDA', 'ENRIQUE DIAZ DE LEON');

-- Volcando estructura para tabla c_salud.estado
CREATE TABLE IF NOT EXISTS `estado` (
  `idestado` int(11) NOT NULL AUTO_INCREMENT,
  `clv_estado` int(11) NOT NULL,
  `estado` varchar(45) NOT NULL,
  PRIMARY KEY (`idestado`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla c_salud.estado: ~2 rows (aproximadamente)
INSERT INTO `estado` (`idestado`, `clv_estado`, `estado`) VALUES
	(1, 0, 'NA'),
	(2, 14, 'JALISCO');

-- Volcando estructura para tabla c_salud.estatus
CREATE TABLE IF NOT EXISTS `estatus` (
  `idestatus` int(11) NOT NULL AUTO_INCREMENT,
  `nombreestatus` varchar(10) NOT NULL,
  PRIMARY KEY (`idestatus`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla c_salud.estatus: ~6 rows (aproximadamente)
INSERT INTO `estatus` (`idestatus`, `nombreestatus`) VALUES
	(1, 'activo'),
	(2, 'inactivo'),
	(3, 'bloqueado'),
	(4, 'baja'),
	(5, 'NA'),
	(6, 'prorroga');

-- Volcando estructura para tabla c_salud.gradoestudios
CREATE TABLE IF NOT EXISTS `gradoestudios` (
  `idgradoestudios` int(11) NOT NULL AUTO_INCREMENT,
  `licenciatura` varchar(45) NOT NULL,
  PRIMARY KEY (`idgradoestudios`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla c_salud.gradoestudios: ~6 rows (aproximadamente)
INSERT INTO `gradoestudios` (`idgradoestudios`, `licenciatura`) VALUES
	(1, 'Bachillerato'),
	(2, 'Licenciatura'),
	(3, 'Maestria'),
	(4, 'Doctorado'),
	(5, 'Diplomado'),
	(6, 'NA');

-- Volcando estructura para tabla c_salud.municipio
CREATE TABLE IF NOT EXISTS `municipio` (
  `idmunicipio` int(11) NOT NULL AUTO_INCREMENT,
  `clv_municipio` int(11) NOT NULL,
  `municipio` varchar(45) NOT NULL,
  PRIMARY KEY (`idmunicipio`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla c_salud.municipio: ~2 rows (aproximadamente)
INSERT INTO `municipio` (`idmunicipio`, `clv_municipio`, `municipio`) VALUES
	(1, 0, 'NA'),
	(2, 39, 'GUADALAJARA');

-- Volcando estructura para tabla c_salud.pinestatus
CREATE TABLE IF NOT EXISTS `pinestatus` (
  `idpinstatus` int(11) NOT NULL AUTO_INCREMENT,
  `nombrepin` varchar(10) NOT NULL,
  `estatus` int(11) NOT NULL,
  PRIMARY KEY (`idpinstatus`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla c_salud.pinestatus: ~2 rows (aproximadamente)
INSERT INTO `pinestatus` (`idpinstatus`, `nombrepin`, `estatus`) VALUES
	(1, 'entrada', 1),
	(2, 'salida', 2);

-- Volcando estructura para tabla c_salud.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `idroles` int(11) NOT NULL AUTO_INCREMENT,
  `nombreroles` varchar(15) NOT NULL,
  PRIMARY KEY (`idroles`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla c_salud.roles: ~8 rows (aproximadamente)
INSERT INTO `roles` (`idroles`, `nombreroles`) VALUES
	(1, 'alumno'),
	(2, 'profesor'),
	(3, 'seguridad'),
	(4, 'egresado'),
	(5, 'administrativo'),
	(6, 'manteniminto'),
	(7, 'itt'),
	(8, 'limpieza');

-- Volcando estructura para tabla c_salud.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellidop` varchar(45) NOT NULL,
  `apellidom` varchar(45) NOT NULL,
  `matricula` varchar(45) NOT NULL,
  `pin` int(11) NOT NULL,
  `rol` int(11) NOT NULL,
  `estatus` int(11) NOT NULL,
  `carreras` int(11) NOT NULL,
  `centros` int(11) NOT NULL,
  `pinestatus` int(11) NOT NULL,
  `contraseña` varchar(15) NOT NULL,
  `fechainicio` varchar(45) NOT NULL,
  PRIMARY KEY (`idusuario`),
  KEY `FK_roles` (`rol`),
  KEY `FK_estatus` (`estatus`),
  KEY `FK_carreras` (`carreras`),
  KEY `FKcentros` (`centros`),
  KEY `FK_pinestatus` (`pinestatus`),
  CONSTRAINT `FK_carreras` FOREIGN KEY (`carreras`) REFERENCES `carreras` (`idcarreras`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_estatus` FOREIGN KEY (`estatus`) REFERENCES `estatus` (`idestatus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_pinestatus` FOREIGN KEY (`pinestatus`) REFERENCES `pinestatus` (`idpinstatus`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_roles` FOREIGN KEY (`rol`) REFERENCES `roles` (`idroles`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FKcentros` FOREIGN KEY (`centros`) REFERENCES `centros` (`idcentros`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3371 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla c_salud.usuario: ~370 rows (aproximadamente)
INSERT INTO `usuario` (`idusuario`, `nombre`, `apellidop`, `apellidom`, `matricula`, `pin`, `rol`, `estatus`, `carreras`, `centros`, `pinestatus`, `contraseña`, `fechainicio`) VALUES
	(1001, 'NAZARET', 'VILLALBA', 'HOZ', '13bl15776543211', 152310, 5, 1, 1, 1, 2, '0', '25/01/2021 07:00'),
	(1002, 'ISABELA', 'ABELLA', 'CASADO', '13bl15776543212', 152304, 5, 1, 1, 1, 2, '0', '25/06/2022 07:00'),
	(1003, 'RENATO', 'PEDRAZA', 'CABALLERO', '13bl15776543213', 152490, 5, 1, 1, 1, 2, '0', '12/01/2017 07:00'),
	(1004, 'DALILA', 'SALINAS', 'MOSQUERA', '13bl15776543214', 152485, 5, 1, 1, 1, 2, '0', '20/07/2021 07:00'),
	(1005, 'ALEJANDRA', 'DEL', 'IZQUIERDO', '13bl15776543215', 152413, 5, 1, 1, 1, 2, '0', '20/03/2015 07:00'),
	(1006, 'URBANO', 'DE', 'SEDANO', '13bl15776543216', 152415, 5, 1, 1, 1, 2, '0', '22/04/2018 07:00'),
	(1007, 'AMBROSIO', 'AMBROSIO', 'PENALVER', '13bl15776543217', 152432, 5, 1, 1, 1, 2, '0', '17/03/2019 07:00'),
	(1008, 'ESTHER', 'RAMON', 'ESPADA', '13bl15776543218', 152305, 5, 1, 1, 1, 2, '0', '21/04/2015 07:00'),
	(1009, 'EMMA', 'GUTIERREZ', 'LOPEZ', '13bl15776543219', 152496, 5, 1, 1, 1, 2, '0', '15/05/2017 07:00'),
	(1010, 'ALFREDO', 'MURCIA', 'VALLE', '13bl15776543210', 152401, 5, 1, 1, 1, 2, '0', '24/08/2019 07:00'),
	(1011, 'VALERIO', 'BAS', 'TELLO', '13bl15776543211', 152363, 5, 1, 1, 1, 2, '0', '13/03/2019 07:00'),
	(1012, 'CORNELIO', 'CORNELIO', 'MUGICA', '13bl15776543212', 152345, 5, 2, 1, 1, 2, '0', '21/01/2011 07:00'),
	(1013, 'TEODORO', 'VALBUENA', 'AMOROS', '13bl15776543213', 152391, 5, 1, 1, 1, 2, '0', '12/08/2010 07:00'),
	(1014, 'VICENTA', 'DE', 'PINEDA', '13bl15776543214', 152442, 5, 1, 1, 1, 2, '0', '10/06/2021 07:00'),
	(1015, 'AZENETH', 'AZENETH', 'PAGES', '13bl15776543215', 152421, 5, 1, 1, 1, 2, '0', '15/01/2019 07:00'),
	(1016, 'AURA', 'AURA', 'GARCIA', '13bl15776543216', 152486, 5, 1, 1, 1, 2, '0', '21/04/2011 07:00'),
	(1017, 'SALOMON', 'URENA', 'ACEVEDO', '13bl15776543217', 152426, 5, 1, 1, 1, 2, '0', '11/05/2019 07:00'),
	(1018, 'LEIRE', 'ALIAGA', 'MORELL', '13bl15776543218', 152453, 5, 1, 1, 1, 2, '0', '12/07/2021 07:00'),
	(1019, 'GRACIANO', 'REYES', 'ABAD', '13bl15776543219', 152479, 5, 1, 1, 1, 2, '0', '14/09/2015 07:00'),
	(1020, 'ADOLFO', 'JOVE', 'CABELLO', '13bl15776543220', 152402, 5, 1, 1, 1, 2, '0', '25/05/2021 07:00'),
	(1021, 'IBAN', 'PEREZ', 'POU', '13bl15776543221', 152372, 5, 1, 1, 1, 2, '0', '13/08/2014 07:00'),
	(1022, 'MARIA', 'ASENJO', 'SALAS', '13bl15776543222', 152488, 5, 1, 1, 1, 2, '0', '17/09/2022 07:00'),
	(1023, 'VICTOR', 'PEDRAZA', 'PLAZA', '13bl15776543223', 152308, 5, 2, 1, 1, 2, '0', '23/07/2013 07:00'),
	(1024, 'EDELMIRO', 'SOTELO', 'REQUENA', '13bl15776543224', 152477, 5, 1, 1, 1, 2, '0', '28/07/2014 07:00'),
	(1025, 'AMILCAR', 'PAZ', 'GALAN', '13bl15776543225', 152351, 5, 1, 1, 1, 2, '0', '17/08/2020 07:00'),
	(1026, 'PAOLA', 'FORTUNY', 'PADILLA', '13bl15776543226', 152353, 5, 1, 1, 1, 2, '0', '22/08/2014 07:00'),
	(1027, 'JACINTO', 'PORCEL', 'PUIG', '13bl15776543227', 152309, 5, 1, 1, 1, 2, '0', '27/03/2015 07:00'),
	(1028, 'CALIXTO', 'CALIXTO', 'LOZANO', '13bl15776543228', 152333, 5, 1, 1, 1, 2, '0', '17/08/2011 07:00'),
	(1029, 'LUIS', 'COELLO', 'CANET', '13bl15776543229', 152349, 5, 1, 1, 1, 2, '0', '25/06/2016 07:00'),
	(1030, 'CECILIA', 'RODA', 'GIRONA', '13bl15776543230', 152373, 5, 1, 1, 1, 2, '0', '23/08/2010 07:00'),
	(1031, 'SABINA', 'BARRAGAN', 'PASCUAL', '13bl15776543231', 152434, 5, 1, 1, 1, 2, '0', '22/02/2014 07:00'),
	(1032, 'JESUS', 'SANMIGUEL', 'OJEDA', '13bl15776543232', 152482, 5, 1, 1, 1, 2, '0', '10/02/2016 07:00'),
	(1033, 'RICO', 'BARRENA', 'MILLAN', '13bl15776543233', 152495, 5, 1, 1, 1, 2, '0', '24/07/2019 07:00'),
	(1034, 'TEOFILA', 'COSTA', 'NICOLAU', '13bl15776543234', 152444, 5, 1, 1, 1, 2, '0', '15/07/2013 07:00'),
	(1035, 'GUADALUPE', 'BRIONES', 'AZCONA', '13bl15776543235', 152448, 5, 1, 1, 1, 2, '0', '25/03/2017 07:00'),
	(1036, 'GRACIANO', 'LLEDO', 'PELAYO', '13bl15776543236', 152366, 5, 1, 1, 1, 2, '0', '25/07/2019 07:00'),
	(1037, 'NILO', 'QUIROS', 'OLIVA', '13bl15776543237', 152427, 5, 1, 1, 1, 2, '0', '22/09/2012 07:00'),
	(1038, 'NAZARET', 'NAZARET', 'SANTANA', '13bl15776543238', 152384, 5, 1, 1, 1, 2, '0', '15/09/2012 07:00'),
	(1039, 'PIA', 'CAMACHO', 'MURCIA', '13bl15776543239', 152332, 5, 1, 1, 1, 2, '0', '14/09/2013 07:00'),
	(1040, 'HORTENSIA', 'HORTENSIA', 'RODA', '13bl15776543240', 152364, 5, 1, 1, 1, 2, '0', '26/03/2010 07:00'),
	(1041, 'LARA', 'SIERRA', 'CACERES', '13bl15776543241', 152398, 5, 1, 1, 1, 2, '0', '17/04/2017 07:00'),
	(1042, 'SERAFINA', 'DEL', 'MORATA', '13bl15776543242', 152481, 5, 1, 1, 1, 2, '0', '15/04/2015 07:00'),
	(1043, 'JORDI', 'DE', 'REAL', '13bl15776543243', 152360, 5, 1, 1, 1, 2, '0', '25/06/2010 07:00'),
	(1044, 'ARIEL', 'PRADA', 'CASTILLO', '13bl15776543244', 152386, 5, 1, 1, 1, 2, '0', '23/06/2015 07:00'),
	(1045, 'DIONISIO', 'ZARAGOZA', 'FERRER', '13bl15776543245', 152483, 5, 1, 1, 1, 2, '0', '25/03/2022 07:00'),
	(1046, 'BENIGNA', 'BENITEZ', 'MOLES', '13bl15776543246', 152320, 5, 1, 1, 1, 2, '0', '11/03/2017 07:00'),
	(1047, 'MATIAS', 'PLANAS', 'TUR', '13bl15776543247', 152307, 5, 1, 1, 1, 2, '0', '13/04/2018 07:00'),
	(1048, 'ISIDORO', 'MACIAS', 'VERGARA', '13bl15776543248', 152435, 5, 1, 1, 1, 2, '0', '23/02/2015 07:00'),
	(1049, 'ADELIA', 'COSTA', 'MORCILLO', '13bl15776543249', 152457, 5, 2, 1, 1, 2, '0', '25/08/2020 07:00'),
	(1050, 'SEBASTIAN', 'FONT', 'LUCAS', '13bl15776543250', 152359, 5, 1, 1, 1, 2, '0', '21/02/2018 07:00'),
	(1051, 'EDGAR', 'BARROSO', 'SOMOZA', '13bl15776543251', 152379, 5, 1, 1, 1, 2, '0', '28/02/2021 07:00'),
	(1052, 'PRUDENCIA', 'AGULLO', 'YANEZ', '13bl15776543252', 152468, 5, 1, 1, 1, 2, '0', '21/05/2020 07:00'),
	(1053, 'CANDELARIO', 'MATEU', 'SOTELO', '13bl15776543253', 152493, 5, 1, 1, 1, 2, '0', '25/03/2020 07:00'),
	(1054, 'LEOCADIA', 'DEL', 'AZORIN', '13bl15776543254', 152371, 5, 1, 1, 1, 2, '0', '10/06/2018 07:00'),
	(1055, 'NAYARA', 'BONET', 'FIGUEROA', '13bl15776543255', 152422, 5, 1, 1, 1, 2, '0', '14/03/2022 07:00'),
	(1056, 'MACARIA', 'MACARIA', 'LLUCH', '13bl15776543256', 152369, 5, 1, 1, 1, 2, '0', '25/03/2010 07:00'),
	(1057, 'MARC', 'SECO', 'FUENTES', '13bl15776543257', 152394, 5, 1, 1, 1, 2, '0', '14/02/2011 07:00'),
	(1058, 'FLORENCIA', 'SOSA', 'ESCRIVA', '13bl15776543258', 152389, 5, 1, 1, 1, 2, '0', '16/07/2012 07:00'),
	(1059, 'JAIME', 'LUCENA', 'PASTOR', '13bl15776543259', 152380, 5, 1, 1, 1, 2, '0', '20/06/2010 07:00'),
	(1060, 'PACIFICA', 'ESCRIVA', 'BELTRAN', '13bl15776543260', 152328, 5, 1, 1, 1, 2, '0', '20/03/2020 07:00'),
	(1061, 'SATURNINO', 'BRU', 'MARQUES', '13bl15776543261', 152491, 5, 1, 1, 1, 2, '0', '11/01/2011 07:00'),
	(1062, 'EVITA', 'DEL', 'FIGUERAS', '13bl15776543262', 152341, 5, 1, 1, 1, 2, '0', '12/02/2012 07:00'),
	(1063, 'VALERO', 'DOMINGO', 'PIQUER', '13bl15776543263', 152335, 5, 1, 1, 1, 2, '0', '26/07/2012 07:00'),
	(1064, 'OTILIA', 'ESTEVEZ', 'POU', '13bl15776543264', 152471, 5, 1, 1, 1, 2, '0', '18/03/2022 07:00'),
	(1065, 'NURIA', 'MONTENEGRO', 'GONZALO', '13bl15776543265', 152452, 5, 1, 1, 1, 2, '0', '28/08/2010 07:00'),
	(1066, 'CRISTOBAL', 'OLIVERAS', 'AGUILA', '13bl15776543266', 152433, 5, 1, 1, 1, 2, '0', '23/02/2021 07:00'),
	(1067, 'ANSELMA', 'BOU', 'ADADIA', '13bl15776543267', 152475, 5, 1, 1, 1, 2, '0', '21/03/2010 07:00'),
	(1068, 'INGRID', 'GRANADOS', 'REYES', '13bl15776543268', 152473, 5, 1, 1, 1, 2, '0', '23/03/2022 07:00'),
	(1069, 'CEBRIAN', 'LEAL', 'INFANTE', '13bl15776543269', 152497, 5, 1, 1, 1, 2, '0', '13/04/2015 07:00'),
	(1070, 'HELIODORO', 'ALONSO', 'GARGALLO', '13bl15776543270', 152321, 5, 1, 1, 1, 2, '0', '20/03/2018 07:00'),
	(1071, 'FELICIDAD', 'ORTUNO', 'ALVARO', '13bl15776543271', 152489, 5, 1, 1, 1, 2, '0', '19/01/2016 07:00'),
	(1072, 'MORENO', 'ORTUNO', 'SALVA', '13bl15776543272', 152484, 5, 1, 1, 1, 2, '0', '23/06/2012 07:00'),
	(1073, 'VALENTINA', 'MORALEDA', 'FLOR', '13bl15776543273', 152469, 5, 1, 1, 1, 2, '0', '17/04/2022 07:00'),
	(1074, 'NILDA', 'DE', 'RUBIO', '13bl15776543274', 152339, 5, 1, 1, 1, 2, '0', '27/03/2016 07:00'),
	(1075, 'RITA', 'RITA', 'ROSELLO', '13bl15776543275', 152465, 5, 1, 1, 1, 2, '0', '15/02/2018 07:00'),
	(1076, 'ANA', 'BARO', 'ALVARADO', '13bl15776543276', 152317, 5, 1, 1, 1, 2, '0', '13/04/2021 07:00'),
	(1077, 'CRESCENCIA', 'PONT', 'AGUILO', '13bl15776543277', 152337, 5, 1, 1, 1, 2, '0', '16/08/2020 07:00'),
	(1078, 'MAGDALENA', 'CHAVES', 'CORDOBA', '13bl15776543278', 152313, 5, 1, 1, 1, 2, '0', '21/06/2018 07:00'),
	(1079, 'RAMON', 'EXPOSITO', 'RIBA', '13bl15776543279', 152447, 5, 1, 1, 1, 2, '0', '16/03/2022 07:00'),
	(1080, 'NELIDA', 'VALLS', 'MILLA', '13bl15776543280', 152416, 5, 1, 1, 1, 2, '0', '11/09/2016 07:00'),
	(1081, 'ELPIDIO', 'CABRERA', 'ECHEVARRIA', '13bl15776543281', 152438, 5, 1, 1, 1, 2, '0', '10/07/2010 07:00'),
	(1082, 'MAXI', 'MARIN', 'LUCENA', '13bl15776543282', 152301, 5, 1, 1, 1, 2, '0', '27/02/2019 07:00'),
	(1083, 'MARCELA', 'MARCELA', 'VALDES', '13bl15776543283', 152408, 5, 1, 1, 1, 2, '0', '20/06/2022 07:00'),
	(1084, 'REBECA', 'SEGUI', 'RAMIREZ', '13bl15776543284', 152361, 5, 1, 1, 1, 2, '0', '19/09/2010 07:00'),
	(1085, 'SOCORRO', 'SOCORRO', 'ALEMAN', '13bl15776543285', 152450, 5, 1, 1, 1, 2, '0', '26/09/2022 07:00'),
	(1086, 'QUIQUE', 'VALENCIA', 'COELLO', '13bl15776543286', 152343, 5, 1, 1, 1, 2, '0', '15/01/2011 07:00'),
	(1087, 'PASCUAL', 'BELDA', 'MUR', '13bl15776543287', 152459, 5, 1, 1, 1, 2, '0', '19/07/2018 07:00'),
	(1088, 'FLOR', 'TOLOSA', 'BOLANOS', '13bl15776543288', 152410, 5, 1, 1, 1, 2, '0', '25/02/2010 07:00'),
	(1089, 'YAGO', 'ATIENZA', 'GIBERT', '13bl15776543289', 152425, 5, 1, 1, 1, 2, '0', '25/09/2018 07:00'),
	(1090, 'SANDRA', 'ECHEVARRIA', 'GARCIA', '13bl15776543290', 152383, 5, 1, 1, 1, 2, '0', '21/04/2017 07:00'),
	(1091, 'JORGE', 'MORCILLO', 'VILLA', '13bl15776543291', 152338, 5, 1, 1, 1, 2, '0', '24/02/2011 07:00'),
	(1092, 'ENCARNA', 'FAJARDO', 'CARPIO', '13bl15776543292', 152463, 5, 1, 1, 1, 2, '0', '23/04/2018 07:00'),
	(1093, 'CONCHA', 'BAQUERO', 'ALBERO', '13bl15776543293', 152445, 5, 1, 1, 1, 2, '0', '24/01/2017 07:00'),
	(1094, 'VENCESLAS', 'NEIRA', 'JODAR', '13bl15776543294', 152474, 5, 1, 1, 1, 2, '0', '26/09/2013 07:00'),
	(1095, 'MARCIAL', 'TOLEDO', 'QUEVEDO', '13bl15776543295', 152344, 5, 1, 1, 1, 2, '0', '17/08/2022 07:00'),
	(1096, 'SILVIA', 'SABATER', 'BENAVIDES', '13bl15776543296', 152500, 5, 1, 1, 1, 2, '0', '22/03/2016 07:00'),
	(1097, 'CAMILO', 'CRESPI', 'SARABIA', '13bl15776543297', 152314, 5, 1, 1, 1, 2, '0', '19/03/2020 07:00'),
	(1098, 'DANILO', 'DE', 'MORILLO', '13bl15776543298', 152439, 5, 1, 1, 1, 2, '0', '19/07/2010 07:00'),
	(1099, 'ALBERT', 'ALBERT', 'RIOS', '13bl15776543299', 152440, 5, 1, 1, 1, 2, '0', '28/03/2019 07:00'),
	(1100, 'ROSENDA', 'CAMARA', 'FLOR', '13bl15776543100', 152342, 5, 1, 1, 1, 2, '0', '17/02/2021 07:00'),
	(1101, 'AZAHAR', 'NIETO', 'DOMENECH', '13bl15776543101', 152395, 5, 1, 1, 1, 2, '0', '15/03/2014 07:00'),
	(1102, 'VISITACION', 'SEBASTIAN', 'OCANA', '13bl15776543102', 152411, 5, 1, 1, 1, 2, '0', '26/08/2022 07:00'),
	(1103, 'DELIA', 'GINER', 'MORILLO', '13bl15776543103', 152346, 5, 1, 1, 1, 2, '0', '17/01/2020 07:00'),
	(1104, 'HERNANDO', 'BERMUDEZ', 'CORBACHO', '13bl15776543104', 152357, 5, 1, 1, 1, 2, '0', '23/01/2021 07:00'),
	(1105, 'MALENA', 'VILLALBA', 'TORRE', '13bl15776543105', 152437, 5, 1, 1, 1, 2, '0', '15/01/2014 07:00'),
	(1106, 'NOE', 'COELLO', 'BARRIGA', '13bl15776543106', 152340, 5, 1, 1, 1, 2, '0', '13/06/2015 07:00'),
	(1107, 'IBAN', 'TAMAYO', 'FARRE', '13bl15776543107', 152374, 5, 1, 1, 1, 2, '0', '28/06/2013 07:00'),
	(1108, 'MARCO', 'MARCO', 'ARNAIZ', '13bl15776543108', 152414, 5, 1, 1, 1, 2, '0', '12/02/2016 07:00'),
	(1109, 'MARIANELA', 'BERMEJO', 'IGLESIA', '13bl15776543109', 152407, 5, 1, 1, 1, 2, '0', '27/03/2012 07:00'),
	(1110, 'HERNANDO', 'LINARES', 'ECHEVERRIA', '13bl15776543110', 152406, 5, 1, 1, 1, 2, '0', '15/05/2015 07:00'),
	(1111, 'ANDRES', 'FELIPE', 'COMPANY', '13bl15776543111', 152329, 5, 1, 1, 1, 2, '0', '10/01/2012 07:00'),
	(1112, 'SALVADOR', 'PRADO', 'ABASCAL', '13bl15776543112', 152492, 5, 1, 1, 1, 2, '0', '15/02/2011 07:00'),
	(1113, 'NICOLAS', 'ALARCON', 'VINA', '13bl15776543113', 152330, 5, 1, 1, 1, 2, '0', '23/01/2019 07:00'),
	(1114, 'DOROTEA', 'CALLEJA', 'PEREZ', '13bl15776543114', 152464, 5, 1, 1, 1, 2, '0', '25/09/2012 07:00'),
	(1115, 'ISAURA', 'CASTANEDA', 'ASENSIO', '13bl15776543115', 152393, 5, 1, 1, 1, 2, '0', '23/05/2020 07:00'),
	(1116, 'AMERICO', 'PEINADO', 'GINER', '13bl15776543116', 152347, 5, 1, 1, 1, 2, '0', '15/01/2020 07:00'),
	(1117, 'ELISABET', 'BERNAT', 'LOBATO', '13bl15776543117', 152499, 5, 1, 1, 1, 2, '0', '24/06/2016 07:00'),
	(1118, 'OCTAVIA', 'DEL', 'PALOMAR', '13bl15776543118', 152461, 5, 1, 1, 1, 2, '0', '18/04/2012 07:00'),
	(1119, 'HORACIO', 'BERROCAL', 'ARRIETA', '13bl15776543119', 152396, 5, 1, 1, 1, 2, '0', '28/06/2013 07:00'),
	(1120, 'CLAUDIA', 'VALERA', 'BARRAGAN', '13bl15776543120', 152430, 5, 1, 1, 1, 2, '0', '21/09/2014 07:00'),
	(1121, 'NARCISA', 'SIERRA', 'SARMIENTO', '13bl15776543121', 152478, 5, 1, 1, 1, 2, '0', '17/07/2018 07:00'),
	(1122, 'ROMULO', 'COLOMA', 'IBORRA', '13bl15776543122', 152418, 5, 1, 1, 1, 2, '0', '22/05/2018 07:00'),
	(1123, 'GEORGINA', 'ROURA', 'MARTIN', '13bl15776543123', 152429, 5, 1, 1, 1, 2, '0', '10/05/2020 07:00'),
	(1124, 'JERONIMO', 'GOMIS', 'GALIANO', '13bl15776543124', 152331, 5, 1, 1, 1, 2, '0', '12/06/2022 07:00'),
	(1125, 'MAGDALENA', 'DEL', 'MENDEZ', '13bl15776543125', 152436, 5, 1, 1, 1, 2, '0', '21/01/2014 07:00'),
	(1126, 'EMPERATRIZ', 'ALCARAZ', 'DALMAU', '13bl15776543126', 152324, 5, 1, 1, 1, 2, '0', '25/02/2012 07:00'),
	(1127, 'ANUNCIACION', 'RODRIGO', 'DUARTE', '13bl15776543127', 152327, 5, 1, 1, 1, 2, '0', '19/05/2011 07:00'),
	(1128, 'EDELMIRA', 'HIERRO', 'PEDRERO', '13bl15776543128', 152370, 5, 1, 1, 1, 2, '0', '23/04/2013 07:00'),
	(1129, 'VASCO', 'DE', 'FALCO', '13bl15776543129', 152431, 5, 1, 1, 1, 2, '0', '24/02/2016 07:00'),
	(1130, 'DANIELA', 'MORAN', 'FIGUEROA', '13bl15776543130', 152466, 5, 1, 1, 1, 2, '0', '28/03/2017 07:00'),
	(1131, 'BARTOLOME', 'DE', 'BORJA', '13bl15776543131', 152462, 5, 1, 1, 1, 2, '0', '11/08/2014 07:00'),
	(1132, 'FLORENTINO', 'PARRA', 'ALBERO', '13bl15776543132', 152399, 5, 1, 1, 1, 2, '0', '16/07/2016 07:00'),
	(1133, 'AITOR', 'LAGO', 'RUIZ', '13bl15776543133', 152451, 5, 1, 1, 1, 2, '0', '11/01/2022 07:00'),
	(1134, 'DAN', 'PAVON', 'ALMANSA', '13bl15776543134', 152319, 5, 1, 1, 1, 2, '0', '25/04/2012 07:00'),
	(1135, 'FEDERICO', 'ALFARO', 'CHECA', '13bl15776543135', 152336, 5, 1, 1, 1, 2, '0', '24/08/2020 07:00'),
	(1136, 'BASILIO', 'OLIVA', 'GALAN', '13bl15776543136', 152487, 5, 1, 1, 1, 2, '0', '28/01/2022 07:00'),
	(1137, 'ELISABET', 'ELISABET', 'PAGES', '13bl15776543137', 152378, 5, 1, 1, 1, 2, '0', '28/02/2021 07:00'),
	(1138, 'HILARIO', 'ISERN', 'ESPARZA', '13bl15776543138', 152392, 5, 1, 1, 1, 2, '0', '19/09/2017 07:00'),
	(1139, 'TEOBALDO', 'DE', 'ARAGONES', '13bl15776543139', 152381, 5, 1, 1, 1, 2, '0', '20/01/2013 07:00'),
	(1140, 'JOSE', 'ROCA', 'RIBES', '13bl15776543140', 152455, 5, 1, 1, 1, 2, '0', '22/08/2012 07:00'),
	(1141, 'ROMULO', 'GALAN', 'ARAGONES', '13bl15776543141', 152312, 5, 1, 1, 1, 2, '0', '11/06/2010 07:00'),
	(1142, 'LEOPOLDO', 'BERMEJO', 'SERRA', '13bl15776543142', 152498, 5, 1, 1, 1, 2, '0', '23/04/2012 07:00'),
	(1143, 'PRUDENCIA', 'DEL', 'LOZANO', '13bl15776543143', 152382, 5, 1, 1, 1, 2, '0', '16/06/2016 07:00'),
	(1144, 'BAUDELIO', 'DEL', 'NICOLAU', '13bl15776543144', 152318, 5, 1, 1, 1, 2, '0', '13/04/2010 07:00'),
	(1145, 'CELSO', 'CELSO', 'ROSELL', '13bl15776543145', 152375, 5, 1, 1, 1, 2, '0', '16/08/2010 07:00'),
	(1146, 'MALENA', 'FUENTE', 'CORDOBA', '13bl15776543146', 152356, 5, 1, 1, 1, 2, '0', '10/05/2020 07:00'),
	(1147, 'MATEO', 'OLIVA', 'GIMENO', '13bl15776543147', 152449, 5, 1, 1, 1, 2, '0', '18/06/2011 07:00'),
	(1148, 'ISAAC', 'DE', 'GALIANO', '13bl15776543148', 152367, 5, 1, 1, 1, 2, '0', '12/05/2013 07:00'),
	(1149, 'TECLA', 'TECLA', 'VALLE', '13bl15776543149', 152352, 5, 1, 1, 1, 2, '0', '26/03/2018 07:00'),
	(1150, 'MARCIANO', 'LEAL', 'ROPERO', '13bl15776543150', 152417, 5, 1, 1, 1, 2, '0', '20/04/2018 07:00'),
	(1151, 'CHE', 'ALMANSA', 'MARTIN', '13bl15776543151', 152316, 2, 1, 1, 1, 2, '0', '17/01/2017 07:00'),
	(1152, 'ALBERTO', 'GALLEGO', 'COBO', '13bl15776543152', 152470, 2, 1, 1, 1, 2, '0', '16/02/2012 07:00'),
	(1153, 'PRISCILA', 'PALOMO', 'ESTEVE', '13bl15776543153', 152405, 2, 1, 1, 1, 2, '0', '20/08/2018 07:00'),
	(1154, 'JOSEFA', 'GIBERT', 'SUAREZ', '13bl15776543154', 152354, 2, 1, 1, 1, 2, '0', '25/05/2017 07:00'),
	(1155, 'CIRIACO', 'PAREJO', 'TEJADA', '13bl15776543155', 152476, 2, 1, 1, 1, 2, '0', '20/03/2021 07:00'),
	(1156, 'DORITA', 'JAEN', 'FERNANDEZ', '13bl15776543156', 152467, 2, 1, 1, 1, 2, '0', '27/06/2014 07:00'),
	(1157, 'ARISTIDES', 'NARANJO', 'DELGADO', '13bl15776543157', 152494, 2, 1, 1, 1, 2, '0', '13/01/2012 07:00'),
	(1158, 'ALONSO', 'GOMEZ', 'COMAS', '13bl15776543158', 152397, 2, 1, 1, 1, 2, '0', '26/01/2013 07:00'),
	(1159, 'ADRIAN', 'ISERN', 'MONTERO', '13bl15776543159', 152348, 2, 1, 1, 1, 2, '0', '19/09/2021 07:00'),
	(1160, 'RAMIRO', 'DE', 'MARTORELL', '13bl15776543160', 152454, 2, 1, 1, 1, 2, '0', '22/02/2018 07:00'),
	(1161, 'QUIRINO', 'LEON', 'CAMACHO', '13bl15776543161', 152420, 2, 1, 1, 1, 2, '0', '22/06/2018 07:00'),
	(1162, 'FELICIDAD', 'SAENZ', 'ZABALA', '13bl15776543162', 152350, 2, 1, 1, 1, 2, '0', '19/05/2012 07:00'),
	(1163, 'LORETO', 'ESTRADA', 'VALERA', '13bl15776543163', 152388, 2, 1, 1, 1, 2, '0', '15/01/2013 07:00'),
	(1164, 'ELI', 'HERVAS', 'NEVADO', '13bl15776543164', 152403, 2, 1, 1, 1, 2, '0', '16/02/2012 07:00'),
	(1165, 'NOE', 'NICOLAU', 'BARBERO', '13bl15776543165', 152325, 2, 1, 1, 1, 2, '0', '19/03/2010 07:00'),
	(1166, 'MARINO', 'MARINO', 'SANABRIA', '13bl15776543166', 152412, 2, 1, 1, 1, 2, '0', '15/07/2019 07:00'),
	(1167, 'BLAS', 'PLAZA', 'VERA', '13bl15776543167', 152303, 2, 1, 1, 1, 2, '0', '14/05/2013 07:00'),
	(1168, 'CELSO', 'MOLINA', 'VENDRELL', '13bl15776543168', 152458, 2, 1, 1, 1, 2, '0', '19/07/2014 07:00'),
	(1169, 'ELADIO', 'GONZALO', 'ARREGUI', '13bl15776543169', 152456, 2, 1, 1, 1, 2, '0', '14/09/2010 07:00'),
	(1170, 'RUFINO', 'BLASCO', 'CARNERO', '13bl15776543170', 152355, 2, 1, 1, 1, 2, '0', '22/05/2022 07:00'),
	(1171, 'PILI', 'DEL', 'PALAU', '13bl15776543171', 152322, 2, 1, 1, 1, 2, '0', '22/06/2021 07:00'),
	(1172, 'ERIC', 'FONSECA', 'MARI', '13bl15776543172', 152323, 2, 1, 1, 1, 2, '0', '12/02/2017 07:00'),
	(1173, 'JULIANA', 'DEL', 'RIBA', '13bl15776543173', 152362, 2, 1, 1, 1, 2, '0', '24/06/2017 07:00'),
	(1174, 'NOEMI', 'ESCOBAR', 'GASCON', '13bl15776543174', 152387, 2, 1, 1, 1, 2, '0', '15/09/2018 07:00'),
	(1175, 'JUAN', 'LLOBET', 'PENAS', '13bl15776543175', 152423, 2, 1, 1, 1, 2, '0', '11/09/2019 07:00'),
	(1176, 'RODRIGO', 'SOTO', 'PALOMARES', '13bl15776543176', 152424, 2, 1, 1, 1, 2, '0', '28/07/2020 07:00'),
	(1177, 'AMANCIO', 'CAMPOY', 'BERMEJO', '13bl15776543177', 152390, 2, 1, 1, 1, 2, '0', '17/02/2015 07:00'),
	(1178, 'NADIA', 'VALERA', 'NIETO', '13bl15776543178', 152358, 2, 1, 1, 1, 2, '0', '19/05/2016 07:00'),
	(1179, 'RAMON', 'BASTIDA', 'MIR', '13bl15776543179', 152385, 2, 1, 1, 1, 2, '0', '16/02/2016 07:00'),
	(1180, 'DOMITILA', 'DEL', 'ROSA', '13bl15776543180', 152446, 2, 1, 1, 1, 2, '0', '22/09/2013 07:00'),
	(1181, 'RODOLFO', 'MAESTRE', 'ACEDO', '13bl15776543181', 152334, 2, 1, 1, 1, 2, '0', '17/05/2014 07:00'),
	(1182, 'EUSEBIO', 'CARVAJAL', 'LUZ', '13bl15776543182', 152315, 2, 1, 1, 1, 2, '0', '14/08/2018 07:00'),
	(1183, 'VINICIO', 'MADRID', 'PI', '13bl15776543183', 152377, 2, 1, 1, 1, 2, '0', '15/01/2019 07:00'),
	(1184, 'OTILIA', 'SEVILLA', 'IZQUIERDO', '13bl15776543184', 152326, 2, 1, 1, 1, 2, '0', '23/08/2022 07:00'),
	(1185, 'AMOR', 'CARBALLO', 'BARRAL', '13bl15776543185', 152428, 2, 1, 1, 1, 2, '0', '22/04/2011 07:00'),
	(1186, 'ALMUDENA', 'ORTIZ', 'CRIADO', '13bl15776543186', 152404, 2, 1, 1, 1, 2, '0', '24/02/2016 07:00'),
	(1187, 'TERESA', 'DEL', 'VIZCAINO', '13bl15776543187', 152472, 2, 1, 1, 1, 2, '0', '21/01/2012 07:00'),
	(1188, 'MARINA', 'GUARDIOLA', 'VERGARA', '13bl15776543188', 152311, 2, 1, 1, 1, 2, '0', '22/02/2012 07:00'),
	(1189, 'NYDIA', 'TUDELA', 'ARROYO', '13bl15776543189', 152400, 2, 1, 1, 1, 2, '0', '23/01/2014 07:00'),
	(1190, 'NURIA', 'PRADA', 'ALVARADO', '13bl15776543190', 152409, 2, 1, 1, 1, 2, '0', '25/09/2019 07:00'),
	(1191, 'JOVITA', 'NEBOT', 'HARO', '13bl15776543191', 152460, 2, 1, 1, 1, 2, '0', '16/09/2022 07:00'),
	(1192, 'CHUS', 'LUIS', 'MACIAS', '13bl15776543192', 152365, 2, 1, 1, 1, 2, '0', '11/05/2012 07:00'),
	(1193, 'ALE', 'ALE', 'CANELLAS', '13bl15776543193', 152443, 2, 1, 1, 1, 2, '0', '13/07/2022 07:00'),
	(1194, 'IVAN', 'DEL', 'AGUDO', '13bl15776543194', 152302, 2, 1, 1, 1, 2, '0', '23/02/2022 07:00'),
	(1195, 'BEGONA', 'BEGONA', 'ROCHA', '13bl15776543195', 152376, 2, 1, 1, 1, 2, '0', '24/02/2022 07:00'),
	(1196, 'MARISA', 'MADRIGAL', 'GARAY', '13bl15776543196', 152480, 2, 1, 1, 1, 2, '0', '10/01/2013 07:00'),
	(1197, 'GUADALUPE', 'CUERVO', 'LUNA', '13bl15776543197', 152419, 2, 1, 1, 1, 2, '0', '23/08/2014 07:00'),
	(1198, 'LOLA', 'PALMER', 'CALLEJA', '13bl15776543198', 152441, 2, 1, 1, 1, 2, '0', '18/04/2022 07:00'),
	(1199, 'MATILDE', 'CASANOVA', 'LUCENA', '13bl15776543199', 152306, 2, 1, 1, 1, 2, '0', '21/06/2017 07:00'),
	(1200, 'EDELMIRA', 'DE', 'BAYO', '13bl15776543200', 152368, 2, 1, 1, 1, 2, '0', '16/09/2021 07:00'),
	(1201, 'MARICRUZ', 'ROBLEDO', 'SALINAS', '13bl15776543201', 153011, 2, 1, 1, 1, 2, '0', '19/09/2017 07:00'),
	(1202, 'JULIA', 'CORTES', 'ESTEVEZ', '13bl15776543202', 152904, 2, 1, 1, 1, 2, '0', '23/08/2019 07:00'),
	(1203, 'NAZARET', 'DE', 'TAMARIT', '13bl15776543203', 152944, 2, 1, 1, 1, 2, '0', '18/08/2018 07:00'),
	(1204, 'ELBA', 'LLANOS', 'CALDERON', '13bl15776543204', 152920, 2, 1, 1, 1, 2, '0', '17/01/2012 07:00'),
	(1205, 'JOSE', 'ZURITA', 'SALA', '13bl15776543205', 152969, 2, 1, 1, 1, 2, '0', '23/07/2020 07:00'),
	(1206, 'JOSE', 'CANO', 'OTERO', '13bl15776543206', 153002, 2, 1, 1, 1, 2, '0', '18/08/2014 07:00'),
	(1207, 'ENCARNACION', 'DE', 'SAMPER', '13bl15776543207', 153009, 2, 1, 1, 1, 2, '0', '23/05/2010 07:00'),
	(1208, 'ZAIDA', 'ALVAREZ', 'LLAMAS', '13bl15776543208', 152964, 2, 1, 1, 1, 2, '0', '10/06/2011 07:00'),
	(1209, 'HERBERTO', 'LARA', 'COROMINAS', '13bl15776543209', 152923, 2, 1, 1, 1, 2, '0', '25/05/2016 07:00'),
	(1210, 'FIDELA', 'RICART', 'JAEN', '13bl15776543210', 152952, 2, 1, 1, 1, 2, '0', '16/03/2014 07:00'),
	(1211, 'CURRO', 'FONT', 'JOVE', '13bl15776543211', 152975, 2, 1, 1, 1, 2, '0', '21/01/2014 07:00'),
	(1212, 'FELIPA', 'MARTINEZ', 'RIBES', '13bl15776543212', 153010, 2, 1, 1, 1, 2, '0', '18/05/2015 07:00'),
	(1213, 'GUILLERMO', 'BARON', 'COCA', '13bl15776543213', 152963, 2, 1, 1, 1, 2, '0', '28/07/2016 07:00'),
	(1214, 'CRUZ', 'DEL', 'POSADA', '13bl15776543214', 153000, 2, 1, 1, 1, 2, '0', '17/08/2019 07:00'),
	(1215, 'JOSE', 'SALAS', 'VALENTIN', '13bl15776543215', 152922, 2, 1, 1, 1, 2, '0', '17/03/2016 07:00'),
	(1216, 'RAQUEL', 'ANGULO', 'CARRETERO', '13bl15776543216', 153016, 2, 1, 1, 1, 2, '0', '24/06/2015 07:00'),
	(1217, 'NEREIDA', 'MANZANO', 'RIVERO', '13bl15776543217', 153017, 2, 1, 1, 1, 2, '0', '17/01/2019 07:00'),
	(1218, 'MARINO', 'PEREA', 'GONZALEZ', '13bl15776543218', 152971, 2, 1, 1, 1, 2, '0', '24/08/2012 07:00'),
	(1219, 'SOL', 'SARABIA', 'MIRO', '13bl15776543219', 152999, 2, 1, 1, 1, 2, '0', '23/03/2013 07:00'),
	(1220, 'SARA', 'VELEZ', 'MORELL', '13bl15776543220', 153029, 2, 1, 1, 1, 2, '0', '25/06/2015 07:00'),
	(1221, 'AINOA', 'BERENGUER', 'REYES', '13bl15776543221', 153012, 2, 1, 1, 1, 2, '0', '23/07/2011 07:00'),
	(1222, 'CRUZ', 'CRUZ', 'ZABALETA', '13bl15776543222', 152933, 2, 1, 1, 1, 2, '0', '23/05/2018 07:00'),
	(1223, 'AINOA', 'PAREDES', 'OTERO', '13bl15776543223', 152995, 2, 1, 1, 1, 2, '0', '15/02/2017 07:00'),
	(1224, 'CIRIACO', 'PENAS', 'CERVANTES', '13bl15776543224', 152947, 2, 1, 1, 1, 2, '0', '15/07/2020 07:00'),
	(1225, 'ANTONIA', 'ANTONIA', 'PINTO', '13bl15776543225', 152979, 2, 1, 1, 1, 2, '0', '23/09/2014 07:00'),
	(1226, 'PAOLA', 'PAOLA', 'VILLEGAS', '13bl15776543226', 152906, 2, 1, 1, 1, 2, '0', '27/04/2016 07:00'),
	(1227, 'DONATO', 'MENDIZABAL', 'SOTO', '13bl15776543227', 152940, 2, 1, 1, 1, 2, '0', '18/07/2016 07:00'),
	(1228, 'OLEGARIO', 'PUIG', 'RAMIREZ', '13bl15776543228', 152951, 2, 1, 1, 1, 2, '0', '13/03/2016 07:00'),
	(1229, 'JULIA', 'NINO', 'CATALA', '13bl15776543229', 152973, 2, 1, 1, 1, 2, '0', '28/07/2017 07:00'),
	(1230, 'LEOCADIA', 'GARCES', 'CORNEJO', '13bl15776543230', 152967, 2, 1, 1, 1, 2, '0', '18/02/2011 07:00'),
	(1231, 'EUSEBIA', 'BERMEJO', 'ARMENGOL', '13bl15776543231', 153034, 2, 1, 1, 1, 2, '0', '20/09/2018 07:00'),
	(1232, 'GUIOMAR', 'FEIJOO', 'MATEO', '13bl15776543232', 152956, 2, 1, 1, 1, 2, '0', '17/07/2019 07:00'),
	(1233, 'LUIS', 'ARELLANO', 'CABO', '13bl15776543233', 152998, 2, 1, 1, 1, 2, '0', '15/08/2022 07:00'),
	(1234, 'ESPIRIDION', 'VINA', 'COBO', '13bl15776543234', 152980, 2, 1, 1, 1, 2, '0', '25/05/2015 07:00'),
	(1235, 'BELEN', 'FABRA', 'CORDERO', '13bl15776543235', 152925, 2, 1, 1, 1, 2, '0', '23/05/2012 07:00'),
	(1236, 'FRANCISCA', 'GOMIS', 'JAUREGUI', '13bl15776543236', 152938, 2, 1, 1, 1, 2, '0', '21/08/2019 07:00'),
	(1237, 'MARGARITA', 'GOMEZ', 'DOMINGO', '13bl15776543237', 152936, 2, 1, 1, 1, 2, '0', '23/06/2012 07:00'),
	(1238, 'CHUS', 'DE', 'SALVA', '13bl15776543238', 152934, 2, 1, 1, 1, 2, '0', '18/03/2011 07:00'),
	(1239, 'MAXI', 'MARINO', 'HEREDIA', '13bl15776543239', 152943, 2, 1, 1, 1, 2, '0', '21/02/2011 07:00'),
	(1240, 'IBAN', 'GALVAN', 'PINA', '13bl15776543240', 152945, 2, 1, 1, 1, 2, '0', '27/07/2021 07:00'),
	(1241, 'CANDIDO', 'TORMO', 'MANZANARES', '13bl15776543241', 152932, 2, 1, 1, 1, 2, '0', '24/08/2014 07:00'),
	(1242, 'CRUZ', 'DEL', 'POSADA', '13bl15776543242', 152970, 2, 1, 1, 1, 2, '0', '25/07/2010 07:00'),
	(1243, 'CARMINA', 'PAZOS', 'ALBERO', '13bl15776543243', 152918, 2, 1, 1, 1, 2, '0', '10/02/2015 07:00'),
	(1244, 'MAITE', 'MAITE', 'BANOS', '13bl15776543244', 153028, 2, 1, 1, 1, 2, '0', '26/08/2022 07:00'),
	(1245, 'MARIA', 'CANTERO', 'VAZQUEZ', '13bl15776543245', 153001, 2, 1, 1, 1, 2, '0', '23/08/2019 07:00'),
	(1246, 'JIMENA', 'PLAZA', 'REAL', '13bl15776543246', 152953, 2, 1, 1, 1, 2, '0', '21/04/2014 07:00'),
	(1247, 'MORENO', 'CAMINO', 'ARIZA', '13bl15776543247', 152989, 2, 1, 1, 1, 2, '0', '20/08/2013 07:00'),
	(1248, 'GUIOMAR', 'PEIRO', 'CORTINA', '13bl15776543248', 153020, 2, 1, 1, 1, 2, '0', '13/02/2011 07:00'),
	(1249, 'CECILIA', 'SEBASTIAN', 'POZO', '13bl15776543249', 152991, 2, 1, 1, 1, 2, '0', '23/07/2018 07:00'),
	(1250, 'ELVIRA', 'TEJERA', 'GOMIS', '13bl15776543250', 152926, 2, 1, 1, 1, 2, '0', '15/05/2013 07:00'),
	(1251, 'OTILIA', 'PINEDA', 'CONDE', '13bl15776543251', 152916, 7, 1, 1, 1, 2, '0', '16/08/2015 07:00'),
	(1252, 'ARACELI', 'CISNEROS', 'PALOMO', '13bl15776543252', 152996, 7, 1, 1, 1, 2, '0', '16/01/2012 07:00'),
	(1253, 'BLANCA', 'DURAN', 'GUTIERREZ', '13bl15776543253', 153014, 7, 1, 1, 1, 2, '0', '15/02/2017 07:00'),
	(1254, 'ANDRES', 'GALLART', 'ANDRADE', '13bl15776543254', 153026, 7, 1, 1, 1, 2, '0', '26/07/2021 07:00'),
	(1255, 'CHITA', 'VALBUENA', 'RICO', '13bl15776543255', 152968, 7, 1, 1, 1, 2, '0', '24/09/2011 07:00'),
	(1256, 'PIEDAD', 'PIEDAD', 'HUGUET', '13bl15776543256', 152965, 7, 1, 1, 1, 2, '0', '22/05/2014 07:00'),
	(1257, 'AMARO', 'MARMOL', 'LASA', '13bl15776543257', 152910, 7, 1, 1, 1, 2, '0', '12/07/2020 07:00'),
	(1258, 'JOSE', 'FERRERAS', 'PUENTE', '13bl15776543258', 152950, 7, 1, 1, 1, 2, '0', '23/01/2012 07:00'),
	(1259, 'FITO', 'FITO', 'PEINADO', '13bl15776543259', 152909, 7, 1, 1, 1, 2, '0', '13/05/2021 07:00'),
	(1260, 'JUAN', 'JUAN', 'VALENTIN', '13bl15776543260', 152929, 7, 1, 1, 1, 2, '0', '24/02/2012 07:00'),
	(1261, 'LALO', 'ALSINA', 'TOME', '13bl15776543261', 153038, 7, 1, 1, 1, 2, '0', '11/07/2013 07:00'),
	(1262, 'CLOTILDE', 'CARRION', 'CASAS', '13bl15776543262', 152911, 7, 1, 1, 1, 2, '0', '28/07/2017 07:00'),
	(1263, 'MELCHOR', 'ALONSO', 'BORRAS', '13bl15776543263', 152984, 7, 1, 1, 1, 2, '0', '20/08/2020 07:00'),
	(1264, 'MARIA', 'URIBE', 'ADAN', '13bl15776543264', 152937, 7, 1, 1, 1, 2, '0', '11/03/2020 07:00'),
	(1265, 'VIRGILIO', 'PINILLA', 'BERENGUER', '13bl15776543265', 153018, 7, 1, 1, 1, 2, '0', '18/01/2018 07:00'),
	(1266, 'JUAN', 'PELAEZ', 'MOYA', '13bl15776543266', 152997, 7, 1, 1, 1, 2, '0', '21/09/2018 07:00'),
	(1267, 'SAMU', 'IBANEZ', 'ANTUNEZ', '13bl15776543267', 152994, 7, 1, 1, 1, 2, '0', '10/06/2018 07:00'),
	(1268, 'HERMINIA', 'MONTOYA', 'ABASCAL', '13bl15776543268', 153008, 7, 1, 1, 1, 2, '0', '10/09/2019 07:00'),
	(1269, 'FELIPE', 'JULIA', 'BELLO', '13bl15776543269', 152915, 7, 1, 1, 1, 2, '0', '21/02/2011 07:00'),
	(1270, 'CIRIACO', 'CANAS', 'BARTOLOME', '13bl15776543270', 152921, 7, 1, 1, 1, 2, '0', '28/01/2010 07:00'),
	(1271, 'MARIA', 'DEL', 'MAS', '13bl15776543271', 153006, 7, 1, 1, 1, 2, '0', '21/02/2013 07:00'),
	(1272, 'GODOFREDO', 'GODOFREDO', 'ARAGONES', '13bl15776543272', 153031, 7, 1, 1, 1, 2, '0', '11/06/2014 07:00'),
	(1273, 'FULGENCIO', 'CASARES', 'GONZALEZ', '13bl15776543273', 152993, 7, 1, 1, 1, 2, '0', '24/03/2014 07:00'),
	(1274, 'JOSE', 'FELIU', 'VARELA', '13bl15776543274', 153022, 7, 1, 1, 1, 2, '0', '28/05/2019 07:00'),
	(1275, 'ANDRES', 'PALMA', 'SANMIGUEL', '13bl15776543275', 153015, 7, 1, 1, 1, 2, '0', '11/07/2022 07:00'),
	(1276, 'SELENA', 'DURAN', 'SANMIGUEL', '13bl15776543276', 153037, 7, 1, 1, 1, 2, '0', '24/03/2019 07:00'),
	(1277, 'JOSE', 'DONAIRE', 'RIERA', '13bl15776543277', 153036, 7, 1, 1, 1, 2, '0', '21/07/2015 07:00'),
	(1278, 'GERTRUDIS', 'LUMBRERAS', 'MURCIA', '13bl15776543278', 152927, 7, 1, 1, 1, 2, '0', '27/07/2019 07:00'),
	(1279, 'RODOLFO', 'DE', 'CERVANTES', '13bl15776543279', 152941, 7, 1, 1, 1, 2, '0', '26/07/2012 07:00'),
	(1280, 'LILIANA', 'HOZ', 'PIZARRO', '13bl15776543280', 152903, 7, 1, 1, 1, 2, '0', '26/02/2022 07:00'),
	(1281, 'PONCIO', 'CALDERON', 'GIRALT', '13bl15776543281', 153035, 7, 1, 1, 1, 2, '0', '19/06/2017 07:00'),
	(1282, 'LORENZA', 'VILLANUEVA', 'BOLANOS', '13bl15776543282', 153019, 7, 1, 1, 1, 2, '0', '12/07/2013 07:00'),
	(1283, 'MARIA', 'TOMAS', 'PORTILLO', '13bl15776543283', 152913, 7, 1, 1, 1, 2, '0', '22/09/2020 07:00'),
	(1284, 'CLEMENTE', 'DEL', 'MAYORAL', '13bl15776543284', 152917, 7, 1, 1, 1, 2, '0', '10/07/2016 07:00'),
	(1285, 'DULCE', 'CORDERO', 'INIGUEZ', '13bl15776543285', 152942, 7, 1, 1, 1, 2, '0', '17/07/2012 07:00'),
	(1286, 'PELAYO', 'VARELA', 'CORRAL', '13bl15776543286', 153004, 7, 1, 1, 1, 2, '0', '15/08/2019 07:00'),
	(1287, 'JOSE', 'ANTONIO', 'JUAN', '13bl15776543287', 153040, 7, 1, 1, 1, 2, '0', '17/04/2017 07:00'),
	(1288, 'FLORENTINO', 'VERA', 'MANRIQUE', '13bl15776543288', 153027, 7, 1, 1, 1, 2, '0', '28/01/2017 07:00'),
	(1289, 'VALERIO', 'PEREZ', 'FERRERO', '13bl15776543289', 153030, 7, 1, 1, 1, 2, '0', '11/06/2016 07:00'),
	(1290, 'CIPRIANO', 'GRAS', 'GALLARDO', '13bl15776543290', 152905, 7, 1, 1, 1, 2, '0', '28/07/2022 07:00'),
	(1291, 'TRINI', 'GIMENEZ', 'TUR', '13bl15776543291', 153005, 7, 1, 1, 1, 2, '0', '12/09/2021 07:00'),
	(1292, 'JACOBO', 'DEL', 'PINEDA', '13bl15776543292', 152912, 7, 1, 1, 1, 2, '0', '28/05/2017 07:00'),
	(1293, 'AMANCIO', 'SANMARTIN', 'JUAN', '13bl15776543293', 152946, 7, 1, 1, 1, 2, '0', '22/07/2020 07:00'),
	(1294, 'VITO', 'GUTIERREZ', 'GUARDIA', '13bl15776543294', 152949, 7, 1, 1, 1, 2, '0', '17/08/2012 07:00'),
	(1295, 'CARMELA', 'CARMELA', 'VAZQUEZ', '13bl15776543295', 153013, 7, 1, 1, 1, 2, '0', '14/01/2016 07:00'),
	(1296, 'ALBA', 'AMO', 'FERRANDIZ', '13bl15776543296', 153039, 7, 1, 1, 1, 2, '0', '21/07/2020 07:00'),
	(1297, 'OSCAR', 'SALVADOR', 'ROSALES', '13bl15776543297', 152924, 7, 1, 1, 1, 2, '0', '10/07/2013 07:00'),
	(1298, 'MARIA', 'BARRAGAN', 'OROZCO', '13bl15776543298', 152986, 7, 1, 1, 1, 2, '0', '23/07/2011 07:00'),
	(1299, 'GLAUCO', 'SALMERON', 'BERENGUER', '13bl15776543299', 153023, 7, 1, 1, 1, 2, '0', '15/05/2014 07:00'),
	(1300, 'NAZARET', 'CALDERON', 'CANTERO', '13bl15776543300', 152981, 7, 1, 1, 1, 2, '0', '12/06/2011 07:00'),
	(1301, 'ROSARIO', 'BARRAGAN', 'QUIROGA', '13bl15776543301', 152982, 6, 1, 1, 1, 2, '0', '10/05/2015 07:00'),
	(1302, 'ELISA', 'DEL', 'ROCAMORA', '13bl15776543302', 152960, 6, 1, 1, 1, 2, '0', '10/04/2022 07:00'),
	(1303, 'ENCARNACION', 'VALENZUELA', 'SALMERON', '13bl15776543303', 152972, 6, 1, 1, 1, 2, '0', '22/09/2016 07:00'),
	(1304, 'HORACIO', 'CALVO', 'MALO', '13bl15776543304', 152930, 6, 1, 1, 1, 2, '0', '15/08/2014 07:00'),
	(1305, 'MARGARITA', 'CEPEDA', 'LEDESMA', '13bl15776543305', 152992, 6, 1, 1, 1, 2, '0', '23/05/2020 07:00'),
	(1306, 'RICO', 'PAREDES', 'NEVADO', '13bl15776543306', 152919, 6, 1, 1, 1, 2, '0', '22/04/2012 07:00'),
	(1307, 'JOSE', 'RAMON', 'BERNAD', '13bl15776543307', 152955, 6, 1, 1, 1, 2, '0', '24/08/2015 07:00'),
	(1308, 'COSME', 'ABASCAL', 'MOLINS', '13bl15776543308', 153033, 6, 1, 1, 1, 2, '0', '26/05/2020 07:00'),
	(1309, 'MIGUEL', 'CAMARA', 'BELLIDO', '13bl15776543309', 152977, 6, 1, 1, 1, 2, '0', '10/02/2013 07:00'),
	(1310, 'VIOLETA', 'CUESTA', 'ARIZA', '13bl15776543310', 152954, 6, 1, 1, 1, 2, '0', '13/04/2022 07:00'),
	(1311, 'BERNARDINO', 'HIERRO', 'MERCADER', '13bl15776543311', 152928, 6, 1, 1, 1, 2, '0', '24/08/2013 07:00'),
	(1312, 'ALEXANDRA', 'RODRIGUEZ', 'SANS', '13bl15776543312', 152966, 6, 1, 1, 1, 2, '0', '20/06/2015 07:00'),
	(1313, 'ELIAS', 'MATA', 'MATEU', '13bl15776543313', 152935, 6, 1, 1, 1, 2, '0', '22/07/2011 07:00'),
	(1314, 'AMOR', 'AMOR', 'ARAMBURU', '13bl15776543314', 152908, 6, 1, 1, 1, 2, '0', '13/06/2017 07:00'),
	(1315, 'ANA', 'AGUILAR', 'CEREZO', '13bl15776543315', 152931, 6, 1, 1, 1, 2, '0', '25/07/2018 07:00'),
	(1316, 'SILVESTRE', 'FERRERAS', 'VILAPLANA', '13bl15776543316', 152988, 6, 1, 1, 1, 2, '0', '18/03/2017 07:00'),
	(1317, 'ELEUTERIO', 'MARINO', 'MENDEZ', '13bl15776543317', 152961, 6, 1, 1, 1, 2, '0', '19/09/2018 07:00'),
	(1318, 'JOVITA', 'LUIS', 'HUERTA', '13bl15776543318', 153032, 6, 1, 1, 1, 2, '0', '14/06/2011 07:00'),
	(1319, 'TRINIDAD', 'TRINIDAD', 'RICO', '13bl15776543319', 153007, 6, 1, 1, 1, 2, '0', '20/08/2014 07:00'),
	(1320, 'JOSE', 'GALAN', 'PARDO', '13bl15776543320', 152939, 6, 1, 1, 1, 2, '0', '19/02/2017 07:00'),
	(1321, 'FLORENTINA', 'QUINTERO', 'DONAIRE', '13bl15776543321', 152959, 6, 1, 1, 1, 2, '0', '11/07/2015 07:00'),
	(1322, 'JACOBO', 'BEJARANO', 'VALVERDE', '13bl15776543322', 152957, 6, 1, 1, 1, 2, '0', '12/06/2018 07:00'),
	(1323, 'CEFERINO', 'ROIG', 'COLOM', '13bl15776543323', 152914, 6, 1, 1, 1, 2, '0', '20/02/2010 07:00'),
	(1324, 'TANIA', 'BLANES', 'ARELLANO', '13bl15776543324', 152985, 6, 1, 1, 1, 2, '0', '18/07/2016 07:00'),
	(1325, 'LEANDRA', 'MALDONADO', 'SANTANA', '13bl15776543325', 152948, 6, 1, 1, 1, 2, '0', '24/01/2020 07:00'),
	(1326, 'TAMARA', 'VILLEGAS', 'PAZ', '13bl15776543326', 153025, 6, 1, 1, 1, 2, '0', '23/09/2012 07:00'),
	(1327, 'BERNARDITA', 'DE', 'LLUCH', '13bl15776543327', 152990, 6, 1, 1, 1, 2, '0', '23/02/2021 07:00'),
	(1328, 'SEBASTIAN', 'DEL', 'VILLALOBOS', '13bl15776543328', 152987, 6, 1, 1, 1, 2, '0', '13/02/2022 07:00'),
	(1329, 'LUIS', 'CUEVAS', 'PACHECO', '13bl15776543329', 153024, 6, 1, 1, 1, 2, '0', '12/07/2014 07:00'),
	(1330, 'BERNARDITA', 'DALMAU', 'MANSO', '13bl15776543330', 153003, 6, 1, 1, 1, 2, '0', '14/03/2011 07:00'),
	(1331, 'ABEL', 'ESTEVEZ', 'BLANES', '13bl15776543331', 152901, 6, 1, 1, 1, 2, '0', '16/02/2022 07:00'),
	(1332, 'ROMAN', 'HERNANDO', 'ALFONSO', '13bl15776543332', 152958, 6, 1, 1, 1, 2, '0', '10/07/2021 07:00'),
	(1333, 'CAYETANA', 'CAYETANA', 'ROLDAN', '13bl15776543333', 152983, 6, 1, 1, 1, 2, '0', '26/05/2012 07:00'),
	(1334, 'ADRIANA', 'ROMA', 'TEJEDOR', '13bl15776543334', 152902, 6, 1, 1, 1, 2, '0', '21/06/2013 07:00'),
	(1335, 'VIOLETA', 'DE', 'GIMENEZ', '13bl15776543335', 152974, 6, 1, 1, 1, 2, '0', '11/07/2019 07:00'),
	(1336, 'ELODIA', 'SANMARTIN', 'ARTIGAS', '13bl15776543336', 152976, 6, 1, 1, 1, 2, '0', '23/08/2022 07:00'),
	(1337, 'LORENZO', 'TORRECILLA', 'VILLEGAS', '13bl15776543337', 153021, 6, 1, 1, 1, 2, '0', '24/09/2010 07:00'),
	(1338, 'GERALDO', 'CARRETERO', 'DURAN', '13bl15776543338', 152907, 6, 1, 1, 1, 2, '0', '26/01/2010 07:00'),
	(1339, 'MAR', 'SOSA', 'BARCELO', '13bl15776543339', 152962, 6, 1, 1, 1, 2, '0', '14/04/2019 07:00'),
	(1340, 'HUMBERTO', 'JULIAN', 'GUARDIA', '13bl15776543340', 152978, 6, 1, 1, 1, 2, '0', '14/01/2022 07:00'),
	(1341, 'PATRICIO', 'ARIZA', 'BARROS', '13bl15776543341', 152272, 6, 1, 1, 1, 2, '0', '20/03/2016 07:00'),
	(1342, 'AUREA', 'SANTOS', 'PONT', '13bl15776543342', 152041, 6, 1, 1, 1, 2, '0', '12/06/2013 07:00'),
	(1343, 'CALIXTA', 'PINEDA', 'TALAVERA', '13bl15776543343', 152128, 6, 1, 1, 1, 2, '0', '25/06/2022 07:00'),
	(1344, 'TEODORO', 'MADRID', 'VALLEJO', '13bl15776543344', 152152, 6, 1, 1, 1, 2, '0', '25/06/2018 07:00'),
	(1345, 'MONICA', 'BUSTAMANTE', 'INFANTE', '13bl15776543345', 152024, 6, 1, 1, 1, 2, '0', '26/07/2015 07:00'),
	(1346, 'JOSE', 'ESPINOSA', 'VILA', '13bl15776543346', 152073, 6, 1, 1, 1, 2, '0', '14/02/2022 07:00'),
	(1347, 'RENATO', 'RENATO', 'DOMINGUEZ', '13bl15776543347', 152198, 6, 1, 1, 1, 2, '0', '11/06/2017 07:00'),
	(1348, 'FORTUNATA', 'MOLES', 'BRIONES', '13bl15776543348', 152084, 6, 1, 1, 1, 2, '0', '24/08/2013 07:00'),
	(1349, 'JOSE', 'OLMO', 'FALCON', '13bl15776543349', 152044, 6, 1, 1, 1, 2, '0', '19/03/2017 07:00'),
	(1350, 'PURIFICACION', 'CODINA', 'GUERRERO', '13bl15776543350', 152262, 6, 1, 1, 1, 2, '0', '17/09/2011 07:00'),
	(1351, 'EMA', 'ROBLEDO', 'BARROS', '13bl15776543351', 152123, 8, 1, 1, 1, 2, '0', '26/01/2020 07:00'),
	(1352, 'NYDIA', 'VILANOVA', 'GIRALT', '13bl15776543352', 152143, 8, 1, 1, 1, 2, '0', '26/03/2019 07:00'),
	(1353, 'AMOR', 'DEL', 'PUJOL', '13bl15776543353', 152251, 8, 1, 1, 1, 2, '0', '17/09/2011 07:00'),
	(1354, 'INES', 'SOLIS', 'ABAD', '13bl15776543354', 152298, 8, 1, 1, 1, 2, '0', '18/04/2016 07:00'),
	(1355, 'MARIBEL', 'SANCHO', 'ALEMANY', '13bl15776543355', 152089, 8, 1, 1, 1, 2, '0', '18/02/2022 07:00'),
	(1356, 'JOVITA', 'LORENZO', 'SILVA', '13bl15776543356', 152203, 8, 1, 1, 1, 2, '0', '10/09/2018 07:00'),
	(1357, 'DAVID', 'ARRIBAS', 'BOLANOS', '13bl15776543357', 152100, 8, 1, 1, 1, 2, '0', '10/01/2013 07:00'),
	(1358, 'CLARISA', 'CUELLAR', 'BOADA', '13bl15776543358', 152108, 8, 1, 1, 1, 2, '0', '17/03/2018 07:00'),
	(1359, 'CONSUELO', 'PALACIO', 'BENAVENT', '13bl15776543359', 152053, 8, 1, 1, 1, 2, '0', '13/03/2010 07:00'),
	(1360, 'ALICIA', 'ALICIA', 'ALCANTARA', '13bl15776543360', 152051, 8, 1, 1, 1, 2, '0', '26/04/2021 07:00'),
	(1361, 'EMILIO', 'ZABALA', 'CAMACHO', '13bl15776543361', 152098, 3, 1, 1, 1, 2, '0', '13/01/2017 07:00'),
	(1362, 'CARMEN', 'ALEMAN', 'INIESTA', '13bl15776543362', 152153, 3, 1, 1, 1, 2, '0', '14/01/2011 07:00'),
	(1363, 'GABRIEL', 'JARA', 'FUSTER', '13bl15776543363', 152010, 3, 1, 1, 1, 2, '0', '13/01/2010 07:00'),
	(1364, 'PASCUAL', 'MAYO', 'ABELLAN', '13bl15776543364', 152075, 3, 1, 1, 1, 2, '0', '14/02/2020 07:00'),
	(1365, 'MORENA', 'POMBO', 'ANDRADE', '13bl15776543365', 152259, 3, 1, 1, 1, 2, '0', '21/07/2021 07:00'),
	(1366, 'TITO', 'CARBO', 'MARCOS', '13bl15776543366', 152222, 3, 1, 1, 1, 2, '0', '26/01/2022 07:00'),
	(1367, 'CONCEPCION', 'CONCEPCION', 'MANRIQUE', '13bl15776543367', 152003, 3, 1, 1, 1, 2, '0', '18/06/2017 07:00'),
	(1368, 'NANDO', 'NANDO', 'MAZA', '13bl15776543368', 152212, 3, 1, 1, 1, 2, '0', '10/02/2016 07:00'),
	(1369, 'EMA', 'PENAS', 'CARVAJAL', '13bl15776543369', 152036, 3, 1, 1, 1, 2, '0', '24/02/2010 07:00'),
	(1370, 'MACARIA', 'ARMENGOL', 'CABEZA', '13bl15776543370', 152202, 3, 1, 1, 1, 2, '0', '16/01/2021 07:00');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
