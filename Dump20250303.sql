-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: wazeapp
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` enum('City','Transport Hub','Expressway Exit') NOT NULL,
  `region` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (1,'Manila','City','NCR'),(2,'Quezon City','City','NCR'),(3,'Makati','City','NCR'),(4,'Pasig','City','NCR'),(5,'Taguig','City','NCR'),(6,'Mandaluyong','City','NCR'),(7,'Pasay','City','NCR'),(8,'Parañaque','City','NCR'),(9,'Caloocan','City','NCR'),(10,'Muntinlupa','City','NCR'),(11,'Las Piñas','City','NCR'),(12,'Valenzuela','City','NCR'),(13,'San Juan','City','NCR'),(14,'Marikina','City','NCR'),(15,'San Fernando','City','Central Luzon'),(16,'Angeles City','City','Central Luzon'),(17,'Tarlac City','City','Central Luzon'),(18,'Olongapo City','City','Central Luzon'),(19,'Malolos','City','Central Luzon'),(20,'Cabanatuan','City','Central Luzon'),(21,'Balanga','City','Central Luzon'),(22,'Meycauayan','City','Central Luzon'),(23,'Batangas City','City','CALABARZON'),(24,'Lipa City','City','CALABARZON'),(25,'Lucena City','City','CALABARZON'),(26,'San Pablo City','City','CALABARZON'),(27,'Tagaytay','City','CALABARZON'),(28,'Calamba','City','CALABARZON'),(29,'Antipolo','City','CALABARZON'),(30,'Dasmariñas','City','CALABARZON'),(31,'Imus','City','CALABARZON'),(32,'Trece Martires','City','CALABARZON'),(33,'San Fernando','City','Ilocos Region'),(34,'Vigan','City','Ilocos Region'),(35,'Laoag','City','Ilocos Region'),(36,'Dagupan','City','Ilocos Region'),(37,'Urdaneta','City','Ilocos Region'),(38,'Tuguegarao','City','Cagayan Valley'),(39,'Ilagan','City','Cagayan Valley'),(40,'Santiago','City','Cagayan Valley'),(41,'Bayombong','City','Cagayan Valley'),(42,'Calapan','City','MIMAROPA'),(43,'Puerto Princesa','City','MIMAROPA'),(44,'Boac','City','MIMAROPA'),(45,'Naga City','City','Bicol Region'),(46,'Legazpi City','City','Bicol Region'),(47,'Iriga City','City','Bicol Region'),(48,'Sorsogon City','City','Bicol Region'),(49,'Daet','City','Bicol Region'),(50,'Cubao Bus Terminal','Transport Hub','NCR'),(51,'PITX (Parañaque Integrated Terminal Exchange)','Transport Hub','NCR'),(52,'NAIA (Ninoy Aquino International Airport)','Transport Hub','NCR'),(53,'Clark International Airport','Transport Hub','Central Luzon'),(54,'Batangas Port','Transport Hub','CALABARZON'),(55,'Poro Point Seaport','Transport Hub','Ilocos Region'),(56,'Balintawak Exit','Expressway Exit','NLEX'),(57,'Bocaue Exit','Expressway Exit','NLEX'),(58,'San Fernando Exit','Expressway Exit','NLEX'),(59,'Tarlac Exit','Expressway Exit','SCTEX'),(60,'TPLEX Rosario Exit','Expressway Exit','TPLEX'),(61,'SLEX-Alabang Exit','Expressway Exit','SLEX'),(62,'SLEX-Calamba Exit','Expressway Exit','SLEX'),(63,'STAR Tollway Lipa Exit','Expressway Exit','STAR Tollway'),(64,'Batangas Port Exit','Expressway Exit','STAR Tollway');
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stopoverlocations`
--

