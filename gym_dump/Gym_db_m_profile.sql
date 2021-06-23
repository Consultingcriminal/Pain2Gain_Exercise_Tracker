-- MySQL dump 10.13  Distrib 8.0.25, for Linux (x86_64)
--
-- Host: localhost    Database: Gym_db
-- ------------------------------------------------------
-- Server version	8.0.25-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `m_profile`
--

DROP TABLE IF EXISTS `m_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `m_profile` (
  `mem_id` int NOT NULL,
  `m_Fname` varchar(45) NOT NULL,
  `m_Lname` varchar(45) NOT NULL,
  `Gender` varchar(5) NOT NULL,
  `DOB` date NOT NULL,
  `m_Pno` varchar(15) NOT NULL,
  `plan_id` int NOT NULL,
  `trainer_id` int DEFAULT NULL,
  PRIMARY KEY (`mem_id`),
  KEY `plan_id_idx` (`plan_id`),
  KEY `trainer_id_idx` (`trainer_id`),
  FULLTEXT KEY `P_no` (`m_Pno`) /*!80000 INVISIBLE */,
  CONSTRAINT `mem_id` FOREIGN KEY (`mem_id`) REFERENCES `members` (`m_id`),
  CONSTRAINT `plan_id` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`Pid`),
  CONSTRAINT `trainer_id` FOREIGN KEY (`trainer_id`) REFERENCES `Trainer` (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_profile`
--

LOCK TABLES `m_profile` WRITE;
/*!40000 ALTER TABLE `m_profile` DISABLE KEYS */;
INSERT INTO `m_profile` VALUES (12,'Ananya','Gupta','M','1999-10-09','9789991054',4,1),(13,'Shivam','Handa','M','1999-08-28','9879104321',6,2);
/*!40000 ALTER TABLE `m_profile` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-23 17:23:00
