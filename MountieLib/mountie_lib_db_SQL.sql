CREATE DATABASE  IF NOT EXISTS `mountie_lib_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mountie_lib_db`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: mountie_lib_db
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `isbn` bigint(12) NOT NULL,
  `book_title` varchar(100) NOT NULL,
  `date_of_publication` varchar(15) NOT NULL,
  `number_of_copies` int(10) NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (101010101010,'Binary for Beginners','2015',11,'Bill Gates'),(123098654356,'Android programming: Java.','2017',10,'Larry H.'),(123456789012,'Java: How to Program Late Objects','2017',10,'Panino R.'),(123456789077,'Take Out The World!','1999',14,'Google'),(210987654321,'C++: Advance Object Oriented Programming','2016',15,'Panino R.'),(991188227733,'Python Programming','2017',20,'Denini P.');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrower`
--

DROP TABLE IF EXISTS `borrower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrower` (
  `cardID` int(11) NOT NULL AUTO_INCREMENT,
  `borrower_FN` varchar(30) NOT NULL,
  `borrower_LN` varchar(30) NOT NULL,
  `borrower_Address` varchar(100) DEFAULT NULL,
  `borrower_Phone` varchar(20) DEFAULT NULL,
  `borrower_Email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cardID`),
  UNIQUE KEY `cardID_UNIQUE` (`cardID`)
) ENGINE=InnoDB AUTO_INCREMENT=1234567911 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrower`
--

LOCK TABLES `borrower` WRITE;
/*!40000 ALTER TABLE `borrower` DISABLE KEYS */;
INSERT INTO `borrower` VALUES (1234567890,'Steven','Tai','1100 N. Grand Ave., Walnut, CA 91789','9093214321','wtai2@student.mtsac.edu'),(1234567891,'Adrian','Mora','123 Mt. Sac Walnut, Ca 92324','9091231234','amora22@student.mtsac.edu'),(1234567892,'Sohai','Zaki','54 Rodeo Drive, Beverly Hills, CA 9001','9091031035','SohairZ@student.mtsac.edu'),(1234567893,'Orlando','Mora','544 Holt Blvd. Ontario, Ca 91730','9094008789','orlando21@gmail.com'),(1234567894,'John','Wick','456 5th Ave. New York, New York 11001','2128004433','whereIsMyPuppu@killer.org'),(1234567895,'Al','Capone','8 Rome St. Los Angeles, 91000','6267764353','capics@hotmail.com'),(1234567896,'Brandon','Pitt','654 Canoga St. Montclair, Ca 92335','9095552233','brandon_raven21@gmail.com');
/*!40000 ALTER TABLE `borrower` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `librarian`
--

DROP TABLE IF EXISTS `librarian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `librarian` (
  `adminID` int(11) NOT NULL,
  `adminName` varchar(30) NOT NULL,
  `adminPassword` varchar(30) NOT NULL,
  PRIMARY KEY (`adminID`),
  UNIQUE KEY `adminID_UNIQUE` (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `librarian`
--

LOCK TABLES `librarian` WRITE;
/*!40000 ALTER TABLE `librarian` DISABLE KEYS */;
INSERT INTO `librarian` VALUES (1,'steven','cisp24'),(2,'adrian','MOZA0589');
/*!40000 ALTER TABLE `librarian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `transactionID` int(11) NOT NULL,
  `isbn` bigint(12) NOT NULL,
  `cardID` int(11) NOT NULL,
  `date_Issue` varchar(15) NOT NULL,
  `date_due` varchar(15) NOT NULL,
  `date_Return` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`transactionID`),
  UNIQUE KEY `transactionID_UNIQUE` (`transactionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (0,0,0,'0','0','0'),(617939600,123456789077,1234567903,'2017-12-04','2017-12-07',NULL),(644397565,123456789077,1234567903,'2017-12-04','2017-12-07','2017-12-04'),(948026529,123456789077,1234567903,'2017-12-04','2017-12-07','2017-12-04'),(974066703,210987654321,1234567903,'2017-12-04','2017-12-07','2017-12-04');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-06  2:16:04
