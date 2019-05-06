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
-- Table structure for table `store_order`
--

DROP TABLE IF EXISTS `store_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `store_order` (
  `store_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `store` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `fill_date` date NOT NULL,
  `warehouse` int(11) NOT NULL,
  PRIMARY KEY (`store_order_id`),
  KEY `store` (`store`),
  KEY `warehouse` (`warehouse`),
  CONSTRAINT `store_order_ibfk_1` FOREIGN KEY (`store`) REFERENCES `store` (`store_id`),
  CONSTRAINT `store_order_ibfk_2` FOREIGN KEY (`warehouse`) REFERENCES `warehouse` (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_order`
--

LOCK TABLES `store_order` WRITE;
/*!40000 ALTER TABLE `store_order` DISABLE KEYS */;
INSERT INTO `store_order` VALUES (1,1,'2019-03-01','2019-03-01',1),(10,1,'2019-03-01','2019-03-01',1),(11,1,'2019-03-01','2019-03-01',1),(12,1,'2019-03-01','2019-03-01',1),(13,1,'2019-03-01','2019-03-01',1),(14,1,'2019-03-01','2019-03-01',1),(15,1,'2019-03-01','2019-03-01',1),(16,1,'2019-03-01','2019-03-01',1),(17,1,'2019-03-01','2019-03-01',1),(18,1,'2019-03-01','2019-03-01',1),(19,1,'2019-03-01','2019-03-01',1),(20,1,'2019-03-01','2019-03-01',1),(21,1,'2019-03-01','2019-03-01',1),(22,1,'2019-03-01','2019-03-01',1),(23,1,'2019-03-01','2019-03-01',1),(24,1,'2019-03-01','2019-03-01',1),(25,1,'2019-03-01','2019-03-01',1),(1000,1,'2019-03-01','2019-03-01',1);
/*!40000 ALTER TABLE `store_order` ENABLE KEYS */;
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
