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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `ISBN` varchar(13) NOT NULL,
  `Price` varchar(5) DEFAULT NULL,
  `Publisher` varchar(25) DEFAULT NULL,
  `Customer_rating` char(3) DEFAULT NULL,
  `Title` varchar(100) DEFAULT NULL,
  `Pages` varchar(15) DEFAULT NULL,
  `Publication_date` date DEFAULT NULL,
  `Sales_rank` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('0251569715050','38','ThomsonReuters','95','La Galatea','662','1996-05-11','65'),('0404864414086','67','ThomsonReuters','97','It','811','1975-04-02','03'),('2690871331105','73','Wolters Kluwer','89','Rinconete & Cortadillo','485','1980-10-20','08'),('3371308558926','51','Pearson','82','Othello','297','1984-06-28','08'),('3378508832773','20','Reed Elsevier','79','Romeo & Juliet','705','1987-02-27','18'),('3753721886312','34','Pearson','88','the Diary of a Young Girl','469','1977-02-24','12'),('3845276513698','69','Wolters Kluwer','100','Don Quixote','206','1974-04-10','77'),('3912645798383','54','Pearson','80','Fundamentals of Database System','902','2016-02-02','02'),('4838762722419','52','Pearson','87','Utilitarianism','769','1993-04-22','22'),('5135475157122','21','Reed Elsevier','81','The Tempest','403','1988-07-05','34'),('5846238775543','24','Wolters Kluwer','84','Julius Caesar','231','1983-09-03','14'),('6755247816214','44','Pearson','84','Hamlet','235','1976-02-21','20'),('7095351596686','27','Pearson','91','The Wealth of Nations','610','1965-07-09','72'),('8403523828150','22','Pearson','93','The Green Mile','643','1994-02-05','10'),('8777552024353','32','ThomsonReuters','84','Rights of Man','497','1989-05-03','26'),('9081559271072','31','Reed Elsevier','88','Common Sense','879','1993-11-11','09'),('9456587996137','46','Pearson','86','The Shinning','168','1987-12-09','30');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
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
