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
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `id` int NOT NULL,
  `format` varchar(9) DEFAULT NULL,
  `body` varchar(512) DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_id` int DEFAULT NULL,
  `conversation_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `sender_id_idx` (`user_id`),
  KEY `chat_id_idx` (`conversation_id`),
  KEY `enumerated_format_idx` (`format`),
  CONSTRAINT `chat_id` FOREIGN KEY (`conversation_id`) REFERENCES `conversation` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `enumerated_format` FOREIGN KEY (`format`) REFERENCES `msg_format` (`format`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sender_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-17 19:59:56


INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('1','TEXT','Heres the apartment that I toured today','2021-04-03 16:00:03','1','1');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('2','PHOTO','https://i.pinimg.com/originals/31/7f/f5/317ff570afca5fa9de74b74004c88758.jpg','2021-04-03 16:00:17','1','1');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('3','TEXT','How much is it a month?','2021-04-03 16:02:41','30','1');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('4','TEXT','$3,500','2021-04-03 16:03:04','1','1');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('5','TEXT','Thats way too expensive ','2021-04-03 16:03:29','30','1');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('6','TEXT','Im seeing cheaper ones tomorrow','2021-04-03 16:04:41','1','1');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('7','TEXT','I\'ll let you know how that goes =P','2021-04-03 16:04:53','1','1');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('8','TEXT','Hey, are we still going to the movies today?','2021-04-09 18:34:23','16','2');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('9','TEXT','Yea, I just got done with work.','2021-04-09 18:35:17','1','2');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('10','TEXT','Where\'s the theater again?','2021-04-09 19:04:06','1','2');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('11','LOCATION','https://goo.gl/maps/bdeRULsMBjcZCwfc7','2021-04-09 19:06:58','16','2');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('12','TEXT','There\'s plenty of free parking too','2021-04-09 19:07:07','16','2');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('13','TEXT','Alright, I\'m here at the front.','2021-04-09 19:21:09','16','2');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('14','TEXT','Ok I just parked. Walking in now!','2021-04-09 19:22:45','1','2');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('15','TEXT','How was gym day two','2021-01-04 11:17:40','1','3');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('16','TEXT','It was good, feeling sore but not too bad yet','2021-01-04 12:42:47','33','3');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('17','TEXT','Since I\'ll be out of town next week I\'m just gonna follow this video','2021-01-04 12:43:20','33','3');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('18','VIDEO','https://www.youtube.com/watch?v=3O6WUADm5q8','2021-01-04 12:43:21','33','3');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('19','TEXT','That\'s a good one, Ive done all those as well','2021-01-04 12:47:08','1','3');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('20','TEXT','I\'d reccomend buying some gear to keep at home','2021-01-04 12:47:17','1','3');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('21','TEXT','Can probably find some good ones on amazon','2021-01-04 12:47:32','1','3');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('22','TEXT','https://www.amazon.com/52-5-Adjustable-Cast-Iron-Dumbbell/dp/B009GC76QO/ref=sr_1_1?c=ts&dchild=1&keywords=Exercise+%26+Fitness+Dumbbells&m=ATVPDKIKX0DER&qid=1618518748&refinements=p_6%3AATVPDKIKX0DER&s=sports-and-fitness&sr=1-1&ts_id=3408401','2021-01-04 12:48:42','1','3');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('23','TEXT','https://www.amazon.com/Gaiam-Essentials-Premium-Carrier-Sling/dp/B07H9KV1GG/ref=sr_1_6?dchild=1&fst=as%3Aoff&m=ATVPDKIKX0DER&pf_rd_i=3407731&pf_rd_m=ATVPDKIKX0DER&pf_rd_p=a3a00df7-506b-4626-ba63-fd3e0fe86404&pf_rd_r=7STDF809G7QCJDWNB4WD&pf_rd_s=merchandised-search-3&pf_rd_t=101&qid=1618518751&refinements=p_6%3AATVPDKIKX0DER%2Cp_89%3ABalanceFrom%7CGaiam%7CManduka%7CProSource%7CTone+Fitness%7CYes4All%7CYogitoes&rnid=2528832011&s=sports-and-fitness&sr=1-6','2021-01-04 12:49:41','1','3');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('24','TEXT','https://www.amazon.com/SPRI-Speed-Jump-Rope-9-Feet/dp/B0071GWKUE/ref=sr_1_12?c=ts&dchild=1&keywords=Exercise+%26+Fitness+Accessories&m=ATVPDKIKX0DER&qid=1618518800&refinements=p_6%3AATVPDKIKX0DER&s=sports-and-fitness&sr=1-12&ts_id=3407891','2021-01-04 12:50:44','1','3');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('25','TEXT','https://www.amazon.com/Pure-Fitness-Adjustable-Multi-Purpose-8733WB/dp/B08F2QQ6ZD/ref=asc_df_B08F2QQ6ZD/?tag=hyprod-20&linkCode=df0&hvadid=459505522012&hvpos=&hvnetw=g&hvrand=5823379001935135611&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9061333&hvtargid=pla-951262335753&psc=1','2021-01-04 12:51:32','1','3');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('26','GIF','https://giphy.com/gifs/art-illustration-3ohc1a0nE5CcRTLdeg','2021-02-15 4:31:07','13','4');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('27','GIF','https://i.giphy.com/media/fxe8v45NNXFd4jdaNI/giphy.webp','2021-02-15 4:43:39','1','4');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('28','TEXT','That was a great first date. Hope to hear from you soon','2021-03-27 22:32:49','38','5');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('29','TEXT','Hey ','2021-03-27 2:31:02','38','5');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('30','TEXT','Hey is everything ok','2021-03-30 14:24:05','38','5');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('31','TEXT','Did i do sometin wrong =(','2021-04-01 17:15:00','38','5');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('32','TEXT','Who\'s this?','2021-04-01 23:59:59','1','5');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('33','TEXT','The date was so great omggg','2021-03-27 22:31:49','38','6');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('34','GIF','https://media1.tenor.com/images/f3ad19898460b57e0144d0804c56ad7d/tenor.gif?itemid=5210564','2021-03-27 22:31:57','38','6');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('35','TEXT','Should I text him???','2021-03-27 22:31:57','38','6');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('36','TEXT','I texted him','2021-03-27 22:33:04','38','6');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('37','TEXT','let\'s see what he says','2021-03-27 22:33:10','38','6');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('38','TEXT','oof, you shouldve waited! Always let them message first!','2021-03-27 22:34:05','10','6');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('39','TEXT','It should be fine I think he liked me =)','2021-03-27 22:34:52','38','6');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('40','TEXT','Would you like to go out to dinner tomorrow?','2021-03-30 12:11:17','1','7');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('41','TEXT','I thought you were seeing someone else','2021-03-30 12:45:23','28','7');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('42','TEXT','Yea it didnt work out. She ended up moving','2021-03-30 12:45:58','1','7');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('43','TEXT','oh did she,now?','2021-03-30 1:32:05','28','7');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('44','TEXT','well unfortunately I have other plans so maybe next time','2021-03-30 12:48:46','28','7');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('45','TEXT','Shoot okay I\'ll check back in next week.','2021-03-30 12:49:43','1','7');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('46','TEXT','have a goodnight <3','2021-03-30 22:45:08','1','7');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('47','GIF','https://media1.tenor.com/images/f3ad19898460b57e0144d0804c56ad7d/tenor.gif?itemid=5210564','2021-03-30 22:45:17','1','7');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('48','TEXT','Girl guess who just slid back into my message...','2021-03-30 12:43:42','28','8');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('49','TEXT','Bob!?','2021-03-30 12:44:15','44','8');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('50','TEXT','Yes','2021-03-30 12:44:24','28','8');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('51','TEXT','I thought he was dating Shira?','2021-03-30 12:44:39','44','8');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('52','TEXT','Apparently she moved','2021-03-30 12:46:19','28','8');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('53','TEXT','uhhh.... I just saw her this morning... ','2021-03-30 12:46:54','44','8');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('54','GIF','https://media2.giphy.com/media/CmqNynXoenYnm/200.gif','2021-03-30 12:48:02','28','8');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('55','TEXT','yea I\'m not going out with him','2021-03-30 12:48:12','28','8');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('56','TEXT','if he lied once, he\'ll do it again please just block the boy','2021-03-30 12:48:29','44','8');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('57','TEXT','It\'s snowing in Spring!!!','2021-04-20 11:36:14','3','9');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('58','TEXT','Is it really now!?','2021-04-20 11:39:37','11','9');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('59','TEXT','Yea we\'re in Mass right now.','2021-04-20 11:41:13','3','9');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('60','TEXT','Just made some biscuits!!!','2021-04-20 16:23:32','20','9');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('61','PHOTO','http://www.thecomfortofcooking.com/wp-content/uploads/2020/03/Best_Ever_Buttermilk_Biscuits-6.jpg','2021-04-20 16:23:57','20','9');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('62','TEXT','Mmmm looks delicioussssss, please bring us some =)','2021-04-20 16:25:00','3','9');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('63','TEXT','Was not expecting that, but I bet it tastes really good  =P','2021-04-20 16:26:48','11','9');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('64','TEXT','Wow it snowed!?','2021-04-23 14:47:08','19','9');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('65','TEXT','Also those cookies look so good','2021-04-23 14:47:25','19','9');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('66','TEXT','I made this group because Bob\'s birthday is next week and I think we should do something for him','2021-02-17 12:51:32','17','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('67','TEXT','Does anyone who what he likes?','2021-02-17 12:51:50','17','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('68','TEXT','He collects ties so we can all gift him a tie with a crazy print on it','2021-02-17 12:52:08','2','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('69','TEXT','Everyone send a screenshot of the tie youre gonna get him so we dont buy the same ones','2021-02-17 12:52:26','45','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('70','PHOTO','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBsA2HOmBcL3hxHLJVBov9T-pLC7DfcfNdJQ-WofNxuNF9TeDNjwK7QG2TbEccEeiejBvEd6R1&usqp=CAc','2021-02-17 12:52:44','22','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('71','PHOTO','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBbVpgtG7sqRC9IkNAjynFb07Hh7Mf48tAbVjdWDWO4hse24ZM2Xvr7vM9E0aReuLOx1ESkU-c&usqp=CAc','2021-02-17 12:53:02','13','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('72','PHOTO','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjH78D3SHDDlQEzq5F-w1GlW8xmJNh9wjI0HsvUDV0qiLrSRdFaNcwn_GDRqHPJR7SGHx5O_mt&usqp=CAc','2021-02-17 12:53:20','24','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('73','PHOTO','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8wTKv3FsfDzYWq5VJd8yi20K_Gp4QfvbLdyC-F0bzXHiq8DDbCZmIBHCJ-An3OPSRxoY2yTGR&usqp=CAc','2021-02-17 12:53:38','43','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('74','PHOTO','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUK9QJQowr6ghnaB1FmsU17LFOckOxkptR87SQaJ6qZJqLqth9gaY1d--_lqkMPIBrbKOhEUxw&usqp=CAc','2021-02-17 12:53:56','40','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('75','PHOTO','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR3dsi4vXUkzl0vhwRogYDd-QSFnxDlml4dhtqAV8kJhBD1UbtAAAlGhs2TZonfYklSkpXlCOJp&usqp=CAc','2021-02-17 12:54:14','29','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('76','PHOTO','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaTI0cSVxjhigK8IuQK9O7XaNYv89mKEGjAC1s4H8OgaVI-STU7tLQy-NPd42ZljgjAVrntEI&usqp=CAc','2021-02-17 12:54:32','14','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('77','PHOTO','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdLTNvUqW5tkChnudm-qlDKUsezZZ-jNO7zSUUBuWVgfa-XKpt18dahI_UJ0br18R7foE0m0o&usqp=CAc','2021-02-17 12:54:50','32','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('78','PHOTO','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGh9sfpdoIXJKGH28-d7Np0X7wsl5pW_GykPvLm6vKitPAnnkKSvo5k4V9EztPBEZyJLVk5bM&usqp=CAc','2021-02-17 12:55:08','45','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('79','PHOTO','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZaShC9HW5hm39hlZfln3AL-MC2WhcjIgBMe8tFYAHHiExKO7qqslq2zlbxUybsxWM86LUCoU&usqp=CAc','2021-02-17 12:55:26','2','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('80','PHOTO','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNWnvFvEE7XsqJDfd0p8UUy-Mb3okFMzEPyASmuKehSIXSkxRcL87YS83cdqYkjUaCXajwyztx&usqp=CAc','2021-02-17 12:55:44','17','10');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('81','TEXT','We should do something tomorrow','2021-02-19 13:10:03','1','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('82','TEXT','I wanna do a Saturday brunch and a boat ride','2021-02-19 14:10:03','6','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('83','TEXT','A BOAT RIDE??!!?','2021-02-19 14:11:03','27','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('84','GIF','https://media.tenor.com/images/86eb7c00905ba5fa58b0e0bc7c7c7486/tenor.gif','2021-02-19 14:12:03','27','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('85','TEXT','I loveee the brunch idea','2021-02-19 14:13:03','22','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('86','TEXT','Is it gonna be good weather fo the boat?','2021-02-19 14:14:03','22','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('87','TEXT','Its gonna be 61','2021-02-19 14:15:03','6','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('88','TEXT','The boat has its own heating and cooling system tho','2021-02-19 14:16:03','6','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('89','TEXT','I was on it for my birthday and it was great','2021-02-19 14:17:03','6','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('90','TEXT','I know a place downtown that isnt expensive','2021-02-19 14:18:03','1','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('91','TEXT','I dont wanna go on a boat','2021-02-19 14:19:03','43','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('92','TEXT','Did you see what happened to that guy two years ago?','2021-02-19 14:20:03','43','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('93','TEXT','No what happened??','2021-02-19 14:21:03','10','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('94','VIDEO','https://www.youtube.com/watch?v=SR4Eh3Bytas','2021-02-19 14:22:03','37','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('95','TEXT','Wowww','2021-02-19 14:23:03','42','11');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('96','TEXT','The final is in a week and a half so when is everyone able to meet this weekend to study?','2021-04-12 17:10:03','38','12');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('97','TEXT','Im available any time on Friday and Saturday but not Sunday','2021-04-13 17:11:00','33','12');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('98','TEXT','I can do Saturday at 2 and any time on Sunday','2021-04-14 17:12:00','1','12');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('99','TEXT','Im not free Saturday but I can do Sunday after 3','2021-04-15 17:13:00','5','12');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('100','TEXT','Same','2021-04-16 17:13:56','4','12');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('101','TEXT','Okay we can meet in Richards at 4 on Sunday','2021-04-17 17:14:56','38','12');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('102','TEXT','I\'ll let yall know when I found a room','2021-04-18 17:15:56','38','12');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('103','TEXT','Does anyone know whats going to be on the final? ','2021-04-19 17:16:56','5','12');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('104','TEXT','I didnt go to the last class','2021-04-20 17:17:56','5','12');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('105','TEXT','All of fourier transform and laplace transform ','2021-04-21 17:18:56','33','12');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('106','TEXT','Also block diagrams and convolution','2021-04-22 17:19:56','4','12');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('107','TEXT','Yikes I hate convolution','2021-04-23 17:20:56','38','12');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('108','TEXT','Same its just so much math to work out','2021-04-24 17:21:56','1','12');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('109','TEXT','We got over a week to study so it should be fine','2021-04-25 17:22:56','5','12');
INSERT INTO message (id,format,body,created,user_id,conversation_id) VALUES ('110','TEXT','Thats what you think','2021-04-26 17:23:56','4','12');