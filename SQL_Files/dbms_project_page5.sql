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
-- Table structure for table `page5`
--

DROP TABLE IF EXISTS `page5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page5` (
  `user_id` int NOT NULL,
  `professional_societies` json DEFAULT NULL,
  `professional_training` json DEFAULT NULL,
  `awards` json DEFAULT NULL,
  `sponsered_projects` json DEFAULT NULL,
  `consultancy_projects` json DEFAULT NULL,
  `page5col` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `page5_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page5`
--

LOCK TABLES `page5` WRITE;
/*!40000 ALTER TABLE `page5` DISABLE KEYS */;
INSERT INTO `page5` VALUES (1,'[\"Animi possimus itaque illum voluptatum odit.\", \"Libero repellat perferendis minus dolore ad.\", \"Quia sapiente ipsum nemo accusamus pariatur temporibus corporis.\", \"Impedit voluptate id nemo voluptatem non dolorem quaerat recusandae perferendis.\", \"Voluptatem quibusdam quasi quo iure.\", \"Voluptate inventore quam repudiandae harum porro enim.\"]','[\"Doloribus soluta odio quis incidunt.\", \"Dolore provident magnam.\", \"Dolorum inventore nostrum maxime illo architecto necessitatibus excepturi minima.\", \"Provident temporibus ex accusamus ipsa amet odit aliquid et possimus.\", \"Nostrum consequuntur provident dolorum nisi quis minus officiis commodi harum.\", \"Ea nostrum labore excepturi nihil.\", \"Fuga eos vero eveniet porro necessitatibus doloremque placeat.\", \"Quasi blanditiis optio.\", \"Aspernatur iure iure quae.\", \"Molestias nesciunt modi magnam.\", \"Asperiores doloribus alias voluptatibus maiores similique ipsa nisi.\", \"Sunt sequi laborum in numquam illum culpa.\"]','[\"similique eaque consectetur\", \"accusantium velit qui\", \"cumque quam sunt\"]',NULL,'[\"Skiles, Bernier and Gleason\", \"Herzog, Nitzsche and Wolff\", \"Abernathy Inc\", \"Auer Group\", \"Grimes and Sons\", \"Pfannerstill Group\", \"Hyatt and Sons\", \"McKenzie Group\", \"Hand - Robel\", \"Feeney, Littel and Kirlin\", \"Bergstrom, Schoen and Armstrong\", \"Lesch Group\", \"Luettgen - Jerde\", \"Okuneva, Mertz and Dicki\", \"Price Group\", \"Predovic, Langworth and Sipes\", \"Witting LLC\", \"Kuhn - Olson\"]',NULL),(6,'[\"Deleniti velit saepe quas natus velit ullam.\", \"Totam esse amet quasi ducimus nulla nisi quis ex.\", \"Harum accusamus laboriosam velit vel ea nam distinctio ullam aspernatur.\", \"Tempore blanditiis similique quisquam corporis.\", \"Accusantium id voluptatem dolorum quo at labore quaerat.\", \"Blanditiis dignissimos odio fugit.\"]','[\"Quas adipisci explicabo repellendus.\", \"Nemo aut corrupti quia.\", \"Maxime dignissimos molestias aperiam a labore explicabo necessitatibus consequuntur.\", \"Repellendus assumenda quisquam praesentium.\", \"Temporibus hic dicta.\", \"Eius ipsum animi nihil ipsam suscipit corporis minima illum.\", \"Qui quidem tenetur modi expedita ex.\", \"Ea iusto beatae eos.\", \"Blanditiis et vero omnis accusamus.\", \"Dicta ipsam itaque laboriosam expedita iste.\", \"Officia eligendi distinctio.\", \"Nihil repellendus facere architecto doloribus vitae quam.\"]','[\"itaque nostrum laboriosam\", \"provident cupiditate autem\", \"assumenda repellendus eligendi\"]',NULL,'[\"Halvorson - West\", \"DuBuque - Zieme\", \"Bergstrom - Leannon\", \"Rau - Denesik\", \"Fadel Group\", \"Renner and Sons\", \"Kiehn, Moen and Welch\", \"Ondricka and Sons\", \"Carter, Wisoky and Bauch\", \"Lakin Inc\", \"Jacobi - Luettgen\", \"Pouros, Bruen and Ullrich\", \"Jaskolski Inc\", \"Hermann, Crona and Veum\", \"Kuphal - Schuster\", \"Hackett - Klocko\", \"Frami, Cartwright and O\'Conner\", \"Fadel and Sons\"]',NULL),(9,'[\"Reprehenderit nesciunt nesciunt.\", \"Similique et vero commodi commodi.\", \"Aperiam vel architecto cupiditate odio.\", \"Assumenda dicta recusandae.\", \"Ad perferendis esse natus vel odio.\", \"Odio cumque at.\"]','[\"Voluptatem rem accusamus placeat.\", \"Quae placeat facilis hic in.\", \"Culpa suscipit asperiores.\", \"Omnis adipisci molestiae esse repudiandae.\", \"Quam ad unde ducimus quaerat ratione voluptatum.\", \"Libero eius voluptate quo quod.\", \"Officia assumenda iusto fugit optio exercitationem a alias.\", \"Quaerat iste assumenda dolorem quae.\", \"Dolorum unde facere minima odit natus consectetur architecto sunt.\", \"Officia voluptatum doloribus iure molestiae eius.\", \"Optio culpa in.\", \"Distinctio cumque cupiditate dolores harum molestiae officia hic esse temporibus.\"]','[\"placeat mollitia facere\", \"maxime reprehenderit consequatur\", \"aperiam voluptate reprehenderit\"]',NULL,'[\"West LLC\", \"Hermiston and Sons\", \"Upton, Douglas and Schimmel\", \"West - Crooks\", \"Swaniawski, Murazik and Jacobi\", \"Lesch, Larkin and Kovacek\", \"Towne, Jacobi and Gibson\", \"Rath and Sons\", \"Reynolds, Herman and Kuhic\", \"Hickle Inc\", \"Block, Botsford and Stokes\", \"Schaefer - Funk\", \"Daugherty - Nader\", \"Kuhic Group\", \"O\'Keefe - Christiansen\", \"Hills, Christiansen and Tromp\", \"Turner, Connelly and Schinner\", \"Anderson, Stiedemann and Lynch\"]',NULL),(10,'[\"Minus laborum inventore numquam adipisci a nulla perferendis.\", \"Blanditiis fuga facere architecto labore cumque.\", \"Dicta accusantium optio ipsum doloremque repudiandae omnis quisquam.\", \"Beatae quasi laborum fuga odit incidunt.\", \"Eligendi placeat vitae explicabo labore explicabo earum est.\", \"Maiores vel voluptatibus quam laudantium enim adipisci rem ratione esse.\"]','[\"Consequatur sequi inventore debitis quas quasi odit.\", \"Quisquam ipsum illum dignissimos.\", \"Repellat sapiente ratione harum.\", \"Quaerat numquam placeat maiores repudiandae aperiam quod deleniti.\", \"Dolorum excepturi eius.\", \"Ad sunt aliquam tempora odit sapiente omnis quibusdam.\", \"Voluptates molestiae consequuntur accusantium voluptatibus.\", \"Ratione omnis aliquam deserunt soluta officia.\", \"Minus temporibus deleniti.\", \"Totam ab iusto nam distinctio.\", \"Rerum doloribus molestias qui fugiat illum ex est cumque similique.\", \"Quaerat aperiam quas dolorem eligendi fugiat nesciunt.\"]','[\"iste quas suscipit\", \"incidunt necessitatibus velit\", \"nobis sapiente iusto\"]',NULL,'[\"Bruen and Sons\", \"O\'Reilly, Wilkinson and Borer\", \"Kohler Inc\", \"Rodriguez - Conroy\", \"Marvin and Sons\", \"Wiegand - Bergstrom\", \"Rolfson - Harvey\", \"Smitham Inc\", \"Bernier, Medhurst and Runolfsdottir\", \"Goyette LLC\", \"Sporer, Kihn and Ebert\", \"Watsica LLC\", \"King, Spencer and Graham\", \"Feeney Inc\", \"Leuschke and Sons\", \"Franecki LLC\", \"Donnelly, Medhurst and D\'Amore\", \"Price - Torp\"]',NULL);
/*!40000 ALTER TABLE `page5` ENABLE KEYS */;
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
