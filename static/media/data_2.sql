-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `FieldPlayBookApp_booking`
--

DROP TABLE IF EXISTS `FieldPlayBookApp_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FieldPlayBookApp_booking` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(4) DEFAULT NULL,
  `cardno` varchar(19) DEFAULT NULL,
  `cvv` smallint(6) DEFAULT NULL,
  `expdate` varchar(5) DEFAULT NULL,
  `status` varchar(9) DEFAULT NULL,
  `date` varchar(0) DEFAULT NULL,
  `review` varchar(0) DEFAULT NULL,
  `rating` varchar(0) DEFAULT NULL,
  `mid_id` tinyint(4) DEFAULT NULL,
  `slotid_id` tinyint(4) DEFAULT NULL,
  `turfid_id` tinyint(4) DEFAULT NULL,
  `uid_id` tinyint(4) DEFAULT NULL,
  `fine` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FieldPlayBookApp_booking`
--

LOCK TABLES `FieldPlayBookApp_booking` WRITE;
/*!40000 ALTER TABLE `FieldPlayBookApp_booking` DISABLE KEYS */;
INSERT INTO `FieldPlayBookApp_booking` VALUES (1,'ajay','3555 4365 4364 3634',123,'12/27','CANCELLED','','','',1,2,1,1,100);
/*!40000 ALTER TABLE `FieldPlayBookApp_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FieldPlayBookApp_discount`
--

DROP TABLE IF EXISTS `FieldPlayBookApp_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FieldPlayBookApp_discount` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `description` varchar(8) DEFAULT NULL,
  `discount_percentage` smallint(6) DEFAULT NULL,
  `start_date` varchar(0) DEFAULT NULL,
  `end_date` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FieldPlayBookApp_discount`
--

