-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: cinematografie
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
-- Table structure for table `filme`
--

DROP TABLE IF EXISTS `filme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filme` (
  `idfilme` bigint unsigned NOT NULL AUTO_INCREMENT,
  `denumire` varchar(45) DEFAULT NULL,
  `tematica` varchar(45) DEFAULT NULL,
  `datalansarii` varchar(45) DEFAULT NULL,
  `actorprincipal` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idfilme`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filme`
--

LOCK TABLES `filme` WRITE;
/*!40000 ALTER TABLE `filme` DISABLE KEYS */;
INSERT INTO `filme` VALUES (5,'','','',''),(10,'hahah','horror','iunie',NULL),(11,'Me before you','Romantic','2015','null'),(13,'Titanic','Romantic','2000','Leo DiCaprio');
/*!40000 ALTER TABLE `filme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producatori`
--

DROP TABLE IF EXISTS `producatori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producatori` (
  `idproducatori` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nume` varchar(45) DEFAULT NULL,
  `prenume` varchar(45) DEFAULT NULL,
  `buget` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idproducatori`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producatori`
--

LOCK TABLES `producatori` WRITE;
/*!40000 ALTER TABLE `producatori` DISABLE KEYS */;
INSERT INTO `producatori` VALUES (1,'Nolan','Christopher','null'),(2,'Nolan','Christopher','100000000'),(3,'Gerwig','Greta','128000000');
/*!40000 ALTER TABLE `producatori` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productie`
--

DROP TABLE IF EXISTS `productie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productie` (
  `idproductie` int NOT NULL AUTO_INCREMENT,
  `idfilme` bigint unsigned DEFAULT NULL,
  `idproducatori` bigint unsigned DEFAULT NULL,
  `regizor` varchar(45) DEFAULT NULL,
  `locatie` varchar(45) DEFAULT NULL,
  `oredefilmare` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idproductie`),
  KEY `fk_productie_1_idx` (`idfilme`),
  KEY `fk_productie_2_idx` (`idproducatori`),
  CONSTRAINT `fk_productie_1` FOREIGN KEY (`idfilme`) REFERENCES `filme` (`idfilme`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_productie_2` FOREIGN KEY (`idproducatori`) REFERENCES `producatori` (`idproducatori`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productie`
--

LOCK TABLES `productie` WRITE;
/*!40000 ALTER TABLE `productie` DISABLE KEYS */;
INSERT INTO `productie` VALUES (8,5,1,'Ellen Pompeo','Italia','256999'),(9,5,1,'Ellen Pompeo','Italia','256999'),(10,5,1,'','','');
/*!40000 ALTER TABLE `productie` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-29 10:29:06
