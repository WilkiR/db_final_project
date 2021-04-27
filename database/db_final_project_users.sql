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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone_number` varchar(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_number_UNIQUE` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Bob','Duncan','b.duncan','W54NgIdSyF','b.duncan@dbd.com','7206746781','1996-02-23'),(2,'Alice','Sawyer','a.sawyer','BY9K1z4','a.sawyer@dbd.com','5829091952','1975-07-30'),(3,'Kirby ','Pamela','k.pamela','oyD8wg0','k.pamela@dbd.com','9157400071','1988-08-08'),(4,'Gwendoline ','Marla','g.marla','6CtTjPrL02','g.marla@dbd.com','2184763661','1977-01-07'),(5,'Aatu ','Meklit','a.meklit','es5uOna80H','a.meklit@dbd.com','4830746267','1972-10-02'),(6,'Augustus','Byrne','a.byrne','3WVmQYY','a.byrne@dbd.com','8642862253','1987-09-18'),(7,'Lyla-Rose','Velasquez','l.velasquez','7mdJf90','l.velasquez@dbd.com','3915097938','1979-08-21'),(8,'Emma','Marriott','e.marriott','32E8KoL','e.marriott@dbd.com','5785944484','1981-11-29'),(9,'Sharna','William','s.william','6LD34b3','s.william@dbd.com','2468300049','1968-03-15'),(10,'Tyreece','Rollins','t.rollins','WaiXAVq9m7','t.rollins@dbd.com','6626480228','1985-10-24'),(11,'Cairon','Bob','c.bob','X4IS7lT','c.bob@dbd.com','3029017789','1962-09-28'),(12,'Lara','Moon','l.moon','dDcdOlN','l.moon@dbd.com','5338082185','2002-06-08'),(13,'Teegan','Gonzalez','t.gonzalez','FVJ3a4N','t.gonzalez@dbd.com','6256001492','2003-12-16'),(14,'Ahmad','Carty','a.carty','L9KAoVqhA6','a.carty@dbd.com','9135943592','2003-12-01'),(15,'Federico','Brennan','f.brennan','W6taL3q5aX','f.brennan@dbd.com','6617332498','1967-10-20'),(16,'Oluwatobiloba','Barrera','o.barrera','KAGJtnrCUU','o.barrera@dbd.com','1297727390','1968-01-29'),(17,'Conan','Cote','c.cote','H2911cq5bg','c.cote@dbd.com','4972942754','1974-01-05'),(18,'Eesa','Atkinson','e.atkinson','873Jh21','e.atkinson@dbd.com','3528061502','1998-10-10'),(19,'Lottie','Swift','l.swift','T4Wg36C','l.swift@dbd.com','2246239796','1991-10-22'),(20,'Luther','Haigh','l.haigh','TD2MRtP','l.haigh@dbd.com','8612957901','1985-09-24'),(21,'Kain','Espinoza','k.espinoza','H9422nnjfM','k.espinoza@dbd.com','4764455063','1985-01-10'),(22,'Louie','Nelson','l.nelson','r2N93KF','l.nelson@dbd.com','5584894037','2005-03-14'),(23,'Ella-Louise','Figueroa','e.figueroa','rlaDrk5','e.figueroa@dbd.com','1262377881','1971-07-24'),(24,'Jody','Goff','j.goff','6CSk58C','j.goff@dbd.com','8424947812','1969-12-31'),(25,'Nur','Nichols','n.nichols','va793c5','n.nichols@dbd.com','5990422298','1997-08-26'),(26,'Angie','Minnix','a.minnix','vTls8wO','a.minnix@dbd.com','5665303578','1986-02-14'),(27,'Tobias','Rizer','t.rizer','AK7x4a3','t.rizer@dbd.com','7845513603','1983-03-29'),(28,'Matha','Barcenas','m.barcenas','EsJN245','m.barcenas@dbd.com','9123602103','1991-04-15'),(29,'Alia','Hetrick','a.hetrick','v5MFVAQ','a.hetrick@dbd.com','2952073195','1975-05-11'),(30,'Kathlene','Whitehurst','k.whitehurst','a857v1s339','k.whitehurst@dbd.com','4400023879','1962-07-03'),(31,'Ping','Sonntag','p.sonntag','93iNOF6','p.sonntag@dbd.com','2660414636','1960-12-31'),(32,'Lakeshia','Charity','l.charity','OBY37xaLmq','l.charity@dbd.com','6698662698','1964-11-02'),(33,'Rosio','Smead','r.smead','Pr4NOB3','r.smead@dbd.com','8501158743','1982-11-18'),(34,'Kimbra','Dishon','k.dishon','wimxX4bXPf','k.dishon@dbd.com','9996653799','1964-04-24'),(35,'Lajuana','Ventura','l.ventura','QG81NVi7Rm','l.ventura@dbd.com','7236809196','1966-10-23'),(36,'Rodrick','Mumford','r.mumford','y31LhES','r.mumford@dbd.com','5577691429','2003-12-13'),(37,'Maurice','Stubbe','m.stubbe','xngp60S','m.stubbe@dbd.com','8785421870','1976-06-22'),(38,'Shira','Hyppolite','s.hyppolite','nFMWI8fXgO','s.hyppolite@dbd.com','6470981264','1979-10-02'),(39,'Rogelio','Empson','r.empson','ku91R43','r.empson@dbd.com','9456341459','1991-09-08'),(40,'Lorita','Michelle','l.michelle','sf39N99','l.michelle@dbd.com','2392336797','1988-06-30'),(41,'Jillian','Churchwell','j.churchwell','ixEYhBI','j.churchwell@dbd.com','7634263783','2000-03-15'),(42,'Alverta','Moore','a.moore','o71JLAlsPv','a.moore@dbd.com','3371044922','1995-11-29'),(43,'Marcel','Nixon','m.nixon','3CA1MV0','m.nixon@dbd.com','9775426290','1960-07-27'),(44,'Paulita','Speier','p.speier','6408mQwNqy','p.speier@dbd.com','8364290292','1984-01-05'),(45,'Wilton','Faulk','w.faulk','i6x00H8','w.faulk@dbd.com','7338514684','1978-05-30');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-26 23:54:42
