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
-- Table structure for table `page4`
--

DROP TABLE IF EXISTS `page4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page4` (
  `user_id` int NOT NULL,
  `international_journal_papers` int DEFAULT NULL,
  `national_journal_papers` int DEFAULT NULL,
  `international_conference_papers` int DEFAULT NULL,
  `national_conference_papers` int DEFAULT NULL,
  `patents` int DEFAULT NULL,
  `books` int DEFAULT NULL,
  `book_chapters` int DEFAULT NULL,
  `publications` json DEFAULT NULL,
  `list_of_patents` json DEFAULT NULL,
  `list_of_books` json DEFAULT NULL,
  `list_of_book_chapters` json DEFAULT NULL,
  `google_scholar_link` longtext,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `page4_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page4`
--

LOCK TABLES `page4` WRITE;
/*!40000 ALTER TABLE `page4` DISABLE KEYS */;
INSERT INTO `page4` VALUES (1,1,1,1,2,1,166,420,'[\"Voluptas est voluptatem vel voluptatem.\", \"Nesciunt saepe assumenda eum officiis repellendus.\", \"Aspernatur accusantium quos aperiam ipsum asperiores quisquam corporis omnis laudantium.\", \"Facilis corrupti minus praesentium tempora cumque.\", \"Dignissimos suscipit at ratione hic vitae.\", \"Magnam accusantium nesciunt nobis excepturi voluptatibus numquam ab enim.\", \"Unde architecto modi nemo quas modi.\", \"Magnam ea quas modi.\", \"Commodi ab inventore vitae eum nisi.\", \"Sapiente excepturi quisquam vel commodi autem veniam reiciendis ipsum.\", \"Beatae adipisci nulla eligendi iste amet corporis facilis similique.\", \"Inventore iure dolorem odit ad exercitationem molestias.\", \"Ex nam modi totam amet.\", \"Maiores maxime perspiciatis eum perspiciatis dicta corporis quibusdam.\", \"Placeat placeat consectetur cupiditate eligendi ut facere sed.\", \"Cum a consectetur dolorem odit.\", \"Sit impedit amet voluptatibus impedit nobis inventore a nam.\", \"Enim magni pariatur voluptatem repellendus sapiente distinctio modi itaque incidunt.\", \"Id magnam eius culpa asperiores ipsum.\", \"Eveniet ipsa rem a adipisci repellendus quibusdam pariatur.\", \"Ullam voluptatibus maiores ratione exercitationem modi ad cum quisquam.\", \"Reprehenderit sunt vitae quis ab optio natus qui.\", \"Dolor eos quos soluta tenetur officia ratione minus eaque.\", \"Pariatur autem libero hic sint.\", \"Soluta amet officia distinctio quam asperiores.\", \"Culpa sint eveniet excepturi quas nostrum odit illum dolorem.\"]','[\"Sint exercitationem illo cumque perspiciatis.\", \"Reiciendis dolores inventore rem.\", \"Distinctio occaecati nisi fuga quo non.\", \"Distinctio aliquam nisi vero neque.\", \"Nisi quam perferendis.\", \"Ipsam cumque magni nisi molestiae dolores ab commodi minus.\", \"Mollitia incidunt nemo minus necessitatibus architecto.\", \"Reiciendis vitae modi unde ipsum repellat nobis cum.\", \"Consectetur blanditiis culpa odit.\", \"Tenetur iusto impedit reprehenderit.\", \"Saepe debitis ipsum odit iure optio quam.\", \"Quidem pariatur at quos animi molestias velit.\", \"Similique ab dolorum et veniam officia aliquam sequi asperiores ipsam.\", \"Cupiditate optio exercitationem dolorum ducimus doloremque.\", \"Excepturi blanditiis illo laudantium eum totam dignissimos dolore itaque.\", \"Commodi quaerat atque perspiciatis tempora.\", \"Assumenda ipsum qui vitae fugiat incidunt quibusdam.\", \"Quam recusandae consequuntur iusto et vitae ut illo.\", \"Qui illum non saepe similique reprehenderit repudiandae eaque maxime.\", \"Dignissimos ab quas beatae consequatur rem.\", \"Modi vitae officia dolores inventore deleniti.\"]','[\"379 Bednar Islands\", \"43145 Lyla Turnpike\", \"229 Wuckert Forks\", \"315 Olga Circle\", \"1667 Schuppe Summit\", \"3308 Jarret View\", \"44965 Dangelo Plain\", \"88572 Kuhn Trace\", \"161 Jay Ridge\", \"1536 Laura Unions\", \"70099 Wanda Streets\", \"2836 Kevin Expressway\"]','[\"4168 Kling Causeway\", \"2016 Brionna Forest\", \"790 Devyn Divide\", \"2419 Walsh Land\", \"6965 Waelchi Springs\", \"992 Ebba Ridges\", \"969 Ankunding Islands\", \"337 Cydney Creek\", \"245 Broderick Ferry\", \"3718 Aurelie Manor\", \"786 Cronin Expressway\", \"966 Dino Drives\"]','https://meet.google.com/'),(9,1,1,1,1,1,433,209,'[\"Natus illum dolore.\", \"Qui numquam aliquam velit nulla facilis quod dolor facere.\", \"Magni illum omnis iusto odit vitae dolor nemo.\", \"Recusandae dolorum omnis delectus ex ipsum quod accusamus modi.\", \"Magni sint corporis harum consectetur ipsa porro laborum modi.\", \"Repudiandae doloremque vel.\", \"Tempore facilis exercitationem nihil quidem.\", \"Vero omnis quas ratione.\", \"Accusantium eum cumque.\", \"Dolor doloremque veniam quo nulla dolorum aspernatur.\", \"Nostrum qui fugiat.\", \"Amet non saepe.\", \"Illum eligendi perferendis atque eius doloremque nam harum rem.\", \"Placeat assumenda pariatur ratione dolor quaerat sunt.\", \"Adipisci deleniti aut itaque provident.\", \"Magni quam corrupti provident.\", \"Minima accusantium totam culpa ipsa vitae ad aliquid officia eligendi.\", \"Praesentium ea asperiores corporis mollitia asperiores odio.\", \"Perspiciatis vero et.\", \"Modi error natus quibusdam quisquam.\", \"Magni exercitationem earum reprehenderit sit delectus praesentium ducimus laudantium.\", \"Provident ea consequatur ex repellendus minus.\", \"Soluta commodi eius facilis.\", \"Modi vel quae autem.\", \"Blanditiis voluptate harum maiores perspiciatis harum voluptas.\", \"Ad voluptatem quam quaerat tempora reiciendis.\"]','[\"At veritatis vitae modi esse inventore facere ut perspiciatis.\", \"Voluptate quod aliquid mollitia soluta exercitationem necessitatibus quae.\", \"Sed animi ipsum commodi.\", \"Voluptatem blanditiis aspernatur dolorem aliquam illo quis suscipit facere.\", \"Dolores autem sit minima excepturi impedit eos culpa dolore.\", \"Nostrum mollitia repellat cupiditate maiores officiis reprehenderit totam quis.\", \"Nesciunt a voluptatem minus sint non aliquam architecto consequatur eveniet.\", \"Quod earum laboriosam.\", \"Corrupti vel maiores quasi cum mollitia saepe.\", \"Tenetur numquam quae quibusdam voluptas maiores corrupti sapiente nihil.\", \"Accusantium quo delectus consectetur quaerat vitae temporibus pariatur.\", \"Laborum ipsum ipsam debitis.\", \"Quibusdam deserunt laborum sequi accusamus qui deleniti commodi aut.\", \"Expedita dolores aut ea perferendis consectetur tempore.\", \"Eius sed dolorum excepturi ipsum ea tenetur accusamus.\", \"Hic labore adipisci facilis nulla.\", \"Suscipit porro iure tenetur aut occaecati vel.\", \"Odio praesentium commodi exercitationem distinctio veniam tenetur harum.\", \"Ea adipisci velit molestiae facere.\", \"Repellendus id unde.\", \"Esse iure nulla quibusdam incidunt eligendi.\"]','[\"261 Eden Mountain\", \"58550 Martine Crest\", \"8604 Jacobson Ville\", \"37161 Kerluke Walk\", \"9570 Ilene Coves\", \"97859 Yazmin Wall\", \"7947 Pat Forest\", \"614 Ruth Prairie\", \"3623 Bogan Brook\", \"43256 Ullrich Roads\", \"7766 Bruen Mall\", \"997 McCullough Green\"]','[\"854 Littel Fork\", \"610 Unique Gardens\", \"30284 Camron Cove\", \"1124 Pfeffer Parkways\", \"622 Jarvis Shoals\", \"870 Jast Pike\", \"84479 Elvis Mission\", \"3495 Wunsch Pines\", \"5260 Jayden Lights\", \"4295 Woodrow Forges\", \"88336 Ottilie Station\", \"20133 Runte Wall\"]','https://meet.google.com/'),(10,1,1,1,1,1,245,258,'[\"Labore autem consequuntur odio dolores fugiat tempore voluptatem.\", \"Quos sit delectus tenetur quidem rem ad cupiditate.\", \"Aspernatur incidunt modi distinctio ea suscipit.\", \"Animi asperiores nihil recusandae laudantium et doloribus.\", \"Repudiandae quia expedita.\", \"Hic veritatis quam odit nobis officia.\", \"Iste voluptatem quos voluptate nesciunt voluptatum doloribus omnis.\", \"Quidem excepturi id reprehenderit dolorum quae rem magni illum aliquam.\", \"Amet eum totam distinctio sed.\", \"Illum rerum modi.\", \"At est quam sapiente ex corporis cumque ducimus.\", \"Eveniet eum ea.\", \"Iure quae optio illo dicta excepturi id nobis odit.\", \"Hic minima quaerat ipsa blanditiis quidem velit laboriosam.\", \"Exercitationem quibusdam assumenda ex ex quia inventore voluptatum repellendus esse.\", \"Facilis atque odit occaecati illum nulla a quidem asperiores provident.\", \"Aperiam fuga sunt in fuga officia porro temporibus vitae quos.\", \"Dolorem esse atque eveniet debitis.\", \"Doloribus itaque esse hic est eligendi cum voluptate qui dolore.\", \"Sapiente cum aperiam.\", \"Totam accusamus recusandae possimus excepturi distinctio nesciunt nobis nihil.\", \"Possimus velit veritatis natus eius quae minus.\", \"Voluptatibus nobis fugit temporibus error natus neque.\", \"Hic quidem expedita error possimus aliquid sint.\", \"Nisi inventore vel est.\", \"Laborum nihil laborum doloremque cumque similique.\"]','[\"Est nemo ipsam voluptatum et quos ducimus porro itaque consectetur.\", \"Distinctio minima ut recusandae necessitatibus molestias facere.\", \"Nam voluptatem minima occaecati illum aliquam dolore.\", \"Tempore quaerat in molestiae dolorem vero nam alias optio.\", \"Sint inventore numquam placeat pariatur sapiente dolore dolor ut.\", \"Officia doloribus error suscipit eius soluta omnis suscipit necessitatibus voluptates.\", \"Maiores ipsa aliquam aperiam.\", \"Perferendis sed minus harum.\", \"Tenetur sapiente voluptatum ratione id esse ipsam quam officia.\", \"Illo excepturi quod accusantium quasi ad.\", \"Consequuntur esse iure provident tempore molestias aspernatur.\", \"Ea quae aspernatur officia at possimus labore culpa beatae.\", \"Fugit iusto consectetur.\", \"Consequuntur labore quos amet deleniti reprehenderit accusantium laborum.\", \"Voluptatibus perferendis similique culpa porro iure dolore perferendis.\", \"Quaerat omnis reprehenderit amet.\", \"Praesentium vero non sequi dolorem maxime enim veritatis harum amet.\", \"Veniam eum aliquid.\", \"Totam minima itaque natus expedita cumque tempora.\", \"Accusantium ipsum magnam voluptate soluta blanditiis debitis quas voluptate blanditiis.\", \"Ipsam officiis atque minus vero distinctio.\"]','[\"62302 Larson Dam\", \"58690 Audra Oval\", \"61786 Mike Estate\", \"623 Wolff Wall\", \"516 Robin Loop\", \"2926 Casper Court\", \"997 Kuvalis Forges\", \"40275 Goyette Camp\", \"8176 Wuckert Greens\", \"36404 Raquel Divide\", \"725 Windler Knolls\", \"132 Roxanne Garden\"]','[\"7722 Antonette Cliffs\", \"38285 Watsica Meadows\", \"745 McDermott Field\", \"6822 Kip Lakes\", \"347 Beahan Garden\", \"157 Maeve Skyway\", \"1674 Dickens Point\", \"4864 Lind Mall\", \"59887 Wintheiser Valleys\", \"970 Maxime Way\", \"559 Kavon Village\", \"893 Larkin Oval\"]','https://meet.google.com/');
/*!40000 ALTER TABLE `page4` ENABLE KEYS */;
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
