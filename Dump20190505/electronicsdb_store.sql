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
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(30) NOT NULL,
  `street2` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(5) NOT NULL,
  `warehouse` int(11) NOT NULL,
  PRIMARY KEY (`store_id`),
  KEY `warehouse` (`warehouse`),
  CONSTRAINT `store_ibfk_1` FOREIGN KEY (`warehouse`) REFERENCES `warehouse` (`warehouse_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'666 testy st','BEHOLD','My Town','VA',12345,1),(10,'666 testy st','BEHOLD','My Town','VA',12345,1),(11,'666 testy st','BEHOLD','My Town','VA',12345,1),(12,'666 testy st','BEHOLD','My Town','VA',12345,1),(13,'666 testy st','BEHOLD','My Town','VA',12345,1),(14,'666 testy st','BEHOLD','My Town','VA',12345,1),(15,'666 testy st','BEHOLD','My Town','VA',12345,1),(16,'666 testy st','BEHOLD','My Town','VA',12345,1),(17,'666 testy st','BEHOLD','My Town','VA',12345,1),(18,'666 testy st','BEHOLD','My Town','VA',12345,1),(19,'666 testy st','BEHOLD','My Town','VA',12345,1),(20,'666 testy st','BEHOLD','My Town','VA',12345,1),(21,'666 testy st','BEHOLD','My Town','VA',12345,1),(22,'666 testy st','BEHOLD','My Town','VA',12345,1),(23,'666 testy st','BEHOLD','My Town','VA',12345,1),(24,'666 testy st','BEHOLD','My Town','VA',12345,1),(25,'666 testy st','BEHOLD','My Town','VA',12345,1),(1000,'666 testy st','BEHOLD','My Town','VA',12345,1);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05 23:41:44
