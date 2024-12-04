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
-- Table structure for table `page2`
--

DROP TABLE IF EXISTS `page2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page2` (
  `user_id` int NOT NULL,
  `PhD_university` varchar(45) NOT NULL,
  `PhD_Department` varchar(45) DEFAULT NULL,
  `PhD_supervisor` varchar(45) DEFAULT NULL,
  `PhD_year_of_joining` year DEFAULT NULL,
  `PhD_thesis_defence` date DEFAULT NULL,
  `PhD_Award_date` date DEFAULT NULL,
  `PhD_thesis_title` varchar(45) DEFAULT NULL,
  `MTech_degree` varchar(45) DEFAULT NULL,
  `MTech_university` varchar(45) DEFAULT NULL,
  `MTech_branch` varchar(45) DEFAULT NULL,
  `MTech_year_of_joining` year DEFAULT NULL,
  `MTech_year_of_completion` year DEFAULT NULL,
  `MTech_duration` int DEFAULT NULL,
  `MTech_CGPA` decimal(10,0) DEFAULT NULL,
  `MTech_division` varchar(45) DEFAULT NULL,
  `BTech_degree` varchar(45) DEFAULT NULL,
  `BTech_university` varchar(45) DEFAULT NULL,
  `BTech_branch` varchar(45) DEFAULT NULL,
  `BTech_year_of_joining` year DEFAULT NULL,
  `BTech_year_of_completion` year DEFAULT NULL,
  `BTech_duration` int DEFAULT NULL,
  `BTech_cgpa` decimal(10,0) DEFAULT NULL,
  `BTech_division` varchar(45) DEFAULT NULL,
  `diploma_12th` json DEFAULT NULL,
  `diploma_10th` json DEFAULT NULL,
  `additional_qualification` json DEFAULT NULL,
  `new_tablecol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `page2_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page2`
--

LOCK TABLES `page2` WRITE;
/*!40000 ALTER TABLE `page2` DISABLE KEYS */;
INSERT INTO `page2` VALUES (1,'500-585-1116','346-414-0189','814-988-9410',1978,'2025-03-21','2024-08-09','Dynamic Data Specialist','2023-12-15 22:49:32','Fairfield','Quibusdam quaerat veritat',1978,1978,233,339,'Deserunt doloru','2024-08-24 17:23:06','Turlock','Voluptatibus quisquam re',1978,1978,516,20,'Consequatur magni ex nam','[\"\", \"Unde quod unde ex quo quidem.\", \"J1mDN\", \"Iste \", \"Dicta\"]','[\"Et rerum earum non nemo consequuntur.\", \"Vel impedit officia inventore explicabo quod.\", \"rU1Nk\", \"Rem i\", \"Excep\"]','[\"4128 Zbonc\", \"69863 Michele Avenue\", \"822 Cade Crescent\", \"174 C\", \"4468 \", \"483 \", \"36451\", \"395 A\", \"675 Metz G\", \"339 Sauer Union\", \"289 Luettgen Pines\", \"22852\", \"71476\", \"399 \", \"94624\", \"417 J\"]',NULL),(6,'347-170-5943','027-455-9133','841-138-2209',1978,'2024-03-14','2023-10-28','National Intranet Specialist','2023-10-17 16:36:08','New Rochelle','Enim perspiciatis consequuntur.',1978,1978,642,267,'Tenetur accusantium autem cum deleniti.','2023-07-26 19:37:58','Lafayette','Ab nihil rem repellat fugit quis.',1978,1978,105,9,'Illum saepe libero culpa.','[\"\", \"Qui earum voluptatibus.\", \"t2_Sy\", \"Quaer\", \"Tempo\"]','[\"Minima sit odio facilis eveniet.\", \"Provident minus quam maiores mollitia eveniet.\", \"5Ama7\", \"Iste \", \"Repud\"]','[\"8943 Ediso\", \"537 Jacobi Ways\", \"1394 Marlene Shoal\", \"277 C\", \"39304\", \"174 \", \"66381\", \"24007\", \"4919 Aisha\", \"769 Gardner Place\", \"60558 Haag Forges\", \"335 E\", \"596 S\", \"5246\", \"851 D\", \"990 M\"]',NULL),(9,'760-844-4170','465-198-0836','888-751-6878',1978,'2024-02-01','2024-03-23','Global Assurance Liaison','2024-02-27 22:47:38','Skokie','Dolorum quaerat quo iusto ',1978,1978,518,316,'Ipsa deleniti dolores ducimus re','2025-02-03 09:20:23','Ann Arbor','Magni voluptas illum vit',1978,1978,520,395,'Ipsam quasi veniam quis odit re','[\"\", \"Dolorem delectus temporibus harum.\", \"uHTSw\", \"Volup\", \"Imped\"]','[\"Autem fugit eius voluptatem quidem ut.\", \"Ea suscipit commodi.\", \"Ur1a8\", \"Quasi\", \"Fugia\"]','[\"1591 Jacob\", \"308 Cooper Motorway\", \"26808 Caleigh Plaza\", \"5088 \", \"673 G\", \"776 \", \"5756 \", \"540 L\", \"19944 Hack\", \"242 Heidenreich Ford\", \"1170 Nader Overpass\", \"2480 \", \"6223 \", \"669 \", \"665 W\", \"715 J\"]',NULL),(10,'620-183-3724','841-746-9183','662-044-6756',1978,'2023-12-02','2023-06-11','Customer Interactions Executive','2023-05-29 02:47:07','Country Club','Similique quas rerum accusant',1978,1978,552,409,'Optio ipsa similique eaque optio.','2023-09-21 11:02:24','Scranton','Amet quae iste quaerat in',1978,1978,381,62,'Ipsam vel hic quis praes','[\"\", \"Saepe minus iusto unde.\", \"7VUQw\", \"Rerum\", \"Fuga \"]','[\"Eius odit accusantium sunt eos nemo est quam veniam.\", \"Eaque sapiente quia.\", \"JioeS\", \"Nihil\", \"Rem f\"]','[\"8374 Strei\", \"955 Klocko Rest\", \"2132 Cullen Alley\", \"3887 \", \"88803\", \"6698\", \"59596\", \"5470 \", \"98792 Gutm\", \"5999 Angela Stravenue\", \"57541 Rhianna Row\", \"81564\", \"99458\", \"8879\", \"9984 \", \"595 E\"]',NULL);
/*!40000 ALTER TABLE `page2` ENABLE KEYS */;
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
