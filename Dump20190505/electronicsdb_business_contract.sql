-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: electronicsdb
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `business_contract`
--

DROP TABLE IF EXISTS `business_contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `business_contract` (
  `business` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `cont_first_name` varchar(20) NOT NULL,
  `cont_last_name` varchar(20) NOT NULL,
  `cont_phone` int(10) NOT NULL,
  `cont_email` varchar(30) NOT NULL,
  PRIMARY KEY (`business`),
  CONSTRAINT `business_contract_ibfk_1` FOREIGN KEY (`business`) REFERENCES `business` (`business_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_contract`
--

LOCK TABLES `business_contract` WRITE;
/*!40000 ALTER TABLE `business_contract` DISABLE KEYS */;
INSERT INTO `business_contract` VALUES (1,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(10,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(11,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(12,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(13,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(14,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(15,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(16,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(17,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(18,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(19,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(20,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(21,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(22,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(23,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(24,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(25,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com'),(2000,'2018-03-04','2020-03-04','steve','jobs',857749753,'stevenapple@me.com');
/*!40000 ALTER TABLE `business_contract` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05 23:41:41
