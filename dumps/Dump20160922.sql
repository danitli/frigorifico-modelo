-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: frigorifico
-- ------------------------------------------------------
-- Server version	5.7.10-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `animal`
--

DROP TABLE IF EXISTS `animal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `animal` (
  `id_animal` int(11) NOT NULL AUTO_INCREMENT,
  `garron` int(11) DEFAULT NULL,
  `peso` double DEFAULT NULL,
  `tropa_id_tropa` int(11) NOT NULL,
  `categoria_id_categoria` int(11) NOT NULL,
  `cabeza_faenada_entera` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_animal`),
  KEY `fk_animal_tropa1_idx` (`tropa_id_tropa`),
  KEY `fk_animal_categoria1_idx` (`categoria_id_categoria`),
  CONSTRAINT `fk_animal_categoria1` FOREIGN KEY (`categoria_id_categoria`) REFERENCES `categoria` (`id_categoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_animal_tropa1` FOREIGN KEY (`tropa_id_tropa`) REFERENCES `tropa` (`id_tropa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `animal`
--

LOCK TABLES `animal` WRITE;
/*!40000 ALTER TABLE `animal` DISABLE KEYS */;
INSERT INTO `animal` VALUES (1,14,200,7,1,NULL),(2,15,150,7,2,NULL),(3,16,125,8,1,NULL),(4,17,138,8,1,NULL),(5,18,120,8,2,NULL),(6,19,215.2,10,1,NULL),(7,1,215.2,35,1,NULL),(8,1,215.2,36,1,NULL),(9,1,215.2,37,1,NULL),(10,2,150,38,2,NULL),(11,1,250,39,1,NULL),(12,2,250,40,1,NULL),(13,3,250,41,1,NULL),(14,4,250,42,1,NULL),(15,5,250,7,1,NULL),(16,5,250,8,1,NULL),(17,5,250,52,1,NULL),(18,6,250,53,1,NULL),(19,7,250,54,1,NULL),(20,8,215.2,56,1,NULL),(21,1,215.2,59,1,NULL),(22,2,250,60,1,1),(23,1,158,61,1,1),(24,2,25,65,1,1),(25,3,145,66,1,1),(26,4,147,67,1,1),(27,5,10,68,1,1),(28,6,100,69,1,1),(29,1,14,70,1,1),(30,1,258,71,1,1),(31,2,55,72,1,1),(32,3,234,73,1,1),(33,4,120,74,1,1),(34,5,325,75,1,1),(35,6,111,76,1,1),(36,7,253,77,1,1),(37,8,352,78,1,1),(38,9,142,84,1,1),(39,10,123,88,1,1),(40,11,214,90,1,1),(41,12,102,91,1,1),(42,13,245,92,1,1),(43,14,363,93,1,1),(44,15,12,94,1,1),(45,16,66,95,1,1),(46,1,342,96,1,1),(47,1,212,96,1,1),(48,2,123,96,1,1),(49,3,333,97,1,1),(50,4,444,99,1,1),(51,5,555,99,1,1),(52,6,666,99,1,1),(53,7,777,100,1,1),(54,7,77,100,1,1),(55,8,88,100,1,1),(56,8,888,100,1,1),(57,9,999,101,1,1),(58,10,1010,102,1,1),(59,11,1111,103,1,1),(60,12,1212,104,1,1),(61,13,1313,105,1,1),(62,14,1414,106,1,1),(63,15,1515,107,1,1),(64,16,1616,108,1,1),(65,17,1717,109,1,1),(66,18,1818,110,1,1),(67,19,1919,111,1,1),(68,20,2020,111,1,1),(69,21,2121,111,1,1),(70,22,2222,111,1,1),(71,23,2323,111,1,1),(72,1,111,112,1,1),(73,2,2222,113,1,1),(74,3,3333,114,1,1),(75,4,4444,115,1,1),(76,4,5555,115,1,1),(77,5,5566,115,1,1),(78,6,6666,116,1,1),(79,7,7777,117,1,1),(80,8,8888,118,1,1),(81,9,9999,119,1,1),(82,10,1010,120,1,1),(83,11,1111,121,1,1),(84,12,1212,122,1,1),(85,13,1313,123,1,1),(86,14,1414,124,1,1),(87,15,1515,125,1,1),(88,16,1616,126,1,1),(89,17,1717,127,1,1),(90,18,1818,127,1,1),(91,19,1919,127,1,1),(92,20,2020,127,1,1),(93,21,2121,128,1,1),(94,22,2222,128,1,1),(95,1,111,129,1,1),(96,2,222,130,1,1),(97,3,652,130,1,1),(98,4,410,130,1,1),(99,1,20031,131,1,0),(100,2,20032,131,1,0),(101,3,20033,131,1,1),(102,1,199.3,193,1,1),(103,2,201.5,194,1,1),(104,1,204.45,197,1,1),(105,2,205.45,198,1,1),(106,1,251.21,210,1,1),(107,2,125.77,210,1,1),(108,3,100.8,211,1,1),(109,1,45.45,213,1,1),(110,2,46.46,213,1,1),(111,3,2323,214,1,1),(112,4,2424,214,1,1),(113,5,4444,216,1,1),(114,6,7878,216,1,1),(115,7,45,217,1,1),(116,8,4545,218,1,1),(117,9,2333,218,1,1),(118,10,4545,219,2,1),(119,1,23.45,220,1,1),(120,2,23.45,221,1,1),(121,3,100,224,3,1),(122,1,45.45,226,1,1),(123,2,130.15,227,2,1),(124,3,112,228,1,1),(125,4,214.5,229,1,1),(126,1,150,263,1,1),(127,1,100,263,1,1),(128,2,500,267,1,1),(129,1,2354,268,1,1),(130,2,9849849,269,2,1),(131,3,250,270,4,0),(132,4,5151,271,1,1),(133,5,4848,271,1,0),(134,6,10000,272,6,0),(135,7,500,272,6,0),(136,8,100,272,5,1),(137,9,999,275,5,1),(138,10,1010,275,5,1),(139,11,1111,276,5,1),(140,12,425,279,3,1),(141,13,512,279,2,1),(142,1,455,280,1,1),(143,2,787,272,5,1),(144,9,564,281,1,1),(145,10,32,282,1,1),(146,11,95,283,2,1),(147,12,96,283,2,1),(148,13,258,283,2,1),(149,15,100,286,1,0),(150,1,250,288,2,1),(151,2,250,288,3,0),(152,3,200,288,3,0),(153,1,321,291,1,1),(154,2,0,291,1,1),(155,3,0,291,1,1),(156,4,245,291,1,1),(157,5,132,291,1,1),(158,6,0,291,1,1),(159,7,99,291,1,1),(160,2,231,291,1,1),(161,3,500,291,1,1),(162,6,100,291,1,1),(163,1,100,307,1,1),(164,2,123,309,1,1),(165,3,0,309,1,1),(166,4,100,311,1,1),(167,5,0,311,1,1),(168,6,210,313,1,1),(169,7,0,313,1,1),(170,8,100,315,1,1),(171,9,124,318,1,1),(172,10,0,318,1,1),(173,11,245,318,1,1),(174,12,214,319,1,1),(175,13,0,319,1,1),(176,14,325,319,1,1),(177,1,215,323,1,1),(178,2,222,325,1,1),(179,1,150,326,6,1),(180,2,111,326,6,1),(181,3,0,326,6,1),(182,4,0,326,6,1),(183,5,444,326,6,1),(184,3,455,326,6,1),(185,4,785,326,6,1),(186,6,0,326,6,1),(187,7,1500,329,6,0),(211,1,100,335,1,1),(212,2,0,335,1,1),(213,3,0,335,1,1),(214,4,400,335,1,1),(215,2,200,335,1,1),(216,3,0,335,1,1),(217,3,0,335,1,1),(218,3,0,335,1,1),(219,3,0,335,1,1),(220,5,500,338,1,1),(221,6,0,338,1,1),(222,7,0,338,1,1),(223,8,800,338,1,1),(224,6,600,338,1,1),(225,9,99,339,1,1),(226,10,0,339,1,1),(227,11,0,339,1,1),(228,12,120,339,1,1),(229,13,1313,340,1,1),(230,14,0,340,1,1),(231,15,0,340,1,1),(232,16,1616,340,1,1),(233,14,1414,340,1,1),(234,15,1515,340,1,1),(235,17,1717,341,1,1),(236,18,0,341,1,1),(237,19,0,341,1,1),(238,20,2020,341,1,1),(239,18,1818,341,1,1),(240,19,1919,341,1,1);
/*!40000 ALTER TABLE `animal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT COMMENT '		',
  `descripcion` varchar(45) DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `abreviatura` varchar(4) DEFAULT NULL,
  `especie_id_especie` int(11) NOT NULL,
  PRIMARY KEY (`id_categoria`),
  KEY `id_especie_idx` (`especie_id_especie`),
  CONSTRAINT `fk_categoria_especie1` FOREIGN KEY (`especie_id_especie`) REFERENCES `especie` (`id_especie`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'Chancha','03.01','CHA',2),(2,'Capon','03.02','CAP',2),(3,'Chancho','03.03','CHO',2),(4,'Lechon','03.04','LEC',2),(5,'Vaca','04.01','VAC',3),(6,'Toro','04.02','TOR',3),(7,'Cordero','05.01','COR',1),(8,'Oveja','05.02','OVE',1);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `corral`
--

DROP TABLE IF EXISTS `corral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `corral` (
  `id_corral` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `estado_id_estado` int(11) NOT NULL,
  PRIMARY KEY (`id_corral`,`estado_id_estado`),
  KEY `fk_corral_Estado1_idx` (`estado_id_estado`),
  CONSTRAINT `fk_corral_Estado1` FOREIGN KEY (`estado_id_estado`) REFERENCES `estado_corral` (`id_estado`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `corral`
--

LOCK TABLES `corral` WRITE;
/*!40000 ALTER TABLE `corral` DISABLE KEYS */;
INSERT INTO `corral` VALUES (1,1,30,1),(2,2,40,1),(3,3,35,1),(4,4,45,1);
/*!40000 ALTER TABLE `corral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especie`
--

DROP TABLE IF EXISTS `especie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `especie` (
  `id_especie` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_especie` varchar(45) DEFAULT NULL,
  `codigo` varchar(45) DEFAULT NULL,
  `tipo_especie` int(11) NOT NULL,
  PRIMARY KEY (`id_especie`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especie`
--

LOCK TABLES `especie` WRITE;
/*!40000 ALTER TABLE `especie` DISABLE KEYS */;
INSERT INTO `especie` VALUES (1,'Ovino',NULL,1),(2,'Porcinos',NULL,2),(3,'Vacuno',NULL,3);
/*!40000 ALTER TABLE `especie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `establecimiento`
--

DROP TABLE IF EXISTS `establecimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `establecimiento` (
  `id_establecimiento` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_establecimiento` varchar(45) DEFAULT NULL,
  `titular` varchar(45) DEFAULT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `cuit` bigint(12) DEFAULT NULL,
  `numero_habilitacion` int(11) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  `provincia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_establecimiento`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `establecimiento`
--

LOCK TABLES `establecimiento` WRITE;
/*!40000 ALTER TABLE `establecimiento` DISABLE KEYS */;
INSERT INTO `establecimiento` VALUES (1,'01.029.0.21924/00','El Cora','Capiangos S.R.L.',30714579785,4833,'(0221) 15-5574055','Calle Chascomús','Chascomús','Buenos Aires'),(2,'01.029.0.21924/00','El Cora','Capiangos S.R.L.',30714579785,4833,'(0221) 15-5574055','Calle ChascomÃºs','ChascomÃºs','Buenos Aires'),(3,'01.029.0.21924/00','El Cora','Capiangos S.R.L.',30714579785,4833,'(0221) 15-5574055','Calle Chascomús','Chascomús','Buenos Aires'),(4,'01.029.0.21924/00','El Cora','Capiangos S.R.L.',30714579785,4833,'(0221) 15-5574055','Calle Chascomús','Chascomús','Buenos Aires'),(5,'01.029.0.21924/00','El Cora','Capiangos S.R.L.',30714579785,4833,'(0221) 15-5574055','Calle Chascomús','Chascomús','Buenos Aires'),(6,'01.029.0.21924/00','El Cora','Capiangos S.R.L.',30714579785,4833,'(0221) 15-5574055','Calle Chascomús','Chascomús','Buenos Aires'),(7,'01.029.0.21924/00','El Cora','Capiangos S.R.L.',30714579785,4833,'(0221) 15-5574055','Calle Chascomús','Chascomús','Buenos Aires'),(8,'01.029.0.21924/00','El Cora','Capiangos S.R.L.',30714579785,4833,'(0221) 15-5574055','Calle Chascomús','Chascomús','Buenos Aires'),(9,'01.029.0.21924/00','El Cora','Capiangos S.R.L.',30714579785,4833,'(0221) 15-5574055','Calle Chascomús','Chascomús','Buenos Aires'),(10,'01.029.0.21924/00','El Cora','Capiangos S.R.L.',30714579785,4833,'(0221) 15-5574055','Calle Chascomús','Chascomús','Buenos Aires');
/*!40000 ALTER TABLE `establecimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_corral`
--

DROP TABLE IF EXISTS `estado_corral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado_corral` (
  `id_estado` int(11) NOT NULL,
  `tipo_estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_corral`
--

LOCK TABLES `estado_corral` WRITE;
/*!40000 ALTER TABLE `estado_corral` DISABLE KEYS */;
INSERT INTO `estado_corral` VALUES (1,1),(2,2),(3,3);
/*!40000 ALTER TABLE `estado_corral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `procedencia`
--

DROP TABLE IF EXISTS `procedencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `procedencia` (
  `id_procedencia` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_procedencia`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `procedencia`
--

LOCK TABLES `procedencia` WRITE;
/*!40000 ALTER TABLE `procedencia` DISABLE KEYS */;
INSERT INTO `procedencia` VALUES (1,'Estancias'),(2,'Remate'),(3,'Productores');
/*!40000 ALTER TABLE `procedencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tropa`
--

DROP TABLE IF EXISTS `tropa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tropa` (
  `id_tropa` int(11) NOT NULL AUTO_INCREMENT COMMENT '	',
  `fecha_ingreso` datetime DEFAULT NULL,
  `fecha_faena` datetime DEFAULT NULL,
  `animales_recibidos` int(11) DEFAULT NULL,
  `establecimiento_id_establecimiento` int(11) NOT NULL,
  `numero_tropa` int(11) NOT NULL,
  `especie_id_especie` int(11) NOT NULL,
  `procedencia_id_procedencia` int(11) NOT NULL,
  PRIMARY KEY (`id_tropa`,`procedencia_id_procedencia`),
  KEY `fk_tropa_establecimiento_idx` (`establecimiento_id_establecimiento`),
  KEY `fk_tropa_especie_idx` (`especie_id_especie`),
  KEY `fk_tropa_procedencia1_idx` (`procedencia_id_procedencia`),
  CONSTRAINT `fk_tropa_especie` FOREIGN KEY (`especie_id_especie`) REFERENCES `especie` (`id_especie`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tropa_establecimiento` FOREIGN KEY (`establecimiento_id_establecimiento`) REFERENCES `establecimiento` (`id_establecimiento`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tropa_procedencia1` FOREIGN KEY (`procedencia_id_procedencia`) REFERENCES `procedencia` (`id_procedencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=343 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tropa`
--

LOCK TABLES `tropa` WRITE;
/*!40000 ALTER TABLE `tropa` DISABLE KEYS */;
INSERT INTO `tropa` VALUES (7,'2014-11-30 00:00:00','2014-12-01 00:00:00',20,1,34,1,1),(8,'2015-11-30 00:00:00','2015-12-01 00:00:00',20,1,35,1,1),(10,'2010-11-30 08:30:00','2010-12-01 15:20:10',100,1,30,1,1),(11,'2011-11-30 08:30:00','2011-12-01 15:20:10',100,1,30,1,1),(19,NULL,'2016-01-05 09:03:56',0,1,1,1,1),(20,NULL,'2016-01-05 09:15:23',0,1,2,1,1),(21,NULL,'2016-01-05 09:19:26',0,1,3,1,1),(22,NULL,'2016-01-05 09:21:35',0,1,4,1,1),(23,NULL,'2016-01-05 09:25:43',0,1,5,1,1),(24,NULL,'2016-01-06 14:50:01',0,1,6,1,1),(25,NULL,'2016-01-06 15:16:57',0,1,7,1,1),(26,NULL,'2016-01-06 15:21:42',0,1,8,1,1),(27,NULL,'2016-01-06 15:40:14',0,1,9,1,1),(28,NULL,'2016-01-06 15:41:16',0,1,10,1,1),(29,NULL,'2016-01-06 16:52:27',0,1,11,1,1),(30,NULL,'2016-01-06 16:54:24',0,1,12,1,1),(31,NULL,'2016-01-07 16:27:37',0,1,13,1,1),(32,NULL,'2016-01-07 16:32:03',0,1,14,1,1),(33,NULL,'2016-01-07 16:40:52',0,1,15,2,1),(34,NULL,'2016-01-07 16:44:56',0,1,16,2,1),(35,NULL,'2016-01-07 16:47:20',0,1,17,2,1),(36,NULL,'2016-01-11 11:48:45',0,1,18,2,1),(37,NULL,'2016-01-22 15:45:55',0,1,21,1,1),(38,NULL,'2016-01-22 15:46:06',0,1,22,1,1),(39,'2016-01-28 09:54:46','2016-01-28 09:54:46',75,1,23,1,1),(40,'2016-01-28 10:20:27','2016-01-28 10:20:27',75,1,24,1,1),(41,'2016-01-28 10:21:27','2016-01-28 10:21:27',75,1,25,1,1),(42,'2016-01-28 10:36:29','2016-01-28 10:36:29',75,1,26,1,1),(43,'2016-02-24 08:30:00','2016-02-25 15:20:10',100,1,27,1,1),(44,'2016-02-24 08:30:00','2016-02-25 15:20:10',100,1,28,1,1),(45,'2016-02-24 08:30:00','2016-02-25 15:20:10',100,1,29,1,1),(46,'2016-02-24 08:30:00','2016-02-25 15:20:10',100,1,30,1,1),(47,'2016-02-24 08:30:00','2016-02-25 15:20:10',100,1,31,1,1),(48,'2016-02-24 08:30:00','2016-02-25 15:20:10',100,1,32,1,1),(49,'2016-02-24 08:30:00','2016-02-25 15:20:10',100,1,33,1,1),(50,'2016-01-28 16:52:29','2016-01-28 16:52:29',75,1,34,1,1),(51,'2016-01-28 16:55:49','2016-01-28 16:55:49',75,1,35,1,1),(52,'2016-01-28 16:58:46','2016-01-28 16:58:46',75,1,36,1,1),(53,'2016-01-28 17:01:45','2016-01-28 17:01:45',75,1,37,1,1),(54,'2016-01-28 17:02:32','2016-01-28 17:02:32',75,1,38,1,1),(55,NULL,'2016-01-28 17:35:46',0,1,39,1,1),(56,NULL,'2016-01-28 17:35:46',0,1,40,1,1),(57,'2016-02-24 08:30:00','2016-02-25 15:20:10',100,1,41,1,1),(58,NULL,'2016-01-29 15:23:49',0,1,42,1,1),(59,NULL,'2016-01-29 15:23:49',0,1,43,1,1),(60,'2016-01-29 15:23:57','2016-01-29 15:23:57',75,1,44,1,1),(61,NULL,'2016-06-29 15:28:19',0,1,71,2,1),(62,NULL,'2016-06-29 15:47:17',0,1,72,2,1),(63,NULL,'2016-06-29 15:48:19',0,1,73,2,1),(64,NULL,'2016-06-29 15:49:14',0,1,74,2,1),(65,NULL,'2016-06-29 15:49:34',0,1,75,2,1),(66,NULL,'2016-06-29 15:51:17',0,1,76,2,1),(67,NULL,'2016-06-29 16:06:55',0,1,77,2,1),(68,NULL,'2016-06-29 16:11:07',0,1,78,2,1),(69,NULL,'2016-06-29 16:19:20',0,1,79,2,1),(70,NULL,'2016-07-04 16:24:00',0,1,80,2,1),(71,NULL,'2016-07-13 15:01:27',0,1,81,2,1),(72,NULL,'2016-07-13 15:10:44',0,1,82,2,1),(73,NULL,'2016-07-13 15:13:35',0,1,83,2,1),(74,NULL,'2016-07-13 15:24:56',0,1,84,2,1),(75,NULL,'2016-07-13 15:30:48',0,1,85,2,1),(76,NULL,'2016-07-13 15:34:01',0,1,86,2,1),(77,NULL,'2016-07-13 15:37:00',0,1,87,2,1),(78,NULL,'2016-07-13 15:40:29',0,1,88,2,1),(79,NULL,'2016-07-13 15:51:05',0,1,89,2,1),(80,NULL,'2016-07-13 16:07:51',0,1,90,2,1),(81,NULL,'2016-07-13 16:08:22',0,1,91,2,1),(82,NULL,'2016-07-13 16:10:33',0,1,92,2,1),(83,NULL,'2016-07-13 16:22:05',0,1,93,2,1),(84,NULL,'2016-07-13 16:25:19',0,1,94,2,1),(85,NULL,'2016-07-13 16:31:17',0,1,95,2,1),(86,NULL,'2016-07-13 16:34:08',0,1,96,2,1),(87,NULL,'2016-07-13 16:36:45',0,1,97,2,1),(88,NULL,'2016-07-13 16:37:25',0,1,98,2,1),(89,NULL,'2016-07-13 16:43:35',0,1,99,2,1),(90,NULL,'2016-07-13 16:44:13',0,1,100,2,1),(91,NULL,'2016-07-13 16:45:57',0,1,101,2,1),(92,NULL,'2016-07-13 16:48:04',0,1,102,2,1),(93,NULL,'2016-07-13 16:54:56',0,1,103,2,1),(94,NULL,'2016-07-13 16:55:27',0,1,104,2,1),(95,NULL,'2016-07-13 16:55:55',0,1,105,2,1),(96,NULL,'2016-07-14 16:18:58',0,1,106,2,1),(97,NULL,'2016-07-14 16:33:42',0,1,107,2,1),(98,NULL,'2016-07-14 16:40:28',0,1,108,2,1),(99,NULL,'2016-07-14 16:42:18',0,1,109,2,1),(100,NULL,'2016-07-14 16:54:48',0,1,110,2,1),(101,NULL,'2016-07-14 17:11:24',0,1,111,2,1),(102,NULL,'2016-07-14 17:24:06',0,1,112,2,1),(103,NULL,'2016-07-14 17:28:46',0,1,113,2,1),(104,NULL,'2016-07-14 17:30:07',0,1,114,2,1),(105,NULL,'2016-07-14 17:31:37',0,1,115,2,1),(106,NULL,'2016-07-14 17:32:49',0,1,116,2,1),(107,NULL,'2016-07-14 17:35:04',0,1,117,2,1),(108,NULL,'2016-07-14 17:37:54',0,1,118,2,1),(109,NULL,'2016-07-14 17:40:40',0,1,119,2,1),(110,NULL,'2016-07-14 17:50:05',0,1,120,2,1),(111,NULL,'2016-07-14 17:54:39',0,1,121,2,1),(112,NULL,'2016-07-18 15:18:29',0,1,122,2,1),(113,NULL,'2016-07-18 15:21:38',0,1,123,2,1),(114,NULL,'2016-07-18 15:24:32',0,1,124,2,1),(115,NULL,'2016-07-18 15:26:03',0,1,125,2,1),(116,NULL,'2016-07-18 15:31:03',0,1,126,2,1),(117,NULL,'2016-07-18 15:33:50',0,1,127,2,1),(118,NULL,'2016-07-18 15:34:45',0,1,128,2,1),(119,NULL,'2016-07-18 15:35:56',0,1,129,2,1),(120,NULL,'2016-07-18 15:40:43',0,1,130,2,1),(121,NULL,'2016-07-18 15:49:06',0,1,131,2,1),(122,NULL,'2016-07-18 15:59:04',0,1,132,2,1),(123,NULL,'2016-07-18 16:12:53',0,1,133,2,1),(124,NULL,'2016-07-18 16:15:23',0,1,134,2,1),(125,NULL,'2016-07-18 16:18:44',0,1,135,2,1),(126,NULL,'2016-07-18 16:21:19',0,1,136,2,1),(127,NULL,'2016-07-18 16:23:50',0,1,137,2,1),(128,NULL,'2016-07-18 17:39:54',0,1,1002,2,2),(129,NULL,'2016-07-19 10:22:35',0,1,2002,2,3),(130,NULL,'2016-07-19 10:31:30',0,1,138,3,1),(131,NULL,'2016-07-21 15:15:56',0,1,2003,3,3),(132,NULL,'2016-07-21 15:24:03',0,1,139,2,1),(133,NULL,'2016-07-21 15:26:05',0,1,140,2,1),(134,NULL,'2016-07-21 15:27:20',0,1,141,2,1),(135,NULL,'2016-07-21 15:28:45',0,1,142,2,1),(136,NULL,'2016-07-21 15:29:38',0,1,143,2,1),(137,NULL,'2016-07-21 15:29:58',0,1,144,2,1),(138,NULL,'2016-07-21 15:30:13',0,1,145,2,1),(139,NULL,'2016-07-21 15:33:30',0,1,146,2,1),(140,NULL,'2016-07-21 15:39:20',0,1,147,2,1),(141,NULL,'2016-07-21 15:39:59',0,1,148,2,1),(142,NULL,'2016-07-21 15:41:28',0,1,149,2,1),(143,NULL,'2016-07-21 15:49:12',0,1,150,2,1),(144,NULL,'2016-07-21 15:55:07',0,1,151,2,1),(145,NULL,'2016-07-21 15:57:38',0,1,152,2,1),(146,NULL,'2016-07-21 15:58:31',0,1,153,2,1),(147,NULL,'2016-07-21 15:59:00',0,1,154,2,1),(148,NULL,'2016-07-21 16:00:59',0,1,155,2,1),(149,NULL,'2016-07-21 16:04:16',0,1,156,2,1),(150,NULL,'2016-07-21 16:04:51',0,1,157,2,1),(151,NULL,'2016-07-21 16:05:25',0,1,158,2,1),(152,NULL,'2016-07-21 16:07:45',0,1,159,2,1),(153,NULL,'2016-07-21 16:09:59',0,1,160,2,1),(154,NULL,'2016-07-21 16:10:40',0,1,161,2,1),(155,NULL,'2016-07-21 16:16:54',0,1,162,2,1),(156,NULL,'2016-07-21 16:20:11',0,1,163,2,1),(157,NULL,'2016-07-21 16:24:34',0,1,164,2,1),(158,NULL,'2016-07-21 16:31:26',0,1,165,2,1),(159,NULL,'2016-07-21 16:33:10',0,1,166,2,1),(160,NULL,'2016-07-21 16:33:44',0,1,167,2,1),(161,NULL,'2016-07-21 16:38:46',0,1,168,2,1),(162,NULL,'2016-07-21 16:39:43',0,1,169,2,1),(163,NULL,'2016-07-21 16:41:14',0,1,170,2,1),(164,NULL,'2016-07-21 16:43:02',0,1,171,2,1),(165,NULL,'2016-07-21 16:43:59',0,1,172,2,1),(166,NULL,'2016-07-21 16:45:30',0,1,173,2,1),(167,NULL,'2016-07-21 16:45:51',0,1,174,2,1),(168,NULL,'2016-07-21 16:48:47',0,1,175,2,1),(169,NULL,'2016-07-21 16:52:40',0,1,176,2,1),(170,NULL,'2016-07-21 16:56:41',0,1,177,2,1),(171,NULL,'2016-07-21 16:56:59',0,1,178,2,1),(172,NULL,'2016-07-21 16:59:51',0,1,179,2,1),(173,NULL,'2016-07-21 17:00:57',0,1,180,2,1),(174,NULL,'2016-07-21 17:01:37',0,1,181,2,1),(175,NULL,'2016-07-21 17:03:07',0,1,182,2,1),(176,NULL,'2016-07-27 16:24:42',0,1,183,2,1),(177,NULL,'2016-07-27 16:25:55',0,1,184,2,1),(178,NULL,'2016-07-27 16:26:47',0,1,185,2,1),(179,NULL,'2016-07-27 16:27:13',0,1,186,2,1),(180,NULL,'2016-07-27 16:28:01',0,1,187,2,1),(181,NULL,'2016-07-27 16:29:55',0,1,188,2,1),(182,NULL,'2016-07-27 16:31:18',0,1,189,2,1),(183,NULL,'2016-07-27 16:33:04',0,1,190,2,1),(184,NULL,'2016-07-27 16:34:05',0,1,191,2,1),(185,NULL,'2016-07-27 16:38:13',0,1,192,2,1),(186,NULL,'2016-07-27 17:15:29',0,1,193,2,1),(187,NULL,'2016-07-27 17:17:04',0,1,194,2,1),(188,NULL,'2016-07-27 17:25:02',0,1,195,2,1),(189,NULL,'2016-07-27 17:28:09',0,1,196,2,1),(190,NULL,'2016-07-27 17:30:29',0,1,197,2,1),(191,NULL,'2016-07-27 17:31:08',0,1,198,2,1),(192,NULL,'2016-07-27 17:31:53',0,1,199,2,1),(193,NULL,'2016-07-27 17:37:33',0,1,200,2,1),(194,NULL,'2016-07-27 17:39:34',0,1,201,2,1),(195,NULL,'2016-07-28 15:26:08',0,1,202,2,1),(196,NULL,'2016-07-28 15:26:36',0,1,203,2,1),(197,NULL,'2016-07-28 15:27:56',0,1,204,2,1),(198,NULL,'2016-07-28 15:46:27',0,1,205,2,1),(199,NULL,'2016-07-28 16:14:22',0,1,206,2,1),(200,NULL,'2016-07-28 16:35:57',0,1,207,2,1),(201,NULL,'2016-07-28 16:38:08',0,1,208,2,1),(202,NULL,'2016-07-29 15:29:52',0,1,209,2,1),(203,NULL,'2016-07-29 15:32:32',0,1,210,2,1),(204,NULL,'2016-07-29 15:35:13',0,1,211,2,1),(205,NULL,'2016-07-29 15:42:10',0,1,212,2,1),(206,NULL,'2016-07-29 15:44:35',0,1,213,2,1),(207,NULL,'2016-07-29 15:47:02',0,1,214,2,1),(208,NULL,'2016-07-29 15:51:26',0,1,215,2,1),(209,NULL,'2016-07-29 16:01:47',0,1,216,2,1),(210,NULL,'2016-07-29 16:04:36',0,1,217,2,1),(211,NULL,'2016-07-29 16:50:43',0,1,218,2,1),(212,NULL,'2016-07-29 16:54:41',0,1,219,2,1),(213,NULL,'2016-08-03 14:51:46',0,1,220,2,1),(214,NULL,'2016-08-03 14:52:14',0,1,221,2,1),(215,NULL,'2016-08-03 14:53:48',0,1,222,2,1),(216,NULL,'2016-08-03 14:58:01',0,1,223,2,1),(217,NULL,'2016-08-03 15:16:15',0,1,224,2,1),(218,NULL,'2016-08-03 15:18:16',0,1,225,2,1),(219,NULL,'2016-08-03 15:23:09',0,1,226,2,1),(220,NULL,'2016-08-04 14:54:29',0,1,227,2,1),(221,NULL,'2016-08-04 14:54:41',0,1,228,2,1),(222,NULL,'2016-08-04 15:58:52',0,1,229,2,1),(223,NULL,'2016-08-04 16:04:42',0,1,230,2,1),(224,NULL,'2016-08-04 16:06:06',0,1,231,2,1),(225,NULL,'2016-08-11 15:22:28',0,1,232,2,1),(226,NULL,'2016-08-11 15:27:06',0,1,233,2,1),(227,NULL,'2016-08-11 15:36:33',0,1,0,2,1),(228,NULL,'2016-08-11 15:46:39',0,1,232,2,1),(229,NULL,'2016-08-11 16:10:57',0,1,232,2,1),(230,NULL,'2016-08-11 16:12:24',0,1,479,2,1),(231,NULL,'2016-09-08 16:56:27',0,1,254,2,1),(232,NULL,'2016-08-12 10:22:42',0,1,45,2,1),(233,NULL,'2016-08-18 17:45:47',0,1,100,2,1),(234,NULL,'2016-08-18 17:50:52',0,1,100,2,1),(235,NULL,'2016-08-19 15:10:16',0,1,100,2,1),(236,NULL,'2016-08-19 15:10:44',0,1,100,2,1),(237,NULL,'2016-08-19 15:12:21',0,1,100,2,1),(238,NULL,'2016-08-19 15:15:36',0,1,100,2,1),(239,NULL,'2016-08-19 15:20:12',0,1,10,2,1),(240,NULL,'2016-09-08 16:45:36',0,1,250,2,1),(241,NULL,'2016-08-19 15:23:48',0,1,1,2,1),(242,NULL,'2016-08-19 15:25:02',0,1,1,2,1),(243,NULL,'2016-08-19 15:28:55',0,1,1,2,1),(244,NULL,'2016-08-19 15:33:33',0,1,1,2,1),(245,NULL,'2016-08-19 15:41:45',0,1,20,2,1),(247,NULL,'2016-08-19 16:13:13',0,1,30,2,1),(248,NULL,'2016-08-19 17:00:17',0,1,30,2,1),(249,NULL,'2016-08-19 17:02:25',0,1,1000,2,1),(262,NULL,'2016-08-23 15:03:49',0,1,234,2,1),(263,NULL,'2016-08-23 16:33:12',0,1,234,2,1),(264,NULL,'2016-08-23 16:38:57',0,1,234,2,1),(265,NULL,'2016-08-23 16:41:37',0,1,234,2,1),(266,NULL,'2016-08-23 16:43:18',0,1,234,2,1),(267,NULL,'2016-08-23 16:43:58',0,1,234,2,1),(268,NULL,'2016-08-24 15:20:25',0,1,234,2,1),(269,NULL,'2016-08-24 15:23:06',0,1,234,2,1),(270,NULL,'2016-08-24 15:32:05',0,1,234,2,1),(271,NULL,'2016-08-24 15:35:38',0,1,234,2,1),(272,NULL,'2016-08-29 15:26:55',0,1,1003,3,2),(273,NULL,'2016-08-24 15:45:22',0,1,1003,3,2),(274,NULL,'2016-08-24 15:45:46',0,1,1003,3,2),(275,NULL,'2016-08-24 15:47:52',0,1,1004,3,2),(276,NULL,'2016-08-24 15:48:19',0,1,234,3,1),(277,NULL,'2016-08-24 15:48:24',0,1,234,3,1),(278,NULL,'2016-08-24 15:52:26',0,1,234,2,1),(279,NULL,'2016-08-24 16:34:05',0,1,235,2,1),(280,NULL,'2016-08-29 15:26:41',0,1,237,2,1),(281,NULL,'2016-08-29 16:01:39',0,1,239,2,1),(282,NULL,'2016-08-29 16:01:53',0,1,1005,2,2),(283,NULL,'2016-08-29 16:24:54',0,1,2004,2,3),(284,NULL,'2016-08-29 16:27:57',0,1,1006,2,2),(285,NULL,'2016-08-29 16:29:10',0,1,240,1,1),(286,NULL,'2016-08-29 16:39:33',0,1,241,2,1),(287,NULL,'2016-08-31 15:47:09',0,1,242,2,1),(288,NULL,'2016-08-31 15:52:12',0,1,243,2,1),(289,NULL,'2016-08-31 16:19:44',0,1,244,2,1),(290,NULL,'2016-08-31 16:23:53',0,1,245,2,1),(291,NULL,'2016-09-01 17:23:04',0,1,246,2,1),(292,NULL,'2016-09-01 17:25:37',0,1,247,2,1),(293,NULL,'2016-09-08 16:26:37',0,1,248,2,1),(294,NULL,'2016-09-08 16:27:09',0,1,249,2,1),(295,NULL,'2016-09-08 16:46:29',0,1,251,2,1),(296,NULL,'2016-09-08 16:48:25',0,1,252,2,1),(297,NULL,'2016-09-08 16:54:04',0,1,253,2,1),(298,NULL,'2016-09-08 16:57:47',0,1,255,2,1),(299,NULL,'2016-09-08 16:59:12',0,1,256,2,1),(300,NULL,'2016-09-08 17:01:40',0,1,257,2,1),(301,NULL,'2016-09-08 17:02:02',0,1,258,2,1),(302,NULL,'2016-09-08 17:02:30',0,1,259,2,1),(303,NULL,'2016-09-08 17:03:40',0,1,260,2,1),(304,NULL,'2016-09-08 17:05:52',0,1,261,2,1),(305,NULL,'2016-09-08 17:06:10',0,1,262,2,1),(306,NULL,'2016-09-08 17:17:30',0,1,263,2,1),(307,NULL,'2016-09-08 17:18:21',0,1,264,2,1),(308,NULL,'2016-09-08 17:19:34',0,1,265,2,1),(309,NULL,'2016-09-08 17:24:52',0,1,266,2,1),(310,NULL,'2016-09-08 17:27:56',0,1,267,2,1),(311,NULL,'2016-09-08 17:29:42',0,1,268,2,1),(312,NULL,'2016-09-08 17:31:16',0,1,269,2,1),(313,NULL,'2016-09-08 17:33:58',0,1,270,2,1),(314,NULL,'2016-09-08 17:34:38',0,1,271,2,1),(315,NULL,'2016-09-08 17:34:49',0,1,272,2,1),(316,NULL,'2016-09-08 17:35:12',0,1,273,2,1),(317,NULL,'2016-09-08 17:36:26',0,1,274,2,1),(318,NULL,'2016-09-08 17:37:18',0,1,275,2,1),(319,NULL,'2016-09-08 17:39:01',0,1,276,2,1),(323,NULL,'2016-09-09 17:38:16',0,1,277,2,1),(325,NULL,'2016-09-09 17:38:50',0,1,278,2,1),(326,NULL,'2016-09-16 15:10:55',0,1,1007,3,2),(329,NULL,'2016-09-16 15:13:34',0,1,1008,3,2),(334,NULL,'2016-09-21 15:39:27',0,1,279,2,1),(335,NULL,'2016-09-21 15:57:25',0,1,280,2,1),(337,NULL,'2016-09-21 15:59:02',0,1,281,2,1),(338,NULL,'2016-09-21 16:00:41',0,1,282,2,1),(339,NULL,'2016-09-21 16:05:04',0,1,283,2,1),(340,NULL,'2016-09-21 16:08:11',0,1,284,2,1),(341,NULL,'2016-09-21 16:09:06',0,1,285,2,1);
/*!40000 ALTER TABLE `tropa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tropa_corral`
--

DROP TABLE IF EXISTS `tropa_corral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tropa_corral` (
  `tropa_id_tropa` int(11) NOT NULL,
  `corral_id_corral` int(11) NOT NULL,
  `ocupacion` int(11) DEFAULT NULL,
  `fecha_egreso` datetime DEFAULT NULL,
  PRIMARY KEY (`tropa_id_tropa`,`corral_id_corral`),
  KEY `fk_tropa_has_corral_corral1_idx` (`corral_id_corral`),
  KEY `fk_tropa_has_corral_tropa1_idx` (`tropa_id_tropa`),
  CONSTRAINT `fk_tropa_has_corral_corral1` FOREIGN KEY (`corral_id_corral`) REFERENCES `corral` (`id_corral`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tropa_has_corral_tropa1` FOREIGN KEY (`tropa_id_tropa`) REFERENCES `tropa` (`id_tropa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tropa_corral`
--

LOCK TABLES `tropa_corral` WRITE;
/*!40000 ALTER TABLE `tropa_corral` DISABLE KEYS */;
INSERT INTO `tropa_corral` VALUES (7,1,20,'2014-12-01 00:00:00'),(8,2,20,'2015-12-01 00:00:00'),(10,2,40,'2010-12-01 15:20:10'),(10,3,35,'2010-12-01 15:20:10'),(10,4,25,'2010-12-01 15:20:10'),(11,1,20,'2010-12-02 15:20:10'),(11,3,35,'2010-12-02 15:20:10'),(11,4,45,'2010-12-02 15:20:10'),(60,1,30,'2016-01-29 15:23:57'),(60,4,45,'2016-01-29 15:23:57');
/*!40000 ALTER TABLE `tropa_corral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tropa_reservada`
--

DROP TABLE IF EXISTS `tropa_reservada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tropa_reservada` (
  `id_tropa_reservada` int(11) NOT NULL AUTO_INCREMENT,
  `desde` int(11) NOT NULL,
  `hasta` int(11) NOT NULL,
  `anio` int(11) NOT NULL,
  `procedencia_id_procedencia` int(11) NOT NULL,
  `ultima_tropa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_tropa_reservada`),
  KEY `fk_tropa_reservada_procedencia_idx` (`procedencia_id_procedencia`),
  CONSTRAINT `fk_tropa_reservada_procedencia` FOREIGN KEY (`procedencia_id_procedencia`) REFERENCES `procedencia` (`id_procedencia`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tropa_reservada`
--

LOCK TABLES `tropa_reservada` WRITE;
/*!40000 ALTER TABLE `tropa_reservada` DISABLE KEYS */;
INSERT INTO `tropa_reservada` VALUES (1,1,1000,2015,1,35),(2,1,1000,2016,1,285),(3,1001,2000,2015,2,1001),(4,1001,2000,2016,2,1008),(5,2001,5000,2015,3,2001),(6,2001,5000,2016,3,2007);
/*!40000 ALTER TABLE `tropa_reservada` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-09-22 14:25:57
