/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.9-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: OnlineMediaRental
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
-- Table structure for table `actors`
--

DROP TABLE IF EXISTS `actors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actors` (
  `actor_id` int(10) NOT NULL,
  `stage_name` varchar(40) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `birth_date` date NOT NULL,
  PRIMARY KEY (`actor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actors`
--

LOCK TABLES `actors` WRITE;
/*!40000 ALTER TABLE `actors` DISABLE KEYS */;
INSERT INTO `actors` VALUES
(1001,'Bradd Pitt','William','Pitt','1963-12-18'),
(1002,'Keanu Reeves','Keanu','Reeves','1964-09-02'),
(1003,'Daniel Day-Lewis','Daniel','Day-Lewis','1957-04-29'),
(1004,'Cristoph Waltz','Cristoph','Waltz','1956-10-04');
/*!40000 ALTER TABLE `actors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `customerID` int(10) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `home_phone` varchar(12) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(2) NOT NULL,
  `email` varchar(25) DEFAULT NULL,
  `cell_phone` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES
(101,'Palombo','Lisa','716-270-2669','123 Main St','Buffalo','NY','palombo@ecc.edu','716-555-1212'),
(102,'grreer','gehtb24','756-270-3669','124 Main St','Buffalo','NY','gehtb24@ecc.edu','726-555-1212'),
(103,'grreew','s','356-270-3669','444 Main St','Buffalo','NY','s@ecc.edu','222-555-1212'),
(104,'grreew','a','351-270-3669','445 Main St','Buffalo','NY','s@ecc.edu','103-321-1212'),
(105,'grreew','b','567-270-3669','435 Main St','Buffalo','NY','dd@ecc.edu','103-321-1212'),
(106,'grreew','g','532-270-3669','478 Main St','Buffalo','NY','g@ecc.edu','100-321-1212');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media`
--

DROP TABLE IF EXISTS `media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media` (
  `media_id` int(10) NOT NULL,
  `format` varchar(3) NOT NULL,
  `title_id` int(10) NOT NULL,
  PRIMARY KEY (`media_id`),
  KEY `title_id` (`title_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`title_id`) REFERENCES `movies` (`title_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media`
--

LOCK TABLES `media` WRITE;
/*!40000 ALTER TABLE `media` DISABLE KEYS */;
INSERT INTO `media` VALUES
(92,'DVD',1),
(93,'VHS',1),
(94,'DVD',2),
(95,'DVD',3),
(96,'DVD',4),
(97,'DVD',5),
(98,'DVD',6);
/*!40000 ALTER TABLE `media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `title_id` int(10) NOT NULL,
  `title` varchar(60) NOT NULL,
  `description` varchar(400) NOT NULL,
  `rating` varchar(4) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `release_date` date NOT NULL,
  PRIMARY KEY (`title_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES
(1,'Remember the Titans','The true story of a newly appointed African-American coach and his high school team on their first season as a racially integrated unit.','PG','DRAMA','2000-09-29'),
(2,'Megalopolis','The city of New Rome is the main conflict between Cesar Catilina, a brilliant artist in favor of a utopian future, and the greedy mayor Franklyn Cicero. Between them is Julia Cicero, her loyalty divided between her father and her beloved.','15','Sci-Fi','2024-09-27'),
(3,'Never Let Go','A family that has been haunted by an evil spirit for years. Their safety and their surroundings come into question when one of the children questions if the evil is real.','15','Horror','2024-09-27'),
(4,'The Wild Robot','After a shipwreck, an intelligent robot called Roz is stranded on an uninhabited island. To survive the harsh environment, Roz bonds with the island\'s animals and cares for an orphaned baby goose.','U','Animation','2024-10-18'),
(5,'The Auditors','Nikki buys MDPOPE, unaware she\'ll face torture from an auditor. Sold as pets, protagonists experience captivity, exposing the grim reality of financial oversight through ignorance\'s harrowing consequences.',NULL,'Horror','2025-01-10'),
(6,'A Complete Unknown','At the Newport Folk Festival in 1965, a young Bob Dylan shakes up his act on the folk music scene by going electric and siring rock as the voice of a generation - defining one of the most transformative moments in 20th century music.',NULL,'Docudrama','2025-01-17');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rental_history`
--

DROP TABLE IF EXISTS `rental_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rental_history` (
  `media_id` int(10) NOT NULL,
  `rental_date` date NOT NULL,
  `customerID` int(10) NOT NULL,
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`media_id`,`rental_date`),
  KEY `customerID` (`customerID`),
  CONSTRAINT `rental_history_ibfk_1` FOREIGN KEY (`media_id`) REFERENCES `media` (`media_id`) ON DELETE CASCADE,
  CONSTRAINT `rental_history_ibfk_2` FOREIGN KEY (`customerID`) REFERENCES `customers` (`customerID`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rental_history`
--

LOCK TABLES `rental_history` WRITE;
/*!40000 ALTER TABLE `rental_history` DISABLE KEYS */;
INSERT INTO `rental_history` VALUES
(92,'2010-09-19',101,'2010-09-20'),
(93,'2025-09-19',102,'2025-09-20'),
(94,'2026-09-19',103,'2026-09-20'),
(95,'2026-04-15',104,'2026-04-26');
/*!40000 ALTER TABLE `rental_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `star_billings`
--

DROP TABLE IF EXISTS `star_billings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `star_billings` (
  `actor_id` int(10) NOT NULL,
  `title_id` int(10) NOT NULL,
  `comments` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`actor_id`,`title_id`),
  KEY `title_id` (`title_id`),
  CONSTRAINT `star_billings_ibfk_1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`actor_id`) ON DELETE CASCADE,
  CONSTRAINT `star_billings_ibfk_2` FOREIGN KEY (`title_id`) REFERENCES `movies` (`title_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_uca1400_as_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star_billings`
--

LOCK TABLES `star_billings` WRITE;
/*!40000 ALTER TABLE `star_billings` DISABLE KEYS */;
INSERT INTO `star_billings` VALUES
(1001,2,'Romantic Lead'),
(1002,3,'Lead'),
(1003,4,'Supporting'),
(1004,5,'Supporting');
/*!40000 ALTER TABLE `star_billings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-27 12:41:05
