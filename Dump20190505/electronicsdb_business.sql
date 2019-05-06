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
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `business` (
  `business_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `balance` decimal(8,2) NOT NULL,
  `payment_due` decimal(8,2) NOT NULL,
  `payment_due_date` date NOT NULL,
  `last_payment_received` decimal(8,2) NOT NULL,
  `last_payment_date` date NOT NULL,
  `street` varchar(30) NOT NULL,
  `street2` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(5) NOT NULL,
  PRIMARY KEY (`business_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES (1,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(10,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(11,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(12,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(13,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(14,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(15,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(16,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(17,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(18,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(19,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(20,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(21,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(22,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(23,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(24,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(25,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123),(2000,'georgs',2000.00,13000.00,'2019-12-12',1240.00,'2018-07-01','111 ac st','non-ya','cityvillee','ms',23123);
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05 23:41:38