DROP TABLE IF EXISTS `stopoverlocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stopoverlocations` (
  `stopover_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` enum('Mall','Fast Food','Gas Station','Rest Area') NOT NULL,
  `city` varchar(100) NOT NULL,
  PRIMARY KEY (`stopover_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stopoverlocations`
--

LOCK TABLES `stopoverlocations` WRITE;
/*!40000 ALTER TABLE `stopoverlocations` DISABLE KEYS */;
INSERT INTO `stopoverlocations` VALUES (1,'SM North EDSA','Mall','Quezon City'),(2,'SM Mall of Asia','Mall','Pasay'),(3,'SM Megamall','Mall','Mandaluyong'),(4,'Ayala Malls Manila Bay','Mall','Parañaque'),(5,'Robinsons Place Manila','Mall','Manila'),(6,'Uptown Mall BGC','Mall','Taguig'),(7,'Festival Mall','Mall','Muntinlupa'),(8,'SM City Pampanga','Mall','San Fernando'),(9,'Vista Mall Santa Rosa','Mall','Laguna'),(10,'Jollibee Taft','Fast Food','Manila'),(11,'McDonald’s EDSA Boni','Fast Food','Mandaluyong'),(12,'KFC Quezon Ave','Fast Food','Quezon City'),(13,'Chowking Alabang','Fast Food','Muntinlupa'),(14,'Greenwich SM Fairview','Fast Food','Quezon City'),(15,'Mang Inasal Pasay Road','Fast Food','Makati'),(16,'Burger King Southwoods','Fast Food','Laguna'),(17,'Shakey’s Roxas Boulevard','Fast Food','Manila'),(18,'Shell Gas Station NLEX','Gas Station','Bulacan'),(19,'Petron South Luzon Expressway','Gas Station','Laguna'),(20,'Caltex SLEX Mamplasan','Gas Station','Laguna'),(21,'Shell Magallanes','Gas Station','Makati'),(22,'Total Commonwealth','Gas Station','Quezon City'),(23,'Seaoil Marcos Highway','Gas Station','Antipolo'),(24,'Petron TPLEX','Gas Station','Tarlac'),(25,'Shell Dau Exit','Gas Station','Pampanga'),(26,'Starbucks Tagaytay','Rest Area','Tagaytay'),(27,'7-Eleven San Fernando Exit','Rest Area','Pampanga'),(28,'Caltex Star Tollway Rest Area','Rest Area','Batangas'),(29,'NLEX Shell of Asia','Rest Area','Bulacan'),(30,'SLEX Southwoods Rest Stop','Rest Area','Laguna'),(31,'Coffee Bean Ayala Malls Solenad','Rest Area','Laguna'),(32,'McCafé NLEX Bocaue','Rest Area','Bulacan');
/*!40000 ALTER TABLE `stopoverlocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wazeaccounts`
--

DROP TABLE IF EXISTS `wazeaccounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wazeaccounts` (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `passwords` varchar(50) NOT NULL,
  `birthdate` date NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `role` enum('user','admin') DEFAULT 'user',
  `profile_picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account_id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wazeaccounts`
--

LOCK TABLES `wazeaccounts` WRITE;
/*!40000 ALTER TABLE `wazeaccounts` DISABLE KEYS */;
INSERT INTO `wazeaccounts` VALUES (1,'cali@yahoo.com','calx_','cal','2004-10-11','calix','lee','2025-03-03 19:55:12','user','file:/D:/VSCode/FinalProjectInfoMan/src/res/PFP/PFP/1.jpg'),(2,'jeri@yahoo.com','Joy','joy','2001-12-05','Dy Joy','Fajardo','2025-03-02 13:25:29','user','file:/D:/VSCode/FinalProjectInfoMan/src/res/PFP/PFP/2.jpg'),(3,'zryDevera@gmail.com','ZryvsdgDv','quickPass2','2004-12-16','Zry','Devera','2025-03-01 00:39:35','user',NULL),(4,'allivesagas@gmail.com','Al17_','simplePwd3','1999-08-17','Alli','Vesagas','2025-02-27 15:41:40','user',NULL),(5,'DenJose12@gmail.com','DJA04','securePass4','1986-01-04','Denver Jose','Alfonso','2025-02-27 15:44:16','user',NULL),(6,'mark.tan21@gmail.com','marky21','securePass12','2002-03-14','Mark','Tan','2025-02-27 14:53:57','user',NULL),(8,'matthew.perez34@gmail.com','mattP34','perezMatt34','2000-05-30','Matthew','Perez','2025-03-02 10:56:34','user',NULL),(9,'sarah_lee87@gmail.com','slee87','leeSarah87','1987-09-10','Sarah','Lee',NULL,'user',NULL),(10,'daniel.rodriguez02@gmail.com','drod02','danielPass02','2002-06-25','Daniel','Rodriguez',NULL,'user',NULL),(11,'olivia.martinez95@gmail.com','elli','martinezOl95','1995-11-19','Olivia','Martinez',NULL,'user',NULL),(12,'ryan_cooper88@gmail.com','rycoop88','ryanC88pass','1988-02-14','Ryan','Cooper',NULL,'user',NULL),(13,'amanda_wilson90@gmail.com','amwil90','wilsonAmanda90','1990-12-07','Amanda','Wilson',NULL,'user',NULL),(14,'jacob.mendoza75@gmail.com','jmendoza75','jacobPass75','1975-08-28','Jacob','Mendoza',NULL,'user',NULL),(15,'emily_chavez93@gmail.com','emcha93','chavezEmily93','1993-06-09','Emily','Chavez','2025-03-03 18:49:38','user',NULL),(16,'brian_hall80@gmail.com','bhall80','hallBrian80','1980-10-21','Brian','Hall',NULL,'user',NULL),(17,'rebecca_smith01@gmail.com','rebSmith01','smithReb01','2001-07-09','Rebecca','Smith',NULL,'user',NULL),(18,'nicholas.adams77@gmail.com','nickAd77','adamsNick77','1977-01-05','Nicholas','Adams',NULL,'user',NULL),(19,'katherine.morris85@gmail.com','katMor85','morrisKat85','1985-05-15','Katherine','Morris',NULL,'user',NULL),(20,'david_hernandez89@gmail.com','dhern89','davidH89pass','1989-03-18','David','Hernandez',NULL,'user',NULL),(21,'hannah_nguyen92@gmail.com','hnguyen92','nguyenHan92','1992-06-08','Hannah','Nguyen','2025-02-27 15:36:04','user',NULL),(22,'chris_garcia96@gmail.com','cgarcia96','chrisG96pass','1996-09-22','Chris','Garcia',NULL,'user',NULL),(23,'lauren_evans78@gmail.com','laurev78','evansLauren78','1978-12-30','Lauren','Evans','2025-02-27 15:34:23','user',NULL),(24,'joshua_thomas03@gmail.com','jthomas03','thomasJosh03','2003-02-27','Joshua','Thomas',NULL,'user',NULL),(25,'victoria_clark99@gmail.com','vicClark99','clarkVic99','1999-11-13','Victoria','Clark',NULL,'user',NULL),(26,'benjamin_ortiz82@gmail.com','benOrt82','ortizBen82','1982-07-17','Benjamin','Ortiz',NULL,'user',NULL),(27,'megan_wright97@gmail.com','mwright97','wrightMeg97','1997-04-25','Megan','Wright',NULL,'user',NULL),(28,'tyler_harris76@gmail.com','tyharris76','harrisTy76','1976-10-02','Tyler','Harris',NULL,'user',NULL),(29,'jasmine_lopez91@gmail.com','jlopez91','lopezJas91','1991-12-14','Jasmine','Lopez',NULL,'user',NULL),(30,'aaron_scott94@gmail.com','ascott94','scottAar94','1994-08-09','Aaron','Scott',NULL,'user',NULL),(31,'melissa_adams83@gmail.com','melAdams83','adamsMel83','1983-05-20','Melissa','Adams',NULL,'user',NULL),(32,'steven_mitchell86@gmail.com','smitchell86','mitchellSteve86','1986-03-31','Steven','Mitchell',NULL,'user',NULL),(33,'rachel_hill98@gmail.com','rhill98','hillRachel98','1998-07-26','Rachel','Hill',NULL,'user',NULL),(34,'kevin_carter79@gmail.com','kcarter79','huie','1979-11-05','Kali','Nene',NULL,'user',NULL),(35,'natalie_roberts81@gmail.com','nroberts81','robertsNat81','1981-06-18','Natalie','Roberts',NULL,'user',NULL),(36,'admin@gmail.com','admin','admin1','2000-01-21','System','Administrator','2025-03-03 18:41:14','admin','file:/D:/VSCode/FinalProjectInfoMan/src/res/PFP/PFP/1.jpg'),(43,'hey@gmail.com','hey','no','2016-02-12','hey','yes',NULL,'user',NULL),(45,'cln@gmail.com','alessandra','you','2019-01-31','cn','hy',NULL,'user',NULL),(48,'yovi@gmail.com','yumi','yovs','2008-02-28','yovs','min',NULL,'user',NULL),(50,'bada@gmail.com','bada','bada','2009-12-18','bada','carreon',NULL,'user',NULL),(52,'mimi@gmail.com','mimi','mimi','2029-03-08','MIMI','MIMI','2025-03-03 18:54:37','user',NULL),(53,'kimasdj@gmail.com','kim','kim','2025-04-23','kim','kim',NULL,'user',NULL),(54,'df@gmail.com','df','df','2025-02-25','df','df',NULL,'user',NULL),(55,'sdf@yahoo.com','dfs','df','2025-03-07','df','df',NULL,'user',NULL);
/*!40000 ALTER TABLE `wazeaccounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wazealtroutes`
--

DROP TABLE IF EXISTS `wazealtroutes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wazealtroutes` (
  `alt_route_id` varchar(10) NOT NULL,
  `route_id` varchar(35) DEFAULT NULL,
  `alt_routes` varchar(150) DEFAULT NULL,
  `stop_overloc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`alt_route_id`),
  KEY `route_id` (`route_id`),
  CONSTRAINT `wazealtroutes_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `wazeroutes` (`route_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wazealtroutes`
--

LOCK TABLES `wazealtroutes` WRITE;
/*!40000 ALTER TABLE `wazealtroutes` DISABLE KEYS */;
INSERT INTO `wazealtroutes` VALUES ('ALT-004','WZE-RTS-20241213-004','Via Roxas Blvd','Mall of Asia, Pasay'),('ALT-005','WZE-RTS-20241213-005','Via C5 Extension','C5 Extension, Las Piñas'),('ALT-006','WZE-RTS-20241213-006','Via Alabang-Zapote Road','Muntinlupa City Hall, Muntinlupa'),('ALT-007','WZE-RTS-20241213-007','Via Aurora Blvd','Katipunan, Quezon City'),('ALT-008','WZE-RTS-20241213-008','Via E. Rodriguez Sr. Ave','New Manila, Quezon City'),('ALT-009','WZE-RTS-20241213-009','Via Chino Roces Ave','Makati Cinema Square, Makati'),('ALT-010','WZE-RTS-20241213-010','Via Commonwealth Ave','SM Mall of Asia'),('ALT-011','WZE-RTS-20241213-011','Via Quirino Highway','Bantay, Ilocos Sur'),('ALT-012','WZE-RTS-20241213-012','Via SCTEX','San Fernando, Pampanga'),('ALT-015','WZE-RTS-20241213-015','Via STAR Tollway','Lipa City, Batangas'),('ALT-016','WZE-RTS-20241213-016','Via Santa Rosa-Tagaytay Road','Santa Rosa, Laguna'),('ALT-017','WZE-RTS-20241213-017','Via Maharlika Highway','Naga City, Camarines Sur'),('ALT-018','WZE-RTS-20241213-018','Via Legazpi City Coastal Road','Legazpi City, Albay'),('ALT-019','WZE-RTS-20241213-019','Via Gapan-Olongapo Road','Vista Mall Santa Rosa'),('ALT-020','WZE-RTS-20241213-020','Via MacArthur Highway','Malolos, Bulacan'),('ALT-024','WZE-RTS-20250223-003',NULL,'No Stopover'),('ALT-025','WZE-RTS-20250223-004',NULL,'Via Daet'),('ALT-028','WZE-RTS-20250223-007','Via Cabanatuan','SM North EDSA'),('ALT-029','WZE-RTS-20250223-008','Via Santiago','No Stopover'),('ALT-031','WZE-RTS-20250224-001','Via Puerto Princesa','No Stopover'),('ALT-032','WZE-RTS-20250224-002','Via SLEX-Calamba Exit','Burger King Southwoods'),('ALT-034','WZE-RTS-20250225-002','Via Bocaue Exit','McCafé NLEX Bocaue'),('ALT-035','WZE-RTS-20250228-001','Via Bocaue Exit','Uptown Mall BGC'),('ALT-036','WZE-RTS-20250228-002','Via Tuguegarao','7-Eleven San Fernando Exit'),('ALT-037','WZE-RTS-20250228-003','Via Balintawak Exit','No Stopover'),('ALT-038','WZE-RTS-20250228-004','Via Naga City','SM North EDSA'),('ALT-040','WZE-RTS-20250228-006','Via Vigan','No Stopover'),('ALT-041','WZE-RTS-20250228-007','Via Angeles City','SM Mall of Asia'),('ALT-042','WZE-RTS-20250301-001','Via Ilagan','Ayala Malls Manila Bay'),('ALT-043','WZE-RTS-20250301-002','Via Tagaytay','No Stopover'),('ALT-044','WZE-RTS-20250301-003','Via SLEX-Alabang Exit','Shell Gas Station NLEX'),('ALT-045','WZE-RTS-20250301-004','Via San Pablo City','SM North EDSA'),('ALT-046','WZE-RTS-20250301-005','Via Calamba','SM Mall of Asia'),('ALT-048','WZE-RTS-20250301-007','Via Tarlac Exit','SM North EDSA'),('ALT-049','WZE-RTS-20250302-001','Via PITX (Parañaque Integrated Terminal Exchange)','SM Mall of Asia'),('ALT-050','WZE-RTS-20250302-002','Via Batangas City','Vista Mall Santa Rosa'),('ALT-051','WZE-RTS-20250302-003','Via Naga City','Shell Gas Station NLEX'),('ALT-052','WZE-RTS-20250302-004','Via Poro Point Seaport','SM Mall of Asia'),('ALT-053','WZE-RTS-20250302-005','Via Clark International Airport','SM Mall of Asia'),('ALT-055','WZE-RTS-20250302-007','Via PITX (Parañaque Integrated Terminal Exchange)','Shakey’s Roxas Boulevard'),('ALT-057','WZE-RTS-20250302-009','Via San Fernando','Ayala Malls Manila Bay'),('ALT-059','WZE-RTS-20250303-001','Via Lipa City','No Stopover'),('ALT-060','WZE-RTS-20250303-002','Via Balanga','No Stopover'),('ALT-063','WZE-RTS-20250303-005','Via Iriga City','Uptown Mall BGC'),('ALT-064','WZE-RTS-20250303-006','Via Parañaque','SM Megamall'),('ALT-065','WZE-RTS-20250303-007','Via STAR Tollway Lipa Exit','SM North EDSA'),('ALT-066','WZE-RTS-20250303-008','Via Taguig','SM North EDSA'),('ALT-067','WZE-RTS-20250303-009','Via Meycauayan','No Stopover'),('ALT-068','WZE-RTS-20250303-010','Via Santiago','SM Mall of Asia'),('ALT-069','WZE-RTS-20250303-011','Via Muntinlupa','SM City Pampanga');
/*!40000 ALTER TABLE `wazealtroutes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wazeplanneddrives`
--

DROP TABLE IF EXISTS `wazeplanneddrives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wazeplanneddrives` (
  `planneddrive_id` int NOT NULL AUTO_INCREMENT,
  `account_id` int DEFAULT NULL,
  `planned_date` date DEFAULT NULL,
  `planned_time` time DEFAULT NULL,
  `start_loc` varchar(200) NOT NULL,
  `pinned_loc` varchar(200) NOT NULL,
  PRIMARY KEY (`planneddrive_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `wazeplanneddrives_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `wazeaccounts` (`account_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wazeplanneddrives`
--

LOCK TABLES `wazeplanneddrives` WRITE;
/*!40000 ALTER TABLE `wazeplanneddrives` DISABLE KEYS */;
INSERT INTO `wazeplanneddrives` VALUES (3,3,'2025-03-07','09:30:00','Balanga','Bayombong'),(4,4,'2025-02-26','07:00:00','Caloocan','Navotas'),(5,5,'2025-02-26','11:30:00','Batangas City','Juan'),(6,6,'2025-02-27','13:20:00','Valenzuela','Malabon'),(8,8,'2025-03-02','15:45:00','Manila','Pasay'),(9,9,'2025-03-03','16:10:00','Makati','Alabang'),(10,10,'2025-03-04','17:25:00','Taguig','BGC'),(11,11,'2025-03-05','06:50:00','Parañaque','Las Piñas'),(12,12,'2025-03-06','07:30:00','Muntinlupa','Laguna'),(13,13,'2025-03-07','18:00:00','Ortigas','Cubao'),(14,14,'2025-03-08','19:15:00','Antipolo','Marikina'),(15,15,'2025-03-09','20:40:00','Cavite','Batangas'),(16,16,'2025-03-10','21:10:00','Bulacan','Pampanga'),(17,17,'2025-03-11','22:00:00','Quezon City','Makati'),(18,18,'2025-03-12','23:30:00','Manila','Cavite'),(19,19,'2025-03-13','05:20:00','Pasay','Clark'),(20,20,'2025-03-14','12:10:00','BGC','NAIA'),(24,43,'2025-02-12','01:45:00','Manila','Pasig'),(25,31,'2025-02-28','07:00:00','Dasmariñas','Boac'),(29,1,'2025-03-01','09:45:00','Bayombong','Angeles City'),(32,NULL,'2025-03-07','01:00:00','Manila','Mandaluyong'),(38,NULL,'2025-04-05','01:30:00','Makati','Angeles City'),(39,NULL,'2025-04-26','09:30:00','Manila','Calapan'),(42,8,'2025-03-21','09:45:00','Antipolo','Batangas Port'),(49,2,'2025-03-27','01:15:00','Antipolo','Malolos'),(52,24,'2025-02-28','08:55:00','Antipolo','Batangas Port Exit'),(53,2,'2025-03-20','09:48:00','Balintawak Exit','Boac'),(54,2,'2025-03-14','02:00:00','Pasig','Pasig'),(55,6,'2025-02-24','13:45:00','Antipolo','Boac'),(56,2,'2025-02-25','01:45:00','Parañaque','Mandaluyong'),(57,2,'2025-02-26','01:00:00','Taguig','Taguig'),(58,2,'2025-02-26','01:15:00','Taguig','Taguig'),(59,2,'2025-02-24','00:45:00','Taguig','Taguig'),(60,2,'2024-10-28','00:30:00','Manila','Makati'),(61,2,'2025-02-24','00:45:00','Taguig','Taguig'),(62,2,'2024-10-15','01:00:00','Pasig','Pasig'),(63,2,'2024-12-02','00:30:00','Taguig','Muntinlupa'),(64,4,'2025-03-19','09:44:00','Antipolo','Batangas Port Exit'),(65,2,'2025-03-06','00:45:00','Pasig','Taguig'),(66,1,'2026-02-21','01:30:00','Quezon City','Parañaque'),(67,1,'2025-03-30','09:45:00','Makati','Iriga City'),(68,1,'2025-03-05','00:15:00','Quezon City','Pasay'),(70,1,'2025-03-22','00:15:00','Pasig','Taguig'),(71,1,'2025-03-22','00:15:00','Pasig','Taguig'),(72,1,'2025-03-22','00:15:00','Pasig','Taguig'),(73,1,'2025-03-05','08:34:00','Balintawak Exit','Antipolo'),(74,1,'2025-03-05','08:34:00','Batangas Port','Batangas Port'),(75,3,'2025-03-07','09:30:00','Balanga','Antipolo'),(76,1,'2025-03-31','09:38:00','Makati','Las Piñas'),(79,11,'2025-04-16','09:09:00','Antipolo','Balintawak Exit'),(80,1,'2026-02-20','01:00:00','Taguig','Manila'),(81,1,'2025-03-26','12:45:00','Quezon City','Pasig'),(82,1,'2025-03-29','11:30:00','Parañaque','Lucena City');
/*!40000 ALTER TABLE `wazeplanneddrives` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wazeroutes`
--

DROP TABLE IF EXISTS `wazeroutes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wazeroutes` (
  `route_id` varchar(35) NOT NULL,
  `account_id` int DEFAULT NULL,
  `route_startpoint` varchar(200) DEFAULT NULL,
  `route_endpoint` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`route_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `wazeroutes_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `wazeaccounts` (`account_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wazeroutes`
--

LOCK TABLES `wazeroutes` WRITE;
/*!40000 ALTER TABLE `wazeroutes` DISABLE KEYS */;
INSERT INTO `wazeroutes` VALUES ('WZE-RTS-20241213-004',2,'Antipolo','Batangas City'),('WZE-RTS-20241213-005',3,'Caloocan','Las Piñas'),('WZE-RTS-20241213-006',3,'Valenzuela','Muntinlupa'),('WZE-RTS-20241213-007',4,'Bayombong','Marikina'),('WZE-RTS-20241213-008',4,'Malabon','San Juan'),('WZE-RTS-20241213-009',5,'Makati','Manila'),('WZE-RTS-20241213-010',5,'Taguig','Quezon City'),('WZE-RTS-20241213-011',6,'Baguio','Vigan'),('WZE-RTS-20241213-012',6,'Tarlac','Pampanga'),('WZE-RTS-20241213-015',8,'Alaminos','Batangas'),('WZE-RTS-20241213-016',8,'Cavite','Laguna'),('WZE-RTS-20241213-017',9,'Quezon','Camarines Sur'),('WZE-RTS-20241213-018',9,'Sorsogon','Albay'),('WZE-RTS-20241213-019',10,'Batangas City','Boac'),('WZE-RTS-20241213-020',10,'Tarlac','Bulacan'),('WZE-RTS-20250223-003',20,'Angeles City','Santiago'),('WZE-RTS-20250223-004',3,'Antipolo','Las Piñas'),('WZE-RTS-20250223-007',25,'Pasay','Nigfg'),('WZE-RTS-20250223-008',4,'Boac','Lipa City'),('WZE-RTS-20250224-001',13,'Antipolo','Angeles City'),('WZE-RTS-20250224-002',8,'Batangas City','Angeles City'),('WZE-RTS-20250225-002',8,'Batangas Port','Antipolo'),('WZE-RTS-20250228-001',1,'Angeles City','Balanga'),('WZE-RTS-20250228-002',1,'Pasig','Mandaluyong'),('WZE-RTS-20250228-003',1,'Makati','Batangas Port'),('WZE-RTS-20250228-004',1,'Calamba','Tarlac City'),('WZE-RTS-20250228-006',1,'Quezon City','Angeles City'),('WZE-RTS-20250228-007',1,'Manila','Urdaneta'),('WZE-RTS-20250301-001',2,'Pasig','Batangas City'),('WZE-RTS-20250301-002',2,'Imus','Batangas Port'),('WZE-RTS-20250301-003',2,'Makati','Balanga'),('WZE-RTS-20250301-004',2,'Makati','Calamba'),('WZE-RTS-20250301-005',5,'Las Piñas','Bayombong'),('WZE-RTS-20250301-007',2,'Pasay','Taguig'),('WZE-RTS-20250302-001',2,'Quezon City','Pasig'),('WZE-RTS-20250302-002',5,'Angeles City','Daet'),('WZE-RTS-20250302-003',1,'Pasig','Antipolo'),('WZE-RTS-20250302-004',2,'Quezon City','Parañaque'),('WZE-RTS-20250302-005',1,'Pasig','Mandaluyong'),('WZE-RTS-20250302-007',1,'Angeles City','Parañaque'),('WZE-RTS-20250302-009',1,'Balanga','Batangas City'),('WZE-RTS-20250303-001',2,'Batangas City','Pasay'),('WZE-RTS-20250303-002',2,'Batangas City','Pasay'),('WZE-RTS-20250303-005',1,'Balanga','Bocaue Exit'),('WZE-RTS-20250303-006',15,'Quezon City','Pasay'),('WZE-RTS-20250303-007',52,'Quezon City','Mandaluyong'),('WZE-RTS-20250303-008',52,'Quezon City','Mandaluyong'),('WZE-RTS-20250303-009',1,'Taguig','Imus'),('WZE-RTS-20250303-010',1,'Pasig','Meycauayan'),('WZE-RTS-20250303-011',1,'Manila','Tarlac City');
/*!40000 ALTER TABLE `wazeroutes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wazetraveltime`
--

DROP TABLE IF EXISTS `wazetraveltime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wazetraveltime` (
  `traveltime_id` varchar(10) NOT NULL,
  `route_id` varchar(25) DEFAULT NULL,
  `est_time` time DEFAULT NULL,
  PRIMARY KEY (`traveltime_id`),
  KEY `route_id` (`route_id`),
  CONSTRAINT `wazetraveltime_ibfk_1` FOREIGN KEY (`route_id`) REFERENCES `wazeroutes` (`route_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wazetraveltime`
--

LOCK TABLES `wazetraveltime` WRITE;
/*!40000 ALTER TABLE `wazetraveltime` DISABLE KEYS */;
INSERT INTO `wazetraveltime` VALUES ('T_T-021','WZE-RTS-20250224-002','00:44:00'),('T_T-044','WZE-RTS-20250303-002','01:59:00'),('T_T-128','WZE-RTS-20250302-009','00:17:00'),('T_T-170','WZE-RTS-20250223-004','02:24:00'),('T_T-202','WZE-RTS-20250224-001','00:59:00'),('T_T-214','WZE-RTS-20250225-002','02:52:00'),('T_T-224','WZE-RTS-20250303-001','01:40:00'),('T_T-273','WZE-RTS-20250302-004','01:24:00'),('T_T-300','WZE-RTS-20250302-007','02:58:00'),('T_T-345','WZE-RTS-20250303-011','03:49:00'),('T_T-417','WZE-RTS-20250301-007','03:32:00'),('T_T-453','WZE-RTS-20250228-002','01:19:00'),('T_T-463','WZE-RTS-20250228-004','02:42:00'),('T_T-486','WZE-RTS-20250223-008','03:43:00'),('T_T-489','WZE-RTS-20250223-007','02:16:00'),('T_T-493','WZE-RTS-20250303-007','04:57:00'),('T_T-528','WZE-RTS-20250302-002','04:43:00'),('T_T-581','WZE-RTS-20250228-006','03:58:00'),('T_T-589','WZE-RTS-20250303-009','00:28:00'),('T_T-593','WZE-RTS-20250302-001','01:34:00'),('T_T-597','WZE-RTS-20250228-003','03:29:00'),('T_T-629','WZE-RTS-20250302-005','01:50:00'),('T_T-633','WZE-RTS-20250301-001','00:29:00'),('T_T-635','WZE-RTS-20250302-003','02:34:00'),('T_T-748','WZE-RTS-20250228-001','03:25:00'),('T_T-771','WZE-RTS-20250303-006','03:44:00'),('T_T-796','WZE-RTS-20250301-002','02:31:00'),('T_T-810','WZE-RTS-20250301-004','04:58:00'),('T_T-880','WZE-RTS-20250303-005','03:27:00'),('T_T-888','WZE-RTS-20250228-007','01:55:00'),('T_T-910','WZE-RTS-20250301-005','04:50:00'),('T_T-920','WZE-RTS-20250301-003','03:21:00'),('T_T-925','WZE-RTS-20250303-008','02:41:00'),('T_T-939','WZE-RTS-20250303-010','04:16:00'),('T_T-991','WZE-RTS-20250223-003','04:20:00'),('T_T004','WZE-RTS-20241213-004','00:22:00'),('T_T005','WZE-RTS-20241213-005','00:40:00'),('T_T006','WZE-RTS-20241213-006','00:50:00'),('T_T007','WZE-RTS-20241213-007','00:28:00'),('T_T008','WZE-RTS-20241213-008','00:19:00'),('T_T009','WZE-RTS-20241213-009','00:27:00'),('T_T010','WZE-RTS-20241213-010','00:30:00'),('T_T011','WZE-RTS-20241213-011','03:15:00'),('T_T012','WZE-RTS-20241213-012','01:10:00'),('T_T015','WZE-RTS-20241213-015','02:00:00'),('T_T016','WZE-RTS-20241213-016','01:35:00'),('T_T017','WZE-RTS-20241213-017','05:10:00'),('T_T018','WZE-RTS-20241213-018','02:50:00'),('T_T019','WZE-RTS-20241213-019','01:30:00'),('T_T020','WZE-RTS-20241213-020','00:55:00');
/*!40000 ALTER TABLE `wazetraveltime` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-03 20:11:14
