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
-- Table structure for table `page6`
--

DROP TABLE IF EXISTS `page6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `page6` (
  `user_id` int NOT NULL,
  `PhD_supervision` json DEFAULT NULL,
  `MTech_supervision` json DEFAULT NULL,
  `BTech_supervision` json DEFAULT NULL,
  `page6col` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `page6_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_login_info` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page6`
--

LOCK TABLES `page6` WRITE;
/*!40000 ALTER TABLE `page6` DISABLE KEYS */;
INSERT INTO `page6` VALUES (1,'[\"870-126-9282\", \"054-901-4621\", \"507-330-9215\", \"640-560-7246\", \"228-845-0746\", \"656-677-0336\", \"350-083-8755\", \"791-620-0033\", \"292-219-1123\", \"886-031-8821\", \"316-357-3011\", \"230-644-5684\", \"305-048-5243\", \"455-621-1212\", \"811-297-6420\"]','[\"Dolores quisquam modi quas quis.\", \"Recusandae ipsam cupiditate rerum.\", \"Ipsam eaque pariatur numquam mollitia accusantium nulla.\", \"Minus voluptate neque numquam blanditiis molestias error nemo nam.\", \"Consectetur facere accusamus accusamus enim ab blanditiis perferendis possimus.\", \"Fugit ullam labore vero molestiae quia modi porro impedit fugiat.\", \"Deleniti consectetur vitae porro.\", \"Modi deserunt esse explicabo blanditiis reprehenderit.\", \"Nam accusantium consectetur.\", \"Ducimus iure consequuntur ad nemo sint.\", \"Velit distinctio itaque doloribus.\", \"Nemo eum commodi sit.\", \"Maiores cumque consequatur.\", \"Perspiciatis quasi dolorem illo ratione in sunt.\", \"Delectus sit quo reiciendis aliquid dolorum doloremque eum dolorum eligendi.\"]','[\"At aut corrupti inventore beatae quaerat odio quisquam.\", \"Aspernatur deserunt recusandae ipsa nulla accusantium distinctio.\", \"Placeat ducimus similique eligendi harum aperiam molestiae.\", \"Odit officiis enim eligendi.\", \"Enim totam quam dignissimos similique.\", \"Nisi minima quibusdam id error deserunt quis.\", \"Perferendis eum cumque magni tempora doloremque.\", \"Recusandae odio libero necessitatibus.\", \"Nemo saepe vel maxime recusandae pariatur delectus exercitationem itaque.\", \"Libero ut est quas odit excepturi odit doloribus maxime.\", \"Eius voluptatibus consequuntur quia.\", \"Commodi occaecati sunt molestias.\", \"Optio esse explicabo consectetur accusantium doloribus.\", \"Alias perferendis excepturi laboriosam exercitationem repellat dignissimos est doloribus occaecati.\", \"Libero asperiores ipsa.\"]',NULL),(6,'[\"801-941-8470\", \"484-935-1720\", \"934-358-7149\", \"393-838-1610\", \"206-755-7025\", \"052-794-9703\", \"098-824-3591\", \"360-215-3801\", \"423-283-8221\", \"400-881-1429\", \"450-582-4980\", \"661-418-2360\", \"599-462-6638\", \"343-105-7111\", \"543-490-8367\"]','[\"Dolor iusto officiis pariatur voluptate.\", \"Omnis nemo beatae officiis corrupti explicabo dignissimos praesentium natus.\", \"Aliquid tenetur amet.\", \"Sequi id velit cum corrupti alias quisquam doloribus.\", \"Eveniet earum explicabo veritatis esse.\", \"Saepe tenetur officiis explicabo vitae voluptas.\", \"Aliquid eaque debitis velit nisi quam ratione asperiores.\", \"Eos ut unde occaecati non earum consequatur aliquam.\", \"Maxime animi animi cum ab maiores.\", \"Alias voluptas ducimus magnam error.\", \"Repellendus enim praesentium quis omnis.\", \"Aliquam reiciendis rerum molestias commodi perspiciatis quo.\", \"Quasi sunt ratione accusantium sit asperiores.\", \"Molestiae quam tempore pariatur voluptates hic odit autem minus.\", \"Iste ea praesentium unde architecto totam facere laudantium facilis dolor.\"]','[\"Laudantium facere aperiam.\", \"Illo qui velit quo velit in nemo quod occaecati enim.\", \"Saepe vel quas ad neque dolore nihil.\", \"Illo reiciendis aliquid aut rerum delectus dicta recusandae molestiae.\", \"Numquam laudantium facere officia debitis vitae magni rerum.\", \"Repellat iusto delectus optio earum dicta nihil.\", \"Voluptatibus pariatur atque sequi fuga quibusdam earum provident.\", \"Corrupti aut accusantium.\", \"Dicta neque praesentium sunt beatae vel debitis placeat excepturi fugit.\", \"Nemo impedit sapiente ducimus.\", \"Ipsum autem nostrum quas tempore dolor eaque.\", \"Labore eius omnis nihil in atque praesentium alias ad officia.\", \"Ratione reprehenderit ipsa labore dolorum deleniti labore veniam.\", \"Explicabo dolores suscipit sit.\", \"Accusantium sequi enim itaque incidunt nulla rerum consequatur sunt facere.\"]',NULL),(9,'[\"793-883-5441\", \"745-493-5845\", \"893-157-4511\", \"163-129-7415\", \"483-744-1136\", \"337-724-4973\", \"935-854-2646\", \"998-582-1375\", \"746-883-1700\", \"373-508-3156\", \"244-950-2968\", \"609-050-2340\", \"970-177-9808\", \"620-537-7473\", \"687-273-1048\"]','[\"Provident tempore temporibus numquam animi neque ratione.\", \"Expedita facilis qui veniam dignissimos minus quisquam natus maxime.\", \"Ipsa consequatur inventore nesciunt consequuntur.\", \"In quam fuga ab iure optio officiis.\", \"Cum commodi cupiditate nemo ducimus nemo dignissimos delectus.\", \"Doloribus culpa occaecati nobis vitae voluptatem veritatis.\", \"Repudiandae autem voluptas provident perferendis dolorum at praesentium nulla nemo.\", \"Accusantium eaque tempore nihil hic eius ducimus.\", \"A nam maxime debitis non occaecati adipisci earum.\", \"Nemo laudantium quam molestias assumenda.\", \"Neque aperiam rem rem.\", \"Qui quasi exercitationem cumque atque sit quisquam deserunt cumque.\", \"Dicta perspiciatis earum perspiciatis incidunt.\", \"Deleniti impedit consectetur modi tenetur et quasi assumenda id.\", \"Ea fugit hic architecto delectus officia excepturi iure error.\"]','[\"Nesciunt officia quis impedit consequuntur reiciendis quod.\", \"Assumenda doloribus deserunt blanditiis.\", \"Cupiditate dolorem harum.\", \"Molestiae aspernatur aliquid.\", \"Voluptatem quas quo natus provident quasi.\", \"Molestias dolore optio explicabo id accusantium numquam.\", \"Ullam hic itaque vel hic incidunt.\", \"A fuga ex sed sunt nam quis.\", \"Asperiores rem cupiditate animi quae blanditiis nobis beatae.\", \"Molestiae est voluptate facilis vel eaque corrupti doloremque nostrum.\", \"Consectetur sed reiciendis recusandae perferendis odio perspiciatis.\", \"Molestiae debitis sit doloribus.\", \"Architecto tempore necessitatibus aliquam deleniti totam ducimus ut ratione consequuntur.\", \"Inventore quo deleniti ea incidunt quas culpa est ipsum tempore.\", \"Et explicabo molestias esse minus dolor.\"]',NULL),(10,'[\"099-345-5407\", \"954-288-4227\", \"887-701-8473\", \"414-775-6326\", \"545-306-1169\", \"436-628-6117\", \"786-186-9921\", \"604-636-2781\", \"605-677-6357\", \"606-674-9178\", \"762-276-8709\", \"258-085-3874\", \"810-350-9078\", \"668-715-4966\", \"403-782-9711\"]','[\"Doloremque laudantium incidunt.\", \"Modi fuga debitis autem tempora consequatur quod dignissimos.\", \"Laudantium amet molestias voluptate quos facere natus excepturi.\", \"Occaecati inventore rem tempore esse voluptas ducimus error voluptatem.\", \"Maxime repellendus aliquid deserunt illum assumenda saepe.\", \"Ut laborum veniam unde fugiat perspiciatis nobis.\", \"Recusandae reprehenderit adipisci voluptatibus non quo ipsum neque.\", \"Sequi sed veniam praesentium corrupti non.\", \"Nisi eos aperiam dicta impedit voluptates facere adipisci voluptate libero.\", \"Voluptates nesciunt magni occaecati aut sequi.\", \"Tempore adipisci blanditiis minima quaerat eum nam vero.\", \"Laboriosam facere repellendus ab dolorum ea maiores sit error delectus.\", \"Repellendus autem perferendis sapiente vitae.\", \"Maiores aperiam optio quae repudiandae odit in illo repudiandae.\", \"Corrupti nemo et odio laboriosam error.\"]','[\"Id distinctio omnis libero unde vero.\", \"Ullam debitis placeat eius explicabo temporibus pariatur excepturi perspiciatis eius.\", \"Veritatis nostrum est hic sed fugiat ratione quis magnam.\", \"Harum repudiandae qui ea dolor nostrum perspiciatis.\", \"Quisquam a ut error doloribus magnam facilis facere inventore.\", \"Veniam eius pariatur.\", \"Eius minima alias accusantium.\", \"Recusandae eaque quidem facilis aliquam quos aperiam nihil debitis explicabo.\", \"Et sed minima optio illum cumque quisquam nihil.\", \"Vitae veritatis debitis dignissimos minus error.\", \"Maxime soluta numquam molestias dicta tempore nihil qui magni adipisci.\", \"Aspernatur mollitia soluta nam ipsa debitis architecto alias iste.\", \"Delectus temporibus autem.\", \"Tempore hic dolores est.\", \"Architecto consectetur quibusdam fugiat occaecati perferendis officia ut aut.\"]',NULL);
/*!40000 ALTER TABLE `page6` ENABLE KEYS */;
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
