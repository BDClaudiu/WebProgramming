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
-- Table structure for table `usertable`
--

DROP TABLE IF EXISTS `usertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertable` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(320) NOT NULL,
  `address1` varchar(45) NOT NULL,
  `address2` varchar(45) DEFAULT NULL,
  `city` varchar(45) NOT NULL,
  `zip` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `credit_card_type` varchar(45) NOT NULL,
  `credit_card_number` bigint(16) NOT NULL,
  `credit_card_cvv` int(3) NOT NULL,
  `credit_card_expiry` date NOT NULL,
  `state` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `userid_UNIQUE` (`userid`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `credit_card_number_UNIQUE` (`credit_card_number`),
  UNIQUE KEY `credit_card_cvv_UNIQUE` (`credit_card_cvv`),
  UNIQUE KEY `credit_card_expiry_UNIQUE` (`credit_card_expiry`),
  UNIQUE KEY `password_UNIQUE` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertable`
--

LOCK TABLES `usertable` WRITE;
/*!40000 ALTER TABLE `usertable` DISABLE KEYS */;
INSERT INTO `usertable` VALUES (1,'claudiu','bacisor','bcd@yahoo.ca','1820 saint catherine',NULL,'montreal','ja6 1c6','canada','mastercard',1111222233334561,231,'2020-03-26','QC','pass123'),(2,'jess','maria','aaa@hotmail.com','533 brebeuf',NULL,'montreal','d2s 1y6','canada','visa',2342453534563563,524,'2018-02-18','QC','mypass'),(3,'test','claudiu','adsdad','dadasd','daddqda','quebec','adad','dadad','ada',123123123123,123,'2011-11-11','adad','asdad'),(5,'Inna','GTA','InnaGTA@yahoo.com','1212 concordia','#510','Berlin','111xxx1','Argentina','visa',1231231231231234,545,'2050-11-11','California','123123'),(7,'Wonder','Woman','secret@island.com','oceania 001','#23432','howknows','bermuda','NoWhere','howneedsone?',2343456543456543,444,'2050-10-10','noName','superman'),(8,'tired','reallytired','mhm@mhm.ca','445 martanus','','Mexico','445 j5a','Nowhere','visa',4567654345676543,334,'2020-06-03','Peru','popo09'),(9,'test222','test333','baba@test.com','23323 montreal','','montreal','33d 44v','egypc','blackOne',3433345558,956,'2017-07-05','covasna','swsw00'),(10,'claudiudu','bacisor','asdda@yahoo.com','2323 asdad','','monasdd','23f3ds','asdadad','master',987654567876567,223,'2010-11-02','asad','asd123'),(12,'demo','asdada','asdad','addsa','','dadad','asadada','adadad','maste',34565455664,333,'2018-11-11','asdad','dede123');
/*!40000 ALTER TABLE `usertable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-14 10:00:08
