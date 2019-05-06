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
-- Table structure for table `shipping_option`
--

DROP TABLE IF EXISTS `shipping_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `shipping_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `shipper` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  PRIMARY KEY (`option_id`),
  KEY `shipper` (`shipper`),
  CONSTRAINT `shipping_option_ibfk_1` FOREIGN KEY (`shipper`) REFERENCES `shipper` (`shipper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_option`
--

LOCK TABLES `shipping_option` WRITE;
/*!40000 ALTER TABLE `shipping_option` DISABLE KEYS */;
INSERT INTO `shipping_option` VALUES (1,1,'george',23.99),(10,10,'george1',213.99),(11,11,'george2',233.99),(12,12,'george3',134.99),(13,13,'george4',23.99),(14,14,'george5',23.99),(15,15,'george6',523.99),(16,16,'george7',87.99),(17,17,'george8',23.99),(18,18,'george9',2375.99),(19,19,'george10',23.99),(20,21,'george11',2387.99),(22,22,'george12',23.99),(23,23,'george13',23.99),(24,24,'george14',23.99),(25,25,'george15',23.99),(1000,1000,'george',23.99);
/*!40000 ALTER TABLE `shipping_option` ENABLE KEYS */;
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
