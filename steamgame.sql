-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: steamgame
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `developergame`
--

DROP TABLE IF EXISTS `developergame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `developergame` (
  `DeveloperId` int NOT NULL,
  `GameId` int NOT NULL,
  PRIMARY KEY (`DeveloperId`,`GameId`),
  KEY `GameId` (`GameId`),
  CONSTRAINT `developergame_ibfk_1` FOREIGN KEY (`DeveloperId`) REFERENCES `gamedeveloper` (`DeveloperId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `developergame`
--

LOCK TABLES `developergame` WRITE;
/*!40000 ALTER TABLE `developergame` DISABLE KEYS */;
INSERT INTO `developergame` VALUES (201,1),(201,2),(202,7),(202,8),(203,9),(203,10);
/*!40000 ALTER TABLE `developergame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `game`
--

DROP TABLE IF EXISTS `game`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game` (
  `GameId` int NOT NULL AUTO_INCREMENT,
  `GameName` varchar(255) DEFAULT NULL,
  `Rating` float DEFAULT NULL,
  `ReleaseDate` date DEFAULT NULL,
  `Size` float DEFAULT NULL,
  `PublisherId` int DEFAULT NULL,
  `DeveloperId` int DEFAULT NULL,
  `GenreId` int DEFAULT NULL,
  PRIMARY KEY (`GameId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game`
--

LOCK TABLES `game` WRITE;
/*!40000 ALTER TABLE `game` DISABLE KEYS */;
INSERT INTO `game` VALUES (1,'COD MW3',4.5,'2023-01-01',20,101,201,301),(2,'COD MW2',3.8,'2023-02-15',1024.5,102,202,302),(3,'COD 1',4.2,'2023-03-20',1024.5,103,203,303),(4,'COD 2',4.1,'2023-04-05',4000,104,204,302),(5,'COD 3',4.7,'2023-05-10',1024.5,105,205,305),(6,'COD 4',4.3,'2023-06-15',1024.5,106,206,306),(7,'Forza 5',4.9,'2023-07-20',1024.5,107,207,307),(8,'Forza 6',4.6,'2023-08-25',1024.5,108,208,308),(9,'GTA 5',4.8,'2023-09-30',1024.5,109,209,309),(10,'GTA 6',4.4,'2023-10-15',10,110,210,301),(21,'Batman2',5,'2023-11-11',10,302,203,303),(22,'Batman',5,'2023-11-30',1,301,201,301),(23,'car',5,'2023-11-05',15,301,201,301),(24,'Batman',5,'2023-12-01',12,103,102,302),(25,'chota  bheem',5,'2023-11-09',10,301,201,301),(32,'Game9',5,'2024-11-14',4000,301,204,301);
/*!40000 ALTER TABLE `game` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamedeveloper`
--

DROP TABLE IF EXISTS `gamedeveloper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamedeveloper` (
  `DeveloperId` int DEFAULT NULL,
  `DeveloperName` varchar(50) DEFAULT NULL,
  KEY `idx_DeveloperId` (`DeveloperId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamedeveloper`
--

LOCK TABLES `gamedeveloper` WRITE;
/*!40000 ALTER TABLE `gamedeveloper` DISABLE KEYS */;
INSERT INTO `gamedeveloper` VALUES (201,'Infinity Ward'),(202,'Turn 10 Studios'),(203,'Rockstar North');
/*!40000 ALTER TABLE `gamedeveloper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamepublisher`
--

DROP TABLE IF EXISTS `gamepublisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamepublisher` (
  `PublisherId` int DEFAULT NULL,
  `PublisherName` varchar(50) DEFAULT NULL,
  KEY `idx_PublisherId` (`PublisherId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamepublisher`
--

LOCK TABLES `gamepublisher` WRITE;
/*!40000 ALTER TABLE `gamepublisher` DISABLE KEYS */;
INSERT INTO `gamepublisher` VALUES (101,'Activision'),(102,'Microsoft Studios'),(103,'Rockstar Games');
/*!40000 ALTER TABLE `gamepublisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `GenreId` int DEFAULT NULL,
  `GenreName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (301,'First-Person Shooter'),(302,'Racing'),(303,'Open World');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `UserId` int NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `UserType` enum('User','Publisher','Developer') NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (101,'user1','123','User'),(102,'user2','123','User'),(103,'user3','123','User'),(201,'dev1','123','Developer'),(202,'dev2','123','Developer'),(301,'pub1','123','Publisher');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishergame`
--

DROP TABLE IF EXISTS `publishergame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishergame` (
  `PublisherId` int NOT NULL,
  `GameId` int NOT NULL,
  PRIMARY KEY (`PublisherId`,`GameId`),
  KEY `GameId` (`GameId`),
  CONSTRAINT `publishergame_ibfk_1` FOREIGN KEY (`PublisherId`) REFERENCES `gamepublisher` (`PublisherId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishergame`
--

LOCK TABLES `publishergame` WRITE;
/*!40000 ALTER TABLE `publishergame` DISABLE KEYS */;
INSERT INTO `publishergame` VALUES (101,1),(101,2),(102,7),(102,8),(103,9),(103,10);
/*!40000 ALTER TABLE `publishergame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `ReviewId` int NOT NULL,
  `ReviewText` text,
  `GameId` int DEFAULT NULL,
  `UserId` int DEFAULT NULL,
  PRIMARY KEY (`ReviewId`),
  KEY `GameId` (`GameId`),
  KEY `UserId` (`UserId`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`UserId`) REFERENCES `login` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,'Great game! Loved the graphics and gameplay.',1,101),(2,'The storyline is amazing, but the controls could be better.',2,102),(3,'Highly recommend! Excellent open-world experience.',3,103),(4,'Solid racing game with realistic physics.',7,101),(5,'Enjoyable gameplay, but the graphics could be improved.',8,102),(6,'One of the best open-world games I have played.',9,103),(7,'Fantastic graphics and attention to detail.',10,101);
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sysreq`
--

DROP TABLE IF EXISTS `sysreq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sysreq` (
  `SysReqId` int NOT NULL,
  `GameId` int DEFAULT NULL,
  `OS` varchar(100) DEFAULT NULL,
  `Storage` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SysReqId`),
  KEY `GameId` (`GameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sysreq`
--

LOCK TABLES `sysreq` WRITE;
/*!40000 ALTER TABLE `sysreq` DISABLE KEYS */;
INSERT INTO `sysreq` VALUES (1,1,'Windows 10','50 GB'),(2,2,'Windows 7','40 GB'),(3,3,'Windows 8','60 GB'),(4,7,'Windows 10','70 GB'),(5,8,'Windows 7','45 GB'),(6,9,'Windows 10','80 GB'),(7,10,'Windows 8','100 GB');
/*!40000 ALTER TABLE `sysreq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergame`
--

DROP TABLE IF EXISTS `usergame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usergame` (
  `UserId` int NOT NULL,
  `GameId` int NOT NULL,
  PRIMARY KEY (`UserId`,`GameId`),
  KEY `GameId` (`GameId`),
  CONSTRAINT `usergame_ibfk_1` FOREIGN KEY (`UserId`) REFERENCES `login` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergame`
--

LOCK TABLES `usergame` WRITE;
/*!40000 ALTER TABLE `usergame` DISABLE KEYS */;
INSERT INTO `usergame` VALUES (101,1),(102,2),(103,3),(101,4),(101,7),(102,8),(103,9);
/*!40000 ALTER TABLE `usergame` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-19 23:05:52
