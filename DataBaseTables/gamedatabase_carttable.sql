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
-- Table structure for table `carttable`
--

DROP TABLE IF EXISTS `carttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carttable` (
  `email` varchar(320) NOT NULL,
  `gamename` varchar(45) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `completed` int(11) DEFAULT NULL,
  `purchaseDate` datetime DEFAULT NULL,
  `purchaseID` varchar(105) DEFAULT NULL,
  PRIMARY KEY (`email`,`gamename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carttable`
--

LOCK TABLES `carttable` WRITE;
/*!40000 ALTER TABLE `carttable` DISABLE KEYS */;
INSERT INTO `carttable` VALUES ('InnaGTA@yahoo.com','Oddworld: new n tasty',45,20,1,NULL,NULL,NULL),('InnaGTA@yahoo.com','Super smash bros: project m',33,3,1,NULL,NULL,NULL),('InnaGTA@yahoo.com','The legend of zelda:breath of the Wild',55,10,1,NULL,NULL,NULL),('mhm@mhm.ca','Classic nes series',10,0,1,1,'2017-12-01 09:28:40','b9688443-9d9d-4e2f-b913-652ed4cc12eb'),('mhm@mhm.ca','Ken griffey major league',10,0,1,1,'2017-12-01 09:28:40','b9688443-9d9d-4e2f-b913-652ed4cc12eb'),('mhm@mhm.ca','Mvp baseball 2004',15,0,1,1,'2017-12-01 09:28:40','b9688443-9d9d-4e2f-b913-652ed4cc12eb'),('mhm@mhm.ca','Oddworld: new n tasty',45,20,1,NULL,NULL,NULL),('mhm@mhm.ca','P.t.',20,10,1,NULL,NULL,NULL),('mhm@mhm.ca','Super smash bros: project m',33,3,1,NULL,NULL,NULL),('mhm@mhm.ca','The legend of zelda:breath of the Wild',55,10,1,NULL,NULL,NULL),('mhm@mhm.ca','Yuu yuu hakusho',10,0,1,1,'2017-12-01 09:28:40','b9688443-9d9d-4e2f-b913-652ed4cc12eb'),('soen387concordia222@gmail.com','Metal of honor: underground',54,3,4,1,'2017-12-01 14:55:12','ed033f6e-6fb9-4fce-a29b-d28c7e2f4d30'),('soen387concordia222@gmail.com','Pirates: the legend of black kat',27,0,1,1,'2017-12-01 14:55:12','ed033f6e-6fb9-4fce-a29b-d28c7e2f4d30'),('soen387concordia222@gmail.com','Rolie polie olie 2',50,0,1,1,'2017-12-01 14:55:12','ed033f6e-6fb9-4fce-a29b-d28c7e2f4d30');
/*!40000 ALTER TABLE `carttable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-04 12:10:27
