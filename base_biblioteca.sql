-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: base_biblioteca
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `TABLACATEGORIAS`
--

DROP TABLE IF EXISTS `TABLACATEGORIAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TABLACATEGORIAS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `CATEGORIA` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CATEGORIA` (`CATEGORIA`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TABLACATEGORIAS`
--

LOCK TABLES `TABLACATEGORIAS` WRITE;
/*!40000 ALTER TABLE `TABLACATEGORIAS` DISABLE KEYS */;
INSERT INTO `TABLACATEGORIAS` VALUES (1,'ASDASF'),(14,'holasi'),(2,'la vaca lola'),(24,'popopopopo'),(11,'popotito'),(8,'que'),(3,'super vaca lola');
/*!40000 ALTER TABLE `TABLACATEGORIAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TABLACUOTAS`
--

DROP TABLE IF EXISTS `TABLACUOTAS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TABLACUOTAS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) NOT NULL,
  `FECHA` date NOT NULL,
  `MONTO` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TABLACUOTAS`
--

LOCK TABLES `TABLACUOTAS` WRITE;
/*!40000 ALTER TABLE `TABLACUOTAS` DISABLE KEYS */;
INSERT INTO `TABLACUOTAS` VALUES (1,'TOMAS','2024-08-07',2345.00),(2,'tomasas','2024-08-22',500.00),(7,'LUCAS','2024-10-09',210.00),(8,'LALILO','2024-10-09',449.00);
/*!40000 ALTER TABLE `TABLACUOTAS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TABLAGASTOS`
--

DROP TABLE IF EXISTS `TABLAGASTOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TABLAGASTOS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `MOTIVO` varchar(100) NOT NULL,
  `MONTO` decimal(10,2) NOT NULL,
  `OBSERVACIONES` text,
  `FECHA` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TABLAGASTOS`
--

LOCK TABLES `TABLAGASTOS` WRITE;
/*!40000 ALTER TABLE `TABLAGASTOS` DISABLE KEYS */;
INSERT INTO `TABLAGASTOS` VALUES (4,'Alquiler',60.02,'NUEVO','2024-10-09'),(7,'Alquiler',40.01,'LA CASA','2024-10-09');
/*!40000 ALTER TABLE `TABLAGASTOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TABLAINGRESOS`
--

DROP TABLE IF EXISTS `TABLAINGRESOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TABLAINGRESOS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `MOTIVO` varchar(255) NOT NULL,
  `MONTO` decimal(18,2) NOT NULL,
  `OBSERVACIONES` text,
  `FECHA` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TABLAINGRESOS`
--

LOCK TABLES `TABLAINGRESOS` WRITE;
/*!40000 ALTER TABLE `TABLAINGRESOS` DISABLE KEYS */;
INSERT INTO `TABLAINGRESOS` VALUES (1,'Impuestos',200.00,'ERQET','2024-08-07'),(3,'Impuestos',90.40,'SOS','2024-10-09'),(7,'Impuestos',500.00,'RTRTYRT','2024-10-14'),(9,'Otros',20.06,'YUYO','2024-10-09');
/*!40000 ALTER TABLE `TABLAINGRESOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TABLAINVENTARIOS`
--

DROP TABLE IF EXISTS `TABLAINVENTARIOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TABLAINVENTARIOS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(255) NOT NULL,
  `CODIGO` varchar(50) NOT NULL,
  `CATEGORIA` varchar(255) NOT NULL,
  `UBICACION` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `CODIGO` (`CODIGO`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TABLAINVENTARIOS`
--

LOCK TABLES `TABLAINVENTARIOS` WRITE;
/*!40000 ALTER TABLE `TABLAINVENTARIOS` DISABLE KEYS */;
INSERT INTO `TABLAINVENTARIOS` VALUES (3,'cenicienta 2','12345','fantasía','gjei24'),(8,'yuio','6866','ukkl','doelwñ');
/*!40000 ALTER TABLE `TABLAINVENTARIOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TABLARETIROS`
--

DROP TABLE IF EXISTS `TABLARETIROS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TABLARETIROS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `FECHA` date NOT NULL,
  `CODIGO` varchar(10) NOT NULL,
  `LIBRO` varchar(150) NOT NULL,
  `NOMBRE` varchar(150) NOT NULL,
  `TELEFONO` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TABLARETIROS`
--

LOCK TABLES `TABLARETIROS` WRITE;
/*!40000 ALTER TABLE `TABLARETIROS` DISABLE KEYS */;
INSERT INTO `TABLARETIROS` VALUES (3,'2024-09-23','12345','cenicienta 2','Tomas Paz','1121718125'),(9,'2024-10-09','12345','cenicienta 2','lucas','rosas 234');
/*!40000 ALTER TABLE `TABLARETIROS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TABLASOCIOS`
--

DROP TABLE IF EXISTS `TABLASOCIOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `TABLASOCIOS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(255) NOT NULL,
  `DNI` varchar(20) NOT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Telefono` varchar(20) DEFAULT NULL,
  `Correo` varchar(100) DEFAULT NULL,
  `Fecha` date NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `DNI` (`DNI`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TABLASOCIOS`
--

LOCK TABLES `TABLASOCIOS` WRITE;
/*!40000 ALTER TABLE `TABLASOCIOS` DISABLE KEYS */;
INSERT INTO `TABLASOCIOS` VALUES (4,'principiyo','22988123','1133445566','terrarozzza 429','principiyo@gmail.com','2024-09-11'),(5,'lucas','99333333','2244556688','rosas 234','lucas@gmail.com','2024-03-11'),(8,'José','56989450','47283919292','leído 123','jose@gmail.com','2024-09-21'),(12,'prueba 2.0','44345677','calle 8','482857292928','Tomaspaz777@gmail.com','2024-09-23'),(14,'TOMAS','44303720','TERRAROZA 429','1521718125','TOMASPAZ787@GMAIL.COM','2024-09-23'),(18,'lalilo','44555993','cama 345','1144557788','lalilo@gmail.com','2024-09-22'),(19,'Mauro','33590246','micasadds 123','22893220022','mauro@gmail.com','2024-09-23'),(21,'SESDF','234234523453','SDGF 123','122445653244','','2024-10-09');
/*!40000 ALTER TABLE `TABLASOCIOS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-09 12:58:59
