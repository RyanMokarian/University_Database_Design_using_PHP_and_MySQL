-- MySQL dump 10.13  Distrib 5.6.43, for Linux (x86_64)
--
-- Host: qqc5531.encs.concordia.ca    Database: qqc55311
-- ------------------------------------------------------
-- Server version	5.6.43

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
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `addressId` int(11) NOT NULL DEFAULT '0',
  `civicNumber` int(11) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `postalCode` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES (1,101,'Montreal','Quebec','H9A3C1'),(2,102,'Montreal','Quebec','H9A3C2'),(3,103,'Montreal','Quebec','H9A3C3'),(4,104,'Montreal','Quebec','H9A3C4'),(5,105,'Montreal','Quebec','H9A3C5'),(6,106,'Montreal','Quebec','H9A3C6'),(7,107,'Montreal','Quebec','H9A3C7'),(8,108,'Montreal','Quebec','H9A3C8'),(9,109,'Montreal','Quebec','H9A3C9'),(10,110,'Montreal','Quebec','H9A3D1'),(11,111,'Montreal','Quebec','H9A3D2'),(12,112,'Montreal','Quebec','H9A3D3'),(13,113,'Montreal','Quebec','H9A3D4'),(14,114,'Montreal','Quebec','H9A3D5'),(15,115,'Montreal','Quebec','H9A3D6'),(16,116,'Montreal','Quebec','H9A3D7'),(17,117,'Montreal','Quebec','H9A3D8'),(18,118,'Toronto','Ontario','M4N1A1'),(19,119,'Toronto','Ontario','M4N1A2'),(20,120,'Toronto','Ontario','M4N1A3'),(21,121,'Toronto','Ontario','M4N1A4'),(22,122,'Toronto','Ontario','M4N1A5'),(23,123,'Toronto','Ontario','M4N1A6'),(24,124,'Toronto','Ontario','M4N1A7'),(25,125,'Toronto','Ontario','M4N1A8'),(26,126,'Toronto','Ontario','M4N1A9'),(27,127,'Toronto','Ontario','M4N1B1'),(28,128,'Verdun','Quebec','H1A1A1'),(29,129,'Verdun','Quebec','H1A1A2'),(30,130,'Verdun','Quebec','H1A1A3'),(31,131,'Verdun','Quebec','H1A1A4'),(32,132,'Verdun','Quebec','H1A1A5'),(33,133,'Verdun','Quebec','H1A1A6'),(34,134,'Verdun','Quebec','H1A1A7'),(35,135,'Verdun','Quebec','H1A1A8'),(36,136,'Verdun','Quebec','H1A1A9'),(37,137,'Verdun','Quebec','H1B1B1'),(38,138,'Verdun','Quebec','H1B1B2'),(39,139,'Verdun','Quebec','H1B1B3'),(40,140,'Verdun','Quebec','H1B1B4'),(41,141,'Verdun','Quebec','H1B1B5'),(42,142,'Verdun','Quebec','H1B1B6'),(43,143,'Verdun','Quebec','H1B1B7'),(44,144,'Verdun','Quebec','H1B1B8'),(45,145,'Verdun','Quebec','H2C2C1'),(46,146,'Verdun','Quebec','H2C2C2'),(47,147,'Verdun','Quebec','H2C2C3'),(48,148,'Verdun','Quebec','H2C2C4'),(49,149,'Verdun','Quebec','H2C2C5'),(50,150,'Verdun','Quebec','H2C2C6'),(51,151,'Verdun','Quebec','H2C2C7'),(52,152,'Verdun','Quebec','H2C2C8'),(53,153,'Verdun','Quebec','H2C2C9'),(54,154,'Verdun','Quebec','H3C3C1'),(55,155,'Verdun','Quebec','H3C3C2'),(56,156,'Verdun','Quebec','H3C3C3'),(57,157,'Verdun','Quebec','H3C3C4'),(58,158,'Verdun','Quebec','H3C3C5'),(59,159,'Verdun','Quebec','H3C3C6'),(60,160,'Verdun','Quebec','H3C3C7'),(61,161,'Verdun','Quebec','H3C3C8'),(62,162,'Verdun','Quebec','H4G2A1'),(63,163,'Verdun','Quebec','H4G2A2'),(64,164,'Verdun','Quebec','H4G2A3'),(65,165,'Verdun','Quebec','H4G2A4'),(66,166,'Verdun','Quebec','H4G2A5'),(67,167,'Verdun','Quebec','H4G2A6'),(68,168,'Verdun','Quebec','H4G2A7'),(69,169,'Verdun','Quebec','H4G2A8'),(70,170,'Verdun','Quebec','H4G2A9'),(71,171,'Verdun','Quebec','H4N4A1'),(72,172,'Verdun','Quebec','H4N4A2'),(73,173,'NDG','Quebec','H4N4A3'),(74,174,'NDG','Quebec','H4N4A4'),(75,175,'NDG','Quebec','H4N4A5'),(76,176,'NDG','Quebec','H4N4A6'),(77,177,'NDG','Quebec','H4N4A7'),(78,178,'NDG','Quebec','H4N4A8'),(79,179,'NDG','Quebec','H4N4A9'),(80,180,'NDG','Quebec','H5K2B1'),(81,181,'NDG','Quebec','H5K2B2'),(82,182,'NDG','Quebec','H5K2B3'),(83,183,'NDG','Quebec','H5K2B4'),(84,184,'NDG','Quebec','H5K2B5'),(85,185,'NDG','Quebec','H5K2B6'),(86,186,'NDG','Quebec','H5K2B7'),(87,187,'NDG','Quebec','H5K2B8'),(88,188,'NDG','Quebec','H5K2B9'),(89,189,'NDG','Quebec','H6J3A1'),(90,190,'NDG','Quebec','H6J3A2');
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Award`
--

DROP TABLE IF EXISTS `Award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Award` (
  `pId` int(11) NOT NULL DEFAULT '0',
  `awardId` int(11) NOT NULL DEFAULT '0',
  `awardDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pId`,`awardId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Award`
--

LOCK TABLES `Award` WRITE;
/*!40000 ALTER TABLE `Award` DISABLE KEYS */;
INSERT INTO `Award` VALUES (1,1,'Scholarship'),(1,2,'Honor Roll'),(1,3,'National Merit'),(1,4,'Subject-based award'),(2,1,'Scholarship'),(2,2,'Honor Roll'),(2,3,'National Merit'),(2,4,'Subject-based award'),(3,1,'Scholarship'),(4,2,'Honor Roll'),(5,3,'National Merit'),(6,4,'Subject-based award'),(7,1,'Scholarship'),(8,2,'Honor Roll'),(9,3,'National Merit'),(10,1,'Scholarship'),(10,2,'Honor Roll'),(10,3,'National Merit'),(10,4,'Subject-based award'),(20,4,'Subject-based award'),(21,1,'Scholarship'),(22,2,'Honor Roll'),(23,3,'National Merit'),(24,4,'Subject-based award'),(25,1,'Scholarship');
/*!40000 ALTER TABLE `Award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Building`
--

DROP TABLE IF EXISTS `Building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Building` (
  `buildingId` int(11) NOT NULL DEFAULT '0',
  `floorId` int(11) NOT NULL DEFAULT '0',
  `addressId` int(11) DEFAULT NULL,
  `floor` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`buildingId`,`floorId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Building`
--

LOCK TABLES `Building` WRITE;
/*!40000 ALTER TABLE `Building` DISABLE KEYS */;
INSERT INTO `Building` VALUES (1,1,1,'1'),(2,1,2,'1'),(2,2,2,'2'),(3,1,3,'1'),(3,2,3,'2'),(3,3,3,'3');
/*!40000 ALTER TABLE `Building` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Campus`
--

