-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gebs
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `criminal`
--

DROP TABLE IF EXISTS `criminal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `criminal` (
  `idcriminal` int NOT NULL,
  `age_criminal` int DEFAULT NULL,
  `eyes_criminal` varchar(45) DEFAULT NULL,
  `name_criminal` varchar(45) DEFAULT NULL,
  `height_criminal` double DEFAULT NULL,
  `weight_criminal` double DEFAULT NULL,
  `image_criminal` blob,
  `race_criminal` varchar(45) DEFAULT NULL,
  `gender_criminal` varchar(45) DEFAULT NULL,
  `scars_criminal` varchar(45) DEFAULT NULL,
  `hair_criminal` varchar(45) DEFAULT NULL,
  `admin_idAdmin` int NOT NULL,
  `guest_idguest` int NOT NULL,
  PRIMARY KEY (`idcriminal`),
  KEY `fk_criminal_admin1_idx` (`admin_idAdmin`),
  KEY `fk_criminal_guest1_idx` (`guest_idguest`),
  CONSTRAINT `fk_criminal_admin1` FOREIGN KEY (`admin_idAdmin`) REFERENCES `admin` (`idAdmin`),
  CONSTRAINT `fk_criminal_guest1` FOREIGN KEY (`guest_idguest`) REFERENCES `guest` (`idguest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `criminal`
--

LOCK TABLES `criminal` WRITE;
/*!40000 ALTER TABLE `criminal` DISABLE KEYS */;
INSERT INTO `criminal` VALUES (1,56,'brown','hanna',168,58,NULL,NULL,'F',NULL,NULL,1,1);
/*!40000 ALTER TABLE `criminal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19 12:41:45
