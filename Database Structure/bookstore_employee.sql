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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `ssn` char(10) NOT NULL,
  `FName` varchar(20) NOT NULL,
  `LName` varchar(20) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Date_of_birth` date DEFAULT NULL,
  `storeID` char(5) NOT NULL,
  `Date_of_hire` date DEFAULT NULL,
  `phoneNumber` char(10) DEFAULT NULL,
  PRIMARY KEY (`ssn`),
  KEY `employee_storeID_fk` (`storeID`),
  CONSTRAINT `employee_storeID_fk` FOREIGN KEY (`storeID`) REFERENCES `store` (`storeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('0034176481','August','Mcarthur','August.Mcarthur@gmail.com','2000-02-14','34782','2021-06-12','2195426114'),('0429218286','Sue','Mcloughlin','Sue.Mcloughlin@gmail.com','1973-12-11','20957','2021-05-18','7942679834'),('2179057248','Courteney','Pearson','Courteney.Pearson@gmail.com','1987-05-21','34782','2020-01-11','6712401532'),('3071506519','Simeon','Wolfe','Simeon.Wolfe@gmail.com','1990-08-15','89152','2020-07-01','1555171795'),('3084954601','Sumayya','Olson','Sumayya.Olson@gmail.com','1992-03-17','51120','2021-11-16','2150410333'),('4428412188','Marcie','Akhtar','Marcie.Akhtar@gmail.com','1969-01-09','20957','2021-02-07','2574691505'),('4611455254','Roxanne','Wright','Roxanne.Wright@gmail.com','1996-06-12','51120','2019-09-08','3411449497'),('4665695482','Kohen','Valenzuela','Kohen.Valenzuela@gmail.com','2000-07-07','89152','2021-10-05','3417933815'),('6011351272','Zander','Hartley','Zander.Hartley@gmail.com','1995-06-20','51120','2019-04-24','5327996443'),('6478002207','Derren','Thatcher','Derren.Thatcher@gmail.com','1987-10-23','89152','2022-12-22','4307326395'),('7280426124','Amal','Murillo','Amal.Murillo@gmail.com','1978-11-03','34782','2021-01-18','9155468523'),('9636105673','Tiarna','Newman','Tiarna.Newman@gmail.com','2001-08-03','20957','2022-07-14','8130980610');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-27 15:24:10
