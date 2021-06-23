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
-- Table structure for table `mem_diet_routine`
--

DROP TABLE IF EXISTS `mem_diet_routine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mem_diet_routine` (
  `mem_id` int NOT NULL,
  `date` date NOT NULL,
  `Diet_Type` varchar(45) NOT NULL,
  `Calories` int NOT NULL,
  `Proteins` int NOT NULL,
  `Carbs` int NOT NULL,
  `Fats` int NOT NULL,
  `Supplement_Type` varchar(100) DEFAULT NULL,
  `Supplement_Quantity` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`mem_id`,`date`),
  CONSTRAINT `fk_mem_id` FOREIGN KEY (`mem_id`) REFERENCES `members` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mem_diet_routine`
--

LOCK TABLES `mem_diet_routine` WRITE;
/*!40000 ALTER TABLE `mem_diet_routine` DISABLE KEYS */;
INSERT INTO `mem_diet_routine` VALUES (12,'2021-05-30','Bulking',3450,260,475,60,'Creatine MonoHydrate','CM-3g'),(12,'2021-05-31','Bulking',3000,250,275,60,'Creatine MonoHydrate','CM-3g'),(13,'2021-05-31','Bulking',3000,250,275,60,'Creatine MonoHydrate','CM-3g');
/*!40000 ALTER TABLE `mem_diet_routine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-23 17:22:59
