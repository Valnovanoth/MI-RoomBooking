CREATE DATABASE  IF NOT EXISTS `mi_prenotazioni` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mi_prenotazioni`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 192.168.0.15    Database: mi_prenotazioni
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_from` timestamp NULL DEFAULT NULL,
  `time_to` timestamp NULL DEFAULT NULL,
  `additional_information` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `customer_id` int(10) unsigned DEFAULT NULL,
  `room_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_booking` (`time_from`,`room_id`),
  KEY `bookings_deleted_at_index` (`deleted_at`),
  KEY `110461_5a676fa2321c7` (`customer_id`),
  KEY `110461_5a676fa239ffd` (`room_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shortcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `countries_deleted_at_index` (`deleted_at`)
) ENGINE=MyISAM AUTO_INCREMENT=265 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'AF','Afghanistan','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(2,'AL','Albania','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(3,'DZ','Algeria','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(4,'AS','American Samoa','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(5,'AD','Andorra','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(6,'AO','Angola','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(7,'AI','Anguilla','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(8,'AQ','Antarctica','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(9,'AG','Antigua and Barbuda','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(10,'AR','Argentina','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(11,'AM','Armenia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(12,'AW','Aruba','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(13,'AU','Australia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(14,'AT','Austria','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(15,'AZ','Azerbaijan','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(16,'BS','Bahamas','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(17,'BH','Bahrain','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(18,'BD','Bangladesh','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(19,'BB','Barbados','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(20,'BY','Belarus','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(21,'BE','Belgium','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(22,'BZ','Belize','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(23,'BJ','Benin','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(24,'BM','Bermuda','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(25,'BT','Bhutan','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(26,'BO','Bolivia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(27,'BA','Bosnia and Herzegovina','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(28,'BW','Botswana','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(29,'BV','Bouvet Island','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(30,'BR','Brazil','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(31,'BQ','British Antarctic Territory','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(32,'IO','British Indian Ocean Territory','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(33,'VG','British Virgin Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(34,'BN','Brunei','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(35,'BG','Bulgaria','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(36,'BF','Burkina Faso','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(37,'BI','Burundi','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(38,'KH','Cambodia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(39,'CM','Cameroon','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(40,'CA','Canada','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(41,'CT','Canton and Enderbury Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(42,'CV','Cape Verde','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(43,'KY','Cayman Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(44,'CF','Central African Republic','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(45,'TD','Chad','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(46,'CL','Chile','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(47,'CN','China','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(48,'CX','Christmas Island','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(49,'CC','Cocos [Keeling] Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(50,'CO','Colombia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(51,'KM','Comoros','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(52,'CG','Congo - Brazzaville','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(53,'CD','Congo - Kinshasa','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(54,'CK','Cook Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(55,'CR','Costa Rica','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(56,'HR','Croatia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(57,'CU','Cuba','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(58,'CY','Cyprus','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(59,'CZ','Czech Republic','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(60,'CI','Côte d’Ivoire','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(61,'DK','Denmark','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(62,'DJ','Djibouti','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(63,'DM','Dominica','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(64,'DO','Dominican Republic','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(65,'NQ','Dronning Maud Land','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(66,'DD','East Germany','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(67,'EC','Ecuador','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(68,'EG','Egypt','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(69,'SV','El Salvador','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(70,'GQ','Equatorial Guinea','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(71,'ER','Eritrea','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(72,'EE','Estonia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(73,'ET','Ethiopia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(74,'FK','Falkland Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(75,'FO','Faroe Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(76,'FJ','Fiji','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(77,'FI','Finland','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(78,'FR','France','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(79,'GF','French Guiana','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(80,'PF','French Polynesia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(81,'TF','French Southern Territories','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(82,'FQ','French Southern and Antarctic Territories','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(83,'GA','Gabon','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(84,'GM','Gambia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(85,'GE','Georgia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(86,'DE','Germany','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(87,'GH','Ghana','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(88,'GI','Gibraltar','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(89,'GR','Greece','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(90,'GL','Greenland','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(91,'GD','Grenada','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(92,'GP','Guadeloupe','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(93,'GU','Guam','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(94,'GT','Guatemala','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(95,'GG','Guernsey','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(96,'GN','Guinea','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(97,'GW','Guinea-Bissau','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(98,'GY','Guyana','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(99,'HT','Haiti','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(100,'HM','Heard Island and McDonald Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(101,'HN','Honduras','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(102,'HK','Hong Kong SAR China','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(103,'HU','Hungary','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(104,'IS','Iceland','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(105,'IN','India','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(106,'ID','Indonesia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(107,'IR','Iran','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(108,'IQ','Iraq','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(109,'IE','Ireland','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(110,'IM','Isle of Man','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(111,'IL','Israel','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(112,'IT','Italy','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(113,'JM','Jamaica','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(114,'JP','Japan','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(115,'JE','Jersey','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(116,'JT','Johnston Island','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(117,'JO','Jordan','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(118,'KZ','Kazakhstan','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(119,'KE','Kenya','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(120,'KI','Kiribati','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(121,'KW','Kuwait','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(122,'KG','Kyrgyzstan','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(123,'LA','Laos','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(124,'LV','Latvia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(125,'LB','Lebanon','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(126,'LS','Lesotho','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(127,'LR','Liberia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(128,'LY','Libya','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(129,'LI','Liechtenstein','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(130,'LT','Lithuania','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(131,'LU','Luxembourg','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(132,'MO','Macau SAR China','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(133,'MK','Macedonia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(134,'MG','Madagascar','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(135,'MW','Malawi','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(136,'MY','Malaysia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(137,'MV','Maldives','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(138,'ML','Mali','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(139,'MT','Malta','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(140,'MH','Marshall Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(141,'MQ','Martinique','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(142,'MR','Mauritania','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(143,'MU','Mauritius','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(144,'YT','Mayotte','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(145,'FX','Metropolitan France','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(146,'MX','Mexico','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(147,'FM','Micronesia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(148,'MI','Midway Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(149,'MD','Moldova','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(150,'MC','Monaco','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(151,'MN','Mongolia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(152,'ME','Montenegro','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(153,'MS','Montserrat','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(154,'MA','Morocco','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(155,'MZ','Mozambique','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(156,'MM','Myanmar [Burma]','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(157,'NA','Namibia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(158,'NR','Nauru','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(159,'NP','Nepal','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(160,'NL','Netherlands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(161,'AN','Netherlands Antilles','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(162,'NT','Neutral Zone','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(163,'NC','New Caledonia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(164,'NZ','New Zealand','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(165,'NI','Nicaragua','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(166,'NE','Niger','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(167,'NG','Nigeria','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(168,'NU','Niue','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(169,'NF','Norfolk Island','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(170,'KP','North Korea','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(171,'VD','North Vietnam','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(172,'MP','Northern Mariana Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(173,'NO','Norway','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(174,'OM','Oman','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(175,'PC','Pacific Islands Trust Territory','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(176,'PK','Pakistan','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(177,'PW','Palau','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(178,'PS','Palestinian Territories','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(179,'PA','Panama','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(180,'PZ','Panama Canal Zone','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(181,'PG','Papua New Guinea','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(182,'PY','Paraguay','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(183,'YD','People\'s Democratic Republic of Yemen','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(184,'PE','Peru','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(185,'PH','Philippines','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(186,'PN','Pitcairn Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(187,'PL','Poland','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(188,'PT','Portugal','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(189,'PR','Puerto Rico','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(190,'QA','Qatar','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(191,'RO','Romania','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(192,'RU','Russia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(193,'RW','Rwanda','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(194,'RE','Réunion','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(195,'BL','Saint Barthélemy','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(196,'SH','Saint Helena','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(197,'KN','Saint Kitts and Nevis','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(198,'LC','Saint Lucia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(199,'MF','Saint Martin','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(200,'PM','Saint Pierre and Miquelon','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(201,'VC','Saint Vincent and the Grenadines','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(202,'WS','Samoa','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(203,'SM','San Marino','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(204,'SA','Saudi Arabia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(205,'SN','Senegal','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(206,'RS','Serbia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(207,'CS','Serbia and Montenegro','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(208,'SC','Seychelles','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(209,'SL','Sierra Leone','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(210,'SG','Singapore','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(211,'SK','Slovakia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(212,'SI','Slovenia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(213,'SB','Solomon Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(214,'SO','Somalia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(215,'ZA','South Africa','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(216,'GS','South Georgia and the South Sandwich Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(217,'KR','South Korea','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(218,'ES','Spain','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(219,'LK','Sri Lanka','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(220,'SD','Sudan','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(221,'SR','Suriname','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(222,'SJ','Svalbard and Jan Mayen','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(223,'SZ','Swaziland','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(224,'SE','Sweden','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(225,'CH','Switzerland','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(226,'SY','Syria','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(227,'ST','São Tomé and Príncipe','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(228,'TW','Taiwan','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(229,'TJ','Tajikistan','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(230,'TZ','Tanzania','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(231,'TH','Thailand','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(232,'TL','Timor-Leste','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(233,'TG','Togo','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(234,'TK','Tokelau','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(235,'TO','Tonga','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(236,'TT','Trinidad and Tobago','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(237,'TN','Tunisia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(238,'TR','Turkey','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(239,'TM','Turkmenistan','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(240,'TC','Turks and Caicos Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(241,'TV','Tuvalu','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(242,'UM','U.S. Minor Outlying Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(243,'PU','U.S. Miscellaneous Pacific Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(244,'VI','U.S. Virgin Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(245,'UG','Uganda','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(246,'UA','Ukraine','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(247,'SU','Union of Soviet Socialist Republics','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(248,'AE','United Arab Emirates','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(249,'GB','United Kingdom','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(250,'US','United States','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(251,'ZZ','Unknown or Invalid Region','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(252,'UY','Uruguay','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(253,'UZ','Uzbekistan','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(254,'VU','Vanuatu','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(255,'VA','Vatican City','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(256,'VE','Venezuela','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(257,'VN','Vietnam','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(258,'WK','Wake Island','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(259,'WF','Wallis and Futuna','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(260,'EH','Western Sahara','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(261,'YE','Yemen','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(262,'ZM','Zambia','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(263,'ZW','Zimbabwe','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL),(264,'AX','Åland Islands','2020-10-05 07:12:45','2020-10-05 07:12:45',NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customers_deleted_at_index` (`deleted_at`),
  KEY `110459_5a676ed5d9792` (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Administrator (can create other users)','2020-10-05 07:12:45','2020-10-05 07:12:45'),(2,'Simple user','2020-10-05 07:12:45','2020-10-05 07:12:45');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rooms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `room_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` int(11) DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rooms_deleted_at_index` (`deleted_at`),
  KEY `rooms_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `110457_5a676d8ddf4c7` (`role_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'mi_prenotazioni'
--
/*!50106 SET @save_time_zone= @@TIME_ZONE */ ;
/*!50106 DROP EVENT IF EXISTS `clear_old_bookings` */;
DELIMITER ;;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;;
/*!50003 SET character_set_client  = utf8mb4 */ ;;
/*!50003 SET character_set_results = utf8mb4 */ ;;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;;
/*!50003 SET @saved_time_zone      = @@time_zone */ ;;
/*!50003 SET time_zone             = 'SYSTEM' */ ;;
/*!50106 CREATE*/ /*!50117 DEFINER=`meteo-station`@`%`*/ /*!50106 EVENT `clear_old_bookings` ON SCHEDULE EVERY 1 DAY STARTS '2020-10-15 04:00:00' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM bookings WHERE time_from <= SUBDATE(current_date, 1) */ ;;
/*!50003 SET time_zone             = @saved_time_zone */ ;;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;;
/*!50003 SET character_set_client  = @saved_cs_client */ ;;
/*!50003 SET character_set_results = @saved_cs_results */ ;;
/*!50003 SET collation_connection  = @saved_col_connection */ ;;
DELIMITER ;
/*!50106 SET TIME_ZONE= @save_time_zone */ ;

--
-- Dumping routines for database 'mi_prenotazioni'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-15 11:52:14
