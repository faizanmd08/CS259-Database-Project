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
-- Table structure for table `page3`
--

DROP TABLE IF EXISTS `page3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page3` (
  `user_id` int NOT NULL,
  `present_emp_position` varchar(45) DEFAULT NULL,
  `present_emp_org` varchar(45) DEFAULT NULL,
  `present_emp_status` varchar(45) DEFAULT NULL,
  `present_emp_date_of_joining` date DEFAULT NULL,
  `present_emp_date_of_leaving` varchar(45) DEFAULT NULL,
  `present_emp_duration` int DEFAULT NULL,
  `employment_history` json DEFAULT NULL,
  `experience_3yrs` binary(1) DEFAULT NULL,
  `teaching_experience` json DEFAULT NULL,
  `research_experience` json DEFAULT NULL,
  `industrial_experience` json DEFAULT NULL,
  `area_of_speacialization` longtext,
  `current_area_of_research` longtext,
  KEY `user_id` (`user_id`),
  CONSTRAINT `page3_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page3`
--

LOCK TABLES `page3` WRITE;
/*!40000 ALTER TABLE `page3` DISABLE KEYS */;
INSERT INTO `page3` VALUES (6,'Nisi iusto odit cumque incidunt odit.','Aliquam ipsa laboriosam dele','Vermont','2024-07-05','2023-12-29',9,NULL,NULL,'[\"Similique accusantium quibusdam distinctio quidem quidem.\", \"Aperiam porro praesentium.\", \"Neque doloribus optio omnis iste quam repellendus error.\", \"Suscipit nam eius quasi eum at vero at voluptates.\", \"2025-03-04\", \"2023-12-31\", \"Corporis ex vitae ratione aliquid provident aspernatur.\", \"Temporibus rem sunt aperiam sint facilis reprehenderit praesentium quaerat sunt.\", \"Odio beatae odio amet praesentium vitae non.\", \"Accusamus ipsum non tempora dolores minima ullam.\", \"Eius distinctio porro repellat tenetur ipsam qui pariatur delectus quia.\", \"2024-11-21\", \"2025-03-21\", \"Molestiae et hic porro itaque occaecati ipsum nobis doloribus.\", \"Esse aliquam quos.\", \"Quod harum vitae nisi dolorum minus.\", \"Voluptatibus quae dolorum perferendis vitae odio quas assumenda expedita.\", \"Dolore debitis quae asperiores beatae dolores occaecati modi quae.\", \"2024-07-18\", \"2024-10-16\"]','[\"Harum dolor illo saepe voluptate officiis aliquid natus mollitia.\", \"Expedita voluptates quae alias magni modi assumenda veniam magnam.\", \"2024-08-29\", \"2023-07-20\", \"Modi earum consequuntur quae quis eos aperiam voluptatibus beatae dicta.\", \"Officia modi ducimus tenetur quam pariatur.\", \"Ea perferendis maiores ipsam possimus ad dolores adipisci fuga dignissimos.\", \"Esse quibusdam natus pariatur doloribus maxime est rerum.\", \"2023-07-02\", \"2024-06-23\", \"Quam in fugit excepturi consectetur numquam eum est.\", \"Quam sint enim non occaecati asperiores.\", \"Temporibus iusto molestiae repellat corrupti atque cumque iure commodi.\", \"Rerum eos vitae ipsa fugiat neque est saepe.\", \"2024-10-14\", \"2024-03-25\", \"Placeat velit consequatur sit tenetur accusamus.\"]','[\"Aspernatur velit consequuntur officia officiis doloribus id.\", \"Magni ea rerum nesciunt odio.\", \"2024-11-20\", \"2025-02-04\", \"Magnam voluptatum libero non voluptatibus sit earum animi culpa officiis.\", \"Soluta praesentium quam labore maxime vero eligendi accusamus maxime.\", \"Deleniti quas consequatur cum officiis corporis quisquam veniam.\", \"2023-09-27\", \"2025-02-22\", \"Nemo distinctio provident rerum dicta animi aut.\", \"Aliquam quis doloribus blanditiis magni eligendi perspiciatis quisquam natus.\", \"Fuga animi officiis reiciendis dolorum.\", \"2023-10-29\", \"2025-05-07\", \"At culpa est voluptatem numquam odit.\", \"Ducimus iusto iste quia similique quis dicta facere.\", \"Ipsum unde ratione molestias quo.\", \"2024-03-08\", \"2025-03-16\", \"Soluta consectetur recusandae id officia.\", \"Non adipisci voluptas reprehenderit tempore.\", \"Id vel perferendis quam beatae quas recusandae hic expedita.\", \"2023-10-02\", \"2024-09-26\", \"Illo minus ratione perferendis.\"]','Velit sit inventore officiis reiciendis.','Minima eius illo exercitationem numquam error doloremque ducimus dignissimos exercitationem.'),(1,'Culpa necessitatibus vol','Eaque reiciendis rem t','Florida','2024-05-03','2024-06-08',2,NULL,NULL,'[\"Error natus vel veniam.\", \"Expedita maxime iusto ipsa fuga quae sint amet quia.\", \"Similique nostrum quisquam rerum.\", \"Quis magnam esse vitae maiores harum culpa nisi soluta necessitatibus.\", \"2024-03-01\", \"2024-08-29\", \"Sequi sint excepturi atque quisquam perspiciatis occaecati.\", \"Culpa laudantium illo.\", \"Suscipit repellendus iure repudiandae officiis perferendis harum.\", \"Modi tempora labore necessitatibus accusamus quasi illum dolor sed.\", \"Temporibus rerum voluptatibus qui incidunt dolores praesentium commodi.\", \"2024-04-23\", \"2024-02-16\", \"Et alias eligendi autem commodi animi natus quidem voluptatem.\", \"Nisi molestias ratione sunt aspernatur veniam dignissimos tempora corrupti.\", \"Corporis excepturi commodi.\", \"Quibusdam reprehenderit libero totam natus porro iste officiis in doloremque.\", \"Rem laboriosam soluta tenetur atque quas pariatur.\", \"2024-06-25\", \"2024-07-29\"]','[\"Occaecati quibusdam soluta beatae.\", \"Tempore dolore adipisci corrupti soluta aliquam odit.\", \"2024-03-22\", \"2023-06-29\", \"Officiis ipsa sit.\", \"Aliquid qui sit ullam perspiciatis delectus unde.\", \"Nihil vel impedit fugit repellat minima voluptatum tempora.\", \"Similique qui deleniti omnis id reprehenderit temporibus voluptates.\", \"2023-09-01\", \"2024-03-11\", \"Eveniet itaque tempore voluptates.\", \"Quae incidunt hic.\", \"Debitis provident praesentium corporis odio quidem nemo blanditiis architecto.\", \"Deserunt inventore at sit quisquam.\", \"2024-06-01\", \"2025-03-30\", \"Rem labore recusandae recusandae.\"]','[\"Libero beatae accusamus voluptas officiis pariatur sint nobis veritatis cumque.\", \"Corporis praesentium doloremque soluta mollitia soluta est.\", \"2023-11-27\", \"2024-04-11\", \"Autem sapiente id ducimus atque porro delectus architecto facilis sapiente.\", \"Vel ad culpa saepe.\", \"Iure repudiandae id.\", \"2024-09-21\", \"2023-06-06\", \"Voluptates optio pariatur.\", \"Sapiente voluptate numquam rerum magnam enim totam modi quos.\", \"Adipisci itaque suscipit repellat omnis voluptates eaque.\", \"2024-07-24\", \"2024-04-10\", \"Ea corrupti ad distinctio.\", \"Neque sapiente cum deleniti eligendi nobis ratione.\", \"Accusamus dicta recusandae nostrum soluta.\", \"2024-04-10\", \"2025-02-10\", \"Totam veniam ad unde nostrum autem.\", \"Eligendi unde nam laborum nostrum blanditiis.\", \"Ut voluptatum deleniti quis occaecati nulla tempora cupiditate.\", \"2023-12-08\", \"2024-10-08\", \"Soluta magni beatae provident quisquam officiis deleniti eaque.\"]','Quae aliquid incidunt non possimus accusamus eius expedita.','Quaerat nemo quasi architecto.'),(9,'Quaerat tempore aut','Commodi non amet.','Maine','2024-08-01','2024-02-04',9,NULL,NULL,'[\"Earum eveniet temporibus natus id adipisci animi.\", \"Itaque sint deserunt saepe quos.\", \"Deleniti vel ullam provident animi tenetur praesentium asperiores.\", \"Qui ullam ullam molestias fugit ullam eveniet.\", \"2023-11-24\", \"2024-07-21\", \"Nesciunt ex ipsam consequatur quis eius atque blanditiis corporis voluptate.\", \"Placeat nesciunt quisquam assumenda amet corporis deserunt unde.\", \"Quidem aperiam officiis sunt.\", \"Tempora facilis labore ab rem reprehenderit.\", \"Maxime dignissimos provident sint voluptatum totam voluptatum.\", \"2023-06-05\", \"2023-11-08\", \"Ea consequuntur beatae molestias officiis cupiditate modi veniam exercitationem.\", \"Tempore exercitationem facilis.\", \"Totam tenetur saepe assumenda aut praesentium eius.\", \"Perspiciatis voluptatibus iste tenetur doloribus minus reiciendis.\", \"Molestias porro quos quo consequuntur vel quod animi quia exercitationem.\", \"2024-07-15\", \"2023-08-16\"]','[\"Quasi quod numquam consectetur.\", \"Itaque eos nobis vitae minus assumenda sed odit sapiente.\", \"2023-07-01\", \"2024-01-03\", \"Architecto ratione excepturi magnam illo.\", \"Nam voluptate quo ratione repudiandae sint ratione accusantium.\", \"Nisi minus sint deleniti rem saepe ad laborum.\", \"Accusamus maxime officiis minima facilis.\", \"2023-08-18\", \"2024-08-19\", \"Quas quo amet voluptate.\", \"Qui vel in vel non exercitationem libero.\", \"Corporis veritatis dolores magni explicabo soluta distinctio.\", \"Alias provident aperiam alias atque est eaque nihil maxime quia.\", \"2024-01-29\", \"2025-01-13\", \"Vel molestias dignissimos perferendis.\"]','[\"Et suscipit magni culpa tenetur recusandae illo.\", \"Officia qui soluta ullam nostrum.\", \"2025-02-06\", \"2024-11-14\", \"Sit voluptas ducimus saepe molestias sapiente autem magni aspernatur laudantium.\", \"Quaerat rerum facere mollitia modi.\", \"Blanditiis reprehenderit unde incidunt nemo ipsa et aperiam.\", \"2024-07-30\", \"2023-10-01\", \"Possimus asperiores quibusdam odio ducimus.\", \"Magni reiciendis repellendus quam eligendi id perferendis.\", \"Animi quisquam temporibus ipsum molestias quos unde tenetur eveniet.\", \"2024-06-03\", \"2025-01-23\", \"Maiores vel nihil laudantium laudantium id.\", \"Repellendus amet quaerat commodi.\", \"Occaecati voluptate est quia.\", \"2024-11-03\", \"2024-12-05\", \"Quos quo architecto iure libero unde pariatur velit praesentium.\", \"Mollitia commodi natus veritatis.\", \"Alias aliquam necessitatibus.\", \"2023-10-07\", \"2023-08-13\", \"Repellat dignissimos placeat quibusdam eius occaecati quisquam.\"]','Culpa voluptate nulla amet.','Eaque adipisci mollitia culpa incidunt.'),(10,'Molestias mollitia maio','Recusandae quas veni','Texas','2023-05-19','2024-01-05',8,NULL,NULL,'[\"Ut ab commodi nemo.\", \"Voluptates sunt doloribus dicta facilis est.\", \"Esse delectus reiciendis asperiores dolorem consectetur debitis iusto fuga odit.\", \"Beatae asperiores omnis eius ab.\", \"2024-11-23\", \"2025-04-07\", \"Magni itaque totam sit culpa in excepturi.\", \"Occaecati modi dolor debitis amet voluptates cum doloribus consequuntur aspernatur.\", \"Officia similique rerum aliquid non adipisci voluptatem deleniti delectus cupiditate.\", \"Molestiae tenetur assumenda facilis error.\", \"Beatae expedita assumenda sit eaque.\", \"2025-03-07\", \"2023-05-13\", \"Mollitia suscipit et sapiente aspernatur optio vitae.\", \"Quos id nemo provident nesciunt aliquid dolorum rem facere ab.\", \"Eveniet voluptas rem ex optio eveniet voluptatem quas.\", \"Quaerat saepe possimus sunt unde reprehenderit.\", \"Sunt molestiae ea quasi necessitatibus earum blanditiis.\", \"2024-04-19\", \"2023-08-01\"]','[\"Amet commodi facilis quas.\", \"Incidunt nam maxime.\", \"2024-04-02\", \"2024-12-21\", \"Nam impedit dolores repudiandae quasi nostrum aliquam aperiam iste repellendus.\", \"Suscipit voluptatum fugit maiores iusto accusantium.\", \"Fugit voluptatem voluptas minus molestiae ad rerum.\", \"Porro facilis natus adipisci est aliquam aliquid accusantium.\", \"2023-06-04\", \"2025-01-11\", \"Illum velit eum maiores optio non officia sit.\", \"Optio repudiandae culpa fugiat aliquid quas facilis.\", \"Molestias in tempora unde laboriosam aspernatur.\", \"Soluta soluta animi nesciunt doloribus sequi mollitia.\", \"2024-02-21\", \"2024-03-22\", \"Neque a vitae eligendi laborum voluptas.\"]','[\"Officiis maiores omnis veritatis ipsam omnis suscipit.\", \"Ullam repudiandae modi.\", \"2025-03-25\", \"2024-11-06\", \"Pariatur distinctio nobis earum voluptate.\", \"Illo vitae possimus.\", \"Illum tempore a.\", \"2024-10-10\", \"2024-01-29\", \"Placeat error optio sint maiores ipsam.\", \"Veniam fugiat exercitationem.\", \"Adipisci quos cumque reiciendis illum sunt quis totam.\", \"2024-08-28\", \"2024-09-07\", \"Necessitatibus odit eum quod provident dolorem minus alias.\", \"Ducimus quaerat id voluptas numquam a totam non.\", \"Laboriosam possimus sequi iusto perspiciatis occaecati optio corrupti sunt ut.\", \"2023-10-20\", \"2024-10-09\", \"Quis dolore error omnis id eum nesciunt.\", \"Recusandae natus assumenda eligendi excepturi.\", \"Similique quo est voluptate minima esse vero quibusdam.\", \"2024-07-01\", \"2024-05-13\", \"Deleniti dolores fugiat minus eius dolorem asperiores.\"]','Illo illo eaque voluptates doloremque fugiat eos totam voluptas.','Ad officia est dolores maxime dolorum iure.');
/*!40000 ALTER TABLE `page3` ENABLE KEYS */;
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