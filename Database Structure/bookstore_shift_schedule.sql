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
-- Table structure for table `shift_schedule`
--

DROP TABLE IF EXISTS `shift_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shift_schedule` (
  `Shift_number` char(4) NOT NULL,
  `ssn` char(10) NOT NULL,
  `position` varchar(20) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  KEY `shift_schedule_Shift_number_fk` (`Shift_number`),
  KEY `shift_schedule_ssn_fk` (`ssn`),
  CONSTRAINT `shift_schedule_Shift_number_fk` FOREIGN KEY (`Shift_number`) REFERENCES `shift` (`Shift_number`),
  CONSTRAINT `shift_schedule_ssn_fk` FOREIGN KEY (`ssn`) REFERENCES `employee` (`ssn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shift_schedule`
--

LOCK TABLES `shift_schedule` WRITE;
/*!40000 ALTER TABLE `shift_schedule` DISABLE KEYS */;
INSERT INTO `shift_schedule` VALUES ('1814','0034176481','manager','2022-01-10 14:00:00'),('1814','7280426124','recepcionist','2022-03-21 14:00:00'),('3571','6478002207','storage','2022-02-14 13:00:00'),('3719','4611455254','director','2022-03-19 15:00:00'),('6959','9636105673','recepcionist','2022-04-12 12:00:00'),('3571','4665695482','recepcionist','2022-03-05 12:00:00'),('3719','3084954601','storage','2022-04-22 13:00:00'),('3719','6011351272','manager','2022-01-12 12:00:00');
/*!40000 ALTER TABLE `shift_schedule` ENABLE KEYS */;
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
