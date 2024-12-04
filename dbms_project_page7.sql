CREATE DATABASE  IF NOT EXISTS `dbms_project` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbms_project`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: dbms_project
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `page7`
--

DROP TABLE IF EXISTS `page7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page7` (
  `user_id` int NOT NULL,
  `research_contribution` longtext,
  `teaching_contributuion` longtext,
  `relavent_information` longtext,
  `professional_service` longtext,
  `journal_publications` longtext,
  `conference_publications` longtext,
  `new_tablecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page7`
--

LOCK TABLES `page7` WRITE;
/*!40000 ALTER TABLE `page7` DISABLE KEYS */;
INSERT INTO `page7` VALUES (1,'',NULL,'','','','',NULL),(6,'Saint Kitts and Nevis',NULL,'Nesciunt excepturi modi repellendus consectetur beatae.','Voluptatum quam voluptates reprehenderit.','Exercitationem facilis tempore reiciendis velit.','Nobis dolore recusandae ullam.',NULL),(9,'Republic of Korea',NULL,'Nemo fugiat quibusdam facere delectus iste consequuntur quam eum.','Debitis voluptas magnam sit a iure.','Sequi deserunt dicta recusandae repellendus.','A distinctio quidem vero a quia laudantium sunt.',NULL),(10,'Spain',NULL,'Consequuntur qui rem.','Deleniti similique aperiam itaque.','Libero harum quidem perspiciatis fuga cupiditate quibusdam dolor facere.','Ratione quisquam facere deleniti.',NULL);
/*!40000 ALTER TABLE `page7` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04 14:17:46
