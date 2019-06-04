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
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `room` (
  `id_room` int(11) NOT NULL AUTO_INCREMENT,
  `name_room` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price_per_day` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count` char(4) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hotel_id` int(11) NOT NULL,
  PRIMARY KEY (`id_room`),
  KEY `hotel_id` (`hotel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (3,'Phòng Đôi','400000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',7),(4,'Phòng Cao Cấp','300000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',7),(5,'Phòng Sang Trọng','350000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','23','1',7),(6,'Deluxe Room','345000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',0),(7,'Superior Room','295000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',0),(8,'Phòng Đơn Nhỏ','222000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',8),(9,'Phòng Đơn Lớn','250000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',8),(10,'Phòng Đôi Nhỏ','400000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',8),(11,'Phòng Đôi Lớn','450000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',8),(12,'Standard Room','250000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',9),(13,'Deluxe Room','350000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',9),(14,'Family Room','400000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',9),(15,'DELUXE DOUBLE ROOM','999000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',10),(16,'DELUXE TWIN ROOM','1200000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',10),(17,'VIP ROOM','650000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',11),(18,'Phòng Lớn','550000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',11),(19,'Phòng Nhỏ','400000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',11),(20,'Standard Room','750000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',12),(21,'Superior Room','700000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',12),(22,'Family Room','850000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',12),(23,'Standard Room','500000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',13),(24,'Deluxe Room','400000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',13),(25,'Deluxe with Balcony Room','470000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',13),(26,'Standard Room','300000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',14),(27,'Superior Double Room','400000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',14),(28,'Superior Twin Room','450000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',14),(29,'Standard','250000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',15),(30,'Superior','300000','http://118.69.128.59:8080/hotelapi/hotel/download/downloadHotelI','12','1',15);
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
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