LOCK TABLES `FieldPlayBookApp_discount` WRITE;
/*!40000 ALTER TABLE `FieldPlayBookApp_discount` DISABLE KEYS */;
INSERT INTO `FieldPlayBookApp_discount` VALUES (1,' Plastic Cricket','hii alll',100,'','');
/*!40000 ALTER TABLE `FieldPlayBookApp_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FieldPlayBookApp_equipment`
--

DROP TABLE IF EXISTS `FieldPlayBookApp_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FieldPlayBookApp_equipment` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(12) DEFAULT NULL,
  `status` varchar(9) DEFAULT NULL,
  `purchase_date` varchar(0) DEFAULT NULL,
  `maintenance_frequency` tinyint(4) DEFAULT NULL,
  `image` varchar(41) DEFAULT NULL,
  `warranty_period` tinyint(4) DEFAULT NULL,
  `managerid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FieldPlayBookApp_equipment`
--

LOCK TABLES `FieldPlayBookApp_equipment` WRITE;
/*!40000 ALTER TABLE `FieldPlayBookApp_equipment` DISABLE KEYS */;
INSERT INTO `FieldPlayBookApp_equipment` VALUES (1,'turf players','Available','',2,'equipment_images/download_32_LLcPTH5.jpeg',2,1);
/*!40000 ALTER TABLE `FieldPlayBookApp_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FieldPlayBookApp_firstaidkit`
--

DROP TABLE IF EXISTS `FieldPlayBookApp_firstaidkit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FieldPlayBookApp_firstaidkit` (
  `id` tinyint(4) DEFAULT NULL,
  `kit_name` varchar(8) DEFAULT NULL,
  `total_items` tinyint(4) DEFAULT NULL,
  `last_checked` varchar(0) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `turf_id` tinyint(4) DEFAULT NULL,
  `description` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FieldPlayBookApp_firstaidkit`
--

LOCK TABLES `FieldPlayBookApp_firstaidkit` WRITE;
/*!40000 ALTER TABLE `FieldPlayBookApp_firstaidkit` DISABLE KEYS */;
INSERT INTO `FieldPlayBookApp_firstaidkit` VALUES (1,'injureee',12,'','Used',1,'wqrewf');
/*!40000 ALTER TABLE `FieldPlayBookApp_firstaidkit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FieldPlayBookApp_login`
--

DROP TABLE IF EXISTS `FieldPlayBookApp_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FieldPlayBookApp_login` (
  `id` tinyint(4) DEFAULT NULL,
  `email` varchar(17) DEFAULT NULL,
  `password` varchar(8) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `usertype` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FieldPlayBookApp_login`
--

LOCK TABLES `FieldPlayBookApp_login` WRITE;
/*!40000 ALTER TABLE `FieldPlayBookApp_login` DISABLE KEYS */;
INSERT INTO `FieldPlayBookApp_login` VALUES (1,'ajay@gmail.com','123','Approved','User'),(2,'admin@gmail.com','admin123','pending','Admin'),(3,'vineeth@gmail.com','1212','Approved','Manager');
/*!40000 ALTER TABLE `FieldPlayBookApp_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FieldPlayBookApp_managerregistration`
--

DROP TABLE IF EXISTS `FieldPlayBookApp_managerregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FieldPlayBookApp_managerregistration` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(4) DEFAULT NULL,
  `email` varchar(17) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `address` varchar(5) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  `loginid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FieldPlayBookApp_managerregistration`
--

LOCK TABLES `FieldPlayBookApp_managerregistration` WRITE;
/*!40000 ALTER TABLE `FieldPlayBookApp_managerregistration` DISABLE KEYS */;
INSERT INTO `FieldPlayBookApp_managerregistration` VALUES (1,'Deno','vineeth@gmail.com',1286608618,'kochi','ASSIGNED',3);
/*!40000 ALTER TABLE `FieldPlayBookApp_managerregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FieldPlayBookApp_prebooking`
--

DROP TABLE IF EXISTS `FieldPlayBookApp_prebooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FieldPlayBookApp_prebooking` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(4) DEFAULT NULL,
  `email` varchar(17) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `booking_date` varchar(10) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `uid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FieldPlayBookApp_prebooking`
--

LOCK TABLES `FieldPlayBookApp_prebooking` WRITE;
/*!40000 ALTER TABLE `FieldPlayBookApp_prebooking` DISABLE KEYS */;
INSERT INTO `FieldPlayBookApp_prebooking` VALUES (1,'ajay','student@gmail.com',8270197997,'2025-02-06','BOOKED',1);
/*!40000 ALTER TABLE `FieldPlayBookApp_prebooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FieldPlayBookApp_slots`
--

DROP TABLE IF EXISTS `FieldPlayBookApp_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FieldPlayBookApp_slots` (
  `id` tinyint(4) DEFAULT NULL,
  `stime` varchar(5) DEFAULT NULL,
  `etime` varchar(5) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `managerid_id` tinyint(4) DEFAULT NULL,
  `turfid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FieldPlayBookApp_slots`
--

LOCK TABLES `FieldPlayBookApp_slots` WRITE;
/*!40000 ALTER TABLE `FieldPlayBookApp_slots` DISABLE KEYS */;
INSERT INTO `FieldPlayBookApp_slots` VALUES (1,'08:00','09:00','FREE',1,1),(2,'09:00','10:00','FREE',1,1);
/*!40000 ALTER TABLE `FieldPlayBookApp_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FieldPlayBookApp_tournament`
--

DROP TABLE IF EXISTS `FieldPlayBookApp_tournament`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FieldPlayBookApp_tournament` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(16) DEFAULT NULL,
  `start_date` varchar(0) DEFAULT NULL,
  `location` varchar(44) DEFAULT NULL,
  `end_date` varchar(0) DEFAULT NULL,
  `prize_pool` mediumint(9) DEFAULT NULL,
  `max_teams` tinyint(4) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FieldPlayBookApp_tournament`
--

LOCK TABLES `FieldPlayBookApp_tournament` WRITE;
/*!40000 ALTER TABLE `FieldPlayBookApp_tournament` DISABLE KEYS */;
INSERT INTO `FieldPlayBookApp_tournament` VALUES (1,' Plastic Cricket','',' Perumanoor, Kochi, Ernakulam, Kerala 682015','',12000,12,'upcoming');
/*!40000 ALTER TABLE `FieldPlayBookApp_tournament` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FieldPlayBookApp_turf`
--

DROP TABLE IF EXISTS `FieldPlayBookApp_turf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FieldPlayBookApp_turf` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(21) DEFAULT NULL,
  `email` varchar(17) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `address` varchar(6) DEFAULT NULL,
  `image` varchar(16) DEFAULT NULL,
  `rate` smallint(6) DEFAULT NULL,
  `location` varchar(43) DEFAULT NULL,
  `managerid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FieldPlayBookApp_turf`
--

LOCK TABLES `FieldPlayBookApp_turf` WRITE;
/*!40000 ALTER TABLE `FieldPlayBookApp_turf` DISABLE KEYS */;
INSERT INTO `FieldPlayBookApp_turf` VALUES (1,'Game Time Sports Turf','vineeth@gmail.com',-319736595,'kochii','download_28.jpeg',900,' vaduthala, Kochi, Ernakulam, Kerala 682015',1);
/*!40000 ALTER TABLE `FieldPlayBookApp_turf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FieldPlayBookApp_userregistration`
--

DROP TABLE IF EXISTS `FieldPlayBookApp_userregistration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FieldPlayBookApp_userregistration` (
  `id` tinyint(4) DEFAULT NULL,
  `name` varchar(4) DEFAULT NULL,
  `email` varchar(14) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `address` varchar(6) DEFAULT NULL,
  `loginid_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FieldPlayBookApp_userregistration`
--

LOCK TABLES `FieldPlayBookApp_userregistration` WRITE;
/*!40000 ALTER TABLE `FieldPlayBookApp_userregistration` DISABLE KEYS */;
INSERT INTO `FieldPlayBookApp_userregistration` VALUES (1,'Ajay','ajay@gmail.com',-319736595,'kochi,',1);
/*!40000 ALTER TABLE `FieldPlayBookApp_userregistration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` varchar(0) DEFAULT NULL,
  `name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` tinyint(4) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `codename` varchar(26) DEFAULT NULL,
  `name` varchar(31) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_discount','Can add discount'),(26,7,'change_discount','Can change discount'),(27,7,'delete_discount','Can delete discount'),(28,7,'view_discount','Can view discount'),(29,8,'add_login','Can add login'),(30,8,'change_login','Can change login'),(31,8,'delete_login','Can delete login'),(32,8,'view_login','Can view login'),(33,9,'add_managerregistration','Can add manager registration'),(34,9,'change_managerregistration','Can change manager registration'),(35,9,'delete_managerregistration','Can delete manager registration'),(36,9,'view_managerregistration','Can view manager registration'),(37,10,'add_tournament','Can add tournament'),(38,10,'change_tournament','Can change tournament'),(39,10,'delete_tournament','Can delete tournament'),(40,10,'view_tournament','Can view tournament'),(41,11,'add_userregistration','Can add user registration'),(42,11,'change_userregistration','Can change user registration'),(43,11,'delete_userregistration','Can delete user registration'),(44,11,'view_userregistration','Can view user registration'),(45,12,'add_turf','Can add turf'),(46,12,'change_turf','Can change turf'),(47,12,'delete_turf','Can delete turf'),(48,12,'view_turf','Can view turf'),(49,13,'add_slots','Can add slots'),(50,13,'change_slots','Can change slots'),(51,13,'delete_slots','Can delete slots'),(52,13,'view_slots','Can view slots'),(53,14,'add_prebooking','Can add pre booking'),(54,14,'change_prebooking','Can change pre booking'),(55,14,'delete_prebooking','Can delete pre booking'),(56,14,'view_prebooking','Can view pre booking'),(57,15,'add_equipment','Can add equipment'),(58,15,'change_equipment','Can change equipment'),(59,15,'delete_equipment','Can delete equipment'),(60,15,'view_equipment','Can view equipment'),(61,16,'add_booking','Can add booking'),(62,16,'change_booking','Can change booking'),(63,16,'delete_booking','Can delete booking'),(64,16,'view_booking','Can view booking'),(65,17,'add_firstaidkit','Can add first aid kit'),(66,17,'change_firstaidkit','Can change first aid kit'),(67,17,'delete_firstaidkit','Can delete first aid kit'),(68,17,'view_firstaidkit','Can view first aid kit');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` tinyint(4) DEFAULT NULL,
  `password` varchar(88) DEFAULT NULL,
  `last_login` varchar(10) DEFAULT NULL,
  `is_superuser` tinyint(4) DEFAULT NULL,
  `username` varchar(5) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `email` varchar(15) DEFAULT NULL,
  `is_staff` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `date_joined` varchar(10) DEFAULT NULL,
  `first_name` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$J7ZdegIovWEFwASBXmVPWt$3zTQX/vQtmd+diClkBMZbb95nEXVq3ocg49s2i9K5mA=','2025-02-06',1,'admin','','admin@gmail.com',1,1,'2025-02-06','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `group_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` varchar(0) DEFAULT NULL,
  `user_id` varchar(0) DEFAULT NULL,
  `permission_id` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` tinyint(4) DEFAULT NULL,
  `object_id` tinyint(4) DEFAULT NULL,
  `object_repr` varchar(16) DEFAULT NULL,
  `action_flag` tinyint(4) DEFAULT NULL,
  `change_message` varchar(15) DEFAULT NULL,
  `content_type_id` tinyint(4) DEFAULT NULL,
  `user_id` tinyint(4) DEFAULT NULL,
  `action_time` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,2,'Login object (2)',1,'[{\"added\": {}}]',8,1,'2025-02-06');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` tinyint(4) DEFAULT NULL,
  `app_label` varchar(16) DEFAULT NULL,
  `model` varchar(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (16,'FieldPlayBookApp','booking'),(7,'FieldPlayBookApp','discount'),(15,'FieldPlayBookApp','equipment'),(17,'FieldPlayBookApp','firstaidkit'),(8,'FieldPlayBookApp','login'),(9,'FieldPlayBookApp','managerregistration'),(14,'FieldPlayBookApp','prebooking'),(13,'FieldPlayBookApp','slots'),(10,'FieldPlayBookApp','tournament'),(12,'FieldPlayBookApp','turf'),(11,'FieldPlayBookApp','userregistration'),(1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` tinyint(4) DEFAULT NULL,
  `app` varchar(16) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `applied` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'FieldPlayBookApp','0001_initial','2025-02-06'),(2,'contenttypes','0001_initial','2025-02-06'),(3,'auth','0001_initial','2025-02-06'),(4,'admin','0001_initial','2025-02-06'),(5,'admin','0002_logentry_remove_auto_add','2025-02-06'),(6,'admin','0003_logentry_add_action_flag_choices','2025-02-06'),(7,'contenttypes','0002_remove_content_type_name','2025-02-06'),(8,'auth','0002_alter_permission_name_max_length','2025-02-06'),(9,'auth','0003_alter_user_email_max_length','2025-02-06'),(10,'auth','0004_alter_user_username_opts','2025-02-06'),(11,'auth','0005_alter_user_last_login_null','2025-02-06'),(12,'auth','0006_require_contenttypes_0002','2025-02-06'),(13,'auth','0007_alter_validators_add_error_messages','2025-02-06'),(14,'auth','0008_alter_user_username_max_length','2025-02-06'),(15,'auth','0009_alter_user_last_name_max_length','2025-02-06'),(16,'auth','0010_alter_group_name_max_length','2025-02-06'),(17,'auth','0011_update_proxy_permissions','2025-02-06'),(18,'auth','0012_alter_user_first_name_max_length','2025-02-06'),(19,'sessions','0001_initial','2025-02-06'),(20,'FieldPlayBookApp','0002_booking_fine','2025-02-06'),(21,'FieldPlayBookApp','0003_firstaidkit','2025-02-06'),(22,'FieldPlayBookApp','0004_remove_firstaidkit_is_available_and_more','2025-02-06');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(32) DEFAULT NULL,
  `session_data` varchar(63) DEFAULT NULL,
  `expire_date` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('btciwecjsazb3nkhnu9aj8x01y698439','eyJ1aWQiOjF9:1tftxo:tuKz3mRslt5LNGUuWaJe3dgs1U0FtM8QtpIszXz6Gfo','2025-02-20'),('flllgjom096d24ug62rqu52zg3klmn2n','eyJ1aWQiOjF9:1tg0LH:JAwKUZcN4lgLrwJdK8M6dZEhoETfzcRkNUCsgZ-mH0E','2025-02-20'),('kcx0r8k3kx5inkhri7px4q5e445os90s','eyJ1aWQiOjF9:1tg0k6:esnVBYOc3rWhU6lBJXrimwT-IpEJXsj302cRJdDqujY','2025-02-20');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` varchar(36) DEFAULT NULL,
  `seq` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations',22),('django_admin_log',1),('django_content_type',17),('auth_permission',68),('auth_group',0),('auth_user',1),('FieldPlayBookApp_login',3),('FieldPlayBookApp_userregistration',1),('FieldPlayBookApp_managerregistration',1),('FieldPlayBookApp_turf',1),('FieldPlayBookApp_discount',1),('FieldPlayBookApp_tournament',1),('FieldPlayBookApp_slots',2),('FieldPlayBookApp_equipment',1),('FieldPlayBookApp_booking',1),('FieldPlayBookApp_prebooking',2),('FieldPlayBookApp_firstaidkit',1);
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-30 16:42:50
