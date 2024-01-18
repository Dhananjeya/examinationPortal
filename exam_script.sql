CREATE DATABASE  IF NOT EXISTS `ExaminationDB` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `ExaminationDB`;
-- MySQL dump 10.13  Distrib 5.7.41, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ExaminationDB
-- ------------------------------------------------------
-- Server version	5.7.41-0ubuntu0.18.04.1

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
-- Table structure for table `ExamChoosen`
--

DROP TABLE IF EXISTS `ExamChoosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExamChoosen` (
  `RollNumber` bigint(20) DEFAULT NULL,
  `Java` tinyint(1) DEFAULT NULL,
  `C` tinyint(1) DEFAULT NULL,
  `Python` tinyint(1) DEFAULT NULL,
  KEY `RollNumber` (`RollNumber`),
  CONSTRAINT `ExamChoosen_ibfk_1` FOREIGN KEY (`RollNumber`) REFERENCES `Users` (`RollNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ExamTaken`
--

DROP TABLE IF EXISTS `ExamTaken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExamTaken` (
  `RollNumber` bigint(20) DEFAULT NULL,
  `ExamCode` int(11) DEFAULT NULL,
  `AnswerSheet` varchar(50) DEFAULT NULL,
  KEY `RollNumber` (`RollNumber`),
  CONSTRAINT `ExamTaken_ibfk_1` FOREIGN KEY (`RollNumber`) REFERENCES `Users` (`RollNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `PapersData`
--

DROP TABLE IF EXISTS `PapersData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PapersData` (
  `QuestionPaper` longtext,
  `AnswerKey` longtext,
  `ExamCode` int(11) NOT NULL,
  PRIMARY KEY (`ExamCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Result`
--

DROP TABLE IF EXISTS `Result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Result` (
  `ResultId` varchar(50) NOT NULL,
  `Percentage` double(5,2) DEFAULT NULL,
  `ExamName` varchar(20) DEFAULT NULL,
  `TotalMarks` int(11) DEFAULT NULL,
  `TotalQuestion` int(11) DEFAULT NULL,
  `CorrectAnswer` int(11) DEFAULT NULL,
  `RollNumber` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ResultId`),
  KEY `RollNumber` (`RollNumber`),
  CONSTRAINT `RollNumber` FOREIGN KEY (`RollNumber`) REFERENCES `Users` (`RollNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `RollNumber` bigint(20) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Password` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`RollNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-20 23:31:59
