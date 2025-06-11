/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.9-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: travel
-- ------------------------------------------------------
-- Server version	10.11.9-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Booking`
--

DROP TABLE IF EXISTS `Booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Booking` (
  `bookingNo` varchar(2) NOT NULL,
  `customerNo` varchar(2) NOT NULL,
  `hotelRef` int(2) NOT NULL,
  `startDate` date NOT NULL,
  `numberNights` varchar(2) NOT NULL,
  `numberinparty` varchar(2) NOT NULL,
  PRIMARY KEY (`bookingNo`),
  KEY `customerNo` (`customerNo`),
  KEY `hotelRef` (`hotelRef`),
  CONSTRAINT `Booking_ibfk_1` FOREIGN KEY (`customerNo`) REFERENCES `Customer` (`customerNo`) ON DELETE CASCADE,
  CONSTRAINT `Booking_ibfk_2` FOREIGN KEY (`hotelRef`) REFERENCES `Hotel` (`hotelRef`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Booking`
--

LOCK TABLES `Booking` WRITE;
/*!40000 ALTER TABLE `Booking` DISABLE KEYS */;
INSERT INTO `Booking` VALUES
('41','21',31,'2020-01-01','5','4'),
('42','22',35,'2020-01-04','10','4'),
('43','23',31,'2020-07-05','18','3'),
('44','21',33,'2019-10-16','7','1'),
('45','22',33,'2019-11-20','8','5');
/*!40000 ALTER TABLE `Booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Customer` (
  `customerNo` varchar(2) NOT NULL,
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  PRIMARY KEY (`customerNo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES
('21','john','anderson','aberdeen','AB153NJ'),
('22','patrick','stevenson','stoneheaven','AB167LT'),
('23','david','cromar','dundee','DD14HN');
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Hotel`
--

DROP TABLE IF EXISTS `Hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Hotel` (
  `hotelRef` int(2) NOT NULL,
  `hotelName` varchar(20) NOT NULL,
  `ResortID` int(2) NOT NULL,
  `starrating` varchar(1) NOT NULL,
  `seasonstartdate` date NOT NULL,
  `swimmingpool` tinyint(1) NOT NULL,
  `meanplan` tinyint(1) NOT NULL,
  `checkintime` time NOT NULL,
  `pricepernight` varchar(3) NOT NULL,
  PRIMARY KEY (`hotelRef`),
  KEY `ResortID` (`ResortID`),
  CONSTRAINT `Hotel_ibfk_1` FOREIGN KEY (`ResortID`) REFERENCES `Resort` (`ResortID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Hotel`
--

LOCK TABLES `Hotel` WRITE;
/*!40000 ALTER TABLE `Hotel` DISABLE KEYS */;
INSERT INTO `Hotel` VALUES
(31,'nova',11,'3','2020-01-01',1,1,'14:00:00','200'),
(32,'primier',13,'3','2019-10-15',1,1,'10:00:00','100'),
(33,'grandhotel',11,'4','2020-01-05',0,1,'14:00:00','500'),
(34,'hilton',12,'4','2019-10-15',0,0,'10:00:00','300'),
(35,'apex',11,'3','2020-07-01',1,0,'12:00:00','150');
/*!40000 ALTER TABLE `Hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Resort`
--

DROP TABLE IF EXISTS `Resort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Resort` (
  `ResortID` int(2) NOT NULL,
  `ResortName` varchar(20) NOT NULL,
  `ResortType` varchar(20) NOT NULL,
  `Trainstation` tinyint(1) NOT NULL,
  PRIMARY KEY (`ResortID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Resort`
--

LOCK TABLES `Resort` WRITE;
/*!40000 ALTER TABLE `Resort` DISABLE KEYS */;
INSERT INTO `Resort` VALUES
(11,'seamill','seafront',0),
(12,'forester','park',1),
(13,'duchally','highland',0);
/*!40000 ALTER TABLE `Resort` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-03 15:25:46