DROP TABLE IF EXISTS `Campus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Campus` (
  `campusId` int(11) NOT NULL DEFAULT '0',
  `buildingId` int(11) NOT NULL DEFAULT '0',
  `numFloors` int(11) DEFAULT NULL,
  PRIMARY KEY (`campusId`,`buildingId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Campus`
--

LOCK TABLES `Campus` WRITE;
/*!40000 ALTER TABLE `Campus` DISABLE KEYS */;
INSERT INTO `Campus` VALUES (1,1,1),(1,2,2),(1,3,3),(2,1,1),(2,2,2),(2,3,3),(3,1,1),(3,2,2),(3,3,3),(4,1,1);
/*!40000 ALTER TABLE `Campus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course`
--

DROP TABLE IF EXISTS `Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Course` (
  `courseId` int(11) NOT NULL DEFAULT '0',
  `programId` int(11) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`courseId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course`
--

LOCK TABLES `Course` WRITE;
/*!40000 ALTER TABLE `Course` DISABLE KEYS */;
INSERT INTO `Course` VALUES (1,1,'Operating Systems'),(2,1,'Artificial Intelligence'),(3,1,'Bioinformatics'),(4,2,'Modern Poetry'),(5,2,'Post-modern Literature'),(6,2,'Persuasive Writing'),(7,1,'Mechanics'),(8,1,'Electromagnetism'),(9,1,'Quantum Physics'),(10,1,'Chemistry I'),(11,1,'Chemistry II'),(12,1,'Chemistry III'),(13,1,'Calculus I'),(14,1,'Calculus II'),(15,1,'Linear Algebra'),(16,3,'Intro to Critical Race Theory'),(17,3,'Gendered Violence'),(18,3,'Feminist Thought'),(19,3,'Intro to Political Theory'),(20,3,'Intro to American Politics'),(21,3,'Intro to Intl. Relations'),(22,4,'Managerial Economics'),(23,4,'Financial Markets'),(24,4,'Intro to Strategic Thinking'),(25,5,'Modern Philosophy'),(26,5,'Greek Philosophy'),(27,5,'Existentialism'),(28,1,'Social Psychology'),(29,1,'Cognitive Psychology'),(30,1,'Abnormal Psychology');
/*!40000 ALTER TABLE `Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Degree`
--

DROP TABLE IF EXISTS `Degree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Degree` (
  `pId` int(11) NOT NULL DEFAULT '0',
  `degreeId` int(11) NOT NULL DEFAULT '0',
  `degreeDescription` varchar(255) DEFAULT NULL,
  `institutionName` varchar(255) DEFAULT NULL,
  `dateReceived` date DEFAULT NULL,
  `degreeName` varchar(255) DEFAULT NULL,
  `overallAverage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pId`,`degreeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Degree`
--

LOCK TABLES `Degree` WRITE;
/*!40000 ALTER TABLE `Degree` DISABLE KEYS */;
INSERT INTO `Degree` VALUES (1,1,'High School','LPHS','2007-04-27','High School','A'),(1,2,'Cegep','John Abbott','2008-08-23','Cegep','B'),(1,3,'Undergraduate','Concordia','2009-08-14','Undergraduate','C'),(1,4,'Undergraduate','McGill','2007-11-13','Undergraduate','D'),(2,1,'High School','PCHS','2006-08-23','High School','D'),(2,2,'Cegep','Dawson','1999-09-03','Cegep','C'),(2,3,'Undergraduate','Concordia','2011-02-17','Undergraduate','B'),(2,4,'Undergraduate','McGill','1999-11-23','Undergraduate','A'),(3,5,'High School','LPHS','2009-07-10','High School','A'),(4,6,'Cegep','Dawson','2004-11-13','Cegep','B'),(5,7,'Undergraduate','Concordia','2001-04-19','Undergraduate','C'),(6,8,'Undergraduate','McGill','2009-05-02','Undergraduate','D'),(7,9,'High School','PCHS','2009-12-07','High School','D'),(8,10,'Cegep','Vanier','1999-11-12','Cegep','C'),(9,11,'Undergraduate','Concordia','2017-04-09','Undergraduate','B'),(10,1,'High School','LPHS','2004-11-12','High School','A'),(10,2,'Cegep','John Abbott','2013-09-02','Cegep','B'),(10,3,'Undergraduate','Concordia','2012-02-27','Undergraduate','C'),(10,12,'Undergraduate','McGill','2017-03-19','Undergraduate','A'),(20,4,'Undergraduate','McGill','2013-03-23','Undergraduate','D'),(21,5,'High School','LPHS','2013-04-28','High School','D'),(22,6,'Cegep','John Abbott','2014-01-28','Cegep','C'),(23,7,'Undergraduate','Concordia','2011-05-16','Undergraduate','B'),(24,8,'Undergraduate','McGill','2003-07-13','Undergraduate','A'),(25,9,'High School','LPHS','1995-05-29','High School','A'),(26,10,'Cegep','John Abbott','2017-08-12','Cegep','B'),(27,11,'Undergraduate','Concordia','2004-03-27','Undergraduate','C'),(28,12,'Undergraduate','Concordia','2015-05-13','Undergraduate','D'),(29,1,'High School','LPHS','2010-04-05','High School','D'),(30,2,'Cegep','Dawson','1998-03-24','Cegep','C'),(31,3,'Undergraduate','Concordia','2014-05-26','Undergraduate','B'),(32,4,'Undergraduate','McGill','2018-04-19','Undergraduate','A'),(33,1,'High School','LPHS','1999-02-21','High School','A'),(34,2,'Cegep','John Abbott','2013-01-05','Cegep','B'),(35,3,'Undergraduate','Concordia','2010-12-01','Undergraduate','C'),(36,4,'Undergraduate','McGill','2000-07-28','Undergraduate','D'),(37,5,'High School','LPHS','2011-04-07','High School','D'),(38,6,'Cegep','John Abbott','2014-10-15','Cegep','C'),(39,7,'Undergraduate','Concordia','2012-03-22','Undergraduate','B'),(40,8,'Undergraduate','McGill','2009-06-04','Undergraduate','A'),(41,9,'High School','LPHS','2001-09-26','High School','A'),(42,10,'Cegep','John Abbott','2002-02-18','Cegep','A'),(43,11,'Undergraduate','Concordia','2003-08-09','Undergraduate','B'),(44,12,'Undergraduate','McGill','2001-03-05','Undergraduate','C'),(45,1,'High School','LPHS','2018-11-09','High School','D'),(46,2,'Cegep','John Abbott','2016-06-27','Cegep','D'),(47,3,'Undergraduate','Concordia','2017-02-15','Undergraduate','C'),(48,4,'Undergraduate','McGill','2002-05-03','Undergraduate','B'),(49,5,'High School','LPHS','1996-11-10','High School','A'),(50,6,'Cegep','Dawson','2012-04-12','Cegep','A');
/*!40000 ALTER TABLE `Degree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Department` (
  `departmentId` int(11) NOT NULL DEFAULT '0',
  `pId` int(11) DEFAULT NULL,
  PRIMARY KEY (`departmentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES (1,61),(2,62),(3,63),(4,64),(5,65),(6,66),(7,67),(8,68),(9,69),(10,70);
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Experience`
--

DROP TABLE IF EXISTS `Experience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Experience` (
  `pId` int(11) NOT NULL DEFAULT '0',
  `experienceId` int(11) NOT NULL DEFAULT '0',
  `experienceDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pId`,`experienceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Experience`
--

LOCK TABLES `Experience` WRITE;
/*!40000 ALTER TABLE `Experience` DISABLE KEYS */;
INSERT INTO `Experience` VALUES (1,1,'Worked as a coder'),(1,2,'Worked in retail'),(1,3,'Worked construction'),(1,4,'Participated in debates'),(2,1,'Worked as a coder'),(2,2,'Worked in retail'),(2,3,'Worked in construction'),(2,4,'Participated in debates'),(3,5,'Slept a lot'),(4,6,'Hackathon participant'),(5,7,'Lived as a monk'),(6,8,'Professional assassin'),(7,9,'Skipped high school'),(8,10,'Played video games'),(9,11,'Read comics'),(10,1,'Worked as a coder'),(10,2,'Worked in retail'),(10,3,'Worked construction'),(10,12,'Excelled at D&D'),(20,4,'Participated in debates'),(21,5,'Slept a lot'),(22,6,'Hackathon participant'),(23,7,'Lived as a monk'),(24,8,'Professional assassin'),(25,9,'Skipped high school'),(26,10,'Played video games'),(27,11,'Read comics'),(28,12,'Excelled at D&D'),(29,1,'Worked as a coder'),(30,2,'Worked in retail'),(31,3,'Worked in construction'),(32,4,'Participated in debates'),(33,1,'Worked as a coder'),(34,2,'Worked in retail'),(35,3,'Worked construction'),(36,4,'Participated in debates'),(37,5,'Slept a lot'),(38,6,'Hackathon participant'),(39,7,'Lived as a monk'),(40,8,'Professional assassin'),(41,9,'Skipped high school'),(42,10,'Played video games'),(43,11,'Read comics'),(44,12,'Excelled at D&D'),(45,1,'Worked as a coder'),(46,2,'Worked in retail'),(47,3,'Worked construction'),(48,4,'Participated in debates'),(49,5,'Slept a lot'),(50,6,'Hackathon participant');
/*!40000 ALTER TABLE `Experience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Facility`
--

DROP TABLE IF EXISTS `Facility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Facility` (
  `facilityId` int(11) NOT NULL DEFAULT '0',
  `roomId` int(11) DEFAULT NULL,
  `facilityDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`facilityId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Facility`
--

LOCK TABLES `Facility` WRITE;
/*!40000 ALTER TABLE `Facility` DISABLE KEYS */;
INSERT INTO `Facility` VALUES (1,1,'Classroom'),(2,2,'Lab'),(3,3,'Conference  room'),(4,4,'Classroom'),(5,5,'Classroom'),(6,6,'Classroom'),(7,7,'Classroom'),(8,8,'Lab'),(9,9,'Lab'),(10,10,'Conference  room');
/*!40000 ALTER TABLE `Facility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Floor`
--

DROP TABLE IF EXISTS `Floor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Floor` (
  `floorId` int(11) NOT NULL DEFAULT '0',
  `roomId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`floorId`,`roomId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Floor`
--

LOCK TABLES `Floor` WRITE;
/*!40000 ALTER TABLE `Floor` DISABLE KEYS */;
INSERT INTO `Floor` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(3,4);
/*!40000 ALTER TABLE `Floor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Instructor`
--

DROP TABLE IF EXISTS `Instructor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Instructor` (
  `pId` int(11) NOT NULL DEFAULT '0',
  `programId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pId`,`programId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Instructor`
--

LOCK TABLES `Instructor` WRITE;
/*!40000 ALTER TABLE `Instructor` DISABLE KEYS */;
INSERT INTO `Instructor` VALUES (61,10),(62,1),(63,1),(64,10),(65,8),(66,9),(67,5),(68,4),(69,9),(70,6),(71,4),(72,1),(73,3),(74,3),(75,4),(76,7),(77,2),(78,5),(79,5),(80,1),(81,5),(82,1),(83,5),(84,1),(85,2),(86,10),(87,9),(88,3),(89,8);
/*!40000 ALTER TABLE `Instructor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Person`
--

DROP TABLE IF EXISTS `Person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Person` (
  `pId` int(11) NOT NULL DEFAULT '0',
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `ssn` int(11) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `addressId` int(11) DEFAULT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Person`
--

LOCK TABLES `Person` WRITE;
/*!40000 ALTER TABLE `Person` DISABLE KEYS */;
INSERT INTO `Person` VALUES (1,'Aaron','Oliver',123456781,5141234567,'aaron.oliver1@whatever.com',1),(2,'Adam','Goodman',123456782,5141234568,'adam.goodman2@whatever.com',2),(3,'Abdel','Lyons',123456783,5141234569,'abdel.lyons3@whatever.com',3),(4,'Alex','Lucas',123456784,5141234570,'alex.lucas4@whatever.com',4),(5,'Alice','Richardson',123456785,5141234571,'alice.richardson5@whatever.com',5),(6,'Bob','Schultz',123456786,5141234572,'bob.schultz6@whatever.com',6),(7,'Brianna','Stone',123456787,5141234573,'brianna.stone7@whatever.com',7),(8,'Bilal','Swanson',123456788,5141234574,'bilal.swanson8@whatever.com',8),(9,'Benoit','Yates',123456789,5141234575,'benoit.yates9@whatever.com',9),(10,'Betty','Day',223456781,5141234576,'betty.day10@whatever.com',10),(11,'Carly','Padilla',223456782,5141234577,'carly.padilla11@whatever.com',11),(12,'Christine','Dawson',223456783,5141234578,'christine.dawson12@whatever.com',12),(13,'Charles','Sullivan',223456784,5141234579,'charles.sullivan13@whatever.com',13),(14,'Connie','Blake',223456785,5141234580,'connie.blake14@whatever.com',14),(15,'Cerrie','Norris',223456786,5141234581,'cerrie.norris15@whatever.com',15),(16,'Donald','Walker',223456787,5141234582,'donald.walker16@whatever.com',16),(17,'Denise','Snyder',223456788,5141234583,'denise.snyder17@whatever.com',17),(18,'Dexter','Caldwell',223456789,5141234584,'dexter.caldwell18@whatever.com',18),(19,'Debbie','Crawford',323456781,5141234585,'debbie.crawford19@whatever.com',19),(20,'Earl','Hicks',323456782,5141234586,'earl.hicks20@whatever.com',20),(21,'Erlaine','Farmer',323456783,5141234587,'erlaine.farmer21@whatever.com',21),(22,'Frannie','Ramos',323456784,5141234588,'frannie.ramos22@whatever.com',22),(23,'Felix','Webb',323456785,5141234589,'felix.webb23@whatever.com',23),(24,'Greg','Payne',323456786,5141234590,'greg.payne24@whatever.com',24),(25,'Geoff','Meyer',323456787,5141234591,'geoff.meyer25@whatever.com',25),(26,'Gale','Phillips',323456788,5141234592,'gale.phillips26@whatever.com',26),(27,'Harry','Green',323456789,5141234593,'harry.green27@whatever.com',27),(28,'Henrietta','Hammond',423456781,5141234594,'henrietta.hammond28@whatever.com',28),(29,'Iago','Mills',423456782,5141234595,'iago.mills29@whatever.com',29),(30,'Ian','Stuart',423456783,5141234596,'ian.stuart30@whatever.com',30),(31,'Ike','Leon',423456784,5141234597,'ike.leon31@whatever.com',31),(32,'Ignacius','Li',423456785,5141234598,'ignacius.li32@whatever.com',32),(33,'Jason','Ferguson',423456786,5141234599,'jason.ferguson33@whatever.com',33),(34,'Jacob','Guzman',423456787,5141234600,'jacob.guzman34@whatever.com',34),(35,'Jacinthe','Hubbard',423456788,5141234601,'jacinthe.hubbard35@whatever.com',35),(36,'Jackelyn','Baird',423456789,5141234602,'jackelyn.baird36@whatever.com',36),(37,'Joelle','Porter',523456781,5141234603,'joelle.porter37@whatever.com',37),(38,'Kyle','George',523456782,5141234604,'kyle.george38@whatever.com',38),(39,'Kacy','Wade',523456783,5141234605,'kacy.wade39@whatever.com',39),(40,'Karen','Daniels',523456784,5141234606,'karen.daniels40@whatever.com',40),(41,'Kalee','James',523456785,5141234607,'kalee.james41@whatever.com',41),(42,'Kaleb','Mcguire',523456786,5141234608,'kaleb.mcguire42@whatever.com',42),(43,'Kaie','Santos',523456787,5141234609,'kaie.santos43@whatever.com',43),(44,'Lamar','Howard',523456788,5141234610,'lamar.howard44@whatever.com',44),(45,'Laban','Vasquez',523456789,5141234611,'laban.vasquez45@whatever.com',45),(46,'Lammont','Humphrey',623456781,5141234612,'lammont.humphrey46@whatever.com',46),(47,'Lachlan','Calderon',623456782,5141234613,'lachlan.calderon47@whatever.com',47),(48,'Leslie','Woods',623456783,5141234614,'leslie.woods48@whatever.com',48),(49,'Lacy','Morgan',623456784,5141234615,'lacy.morgan49@whatever.com',49),(50,'Layla','Mason',623456785,5141234616,'layla.mason50@whatever.com',50),(51,'Lana','Ray',623456786,5141234617,'lana.ray51@whatever.com',51),(52,'Mac','Harrington',623456787,5141234618,'mac.harrington52@whatever.com',52),(53,'Martin','Harris',623456788,5141234619,'martin.harris53@whatever.com',53),(54,'Maddy','Moss',623456789,5141234620,'maddy.moss54@whatever.com',54),(55,'Macaulay','Vaughn',723456781,5141234621,'macaulay.vaughn55@whatever.com',55),(56,'Mae','Fraser',723456782,5141234622,'mae.fraser56@whatever.com',56),(57,'Nassir','Weston',723456783,5141234623,'nassir.weston57@whatever.com',57),(58,'Nas','Flores',723456784,5141234624,'nas.flores58@whatever.com',58),(59,'Nadene','Gibbs',723456785,5141234625,'nadene.gibbs59@whatever.com',59),(60,'Nora','Lee',723456786,5141234626,'nora.lee60@whatever.com',60),(61,'Nya','Anderson',723456787,5141234627,'nya.anderson61@whatever.com',61),(62,'Odessa','Gordon',723456788,5141234628,'odessa.gordon62@whatever.com',62),(63,'Oberon','Higgins',723456789,5141234629,'oberon.higgins63@whatever.com',63),(64,'Olwen','Nichols',823456781,5141234630,'olwen.nichols64@whatever.com',64),(65,'Odil','Lawson',823456782,5141234631,'odil.lawson65@whatever.com',65),(66,'Ola','Valdez',823456783,5141234632,'ola.valdez66@whatever.com',66),(67,'Oren','Love',823456784,5141234633,'oren.love67@whatever.com',67),(68,'Orson','Ortiz',823456785,5141234634,'orson.ortiz68@whatever.com',68),(69,'Oswald','Stevens',823456786,5141234635,'oswald.stevens69@whatever.com',69),(70,'Pablo','Patel',823456787,5141234636,'pablo.patel70@whatever.com',70),(71,'Paolo','Solis',823456788,5141234637,'paolo.solis71@whatever.com',71),(72,'Paco','Grant',823456789,5141234638,'paco.grant72@whatever.com',72),(73,'Parker','Fields',923456781,5141234639,'parker.fields73@whatever.com',73),(74,'Pascal','Zimmerman',923456782,5141234640,'pascal.zimmerman74@whatever.com',74),(75,'Patrick','Cummings',923456783,5141234641,'patrick.cummings75@whatever.com',75),(76,'Patricia','Wagner',923456784,5141234642,'patricia.wagner76@whatever.com',76),(77,'Pamela','Bailey',923456785,5141234643,'pamela.bailey77@whatever.com',77),(78,'Pauleen','Webster',923456786,5141234644,'pauleen.webster78@whatever.com',78),(79,'Rafael','Carpenter',923456787,5141234645,'rafael.carpenter79@whatever.com',79),(80,'Robert','Wilkerson',923456788,5141234646,'robert.wilkerson80@whatever.com',80),(81,'Rain','Phelps',923456789,5141234647,'rain.phelps81@whatever.com',81),(82,'Rae','Scott',111111111,5141234648,'rae.scott82@whatever.com',82),(83,'Randy','Valencia',222222222,5141234649,'randy.valencia83@whatever.com',83),(84,'Sandy','Williams',333333333,5141234650,'sandy.williams84@whatever.com',84),(85,'Solomon','Grundy',444444444,5141234651,'solomon.grundy85@whatever.com',85),(86,'Samuel','Cyr',555555555,5141234652,'samuel.cyr86@whatever.com',86),(87,'Selwyn','House',666666666,5141234653,'selwyn.house87@whatever.com',87),(88,'Selina','Stevenson',777777777,5141234654,'selina.stevenson88@whatever.com',88),(89,'Serena','Williams',888888888,5141234655,'serena.williams89@whatever.com',89),(90,'Selly','Smith',999999999,5141234656,'selly.smith90@whatever.com',90);
/*!40000 ALTER TABLE `Person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prerequisite`
--

DROP TABLE IF EXISTS `Prerequisite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Prerequisite` (
  `courseId` int(11) NOT NULL DEFAULT '0',
  `prereqId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`courseId`,`prereqId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prerequisite`
--

LOCK TABLES `Prerequisite` WRITE;
/*!40000 ALTER TABLE `Prerequisite` DISABLE KEYS */;
INSERT INTO `Prerequisite` VALUES (1,2),(2,1),(3,2),(4,2),(5,3),(6,3),(7,4),(8,4),(9,5),(10,5),(11,6),(12,6),(13,7),(14,7),(15,8),(16,8),(17,9),(18,9),(19,10),(20,10),(21,11),(22,11),(23,12),(24,12),(25,13),(26,13),(27,14),(28,14),(29,15),(30,15);
/*!40000 ALTER TABLE `Prerequisite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Program`
--

DROP TABLE IF EXISTS `Program`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Program` (
  `programId` int(11) NOT NULL DEFAULT '0',
  `departmentId` int(11) DEFAULT NULL,
  `programCredits` int(11) DEFAULT NULL,
  `programLevel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`programId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Program`
--

LOCK TABLES `Program` WRITE;
/*!40000 ALTER TABLE `Program` DISABLE KEYS */;
INSERT INTO `Program` VALUES (1,1,90,'Undergraduate'),(2,1,90,'Undergraduate'),(3,2,90,'Undergraduate'),(4,2,90,'Undergraduate'),(5,3,90,'Undergraduate'),(6,3,44,'Graduate'),(7,4,44,'Graduate'),(8,4,44,'Graduate'),(9,5,44,'Graduate'),(10,5,44,'Graduate');
/*!40000 ALTER TABLE `Program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Publication`
--

DROP TABLE IF EXISTS `Publication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Publication` (
  `pId` int(11) NOT NULL DEFAULT '0',
  `publicationId` int(11) NOT NULL DEFAULT '0',
  `publicationDescription` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pId`,`publicationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Publication`
--

LOCK TABLES `Publication` WRITE;
/*!40000 ALTER TABLE `Publication` DISABLE KEYS */;
INSERT INTO `Publication` VALUES (1,1,'Academic journal'),(1,2,'Academic journal'),(1,3,'Printed book'),(1,4,'Blog'),(2,1,'Academic journal'),(2,2,'Academic journal'),(2,3,'Printed book'),(2,4,'Blog'),(3,1,'Academic journal'),(4,2,'Academic journal'),(5,3,'Printed book'),(6,4,'Blog'),(7,1,'Academic journal'),(8,2,'Academic journal'),(9,3,'Printed book'),(10,1,'Academic journal'),(10,2,'Academic journal'),(10,3,'Printed book'),(10,4,'Blog'),(20,4,'Blog'),(21,1,'Academic journal'),(22,2,'Academic journal'),(23,3,'Printed book'),(24,4,'Blog'),(25,1,'Academic journal');
/*!40000 ALTER TABLE `Publication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResearchFund`
--

DROP TABLE IF EXISTS `ResearchFund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResearchFund` (
  `rfId` int(11) NOT NULL DEFAULT '0',
  `pId_i` int(11) DEFAULT NULL,
  `pId_s` int(11) DEFAULT NULL,
  `rfDescription` varchar(255) DEFAULT NULL,
  `rfAmount` decimal(10,0) DEFAULT NULL,
  `rfTerm` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`rfId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResearchFund`
--

LOCK TABLES `ResearchFund` WRITE;
/*!40000 ALTER TABLE `ResearchFund` DISABLE KEYS */;
INSERT INTO `ResearchFund` VALUES (1,61,31,'Concept development',1000,'SUMMER 19'),(2,62,32,'Social engagement',2000,'WINTER 19'),(3,63,33,'Lab research',3000,'FALL 19'),(4,64,34,'Concept development',1000,'SUMMER 19'),(5,65,35,'Social engagement',2000,'WINTER 19'),(6,66,36,'Lab research',3000,'FALL 19'),(7,67,37,'Concept development',1000,'SUMMER 19'),(8,68,38,'Social engagement',2000,'WINTER 19'),(9,69,39,'Lab research',3000,'FALL 19'),(10,70,40,'Concept development',1000,'SUMMER 19'),(11,71,41,'Social engagement',2000,'WINTER 19'),(12,72,42,'Lab research',3000,'FALL 19'),(13,73,43,'Realize a dream project',1000000,'SUMMER 19'),(14,74,44,'Realize a dream project',1000000,'WINTER 19'),(15,75,45,'Realize a dream project',1000000,'FALL 19'),(16,76,46,'Realize a dream project',1000000,'SUMMER 19'),(17,77,47,'Realize a dream project',1000000,'WINTER 19'),(18,78,48,'Realize a dream project',1000000,'FALL 19'),(19,79,49,'Realize a dream project',1000000,'SUMMER 19'),(20,80,50,'Realize a dream project',1000000,'WINTER 19'),(21,81,51,'Realize a dream project',1000000,'FALL 19'),(22,82,52,'Realize a dream project',1000000,'SUMMER 19'),(23,83,53,'Realize a dream project',1000000,'WINTER 19'),(24,84,54,'Realize a dream project',1000000,'FALL 19'),(25,85,55,'Realize a dream project',1000000,'SUMMER 19'),(26,86,56,'Realize a dream project',1000000,'WINTER 19'),(27,87,57,'Realize a dream project',1000000,'FALL 19'),(28,88,58,'Realize a dream project',1000000,'SUMMER 19'),(29,89,59,'Realize a dream project',1000000,'WINTER 19'),(30,90,60,'Realize a dream project',1000000,'SUMMER 19'),(31,91,61,'Realize a dream project',1000000,'WINTER 19');
/*!40000 ALTER TABLE `ResearchFund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Room`
--

DROP TABLE IF EXISTS `Room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Room` (
  `roomId` int(11) NOT NULL DEFAULT '0',
  `roomType` varchar(255) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  PRIMARY KEY (`roomId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Room`
--

LOCK TABLES `Room` WRITE;
/*!40000 ALTER TABLE `Room` DISABLE KEYS */;
INSERT INTO `Room` VALUES (1,'Classroom',35),(2,'Lab',35),(3,'Conference  room',35),(4,'Classroom',40),(5,'Classroom',40),(6,'Classroom',40),(7,'Classroom',50),(8,'Lab',50),(9,'Lab',50),(10,'Conference  room',50);
/*!40000 ALTER TABLE `Room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Salary`
--

DROP TABLE IF EXISTS `Salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Salary` (
  `pId` int(11) NOT NULL DEFAULT '0',
  `salaryId` int(11) NOT NULL DEFAULT '0',
  `salaryDescription` varchar(255) DEFAULT NULL,
  `contractBase` varchar(255) DEFAULT NULL,
  `courseId` int(11) DEFAULT NULL,
  `sectionId` int(11) DEFAULT NULL,
  `contractDate` date DEFAULT NULL,
  `contractAmount` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`pId`,`salaryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Salary`
--

LOCK TABLES `Salary` WRITE;
/*!40000 ALTER TABLE `Salary` DISABLE KEYS */;
INSERT INTO `Salary` VALUES (31,1,'Part-time contract at a salaray of 2310 starting from 2011-10-10','Part-time',1,1,'2011-10-10',2310),(32,2,'Full-time contract at a salaray of 2320 starting from 2011-10-11','Full-time',1,2,'2011-10-11',2320),(33,3,'Part-time contract at a salaray of 2330 starting from 2011-10-12','Part-time',1,3,'2011-10-12',2330),(34,4,'Full-time contract at a salaray of 2340 starting from 2011-10-13','Full-time',1,4,'2011-10-13',2340),(35,5,'Part-time contract at a salaray of 2350 starting from 2011-10-14','Part-time',1,5,'2011-10-14',2350),(36,6,'Full-time contract at a salaray of 2360 starting from 2011-10-15','Full-time',2,1,'2011-10-15',2360),(37,7,'Part-time contract at a salaray of 2370 starting from 2011-10-16','Part-time',2,2,'2011-10-16',2370),(38,8,'Full-time contract at a salaray of 2380 starting from 2011-10-17','Full-time',2,3,'2011-10-17',2380),(39,9,'Part-time contract at a salaray of 2390 starting from 2011-10-18','Part-time',2,4,'2011-10-18',2390),(40,10,'Full-time contract at a salaray of 2400 starting from 2011-10-19','Full-time',2,5,'2011-10-19',2400),(41,11,'Part-time contract at a salaray of 2410 starting from 2011-10-20','Part-time',3,1,'2011-10-20',2410),(42,12,'Full-time contract at a salaray of 2420 starting from 2011-10-21','Full-time',3,2,'2011-10-21',2420),(43,13,'Part-time contract at a salaray of 2430 starting from 2011-10-22','Part-time',3,3,'2011-10-22',2430),(44,14,'Full-time contract at a salaray of 2440 starting from 2011-10-23','Full-time',3,4,'2011-10-23',2440),(45,15,'Part-time contract at a salaray of 2450 starting from 2011-10-24','Part-time',3,5,'2011-10-24',2450),(46,16,'Full-time contract at a salaray of 2460 starting from 2011-10-25','Full-time',4,1,'2011-10-25',2460),(47,17,'Part-time contract at a salaray of 2470 starting from 2011-10-26','Part-time',4,2,'2011-10-26',2470),(48,18,'Full-time contract at a salaray of 2480 starting from 2011-10-27','Full-time',4,3,'2011-10-27',2480),(49,19,'Part-time contract at a salaray of 2490 starting from 2011-10-28','Part-time',4,4,'2011-10-28',2490),(50,20,'Full-time contract at a salaray of 2500 starting from 2011-10-29','Full-time',4,5,'2011-10-29',2500),(51,21,'Part-time contract at a salaray of 2510 starting from 2011-10-30','Part-time',5,1,'2011-10-30',2510),(52,22,'Full-time contract at a salaray of 2520 starting from 2011-10-31','Full-time',5,2,'2011-10-31',2520);
/*!40000 ALTER TABLE `Salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ScoreDescription`
--

DROP TABLE IF EXISTS `ScoreDescription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ScoreDescription` (
  `score` int(11) NOT NULL DEFAULT '0',
  `scoreTag` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`score`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ScoreDescription`
--

LOCK TABLES `ScoreDescription` WRITE;
/*!40000 ALTER TABLE `ScoreDescription` DISABLE KEYS */;
INSERT INTO `ScoreDescription` VALUES (0,'F'),(1,'D-'),(2,'D'),(3,'D+'),(4,'C-'),(5,'C'),(6,'C+'),(7,'B-'),(8,'B'),(9,'B+'),(10,'A-'),(11,'A'),(12,'A+');
/*!40000 ALTER TABLE `ScoreDescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Section`
--

DROP TABLE IF EXISTS `Section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Section` (
  `courseId` int(11) NOT NULL DEFAULT '0',
  `sectionId` int(11) NOT NULL DEFAULT '0',
  `roomId` int(11) DEFAULT NULL,
  `timeSlotId` int(11) DEFAULT NULL,
  `pId` int(11) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `numStudents` int(11) DEFAULT NULL,
  PRIMARY KEY (`courseId`,`sectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Section`
--

LOCK TABLES `Section` WRITE;
/*!40000 ALTER TABLE `Section` DISABLE KEYS */;
INSERT INTO `Section` VALUES (1,1,1,10,61,'SUMMER 19',28),(1,2,2,3,62,'WINTER 19',27),(1,3,3,2,63,'FALL 19',28),(1,4,4,4,64,'SUMMER 19',30),(1,5,5,5,65,'WINTER 19',34),(2,1,6,2,66,'FALL 19',18),(2,2,7,3,67,'SUMMER 19',20),(2,3,8,2,68,'WINTER 19',18),(2,4,9,3,69,'FALL 19',29),(3,1,11,8,70,'SUMMER 19',20),(3,2,12,3,71,'WINTER 19',26),(3,3,13,5,72,'FALL 19',18),(3,4,14,3,73,'SUMMER 19',31),(4,1,16,6,74,'WINTER 19',26),(4,2,17,5,75,'FALL 19',16),(4,3,18,2,76,'SUMMER 19',28),(4,4,19,5,77,'WINTER 19',19),(5,1,21,1,78,'FALL 19',26),(5,2,22,6,79,'SUMMER 19',28),(5,3,23,4,80,'WINTER 19',33),(5,4,24,4,81,'FALL 19',28),(6,1,26,3,82,'SUMMER 19',29),(6,2,27,7,83,'WINTER 19',15),(6,3,28,4,84,'FALL 19',29),(6,4,29,9,85,'SUMMER 19',32),(7,1,31,1,86,'WINTER 19',24),(7,2,32,9,87,'FALL 19',18),(7,3,33,8,88,'SUMMER 19',20),(7,4,34,1,89,'WINTER 19',16);
/*!40000 ALTER TABLE `Section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Student`
--

DROP TABLE IF EXISTS `Student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Student` (
  `pId` int(11) NOT NULL DEFAULT '0',
  `gpa` decimal(10,0) DEFAULT NULL,
  `programId` int(11) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `advisorId` int(11) DEFAULT NULL,
  `supervisorId` int(11) DEFAULT NULL,
  `base` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Student`
--

LOCK TABLES `Student` WRITE;
/*!40000 ALTER TABLE `Student` DISABLE KEYS */;
INSERT INTO `Student` VALUES (1,2,1,'Undergraduate',37,1,NULL,'NULL'),(2,2,1,'Undergraduate',74,1,NULL,'NULL'),(3,3,1,'Undergraduate',55,1,NULL,'NULL'),(4,4,1,'Undergraduate',69,1,NULL,'NULL'),(5,4,1,'Undergraduate',35,1,NULL,'NULL'),(6,2,1,'Undergraduate',25,2,NULL,'NULL'),(7,1,1,'Undergraduate',80,2,NULL,'NULL'),(8,4,1,'Undergraduate',66,2,NULL,'NULL'),(9,2,1,'Undergraduate',58,2,NULL,'NULL'),(10,2,1,'Undergraduate',88,2,NULL,'NULL'),(11,3,2,'Undergraduate',80,3,NULL,'NULL'),(12,2,2,'Undergraduate',11,3,NULL,'NULL'),(13,1,2,'Undergraduate',64,3,NULL,'NULL'),(14,2,2,'Undergraduate',81,3,NULL,'NULL'),(15,1,2,'Undergraduate',31,3,NULL,'NULL'),(16,3,3,'Undergraduate',43,4,NULL,'NULL'),(17,4,3,'Undergraduate',12,4,NULL,'NULL'),(18,1,3,'Undergraduate',11,4,NULL,'NULL'),(19,2,3,'Undergraduate',80,4,NULL,'NULL'),(20,2,3,'Undergraduate',84,4,NULL,'NULL'),(21,3,4,'Undergraduate',52,5,NULL,'NULL'),(22,3,4,'Undergraduate',44,5,NULL,'NULL'),(23,4,4,'Undergraduate',31,5,NULL,'NULL'),(24,2,4,'Undergraduate',82,5,NULL,'NULL'),(25,2,4,'Undergraduate',36,5,NULL,'NULL'),(26,3,5,'Undergraduate',37,6,NULL,'NULL'),(27,4,5,'Undergraduate',89,6,NULL,'NULL'),(28,2,5,'Undergraduate',30,6,NULL,'NULL'),(29,2,5,'Undergraduate',36,6,NULL,'NULL'),(30,3,5,'Undergraduate',59,6,NULL,'NULL');
/*!40000 ALTER TABLE `Student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `StudentRegisterSection`
--

DROP TABLE IF EXISTS `StudentRegisterSection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `StudentRegisterSection` (
  `pId` int(11) NOT NULL DEFAULT '0',
  `courseId` int(11) NOT NULL DEFAULT '0',
  `sectionId` int(11) NOT NULL DEFAULT '0',
  `score` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`pId`,`courseId`,`sectionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `StudentRegisterSection`
--

LOCK TABLES `StudentRegisterSection` WRITE;
/*!40000 ALTER TABLE `StudentRegisterSection` DISABLE KEYS */;
INSERT INTO `StudentRegisterSection` VALUES (1,1,1,'D-'),(2,1,1,'D+'),(3,1,2,'B'),(4,2,1,'D-'),(5,2,1,'F'),(6,2,1,'C-'),(7,2,2,'A-'),(8,2,2,'C'),(9,2,2,'C+'),(10,2,2,'C-'),(11,3,1,'D'),(12,3,2,'D-'),(13,3,3,'D-'),(14,3,3,'B-'),(15,3,3,'A'),(16,3,1,'D+'),(17,3,2,'A-'),(18,3,3,'B-'),(19,3,1,'B+'),(20,3,1,'C-'),(21,3,2,'B-'),(22,3,2,'A-'),(23,3,3,'A'),(24,3,3,'C-'),(25,4,1,'B'),(26,4,2,'C-'),(27,4,3,'A'),(28,4,4,'F'),(29,4,1,'B-'),(30,4,1,'A'),(31,4,1,'C+'),(32,4,2,'A+'),(33,4,2,'A'),(34,5,1,'B-'),(35,5,2,'A+'),(36,5,3,'C-'),(37,5,4,'D'),(38,5,1,'B'),(39,5,2,'F'),(40,5,3,'C'),(41,5,4,'C-'),(42,5,1,'D+'),(43,5,1,'A+'),(44,5,2,'D-'),(45,5,2,'A+'),(46,5,1,'B'),(47,5,2,'B+'),(48,5,3,'C-'),(49,6,4,'D'),(50,6,1,'C-'),(51,6,2,'B'),(52,6,3,'D'),(53,6,4,'A+'),(54,6,1,'A'),(55,6,2,'D+'),(56,6,3,'A+'),(57,6,4,'B+'),(58,6,1,'F'),(59,7,1,'B-'),(60,7,1,'A+');
/*!40000 ALTER TABLE `StudentRegisterSection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TaActivity`
--

DROP TABLE IF EXISTS `TaActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TaActivity` (
  `pId` int(11) NOT NULL DEFAULT '0',
  `courseId` int(11) NOT NULL DEFAULT '0',
  `sectionId` int(11) NOT NULL DEFAULT '0',
  `activity` varchar(255) NOT NULL DEFAULT '',
  `workHours` int(11) DEFAULT NULL,
  `taTerm` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pId`,`courseId`,`sectionId`,`activity`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TaActivity`
--

LOCK TABLES `TaActivity` WRITE;
/*!40000 ALTER TABLE `TaActivity` DISABLE KEYS */;
INSERT INTO `TaActivity` VALUES (31,1,1,'Tutorial sessions',39,'SUMMER 19'),(31,1,2,'Lab instruction',36,'WINTER 19'),(32,1,3,'Assignment marking',94,'FALL 19'),(32,2,4,'Tutorial sessions',118,'SUMMER 19'),(33,2,1,'Lab instruction',13,'WINTER 19'),(33,2,2,'Assignment marking',40,'FALL 19'),(34,3,3,'Tutorial sessions',101,'SUMMER 19'),(34,3,4,'Lab instruction',76,'WINTER 19'),(35,3,1,'Assignment marking',80,'FALL 19'),(35,4,2,'Tutorial sessions',24,'SUMMER 19'),(36,4,3,'Lab instruction',46,'WINTER 19'),(36,4,4,'Assignment marking',120,'FALL 19'),(37,5,1,'Tutorial sessions',32,'SUMMER 19'),(37,5,2,'Lab instruction',119,'WINTER 19'),(38,5,3,'Assignment marking',35,'FALL 19'),(38,6,4,'Tutorial sessions',91,'SUMMER 19'),(39,6,1,'Lab instruction',115,'WINTER 19'),(39,6,2,'Assignment marking',11,'FALL 19'),(40,7,1,'Tutorial sessions',19,'SUMMER 19'),(40,7,2,'Lab instruction',91,'WINTER 19'),(41,7,3,'Assignment marking',61,'FALL 19'),(41,7,4,'Tutorial sessions',68,'SUMMER 19'),(42,7,1,'Assignment marking',49,'FALL 19'),(42,7,1,'Lab instruction',90,'WINTER 19'),(43,7,2,'Lab instruction',37,'WINTER 19'),(43,7,2,'Tutorial sessions',10,'SUMMER 19'),(44,7,3,'Assignment marking',32,'FALL 19'),(44,7,3,'Tutorial sessions',64,'SUMMER 19'),(45,7,4,'Assignment marking',120,'SUMMER 19'),(45,7,4,'Lab instruction',40,'WINTER 19'),(46,7,4,'Tutorial sessions',23,'WINTER 19');
/*!40000 ALTER TABLE `TaActivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TimeSlot`
--

DROP TABLE IF EXISTS `TimeSlot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TimeSlot` (
  `timeSlotId` int(11) NOT NULL DEFAULT '0',
  `begin` time DEFAULT NULL,
  `end` time DEFAULT NULL,
  PRIMARY KEY (`timeSlotId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TimeSlot`
--

LOCK TABLES `TimeSlot` WRITE;
/*!40000 ALTER TABLE `TimeSlot` DISABLE KEYS */;
INSERT INTO `TimeSlot` VALUES (1,'11:30:00','13:30:00'),(2,'11:45:00','13:45:00'),(3,'12:00:00','14:00:00'),(4,'12:15:00','14:15:00'),(5,'12:30:00','14:30:00'),(6,'12:45:00','14:45:00'),(7,'13:00:00','15:00:00'),(8,'13:15:00','15:15:00'),(9,'13:30:00','15:30:00'),(10,'13:45:00','15:45:00');
/*!40000 ALTER TABLE `TimeSlot` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-09 12:45:14
