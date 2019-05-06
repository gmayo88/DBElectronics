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
-- Table structure for table `business_shipment`
--

DROP TABLE IF EXISTS `business_shipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `business_shipment` (
  `shipment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) NOT NULL,
  `shipping_option` int(11) NOT NULL,
  `tracking_number` int(11) NOT NULL,
  `est_delivery` date NOT NULL,
  `delivery_date` date NOT NULL,
  PRIMARY KEY (`shipment_id`),
  KEY `order` (`order`),
  KEY `shipping_option` (`shipping_option`),
  CONSTRAINT `business_shipment_ibfk_1` FOREIGN KEY (`order`) REFERENCES `business_order` (`order_id`),
  CONSTRAINT `business_shipment_ibfk_2` FOREIGN KEY (`shipping_option`) REFERENCES `shipping_option` (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_shipment`
--

LOCK TABLES `business_shipment` WRITE;
/*!40000 ALTER TABLE `business_shipment` DISABLE KEYS */;
INSERT INTO `business_shipment` VALUES (1,1,1,1,'2019-12-12','2019-12-12'),(10,10,1,10,'2019-12-12','2019-12-12'),(11,11,1,11,'2019-12-12','2019-12-12'),(12,12,1,12,'2019-12-12','2019-12-12'),(13,13,1,13,'2019-12-12','2019-12-12'),(14,14,1,14,'2019-12-12','2019-12-12'),(15,15,1,15,'2019-12-12','2019-12-12'),(16,16,1,16,'2019-12-12','2019-12-12'),(17,17,1,17,'2019-12-12','2019-12-12'),(18,18,1,18,'2019-12-12','2019-12-12'),(19,19,1,19,'2019-12-12','2019-12-12'),(20,20,1,20,'2019-12-12','2019-12-12'),(21,21,1,21,'2019-12-12','2019-12-12'),(22,22,1,22,'2019-12-12','2019-12-12'),(23,23,1,23,'2019-12-12','2019-12-12'),(24,24,1,24,'2019-12-12','2019-12-12'),(25,25,1,25,'2019-12-12','2019-12-12'),(1000,1000,1,1000,'2019-12-12','2019-12-12');
/*!40000 ALTER TABLE `business_shipment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05 23:41:42
