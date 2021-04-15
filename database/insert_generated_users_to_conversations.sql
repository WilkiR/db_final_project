-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_final_project
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `users_to_conversations`
--

DROP TABLE IF EXISTS `users_to_conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users_to_conversations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `conversation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `user_id_idx` (`user_id`),
  KEY `conversation_id_idx` (`conversation_id`),
  CONSTRAINT `conversation_id` FOREIGN KEY (`conversation_id`) REFERENCES `conversation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_to_conversations`
--

LOCK TABLES `users_to_conversations` WRITE;
/*!40000 ALTER TABLE `users_to_conversations` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_to_conversations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-15  1:47:31



INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('1','1','1');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('2','30','1');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('3','1','2');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('4','16','2');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('5','1','3');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('6','33','3');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('7','1','4');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('8','13','4');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('9','1','5');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('10','38','5');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('11','1','6');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('12','10','6');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('13','1','7');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('14','28','7');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('15','1','8');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('16','44','8');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('17','1','9');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('18','3','9');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('19','19','9');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('20','32','9');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('21','14','9');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('22','21','9');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('23','11','9');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('24','42','9');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('25','39','9');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('26','20','9');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('27','17','10');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('28','2','10');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('29','45','10');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('30','22','10');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('31','13','10');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('32','24','10');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('33','40','10');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('34','43','10');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('35','29','10');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('36','14','10');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('37','32','10');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('38','1','10');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('39','1','11');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('40','6','11');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('41','22','11');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('42','27','11');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('43','43','11');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('44','10','11');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('45','37','11');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('46','42','11');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('47','38','12');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('48','33','12');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('49','1','12');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('50','5','12');
INSERT INTO users_to_conversations (id,user_id,conversation_id) VALUES ('51','4','12');
