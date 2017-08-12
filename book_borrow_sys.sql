-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: book_borrow_sys
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `number` varchar(100) NOT NULL,
  `passwd` varchar(20) DEFAULT NULL,
  `nickname` varchar(100) DEFAULT NULL,
  `sex` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `birthdate` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES ('456','456','456','456','456','456','456'),('ldl','ldl','ldl','ldl','ldl','ldl','ldl');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_infor`
--

DROP TABLE IF EXISTS `book_infor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book_infor` (
  `ISBN` varchar(20) NOT NULL,
  `book_name` varchar(100) DEFAULT NULL,
  `publish_house` varchar(100) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `stat` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_infor`
--

LOCK TABLES `book_infor` WRITE;
/*!40000 ALTER TABLE `book_infor` DISABLE KEYS */;
INSERT INTO `book_infor` VALUES ('2','2','2','2',1,'yes'),('3','3','3','3',1,'yes'),('6','6','6','6',6,'no'),('9','9','9','9',8,'yes');
/*!40000 ALTER TABLE `book_infor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrow_infor`
--

DROP TABLE IF EXISTS `borrow_infor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrow_infor` (
  `account` varchar(20) NOT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `book_name` varchar(100) DEFAULT NULL,
  `num` varchar(20) DEFAULT NULL,
  `borrow` date DEFAULT NULL,
  `ret` date DEFAULT NULL,
  KEY `bor_fk` (`ISBN`),
  CONSTRAINT `bor_fk` FOREIGN KEY (`ISBN`) REFERENCES `book_infor` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow_infor`
--

LOCK TABLES `borrow_infor` WRITE;
/*!40000 ALTER TABLE `borrow_infor` DISABLE KEYS */;
INSERT INTO `borrow_infor` VALUES ('456','3','3',NULL,NULL,NULL),('456','3','3',NULL,NULL,NULL),('456','9','9',NULL,NULL,NULL);
/*!40000 ALTER TABLE `borrow_infor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ret_infor`
--

DROP TABLE IF EXISTS `ret_infor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ret_infor` (
  `account` varchar(20) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `book_name` varchar(100) DEFAULT NULL,
  `ret` date DEFAULT NULL
  CONSTRAINT `ret_fk` FOREIGN KEY (`ISBN`) REFERENCES `borrow_infor` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ret_infor`
--

LOCK TABLES `ret_infor` WRITE;
/*!40000 ALTER TABLE `ret_infor` DISABLE KEYS */;
INSERT INTO `ret_infor` VALUES ('456','2','2',NULL),('456','9','9',NULL),('ldl','ldl','9',NULL),('456','9','9',NULL),('456','9','9',NULL),('456','9','9',NULL);
/*!40000 ALTER TABLE `ret_infor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-12  9:05:03
