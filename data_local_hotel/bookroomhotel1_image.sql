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
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `name_image` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`name_image`,`hotel_id`),
  UNIQUE KEY `name_image` (`name_image`,`hotel_id`,`room_id`),
  KEY `room_id` (`room_id`),
  KEY `hotel_id` (`hotel_id`,`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES ('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=0dd27001433e855e1823b280cf8940d7&highQuality',8,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=10bff56c19307a8d7810760e076ba046&highQuality',12,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=1383fd21cf87438527680f9d3c10aa85&highQuality',12,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=194622e51d73d7f7afec0c45be2d36e0&highQuality',14,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=22b5a726105a2e1f04c57934c5683b38&highQuality',10,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=24fa161987808dc7204861a294a9d13e&highQuality',13,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=373f696d107ea2c20a963824f5156048&highQuality',8,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=37473278468de350d28d5c417a9e5256&highQuality',15,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=45de462222ccba2d50ce8868b2d1aa35&highQuality',11,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=4f38b818360650c0af37f5ba98acd6b6&highQuality',15,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=527a9546237826709472a29cc9e3a368&highQuality',10,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5341b6a636a32d90a2c0abfd031a64be&highQuality',8,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=599f6773a3eff47d8f898c5db73379f8&highQuality',8,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5a790adae987d01219cd30bd07644fc1&highQuality',9,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5cd0371883feb4d53b22a4d2f208403d&highQuality',14,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5cf8d4a1264e0a1924c84401b14ddf40&highQuality',0,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=5f2d1b0c3d551ebc21dd265729e9b3c8&highQuality',10,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=6d3620054a7b224c4094ed0b8cef1e9b&highQuality',8,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=73649a11b457c1499a672a5f0d943c9b&highQuality',15,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=7ac0bba49229d4cce7703cde7217b29e&highQuality',15,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=815032af7ecf2be51bfe37eed79f7901&highQuality',0,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=85a580712dcb3d8dd219723004dcea34&highQuality',10,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=864b7d9f52896b00c876561753c3ed68&highQuality',15,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=894176bf09133a68822364aed8f52783&highQuality',7,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=8e43de186641dfce20249fd50007abde&highQuality',11,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=95381240f60d3f63098bff53d860caab&highQuality',0,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=9a3aa5981d217752485ccc1bb03bd3e9&highQuality',12,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=9c5b996065852ff8a5f1f28ce624824b&highQuality',7,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=b2590590085107ec3520034982fbb247&highQuality',14,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=d5b5285b93e68e92be8f86f6962650d0&highQuality',13,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=d5be49da8bc3ed7d60a54e126c864000&highQuality',8,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=e56eca1fc6056c7d5c630ccf0d3bc19f&highQuality',10,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=ef9bafa039f53f02bd4c0139a55c6220&highQuality',7,NULL),('http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelImageViaKey?imageKey=fa8ab173372b907458bbc81756c8da3e&highQuality',7,NULL);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
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
