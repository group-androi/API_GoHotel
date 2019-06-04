-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bookroomhotel1
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.34-MariaDB

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
-- Table structure for table `bookroom`
--

DROP TABLE IF EXISTS `bookroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookroom` (
  `id_book` int(11) NOT NULL AUTO_INCREMENT,
  `hotel_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `user_id` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_start` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_end` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_book` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `info_user_booked` varchar(254) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_book`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookroom`
--

LOCK TABLES `bookroom` WRITE;
/*!40000 ALTER TABLE `bookroom` DISABLE KEYS */;
INSERT INTO `bookroom` VALUES (1,1,1,NULL,'2019-05-29','2019-05-30','250000','2019-05-29 23:59:59','0123','',0),(2,1,1,NULL,'2019-05-29','2019-05-30','250000','2019-05-29 23:59:59','0456','',0),(3,1,1,NULL,'2019-05-29','2019-05-30','250000','2019-05-29 23:59:59','0789','',0),(4,1,1,'947065823','2019-05-29','2019-05-30','250000','2019-05-29 23:59:59','0147','',0),(5,1,2,'0947065823','2019-05-29','2019-05-31','350000','2019-05-28 23:59:59','0258','',0);
/*!40000 ALTER TABLE `bookroom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-04 16:48:45
