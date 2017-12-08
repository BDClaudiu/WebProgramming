-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: gamedatabase
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
-- Table structure for table `timetable2`
--

DROP TABLE IF EXISTS `timetable2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetable2` (
  `email` varchar(320) DEFAULT NULL,
  `loginTime` datetime DEFAULT NULL,
  `logoutTime` datetime DEFAULT NULL,
  `purchaseTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable2`
--

LOCK TABLES `timetable2` WRITE;
/*!40000 ALTER TABLE `timetable2` DISABLE KEYS */;
INSERT INTO `timetable2` VALUES ('aaa@hotmail.com','2017-11-16 14:23:25','2017-11-29 11:50:48',NULL),('InnaGTA@yahoo.com','2017-11-16 14:34:11','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-16 15:30:13','2017-12-01 09:35:53',NULL),('aaa@hotmail.com','2017-11-16 15:31:28','2017-11-29 11:50:48',NULL),('secret@island.com','2017-11-16 15:38:16','2017-11-29 15:49:04',NULL),('secret@island.com','2017-11-17 22:05:27','2017-11-29 15:49:04',NULL),('secret@island.com','2017-11-17 22:28:47','2017-11-29 15:49:04',NULL),('secret@island.com','2017-11-17 22:29:51','2017-11-29 15:49:04',NULL),('secret@island.com','2017-11-17 22:34:19','2017-11-29 15:49:04',NULL),('secret@island.com','2017-11-17 22:38:41','2017-11-29 15:49:04',NULL),('baba@test.com','2017-11-17 22:42:46','2017-11-24 01:48:13',NULL),('InnaGTA@yahoo.com','2017-11-17 22:50:08','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-17 22:50:30','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-17 22:54:23','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-18 11:31:18','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-18 12:17:38','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-18 12:18:56','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-18 12:28:44','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com ','2017-11-18 12:33:48','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-18 13:23:12','2017-12-01 09:35:53',NULL),('bacisorclaudiu@yahoo.com','2017-11-18 14:03:54','2017-11-18 14:49:45',NULL),('bacisorclaudiu@yahoo.com','2017-11-18 14:22:40','2017-11-18 14:49:45',NULL),('bacisorclaudiu@yahoo.com','2017-11-18 14:39:43','2017-11-18 14:49:45',NULL),('InnaGTA@yahoo.com','2017-11-19 00:37:58','2017-12-01 09:35:53',NULL),('mhm@mhm.ca','2017-11-20 12:21:12','2017-12-01 09:29:42',NULL),('aaa@hotmail.com','2017-11-21 21:04:20','2017-11-29 11:50:48',NULL),('aaa@hotmail.com','2017-11-21 21:20:53','2017-11-29 11:50:48',NULL),('aaa@hotmail.com','2017-11-21 21:45:03','2017-11-29 11:50:48',NULL),('aaa@hotmail.com','2017-11-21 21:52:24','2017-11-29 11:50:48',NULL),('aaa@hotmail.com','2017-11-22 15:20:27','2017-11-29 11:50:48',NULL),('aaa@hotmail.com','2017-11-22 15:52:57','2017-11-29 11:50:48',NULL),('aaa@hotmail.com','2017-11-22 15:57:28','2017-11-29 11:50:48',NULL),('aaa@hotmail.com','2017-11-22 15:59:08','2017-11-29 11:50:48',NULL),('aaa@hotmail.com','2017-11-22 16:00:55','2017-11-29 11:50:48',NULL),('secret@island.com','2017-11-22 21:13:12','2017-11-29 15:49:04',NULL),('baba@test.com','2017-11-22 21:19:25','2017-11-24 01:48:13',NULL),('mhm@mhm.ca','2017-11-22 21:46:09','2017-12-01 09:29:42',NULL),('mhm@mhm.ca','2017-11-22 21:47:58','2017-12-01 09:29:42',NULL),('mhm@mhm.ca','2017-11-22 21:50:06','2017-12-01 09:29:42',NULL),('secret@island.com','2017-11-22 22:01:50','2017-11-29 15:49:04',NULL),('InnaGTA@yahoo.com','2017-11-22 22:04:15','2017-12-01 09:35:53',NULL),('mhm@mhm.ca','2017-11-22 22:48:45','2017-12-01 09:29:42',NULL),('mhm@mhm.ca','2017-11-22 23:26:19','2017-12-01 09:29:42',NULL),('mhm@mhm.ca','2017-11-22 23:59:16','2017-12-01 09:29:42',NULL),('InnaGTA@yahoo.com','2017-11-23 00:44:36','2017-12-01 09:35:53',NULL),('asdda@yahoo.com','2017-11-23 01:23:54','2017-11-24 16:47:30',NULL),('aaa@hotmail.com','2017-11-23 14:00:21','2017-11-29 11:50:48',NULL),('aaa@hotmail.com ','2017-11-23 14:02:47','2017-11-29 11:50:48',NULL),('aaa@hotmail.com ','2017-11-23 14:07:15','2017-11-29 11:50:48',NULL),('aaa@hotmail.com','2017-11-23 14:17:35','2017-11-29 11:50:48',NULL),('mhm@mhm.ca','2017-11-23 15:33:43','2017-12-01 09:29:42',NULL),('secret@island.com','2017-11-23 18:20:40','2017-11-29 15:49:04',NULL),('InnaGTA@yahoo.com','2017-11-23 21:24:41','2017-12-01 09:35:53',NULL),('aaa@hotmail.com','2017-11-23 21:26:34','2017-11-29 11:50:48',NULL),('secret@island.com','2017-11-23 22:06:13','2017-11-29 15:49:04',NULL),('InnaGTA@yahoo.com','2017-11-23 22:56:34','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-23 23:40:23','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-23 23:43:04','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-24 00:29:39','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-24 00:32:19','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-24 00:34:54','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-24 00:44:49','2017-12-01 09:35:53',NULL),('secret@island.com','2017-11-24 00:56:08','2017-11-29 15:49:04',NULL),('secret@island.com','2017-11-24 01:35:06','2017-11-29 15:49:04',NULL),('baba@test.com','2017-11-24 01:45:48','2017-11-24 01:48:13',NULL),('InnaGTA@yahoo.com','2017-11-24 15:08:55','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-24 15:50:14','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com ','2017-11-24 16:02:12','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-24 16:04:58','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-24 16:06:36','2017-12-01 09:35:53',NULL),('InnaGTA@yahoo.com','2017-11-24 16:08:32','2017-12-01 09:35:53',NULL),('asdda@yahoo.com','2017-11-24 16:47:27','2017-11-24 16:47:30',NULL),('mhm@mhm.ca','2017-11-24 16:48:06','2017-12-01 09:29:42',NULL),('InnaGTA@yahoo.com','2017-11-24 16:48:31','2017-12-01 09:35:53','2017-11-24 16:50:27'),('InnaGTA@yahoo.com','2017-11-24 16:54:06','2017-12-01 09:35:53','2017-11-24 16:59:51'),('InnaGTA@yahoo.com','2017-11-24 17:31:37','2017-12-01 09:35:53',NULL),('aaa@hotmail.com','2017-11-29 11:46:54','2017-11-29 11:50:48','2017-11-29 11:49:25'),('secret@island.com','2017-11-29 12:09:40','2017-11-29 15:49:04',NULL),('mhm@mhm.ca','2017-11-29 14:40:41','2017-12-01 09:29:42',NULL),('secret@island.com','2017-11-29 15:47:36','2017-11-29 15:49:04','2017-11-29 15:48:41'),('soen387concordia222@gmail.com','2017-11-30 21:56:39','2017-12-01 14:55:33',NULL),('soen387concordia222@gmail.com ','2017-11-30 22:25:10','2017-12-01 14:55:33','2017-11-30 22:34:55'),('soen387concordia222@gmail.com','2017-11-30 22:38:08','2017-12-01 14:55:33','2017-11-30 22:46:45'),('soen387concordia222@gmail.com','2017-11-30 22:53:45','2017-12-01 14:55:33','2017-11-30 23:20:21'),('soen387concordia222@gmail.com','2017-11-30 23:23:41','2017-12-01 14:55:33','2017-11-30 23:46:35'),('mhm@mhm.ca','2017-12-01 09:26:18','2017-12-01 09:29:42','2017-12-01 09:28:40'),('InnaGTA@yahoo.com','2017-12-01 09:30:13','2017-12-01 09:35:53',NULL),('soen387concordia222@gmail.com','2017-12-01 14:32:14','2017-12-01 14:55:33',NULL),('soen387concordia222@gmail.com','2017-12-01 14:52:29','2017-12-01 14:55:33','2017-12-01 14:55:12');
/*!40000 ALTER TABLE `timetable2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-04 12:10:26
