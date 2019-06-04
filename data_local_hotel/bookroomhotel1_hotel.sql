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
-- Table structure for table `hotel`
--

DROP TABLE IF EXISTS `hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotel` (
  `id_hotel` int(11) NOT NULL AUTO_INCREMENT,
  `name_hotel` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `price_room_per_day` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_in` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `check_out` char(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_hotel`),
  KEY `city_id` (`city_id`,`district_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotel`
--

LOCK TABLES `hotel` WRITE;
/*!40000 ALTER TABLE `hotel` DISABLE KEYS */;
INSERT INTO `hotel` VALUES (0,'DRAGON HOTEL','616/41 Lê Đức Thọ, Phường 15, Gò Vấp, Hồ Chí Minh, Việt Nam',764,1,'450000','10.8502539','106.664236299999','14','12'),(7,'SAMI HOTEL','5 Dương Bá Trạc, Phường 1, Quận 8, Hồ Chí Minh, Việt Nam',776,1,'350000','10.7502896','106.688164200000','12','12'),(8,'HUỲNH ANH HOTEL','10 Đường số 51, Phường 14, Gò Vấp, Hồ Chí Minh, Việt Nam',764,1,'220000','10.8467412','106.642359800000','21','12'),(9,'REDDOORZ NEAR TAN SON NHAT AIRPORT 3','B102 Đường Bạch Đằng, Phường 2, Tân Bình, Hồ Chí Minh, Việt Nam',766,1,'400000','10.815577','106.669703000000','14','12'),(10,'HÀ NỘI HOTEL','19/1 Hoàng Việt, Phường 4, Tân Bình, Hồ Chí Minh, Việt Nam',766,1,'250000','10.796567','106.660229999999','12','12'),(11,'LYLY HOTEL','110 Song Hành, Phường 10, Quận 6, Hồ Chí Minh, Việt Nam',775,1,'200000','10.734159','106.628556099999','23','8'),(12,'REDDOORZ PLUS @ TRUNG SON RESIDENCE','57 Đường số 6, Bình Hưng, Bình Chánh, Hồ Chí Minh, Việt Nam',785,1,'300000','10.7375477','106.691662899999','14','12'),(13,'REDDOORZ PLUS NEAR LE QUANG DINH STREET','11A Trần Bình Trọng, Phường 5, Bình Thạnh, Hồ Chí Minh, Vietnam',765,1,'280000','10.811086','106.689546999999','14','12'),(14,'REDDOORZ NEAR MIEN TAY BUS STATION','45 Song Hành, Phường 10, Quận 6, Hồ Chí Minh, Việt Nam',785,1,'430000','10.7343171','106.627374000000','14','12'),(15,'FRIDAY PHAN XÍCH LONG','36/4 Cù Lao, phường 2, Phú Nhuận, Hồ Chí Minh, Việt Nam',768,1,'500000','10.796288','106.689263999999','12','12');
/*!40000 ALTER TABLE `hotel` ENABLE KEYS */;
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
