CREATE DATABASE  IF NOT EXISTS `dinerclient` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `dinerclient`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: dinerclient
-- ------------------------------------------------------
-- Server version	5.7.16-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` varchar(1) NOT NULL,
  `name` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('d','Drinks','Purees made from the finest of Venusian insects, government-inspected.','catd.png'),('m','Mains','Made from only the finest ingredients found deep in the Martian jungle, and harvested or slaughtered by academy-trained druids, we bring you 45 day aged premium \"meat\".','catm.png'),('s','Sides','Perfect accompaniments to our mains, these side dish pairings have been exclsisvely formulated by Ben & Jerry.','cats.png');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  KEY `ci_sessions_timestamp` (`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
INSERT INTO `ci_sessions` VALUES ('5230bfc889ca8a64c7b90df59105f9ce1d29ccc6','127.0.0.1',1491423992,'__ci_last_regenerate|i:1491423992;'),('a1ffbc2b7e8c91eed2a9906e5acbd48f9e9f4bd4','127.0.0.1',1491423249,'__ci_last_regenerate|i:1491423249;'),('47eac9d94e20bb20500e17c788b74cdc139706c7','127.0.0.1',1491426885,'__ci_last_regenerate|i:1491426885;'),('073a8c91c9f78413944e1158e80967483428e8e4','127.0.0.1',1491426899,'__ci_last_regenerate|i:1491426885;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}'),('445d05e7758adca067e02920baf8611a27737c0c','127.0.0.1',1491444398,'__ci_last_regenerate|i:1491444398;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}'),('c6387d448b33a6193951cd120e3f5e6b02dd54b8','127.0.0.1',1491444773,'__ci_last_regenerate|i:1491444773;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}'),('5cf60232c52b483d1ab3c5114a3506507df1e97a','127.0.0.1',1491445328,'__ci_last_regenerate|i:1491445328;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}'),('ca97015984087dda2f856a20bf381a654fc06762','127.0.0.1',1491445638,'__ci_last_regenerate|i:1491445638;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}'),('834ce2b3282cb3576b17e2adbca35fdde42b5a14','127.0.0.1',1491446343,'__ci_last_regenerate|i:1491446343;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}'),('9762420491901422aa7ed43106b2a2c000276d16','127.0.0.1',1491446705,'__ci_last_regenerate|i:1491446705;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}'),('77a056899cd1c0e0ac3a7f975531426a5d4fecba','127.0.0.1',1491447027,'__ci_last_regenerate|i:1491447027;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}'),('875f5e3b8545851b4a1e9865cef6ae8a4d44a1fc','127.0.0.1',1491447416,'__ci_last_regenerate|i:1491447416;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}'),('e6601fc731c68cad0e53e763b59ca13097b56377','127.0.0.1',1491447993,'__ci_last_regenerate|i:1491447993;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}'),('9ef65e2518a795c034d39679e2f2b6386431f942','127.0.0.1',1491449184,'__ci_last_regenerate|i:1491449184;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}userrole|s:5:\"admin\";'),('64803c6867e61e5467169297a4d4d34ed0e78352','127.0.0.1',1491448458,'__ci_last_regenerate|i:1491448428;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}userrole|s:5:\"admin\";'),('6eef389580509a008a5cfc7519e0266ce58bfa17','127.0.0.1',1491449617,'__ci_last_regenerate|i:1491449617;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}userrole|s:5:\"admin\";'),('5b49cb808a7ea70d6c512b2c53fe0b1d6b5d4d1d','127.0.0.1',1491449974,'__ci_last_regenerate|i:1491449974;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}userrole|s:5:\"admin\";'),('67ae512c622c9d81d32e1c0dfbd70d7b54df7d71','127.0.0.1',1491450269,'__ci_last_regenerate|i:1491449974;order|a:3:{s:6:\"number\";i:0;s:8:\"datetime\";N;s:5:\"items\";a:0:{}}userrole|s:5:\"admin\";');
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderitems`
--

DROP TABLE IF EXISTS `orderitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orderitems` (
  `order` int(11) NOT NULL,
  `item` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `special` text NOT NULL,
  PRIMARY KEY (`order`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderitems`
--

LOCK TABLES `orderitems` WRITE;
/*!40000 ALTER TABLE `orderitems` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `num` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(1) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `customer` varchar(64) NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'dinerclient'
--

--
-- Dumping routines for database 'dinerclient'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-08 23:00:07
