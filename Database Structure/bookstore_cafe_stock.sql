CREATE DATABASE  IF NOT EXISTS `bookstore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bookstore`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `cafe_stock`
--

DROP TABLE IF EXISTS `cafe_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafe_stock` (
  `Item_ID` char(5) NOT NULL,
  `Quantity` varchar(10) DEFAULT NULL,
  `cafeID` char(5) NOT NULL,
  KEY `cafe_stock_Item_ID_fk` (`Item_ID`),
  KEY `cafe_stock_cafeID_fk` (`cafeID`),
  CONSTRAINT `cafe_stock_cafeID_fk` FOREIGN KEY (`cafeID`) REFERENCES `cafe` (`cafeID`),
  CONSTRAINT `cafe_stock_Item_ID_fk` FOREIGN KEY (`Item_ID`) REFERENCES `cafe_item` (`Item_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafe_stock`
--

LOCK TABLES `cafe_stock` WRITE;
/*!40000 ALTER TABLE `cafe_stock` DISABLE KEYS */;
INSERT INTO `cafe_stock` VALUES ('87701','98','13456'),('79980','60','13456'),('75211','30','13456'),('97330','73','13456'),('36450','17','13456'),('87701','36','71707'),('79980','43','71707'),('75211','60','71707'),('97330','67','71707'),('36450','84','71707'),('87701','70','36907'),('79980','91','36907'),('75211','70','36907'),('97330','44','36907'),('36450','95','36907'),('87701','73','45804'),('79980','26','45804'),('75211','47','45804'),('97330','92','45804'),('36450','66','45804'),('87701','33','51804'),('79980','67','51804'),('75211','24','51804'),('97330','82','51804'),('36450','72','51804'),('87701','54','12871'),('79980','91','12871'),('75211','95','12871'),('97330','29','12871'),('36450','37','12871');
/*!40000 ALTER TABLE `cafe_stock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-27 15:24:11
