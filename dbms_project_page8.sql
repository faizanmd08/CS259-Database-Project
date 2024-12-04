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
-- Table structure for table `page8`
--

DROP TABLE IF EXISTS `page8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page8` (
  `user_id` int NOT NULL,
  `research_papers` mediumblob,
  `phd_certificate` mediumblob,
  `pg_marksheet` mediumblob,
  `ug_marksheet` mediumblob,
  `diploma_12th_marksheet` mediumblob,
  `diploma_10th_marksheet` mediumblob,
  `pay_slip` mediumblob,
  `NOC` mediumblob,
  `post_phd_experience` mediumblob,
  `relavent_document` mediumblob,
  `signature` mediumblob,
  `referees` json DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `page8_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page8`
--

LOCK TABLES `page8` WRITE;
/*!40000 ALTER TABLE `page8` DISABLE KEYS */;
INSERT INTO `page8` VALUES (1,'','','','','','','','','','',_binary 'Colorful Modern Brand Identity Flow Chart.png','[\"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\", \"\"]'),(9,_binary 'image (3).png',_binary 'image (3).png',_binary 'image (3).png',_binary 'image (3).png',_binary 'image (3).png',_binary 'image (3).png',_binary 'image (3).png',_binary 'image (3).png',_binary 'image (3).png',_binary 'image (3).png',_binary 'image (3).png','[\"993 Dolly Lake\", \"your.email+fakedata77256@gmail.com\", \"407-588-9417\", \"6381 Volkman Haven\", \"584 Thad Walks\", \"412 Alycia Street\", \"your.email+fakedata44994@gmail.com\", \"398-683-6017\", \"5447 Celestine Grove\", \"21019 Emerald Trace\", \"2680 Fritsch Harbor\", \"your.email+fakedata55831@gmail.com\", \"472-531-3069\"]'),(10,_binary 'WhatsApp Image 2024-01-08 at 03.19.24_318aa7c1.jpg',_binary 'WhatsApp Image 2024-01-08 at 03.19.24_318aa7c1.jpg',_binary 'WhatsApp Image 2024-01-08 at 03.19.24_318aa7c1.jpg',_binary 'dbms_audio.mp3',_binary 'dbms_audio.mp3',_binary '2201CS24-CS271.pdf',_binary 'IMG-20230824-WA0008.jpg',_binary 'WhatsApp Image 2024-01-08 at 03.19.24_318aa7c1.jpg',_binary 'WhatsApp Image 2024-01-08 at 03.19.24_318aa7c1.jpg',_binary 'IMG-20230824-WA0008.jpg',_binary 'WhatsApp Image 2024-01-08 at 03.19.24_318aa7c1.jpg','[\"91782 Runolfsson Brook\", \"your.email+fakedata58014@gmail.com\", \"609-776-3702\", \"508 Ofelia Summit\", \"71305 Schimmel Grove\", \"4344 Tabitha Forest\", \"your.email+fakedata82075@gmail.com\", \"651-340-8232\", \"32606 Benton Mountains\", \"112 Belle Crescent\", \"708 Gleichner Bypass\", \"your.email+fakedata13695@gmail.com\", \"479-366-7749\"]');
/*!40000 ALTER TABLE `page8` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-04 14:17:47
