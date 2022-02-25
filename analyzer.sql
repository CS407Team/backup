-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: analyzer
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `event_id` int NOT NULL AUTO_INCREMENT,
  `gameid` int DEFAULT NULL,
  `minute` int DEFAULT NULL,
  `event` char(100) DEFAULT NULL,
  `player_id` int DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `favorite_id` int NOT NULL AUTO_INCREMENT,
  `userid` int DEFAULT NULL,
  `team_ids` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`favorite_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (1,5,'20,1'),(2,6,'20,1');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game_predictions`
--

DROP TABLE IF EXISTS `game_predictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game_predictions` (
  `game_prediction_id` int NOT NULL AUTO_INCREMENT,
  `gameid` int DEFAULT NULL,
  `home_team_id` int DEFAULT NULL,
  `away_team_id` int DEFAULT NULL,
  `stats_predictions_id` int DEFAULT NULL,
  `visibility` char(20) DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `name` char(50) DEFAULT NULL,
  `location` char(20) DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  `round_number` int DEFAULT NULL,
  `winner` int DEFAULT NULL,
  PRIMARY KEY (`game_prediction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_predictions`
--

LOCK TABLES `game_predictions` WRITE;
/*!40000 ALTER TABLE `game_predictions` DISABLE KEYS */;
INSERT INTO `game_predictions` VALUES (1,316,1,2,316,'public',5,'','Etihad Stadium','not_played',32,-1),(2,285,13,1,285,'public',5,'Test','Selhurst Park','not_played',29,1),(3,274,2,4,274,'public',5,'','Anfield','not_played',28,-1),(4,330,7,1,330,'public',5,'TestPrediction','Molineux Stadium','not_played',33,1);
/*!40000 ALTER TABLE `game_predictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `games`
--

DROP TABLE IF EXISTS `games`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `games` (
  `gameid` int NOT NULL AUTO_INCREMENT,
  `tournament_id` int DEFAULT NULL,
  `hometeam_id` int DEFAULT NULL,
  `awayteam_id` int DEFAULT NULL,
  `stats_id` int DEFAULT NULL,
  `winner_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `prediction_name` char(20) DEFAULT NULL,
  `location` char(20) DEFAULT NULL,
  `status` char(20) DEFAULT NULL,
  `round_number` int DEFAULT NULL,
  PRIMARY KEY (`gameid`)
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `games`
--

LOCK TABLES `games` WRITE;
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` VALUES (2,39,5,15,2,5,NULL,NULL,'Old Trafford','played',1),(3,39,20,9,3,9,NULL,NULL,'Turf Moor','played',1),(4,39,3,13,4,3,NULL,NULL,'Stamford Bridge','played',1),(5,39,16,10,5,16,NULL,NULL,'Goodison Park','played',1),(6,39,11,7,6,11,NULL,NULL,'King Power Stadium','played',1),(7,39,19,12,7,19,NULL,NULL,'Vicarage Road','played',1),(8,39,18,2,8,2,NULL,NULL,'Carrow Road','played',1),(9,39,17,4,9,4,NULL,NULL,'St. James\' Park','played',1),(11,39,2,20,11,2,NULL,NULL,'Anfield','played',2),(12,39,12,17,12,12,NULL,NULL,'Villa Park','played',2),(13,39,13,14,13,0,NULL,NULL,'Selhurst Park','played',2),(14,39,15,16,14,0,NULL,NULL,'Elland Road','played',2),(15,39,1,18,15,1,NULL,NULL,'Etihad Stadium','played',2),(16,39,9,19,16,9,NULL,NULL,'Amex Stadium','played',2),(17,39,10,5,17,0,NULL,NULL,'St. Mary\'s Stadium','played',2),(18,39,7,8,18,8,NULL,NULL,'Molineux Stadium','played',2),(19,39,6,3,19,3,NULL,NULL,'Emirates Stadium','played',2),(20,39,4,11,20,4,NULL,NULL,'London Stadium','played',2),(21,39,1,6,21,1,NULL,NULL,'Etihad Stadium','played',3),(22,39,12,14,22,0,NULL,NULL,'Villa Park','played',3),(23,39,9,16,23,16,NULL,NULL,'Amex Stadium','played',3),(24,39,17,10,24,0,NULL,NULL,'St. James\' Park','played',3),(25,39,18,11,25,11,NULL,NULL,'Carrow Road','played',3),(26,39,4,13,26,0,NULL,NULL,'London Stadium','played',3),(27,39,2,3,27,0,NULL,NULL,'Anfield','played',3),(28,39,20,15,28,0,NULL,NULL,'Turf Moor','played',3),(30,39,7,5,30,5,NULL,NULL,'Molineux Stadium','played',3),(31,39,6,18,31,6,NULL,NULL,'Emirates Stadium','played',4),(33,39,3,12,33,3,NULL,NULL,'Stamford Bridge','played',4),(34,39,13,8,34,13,NULL,NULL,'Selhurst Park','played',4),(35,39,16,20,35,16,NULL,NULL,'Goodison Park','played',4),(36,39,15,2,36,2,NULL,NULL,'Elland Road','played',4),(37,39,11,1,37,1,NULL,NULL,'King Power Stadium','played',4),(38,39,5,17,38,5,NULL,NULL,'Old Trafford','played',4),(39,39,10,4,39,0,NULL,NULL,'St. Mary\'s Stadium','played',4),(40,39,19,7,40,7,NULL,NULL,'Vicarage Road','played',4),(41,39,12,16,41,12,NULL,NULL,'Villa Park','played',5),(42,39,9,11,42,9,NULL,NULL,'Amex Stadium','played',5),(43,39,20,6,43,6,NULL,NULL,'Turf Moor','played',5),(44,39,2,13,44,2,NULL,NULL,'Anfield','played',5),(45,39,1,10,45,0,NULL,NULL,'Etihad Stadium','played',5),(46,39,17,15,46,0,NULL,NULL,'St. James\' Park','played',5),(47,39,18,19,47,19,NULL,NULL,'Carrow Road','played',5),(49,39,4,5,49,5,NULL,NULL,'London Stadium','played',5),(50,39,7,14,50,14,NULL,NULL,'Molineux Stadium','played',5),(51,39,6,8,51,6,NULL,NULL,'Emirates Stadium','played',6),(53,39,3,1,53,1,NULL,NULL,'Stamford Bridge','played',6),(54,39,13,9,54,0,NULL,NULL,'Selhurst Park','played',6),(55,39,16,18,55,16,NULL,NULL,'Goodison Park','played',6),(56,39,15,4,56,4,NULL,NULL,'Elland Road','played',6),(57,39,11,20,57,0,NULL,NULL,'King Power Stadium','played',6),(58,39,5,12,58,12,NULL,NULL,'Old Trafford','played',6),(59,39,10,7,59,7,NULL,NULL,'St. Mary\'s Stadium','played',6),(60,39,19,17,60,0,NULL,NULL,'Vicarage Road','played',6),(61,39,9,6,61,0,NULL,NULL,'Amex Stadium','played',7),(62,39,20,18,62,0,NULL,NULL,'Turf Moor','played',7),(63,39,3,10,63,3,NULL,NULL,'Stamford Bridge','played',7),(64,39,13,11,64,0,NULL,NULL,'Selhurst Park','played',7),(65,39,15,19,65,15,NULL,NULL,'Elland Road','played',7),(66,39,2,1,66,0,NULL,NULL,'Anfield','played',7),(67,39,5,16,67,0,NULL,NULL,'Old Trafford','played',7),(69,39,4,14,69,14,NULL,NULL,'London Stadium','played',7),(70,39,7,17,70,7,NULL,NULL,'Molineux Stadium','played',7),(71,39,6,13,71,0,NULL,NULL,'Emirates Stadium','played',8),(72,39,12,7,72,7,NULL,NULL,'Villa Park','played',8),(74,39,16,4,74,4,NULL,NULL,'Goodison Park','played',8),(75,39,11,5,75,11,NULL,NULL,'King Power Stadium','played',8),(76,39,1,20,76,1,NULL,NULL,'Etihad Stadium','played',8),(77,39,17,8,77,8,NULL,NULL,'St. James\' Park','played',8),(78,39,18,9,78,0,NULL,NULL,'Carrow Road','played',8),(79,39,10,15,79,10,NULL,NULL,'St. Mary\'s Stadium','played',8),(80,39,19,2,80,2,NULL,NULL,'Vicarage Road','played',8),(81,39,6,12,81,6,NULL,NULL,'Emirates Stadium','played',9),(83,39,9,1,83,1,NULL,NULL,'Amex Stadium','played',9),(84,39,3,18,84,3,NULL,NULL,'Stamford Bridge','played',9),(85,39,13,17,85,0,NULL,NULL,'Selhurst Park','played',9),(86,39,16,19,86,19,NULL,NULL,'Goodison Park','played',9),(87,39,15,7,87,0,NULL,NULL,'Elland Road','played',9),(88,39,5,2,88,2,NULL,NULL,'Old Trafford','played',9),(89,39,10,20,89,0,NULL,NULL,'St. Mary\'s Stadium','played',9),(90,39,4,8,90,4,NULL,NULL,'London Stadium','played',9),(91,39,12,4,91,4,NULL,NULL,'Villa Park','played',10),(92,39,20,14,92,20,NULL,NULL,'Turf Moor','played',10),(93,39,11,6,93,6,NULL,NULL,'King Power Stadium','played',10),(94,39,2,9,94,0,NULL,NULL,'Anfield','played',10),(95,39,1,13,95,13,NULL,NULL,'Etihad Stadium','played',10),(96,39,17,3,96,3,NULL,NULL,'St. James\' Park','played',10),(97,39,18,15,97,15,NULL,NULL,'Carrow Road','played',10),(99,39,19,10,99,10,NULL,NULL,'Vicarage Road','played',10),(100,39,7,16,100,7,NULL,NULL,'Molineux Stadium','played',10),(101,39,6,19,101,6,NULL,NULL,'Emirates Stadium','played',11),(103,39,9,17,103,0,NULL,NULL,'Amex Stadium','played',11),(104,39,3,20,104,0,NULL,NULL,'Stamford Bridge','played',11),(105,39,13,7,105,13,NULL,NULL,'Selhurst Park','played',11),(106,39,16,8,106,0,NULL,NULL,'Goodison Park','played',11),(107,39,15,11,107,0,NULL,NULL,'Elland Road','played',11),(108,39,5,1,108,1,NULL,NULL,'Old Trafford','played',11),(109,39,10,12,109,10,NULL,NULL,'St. Mary\'s Stadium','played',11),(110,39,4,2,110,4,NULL,NULL,'London Stadium','played',11),(111,39,12,9,111,12,NULL,NULL,'Villa Park','played',12),(112,39,20,13,112,0,NULL,NULL,'Turf Moor','played',12),(113,39,11,3,113,3,NULL,NULL,'King Power Stadium','played',12),(114,39,2,6,114,2,NULL,NULL,'Anfield','played',12),(115,39,1,16,115,1,NULL,NULL,'Etihad Stadium','played',12),(116,39,17,14,116,0,NULL,NULL,'St. James\' Park','played',12),(117,39,18,10,117,18,NULL,NULL,'Carrow Road','played',12),(119,39,19,5,119,19,NULL,NULL,'Vicarage Road','played',12),(120,39,7,4,120,7,NULL,NULL,'Molineux Stadium','played',12),(121,39,6,17,121,6,NULL,NULL,'Emirates Stadium','played',13),(123,39,9,15,123,0,NULL,NULL,'Amex Stadium','played',13),(124,39,20,8,124,0,NULL,NULL,'Turf Moor','not_played',26),(125,39,3,5,125,0,NULL,NULL,'Stamford Bridge','played',13),(126,39,13,12,126,12,NULL,NULL,'Selhurst Park','played',13),(127,39,11,19,127,11,NULL,NULL,'King Power Stadium','played',13),(128,39,2,10,128,2,NULL,NULL,'Anfield','played',13),(129,39,1,4,129,1,NULL,NULL,'Etihad Stadium','played',13),(130,39,18,7,130,0,NULL,NULL,'Carrow Road','played',13),(131,39,12,1,131,1,NULL,NULL,'Villa Park','played',14),(132,39,16,2,132,2,NULL,NULL,'Goodison Park','played',14),(133,39,15,13,133,15,NULL,NULL,'Elland Road','played',14),(134,39,19,3,134,3,NULL,NULL,'Vicarage Road','played',14),(135,39,4,9,135,0,NULL,NULL,'London Stadium','played',14),(136,39,7,20,136,0,NULL,NULL,'Molineux Stadium','played',14),(137,39,5,6,137,5,NULL,NULL,'Old Trafford','played',14),(138,39,17,18,138,0,NULL,NULL,'St. James\' Park','played',14),(139,39,10,11,139,0,NULL,NULL,'St. Mary\'s Stadium','played',14),(141,39,12,11,141,12,NULL,NULL,'Villa Park','played',15),(142,39,16,6,142,16,NULL,NULL,'Goodison Park','played',15),(143,39,15,14,143,0,NULL,NULL,'Elland Road','played',15),(144,39,5,13,144,5,NULL,NULL,'Old Trafford','played',15),(145,39,17,20,145,17,NULL,NULL,'St. James\' Park','played',15),(146,39,10,9,146,0,NULL,NULL,'St. Mary\'s Stadium','played',15),(148,39,19,1,148,1,NULL,NULL,'Vicarage Road','played',15),(149,39,4,3,149,4,NULL,NULL,'London Stadium','played',15),(150,39,7,2,150,2,NULL,NULL,'Molineux Stadium','played',15),(151,39,6,10,151,6,NULL,NULL,'Emirates Stadium','played',16),(153,39,9,8,153,0,NULL,NULL,'Amex Stadium','not_played',16),(154,39,20,4,154,0,NULL,NULL,'Turf Moor','played',16),(155,39,3,15,155,3,NULL,NULL,'Stamford Bridge','played',16),(156,39,13,16,156,13,NULL,NULL,'Selhurst Park','played',16),(157,39,11,17,157,11,NULL,NULL,'King Power Stadium','played',16),(158,39,2,12,158,2,NULL,NULL,'Anfield','played',16),(159,39,1,7,159,1,NULL,NULL,'Etihad Stadium','played',16),(160,39,18,5,160,5,NULL,NULL,'Carrow Road','played',16),(161,39,6,4,161,6,NULL,NULL,'Emirates Stadium','played',17),(163,39,9,7,163,7,NULL,NULL,'Amex Stadium','played',17),(164,39,20,19,164,0,NULL,NULL,'Turf Moor','played',17),(165,39,11,8,165,8,NULL,NULL,'King Power Stadium','played',17),(166,39,18,12,166,12,NULL,NULL,'Carrow Road','played',17),(167,39,13,10,167,0,NULL,NULL,'Selhurst Park','played',17),(168,39,3,16,168,0,NULL,NULL,'Stamford Bridge','played',17),(169,39,2,17,169,2,NULL,NULL,'Anfield','played',17),(170,39,1,15,170,1,NULL,NULL,'Etihad Stadium','played',17),(171,39,12,20,171,0,NULL,NULL,'Villa Park','not_played',18),(172,39,16,11,172,0,NULL,NULL,'Goodison Park','not_played',21),(173,39,15,6,173,6,NULL,NULL,'Elland Road','played',18),(174,39,5,9,174,5,NULL,NULL,'Old Trafford','played',25),(175,39,17,1,175,1,NULL,NULL,'St. James\' Park','played',18),(176,39,10,14,176,10,NULL,NULL,'St. Mary\'s Stadium','played',18),(178,39,19,13,178,0,NULL,NULL,'Vicarage Road','not_played',26),(179,39,4,18,179,4,NULL,NULL,'London Stadium','played',18),(180,39,7,3,180,0,NULL,NULL,'Molineux Stadium','played',18),(181,39,12,3,181,3,NULL,NULL,'Villa Park','played',19),(182,39,9,14,182,9,NULL,NULL,'Amex Stadium','played',19),(183,39,20,16,183,0,NULL,NULL,'Turf Moor','not_played',19),(184,39,2,15,184,0,NULL,NULL,'Anfield','not_played',26),(185,39,1,11,185,1,NULL,NULL,'Etihad Stadium','played',19),(186,39,17,5,186,0,NULL,NULL,'St. James\' Park','played',19),(187,39,18,6,187,6,NULL,NULL,'Carrow Road','played',19),(189,39,4,10,189,10,NULL,NULL,'London Stadium','played',19),(190,39,7,19,190,0,NULL,NULL,'Molineux Stadium','not_played',19),(191,39,6,7,191,0,NULL,NULL,'Emirates Stadium','not_played',26),(193,39,3,9,193,0,NULL,NULL,'Stamford Bridge','played',20),(194,39,13,18,194,13,NULL,NULL,'Selhurst Park','played',20),(195,39,16,17,195,0,NULL,NULL,'Goodison Park','not_played',20),(196,39,15,12,196,0,NULL,NULL,'Elland Road','not_played',20),(197,39,11,2,197,11,NULL,NULL,'King Power Stadium','played',20),(198,39,5,20,198,5,NULL,NULL,'Old Trafford','played',20),(199,39,10,8,199,0,NULL,NULL,'St. Mary\'s Stadium','played',20),(200,39,19,4,200,4,NULL,NULL,'Vicarage Road','played',20),(201,39,6,1,201,1,NULL,NULL,'Emirates Stadium','played',21),(203,39,3,2,203,0,NULL,NULL,'Stamford Bridge','played',21),(204,39,13,4,204,4,NULL,NULL,'Selhurst Park','played',21),(205,39,16,9,205,9,NULL,NULL,'Goodison Park','played',21),(206,39,15,20,206,15,NULL,NULL,'Elland Road','played',21),(207,39,11,18,207,0,NULL,NULL,'King Power Stadium','not_played',21),(208,39,5,7,208,7,NULL,NULL,'Old Trafford','played',21),(209,39,10,17,209,0,NULL,NULL,'St. Mary\'s Stadium','not_played',21),(210,39,19,8,210,8,NULL,NULL,'Vicarage Road','played',21),(211,39,12,5,211,0,NULL,NULL,'Villa Park','played',22),(212,39,9,13,212,0,NULL,NULL,'Amex Stadium','played',22),(213,39,20,11,213,0,NULL,NULL,'Turf Moor','not_played',27),(214,39,2,14,214,2,NULL,NULL,'Anfield','played',22),(215,39,1,3,215,1,NULL,NULL,'Etihad Stadium','played',22),(216,39,17,19,216,0,NULL,NULL,'St. James\' Park','played',22),(217,39,18,16,217,18,NULL,NULL,'Carrow Road','played',22),(219,39,4,15,219,15,NULL,NULL,'London Stadium','played',22),(220,39,7,10,220,7,NULL,NULL,'Molineux Stadium','played',22),(221,39,6,20,221,0,NULL,NULL,'Emirates Stadium','played',23),(223,39,3,8,223,3,NULL,NULL,'Stamford Bridge','played',23),(224,39,13,2,224,2,NULL,NULL,'Selhurst Park','played',23),(225,39,16,12,225,12,NULL,NULL,'Goodison Park','played',23),(226,39,15,17,226,17,NULL,NULL,'Elland Road','played',23),(227,39,11,9,227,0,NULL,NULL,'King Power Stadium','played',23),(228,39,5,4,228,5,NULL,NULL,'Old Trafford','played',23),(229,39,10,1,229,0,NULL,NULL,'St. Mary\'s Stadium','played',23),(230,39,19,18,230,18,NULL,NULL,'Vicarage Road','played',23),(231,39,12,15,231,0,NULL,NULL,'Villa Park','played',24),(232,39,9,3,232,0,NULL,NULL,'Amex Stadium','played',22),(233,39,20,5,233,0,NULL,NULL,'Turf Moor','played',24),(234,39,18,13,234,0,NULL,NULL,'Carrow Road','played',24),(235,39,4,19,235,4,NULL,NULL,'London Stadium','played',24),(236,39,7,6,236,6,NULL,NULL,'Molineux Stadium','played',24),(237,39,17,16,237,17,NULL,NULL,'St. James\' Park','played',24),(239,39,2,11,239,2,NULL,NULL,'Anfield','played',24),(240,39,1,14,240,1,NULL,NULL,'Etihad Stadium','played',24),(242,39,20,2,242,2,NULL,NULL,'Turf Moor','played',25),(243,39,3,6,243,0,NULL,NULL,'Stamford Bridge','not_played',25),(244,39,16,15,244,16,NULL,NULL,'Goodison Park','played',25),(245,39,11,4,245,0,NULL,NULL,'King Power Stadium','played',25),(246,39,5,10,246,0,NULL,NULL,'Old Trafford','played',25),(247,39,17,12,247,17,NULL,NULL,'St. James\' Park','played',25),(248,39,18,1,248,1,NULL,NULL,'Carrow Road','played',25),(250,39,19,9,250,9,NULL,NULL,'Vicarage Road','played',25),(251,39,6,14,251,6,NULL,NULL,'Emirates Stadium','played',26),(252,39,12,19,252,19,NULL,NULL,'Villa Park','played',26),(253,39,9,20,253,20,NULL,NULL,'Amex Stadium','played',26),(254,39,13,3,254,3,NULL,NULL,'Selhurst Park','played',26),(255,39,15,5,255,5,NULL,NULL,'Elland Road','played',26),(256,39,2,18,256,2,NULL,NULL,'Anfield','played',26),(257,39,1,8,257,8,NULL,NULL,'Etihad Stadium','played',26),(258,39,10,16,258,10,NULL,NULL,'St. Mary\'s Stadium','played',26),(259,39,4,17,259,0,NULL,NULL,'London Stadium','played',26),(260,39,7,11,260,7,NULL,NULL,'Molineux Stadium','played',26),(261,39,6,2,261,0,NULL,NULL,'Emirates Stadium','not_played',27),(263,39,9,12,263,0,NULL,NULL,'Amex Stadium','not_played',27),(264,39,3,11,264,0,NULL,NULL,'Stamford Bridge','not_played',27),(265,39,13,20,265,0,NULL,NULL,'Selhurst Park','not_played',27),(266,39,16,1,266,0,NULL,NULL,'Goodison Park','not_played',27),(267,39,15,8,267,0,NULL,NULL,'Elland Road','not_played',27),(268,39,5,19,268,0,NULL,NULL,'Old Trafford','not_played',27),(269,39,10,18,269,0,NULL,NULL,'St. Mary\'s Stadium','not_played',27),(270,39,4,7,270,0,NULL,NULL,'London Stadium','not_played',27),(271,39,12,10,271,0,NULL,NULL,'Villa Park','not_played',28),(272,39,20,3,272,0,NULL,NULL,'Turf Moor','not_played',28),(273,39,11,15,273,0,NULL,NULL,'King Power Stadium','not_played',28),(274,39,2,4,274,0,NULL,NULL,'Anfield','not_played',28),(275,39,1,5,275,0,NULL,NULL,'Etihad Stadium','not_played',28),(276,39,17,9,276,0,NULL,NULL,'St. James\' Park','not_played',28),(277,39,18,14,277,0,NULL,NULL,'Carrow Road','not_played',28),(279,39,19,6,279,0,NULL,NULL,'Vicarage Road','not_played',28),(280,39,7,13,280,0,NULL,NULL,'Molineux Stadium','not_played',28),(281,39,6,11,281,0,NULL,NULL,'Emirates Stadium','not_played',29),(283,39,9,2,283,0,NULL,NULL,'Amex Stadium','not_played',29),(284,39,3,17,284,0,NULL,NULL,'Stamford Bridge','not_played',29),(285,39,13,1,285,0,NULL,NULL,'Selhurst Park','not_played',29),(286,39,16,7,286,0,NULL,NULL,'Goodison Park','not_played',29),(287,39,15,18,287,0,NULL,NULL,'Elland Road','not_played',29),(288,39,5,8,288,0,NULL,NULL,'Old Trafford','not_played',29),(289,39,10,19,289,0,NULL,NULL,'St. Mary\'s Stadium','not_played',29),(290,39,4,12,290,0,NULL,NULL,'London Stadium','not_played',29),(291,39,12,6,291,0,NULL,NULL,'Villa Park','not_played',30),(292,39,20,10,292,0,NULL,NULL,'Turf Moor','not_played',30),(293,39,11,14,293,0,NULL,NULL,'King Power Stadium','not_played',30),(294,39,2,5,294,0,NULL,NULL,'Anfield','not_played',30),(295,39,1,9,295,0,NULL,NULL,'Etihad Stadium','not_played',30),(296,39,17,13,296,0,NULL,NULL,'St. James\' Park','not_played',30),(297,39,18,3,297,0,NULL,NULL,'Carrow Road','not_played',30),(299,39,19,16,299,0,NULL,NULL,'Vicarage Road','not_played',30),(300,39,7,15,300,0,NULL,NULL,'Molineux Stadium','not_played',30),(301,39,9,18,301,0,NULL,NULL,'Amex Stadium','not_played',31),(302,39,20,1,302,0,NULL,NULL,'Turf Moor','not_played',31),(303,39,3,14,303,0,NULL,NULL,'Stamford Bridge','not_played',31),(304,39,13,6,304,0,NULL,NULL,'Selhurst Park','not_played',31),(305,39,15,10,305,0,NULL,NULL,'Elland Road','not_played',31),(306,39,2,19,306,0,NULL,NULL,'Anfield','not_played',31),(307,39,5,11,307,0,NULL,NULL,'Old Trafford','not_played',31),(309,39,4,16,309,0,NULL,NULL,'London Stadium','not_played',31),(310,39,7,12,310,0,NULL,NULL,'Molineux Stadium','not_played',31),(311,39,6,9,311,0,NULL,NULL,'Emirates Stadium','not_played',32),(312,39,12,8,312,0,NULL,NULL,'Villa Park','not_played',32),(314,39,16,5,314,0,NULL,NULL,'Goodison Park','not_played',32),(315,39,11,13,315,0,NULL,NULL,'King Power Stadium','not_played',32),(316,39,1,2,316,0,NULL,NULL,'Etihad Stadium','not_played',32),(317,39,17,7,317,0,NULL,NULL,'St. James\' Park','not_played',32),(318,39,18,20,318,0,NULL,NULL,'Carrow Road','not_played',32),(319,39,10,3,319,0,NULL,NULL,'St. Mary\'s Stadium','not_played',32),(320,39,19,15,320,0,NULL,NULL,'Vicarage Road','not_played',32),(321,39,12,2,321,0,NULL,NULL,'Villa Park','not_played',33),(322,39,16,13,322,0,NULL,NULL,'Goodison Park','not_played',33),(323,39,15,3,323,0,NULL,NULL,'Elland Road','not_played',33),(324,39,5,18,324,0,NULL,NULL,'Old Trafford','not_played',33),(325,39,17,11,325,0,NULL,NULL,'St. James\' Park','not_played',33),(326,39,10,6,326,0,NULL,NULL,'St. Mary\'s Stadium','not_played',33),(328,39,19,14,328,0,NULL,NULL,'Vicarage Road','not_played',33),(329,39,4,20,329,0,NULL,NULL,'London Stadium','not_played',33),(330,39,7,1,330,0,NULL,NULL,'Molineux Stadium','not_played',33),(331,39,6,5,331,0,NULL,NULL,'Emirates Stadium','not_played',34),(333,39,9,10,333,0,NULL,NULL,'Amex Stadium','not_played',34),(334,39,20,7,334,0,NULL,NULL,'Turf Moor','not_played',34),(335,39,3,4,335,0,NULL,NULL,'Stamford Bridge','not_played',34),(336,39,13,15,336,0,NULL,NULL,'Selhurst Park','not_played',34),(337,39,11,12,337,0,NULL,NULL,'King Power Stadium','not_played',34),(338,39,2,16,338,0,NULL,NULL,'Anfield','not_played',34),(339,39,1,19,339,0,NULL,NULL,'Etihad Stadium','not_played',34),(340,39,18,17,340,0,NULL,NULL,'Carrow Road','not_played',34),(341,39,12,18,341,0,NULL,NULL,'Villa Park','not_played',35),(342,39,16,3,342,0,NULL,NULL,'Goodison Park','not_played',35),(343,39,15,1,343,0,NULL,NULL,'Elland Road','not_played',35),(344,39,5,14,344,0,NULL,NULL,'Old Trafford','not_played',35),(345,39,17,2,345,0,NULL,NULL,'St. James\' Park','not_played',35),(346,39,10,13,346,0,NULL,NULL,'St. Mary\'s Stadium','not_played',35),(348,39,19,20,348,0,NULL,NULL,'Vicarage Road','not_played',35),(349,39,4,6,349,0,NULL,NULL,'London Stadium','not_played',35),(350,39,7,9,350,0,NULL,NULL,'Molineux Stadium','not_played',35),(351,39,6,15,351,0,NULL,NULL,'Emirates Stadium','not_played',36),(353,39,9,5,353,0,NULL,NULL,'Amex Stadium','not_played',36),(354,39,20,12,354,0,NULL,NULL,'Turf Moor','not_played',36),(355,39,3,7,355,0,NULL,NULL,'Stamford Bridge','not_played',36),(356,39,13,19,356,0,NULL,NULL,'Selhurst Park','not_played',36),(357,39,11,16,357,0,NULL,NULL,'King Power Stadium','not_played',36),(358,39,2,8,358,0,NULL,NULL,'Anfield','not_played',36),(359,39,1,17,359,0,NULL,NULL,'Etihad Stadium','not_played',36),(360,39,18,4,360,0,NULL,NULL,'Carrow Road','not_played',36),(361,39,12,13,361,0,NULL,NULL,'Villa Park','not_played',37),(362,39,16,14,362,0,NULL,NULL,'Goodison Park','not_played',37),(363,39,15,9,363,0,NULL,NULL,'Elland Road','not_played',37),(364,39,5,3,364,0,NULL,NULL,'Old Trafford','not_played',37),(365,39,17,6,365,0,NULL,NULL,'St. James\' Park','not_played',37),(366,39,10,2,366,0,NULL,NULL,'St. Mary\'s Stadium','not_played',37),(368,39,19,11,368,0,NULL,NULL,'Vicarage Road','not_played',37),(369,39,4,1,369,0,NULL,NULL,'London Stadium','not_played',37),(370,39,7,18,370,0,NULL,NULL,'Molineux Stadium','not_played',37),(371,39,6,16,371,0,NULL,NULL,'Emirates Stadium','not_played',38),(373,39,9,4,373,0,NULL,NULL,'Amex Stadium','not_played',38),(374,39,20,17,374,0,NULL,NULL,'Turf Moor','not_played',38),(375,39,3,19,375,0,NULL,NULL,'Stamford Bridge','not_played',38),(376,39,13,5,376,0,NULL,NULL,'Selhurst Park','not_played',38),(377,39,11,10,377,0,NULL,NULL,'King Power Stadium','not_played',38),(378,39,2,7,378,0,NULL,NULL,'Anfield','not_played',38),(379,39,1,12,379,0,NULL,NULL,'Etihad Stadium','not_played',38),(380,39,18,8,380,0,NULL,NULL,'Carrow Road','not_played',38);
/*!40000 ALTER TABLE `games` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player`
--

DROP TABLE IF EXISTS `player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player` (
  `playerid` int NOT NULL AUTO_INCREMENT,
  `teamid` int DEFAULT NULL,
  `playername` char(50) NOT NULL,
  `position` char(20) DEFAULT NULL,
  `player_age` int DEFAULT NULL,
  PRIMARY KEY (`playerid`)
) ENGINE=InnoDB AUTO_INCREMENT=349289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player`
--

LOCK TABLES `player` WRITE;
/*!40000 ALTER TABLE `player` DISABLE KEYS */;
INSERT INTO `player` VALUES (17,3,'C. Pulisic','Midfielder',24),(18,5,'J. Sancho','Attacker',22),(44,1,'Rodri','Midfielder',26),(48,3,'Saúl','Midfielder',28),(49,6,'T. Partey','Midfielder',29),(76,12,'Marvelous Nakamba','Midfielder',28),(80,19,'E. Dennis','Attacker',25),(130,7,'Nélson Semedo','Defender',29),(147,12,'Philippe Coutinho','Midfielder',30),(159,8,'H. Lloris','Goalkeeper',36),(161,8,'A. Whiteman','Goalkeeper',24),(164,8,'B. Davies','Defender',29),(167,19,'D. Rose','Defender',32),(168,8,'D. Sánchez','Defender',26),(169,17,'K. Trippier','Defender',32),(171,10,'K. Walker-Peters','Defender',25),(172,16,'D. Alli','Midfielder',26),(174,14,'C. Eriksen','Midfielder',30),(175,8,'E. Dier','Midfielder',28),(178,8,'Lucas Moura','Midfielder',30),(179,19,'M. Sissoko','Midfielder',33),(180,8,'O. Skipp','Midfielder',22),(182,8,'H. Winks','Midfielder',26),(184,8,'H. Kane','Attacker',29),(186,8,'Son Heung-Min','Midfielder',30),(190,6,'Cédric Soares','Defender',31),(244,8,'S. Bergwijn','Attacker',25),(253,4,'A. Areola','Goalkeeper',29),(259,3,'Thiago Emiliano da Silva','Defender',38),(274,5,'Edinson Roberto Cavani Gómez','Attacker',35),(280,2,'Alisson','Goalkeeper',30),(281,2,'C. Kelleher','Goalkeeper',24),(283,2,'T. Alexander-Arnold','Defender',24),(284,2,'J. Gomez','Defender',25),(285,7,'K. Hoever','Defender',20),(286,2,'J. Matip','Defender',31),(289,2,'A. Robertson','Defender',28),(290,2,'V. van Dijk','Defender',31),(292,2,'J. Henderson','Midfielder',32),(293,2,'C. Jones','Midfielder',21),(294,2,'N. Keïta','Midfielder',27),(295,9,'A. Lallana','Midfielder',34),(296,2,'James Philip Milner','Midfielder',36),(297,2,'A. Oxlade-Chamberlain','Midfielder',29),(299,2,'Fabinho','Midfielder',29),(302,2,'Roberto Firmino','Attacker',31),(304,2,'S. Mané','Attacker',30),(305,2,'D. Origi','Attacker',27),(306,2,'Mohamed Salah','Attacker',30),(326,16,'Allan','Midfielder',31),(378,5,'Alex Telles','Defender',30),(507,2,'Thiago Alcântara','Midfielder',31),(537,9,'J. Veltman','Defender',30),(547,16,'D. van de Beek','Midfielder',25),(548,3,'H. Ziyech','Midfielder',29),(567,1,'Rúben Dias','Defender',25),(617,1,'Ederson Moraes','Goalkeeper',29),(622,1,'Aymeric Laporte','Defender',28),(623,1,'B. Mendy','Defender',28),(626,1,'J. Stones','Defender',28),(627,1,'K. Walker','Defender',32),(629,1,'K. De Bruyne','Midfielder',31),(630,16,'F. Delph','Midfielder',33),(631,1,'P. Foden','Midfielder',22),(633,1,'İ. Gündoğan','Midfielder',32),(635,1,'R. Mahrez','Attacker',31),(636,1,'Bernardo Silva','Midfielder',28),(640,1,'Fernandinho','Midfielder',37),(641,1,'O. Zinchenko','Midfielder',26),(643,1,'Gabriel Jesus','Attacker',25),(645,1,'R. Sterling','Attacker',28),(652,7,'Fernando Marçal','Defender',33),(665,20,'M. Cornet','Attacker',26),(671,12,'B. Traoré','Attacker',27),(720,18,'L. Rupp','Midfielder',31),(723,17,'Joelinton','Attacker',26),(739,8,'Reguilón','Defender',26),(742,5,'R. Varane','Defender',29),(766,12,'R. Olsen','Goalkeeper',32),(842,4,'N. Vlašić','Midfielder',25),(855,1,'João Cancelo','Defender',28),(863,8,'R. Bentancur','Midfielder',25),(874,5,'Cristiano Ronaldo','Attacker',37),(882,5,'David de Gea','Goalkeeper',32),(883,5,'Lee Grant','Goalkeeper',39),(885,5,'E. Bailly','Defender',28),(886,5,'Diogo Dalot','Defender',23),(888,5,'Phil Jones','Defender',30),(889,5,'V. Lindelöf','Defender',28),(891,5,'L. Shaw','Defender',27),(894,12,'A. Young','Defender',37),(897,5,'M. Greenwood','Attacker',21),(900,5,'J. Lingard','Midfielder',30),(901,5,'Mata','Midfielder',34),(902,5,'N. Matić','Midfielder',34),(903,5,'S. McTominay','Midfielder',26),(904,5,'P. Pogba','Midfielder',29),(905,5,'Fred','Midfielder',29),(907,3,'R. Lukaku','Attacker',29),(909,5,'M. Rashford','Attacker',25),(935,15,'Rodrigo','Attacker',31),(978,3,'K. Havertz','Midfielder',23),(983,12,'L. Bailey','Attacker',25),(1093,9,'E. Mwepu','Midfielder',24),(1098,11,'P. Daka','Attacker',24),(1101,2,'T. Minamino','Attacker',27),(1117,6,'K. Tierney','Defender',25),(1119,14,'K. Ajer','Defender',24),(1131,4,'A. Okoflex','Midfielder',20),(1135,13,'O. Édouard','Attacker',24),(1145,2,'I. Konaté','Defender',23),(1161,6,'E. Smith Rowe','Midfielder',22),(1166,3,'T. Werner','Attacker',26),(1231,4,'V. Coufal','Defender',30),(1234,4,'A. Král','Midfielder',24),(1243,4,'T. Souček','Midfielder',27),(1276,19,'S. Kalu','Attacker',25),(1424,19,'E. Kayembe','Midfielder',24),(1427,6,'Albert-Mboyo Sambi Lokonga','Midfielder',23),(1438,6,'B. Leno','Goalkeeper',30),(1440,6,'R. Holding','Defender',27),(1452,6,'Mohamed Elneny','Midfielder',30),(1455,16,'A. Iwobi','Attacker',26),(1460,6,'Bukayo Saka','Attacker',21),(1463,17,'J. Willock','Midfielder',23),(1464,6,'G. Xhaka','Midfielder',30),(1467,6,'A. Lacazette','Attacker',31),(1468,6,'E. Nketiah','Attacker',23),(1469,9,'D. Welbeck','Attacker',32),(1485,5,'Bruno Fernandes','Midfielder',28),(1496,15,'Raphael Dias Belloli','Attacker',26),(1564,15,'Junior Firpo','Defender',26),(1566,8,'Emerson','Defender',23),(1590,7,'José Sá','Goalkeeper',29),(1600,2,'K. Tsimikas','Defender',26),(1605,7,'Daniel Podence','Midfielder',27),(1697,4,'Pablo Fornals','Midfielder',26),(1864,7,'Pedro Neto','Attacker',22),(1914,12,'M. Sanson','Midfielder',28),(1946,9,'L. Trossard','Attacker',28),(1972,2,'L. Karius','Goalkeeper',29),(2114,10,'M. Djenepo','Midfielder',24),(2165,16,'V. Mykolenko','Defender',23),(2218,19,'I. Sarr','Attacker',24),(2273,3,'Kepa','Goalkeeper',28),(2275,10,'W. Caballero','Goalkeeper',41),(2278,3,'Marcos Alonso','Defender',32),(2280,3,'Azpilicueta','Defender',33),(2282,3,'A. Christensen','Defender',26),(2285,3,'A. Rüdiger','Defender',29),(2287,3,'R. Barkley','Midfielder',29),(2289,3,'Jorginho','Midfielder',31),(2290,3,'N. Kanté','Midfielder',31),(2291,3,'M. Kovačić','Midfielder',28),(2292,3,'R. Loftus-Cheek','Midfielder',26),(2298,3,'C. Hudson-Odoi','Attacker',22),(2360,18,'D. Giannoulis','Defender',27),(2413,16,'Richarlison','Attacker',25),(2461,16,'S. Rondón','Attacker',33),(2473,4,'M. Lanzini','Midfielder',29),(2484,16,'Y. Mina','Defender',28),(2489,2,'L. Díaz','Attacker',25),(2507,17,'M. Almirón','Midfielder',28),(2597,6,'Takehiro Tomiyasu','Defender',24),(2664,12,'Trézéguet','Midfielder',28),(2676,7,'Rúben Neves','Midfielder',25),(2677,7,'João Moutinho','Midfielder',36),(2678,2,'Diogo Jota','Attacker',26),(2699,14,'S. Ghoddos','Attacker',29),(2716,7,'R. Saïss','Midfielder',32),(2724,12,'L. Digne','Defender',29),(2726,4,'K. Zouma','Defender',28),(2727,14,'J. Lössl','Goalkeeper',33),(2728,11,'K. Schmeichel','Goalkeeper',36),(2729,13,'J. Andersen','Defender',26),(2731,14,'M. Jørgensen','Defender',32),(2735,8,'P. Højbjerg','Midfielder',27),(2773,19,'W. Troost-Ekong','Defender',29),(2774,19,'O. Etebo','Midfielder',27),(2778,11,'K. Ịheanachọ','Attacker',26),(2790,20,'J. Guðmunds­son','Midfielder',32),(2795,16,'G. Sigurðsson','Midfielder',33),(2806,17,'F. Schär','Defender',31),(2855,17,'E. Krafth','Defender',28),(2860,19,'K. Sema','Midfielder',29),(2887,7,'R. Jiménez','Attacker',31),(2920,11,'T. Castagne','Defender',27),(2922,7,'L. Dendoncker','Defender',27),(2926,11,'Y. Tielemans','Midfielder',25),(2928,13,'C. Benteke','Attacker',32),(2930,13,'Jack Butland','Goalkeeper',29),(2931,5,'Tom Heaton','Goalkeeper',36),(2932,16,'J. Pickford','Goalkeeper',28),(2933,3,'B. Chilwell','Defender',26),(2934,16,'M. Keane','Defender',29),(2935,5,'H. Maguire','Defender',29),(2936,20,'J. Tarkowski','Defender',30),(2937,4,'D. Rice','Midfielder',23),(2938,10,'J. Ward-Prowse','Midfielder',28),(2939,17,'C. Wilson','Attacker',30),(2986,3,'É. Mendy','Goalkeeper',30),(2991,13,'C. Kouyaté','Midfielder',33),(2997,4,'Ł. Fabiański','Goalkeeper',37),(2999,10,'J. Bednarek','Defender',26),(3008,15,'M. Klich','Midfielder',32),(3240,16,'J. Gbamin','Midfielder',27),(3246,6,'N. Pépé','Attacker',27),(3247,13,'W. Zaha','Attacker',30),(3421,11,'D. Amartey','Defender',28),(3428,13,'J. Ayew','Attacker',31),(6716,9,'A. Mac Allister','Midfielder',24),(8634,18,'R. Bushiri','Defender',23),(10135,17,'Bruno Guimarães','Midfielder',25),(10329,19,'João Pedro','Attacker',21),(15745,14,'M. Rasmussen','Defender',23),(15799,14,'F. Onyeka','Midfielder',24),(15832,18,'J. Sørensen','Midfielder',24),(17661,16,'J. Branthwaite','Defender',20),(17676,15,'L. McCarron','Midfielder',21),(17715,9,'S. Alzate','Midfielder',24),(18146,11,'D. Ward','Goalkeeper',29),(18736,20,'W. Norris','Goalkeeper',29),(18737,7,'J. Ruddy','Goalkeeper',36),(18739,7,'W. Boly','Defender',31),(18740,7,'Jonny Castro','Defender',28),(18741,7,'C. Coady','Defender',29),(18742,8,'M. Doherty','Defender',30),(18744,7,'M. Kilman','Defender',25),(18758,16,'Séamus Coleman','Defender',34),(18760,16,'J. Kenny','Defender',25),(18762,16,'T. Davies','Midfielder',24),(18765,16,'André Gomes','Midfielder',29),(18766,16,'D. Calvert-Lewin','Attacker',25),(18767,11,'A. Lookman','Attacker',25),(18768,16,'C. Tosun','Attacker',31),(18769,10,'T. Walcott','Attacker',33),(18770,11,'Eldin Jakupovic','Goalkeeper',38),(18771,11,'Ricardo Pereira','Defender',29),(18772,11,'J. Evans','Defender',34),(18776,11,'Ç. Söyüncü','Defender',26),(18777,11,'M. Albrighton','Midfielder',33),(18778,11,'H. Barnes','Midfielder',25),(18779,11,'H. Choudhury','Midfielder',25),(18781,16,'D. Gray','Midfielder',26),(18784,11,'J. Maddison','Midfielder',26),(18785,11,'N. Mendy','Midfielder',30),(18786,11,'W. Ndidi','Midfielder',26),(18788,11,'J. Vardy','Attacker',35),(18791,19,'B. Foster','Goalkeeper',39),(18793,19,'C. Cathcart','Defender',33),(18794,19,'Kiko Femenía','Defender',31),(18797,19,'C. Kabasele','Defender',31),(18799,19,'A. Masina','Defender',28),(18804,19,'T. Cleverley','Midfielder',33),(18805,16,'A. Doucouré','Midfielder',29),(18806,13,'W. Hughes','Midfielder',27),(18812,2,'Adrián','Goalkeeper',35),(18813,4,'A. Cresswell','Defender',33),(18814,4,'I. Diop','Defender',25),(18815,4,'R. Fredericks','Defender',30),(18816,4,'A. Masuaku','Defender',29),(18817,4,'Angelo Obinze Ogbonna','Defender',34),(18819,4,'M. Antonio','Attacker',32),(18823,4,'B. Johnson','Defender',22),(18826,4,'Mark Noble','Midfielder',35),(18834,4,'Andrii Yarmolenko','Midfielder',33),(18835,13,'Guaita','Goalkeeper',35),(18836,20,'Wayne Robert Hennessey','Goalkeeper',35),(18840,13,'Martin Kelly','Defender',32),(18843,13,'J. Schlupp','Midfielder',30),(18844,13,'J. Tomkins','Defender',33),(18846,5,'A. Wan-Bissaka','Defender',25),(18847,13,'J. Ward','Defender',33),(18849,13,'J. McArthur','Midfielder',35),(18852,13,'L. Milivojević','Midfielder',31),(18853,13,'J. Riedewald','Midfielder',26),(18854,16,'A. Townsend','Midfielder',31),(18858,16,'A. Begović','Goalkeeper',35),(18861,1,'N. Aké','Defender',27),(18862,13,'Nathaniel Edwin Clyne','Defender',31),(18873,17,'R. Fraser','Midfielder',28),(18874,19,'D. Gosling','Midfielder',32),(18881,19,'J. King','Attacker',30),(18885,17,'K. Darlow','Goalkeeper',32),(18886,17,'M. Dúbravka','Goalkeeper',33),(18887,19,'R. Elliot','Goalkeeper',36),(18891,17,'Ciaran Clark','Defender',33),(18892,17,'P. Dummett','Defender',31),(18893,17,'F. Fernández','Defender',33),(18894,17,'J. Lascelles','Defender',29),(18896,17,'Javi Manquillo','Defender',28),(18899,17,'I. Hayden','Midfielder',27),(18901,17,'S. Longstaff','Midfielder',25),(18902,3,'Kenedy','Midfielder',26),(18903,17,'M. Ritchie','Midfielder',33),(18904,17,'Jonjo Shelvey','Midfielder',30),(18906,11,'Ayoze Pérez','Attacker',29),(18911,20,'N. Pope','Goalkeeper',30),(18912,20,'P. Bardsley','Defender',37),(18914,18,'B. Gibson','Defender',29),(18915,20,'Kevin Long','Defender',32),(18916,20,'M. Lowton','Defender',33),(18917,20,'B. Mee','Defender',33),(18918,20,'C. Taylor','Defender',29),(18922,20,'Jack Cork','Midfielder',33),(18925,20,'A. Lennon','Midfielder',35),(18926,20,'A. Westwood','Midfielder',32),(18927,20,'Ashley Luke Barnes','Attacker',33),(18929,20,'D. McNeil','Attacker',23),(18930,20,'M. Vydra','Attacker',30),(18931,17,'C. Wood','Attacker',31),(18932,10,'F. Forster','Goalkeeper',34),(18933,18,'Angus Gunn','Goalkeeper',26),(18934,10,'H. Lewis','Goalkeeper',25),(18935,10,'A. McCarthy','Goalkeeper',33),(18936,11,'R. Bertrand','Defender',33),(18940,10,'J. Stephens','Defender',28),(18941,17,'M. Targett','Defender',27),(18942,10,'Y. Valery','Defender',23),(18943,11,'J. Vestergaard','Defender',30),(18945,10,'S. Armstrong','Midfielder',30),(18946,10,'M. Elyounoussi','Midfielder',28),(18948,10,'N. Redmond','Midfielder',28),(18949,10,'Oriol Romeu','Midfielder',31),(18955,12,'D. Ings','Attacker',30),(18956,10,'S. Long','Attacker',35),(18959,9,'Robert Sánchez','Goalkeeper',25),(18960,9,'Jason Steele','Goalkeeper',32),(18961,17,'D. Burn','Defender',30),(18962,9,'S. Duffy','Defender',30),(18963,9,'L. Dunk','Defender',31),(18968,9,'Y. Bissouma','Midfielder',26),(18970,9,'P. Groß','Midfielder',31),(18973,9,'S. March','Midfielder',28),(18977,20,'Dale Stephens','Midfielder',33),(19012,3,'M. Bettinelli','Goalkeeper',30),(19016,12,'C. Chambers','Defender',27),(19032,8,'R. Sessegnon','Midfielder',22),(19035,2,'H. Elliott','Midfielder',19),(19061,18,'T. Krul','Goalkeeper',34),(19062,18,'M. McGovern','Goalkeeper',38),(19066,18,'G. Hanley','Defender',31),(19069,18,'C. Zimmermann','Defender',29),(19070,18,'M. Aarons','Defender',22),(19071,12,'Emiliano Buendía','Midfielder',26),(19073,16,'B. Godfrey','Defender',24),(19076,17,'J. Lewis','Defender',24),(19077,18,'K. McLean','Midfielder',30),(19085,18,'Teemu Eino Antero Pukki','Attacker',32),(19088,5,'D. Henderson','Goalkeeper',25),(19100,18,'K. Dowell','Midfielder',25),(19116,15,'L. Ayling','Defender',31),(19118,15,'L. Cooper','Defender',31),(19124,14,'P. Jansson','Defender',31),(19126,15,'S. Dallas','Defender',31),(19127,15,'A. Forshaw','Midfielder',31),(19128,15,'Jack Harrison','Midfielder',26),(19130,15,'Kalvin Phillips','Midfielder',27),(19131,15,'J. Shackleton','Midfielder',23),(19134,15,'P. Bamford','Attacker',29),(19139,15,'T. Roberts','Attacker',23),(19147,4,'C. Dawson','Defender',32),(19150,16,'M. Holgate','Defender',26),(19163,17,'J. Murphy','Midfielder',27),(19166,17,'D. Gayle','Attacker',33),(19169,20,'Jay Rodriguez','Attacker',33),(19173,7,'M. Šarkić','Goalkeeper',25),(19177,12,'K. Hause','Defender',27),(19179,12,'T. Mings','Defender',29),(19187,1,'J. Grealish','Midfielder',27),(19191,12,'John McGinn','Midfielder',28),(19192,12,'J. Ramsey','Midfielder',21),(19195,16,'A. El Ghazi','Midfielder',27),(19197,1,'Scott Carson','Goalkeeper',37),(19220,3,'M. Mount','Midfielder',23),(19229,4,'Darren Randolph','Goalkeeper',35),(19251,19,'A. Fletcher','Attacker',27),(19265,9,'A. Webster','Defender',27),(19268,20,'J. Brownhill','Midfielder',27),(19287,18,'S. Byram','Defender',29),(19298,12,'Matty Cash','Midfielder',25),(19321,8,'J. Rodon','Defender',25),(19329,15,'D. James','Attacker',25),(19331,20,'C. Roberts','Defender',27),(19340,14,'E. Balcombe','Goalkeeper',23),(19345,14,'M. Sørensen','Defender',23),(19346,14,'R. Henry','Defender',25),(19347,14,'J. Jeanvier','Defender',30),(19349,14,'J. Oksanen','Defender',22),(19352,14,'Sergi Canós','Midfielder',25),(19354,12,'Ezri Konsa Ngoyo','Defender',25),(19361,4,'S. Benrahma','Attacker',27),(19362,14,'J. Dasilva','Attacker',24),(19364,9,'N. Maupay','Attacker',26),(19366,12,'O. Watkins','Attacker',27),(19428,4,'J. Bowen','Attacker',26),(19465,14,'David Raya','Goalkeeper',27),(19484,10,'A. Armstrong','Attacker',25),(19495,20,'N. Collins','Defender',21),(19524,10,'C. Adams','Attacker',26),(19545,3,'R. James','Defender',23),(19569,15,'J. Gelhardt','Attacker',20),(19586,13,'E. Eze','Midfielder',24),(19599,12,'E. Martínez','Goalkeeper',30),(19617,13,'M. Olise','Midfielder',21),(19629,4,'David Edward Martin','Goalkeeper',36),(19684,13,'R. Matthews','Goalkeeper',28),(19720,3,'T. Chalobah','Midfielder',23),(19760,11,'J. Justin','Defender',24),(19789,14,'E. Pinnock','Defender',29),(19831,14,'T. Fosu','Midfielder',27),(19959,6,'Benjamin White','Defender',25),(19974,14,'I. Toney','Attacker',26),(20110,14,'S. Baptiste','Midfielder',24),(20224,16,'Andrew Lonergan','Goalkeeper',39),(20355,6,'A. Ramsdale','Goalkeeper',24),(20557,10,'I. Diallo','Midfielder',23),(20589,14,'B. Mbeumo','Attacker',23),(20600,10,'R. Perraud','Defender',25),(20619,15,'I. Meslier','Goalkeeper',22),(20649,14,'Y. Wissa','Attacker',26),(21100,19,'I. Louza','Midfielder',23),(21138,7,'R. Aït Nouri','Defender',21),(21383,20,'E. Pieters','Defender',34),(22007,19,'H. Kamara','Defender',28),(22094,11,'W. Fofana','Defender',22),(22166,3,'M. Sarr','Defender',23),(22170,18,'P. Lees Melou','Midfielder',29),(22173,17,'A. Saint-Maximin','Midfielder',25),(22224,6,'Gabriel Magalhães','Defender',25),(22233,11,'B. Soumaré','Midfielder',23),(24888,7,'Hwang Hee-Chan','Midfielder',26),(25073,14,'V. Janelt','Midfielder',24),(25324,18,'M. Rashica','Midfielder',26),(25332,18,'J. Sargent','Attacker',22),(25416,20,'W. Weghorst','Attacker',30),(25927,13,'J. Mateta','Attacker',25),(26238,15,'Robin Koch','Defender',26),(26300,18,'O. Kabak','Defender',22),(30407,14,'C. Nørgaard','Midfielder',28),(30418,8,'P. Gollini','Goalkeeper',27),(30435,8,'D. Kulusevski','Midfielder',22),(30476,10,'Lyanco','Defender',25),(30503,19,'N. N&apos;Koulou','Defender',32),(30776,8,'C. Romero','Defender',24),(30795,19,'Samir','Defender',28),(31016,19,'F. Sierralta','Defender',25),(31023,19,'J. Kucka','Midfielder',35),(37127,6,'Martin Ødegaard','Midfielder',24),(37724,15,'C. Summerville','Attacker',21),(38781,3,'X. Mbuyamba','Defender',21),(39105,15,'K. Klaesson','Goalkeeper',22),(40774,18,'P. Płacheta','Midfielder',24),(40911,9,'J. Moder','Midfielder',23),(41112,7,'Trincão','Attacker',23),(41577,6,'Nuno Albertino Varela Tavares','Defender',22),(41606,7,'Toti','Defender',23),(43071,9,'T. Băluţă','Defender',23),(44775,19,'D. Bachmann','Goalkeeper',28),(44912,17,'Mark Gillespie','Goalkeeper',30),(44928,15,'S. McKinstry','Midfielder',20),(47016,14,'Álvaro Fernández','Goalkeeper',24),(47302,15,'Diego Llorente','Defender',29),(47380,9,'Cucurella','Defender',24),(47438,14,'M. Jensen','Midfielder',26),(47480,10,'M. Salisu','Defender',23),(47522,12,'Douglas Luiz Soares de Paulo','Midfielder',24),(47582,19,'J. Hernández','Attacker',23),(50828,1,'Z. Steffen','Goalkeeper',27),(53525,18,'M. Normann','Midfielder',26),(60353,8,'M. Paskotši','Defender',19),(64003,15,'P. Struijk','Defender',23),(67971,13,'M. Guéhi','Defender',22),(67972,13,'C. Gallagher','Midfielder',22),(68126,17,'L. Cass','Defender',22),(69257,9,'J. Furlong','Defender',20),(90497,4,'W. Reid','Defender',34),(107087,13,'S. Banks','Attacker',21),(116117,9,'M. Caicedo','Midfielder',21),(127605,13,'N. Ferguson','Midfielder',22),(127769,6,'Gabriel Teodoro Martinelli Silva','Attacker',21),(129643,9,'E. Ferguson','Attacker',18),(129791,7,'Fábio Silva','Attacker',20),(130417,18,'A. Idah','Attacker',21),(130421,10,'W. Smallbone','Midfielder',22),(130423,18,'B. Gilmour','Midfielder',21),(137220,9,'A. Moran','Midfielder',19),(137299,20,'L. Richardson','Attacker',19),(137300,9,'H. Roberts','Defender',20),(138411,2,'L. Hughes','Goalkeeper',21),(138417,16,'N. Patterson','Defender',21),(138787,16,'A. Gordon','Attacker',21),(138793,8,'H. White','Midfielder',21),(138806,18,'B. Williams','Defender',22),(138808,5,'D. Bughail-Mellor','Attacker',22),(138815,9,'T. Lamptey','Defender',22),(138822,10,'A. Broja','Attacker',21),(138829,2,'E. Dixon-Bonner','Midfielder',21),(138839,8,'T. Omole','Defender',23),(138842,6,'M. Azeez','Midfielder',20),(138844,16,'H. Tyrer','Goalkeeper',21),(138864,10,'K. Chauke','Midfielder',19),(138874,9,'A. Tsoungui','Defender',20),(138890,8,'B. Lyons-Foster','Defender',22),(138909,17,'D. Langley','Goalkeeper',22),(138929,11,'L. Brunt','Midfielder',22),(138935,12,'Carney Chukwuemeka','Midfielder',19),(141133,4,'A. Alese','Defender',21),(144710,13,'R. Hannam','Defender',22),(144720,4,'K. Appiah-Forson','Midfielder',21),(144725,4,'K. Simon-Swyer','Midfielder',20),(147835,18,'A. Omobamidele','Defender',20),(148099,11,'K. Dewsbury-Hall','Midfielder',24),(149550,8,'J. Tanganga','Defender',23),(149564,7,'L. Cundle','Midfielder',20),(152699,19,'K. Baah','Attacker',19),(152952,3,'X. Simons','Midfielder',19),(152955,3,'L. Bergström','Goalkeeper',20),(152969,11,'L. Thomas','Defender',21),(152974,2,'B. Koumetio','Defender',20),(152979,2,'J. Norris','Defender',19),(152982,1,'C. Palmer','Midfielder',20),(153261,14,'N. Young-Coombes','Attacker',19),(153400,15,'S. Greenwood','Attacker',20),(153408,14,'D. Oyegoke','Defender',19),(153425,16,'L. Dobbin','Attacker',19),(153430,5,'A. Elanga','Attacker',20),(153431,20,'M. Helm','Midfielder',21),(153434,5,'W. Fish','Defender',19),(154800,8,'M. Fagan-Walcott','Defender',20),(154804,4,'M. Emmanuel','Defender',22),(154807,4,'D. Chesters','Attacker',20),(156428,8,'B. Austin','Goalkeeper',23),(158432,7,'C. Campbell','Midfielder',20),(158693,2,'O. Beck','Defender',20),(158694,10,'V. Livramento','Defender',20),(158697,1,'J. McAtee','Midfielder',20),(158698,2,'J. Quansah','Defender',19),(158702,1,'C. Slicker','Goalkeeper',20),(161800,18,'C. Tzolis','Attacker',20),(161948,1,'Liam Delap','Attacker',19),(162075,14,'P. Maghoma','Midfielder',21),(162446,15,'L. Bate','Midfielder',20),(162493,8,'Matthew Craig','Midfielder',19),(162517,9,'L. Dendoncker','Defender',21),(162552,8,'D. Scarlett','Attacker',18),(162590,2,'T. Morton','Midfielder',20),(162904,2,'R. Williams','Defender',21),(163054,5,'S. Shoretire','Attacker',18),(167656,9,'M. Leonard','Midfielder',21),(167657,16,'T. Onyango','Midfielder',19),(167659,10,'K. Olaigbe','Attacker',19),(167660,19,'J. Morris','Defender',21),(167663,9,'T. McGill','Goalkeeper',22),(169291,12,'V. Sinisalo','Goalkeeper',21),(171034,18,'L. Gibbs','Midfielder',20),(171058,4,'H. Ashby','Defender',21),(171059,4,'J. Baptiste','Defender',19),(180308,14,'M. Peart-Harris','Midfielder',20),(180316,2,'H. Davies','Goalkeeper',19),(180317,2,'C. Bradley','Midfielder',19),(180560,5,'H. Mejbri','Midfielder',19),(180866,2,'Marcelo','Goalkeeper',20),(180940,3,'T. Sharman-Lowe','Goalkeeper',19),(181827,1,'C. Egan-Riley','Defender',19),(182201,13,'T. Mitchell','Defender',23),(193296,19,'J. Ngakia','Attacker',22),(195717,7,'Y. Mosquera','Midfielder',21),(195962,7,'Chiquinho','Attacker',22),(197811,14,'L. Gordon','Defender',21),(202086,9,'J. Sarmiento','Attacker',20),(215873,14,'A. Gilbert','Attacker',21),(231029,10,'N. Tella','Midfielder',23),(231062,6,'A. Okonkwo','Goalkeeper',21),(264437,20,'B. Thomas','Defender',21),(274550,3,'H. Vale','Midfielder',19),(275576,18,'J. McCracken','Goalkeeper',22),(276263,14,'F. Stevens','Defender',19),(276605,19,'D. Agyakwa','Defender',21),(278041,14,'M. Cox','Goalkeeper',19),(278074,6,'S. Oulad M&apos;Hand','Midfielder',19),(278083,14,'M. Haygarth','Midfielder',20),(278085,1,'S. Edozie','Attacker',19),(278092,18,'J. Tomkinson','Defender',20),(278095,18,'J. Rowe','Attacker',NULL),(278118,11,'B. Nelson','Defender',18),(278128,1,'J. Wilson-Esbrand','Defender',20),(278129,1,'L. Mbete-Tabu','Defender',19),(278133,1,'O. Bobb','Midfielder',19),(278232,4,'P. Ekwah','Defender',20),(278235,15,'K. Moore','Defender',19),(278392,15,'C. Cresswell','Defender',20),(280672,9,'E. Turns','Defender',20),(280683,2,'J. Balagizi','Attacker',19),(280687,7,'Hugo Bueno','Defender',20),(281795,19,'Y. Asprilla','Midfielder',19),(282125,1,'R. Lavia','Midfielder',18),(282254,9,'O. Offiah','Defender',20),(282901,15,'J. Jenkins','Midfielder',20),(283026,6,'M. Biereth','Attacker',19),(283288,12,'B. Young','Attacker',19),(284185,16,'C. Whitaker','Midfielder',19),(284208,20,'J. McGlynn','Attacker',20),(284237,7,'D. Lembikisa','Defender',19),(284247,2,'H. Blair','Attacker',19),(284248,2,'M. Frauendorf','Midfielder',18),(284249,2,'M. Woltman','Midfielder',19),(284286,2,'I. Mabaya','Midfielder',18),(284295,5,'Zidane Iqbal','Midfielder',19),(284297,20,'O. Dodgson','Defender',19),(284311,10,'T. Small','Defender',18),(284323,5,'C. Savage','Midfielder',19),(284327,16,'R. Welch','Defender',19),(284362,5,'B. Hardley','Defender',20),(284407,3,'J. Soonsup-Bell','Attacker',18),(284408,4,'S. Perkins','Midfielder',18),(284414,8,'R. Mundle','Midfielder',19),(284418,8,'K. Cesay','Midfielder',20),(284428,6,'O. Giraud-Hutchinson','Midfielder',19),(284442,3,'C. Webster','Midfielder',18),(284446,4,'F. Potts','Midfielder',19),(284449,13,'J. Rak-Sakyi','Midfielder',20),(284455,8,'Michael Craig','Midfielder',19),(284457,12,'L. Bogarde','Midfielder',18),(284466,6,'C. Patino','Attacker',19),(284487,11,'Wanya Marçal','Midfielder',20),(284492,3,'L. Hall','Midfielder',18),(284493,13,'Omotayo Daniel Adaramola','Defender',19),(284498,12,'H. Lindley','Midfielder',20),(284500,12,'T. Iroegbunam','Midfielder',20),(284523,12,'S. Swinkels','Defender',18),(284551,13,'J. Wells-Morrison','Midfielder',18),(286764,2,'K. Gordon','Attacker',18),(288115,7,'J. Storer','Goalkeeper',NULL),(289624,11,'S. Braybrooke','Midfielder',18),(291107,15,'N. Kenneh','Midfielder',19),(294637,11,'O. Ewing','Midfielder',19),(297187,15,'L. Hjelde','Defender',19),(305733,11,'W. Alves','Midfielder',NULL),(305819,1,'Kayky','Attacker',19),(309816,19,'S. Forde','Attacker',18),(312118,12,'J. Feeney','Defender',17),(328089,15,'A. Gray','Attacker',16),(349288,19,'V. Angelini','Goalkeeper',19);
/*!40000 ALTER TABLE `player` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_performance`
--

DROP TABLE IF EXISTS `player_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_performance` (
  `performance_id` int NOT NULL AUTO_INCREMENT,
  `gameid` int DEFAULT NULL,
  `num_tackles` int DEFAULT NULL,
  `num_successful_tackles` int DEFAULT NULL,
  `yellow_cards` int DEFAULT NULL,
  `red_cards` int DEFAULT NULL,
  `goals` int DEFAULT NULL,
  `total_shots` int DEFAULT NULL,
  `shots_on_target` int DEFAULT NULL,
  `total_passes` int DEFAULT NULL,
  `complete_passes` int DEFAULT NULL,
  `total_saves` int DEFAULT NULL,
  `goals_conceded` int DEFAULT NULL,
  `total_crosses` int DEFAULT NULL,
  `complete_crosses` int DEFAULT NULL,
  `assists` int DEFAULT NULL,
  PRIMARY KEY (`performance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_performance`
--

LOCK TABLES `player_performance` WRITE;
/*!40000 ALTER TABLE `player_performance` DISABLE KEYS */;
/*!40000 ALTER TABLE `player_performance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `player_performance_prediction`
--

DROP TABLE IF EXISTS `player_performance_prediction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `player_performance_prediction` (
  `performance_id` int NOT NULL AUTO_INCREMENT,
  `playerid` int DEFAULT NULL,
  `gameid` int DEFAULT NULL,
  `num_tackles` int DEFAULT NULL,
  `num_successful_tackles` int DEFAULT NULL,
  `yellow_cards` int DEFAULT NULL,
  `red_cards` int DEFAULT NULL,
  `goals` int DEFAULT NULL,
  `total_shots` int DEFAULT NULL,
  `shots_on_target` int DEFAULT NULL,
  `total_passes` int DEFAULT NULL,
  `complete_passes` int DEFAULT NULL,
  `total_saves` int DEFAULT NULL,
  `goals_conceded` int DEFAULT NULL,
  `total_crosses` int DEFAULT NULL,
  `complete_crosses` int DEFAULT NULL,
  `assists` int DEFAULT NULL,
  `visibility` char(20) DEFAULT NULL,
  `userid` int DEFAULT NULL,
  PRIMARY KEY (`performance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `player_performance_prediction`
--

LOCK TABLES `player_performance_prediction` WRITE;
/*!40000 ALTER TABLE `player_performance_prediction` DISABLE KEYS */;
INSERT INTO `player_performance_prediction` VALUES (1,17,264,20,19,1,0,1,5,2,88,64,0,0,5,3,1,'public',5),(2,2413,266,16,13,1,0,1,5,2,88,64,0,0,5,3,1,'public',5),(3,44,275,20,19,1,0,1,5,2,88,64,0,0,5,3,1,'public',5),(4,629,295,20,19,1,0,1,5,2,88,64,0,0,5,3,1,'public',5),(5,18771,273,20,19,1,0,1,5,2,88,64,0,0,5,3,1,'public',5);
/*!40000 ALTER TABLE `player_performance_prediction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `post` (
  `post_id` int NOT NULL AUTO_INCREMENT,
  `post_type` int DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `statsid` int DEFAULT NULL,
  `gameid` int DEFAULT NULL,
  `tournament_id` int DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season_table`
--

DROP TABLE IF EXISTS `season_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `season_table` (
  `season_table_id` int NOT NULL,
  `team_id` int DEFAULT NULL,
  `tournament_id` int DEFAULT NULL,
  `team_position` int DEFAULT NULL,
  `team_points` int DEFAULT NULL,
  `goals_for` int DEFAULT NULL,
  `goals_against` int DEFAULT NULL,
  `season_year` int DEFAULT NULL,
  `games_played` int DEFAULT NULL,
  `won` int DEFAULT NULL,
  `lost` int DEFAULT NULL,
  PRIMARY KEY (`season_table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season_table`
--

LOCK TABLES `season_table` WRITE;
/*!40000 ALTER TABLE `season_table` DISABLE KEYS */;
INSERT INTO `season_table` VALUES (1,1,1,2,63,61,14,2022,25,20,5),(2,2,1,3,54,61,19,2022,24,16,8),(3,3,1,4,47,48,18,2022,24,13,11),(4,4,1,5,41,44,33,2022,25,12,13),(5,5,1,6,40,38,32,2022,24,11,13),(6,6,1,7,39,34,25,2022,22,12,10),(7,7,1,8,37,21,17,2022,23,11,12),(8,8,1,9,36,28,29,2022,22,11,11),(9,9,1,10,33,25,23,2022,23,7,16),(10,10,1,11,29,30,37,2022,24,6,18),(11,11,1,12,27,36,41,2022,22,7,15),(12,12,1,13,27,31,36,2022,23,8,15),(13,13,1,14,26,32,35,2022,24,5,19),(14,14,1,15,24,26,40,2022,25,6,19),(15,15,1,16,23,27,46,2022,23,5,18),(16,16,1,17,22,28,38,2022,22,6,16),(17,17,1,18,21,25,44,2022,23,4,19),(18,18,1,19,17,14,50,2022,24,4,20),(19,19,1,20,15,23,43,2022,23,4,19),(20,20,1,21,14,17,29,2022,21,1,20);
/*!40000 ALTER TABLE `season_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats`
--

DROP TABLE IF EXISTS `stats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats` (
  `statsid` int NOT NULL AUTO_INCREMENT,
  `gameid` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `home_team_id` int DEFAULT NULL,
  `away_possesssion` int DEFAULT NULL,
  `home_possession` int DEFAULT NULL,
  `away_shots` int DEFAULT NULL,
  `home_shots` int DEFAULT NULL,
  `home_shots_on_target` int DEFAULT NULL,
  `away_shots_on_target` int DEFAULT NULL,
  `home_yellow_cards` int DEFAULT NULL,
  `away_yellow_cards` int DEFAULT NULL,
  `home_red_cards` int DEFAULT NULL,
  `away_red_cards` int DEFAULT NULL,
  `home_subs` int DEFAULT NULL,
  `away_subs` int DEFAULT NULL,
  `home_corners` int DEFAULT NULL,
  `away_corners` int DEFAULT NULL,
  `home_goals` int DEFAULT NULL,
  `away_goals` int DEFAULT NULL,
  `home_pens` int DEFAULT NULL,
  `away_pens` int DEFAULT NULL,
  `home_freekicks` int DEFAULT NULL,
  `away_freekicks` int DEFAULT NULL,
  `home_pass_total` int DEFAULT NULL,
  `away_pass_total` int DEFAULT NULL,
  `home_complete_passes` int DEFAULT NULL,
  `away_complete_passes` int DEFAULT NULL,
  PRIMARY KEY (`statsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats`
--

LOCK TABLES `stats` WRITE;
/*!40000 ALTER TABLE `stats` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats_predictions`
--

DROP TABLE IF EXISTS `stats_predictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_predictions` (
  `statsid` int NOT NULL AUTO_INCREMENT,
  `gameid` int DEFAULT NULL,
  `type` int DEFAULT NULL,
  `home_team_id` int DEFAULT NULL,
  `away_team_id` int DEFAULT NULL,
  `home_possession` int DEFAULT NULL,
  `away_possesssion` int DEFAULT NULL,
  `home_shots` int DEFAULT NULL,
  `away_shots` int DEFAULT NULL,
  `home_shots_on_target` int DEFAULT NULL,
  `away_shots_on_target` int DEFAULT NULL,
  `home_yellow_cards` int DEFAULT NULL,
  `away_yellow_cards` int DEFAULT NULL,
  `home_red_cards` int DEFAULT NULL,
  `away_red_cards` int DEFAULT NULL,
  `home_subs` int DEFAULT NULL,
  `away_subs` int DEFAULT NULL,
  `home_corners` int DEFAULT NULL,
  `away_corners` int DEFAULT NULL,
  `home_goals` int DEFAULT NULL,
  `away_goals` int DEFAULT NULL,
  `home_pens` int DEFAULT NULL,
  `away_pens` int DEFAULT NULL,
  `home_freekicks` int DEFAULT NULL,
  `away_freekicks` int DEFAULT NULL,
  `home_pass_total` int DEFAULT NULL,
  `away_pass_total` int DEFAULT NULL,
  `home_complete_passes` int DEFAULT NULL,
  `away_complete_passes` int DEFAULT NULL,
  `visibility` char(20) DEFAULT NULL,
  PRIMARY KEY (`statsid`)
) ENGINE=InnoDB AUTO_INCREMENT=331 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats_predictions`
--

LOCK TABLES `stats_predictions` WRITE;
/*!40000 ALTER TABLE `stats_predictions` DISABLE KEYS */;
INSERT INTO `stats_predictions` VALUES (285,285,1,13,1,89,89,865,6,2,65,32,95,635,9656,56,565,92,9,12,89,456,86,8,68,68,86,68,968,'public'),(316,316,1,1,2,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,'public'),(330,330,1,7,1,3,4,5,6,7,8,9,10,11,12,13,14,15,16,1,2,17,18,19,20,21,22,23,24,'public');
/*!40000 ALTER TABLE `stats_predictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `table_predictions`
--

DROP TABLE IF EXISTS `table_predictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `table_predictions` (
  `table_prediction_id` int NOT NULL AUTO_INCREMENT,
  `tournament_id` int DEFAULT NULL,
  `team_position` int DEFAULT NULL,
  `team_points` int DEFAULT NULL,
  `goals_for` int DEFAULT NULL,
  `goals_against` int DEFAULT NULL,
  `team_id` int DEFAULT NULL,
  `season_year` int DEFAULT NULL,
  `visibility` char(20) DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `name` char(50) DEFAULT NULL,
  PRIMARY KEY (`table_prediction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `table_predictions`
--

LOCK TABLES `table_predictions` WRITE;
/*!40000 ALTER TABLE `table_predictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `table_predictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team_id` int NOT NULL AUTO_INCREMENT,
  `tournament_id` int DEFAULT NULL,
  `team_name` char(50) DEFAULT NULL,
  `home_stadium` char(50) DEFAULT NULL,
  PRIMARY KEY (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=219 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,1,'Manchester City','Etihad Stadium'),(2,1,'Liverpool','Anfield'),(3,1,'Chelsea','Stamford Bridge'),(4,1,'West Ham','London Stadium'),(5,1,'Manchester United','Old Trafford'),(6,1,'Arsenal','Emirates Stadium'),(7,1,'Wolves','Molineux Stadium'),(8,1,'Tottenham','Tottenham Hotspur Stadium'),(9,1,'Brighton','The American Express Community Stadium'),(10,1,'Southampton','St. Mary\'s Stadium'),(11,1,'Leicester','King Power Stadium'),(12,1,'Aston Villa','Villa Park'),(13,1,'Crystal Palace','Selhurst Park'),(14,1,'Brentford','Brentford Community Stadium'),(15,1,'Leeds','Elland Road'),(16,1,'Everton','Goodison Park'),(17,1,'Newcastle','St. James\' Park'),(18,1,'Norwich','Carrow Road'),(19,1,'Watford','Vicarage Road'),(20,1,'Burnley','Turf Moor'),(101,2,'SD Eibar','Spain'),(102,2,'RC Celta Vigo','Spain'),(103,2,'Granada CF','Spain'),(104,2,'Athletic Club Bilbao','Spain'),(105,2,'Cádiz CF','Spain'),(106,2,'CA Osasuna','Spain'),(107,2,'FC Barcelona','Spain'),(108,2,'Elche CF','Spain'),(109,2,'Real Madrid','Spain'),(110,2,'Getafe CF','Spain'),(111,2,'Deportivo Alavés','Spain'),(112,2,'Real Betis','Spain'),(113,2,'Real Valladolid CF','Spain'),(114,2,'Real Sociedad','Spain'),(115,2,'Villarreal CF','Spain'),(116,2,'SD Huesca','Spain'),(117,2,'Valencia CF','Spain'),(118,2,'Levante UD','Spain'),(119,2,'Atlético Madrid','Spain'),(120,2,'Sevilla FC','Spain'),(201,3,'Bayern München','Germany'),(202,3,'FC Schalke 04','Germany'),(203,3,'Eintracht Frankfurt','Germany'),(204,3,'Arminia Bielefeld','Germany'),(205,3,'1. FC Union Berlin','Germany'),(206,3,'FC Augsburg','Germany'),(207,3,'1. FC Köln','Germany'),(208,3,'TSG 1899 Hoffenheim','Germany'),(209,3,'Werder Bremen','Germany'),(210,3,'Hertha BSC','Germany'),(211,3,'VfB Stuttgart','Germany'),(212,3,'SC Freiburg','Germany'),(213,3,'Borussia Dortmund','Germany'),(214,3,'Bor. Mönchengladbach','Germany'),(215,3,'RB Leipzig','Germany'),(216,3,'1. FSV Mainz 05','Germany'),(217,3,'VfL Wolfsburg','Germany'),(218,3,'Bayer 04 Leverkusen','Germany');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tournaments`
--

DROP TABLE IF EXISTS `tournaments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tournaments` (
  `tournament_id` int NOT NULL,
  `name` char(50) DEFAULT NULL,
  `total_teams` int DEFAULT NULL,
  `country` char(50) DEFAULT NULL,
  `num_previous_seasons` int DEFAULT NULL,
  `api_id` int DEFAULT NULL,
  PRIMARY KEY (`tournament_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tournaments`
--

LOCK TABLES `tournaments` WRITE;
/*!40000 ALTER TABLE `tournaments` DISABLE KEYS */;
INSERT INTO `tournaments` VALUES (1,'Premier League',20,'England',10,39),(2,'La Liga',20,'Spain',10,140),(3,'Bundesliga 1',20,'Germany',10,78),(4,'Ligue 1',20,'France',10,61),(5,'Serie A',20,'Italy',10,135);
/*!40000 ALTER TABLE `tournaments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` char(50) DEFAULT NULL,
  `firstname` char(50) DEFAULT NULL,
  `lastname` char(50) DEFAULT NULL,
  `email_address` char(100) DEFAULT NULL,
  `password` char(100) DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=1965 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'OO1','Bames','Jond','MI-6@gmail.com','DieToday'),(2,'RegionalMan0Secrets','Texas','Overpower','DoctorLive@gmail.com','GiantMeme'),(3,'GunSlingMan','Mercelot','Lanlin','Statement@gmail.com','SilverRectangle'),(4,'MissionKimpossible','Hethan','C*nt','SEEEYEAYE@gmail.com','ZombieProcedure'),(5,'JohnnyE','Atkinson','Beans','bestspyeverintheworld@gmail.com','bestspyever'),(6,'agentPP','Doof','Nemesis','104dayssummervacation@gmail.com','justAPlattipus');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-25 21:17:32
