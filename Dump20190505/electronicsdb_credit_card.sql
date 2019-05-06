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
-- Table structure for table `credit_card`
--

DROP TABLE IF EXISTS `credit_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `credit_card` (
  `customer` int(11) NOT NULL,
  `option_number` int(11) NOT NULL,
  `name_on_card` varchar(20) NOT NULL,
  `cc_no` int(12) NOT NULL,
  `security_code` varchar(3) NOT NULL,
  `billing_street` varchar(30) NOT NULL,
  `billing_street2` varchar(30) NOT NULL,
  `billing_city` varchar(30) NOT NULL,
  `billing_state` varchar(2) NOT NULL,
  `billing_zip` int(5) NOT NULL,
  PRIMARY KEY (`customer`,`option_number`),
  CONSTRAINT `credit_card_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `online_customer` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_card`
--

LOCK TABLES `credit_card` WRITE;
/*!40000 ALTER TABLE `credit_card` DISABLE KEYS */;
INSERT INTO `credit_card` VALUES (1,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(10,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(11,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(13,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(14,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(15,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(16,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(17,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(18,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(19,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(20,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(21,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(22,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(23,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(24,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(25,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210),(1000,1,'MARTIN RICHARDSON',123456789,'234','el arbol','BEHOLD','MyTown','CA',90210);
/*!40000 ALTER TABLE `credit_card` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05 23:41:40
