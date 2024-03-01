-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: firma
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `angajati`
--

DROP TABLE IF EXISTS `angajati`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `angajati` (
  `idangajat` bigint NOT NULL AUTO_INCREMENT,
  `nume` varchar(45) DEFAULT NULL,
  `prenume` varchar(45) DEFAULT NULL,
  `adresa` varchar(45) DEFAULT NULL,
  `varsta` int DEFAULT NULL,
  `cnp` varchar(45) DEFAULT NULL,
  `salariu` int DEFAULT NULL,
  PRIMARY KEY (`idangajat`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `angajati`
--

LOCK TABLES `angajati` WRITE;
/*!40000 ALTER TABLE `angajati` DISABLE KEYS */;
INSERT INTO `angajati` VALUES (7,'Gigel','Daniel','Ialomita',45,'220149',5900),(12,'Popescu','Ion','Targoviste',25,'44001244245',8500),(13,'Dimitrie','Leotescu','Bucuresti',46,'410531859385',5050),(14,'Vasile','Voicu','Iasi',48,'00990124420543',2500),(15,'Chindea','Eduard','',21,'0512421590530034',1100);
/*!40000 ALTER TABLE `angajati` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `centralizare`
--

DROP TABLE IF EXISTS `centralizare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `centralizare` (
  `idcentralizare` bigint NOT NULL AUTO_INCREMENT,
  `idangajat` bigint DEFAULT NULL,
  `idreview` bigint DEFAULT NULL,
  `datatrimis` date DEFAULT NULL,
  `seen` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcentralizare`),
  KEY `fk_angajat_1_idx` (`idangajat`),
  KEY `fk_review_2_idx` (`idreview`),
  CONSTRAINT `fk_angajat_1` FOREIGN KEY (`idangajat`) REFERENCES `angajati` (`idangajat`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_review_2` FOREIGN KEY (`idreview`) REFERENCES `reviewuri` (`idreview`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `centralizare`
--

LOCK TABLES `centralizare` WRITE;
/*!40000 ALTER TABLE `centralizare` DISABLE KEYS */;
INSERT INTO `centralizare` VALUES (4,7,7,'2019-06-22','e'),(13,14,14,'2016-05-15','1');
/*!40000 ALTER TABLE `centralizare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviewuri`
--

DROP TABLE IF EXISTS `reviewuri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviewuri` (
  `idreview` bigint NOT NULL AUTO_INCREMENT,
  `rating` int DEFAULT NULL,
  `angajatnume` varchar(45) DEFAULT NULL,
  `angajatprenume` varchar(45) DEFAULT NULL,
  `text` varchar(45) DEFAULT NULL,
  `datacreat` date DEFAULT NULL,
  PRIMARY KEY (`idreview`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviewuri`
--

LOCK TABLES `reviewuri` WRITE;
/*!40000 ALTER TABLE `reviewuri` DISABLE KEYS */;
INSERT INTO `reviewuri` VALUES (7,2,'Chindea','Nicoleta','Am fost hackuiti','2022-04-21'),(8,8,'Dinescu','Serban','A fost frumos filmul','2023-08-29'),(9,7,'Mihai','Stanciulescu','Nu mi-a placut','2022-04-20'),(11,5,'Jackline','Jessica','Destul de interesant','2020-03-14'),(14,9,'Iordan','Mihai','Incredibil proiect','2024-01-13');
/*!40000 ALTER TABLE `reviewuri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'firma'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-01 23:38:20
