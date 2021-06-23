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
-- Table structure for table `workouts`
--

DROP TABLE IF EXISTS `workouts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workouts` (
  `W_id` int NOT NULL AUTO_INCREMENT,
  `W_Type` varchar(45) NOT NULL,
  `W_Area` varchar(45) NOT NULL,
  `W_Duration` int NOT NULL,
  `W_Routine` varchar(255) NOT NULL,
  PRIMARY KEY (`W_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workouts`
--

LOCK TABLES `workouts` WRITE;
/*!40000 ALTER TABLE `workouts` DISABLE KEYS */;
INSERT INTO `workouts` VALUES (11,'Strength','Chest',45,'Barbell bench press,Pec deck,Bent forward cable crossover, Chest press,Inclined dumbbell flies,Dips,Pushups'),(12,'Strength','Arms',35,'Barbell Bicep Curl,Dumbbell Preacher Curl.,Cable Bicep Curl,Skull Crusher,Cable Triceps Pushdown,Single-Arm Dumbbell Overhead Triceps Extension'),(13,'Strength','Abs',30,'Dumbbell crunch, Tuck and crunch,Modified V-sit,Crunch. Reps,Hanging leg raise,Hanging knee raise twist,Hanging knee raise'),(14,'Strength','Legs',50,'Goblet squat,,Dumbbell step-up,Glute bridge,Calf raise,Leg curl,Leg extension,Leg press,Wall sit'),(15,'Strength','Shoulders',45,'Barbell Overhead Shoulder Press, Seated Dumbbell Shoulder Press,Front Raise,Reverse Pec Deck Fly,Bent-Over Dumbbell Lateral Raise,Dumbbell Lateral Raise,Push Press,Reverse Cable Crossover'),(16,'HIIT','Tabata',4,'Squat,Push-up,Mountain climbers,High Knees,Burpees,Lunges'),(17,'HIIT','Sprint',22,'Warmup,Sprint,Recovery Walk,Cool Down,Stretch'),(18,'HIIT','Short-Spin',20,'Warmup,Resistance,Standup,Recovery,Cool Down,Stretch'),(19,'HIIT','One-to-One',10,'Assisted lunges.Modified pushups.Ball squats.Overhead presses.Dumbbell rows.Bicep curls,Tricep extensions.Crunches on the ball'),(20,'HIIT','Tempo Runs',10,'Warmup,Sprint,Recovery Walk,Cool Down,Stretch');
/*!40000 ALTER TABLE `workouts` ENABLE KEYS */;
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
