-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: notes
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `note_tag`
--

DROP TABLE IF EXISTS `note_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `note_tag` (
  `note_id` int NOT NULL,
  `tag_id` int NOT NULL,
  PRIMARY KEY (`note_id`,`tag_id`),
  KEY `tag_id` (`tag_id`),
  CONSTRAINT `note_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `note_tag`
--

LOCK TABLES `note_tag` WRITE;
/*!40000 ALTER TABLE `note_tag` DISABLE KEYS */;
INSERT INTO `note_tag` VALUES (31,2),(245,19),(256,19),(31,31),(41,39),(41,40),(42,41),(42,42),(42,43),(88,45),(88,46),(88,47),(88,48),(1,49),(4,49),(7,49),(9,49),(1,50),(4,50),(7,50),(217,50),(2,51),(2,52),(6,52),(9,52),(10,52),(3,53),(8,53),(3,54),(8,54),(4,55),(5,56),(10,56),(5,57),(8,57),(10,57),(221,57),(6,58),(217,70),(217,71),(217,72),(218,73),(218,74),(218,75),(218,76),(219,76),(218,77),(218,78),(237,78),(255,78),(219,79),(219,80),(219,81),(219,82),(219,83),(259,83),(219,84),(221,86),(221,88),(221,89),(224,90),(224,91),(224,92),(224,93),(225,94),(225,95),(225,96),(225,97),(226,99),(226,100),(226,101),(226,102),(226,103),(226,104),(237,105),(237,106),(237,108),(245,109),(255,109),(245,110),(255,112),(256,112),(256,117),(259,118),(259,119),(259,121),(265,122),(266,123),(266,124),(266,125),(266,126),(267,127),(267,128),(267,129),(267,130),(256,131),(256,132);
/*!40000 ALTER TABLE `note_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `title` varchar(255) NOT NULL,
  `lastEdited` datetime DEFAULT CURRENT_TIMESTAMP,
  `isArchived` tinyint(1) DEFAULT '0',
  `content` text,
  `id` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `naew` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=308 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES ('React Performance Optimization','2025-04-25 18:56:12',0,'Key performance optimization techniques:\n\n1. Code Splitting\n- Use React.lazy() for route-based splitting\n- Implement dynamic imports for heavy components\n\n2. Memoization\n- useMemo for expensive calculations\n- useCallback for function props\n- React.memo for component optimization\n\n3. Virtual List Implementation\n- Use react-window for long lists\n- Implement infinite scrolling\n\nTODO: Benchmark current application and identify bottlenecks',217,39,0),('Japan Travel Planning','2025-04-25 18:56:30',0,'Japan Trip Planning - Spring 2025\n\nItinerary Draft:\nWeek 1: Tokyo\n- Shibuya and Harajuku\n- TeamLab Digital Art Museum\n- Day trip to Mount Fuji\n\nWeek 2: Kyoto & Osaka\n- Traditional temples\n- Cherry blossom viewing\n- Food tour in Osaka\n\nBudget: $3000\nAccommodation: Mix of hotels and traditional ryokans\nJR Pass: 14 days\n\nTODO: Book flights 6 months in advance',218,39,0),('Favorite Pasta Recipes','2025-04-25 18:56:53',0,'Classic Italian Recipes:\n\n1. Carbonara\n- Eggs, pecorino, guanciale\n- No cream ever!\n- Save pasta water\n\n2. Cacio e Pepe\n- Pecorino Romano\n- Fresh black pepper\n- Technique is crucial\n\n3. Arrabbiata\n- San Marzano tomatoes\n- Fresh garlic\n- Red pepper flakes\n\nNote: Always use high-quality ingredients',219,39,0),('TypeScript Migration Guide','2024-10-26 09:20:00',1,'Project migration steps:\n\n1. Initial Setup\n- Install TypeScript dependencies\n- Configure tsconfig.json\n- Set up build pipeline\n\n2. Migration Strategy\n- Start with newer modules\n- Add type definitions gradually\n- Use \"any\" temporarily for complex cases\n\n3. Testing Approach\n- Update test configuration\n- Add type testing\n- Validate build process\n\nDeadline: End of Q4 2024',220,40,0),('Weekly Workout Plan','2025-04-25 18:57:09',0,'Monday: Upper Body\n- Bench Press 4x8\n- Rows 4x10\n- Shoulder Press 3x12\n- Pull-ups 3 sets\n\nWednesday: Lower Body\n- Squats 4x8\n- Romanian Deadlifts 3x10\n- Lunges 3x12 each\n- Calf Raises 4x15\n\nFriday: Full Body\n- Deadlifts 3x5\n- Push-ups 3x12\n- Leg Press 3x12\n- Core Work\n\nCardio: Tuesday/Thursday - 30 min run',221,40,0),('Gift Ideas','2024-10-20 11:30:15',1,'Birthday and Holiday Gift List:\n\nMom:\n- Cooking class subscription\n- Kindle Paperwhite\n- Spa day package\n\nDad:\n- Golf lessons\n- Wireless earbuds\n- BBQ accessories\n\nSister:\n- Art supplies set\n- Yoga mat kit\n- Coffee subscription\n\nBudget per person: $150-200',222,40,0),('React Component Library','2024-10-15 14:23:45',1,'Custom Component Library Structure:\n\n1. Basic Components\n- Button\n- Input\n- Card\n- Modal\n\n2. Form Components\n- FormField\n- Select\n- Checkbox\n- RadioGroup\n\n3. Layout Components\n- Container\n- Grid\n- Flex\n\nAll components need:\n- TypeScript definitions\n- Unit tests\n- Storybook documentation\n- Accessibility support',223,40,0),('Meal Prep Ideas','2025-04-25 18:57:21',0,'Weekly Meal Prep Plan:\n\nBreakfast Options:\n- Overnight oats\n- Egg muffins\n- Smoothie packs\n\nLunch Containers:\n- Greek chicken bowl\n- Buddha bowls\n- Tuna pasta salad\n\nSnacks:\n- Cut vegetables\n- Mixed nuts\n- Greek yogurt parfait\n\nPrep Time: Sunday 2-4pm\nStorage: Glass containers\nLasts: 4-5 days',224,41,0),('Reading List','2025-04-25 22:22:29',0,'Current Reading Queue:\n\n1. Technical Books\n- Clean Architecture by Robert Martin\n- Designing Data-Intensive Applications\n- TypeScript Design Patterns\n\n2. Personal Development\n- Deep Work by Cal Newport\n- Atomic Habits\n- The Psychology of Money\n\nCurrently Reading: Clean Architecture\nNext Up: Deep Work\n\nGoal: One book per month',225,41,0),('Fitness Goals 2025','2025-04-25 18:57:53',0,'2025 Fitness Objectives:\n\n1. Strength Goals\n- Bench press: 225 lbs\n- Squat: 315 lbs\n- Deadlift: 405 lbs\n\n2. Cardio Goals\n- Run half marathon\n- 5k under 25 minutes\n\n3. Habits\n- Gym 4x per week\n- Daily 10k steps\n- Sleep 7+ hours\n\nTrack all workouts in Strong app',226,41,0),('Database Modification Software','2025-04-25 18:58:54',0,'I need to be better at PHP & MYSQL Cuz it turned out to be very enjoyable \n',237,41,0),('Its a very Res Thanks ','2025-04-25 22:22:02',0,'ITS A PROGAMMING A',244,39,0),('New Note Ya Rashwan','2025-04-26 07:55:31',0,'its a new day and I\'m writing and new note....',245,39,0),('untitled_2','2025-05-02 11:01:06',0,NULL,246,1,1),('THIS NOTE for user ALi','2025-05-13 09:47:45',0,NULL,254,40,0),('Rashwan','2025-05-20 18:07:50',0,'This is first note for Rashwan fghfh  fghfgh',256,39,0),('untitled_2','2025-05-13 10:37:05',0,NULL,257,NULL,1),('untitled_2','2025-05-13 10:37:06',0,NULL,258,NULL,1),('First Note For islam','2025-05-13 10:40:55',0,'This is a fantastic milestone to do that project in that way',259,41,0),('untitled_2','2025-05-13 10:41:02',0,NULL,260,41,0),('untitled_3','2025-05-13 10:40:56',0,NULL,261,41,1),('untitled_4','2025-05-13 10:40:57',0,NULL,262,41,1),('untitled_3','2025-05-13 11:19:38',0,NULL,264,1,1),('Note For Smair','2025-05-13 14:15:09',0,'This is for samir and samir only\n\nI\'d be very carefull about who I talk about that, because the person who wrote that is dangroius, and this bottom-down oxford cloth pyscho might just snap and stalk from office to office with Armalite AR-10 gas powered carbine semi-automatic weapon pumping round after round into colleagues and coworkers',265,43,0),('New NOTE for finishing that App','2025-05-13 15:25:19',0,'I\'m try to follow rest approach in creating the api endpoint',266,39,0),('This one is gonna be archieved!!','2025-05-13 15:26:17',1,'I love mechanical engineering and engineering in general!!',267,39,0),('React Component Librarya','2024-10-15 14:23:45',1,'Custom Component Library Structure:\n\n1. Basic Components\n- Button\n- Input\n- Card\n- Modal\n\n2. Form Components\n- FormField\n- Select\n- Checkbox\n- RadioGroup\n\n3. Layout Components\n- Container\n- Grid\n- Flex\n\nAll components need:\n- TypeScript definitions\n- Unit tests\n- Storybook documentation\n- Accessibility support',292,1,0),('Gift Ideass','2024-10-20 11:30:15',1,'Birthday and Holiday Gift List:\n\nMom:\n- Cooking class subscription\n- Kindle Paperwhite\n- Spa day package\n\nDad:\n- Golf lessons\n- Wireless earbuds\n- BBQ accessories\n\nSister:\n- Art supplies set\n- Yoga mat kit\n- Coffee subscription\n\nBudget per person: $150-200',293,1,0),('TypeScript Migration Guide.','2024-10-26 09:20:00',1,'Project migration steps:\n\n1. Initial Setup\n- Install TypeScript dependencies\n- Configure tsconfig.json\n- Set up build pipeline\n\n2. Migration Strategy\n- Start with newer modules\n- Add type definitions gradually\n- Use \"any\" temporarily for complex cases\n\n3. Testing Approach\n- Update test configuration\n- Add type testing\n- Validate build process\n\nDeadline: End of Q4 2024',294,1,0),('React Performance Optimization.','2025-04-25 18:56:12',0,'Key performance optimization techniques:\n\n1. Code Splitting\n- Use React.lazy() for route-based splitting\n- Implement dynamic imports for heavy components\n\n2. Memoization\n- useMemo for expensive calculations\n- useCallback for function props\n- React.memo for component optimization\n\n3. Virtual List Implementation\n- Use react-window for long lists\n- Implement infinite scrolling\n\nTODO: Benchmark current application and identify bottlenecks',295,1,0),('Japan Travel Planning','2025-04-25 18:56:30',0,'Japan Trip Planning - Spring 2025\n\nItinerary Draft:\nWeek 1: Tokyo\n- Shibuya and Harajuku\n- TeamLab Digital Art Museum\n- Day trip to Mount Fuji\n\nWeek 2: Kyoto & Osaka\n- Traditional temples\n- Cherry blossom viewing\n- Food tour in Osaka\n\nBudget: $3000\nAccommodation: Mix of hotels and traditional ryokans\nJR Pass: 14 days\n\nTODO: Book flights 6 months in advance',296,1,0),('Favorite Pasta Recipes.','2025-04-25 18:56:53',0,'Classic Italian Recipes:\n\n1. Carbonara\n- Eggs, pecorino, guanciale\n- No cream ever!\n- Save pasta water\n\n2. Cacio e Pepe\n- Pecorino Romano\n- Fresh black pepper\n- Technique is crucial\n\n3. Arrabbiata\n- San Marzano tomatoes\n- Fresh garlic\n- Red pepper flakes\n\nNote: Always use high-quality ingredients',297,1,0),('Weekly Workout Plan','2025-04-25 18:57:09',0,'Monday: Upper Body\n- Bench Press 4x8\n- Rows 4x10\n- Shoulder Press 3x12\n- Pull-ups 3 sets\n\nWednesday: Lower Body\n- Squats 4x8\n- Romanian Deadlifts 3x10\n- Lunges 3x12 each\n- Calf Raises 4x15\n\nFriday: Full Body\n- Deadlifts 3x5\n- Push-ups 3x12\n- Leg Press 3x12\n- Core Work\n\nCardio: Tuesday/Thursday - 30 min run',298,1,0),('Meal Prep Ideas','2025-04-25 18:57:21',0,'Weekly Meal Prep Plan:\n\nBreakfast Options:\n- Overnight oats\n- Egg muffins\n- Smoothie packs\n\nLunch Containers:\n- Greek chicken bowl\n- Buddha bowls\n- Tuna pasta salad\n\nSnacks:\n- Cut vegetables\n- Mixed nuts\n- Greek yogurt parfait\n\nPrep Time: Sunday 2-4pm\nStorage: Glass containers\nLasts: 4-5 days',299,1,0),('Fitness Goals 2025','2025-04-25 18:57:53',0,'2025 Fitness Objectives:\n\n1. Strength Goals\n- Bench press: 225 lbs\n- Squat: 315 lbs\n- Deadlift: 405 lbs\n\n2. Cardio Goals\n- Run half marathon\n- 5k under 25 minutes\n\n3. Habits\n- Gym 4x per week\n- Daily 10k steps\n- Sleep 7+ hours\n\nTrack all workouts in Strong app',300,1,0),('Database Modification Software','2025-04-25 18:58:54',0,'I need to be better at PHP & MYSQL Cuz it turned out to be very enjoyable \n',301,1,0),('Its a very Res Thanks ','2025-04-25 22:22:02',0,'ITS A PROGAMMING A',302,1,0),('Reading List','2025-04-25 22:22:29',0,'Current Reading Queue:\n\n1. Technical Books\n- Clean Architecture by Robert Martin\n- Designing Data-Intensive Applications\n- TypeScript Design Patterns\n\n2. Personal Development\n- Deep Work by Cal Newport\n- Atomic Habits\n- The Psychology of Money\n\nCurrently Reading: Clean Architecture\nNext Up: Deep Work\n\nGoal: One book per month',303,1,0),('untitled_2','2025-05-20 18:07:56',0,NULL,307,39,1);
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=133 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (11,'213'),(36,'addTage'),(112,'Ali'),(124,'API'),(128,'Arc'),(127,'Arch'),(35,'asd'),(121,'Auth'),(117,'Awesome'),(84,'Better'),(102,'Cardio'),(129,'Circle'),(98,'Clearly'),(53,'Cooking'),(105,'Database'),(80,'Delicous'),(49,'Dev'),(43,'Dick'),(48,'Differently'),(2,'display'),(81,'Eat'),(72,'Efficiency'),(89,'Energy'),(75,'Enjoy'),(9,'Er'),(25,'ERE'),(8,'Ers'),(23,'Esa'),(26,'ew'),(88,'Excercise'),(30,'FAS'),(132,'fdfg'),(131,'fgdfg'),(125,'FINISH'),(7,'First Tah'),(56,'Fitness'),(90,'Focus'),(79,'Food'),(83,'For'),(29,'GDS'),(93,'Get'),(99,'Goals'),(78,'Good'),(103,'Habit'),(57,'Health'),(82,'Healthy'),(77,'Is'),(119,'islam'),(101,'It'),(38,'Its A Good Feeling'),(18,'J'),(73,'Japan'),(76,'Life'),(39,'math physics'),(5,'Mig'),(97,'Mind'),(106,'mysql'),(110,'New'),(31,'news'),(109,'Note'),(118,'note '),(95,'Open'),(71,'Optimize'),(70,'Performance'),(52,'Personal'),(91,'Please'),(108,'Query'),(32,'ra'),(130,'Radius'),(21,'Ras'),(19,'Rashwan'),(50,'React'),(94,'Reading'),(54,'Recipes'),(123,'REST'),(3,'Router'),(41,'Saif'),(122,'Samir Note'),(100,'Set'),(58,'Shopping'),(40,'Sport'),(104,'Strength'),(1,'Success'),(42,'Suck'),(4,'Tag'),(6,'Tags'),(126,'TEST'),(96,'The'),(47,'Think'),(46,'To'),(92,'To '),(37,'To That Node'),(51,'Travel'),(74,'Traver'),(45,'Try'),(55,'TypeScript'),(86,'WorkOut'),(44,'نعيم');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userName` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'guest','guest@email.com','$2y$10$kQ5QoIuHRAlcPFKWP8ZQ2eY9wIhy4BqRdl9StapEqh4yNRWtGrrTq'),(39,'Rashwan','rashwan@gmail.com','$2y$10$a88T9cmUx5N5ukjlYccALu/h0Tu7UovHWz67YfZchn71RzHyAUUVq'),(40,'ali','ali@gmail.com','$2y$10$mT5bfFf7qQM7nxD8g4u1xuyaMvNFcSje.2AxrYqKcwa7/.VXTCp6.'),(41,'islam','islam@gmail.com','$2y$10$bMG4roJaEW9uUI7g4DQEYOKKEAHEayX1z/hn85I8nbKJN5joazEjG'),(43,'samir','samir@gmail.com','$2y$10$8h20Q8Ag/5ax42Pb4/HWuu5eAmHNzl7sYRuxr7RcG9Xn3enwVJhjC'),(44,'Alii','al123i@gmail.com','$2y$10$ojP79QXMOkSk9HQI63k9ZeYFGjG5R4kZaV6GSYeWnbEPcLmCI95TC');
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

-- Dump completed on 2025-05-24  8:52:41
