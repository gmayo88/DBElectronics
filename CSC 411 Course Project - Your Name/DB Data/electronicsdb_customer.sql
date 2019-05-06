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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `street` varchar(30) NOT NULL,
  `street2` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(5) NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12346 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Vicki','richardson','martins510@me.com',98577495,'616 parwood dr','na','lon beach','MS',39560),(10,'George1','Black99','mine1@me.com',576498761,'101Test Drive','BEHOLD','Long Beach','MS',39560),(11,'George2','Black100','mine2@me.com',857648762,'101Test Drive','BEHOLD','Long Beach','MS',39560),(13,'George3','Black101','mine3@me.com',857698763,'101Test Drive','BEHOLD','Long Beach','MS',39560),(14,'George4','Black102','mine4@me.com',857498764,'101Test Drive','BEHOLD','Long Beach','MS',39560),(15,'George5','Black103','mine5@me.com',857649865,'101Test Drive','BEHOLD','Long Beach','MS',39560),(16,'George6','Black104','mine6@me.com',857649766,'101Test Drive','BEHOLD','Long Beach','MS',39560),(17,'George7','Black105','mine7@me.com',857648767,'101Test Drive','BEHOLD','Long Beach','MS',39560),(18,'George8','Black106','mine8@me.com',857698768,'101Test Drive','BEHOLD','Long Beach','MS',39560),(19,'George9','Black107','mine9@me.com',856498769,'101Test Drive','BEHOLD','Long Beach','MS',39560),(20,'George10','Black108','mine10@me.com',876498770,'101Test Drive','BEHOLD','Long Beach','MS',39560),(21,'George11','Black109','mine11@me.com',857648771,'101Test Drive','BEHOLD','Long Beach','MS',39560),(22,'George12','Black110','mine12@me.com',857698772,'Test Drive','BEHOLD','Long Beach','MS',39560),(23,'George13','Black111','mine13@me.com',857498773,'101Test Drive','BEHOLD','Long Beach','MS',39560),(24,'George14','Black112','mine14@me.com',856498774,'101Test Drive','BEHOLD','Long Beach','MS',39560),(25,'George15','Black113','mine15@me.com',856498775,'101 Test Drive','BEHOLD','Long Beach','MS',39560),(1000,'Vicki','richardson','martins510@me.com',98577495,'616 parwood dr','na','lon beach','MS',39560),(12324,'Vicki','richardson','martins510@me.com',98577495,'616 parwood dr','na','lon beach','MS',39560),(12344,'Vicki','richardson','martins510@me.com',98577495,'616 parwood dr','na','lon beach','MS',39560),(12345,'Martin','richardson','martins5150@me.com',985774975,'616 parkwood dr','na','long beach','MS',39560);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05 23:41:39
