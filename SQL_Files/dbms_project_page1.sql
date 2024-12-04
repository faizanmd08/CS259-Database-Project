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
-- Table structure for table `page1`
--

DROP TABLE IF EXISTS `page1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page1` (
  `user_id` int NOT NULL,
  `advert_number` int NOT NULL,
  `date_of_application` date NOT NULL,
  `application_number` int NOT NULL,
  `post_applied_for` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  `First_name` varchar(45) NOT NULL,
  `Middle_name` varchar(45) DEFAULT NULL,
  `Last_name` varchar(45) NOT NULL,
  `Nationality` varchar(45) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(45) NOT NULL,
  `Marital_Status` varchar(45) NOT NULL,
  `category` varchar(45) NOT NULL,
  `ID_Proof` blob NOT NULL,
  `Fathers_Name` varchar(45) NOT NULL,
  `Correspondence_Address` text NOT NULL,
  `Permanent_Address` text NOT NULL,
  `Mobile` int NOT NULL,
  `email` varchar(45) NOT NULL,
  `Alternate_Mobile` varchar(45) NOT NULL,
  `Landline_Number` int NOT NULL,
  `alt_email` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `advert_number_UNIQUE` (`advert_number`),
  CONSTRAINT `page1_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page1`
--

LOCK TABLES `page1` WRITE;
/*!40000 ALTER TABLE `page1` DISABLE KEYS */;
INSERT INTO `page1` VALUES (1,480,'2024-05-05',192,'Nesciunt quos qu','Sequi quia sint quis unde ','Cyril','Georgianna Stracke','Ondricka','Pearland','2024-05-15','your.email+fakedata57496@gmail.com','Nevada','France',_binary 'Colorful Modern Brand Identity Flow Chart.png','Korbin_Koss-Beatty','891 Pamela Courts','679 Hilma Green',55,'your.email+fakedata47012@gmail.com','Michigan',489,'your.email+fakedata82900@gmail.com'),(6,299,'2024-05-08',368,'Hic maxime rerum magni reiciendis.','Ea asperiores et.','Garret','Etha Ritchie','Koelpin','Watsonville','2024-05-17','your.email+fakedata65088@gmail.com','Virginia','Malaysia','','Amy_Watsica','931 Laurel Ford','558 Lorenz Loaf',616,'your.email+fakedata36826@gmail.com','Kansas',267,'your.email+fakedata96548@gmail.com'),(9,4801,'2024-07-20',209,'Culpa perferendis iusto quos.','Nostrum omnis necessitatibus','Elda','Leland Barrows','Howell','West New York','2024-03-03','your.email+fakedata78103@gmail.com','Georgia','Antigua and Barbuda',_binary 'image (3).png','Bart_Welch24','793 Leannon Shoals','8603 Cremin Park',127,'your.email+fakedata19147@gmail.com','Iowa',146,'your.email+fakedata41107@gmail.com'),(10,274,'2023-07-03',1703,'At rerum eum minu','Optio mollitia sint minima.','Kelsie','Soledad Dare','Towne','Alexandria','2024-10-17','your.email+fakedata55831@gmail.com','New Hampshire','Western Sahara',_binary 'WhatsApp Image 2024-01-08 at 03.19.24_318aa7c1.jpg','Felicita7','96826 Wiza Ridge','909 Edgar Fort',615,'your.email+fakedata24985@gmail.com','Delaware',54,'your.email+fakedata23387@gmail.com');
/*!40000 ALTER TABLE `page1` ENABLE KEYS */;
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
