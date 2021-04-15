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
-- Table structure for table `conversation`
--

DROP TABLE IF EXISTS `conversation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conversation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `notification` tinyint DEFAULT NULL,
  `chat_photo` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversation`
--

LOCK TABLES `conversation` WRITE;
/*!40000 ALTER TABLE `conversation` DISABLE KEYS */;
INSERT INTO `conversation` VALUES (1,'Mom',1,'https://www.pennlive.com/resizer/0-CWhdqQsJUL3dOJPgAfTkxLmX0=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/QEFVGZKNWNGKJBSJZ6CHN43KOQ.jpg'),(2,'Oluwatobiloba Barrera',0,'https://lh3.googleusercontent.com/proxy/N59aLVY2T2F9Tn_KwDCnz_1gNmkYrmTYAMKJ_TCvKPH9ABHXcFn1rX0DDgp3lTx5iLO9b2vtaXX9AUVqNpQk4LkFF9lfrc2Fp_QkCZxjX79qF2UwEBcc5n7CqdzewDc'),(3,'Rosio Smead',1,'https://wwwimage-us.pplusstatic.com/thumbnails/photos/w1920-q80/marquee/11/77/27/6/hero_landscape_91e1b039-11ef-4d97-a01e-639b6ee4990a.jpg'),(4,'Teegan Gonzalez',1,'https://s1.mylife.com/photos/031/160/448L.jpg'),(5,'Shira Hyppolite',1,'https://assets.vogue.com/photos/5fced19ddad9ba0c310e4d7e/master/pass/IMG_1849.JPG'),(6,'Tyreece Rollins',1,'https://static.wikia.nocookie.net/the-walking-dead-my-way/images/3/34/Season_5_tyreese.jpg/revision/latest?cb=20200307031243'),(7,'Matha Barcenas',0,'https://www.wbcalaredo.org/wp-content/uploads/2019/10/Mr.-South-Texas.jpg'),(8,'Paulita Speier',0,'https://img.freepik.com/free-photo/indoor-shot-young-cheerful-dark-haired-woman-keeping-raised-hand-her-chest-laughing-happily-with-closed-eyes-isolated-blue-wall_295783-11258.jpg?size=626&ext=jpg'),(9,'Family Group Chat',0,'https://cf.ltkcdn.net/family/images/orig/258550-2121x1414-Extended_Family_African_American.jpg'),(10,'Coworkers Group Chat',1,'https://g.foolcdn.com/editorial/images/491469/coworkers-collaborating_gettyimages-507753272.jpg'),(11,'Friends Group Chat',1,'https://i.pinimg.com/originals/8f/b9/81/8fb981fdafdb29b364cc0eb2d6775a9c.jpg'),(12,'Study Group',1,'https://i.picsum.photos/id/1/5616/3744.jpg?hmac=kKHwwU8s46oNettHKwJ24qOlIAsWN9d2TtsXDoCWWsQ');
/*!40000 ALTER TABLE `conversation` ENABLE KEYS */;
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
