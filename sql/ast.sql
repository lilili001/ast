-- MySQL dump 10.13  Distrib 5.7.17, for osx10.11 (x86_64)
--
-- Host: 127.0.0.1    Database: ast
-- ------------------------------------------------------
-- Server version	5.7.17

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'wBCGjcwShonfPDLdiv3Ywy3vgS1C3f4O',1,'2018-02-05 02:08:17','2018-02-05 02:08:17','2018-02-05 02:08:17'),(5,8,'9RSMWNiDCWcE0O1vkOEVLWZNouUmvezq',1,'2018-02-22 01:45:30','2018-02-22 01:45:30','2018-02-22 01:45:30');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute__attribute_translations`
--

DROP TABLE IF EXISTS `attribute__attribute_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute__attribute_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `attribute__attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`),
  KEY `attribute__attribute_translations_locale_index` (`locale`),
  CONSTRAINT `attribute__attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attribute__attributes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute__attribute_translations`
--

LOCK TABLES `attribute__attribute_translations` WRITE;
/*!40000 ALTER TABLE `attribute__attribute_translations` DISABLE KEYS */;
INSERT INTO `attribute__attribute_translations` VALUES (47,'material','material',24,'en'),(48,'材质','材质',24,'zh'),(49,'brand','brand',25,'en'),(50,'品牌','品牌',25,'zh'),(51,'color','color',26,'en'),(52,'颜色','color',26,'zh'),(53,'size','size',27,'en'),(54,'尺码','size',27,'zh');
/*!40000 ALTER TABLE `attribute__attribute_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute__attribute_values`
--

DROP TABLE IF EXISTS `attribute__attribute_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute__attribute_values` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attribute_id` int(10) unsigned NOT NULL,
  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entity_id` int(10) unsigned NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `attribute__attribute_values_attribute_id_index` (`attribute_id`),
  KEY `attribute__attribute_values_entity_type_index` (`entity_type`),
  KEY `attribute__attribute_values_entity_id_index` (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute__attribute_values`
--

LOCK TABLES `attribute__attribute_values` WRITE;
/*!40000 ALTER TABLE `attribute__attribute_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `attribute__attribute_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute__attributes`
--

DROP TABLE IF EXISTS `attribute__attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute__attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_for_sku` tinyint(1) NOT NULL,
  `is_for_sale` tinyint(1) NOT NULL,
  `is_filterable` tinyint(1) DEFAULT '0',
  `is_visible_on_front` tinyint(1) DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `is_enabled` tinyint(1) NOT NULL,
  `has_translatable_values` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute__attributes`
--

LOCK TABLES `attribute__attributes` WRITE;
/*!40000 ALTER TABLE `attribute__attributes` DISABLE KEYS */;
INSERT INTO `attribute__attributes` VALUES (24,'BaseNamespace','material','select',1,1,1,1,'{\"mutton\":{\"en\":\"Mutton\",\"zh\":\"\\u7f8a\\u6bdb\"},\"leather\":{\"en\":\"Leather\",\"zh\":\"\\u76ae\\u9769\"}}',1,1,'2018-02-12 01:21:21','2018-03-29 22:39:18',1),(25,'BaseNamespace','brand','select',1,1,1,1,'{\"hm\":{\"en\":\"HM\",\"zh\":\"HM\"},\"zara\":{\"en\":\"ZARA\",\"zh\":\"ZARA\"}}',1,0,'2018-02-12 01:22:39','2018-03-29 22:39:12',3),(26,'BaseNamespace','color','select',1,0,1,1,'{\"red\":{\"en\":\"Red\",\"zh\":\"\\u7ea2\\u8272\"},\"blue\":{\"en\":\"Blue\",\"zh\":\"\\u84dd\\u8272\"}}',1,1,'2018-02-21 17:50:33','2018-03-25 19:17:03',0),(27,'BaseNamespace','size','select',1,0,1,1,'{\"l\":{\"en\":\"L\",\"zh\":\"\\u5927\\u7801\"},\"m\":{\"en\":\"M\",\"zh\":\"\\u4e2d\\u7801\"}}',1,1,'2018-02-21 18:04:49','2018-03-25 19:18:19',2);
/*!40000 ALTER TABLE `attribute__attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attrset_attr`
--

DROP TABLE IF EXISTS `attrset_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attrset_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attrset_id` int(10) unsigned NOT NULL,
  `attribute_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attrset_attr_attrset_id_index` (`attrset_id`),
  KEY `attrset_attr_attribute_id_index` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attrset_attr`
--

LOCK TABLES `attrset_attr` WRITE;
/*!40000 ALTER TABLE `attrset_attr` DISABLE KEYS */;
INSERT INTO `attrset_attr` VALUES (27,3,24),(30,3,25),(31,3,26),(32,3,27);
/*!40000 ALTER TABLE `attrset_attr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog__categories`
--

DROP TABLE IF EXISTS `blog__categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog__categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog__categories`
--

LOCK TABLES `blog__categories` WRITE;
/*!40000 ALTER TABLE `blog__categories` DISABLE KEYS */;
INSERT INTO `blog__categories` VALUES (1,'2018-02-05 23:29:48','2018-02-05 23:29:48');
/*!40000 ALTER TABLE `blog__categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog__category_translations`
--

DROP TABLE IF EXISTS `blog__category_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog__category_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog__category_translations_category_id_locale_unique` (`category_id`,`locale`),
  KEY `blog__category_translations_locale_index` (`locale`),
  CONSTRAINT `blog__category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `blog__categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog__category_translations`
--

LOCK TABLES `blog__category_translations` WRITE;
/*!40000 ALTER TABLE `blog__category_translations` DISABLE KEYS */;
INSERT INTO `blog__category_translations` VALUES (1,'live','live',1,'en'),(2,'生活','live',1,'zh');
/*!40000 ALTER TABLE `blog__category_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog__post_translations`
--

DROP TABLE IF EXISTS `blog__post_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog__post_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog__post_translations_post_id_locale_unique` (`post_id`,`locale`),
  KEY `blog__post_translations_locale_index` (`locale`),
  CONSTRAINT `blog__post_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `blog__posts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog__post_translations`
--

LOCK TABLES `blog__post_translations` WRITE;
/*!40000 ALTER TABLE `blog__post_translations` DISABLE KEYS */;
INSERT INTO `blog__post_translations` VALUES (1,1,'en','blog post','blog-post','<p>blog post<img alt=\"\" src=\"http://localhost:8002/assets/media/avatar-default_smallThumb.jpeg\" style=\"width: 50px; height: 50px;\" /></p>'),(2,1,'zh','中文博客','blog-post','<p>中文博客</p>'),(3,2,'en','sdfsdff','sdfsdff','<p>sdfsdf</p>'),(4,2,'zh','sdfsd','sdfsd','<p>sdfsdf</p>');
/*!40000 ALTER TABLE `blog__post_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog__posts`
--

DROP TABLE IF EXISTS `blog__posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog__posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog__posts_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog__posts`
--

LOCK TABLES `blog__posts` WRITE;
/*!40000 ALTER TABLE `blog__posts` DISABLE KEYS */;
INSERT INTO `blog__posts` VALUES (1,1,2,'2018-02-05 23:29:21','2018-02-05 23:34:31'),(2,1,0,'2018-02-10 22:21:57','2018-02-10 22:21:57');
/*!40000 ALTER TABLE `blog__posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard__widgets`
--

DROP TABLE IF EXISTS `dashboard__widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard__widgets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `widgets` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard__widgets_user_id_foreign` (`user_id`),
  CONSTRAINT `dashboard__widgets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard__widgets`
--

LOCK TABLES `dashboard__widgets` WRITE;
/*!40000 ALTER TABLE `dashboard__widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `dashboard__widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media__file_translations`
--

DROP TABLE IF EXISTS `media__file_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media__file_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_attribute` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media__file_translations_file_id_locale_unique` (`file_id`,`locale`),
  KEY `media__file_translations_locale_index` (`locale`),
  CONSTRAINT `media__file_translations_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `media__files` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media__file_translations`
--

LOCK TABLES `media__file_translations` WRITE;
/*!40000 ALTER TABLE `media__file_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `media__file_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media__files`
--

DROP TABLE IF EXISTS `media__files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media__files` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_folder` tinyint(1) NOT NULL DEFAULT '0',
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mimetype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media__files`
--

LOCK TABLES `media__files` WRITE;
/*!40000 ALTER TABLE `media__files` DISABLE KEYS */;
INSERT INTO `media__files` VALUES (1,0,'timg.jpg','/assets/media/timg.jpg','jpg','image/jpeg','45868','0','2018-02-05 05:38:58','2018-02-05 05:38:58'),(2,0,'avatar-default.jpeg','/assets/media/avatar-default.jpeg','jpeg','image/jpeg','5929','0','2018-02-05 05:45:21','2018-02-05 05:45:21'),(3,0,'timg-1.jpg','/assets/media/timg-1.jpg','jpg','image/jpeg','103974','0','2018-02-10 21:28:18','2018-02-10 21:28:18'),(4,0,'timg_1.jpg','/assets/media/timg_1.jpg','jpg','image/jpeg','45868','0','2018-02-10 21:37:30','2018-02-10 21:37:30'),(6,0,'2018-02-11-06-15-32-5a7fdf8400581.jpg','/assets/media/2018-02-11-06-15-32-5a7fdf8400581.jpg','jpg','image/jpeg','103974','0','2018-02-10 22:15:32','2018-02-10 22:15:32'),(8,0,'2018-02-11-06-45-30-5a7fe68a797a0.jpg','/assets/media/2018-02-11-06-45-30-5a7fe68a797a0.jpg','jpg','image/jpeg','45868','0','2018-02-10 22:45:30','2018-02-10 22:45:30'),(9,0,'2018-02-24-03-25-10-5a90db1633846.jpg','/assets/media/2018-02-24-03-25-10-5a90db1633846.jpg','jpg','image/jpeg','289022','0','2018-02-23 19:25:10','2018-02-23 19:25:10'),(12,0,'2018-03-12-02-45-25-5aa5e9c57221f.jpg','/assets/media/2018-03-12-02-45-25-5aa5e9c57221f.jpg','jpg','image/jpeg','761429','0','2018-03-11 18:45:25','2018-03-11 18:45:25'),(13,0,'2018-03-29-03-52-48-5abc6310dcd53.jpg','/assets/media/2018-03-29-03-52-48-5abc6310dcd53.jpg','jpg','image/jpeg','45723','0','2018-03-28 19:52:48','2018-03-28 19:52:48'),(16,0,'2018-03-29-03-54-15-5abc6367a4612.jpg','/assets/media/2018-03-29-03-54-15-5abc6367a4612.jpg','jpg','image/jpeg','50870','0','2018-03-28 19:54:15','2018-03-28 19:54:15'),(17,0,'2018-03-29-03-54-15-5abc6367e7e81.jpg','/assets/media/2018-03-29-03-54-15-5abc6367e7e81.jpg','jpg','image/jpeg','545524','0','2018-03-28 19:54:15','2018-03-28 19:54:15'),(18,0,'2018-03-29-03-54-16-5abc636864f59.jpg','/assets/media/2018-03-29-03-54-16-5abc636864f59.jpg','jpg','image/jpeg','497288','0','2018-03-28 19:54:16','2018-03-28 19:54:16');
/*!40000 ALTER TABLE `media__files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media__imageables`
--

DROP TABLE IF EXISTS `media__imageables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media__imageables` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(11) NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `swatch_color` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media__imageables`
--

LOCK TABLES `media__imageables` WRITE;
/*!40000 ALTER TABLE `media__imageables` DISABLE KEYS */;
INSERT INTO `media__imageables` VALUES (1,2,1,'Modules\\Page\\Entities\\Page','image',NULL,'2018-02-05 05:50:00','2018-02-05 06:17:23',NULL),(2,2,1,'Modules\\Blog\\Entities\\Post','thumbnail',NULL,'2018-02-05 23:34:31','2018-02-05 23:42:27',NULL),(4,8,2,'Modules\\Blog\\Entities\\Post','thumbnail',NULL,'2018-02-11 05:41:31','2018-02-11 05:41:31',NULL),(23,9,21,'Modules\\Product\\Entities\\Product','gallery',4,'2018-02-26 00:14:14','2018-04-03 01:12:15',NULL),(24,8,21,'Modules\\Product\\Entities\\Product','gallery',5,'2018-02-26 00:14:14','2018-04-03 01:12:15',NULL),(25,12,22,'Modules\\Product\\Entities\\Product','gallery',0,'2018-03-12 01:08:38','2018-03-25 18:42:24',NULL),(26,9,22,'Modules\\Product\\Entities\\Product','gallery',1,'2018-03-12 01:08:38','2018-03-25 18:42:24',NULL),(27,12,26,'Modules\\Product\\Entities\\Product','gallery',0,'2018-03-23 02:12:20','2018-03-30 00:37:02',NULL),(28,8,26,'Modules\\Product\\Entities\\Product','gallery',1,'2018-03-23 02:12:20','2018-03-30 00:37:02',NULL),(29,9,26,'Modules\\Product\\Entities\\Product','gallery',2,'2018-03-23 02:12:20','2018-03-30 00:37:02',NULL),(30,9,25,'Modules\\Product\\Entities\\Product','gallery',0,'2018-03-25 18:42:05','2018-04-01 18:16:20',NULL),(31,8,25,'Modules\\Product\\Entities\\Product','gallery',1,'2018-03-25 18:42:05','2018-04-01 18:16:20',NULL),(32,4,24,'Modules\\Product\\Entities\\Product','gallery',0,'2018-03-25 18:42:17','2018-03-25 18:42:17',NULL),(33,3,24,'Modules\\Product\\Entities\\Product','gallery',1,'2018-03-25 18:42:17','2018-03-25 18:42:17',NULL),(34,13,21,'Modules\\Product\\Entities\\Product','gallery',0,'2018-03-28 19:54:33','2018-04-03 01:12:15',NULL),(35,16,21,'Modules\\Product\\Entities\\Product','gallery',1,'2018-03-28 19:54:33','2018-04-03 01:12:15',NULL),(36,17,21,'Modules\\Product\\Entities\\Product','gallery',2,'2018-03-28 19:54:33','2018-04-03 01:12:15',NULL),(37,18,21,'Modules\\Product\\Entities\\Product','gallery',3,'2018-03-28 19:54:33','2018-04-03 01:12:15',NULL),(38,18,46,'Modules\\Product\\Entities\\Product','gallery',0,'2018-03-30 00:54:33','2018-03-30 01:08:11',NULL),(39,17,46,'Modules\\Product\\Entities\\Product','gallery',1,'2018-03-30 00:54:33','2018-03-30 01:08:11',NULL);
/*!40000 ALTER TABLE `media__imageables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu__menu_translations`
--

DROP TABLE IF EXISTS `menu__menu_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu__menu_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu__menu_translations_menu_id_locale_unique` (`menu_id`,`locale`),
  KEY `menu__menu_translations_locale_index` (`locale`),
  CONSTRAINT `menu__menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu__menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu__menu_translations`
--

LOCK TABLES `menu__menu_translations` WRITE;
/*!40000 ALTER TABLE `menu__menu_translations` DISABLE KEYS */;
INSERT INTO `menu__menu_translations` VALUES (1,1,'en',1,'header','2018-02-21 22:56:50','2018-02-22 02:26:12'),(2,1,'zh',1,'头部菜单','2018-02-21 22:56:50','2018-02-21 22:56:50');
/*!40000 ALTER TABLE `menu__menu_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu__menuitem_translations`
--

DROP TABLE IF EXISTS `menu__menuitem_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu__menuitem_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menuitem_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menu__menuitem_translations_menuitem_id_locale_unique` (`menuitem_id`,`locale`),
  KEY `menu__menuitem_translations_locale_index` (`locale`),
  CONSTRAINT `menu__menuitem_translations_menuitem_id_foreign` FOREIGN KEY (`menuitem_id`) REFERENCES `menu__menuitems` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu__menuitem_translations`
--

LOCK TABLES `menu__menuitem_translations` WRITE;
/*!40000 ALTER TABLE `menu__menuitem_translations` DISABLE KEYS */;
INSERT INTO `menu__menuitem_translations` VALUES (1,1,'en',0,'root',NULL,NULL,'2018-02-21 22:56:50','2018-02-21 22:56:50'),(2,1,'zh',0,'root',NULL,NULL,'2018-02-21 22:56:50','2018-02-21 22:56:50'),(3,2,'en',1,'home',NULL,'home','2018-02-22 00:01:16','2018-02-22 00:01:16'),(4,2,'zh',1,'home',NULL,'home','2018-02-22 00:01:16','2018-02-22 00:08:35'),(7,4,'en',1,'wedding dress',NULL,'cheap-wedding-dress-2018','2018-02-22 00:55:10','2018-02-22 23:29:16'),(8,4,'zh',1,'婚纱',NULL,'c/cheap-wedding-dress','2018-02-22 00:55:10','2018-03-25 18:22:55'),(9,5,'en',0,'shoes',NULL,'c/shoes','2018-03-25 18:46:18','2018-03-25 18:47:05'),(10,5,'zh',1,'鞋子',NULL,'c/shoes','2018-03-25 18:46:18','2018-03-25 18:47:05');
/*!40000 ALTER TABLE `menu__menuitem_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu__menuitems`
--

DROP TABLE IF EXISTS `menu__menuitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu__menuitems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `page_id` int(10) unsigned DEFAULT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'page',
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu__menuitems_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu__menuitems_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu__menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu__menuitems`
--

LOCK TABLES `menu__menuitems` WRITE;
/*!40000 ALTER TABLE `menu__menuitems` DISABLE KEYS */;
INSERT INTO `menu__menuitems` VALUES (1,1,NULL,0,NULL,'page','',NULL,NULL,NULL,NULL,NULL,'2018-02-21 22:56:50','2018-02-21 22:56:50',1,NULL),(2,1,1,0,'_self','page',NULL,NULL,1,NULL,NULL,NULL,'2018-02-22 00:01:16','2018-02-22 00:01:16',0,NULL),(4,1,NULL,0,'_self','internal',NULL,NULL,1,NULL,NULL,NULL,'2018-02-22 00:55:10','2018-03-28 21:46:37',0,NULL),(5,1,NULL,1,'_self','internal',NULL,NULL,1,NULL,NULL,NULL,'2018-03-25 18:46:18','2018-03-28 21:46:57',0,NULL);
/*!40000 ALTER TABLE `menu__menuitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu__menus`
--

DROP TABLE IF EXISTS `menu__menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu__menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu__menus`
--

LOCK TABLES `menu__menus` WRITE;
/*!40000 ALTER TABLE `menu__menus` DISABLE KEYS */;
INSERT INTO `menu__menus` VALUES (1,'header-menu',0,'2018-02-21 22:56:50','2018-02-21 22:56:50');
/*!40000 ALTER TABLE `menu__menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_07_02_230147_migration_cartalyst_sentinel',1),(2,'2016_06_24_193447_create_user_tokens_table',1),(3,'2014_10_14_200250_create_settings_table',2),(4,'2014_10_15_191204_create_setting_translations_table',2),(5,'2015_06_18_170048_make_settings_value_text_field',2),(6,'2015_10_22_130947_make_settings_name_unique',2),(7,'2017_09_17_164631_make_setting_value_nullable',2),(8,'2014_11_03_160015_create_menus_table',3),(9,'2014_11_03_160138_create_menu-translations_table',3),(10,'2014_11_03_160753_create_menuitems_table',3),(11,'2014_11_03_160804_create_menuitem_translation_table',3),(12,'2014_12_17_185301_add_root_column_to_menus_table',3),(13,'2015_09_05_100142_add_icon_column_to_menuitems_table',3),(14,'2016_01_26_102307_update_icon_column_on_menuitems_table',3),(15,'2016_08_01_142345_add_link_type_colymn_to_menuitems_table',3),(16,'2016_08_01_143130_add_class_column_to_menuitems_table',3),(17,'2017_09_18_192639_make_title_field_nullable_menu_table',3),(18,'2014_10_26_162751_create_files_table',4),(19,'2014_10_26_162811_create_file_translations_table',4),(20,'2015_02_27_105241_create_image_links_table',4),(21,'2015_12_19_143643_add_sortable',4),(22,'2017_09_20_144631_add_folders_columns_on_files_table',4),(23,'2014_11_30_191858_create_pages_tables',5),(24,'2017_10_13_103344_make_status_field_nullable_on_page_translations_table',5),(25,'2015_04_02_184200_create_widgets_table',6),(26,'2013_04_09_062329_create_revisions_table',7),(27,'2015_11_20_184604486385_create_translation_translations_table',7),(28,'2015_11_20_184604743083_create_translation_translation_translations_table',7),(29,'2015_12_01_094031_update_translation_translations_table_with_index',7),(30,'2016_07_12_181155032011_create_tag_tags_table',8),(31,'2016_07_12_181155289444_create_tag_tag_translations_table',8),(34,'2014_09_27_170107_create_posts_table',10),(35,'2014_09_27_175411_create_post_translations_table',10),(36,'2014_09_27_175736_create_categories_table',10),(37,'2014_09_27_175804_create_category_translations_table',10),(38,'2015_05_29_180714_add_status_column_to_post_table',10),(41,'2016_07_21_081229115922_create_attribute_attributes_table',11),(42,'2016_07_21_081229374072_create_attribute_attribute_translations_table',11),(67,'2018_02_05_133152976979_create_product_attrsets_table',12),(68,'2018_02_05_133153231348_create_product_attrset_translations_table',12),(69,'2018_02_05_133153494643_create_product_products_table',12),(70,'2018_02_05_133153750701_create_product_product_translations_table',12),(71,'2018_02_05_133154012183_create_product_categories_table',12),(72,'2018_02_05_133154266494_create_product_category_translations_table',12),(73,'2018_02_05_133154523767_create_product_images_table',12),(74,'2018_02_05_133155035928_create_product_skus_table',12),(75,'2018_02_05_133155291155_create_product_sku_translations_table',12),(76,'2018_02_05_133155547986_create_product_attrs_table',12),(77,'2018_02_05_133155799894_create_product_attr_translations_table',12);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page__page_translations`
--

DROP TABLE IF EXISTS `page__page_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page__page_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `page__page_translations_page_id_locale_unique` (`page_id`,`locale`),
  KEY `page__page_translations_locale_index` (`locale`),
  CONSTRAINT `page__page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `page__pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page__page_translations`
--

LOCK TABLES `page__page_translations` WRITE;
/*!40000 ALTER TABLE `page__page_translations` DISABLE KEYS */;
INSERT INTO `page__page_translations` VALUES (1,1,'en','Home page','home','1','<p>english&nbsp;</p>','Home page',NULL,NULL,NULL,NULL,NULL,'2018-02-05 02:08:18','2018-02-05 06:18:08'),(2,1,'zh','首页标题','home','1','<p>chinese</p>',NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-05 05:50:00','2018-02-05 06:18:08');
/*!40000 ALTER TABLE `page__page_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page__pages`
--

DROP TABLE IF EXISTS `page__pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page__pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `template` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page__pages`
--

LOCK TABLES `page__pages` WRITE;
/*!40000 ALTER TABLE `page__pages` DISABLE KEYS */;
INSERT INTO `page__pages` VALUES (1,1,'home','2018-02-05 02:08:18','2018-02-05 02:08:18');
/*!40000 ALTER TABLE `page__pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `persistences`
--

DROP TABLE IF EXISTS `persistences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=1711 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persistences`
--

LOCK TABLES `persistences` WRITE;
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;
INSERT INTO `persistences` VALUES (1,1,'tvHXXWJfUxL4IlesCMbt7kHZUwYphPTL','2018-02-05 02:08:57','2018-02-05 02:08:57'),(2,1,'taFsIvzn2FPYP7hg4RCNqFolhjgAUWhp','2018-02-05 02:09:07','2018-02-05 02:09:07'),(3,1,'fPRbUGH5sro5UggdQs4KCIbCSAUCEtfb','2018-02-05 02:09:12','2018-02-05 02:09:12'),(4,1,'DgJSwYDWaLdeQMRYprqs5cFmDfwUtErt','2018-02-05 02:09:12','2018-02-05 02:09:12'),(5,1,'rsFqUEAvRr0R18jxcipZ0sNxemTD92Db','2018-02-05 02:09:12','2018-02-05 02:09:12'),(6,1,'4nUOoADYeypOnwJhxfTNd9Ig451Lg0MX','2018-02-05 02:09:26','2018-02-05 02:09:26'),(7,1,'krcEti7hRIsMU7c2s2t2whNYxe1bIEyV','2018-02-05 02:09:28','2018-02-05 02:09:28'),(8,1,'Jd74qBxioK3xEElpHOAqO6Qm1Uw8Qnot','2018-02-05 02:14:51','2018-02-05 02:14:51'),(9,1,'60p1RKYynesGWxihCPAjuzn2ux8NSjeV','2018-02-05 02:14:53','2018-02-05 02:14:53'),(10,1,'coawhNgGe8XTKhKge9ncH9XEFSTwwCQG','2018-02-05 02:14:57','2018-02-05 02:14:57'),(11,1,'M98iMctAYOk9aRvGJhG38EfrTq5zh3tA','2018-02-05 02:14:59','2018-02-05 02:14:59'),(12,1,'wvmUv4tWVY9Vi1diPDOGbres6koFVLlj','2018-02-05 02:14:59','2018-02-05 02:14:59'),(13,1,'r3Vcle2cfZhEFRFZgY0HJwg8NuAbYSVi','2018-02-05 02:15:05','2018-02-05 02:15:05'),(14,1,'74YTU4h2eeT5gJVxYjWrObO0yHCRIwX5','2018-02-05 02:15:06','2018-02-05 02:15:06'),(15,1,'REJxKCVqAqM6dCgrHuB2vOQy0Ts3dAwW','2018-02-05 02:15:09','2018-02-05 02:15:09'),(16,1,'4uTQY3A3sfktRzImnfqmRgxozS7YMR8O','2018-02-05 02:15:34','2018-02-05 02:15:34'),(17,1,'YSgRW1fVGe5kSZG9GciAN9p4gv8x2B1f','2018-02-05 05:38:48','2018-02-05 05:38:48'),(18,1,'tJDu7TSIBAXi8tL54GGVBDqZGV3yWeF8','2018-02-05 05:38:49','2018-02-05 05:38:49'),(19,1,'E0czVm4OkodKmA7KLd5bbOOC4GQZ8fse','2018-02-05 05:38:54','2018-02-05 05:38:54'),(20,1,'qxHmCWHUcozCNtLQRYUyGp8xygYTM0d1','2018-02-05 05:38:58','2018-02-05 05:38:58'),(21,1,'on5fc8PF7ggWHDo76rkizLB8WroKvqNP','2018-02-05 05:38:59','2018-02-05 05:38:59'),(22,1,'JEAPLovQZzDdNAzslW77je2hzqzfKhLu','2018-02-05 05:39:03','2018-02-05 05:39:03'),(23,1,'UzKof0vyTZOqKZp14JMbCZP6sfzRWLeu','2018-02-05 05:39:05','2018-02-05 05:39:05'),(24,1,'zuFAtBUxV0xdEnP7iH8dOI2PmEcdrtOg','2018-02-05 05:41:13','2018-02-05 05:41:13'),(25,1,'Ln93DKK6aaIgieod5upOKusWj7OeMWnI','2018-02-05 05:43:11','2018-02-05 05:43:11'),(26,1,'qnFQyQ1rEdK61Ua4gNxrui4ajkHANmzn','2018-02-05 05:44:53','2018-02-05 05:44:53'),(27,1,'pDSPGNLobGeOXLCACkXgqiSuZmJSk8ks','2018-02-05 05:45:09','2018-02-05 05:45:09'),(28,1,'4J7W35aTeTYcJIgs2cOU7WD76WbJyVzc','2018-02-05 05:45:21','2018-02-05 05:45:21'),(29,1,'lVKvaU6E8PmGtGgNgbqH4QP5x2k3XUDH','2018-02-05 05:45:21','2018-02-05 05:45:21'),(30,1,'mcPqalHmoNtdT3PBwzM14fKHh2pq2uk9','2018-02-05 05:48:48','2018-02-05 05:48:48'),(31,1,'m0NmsoH7CiT4XyKMaM4goTiuRUgWJQjp','2018-02-05 05:48:53','2018-02-05 05:48:53'),(32,1,'Qmu4b7gYdmHQBfa8ZTsT8NeRuOigcknL','2018-02-05 05:48:53','2018-02-05 05:48:53'),(33,1,'2w7Um7iH6fboDWSkFL9X4cKF5uLcqF3s','2018-02-05 05:48:53','2018-02-05 05:48:53'),(34,1,'Q0ZSkT6fqCmTJLxwZKW38jLjtnohJPUc','2018-02-05 05:48:55','2018-02-05 05:48:55'),(35,1,'q1keauczPBQSNHhLarcsCMV3dpdQO98L','2018-02-05 05:49:07','2018-02-05 05:49:07'),(36,1,'d0yv24O4Ee6zeYaoaVNSCGJ96VzvTCsz','2018-02-05 05:49:31','2018-02-05 05:49:31'),(37,1,'HTHgFucz155Yr1OB7Lv1i6sivSUJHwAG','2018-02-05 05:49:44','2018-02-05 05:49:44'),(38,1,'eIw6uw5lPLuP0ezik1aZJRebs04EEdXv','2018-02-05 05:50:00','2018-02-05 05:50:00'),(39,1,'TRkZYqdBFeFNn8zk1b6tRvKqULZKlalb','2018-02-05 05:50:01','2018-02-05 05:50:01'),(40,1,'IKSRET3Va4h00GAfdwDoOXRyhVJ25G5o','2018-02-05 05:50:03','2018-02-05 05:50:03'),(41,1,'n7QJler9X7l1s61sXQPkQDn9a1NT7ULW','2018-02-05 05:50:03','2018-02-05 05:50:03'),(42,1,'S7FuqFn4dGEnf7IGQzLkX664hT7DaPI6','2018-02-05 05:50:03','2018-02-05 05:50:03'),(43,1,'jXfXrXys6gQsWTk72HOf2G4PsVQL4AAI','2018-02-05 05:50:23','2018-02-05 05:50:23'),(44,1,'k3Fg1rPeLIPjOIy1qfBQxFLCLV1RntnQ','2018-02-05 05:50:23','2018-02-05 05:50:23'),(45,1,'9GH1PQvOGJm2KgDofwyRFnCyn6H791Bb','2018-02-05 05:50:25','2018-02-05 05:50:25'),(46,1,'zYptmVY7srqQE3f7AodVkR3CzeQWXLEO','2018-02-05 05:50:25','2018-02-05 05:50:25'),(47,1,'WiEF6bXBJ4YkhjMreP6a6kKAkycqPnG6','2018-02-05 05:50:25','2018-02-05 05:50:25'),(48,1,'kRs0cMCaBfuLW6S5H57lFBF60KffZeOz','2018-02-05 05:52:01','2018-02-05 05:52:01'),(49,1,'LPfWYEYwdn7Ff6zKujZb7fZZMkWO5obg','2018-02-05 05:54:16','2018-02-05 05:54:16'),(50,1,'lm2znvvYSUdWRk0ppkc7jdd1UbBEUaUh','2018-02-05 05:54:16','2018-02-05 05:54:16'),(51,1,'kHoVKPRRF8Q5IJ1S7ylgvbAGHsxth36P','2018-02-05 05:54:16','2018-02-05 05:54:16'),(52,1,'iewLPlXGWIUgrso1HD36wGsoUhqVyzwA','2018-02-05 05:54:23','2018-02-05 05:54:23'),(53,1,'o71aa4BUTmKCEUzEfGejmRHdSTRjXrWi','2018-02-05 05:54:28','2018-02-05 05:54:28'),(54,1,'BH4WgH1USDZNJEoYPhfbJZIRSIw8o43p','2018-02-05 05:54:37','2018-02-05 05:54:37'),(55,1,'NImVEHcKQXrY324Ly66jGco8JqMbD4Us','2018-02-05 05:55:01','2018-02-05 05:55:01'),(56,1,'wHOj466nMrmjOtQGPDtFq1oEnzSUYaYY','2018-02-05 05:55:02','2018-02-05 05:55:02'),(57,1,'ADMqtCeeby1XAAdcNHmdy408y66x4GqN','2018-02-05 05:56:52','2018-02-05 05:56:52'),(58,1,'BOAuwDKEqHaIs6kSOsRN08w7mo1nNLDz','2018-02-05 05:57:30','2018-02-05 05:57:30'),(59,1,'sBosmNCDLOiZvVyR9pfoBUFVmOxPe4XO','2018-02-05 05:57:36','2018-02-05 05:57:36'),(60,1,'QJtmTSCYWokERbgnBGNfybNdLR1MoQLo','2018-02-05 05:57:40','2018-02-05 05:57:40'),(61,1,'AhYQcHoYgHUqpMQnMcOdRP81fwgV2GTc','2018-02-05 05:58:00','2018-02-05 05:58:00'),(62,1,'Xma6ZEx3OIqEIv9XANJwphunswojoCut','2018-02-05 05:59:26','2018-02-05 05:59:26'),(63,1,'uFz9Fb2NHqD4mdhZVxcUSt35cChUKJST','2018-02-05 06:00:42','2018-02-05 06:00:42'),(64,1,'ZiGJEbzrpWRonNemfEasba7taubk5mT6','2018-02-05 06:01:22','2018-02-05 06:01:22'),(65,1,'ysZeDnprCzaL92BzKM3FbPoO5zfbG5lE','2018-02-05 06:01:29','2018-02-05 06:01:29'),(66,1,'VSNsfPcfs9wnSnjPCUZdcuWCe1r8o9EJ','2018-02-05 06:01:36','2018-02-05 06:01:36'),(67,1,'fhN8XxWw3AAZVbXyVSEr42y14zcqxxFQ','2018-02-05 06:01:57','2018-02-05 06:01:57'),(68,1,'IMfcmrMsBmY7xcH88paC78E3nG0vVlBa','2018-02-05 06:02:17','2018-02-05 06:02:17'),(69,1,'9x78lukdT0Q0xEYyOM5yFr4IOchNCp9k','2018-02-05 06:02:45','2018-02-05 06:02:45'),(70,1,'wsb7dLLcBPqpqzp2dVpFJGE8Po7dvrlu','2018-02-05 06:03:22','2018-02-05 06:03:22'),(71,1,'3oSht0JbD5dwjwUXNcMCL2tuSS7kwG8L','2018-02-05 06:04:05','2018-02-05 06:04:05'),(72,1,'tPCL2OvgNQCx2FDZQSC68kjNJt0ZzQMi','2018-02-05 06:16:55','2018-02-05 06:16:55'),(73,1,'zdr710ZzDFcq6Wn4viqCNkmP8fv60t18','2018-02-05 06:16:59','2018-02-05 06:16:59'),(74,1,'amrmsbDsSocJcTr156HRvd2sP25F2dA2','2018-02-05 06:17:07','2018-02-05 06:17:07'),(75,1,'qvVsY0yxgcbayjd27ZiWHgD5NxoYVuVo','2018-02-05 06:17:10','2018-02-05 06:17:10'),(76,1,'xDPTNXnjLq4SonIjinnbag6KplYPwozh','2018-02-05 06:17:10','2018-02-05 06:17:10'),(77,1,'IFGSdpw0bx19d8tdySmMIenN9a7fTg7F','2018-02-05 06:17:10','2018-02-05 06:17:10'),(78,1,'7AA6fAjQzVm8xVtVE1mXO524Yx8jZD7h','2018-02-05 06:17:23','2018-02-05 06:17:23'),(79,1,'R2Q4Mocnryr3NHFMD9YRNzZsk2x3IEQX','2018-02-05 06:17:23','2018-02-05 06:17:23'),(80,1,'Yb7LTqV262vcuFvh3KtGSlwT9laiHx4d','2018-02-05 06:17:42','2018-02-05 06:17:42'),(81,1,'f1cOcczHzmuNAZ2Ehx1suU6PTWT2qHTi','2018-02-05 06:17:42','2018-02-05 06:17:42'),(82,1,'7dxloYjFdpBtwIJvMnMtJO3ioyjArdZr','2018-02-05 06:17:42','2018-02-05 06:17:42'),(83,1,'DcSrm3sIKzRiSEtNq2m4KU1vNyzOI94I','2018-02-05 06:17:51','2018-02-05 06:17:51'),(84,1,'bBFARZFyFp5qlG28uYv9Qq06m6mMm2ai','2018-02-05 06:17:54','2018-02-05 06:17:54'),(85,1,'4HSTasfghPtSoSaIB2veyjZg6HqA5rdL','2018-02-05 06:17:54','2018-02-05 06:17:54'),(86,1,'uT5GwPC6nBgLr2qkyVKjfeNwVC2kZMVC','2018-02-05 06:17:54','2018-02-05 06:17:54'),(87,1,'w3z748NmbfQhHR9XK9ZaJDDtkUBfE72a','2018-02-05 06:18:08','2018-02-05 06:18:08'),(88,1,'TmPMWZseg6bcLJkim9tapfXCJAz2UvZ8','2018-02-05 06:18:08','2018-02-05 06:18:08'),(89,1,'I2sndaMsZ3lsqK7OXyovG63FC3Vi3M1v','2018-02-05 06:18:10','2018-02-05 06:18:10'),(90,1,'deXuckNMe51WHEqyHBkMkcgQlgMx2Joz','2018-02-05 06:18:11','2018-02-05 06:18:11'),(91,1,'1jBULuQE3g8j5YRbx0BEfHJxgQlSZxQB','2018-02-05 06:18:11','2018-02-05 06:18:11'),(92,1,'UEw3wcsAjyJYhztbkERPYYxTIEwYr0WX','2018-02-05 06:18:19','2018-02-05 06:18:19'),(93,1,'ntHXIUt82AA3SCo3MjGj4r3BDyt0FGkp','2018-02-05 06:18:19','2018-02-05 06:18:19'),(94,1,'SZD3PiDejZVgOU0EWzFlG1GwRqKPSJCh','2018-02-05 06:18:20','2018-02-05 06:18:20'),(95,1,'bxkbUOmlObDT049S4HfajGCrs4eZ9Cw5','2018-02-05 23:04:34','2018-02-05 23:04:34'),(96,1,'n2qORkVHmcNm5s9yXHxbZYnqVmXfmoL6','2018-02-05 23:04:39','2018-02-05 23:04:39'),(97,1,'cDaDmgycOGtVSP9qlhjDPlIGYf27gPes','2018-02-05 23:10:00','2018-02-05 23:10:00'),(98,1,'zzEkC2I9pYOtPMCZPLRUB0K7TcYHHA3F','2018-02-05 23:11:09','2018-02-05 23:11:09'),(99,1,'PwW6a0nFeuRuaTfy9F8KrSWYu4ApdmQd','2018-02-05 23:11:09','2018-02-05 23:11:09'),(100,1,'wJEWELT1cHDKL9SC5UoU8FeuGuicVzGO','2018-02-05 23:11:10','2018-02-05 23:11:10'),(101,1,'hZrFukSBRB0cvid2R1eDaCJCjrSn2Tsw','2018-02-05 23:12:33','2018-02-05 23:12:33'),(102,1,'n34exN2uoBNzt1BIdqtRLxCiEcailQ1H','2018-02-05 23:12:33','2018-02-05 23:12:33'),(103,1,'DU6l196bamblYsXDMM5Qzl2Tt1tRRNga','2018-02-05 23:12:33','2018-02-05 23:12:33'),(104,1,'tAgNhk7bcW28SNPR4YfoiSN1Kcj37FUF','2018-02-05 23:12:43','2018-02-05 23:12:43'),(105,1,'1hNYBEdnp9sw3Xv2VNMUzhFGlYHSKifL','2018-02-05 23:12:43','2018-02-05 23:12:43'),(106,1,'Ic12jCT243U8a6EGpZJOXDhKjPcAPVO0','2018-02-05 23:12:43','2018-02-05 23:12:43'),(107,1,'J89v3rlVQ0O51YWKJO6ImrRDKHMeKPem','2018-02-05 23:12:59','2018-02-05 23:12:59'),(108,1,'IUc40BHJ8UfWAZBIJN7wwa7XrovFE0Bs','2018-02-05 23:12:59','2018-02-05 23:12:59'),(109,1,'WtqfmvP2OstGR1xhG8YgyyFrw9RQQuza','2018-02-05 23:12:59','2018-02-05 23:12:59'),(110,1,'EI8CrWvnGh6TF8lGxBubkOJbWeO8uD1H','2018-02-05 23:13:31','2018-02-05 23:13:31'),(111,1,'hZJEIsViuGBjA2rPptt2jUWyYufXPRfb','2018-02-05 23:13:31','2018-02-05 23:13:31'),(112,1,'buOT9AZ4M9l5SguWGBJQpvcoBTLFzjFO','2018-02-05 23:13:31','2018-02-05 23:13:31'),(113,1,'2LWei6OjdyV1bGZOoz980H7C4mEofsum','2018-02-05 23:15:59','2018-02-05 23:15:59'),(114,1,'ffbqr1l8zly0MjStSz4xoHa5m1kkUvi3','2018-02-05 23:16:02','2018-02-05 23:16:02'),(115,1,'7vBfDb6mzUgycH7nrmW8GcqWsyxLjESM','2018-02-05 23:16:02','2018-02-05 23:16:02'),(116,1,'UXF07M5mZ6Pf97vIcT1W5VaEuiESA7f5','2018-02-05 23:16:02','2018-02-05 23:16:02'),(117,1,'iMPHjirQNF9dCxms9aR0guETAzJ9aMY5','2018-02-05 23:16:23','2018-02-05 23:16:23'),(118,1,'42RJwnMsk5UE9VeX3KfK4U1KirwS02Z5','2018-02-05 23:16:23','2018-02-05 23:16:23'),(119,1,'m9dnE6IS0ruHKV0TIXTYHE2eGP0StH2K','2018-02-05 23:16:23','2018-02-05 23:16:23'),(120,1,'LlsO0DkTEveuzAr1Upf3O9UVevHFgQfw','2018-02-05 23:16:45','2018-02-05 23:16:45'),(121,1,'gNo7vlsXyrckk2J08ixRskra7VCdEe9E','2018-02-05 23:16:45','2018-02-05 23:16:45'),(122,1,'kBo3QHxQCB1xWPv7JDnIpsRCxOVoRCWe','2018-02-05 23:16:45','2018-02-05 23:16:45'),(123,1,'s447xjnXZ2KTaZeYORhgvXkonrSWJH3B','2018-02-05 23:17:09','2018-02-05 23:17:09'),(124,1,'tCbTDVCKvba300MQOUIGOqqD3qdUr3Wg','2018-02-05 23:17:09','2018-02-05 23:17:09'),(125,1,'FNcjqF1eJSPPe7jesoJej7cksIPg8RHr','2018-02-05 23:17:09','2018-02-05 23:17:09'),(126,1,'7uxZBSo77dUy1vjW8Sm1QVkURjR2fJVV','2018-02-05 23:20:04','2018-02-05 23:20:04'),(127,1,'F6cD3Jl8b0mkC0ZUN3ekuaExtvQsTQfr','2018-02-05 23:20:04','2018-02-05 23:20:04'),(128,1,'cf9EUOoPxv87wzIgZBQDnKEdcJLbdFI5','2018-02-05 23:20:04','2018-02-05 23:20:04'),(129,1,'iIMxmI1u1gQvBZjglWQSMSzArlg0QVo9','2018-02-05 23:20:08','2018-02-05 23:20:08'),(130,1,'GNRxs7RcDj7TCCDWhyUR44GQnaEkHXkY','2018-02-05 23:20:10','2018-02-05 23:20:10'),(131,1,'IkES8prG1A0KFZEoPZj0QTJPDzzGuSgR','2018-02-05 23:20:10','2018-02-05 23:20:10'),(132,1,'S7C043komhEbn2x9922NpnTmmTthefqL','2018-02-05 23:20:18','2018-02-05 23:20:18'),(133,1,'oGIMfyvwpA9SVuj7z0qZI9FMZ9wP6oaN','2018-02-05 23:20:18','2018-02-05 23:20:18'),(134,1,'vb8tesgt3CrB1aauPyq2NcVJc82TtR1q','2018-02-05 23:20:22','2018-02-05 23:20:22'),(135,1,'5Rw5hMsmT04tRvR2KT96oXsXDrVpPYQp','2018-02-05 23:21:57','2018-02-05 23:21:57'),(136,1,'PvQfQC2iYremPW8fdZ52UBQenwKK3D49','2018-02-05 23:22:43','2018-02-05 23:22:43'),(137,1,'UhtUb7SCroKevin1M9OGnmGXwzh8tb8P','2018-02-05 23:22:44','2018-02-05 23:22:44'),(138,1,'KGrhLg2cYpo0a3d7w2muj0mufrskoJqi','2018-02-05 23:22:44','2018-02-05 23:22:44'),(139,1,'12M4GMj2HrXkh7ZrpdhXHUjm5bozZzqk','2018-02-05 23:22:51','2018-02-05 23:22:51'),(140,1,'I8mBRR0RciYMx3EyEq8jwny20TNZ7sAB','2018-02-05 23:22:51','2018-02-05 23:22:51'),(141,1,'RGnc7daVLhpMI1byYggyohH7TYBsFqcI','2018-02-05 23:22:54','2018-02-05 23:22:54'),(142,1,'RmlANMFlKvOGwqbdLi3sVhyxDGcl3wxf','2018-02-06 00:00:12','2018-02-06 00:00:12'),(143,1,'3eq93vOz9syvFlbLeUvYynHwyJsNZjWF','2018-02-06 02:34:46','2018-02-06 02:34:46'),(144,1,'D74EnHpQI3H5tkJCkBgHDYxPlLdTMNmi','2018-02-06 17:09:32','2018-02-06 17:09:32'),(145,1,'XWl4W5CjGVv0aaAH6nIah82V3EqdR2Rz','2018-02-06 21:43:24','2018-02-06 21:43:24'),(146,1,'pMd9Jl3nhqe6p6Bxvz4OJfM3GnAeRdTW','2018-02-06 23:44:48','2018-02-06 23:44:48'),(147,1,'Bfvi1AkeoQf7NqmB89YCYGcifaffFOIc','2018-02-06 23:44:52','2018-02-06 23:44:52'),(148,1,'OKVjPdqhzROnQ1tlJVqC0JrDCURKK45z','2018-02-07 17:04:08','2018-02-07 17:04:08'),(149,1,'hX1Qu2ahbMwX3cgN5BuLVFtYJhMFmSY2','2018-02-07 21:32:41','2018-02-07 21:32:41'),(150,1,'4OJgzDpRfg3ns60rH7wPdQRXlWntLzVt','2018-02-08 17:10:03','2018-02-08 17:10:03'),(151,1,'wKOIR8T25K5zKbAWvDad39y8zrdsigUd','2018-02-08 21:38:16','2018-02-08 21:38:16'),(152,1,'26RWmDNuV7HKtJlILDJCublDYIB8fTI8','2018-02-09 00:09:17','2018-02-09 00:09:17'),(153,1,'8ZQFRk7dS1TBoFJNORc1F8n3oVuOr3u1','2018-02-09 16:13:02','2018-02-09 16:13:02'),(154,1,'uZv04LRVGfQLLQaFP4q6nxK7nouzF5YS','2018-02-09 19:36:18','2018-02-09 19:36:18'),(155,1,'ntjg4Q5LdhbJWSPNYXqgDkwhgFsDi1bA','2018-02-09 19:37:03','2018-02-09 19:37:03'),(156,1,'VYnSq2rNUuNap9J5lBw7OOTtEux6vf7z','2018-02-09 19:37:35','2018-02-09 19:37:35'),(157,1,'p3AJkjy89z4KTicTNs6C6VEA2xjn8bQ9','2018-02-09 19:39:39','2018-02-09 19:39:39'),(158,1,'kEoziO5uSgAKrDLLequG2bzg6nDgGPty','2018-02-09 19:40:13','2018-02-09 19:40:13'),(159,1,'3HDPzWhcDcTu0qMkSP1r69MyCo9NwScd','2018-02-09 20:00:45','2018-02-09 20:00:45'),(160,1,'FgcAePV6eNWByKO41hV3UGBNjIseoPX9','2018-02-09 20:01:06','2018-02-09 20:01:06'),(161,1,'4E2GWFSYLdvPlCrAS9XKigEGjOkByKUC','2018-02-09 20:02:12','2018-02-09 20:02:12'),(162,1,'tK1LgB9YDZua6w5FNI4BQg9xHWEXFEW0','2018-02-09 20:31:22','2018-02-09 20:31:22'),(163,1,'ew3CoIEdk6OngsT0RNLtDGxtaxG9siZv','2018-02-09 20:31:38','2018-02-09 20:31:38'),(164,1,'swtN9zP8xsJjhScXJCgwdTdA2NFsNoSl','2018-02-09 20:33:20','2018-02-09 20:33:20'),(165,1,'FscoyEfVFHUcBoOrHeigS8YFmxK0e6kn','2018-02-09 20:35:32','2018-02-09 20:35:32'),(166,1,'YwX34bPSvqZ1Bx7O35jDocxL1DxNsDjY','2018-02-09 20:37:00','2018-02-09 20:37:00'),(167,1,'HtLEH3usaXlAjfKgTX46YDV6Jd2vgGcm','2018-02-09 20:37:17','2018-02-09 20:37:17'),(168,1,'UDvUwR94zs2ypGXmAolwKWETnxViOs3A','2018-02-09 20:40:05','2018-02-09 20:40:05'),(169,1,'8h0fQcO5aGKkZmggf4kDI0cEspmka2Q3','2018-02-09 20:41:23','2018-02-09 20:41:23'),(170,1,'w6DYUfYPkArTkXUuB5hreVTyOwMx9sQe','2018-02-09 20:50:17','2018-02-09 20:50:17'),(171,1,'xwhFuUxGs0Pu2TNM6K4Q8n5wLQbv2hjV','2018-02-09 20:51:55','2018-02-09 20:51:55'),(172,1,'1yTD2KW8HhFKLmbCNIxZ3LAGG749aPtm','2018-02-09 20:56:12','2018-02-09 20:56:12'),(173,1,'aFz216R1WNUJmWDj1p0tuCOdvaIpaoG2','2018-02-10 17:05:29','2018-02-10 17:05:29'),(174,1,'nhwJJ1YdVLMZZH78jfxxsxRsQuyac18A','2018-02-10 17:05:39','2018-02-10 17:05:39'),(175,1,'xV6kSBg6jaQXijpbffE5h2LESUTtOTzn','2018-02-10 17:05:45','2018-02-10 17:05:45'),(176,1,'Pe8Dr8kbL8NO2V55N290xW0yqqzkmvTy','2018-02-10 17:06:48','2018-02-10 17:06:48'),(177,1,'Q5QV5vsf3yWxr4ubPtVsz8916TikvAlw','2018-02-10 17:07:05','2018-02-10 17:07:05'),(178,1,'Zea2CDJboRMo9Pe0x44UKohUDdPcEu4Z','2018-02-10 17:07:41','2018-02-10 17:07:41'),(179,1,'r5TDK7iVDWsuyHXtdFCdU7suyCbYyVdp','2018-02-10 17:08:08','2018-02-10 17:08:08'),(180,1,'Bvf1Bflz4ynq5fUJY8erJm4nqrpFKice','2018-02-10 17:08:27','2018-02-10 17:08:27'),(181,1,'xu4jkSKg8dLzq6XDjDXkMNtM6J5iRJwx','2018-02-10 17:34:31','2018-02-10 17:34:31'),(182,1,'2mB67xI9gqZuBnwFv2A1pJPWIC0yUE0T','2018-02-10 17:34:50','2018-02-10 17:34:50'),(183,1,'9XWX55TTQC8ifHX2WbF9LtB1kTXCbAfN','2018-02-10 17:35:05','2018-02-10 17:35:05'),(184,1,'r0N1DP5oasQLi34GDoD8HIorZLvXE6xe','2018-02-10 17:35:12','2018-02-10 17:35:12'),(185,1,'XxtvFilu5vKDKBOAF2GzsvDB3RmE5d0g','2018-02-10 17:35:33','2018-02-10 17:35:33'),(186,1,'mXmZfioNIeqzRguGJcHodNTNb01QwF4U','2018-02-10 17:36:04','2018-02-10 17:36:04'),(187,1,'IlvZyQFcfP1oy42ZEi22k1qz8QRrM2K2','2018-02-10 17:39:11','2018-02-10 17:39:11'),(188,1,'N9F1IAY1ONw8KUTuisKiiAahJcIbwsjA','2018-02-10 17:39:45','2018-02-10 17:39:45'),(189,1,'f0ckuTWbWhFMFHbxDWWih7r9pdEWkBkD','2018-02-10 17:40:54','2018-02-10 17:40:54'),(190,1,'ncIzdApydbImo8YarDUM8MxH7V5k746K','2018-02-10 17:41:12','2018-02-10 17:41:12'),(191,1,'X43mVJjkAElClLbVSU2AW5vjBsQFdeCy','2018-02-10 17:41:24','2018-02-10 17:41:24'),(192,1,'gwRM53cemEhPyKtVE52WcnvgaCp0iFjc','2018-02-10 17:42:31','2018-02-10 17:42:31'),(193,1,'11Lm4z3mnauzC0PEDTt9zBMc1EAddZpY','2018-02-10 17:43:00','2018-02-10 17:43:00'),(194,1,'KDGqN2KtTFZWEcFaiiYXfLwv7i4u0QUt','2018-02-10 17:49:57','2018-02-10 17:49:57'),(195,1,'uSn9BssDb3d88KZ3GgacooLHuujb09hm','2018-02-10 17:50:36','2018-02-10 17:50:36'),(196,1,'CIK1OcEDeuknkN3FJIIqLHi9zsl6aP6S','2018-02-10 17:52:49','2018-02-10 17:52:49'),(197,1,'FNGYjCirSGWpxfcml6Y7oPRQT7XLtNTl','2018-02-10 17:53:01','2018-02-10 17:53:01'),(198,1,'RjdaagmtV5SaMyGGSWh7D485GypMMMIQ','2018-02-10 17:53:29','2018-02-10 17:53:29'),(199,1,'Am7k3zsponJOFdblwV2ElEsaEijoterU','2018-02-10 17:54:30','2018-02-10 17:54:30'),(200,1,'wHKpH2SNwBSMd9ecewnpPuD68zLNhv41','2018-02-10 17:54:31','2018-02-10 17:54:31'),(201,1,'dzz1QdDyEMcMcMG3hZ9cxofSac7yWCS5','2018-02-10 17:54:35','2018-02-10 17:54:35'),(202,1,'ztT2MSjwyFAkzUMTWyd929YFAwDynAyI','2018-02-10 17:54:45','2018-02-10 17:54:45'),(203,1,'ks1HrSFjglQOqcAbiMr8UClKNtSvQzOL','2018-02-10 18:14:32','2018-02-10 18:14:32'),(204,1,'gH3DtsQH6AbJ2K2NTBsibHT4WX1OsdAW','2018-02-10 18:16:29','2018-02-10 18:16:29'),(205,1,'mtfey8gGTp8IWgvA67YJFVzPQwMP6Uxe','2018-02-10 18:18:46','2018-02-10 18:18:46'),(206,1,'ofpSeq2WHiqYKmzByMFBibMRvuIhTZQI','2018-02-10 18:19:19','2018-02-10 18:19:19'),(207,1,'7CQCAqt9prCOfeDrci3b2D2fM8cbCrPC','2018-02-10 18:26:35','2018-02-10 18:26:35'),(208,1,'v2h8fFxZwZWFspj59TqsfWZuGlwmcAxt','2018-02-10 18:27:15','2018-02-10 18:27:15'),(209,1,'udFZd2XklCRbbMbDhukhjeymxJBYHvTy','2018-02-10 18:28:07','2018-02-10 18:28:07'),(210,1,'hTLuHw5HsSgbQDEJ1KpZDRYR7yJO00T2','2018-02-10 18:28:49','2018-02-10 18:28:49'),(211,1,'uR7to9TxuL3yE1gJRTe1Rcxw9ifOmkz0','2018-02-10 18:34:06','2018-02-10 18:34:06'),(212,1,'9yd1RokQL4i6fNFv5KeFfFpHtmTeuHvT','2018-02-10 18:34:53','2018-02-10 18:34:53'),(213,1,'IB3Aeohqce3EeZx5hcb9VbSrLvExZWIZ','2018-02-10 18:39:34','2018-02-10 18:39:34'),(214,1,'ngADZyXIAX6MvUsclBX43xe95vpZrQLu','2018-02-10 18:40:12','2018-02-10 18:40:12'),(215,1,'Bf3Udk87POks6a4XMpIrMJOK9UBXRvhQ','2018-02-10 18:42:49','2018-02-10 18:42:49'),(216,1,'gRdaZoSUPGtZzfd1mcKLtaR7vlY9EnTE','2018-02-10 18:43:21','2018-02-10 18:43:21'),(217,1,'ug94AnJl6aXB6w45aXJbZBDAd06gPJ1I','2018-02-10 18:44:10','2018-02-10 18:44:10'),(218,1,'XMTzBcCV9CTLzDnUsDyLyx7E5nZN9xoC','2018-02-10 20:38:13','2018-02-10 20:38:13'),(219,1,'0IBQGewacs9vzKrmpGpwgpOXqyjHRBJG','2018-02-10 20:38:17','2018-02-10 20:38:17'),(220,1,'wABSfvYgXNGSP7uSpx4H1KkGIpcRI17W','2018-02-10 20:38:30','2018-02-10 20:38:30'),(221,1,'PpA0cPqRiIXUMWfTxdIvwcBLNHvz0rxF','2018-02-10 20:39:56','2018-02-10 20:39:56'),(222,1,'V8vxLpnDmS9MPNJZMQrQIUW1238FkZmI','2018-02-10 20:39:59','2018-02-10 20:39:59'),(223,1,'jXdCXbsXQ8LSN9cWEMEHaCGOaUoTK4Om','2018-02-10 20:40:12','2018-02-10 20:40:12'),(224,1,'CqomGTjtdqTYrWTMadpLU72rd9XZLSx9','2018-02-10 20:40:53','2018-02-10 20:40:53'),(225,1,'aFZB6DxODs6NWSpL1MDZXbXdWu9Tmqav','2018-02-10 21:27:01','2018-02-10 21:27:01'),(226,1,'az5mkqxoFznDTMH5gTuw4ueudH3oI8pW','2018-02-10 21:27:04','2018-02-10 21:27:04'),(227,1,'fgkr88CPZJ5XgOSBumHpGyqSMipvG989','2018-02-10 21:27:57','2018-02-10 21:27:57'),(228,1,'zA6nS3InhO002kXAVHuuaDZJTH27V3Jr','2018-02-10 21:28:18','2018-02-10 21:28:18'),(229,1,'J1OfoEIFnOis7d6r3nFLZCaVVuIkAAvW','2018-02-10 21:28:18','2018-02-10 21:28:18'),(230,1,'mhVI02fUX40aeF5surUSr2fwj8qXAFbL','2018-02-10 21:28:21','2018-02-10 21:28:21'),(231,1,'WFmvMXQS8jZmT8qE1FTidW10w1eXFnKQ','2018-02-10 21:36:51','2018-02-10 21:36:51'),(232,1,'lf43h30tyqXc6kTurjEvfA7dWPaUmLSn','2018-02-10 21:37:00','2018-02-10 21:37:00'),(233,1,'r5x5Tp9dUeYM8KrX1K76NnyjX7XHpJBF','2018-02-10 21:37:04','2018-02-10 21:37:04'),(234,1,'IYMqGjmbQSddjyghKoEGiCX4CSPcUjeR','2018-02-10 21:37:26','2018-02-10 21:37:26'),(235,1,'3FOoMh52oIMz1aqHnyp5r8uf2jHT2KOQ','2018-02-10 21:37:30','2018-02-10 21:37:30'),(236,1,'WfoG2BYBnjM4dO81j9RN7R0PaihVyExU','2018-02-10 21:37:31','2018-02-10 21:37:31'),(237,1,'kXDOxyv52cXnE5CZAUcj6KYODYRgIo1D','2018-02-10 21:37:33','2018-02-10 21:37:33'),(238,1,'dWuTXIWA0OrvVj8VjY0ZOw77iXxNMNET','2018-02-10 21:42:06','2018-02-10 21:42:06'),(239,1,'o2nYp6UGkHxU0BSu7Ms8Cqwd8hQViz1s','2018-02-10 21:42:11','2018-02-10 21:42:11'),(240,1,'8jO27od9IeYV2vcXlzo9svneCbddTJ6T','2018-02-10 21:42:16','2018-02-10 21:42:16'),(241,1,'ZJqI632NKTBYW84uTrAOlPKqQVpKw0cz','2018-02-10 21:42:16','2018-02-10 21:42:16'),(242,1,'9I86PTyzu1O3D8XGloWY7a1P6ZCrDR6o','2018-02-10 21:42:21','2018-02-10 21:42:21'),(243,1,'kLZOTD8OP0lwVUskLxRaPuUCZRZ8CUvG','2018-02-10 21:43:10','2018-02-10 21:43:10'),(244,1,'hhc60HYQnlgGbEDyLcPUqz4lgujgOgXg','2018-02-10 21:43:18','2018-02-10 21:43:18'),(245,1,'Y2VAKVZzZ3GKQyVWFWWQumxqWuKrBECl','2018-02-10 21:45:13','2018-02-10 21:45:13'),(246,1,'7mNohYkvP01CwXuymn5CJSFgi7XriALQ','2018-02-10 21:45:15','2018-02-10 21:45:15'),(247,1,'iNiLPLYYQOgR0CzclgPCJFSPWzZpZACr','2018-02-10 21:45:23','2018-02-10 21:45:23'),(248,1,'fIH4lwPI6gRbNXXfHbKbrYOd5DpswdDv','2018-02-10 22:14:22','2018-02-10 22:14:22'),(249,1,'QaRjkzGaEbUgwsKP7Q4jU3WJ942ZPdE3','2018-02-10 22:14:28','2018-02-10 22:14:28'),(250,1,'eGxtWApE1oUdGWtunCHpcchf2DkKctOg','2018-02-10 22:14:46','2018-02-10 22:14:46'),(251,1,'feS3nhAV14qELwVbbZZWFbkYHcLURkdR','2018-02-10 22:15:16','2018-02-10 22:15:16'),(252,1,'8OG0teOZSF5WUUMmYmX0xWzskOfHgs7X','2018-02-10 22:15:28','2018-02-10 22:15:28'),(253,1,'fymeBKbL8SdhlO75KvC0wwM8qU9PkaPN','2018-02-10 22:15:31','2018-02-10 22:15:31'),(254,1,'p2j7DdSwSfvTnEjSvcYntoHz28akRto9','2018-02-10 22:15:32','2018-02-10 22:15:32'),(255,1,'dfKs1Tn053urphf97bl64X0uVh5OMZJB','2018-02-10 22:17:44','2018-02-10 22:17:44'),(256,1,'lywSZBqBLbNYeZaflGHyEb302NkmhXRT','2018-02-10 22:18:01','2018-02-10 22:18:01'),(257,1,'f0KuUDrraNodQViNIlbIOYVXJVd9Kt5G','2018-02-10 22:37:40','2018-02-10 22:37:40'),(258,1,'UyRcdbULdmKwAB5NNuNTIXz5npWe3Z6P','2018-02-10 22:37:43','2018-02-10 22:37:43'),(259,1,'8kIYDLk7eoYWoF5LfH1DCtN9qEVD4QpI','2018-02-10 22:38:19','2018-02-10 22:38:19'),(260,1,'nomQnPRWotXonSNgOYhKY37UXIavro7j','2018-02-10 22:39:03','2018-02-10 22:39:03'),(261,1,'9j4z1JbgaYqObKXvs1v4ICkwz0BWNLuU','2018-02-10 22:39:06','2018-02-10 22:39:06'),(262,1,'cgKv8SUzo4vvYzFI0nOM13My5uOs7AYF','2018-02-10 22:39:07','2018-02-10 22:39:07'),(263,1,'9K0GFXJd533VasSVQaRonE5Ra1J1CeqJ','2018-02-10 22:39:19','2018-02-10 22:39:19'),(264,1,'JYBgQ70oK9pEKyVyd5MNstJ5x8gXWlyb','2018-02-10 22:39:19','2018-02-10 22:39:19'),(265,1,'mZ9iHTG9eD7xN63sH0xb9Fhbucvgmzc0','2018-02-10 22:39:26','2018-02-10 22:39:26'),(266,1,'zFA6FNWf4nSw8vDFlsNCOk2Ta5QMK4Lm','2018-02-10 22:39:30','2018-02-10 22:39:30'),(267,1,'L2LMGh6xJAIgyLI5HlGEd0VJp7Y2qK53','2018-02-10 22:45:26','2018-02-10 22:45:26'),(268,1,'dkj3P2PKGrRGm6xG7InEz7Y9iHV8MqFP','2018-02-10 22:45:30','2018-02-10 22:45:30'),(269,1,'oUCwyWhgRpi6kEWMwjg2iWGxrQROBa84','2018-02-10 22:45:30','2018-02-10 22:45:30'),(270,1,'eY2G8zhfV0oqRq06LEWqtZJiRKcifj58','2018-02-10 22:51:02','2018-02-10 22:51:02'),(271,1,'JDF9nVF8yNG4xwDvhNgARJRYZca1Rfbm','2018-02-10 22:51:04','2018-02-10 22:51:04'),(272,1,'i4Gd2AdIo5dGy3L5gWNdBWoLHVYTxPqk','2018-02-10 22:52:57','2018-02-10 22:52:57'),(273,1,'Q8fZ1U7i6RCLPOfLM5gudwTOxNIg5SOL','2018-02-10 22:52:59','2018-02-10 22:52:59'),(274,1,'dDJBh0ENAFF8N28HH4ks6Y4mxH1CKBfO','2018-02-10 22:53:00','2018-02-10 22:53:00'),(275,1,'iEwGmiDOC8hFUPNLyv2Z4EGkAGGg5107','2018-02-10 22:53:01','2018-02-10 22:53:01'),(276,1,'Nv6koOkDMb5my6fnXtJcYJvs3ak8UdVj','2018-02-10 22:53:02','2018-02-10 22:53:02'),(277,1,'b71ZTMlScLAubH4pPBDNWxJ7Y7JRboyH','2018-02-10 22:53:03','2018-02-10 22:53:03'),(278,1,'sQbDrvuasE4PBb5pCRs2OvppsiCVjtAm','2018-02-10 22:53:05','2018-02-10 22:53:05'),(279,1,'XdcD98yVLFNCDlI881ORVkDmWebTyRbF','2018-02-10 22:59:14','2018-02-10 22:59:14'),(280,1,'drb3F7ZvDZQ7bQqvfPjWJfR1MiP7OMA6','2018-02-10 22:59:16','2018-02-10 22:59:16'),(281,1,'bZIIzo4RRyxayTODs4Z5PCTE1HkBBBZV','2018-02-10 22:59:16','2018-02-10 22:59:16'),(282,1,'rIHYbAte1Y2i9uZoJ5ac98qgq1lnFNoF','2018-02-10 22:59:16','2018-02-10 22:59:16'),(283,1,'97Hv5Wo3DhiqKBDCUOrZYhbhLbU1USqa','2018-02-10 23:30:00','2018-02-10 23:30:00'),(284,1,'sRKb0VOyVJsZ2fyy63Zl8JFB2DkCuyoG','2018-02-10 23:30:00','2018-02-10 23:30:00'),(285,1,'cnX25EgVyDNpiva68qh7Xs7QnqPVv6PD','2018-02-10 23:30:00','2018-02-10 23:30:00'),(286,1,'Z1wn0ZKd2SNGX9MI7i1IgVvvaHRgDuLE','2018-02-11 00:10:53','2018-02-11 00:10:53'),(287,1,'eUDdKBe2k6pGLFzaMiuAoSU7mKh6rCch','2018-02-11 00:10:56','2018-02-11 00:10:56'),(288,1,'2VeLDujes3n2P7h8nahmdeIJ7YO0J228','2018-02-11 01:18:35','2018-02-11 01:18:35'),(289,1,'YCyGuVejxpmWoFOK9yWwUnzW2fu71HwD','2018-02-11 05:18:03','2018-02-11 05:18:03'),(290,1,'4Na16QxJ6UoyjwayVHKHHAyABHApR87U','2018-02-11 17:25:07','2018-02-11 17:25:07'),(291,1,'36qXhrad1mgh8XsZTHrxJ3j0Nt53JsL3','2018-02-11 17:51:05','2018-02-11 17:51:05'),(292,1,'y6pJdHa0nQR5kGjGmWZYRc3EgCxi4QDM','2018-02-11 17:51:07','2018-02-11 17:51:07'),(293,1,'eOaX6gLETFddcInYFJy05O2SMlRjuSfH','2018-02-11 17:51:07','2018-02-11 17:51:07'),(294,1,'f84xXuWH9aKW8aeA1irOtIAJIWKE4fgH','2018-02-11 17:51:13','2018-02-11 17:51:13'),(295,1,'2Ieo25fhQk0PcjRdFS7Tmbl0ZyarFYdX','2018-02-11 17:51:13','2018-02-11 17:51:13'),(296,1,'72MWmATntHkp7AZrh61N2tdsnJnAzlL4','2018-02-11 17:51:16','2018-02-11 17:51:16'),(297,1,'iTaAJvyOqE0PBYWcXglHxY37hheg6sfO','2018-02-11 17:51:22','2018-02-11 17:51:22'),(298,1,'RXS53PimnZEgOIfdtgZNGC4g1Qce3mrr','2018-02-11 17:51:28','2018-02-11 17:51:28'),(299,1,'1pgi9HQCwu7ao60PqDM8zPP8kUjMeFH0','2018-02-11 17:51:40','2018-02-11 17:51:40'),(300,1,'mhTDktAAoris4TT11zU5Q7S2X2EI0RGG','2018-02-11 17:51:45','2018-02-11 17:51:45'),(301,1,'jyfzjE1FGDZzStsshjMJq6pOfnM7AEtD','2018-02-11 18:21:14','2018-02-11 18:21:14'),(302,1,'29Oy5KboRmw6XltSSfw69ZPP6OQ95c9t','2018-02-11 19:31:36','2018-02-11 19:31:36'),(303,1,'S2L5lyqja7OBePD45Q3PbzdNJmmENcgr','2018-02-11 19:31:37','2018-02-11 19:31:37'),(304,1,'SxRjIklXhQtIJb39VPMsoNcxKskLcBhA','2018-02-11 19:31:38','2018-02-11 19:31:38'),(305,1,'uIX4KgI4xcS2o0oq4g1CaWCi9zkCNIUa','2018-02-11 23:07:11','2018-02-11 23:07:11'),(306,1,'oXe619kCZsiaE1WDKdN6fJqZeDyFXJQx','2018-02-11 23:20:00','2018-02-11 23:20:00'),(307,1,'kVZu6QMy9XdSBcWi6nBP3MdD8MJfyZVe','2018-02-11 23:21:34','2018-02-11 23:21:34'),(308,1,'qqHmA77SAjdaIRAUljS0kVG4yGjWjutx','2018-02-11 23:21:55','2018-02-11 23:21:55'),(309,1,'lW1ZvefzFB3EubS7KCWItIW0YjAvkruI','2018-02-11 23:23:30','2018-02-11 23:23:30'),(310,1,'SjW8GcnRNRinSLLNS12BhW0ydyLdq25W','2018-02-11 23:23:32','2018-02-11 23:23:32'),(311,1,'8FL2ge7lAhjqA72DXp60xBywJDi5tJAq','2018-02-11 23:27:57','2018-02-11 23:27:57'),(312,1,'BefBlJQtNJIlXRH2uqwh5xl3WdhkthGH','2018-02-11 23:27:59','2018-02-11 23:27:59'),(313,1,'SzeaU1j79YL7TQNGtAgyS4TZhMMG3lJF','2018-02-11 23:29:10','2018-02-11 23:29:10'),(314,1,'5Dh16xlaGj7aDXifsJVMhcBzrsGvrBey','2018-02-11 23:29:13','2018-02-11 23:29:13'),(315,1,'lI9Xy56eiqYzIMJ9jN26zpuQfdYwswx7','2018-02-11 23:32:25','2018-02-11 23:32:25'),(316,1,'dczU6lEqF3Su1xsTqBSlHNuikz9b9vf3','2018-02-11 23:32:26','2018-02-11 23:32:26'),(317,1,'8gXoWyqcvhPbGXIErcFY9ONpRjSzft2c','2018-02-11 23:33:53','2018-02-11 23:33:53'),(318,1,'tZ9lw4Q3oIG8OyIBmUS40Kde6UKYwy12','2018-02-11 23:33:55','2018-02-11 23:33:55'),(319,1,'wcyIwVzd98UAXS8LKab1pTYC7BAbP2Bg','2018-02-11 23:33:56','2018-02-11 23:33:56'),(320,1,'V9W6emcERVbjef2CmVNwGNr3xDbkdFDx','2018-02-12 00:12:55','2018-02-12 00:12:55'),(321,1,'t5poboi1gnmi9bDzDsdXdAVURKtbDpyX','2018-02-12 00:13:30','2018-02-12 00:13:30'),(322,1,'9RZIERvhlQQ2aLzEFsAiBt3W7JcSH3xv','2018-02-12 00:14:26','2018-02-12 00:14:26'),(323,1,'vMsCckAm7qiWylRGqOYHJGoEThDhl3DB','2018-02-12 00:16:06','2018-02-12 00:16:06'),(324,1,'Vd8dBTufnDQ3kBxWgmePEDrmcaLmM2aK','2018-02-12 00:16:24','2018-02-12 00:16:24'),(325,1,'GUXaK40i9G6c4VKJKx1YFSeIDs8S0DnQ','2018-02-12 00:16:33','2018-02-12 00:16:33'),(326,1,'tIy0Tie8KSoPl0DIfawk8inNQYIxzZLz','2018-02-12 00:16:47','2018-02-12 00:16:47'),(327,1,'BEApFbr2Kwi7Aoghxmu1RkizQ9tnsijK','2018-02-12 00:17:11','2018-02-12 00:17:11'),(328,1,'vTYSa4dCIU4q7EYirHWsslchEEaoUVR9','2018-02-12 00:18:11','2018-02-12 00:18:11'),(329,1,'adi4Xz4INPTbxwmxPtRcS3qYgh9iLvpO','2018-02-12 00:18:37','2018-02-12 00:18:37'),(330,1,'koyywHHXEPLCrlxb4sQmQzDwylLBccx5','2018-02-12 00:18:49','2018-02-12 00:18:49'),(331,1,'xXiRjpM4fgrqc90bFI6yxiKiRy8p7ZXC','2018-02-12 00:19:02','2018-02-12 00:19:02'),(332,1,'bjRCpi57N0M9LBdrHrpFx4g34QfYXnPy','2018-02-12 00:19:09','2018-02-12 00:19:09'),(333,1,'Y0LVI9StdO7yRkfnJsxtxhyYklEgIDPs','2018-02-12 00:19:42','2018-02-12 00:19:42'),(334,1,'Phix4nXgerKptOl8rBJMpfoHnwkgpLcI','2018-02-12 00:21:21','2018-02-12 00:21:21'),(335,1,'E5DFR5rgU1xC8TguyoK4H45USXAsKyRt','2018-02-12 00:21:23','2018-02-12 00:21:23'),(336,1,'7sVixThgGscSSJbgRqGaUM3vSAmZFq3U','2018-02-12 01:24:58','2018-02-12 01:24:58'),(337,1,'ADCVDMZJjPPTp8cdHDIh72VnDY4OXBPy','2018-02-12 01:25:00','2018-02-12 01:25:00'),(338,1,'ZdENsg4v1vXuUemnRIkybzr3lUqjPll5','2018-02-12 01:25:08','2018-02-12 01:25:08'),(339,1,'3dL7SJBN4eAa9VYoyuHqH1QLvyN6dAN3','2018-02-12 01:25:11','2018-02-12 01:25:11'),(340,1,'HAi7G6rnckgG1ZmAjqVEHIqA35xk1jf3','2018-02-12 01:31:27','2018-02-12 01:31:27'),(341,1,'5px6tTyvFtMjHgzqp721XVTSXTnLcJIm','2018-02-12 01:32:18','2018-02-12 01:32:18'),(342,1,'Vaz6AQP5LVXTNNUgDS3tq46drk9c08dl','2018-02-12 01:34:49','2018-02-12 01:34:49'),(343,1,'uK5Ghp6MPS07NoZXXy46Q8sIey5tkZRB','2018-02-12 01:34:58','2018-02-12 01:34:58'),(344,1,'urzS2vkMonf28cCgRAwvnqw3uaoMc14G','2018-02-12 01:39:39','2018-02-12 01:39:39'),(345,1,'7aqvqEE0olwnEZZWcpqlB9Xs83IQ7HWh','2018-02-12 01:39:40','2018-02-12 01:39:40'),(346,1,'lFYBQbCgImBQ5Ta505tAHiVpwM7vScQP','2018-02-12 01:44:15','2018-02-12 01:44:15'),(347,1,'ThBEfpuEUNCSKpLmSUfwz5o0ZWMJwylY','2018-02-12 01:45:20','2018-02-12 01:45:20'),(348,1,'7y94OakFLDsD5o4LgSCWe04CRHcljGXM','2018-02-12 01:46:07','2018-02-12 01:46:07'),(349,1,'5DRqIE9Ij7zccWcqDYyGxMozbOUtDFeL','2018-02-12 01:46:34','2018-02-12 01:46:34'),(350,1,'GaC7Th1O60H7m7YpSUqnx2pB3sTMljJL','2018-02-12 01:46:35','2018-02-12 01:46:35'),(351,1,'P7I3YtvjD0qZQ2J2j5ZRNR5oaFV82enE','2018-02-12 01:47:22','2018-02-12 01:47:22'),(352,1,'aLeUOCZPomdIO1spgRHhPcbKFJDjUqFw','2018-02-12 01:50:18','2018-02-12 01:50:18'),(353,1,'N7nLSmtmVf2iUMQAnRafeNHjJQd6aBut','2018-02-12 01:51:40','2018-02-12 01:51:40'),(354,1,'oZnmg9OQ6FFmd98P31vJr0rBOfGzfuwx','2018-02-12 01:52:44','2018-02-12 01:52:44'),(355,1,'k6VaXc1MlfQILb08rGNWf5VlKGqfyTuK','2018-02-12 01:53:18','2018-02-12 01:53:18'),(356,1,'js570fliQJEVDyfHB5MzJOQFltMbcIik','2018-02-12 02:09:32','2018-02-12 02:09:32'),(357,1,'GSOFkF9eDMsNLV7ikQqokzDJsH7h9wwk','2018-02-12 02:15:45','2018-02-12 02:15:45'),(358,1,'KultsgNn2wEKvF5N9dMIAjJ2AjoSt84v','2018-02-12 02:17:54','2018-02-12 02:17:54'),(359,1,'TyUG6CtLv8CrJjywWFxr2nU5QUS4nrhi','2018-02-12 02:18:43','2018-02-12 02:18:43'),(360,1,'NCQQSEDZGO8NBOAvsvfMKfb8C6oPOAbG','2018-02-12 02:18:45','2018-02-12 02:18:45'),(361,1,'gbjUvQwyxy1aYYsDEtlh5DH3zf0ceWIG','2018-02-12 02:20:31','2018-02-12 02:20:31'),(362,1,'xapLeFo7FCdVBWqvYzPJ1MXSJa6qVK3n','2018-02-12 02:21:40','2018-02-12 02:21:40'),(363,1,'1251m2P5DeIuq9x2qQnCrAOkeCpgPiQ7','2018-02-12 02:21:45','2018-02-12 02:21:45'),(364,1,'p2HS7fNa1VFkOOS0F812hqwPFHpioVz6','2018-02-12 02:23:12','2018-02-12 02:23:12'),(365,1,'ZtiNWo3OF1HBsO1fmQWMfMGcQd6aMGOL','2018-02-12 02:24:39','2018-02-12 02:24:39'),(366,1,'4ecvcpl3sdDo4RRIiXvKXwSSAepyRlyk','2018-02-12 02:25:09','2018-02-12 02:25:09'),(367,1,'2iUxyiYy3OsgwWMp6Y1vTeUGt0LsgfmE','2018-02-12 02:25:45','2018-02-12 02:25:45'),(368,1,'of5luX2ATHkb7hKTgI8cQ3D5lon5yq68','2018-02-12 02:26:17','2018-02-12 02:26:17'),(369,1,'v65X8AeNLOKbXBRkkyxbf1s5Mf0uDdfp','2018-02-12 02:29:39','2018-02-12 02:29:39'),(370,1,'yARKOCEp4TOaXNCw8MYBQhAumQSDTPmU','2018-02-12 02:30:30','2018-02-12 02:30:30'),(371,1,'7OQtzi8yGDPWZmQ96R9Jn1BDlGJMKduO','2018-02-12 02:31:43','2018-02-12 02:31:43'),(372,1,'WJIwlVsK1WQK4b826KfX6icd4feKGcJa','2018-02-12 02:34:08','2018-02-12 02:34:08'),(373,1,'uEn5GaicSJNf8ifywUml4x0RCwE3b6r0','2018-02-12 02:37:09','2018-02-12 02:37:09'),(374,1,'L2VBGjeni1Z3xuIgk7dV6KVMDkOiHDDz','2018-02-12 02:38:38','2018-02-12 02:38:38'),(375,1,'hh2K3wWAG4eUf6OH28aMpTMrX3qUlK9X','2018-02-12 02:39:27','2018-02-12 02:39:27'),(376,1,'w5JTUniXHDKAHzzssRVIGcQ4wFGRc3cX','2018-02-12 02:39:39','2018-02-12 02:39:39'),(377,1,'cLPtEvos0r1agstJ5fmc2Ee8pseSW8IJ','2018-02-12 02:40:43','2018-02-12 02:40:43'),(378,1,'U05zS5BemZow2Zu8sqQQM8e6ZOUtyTFN','2018-02-12 02:41:30','2018-02-12 02:41:30'),(379,1,'R0AwbE7FE2THQf6hP5iFjJ96t5vzIDTB','2018-02-12 02:42:12','2018-02-12 02:42:12'),(380,1,'W7cTYd3YzIWG6VL9hXnxVNqZUN073MCp','2018-02-12 02:43:06','2018-02-12 02:43:06'),(381,1,'a4xIbLjC9bxl4M74TPztspUKA4JGZiTw','2018-02-12 02:48:11','2018-02-12 02:48:11'),(382,1,'mh2Uy7RzV0aWNMNg71opfe6ifQk3iBYJ','2018-02-12 02:48:15','2018-02-12 02:48:15'),(383,1,'Bv0RHTwY44g8oYmRfRuJoejRP6HzYux9','2018-02-12 02:55:21','2018-02-12 02:55:21'),(384,1,'MdpIOd9eObaV89lkVAh1f9X4p2h0SY5x','2018-02-12 02:57:59','2018-02-12 02:57:59'),(385,1,'67mtjS9WCsbaYZa8fJhpCTcogQ2fevqM','2018-02-12 03:04:55','2018-02-12 03:04:55'),(386,1,'YaZ7MxuzfeJbCFxpG6FBSMo7YD57A3Oe','2018-02-12 03:04:56','2018-02-12 03:04:56'),(388,1,'Omef25UWdv37nwZvh02POpZIKpLfx7LT','2018-02-21 17:23:05','2018-02-21 17:23:05'),(389,1,'PltZIDLXF3NzYSqyhEBvKnSv5fQyt62Z','2018-02-21 17:23:34','2018-02-21 17:23:34'),(390,1,'rBDKzdh59qYccm6Ihh0mxDbGHU8X0lsv','2018-02-21 17:39:25','2018-02-21 17:39:25'),(391,1,'p11pDCBA6b85oyKsdRZBWGZAfjHrsh6X','2018-02-21 17:48:12','2018-02-21 17:48:12'),(392,1,'RW4XDVuUvQtvLTxRW1nDN0t1VrSNVdTe','2018-02-21 18:06:34','2018-02-21 18:06:34'),(393,1,'Q3LicYg3zQDBlLtDi5RzHsgofTJovRVv','2018-02-21 18:25:04','2018-02-21 18:25:04'),(394,1,'WUiw2AbJScd5J0iHolHyvZJVuekm5smu','2018-02-21 18:29:34','2018-02-21 18:29:34'),(395,1,'sJ501MUEIpJwMf5BCZfNDwKjxQy0z3gW','2018-02-21 18:31:38','2018-02-21 18:31:38'),(396,1,'MowDcCp0MrRfFGVHoRJBW5yqbTn23WhQ','2018-02-21 18:32:46','2018-02-21 18:32:46'),(397,1,'minvE4Kj6iogTSez10WFhlQ8pDD54oWb','2018-02-21 18:34:10','2018-02-21 18:34:10'),(398,1,'2r8eCeTHumviC9Ez798eiWeI2OFrm0ID','2018-02-21 18:35:23','2018-02-21 18:35:23'),(399,1,'mXbLrHjO0TCAkHp11JbSLR4OXVcrzoz7','2018-02-21 18:37:03','2018-02-21 18:37:03'),(400,1,'sfOwM5KNjkKSbf63M0QYjGJZ686e5Iqz','2018-02-21 18:37:23','2018-02-21 18:37:23'),(401,1,'ovY0LhwjvhhE88k6fzk2oJChNqS898F4','2018-02-21 18:37:40','2018-02-21 18:37:40'),(402,1,'tgIVtJFuqcpySYZaWqSCS0kz3nch5nn0','2018-02-21 18:42:38','2018-02-21 18:42:38'),(403,1,'3d3ZWMDcSNVaiGfaUE16w3qLjFDz5B89','2018-02-21 18:43:12','2018-02-21 18:43:12'),(404,1,'MiDRSRtKMTtiOqCPpxTJ1S1DJei1JFo7','2018-02-21 18:43:47','2018-02-21 18:43:47'),(405,1,'pcchuGQUmUqtnDfUAEHJSzevQaCsy6xL','2018-02-21 18:44:08','2018-02-21 18:44:08'),(406,1,'q7bSqZWQTvzxwR7LTXwwIh8oS3B8G3M8','2018-02-21 18:45:32','2018-02-21 18:45:32'),(407,1,'o9aFjdhLesHxIqiKWvYWgA9JH5dadaHF','2018-02-21 18:46:18','2018-02-21 18:46:18'),(408,1,'QiU45sgKZN8ocgBimAuXmP28lPPaAHGk','2018-02-21 18:46:59','2018-02-21 18:46:59'),(409,1,'577rm7UeFqwexly1FOvgurLRuxJlQS0L','2018-02-21 18:48:51','2018-02-21 18:48:51'),(410,1,'hDXQ4mFIcFOfmYceNjbatjdBx5CfY21S','2018-02-21 18:51:04','2018-02-21 18:51:04'),(411,1,'fUGAUksGsqz3KaOnn5LNV3Be01ZgyxKO','2018-02-21 18:51:11','2018-02-21 18:51:11'),(412,1,'JxsBQVcbClQZU9w1i6PU0bJEITidJ9DI','2018-02-21 18:51:28','2018-02-21 18:51:28'),(413,1,'4fbVktz0J4qQBtMMC4ij9LRiwQKmzL7U','2018-02-21 18:52:43','2018-02-21 18:52:43'),(414,1,'m6XFZaTaWc360FlD6Sp60ZuXgyPFR1aV','2018-02-21 18:53:48','2018-02-21 18:53:48'),(415,1,'J4gRbWZdpIQIA1gF8rZvlLLi9xYb2yCR','2018-02-21 18:55:02','2018-02-21 18:55:02'),(416,1,'m7z4TOdKFm8Z2nKG73vmZRYWbzuFsp20','2018-02-21 18:55:38','2018-02-21 18:55:38'),(417,1,'ogsBKz2NFqrYnUWS4AIDe8aLlNM5Arnq','2018-02-21 18:58:01','2018-02-21 18:58:01'),(418,1,'a1QMJ1xmVveKutQSVXlXYoxBrutgTPk8','2018-02-21 18:58:42','2018-02-21 18:58:42'),(419,1,'2shOnEJdeXWKfBFyRdGmpsMG8pfSTdPt','2018-02-21 19:02:07','2018-02-21 19:02:07'),(420,1,'K2yqRsMLhx6L0DMmieKy1RbrhhDRRrSU','2018-02-21 19:02:10','2018-02-21 19:02:10'),(421,1,'2bvvNFt0CjF9QaxLwKBVweRvO387Gic1','2018-02-21 19:02:18','2018-02-21 19:02:18'),(422,1,'UXiWFlzUPywLghoDrutLXjIiXVRI5Rst','2018-02-21 19:03:27','2018-02-21 19:03:27'),(423,1,'ms8g9l8In95eRQRtR9hPG3t9vzg1Fat1','2018-02-21 19:06:29','2018-02-21 19:06:29'),(424,1,'Ey5o8W7DxdVdyJUPRz3gT8BXjoiFWEeq','2018-02-21 19:08:06','2018-02-21 19:08:06'),(425,1,'0RHuxBstSTNHmIdz96KcWPGatRf3lWXy','2018-02-21 19:08:53','2018-02-21 19:08:53'),(426,1,'jrr19pyYonsUemrmDWIEmBFSGc40uLsf','2018-02-21 19:09:40','2018-02-21 19:09:40'),(427,1,'H668OodsA8Ffw5puzgAQ8ebeMS3WASVJ','2018-02-21 19:09:52','2018-02-21 19:09:52'),(428,1,'i8BupKccFdTBAarS4XGWthXNFAshpDgG','2018-02-21 19:09:55','2018-02-21 19:09:55'),(429,1,'AxpR3VNVeLcYb4qNB41rZootd49PxqKU','2018-02-21 19:12:22','2018-02-21 19:12:22'),(430,1,'Wut1TDY0eyPL5uyP2we7TrUlPG3md9nl','2018-02-21 19:12:27','2018-02-21 19:12:27'),(431,1,'yJWBJr3CiBLMUZQuIZMx2i7afasWKE8R','2018-02-21 19:12:32','2018-02-21 19:12:32'),(432,1,'jpleKaXO1N8r5GdLUZdGFuImVyeyjsmn','2018-02-21 19:14:29','2018-02-21 19:14:29'),(433,1,'2HrbqccadYzo3FvblmfKNbcNQDJd8rNZ','2018-02-21 19:17:59','2018-02-21 19:17:59'),(434,1,'bPepg4iwSBGQbKwhq7lkPVyHJAs1vcvJ','2018-02-21 19:18:21','2018-02-21 19:18:21'),(435,1,'KrVeEuULZAMnClSoBIMmbqJUGP4u3MGG','2018-02-21 19:21:14','2018-02-21 19:21:14'),(436,1,'03S3PP0HiBeSPFiYfpS9oGtaRTQjgIoe','2018-02-21 19:22:11','2018-02-21 19:22:11'),(437,1,'q9CVg9kiEgdtBh9E7P1aVDqBnUYJN4aE','2018-02-21 19:23:12','2018-02-21 19:23:12'),(438,1,'NL2BfkwWs1qq6Dvd1eWkVcSPKlQZvaFO','2018-02-21 19:24:35','2018-02-21 19:24:35'),(439,1,'HhcuZF3AjaZ0MuPc0rcNa3X7TFjvzeN4','2018-02-21 19:26:57','2018-02-21 19:26:57'),(440,1,'94uFMXDQuxzHgtDFMukaXqOmRGCMa2Ue','2018-02-21 19:28:28','2018-02-21 19:28:28'),(441,1,'2k9fA65KozaKYl9VIcQeYuuYVR7gReu9','2018-02-21 19:29:10','2018-02-21 19:29:10'),(442,1,'3DWep7NskBrra0OvV2wstGJghDxOhFQY','2018-02-21 19:29:17','2018-02-21 19:29:17'),(443,1,'TPsyygR8ei422rzprvKNAQFtLbNiT1Qp','2018-02-21 19:29:19','2018-02-21 19:29:19'),(444,1,'0MdMYJdPWlldMzQfLkKNwbcAcpKWK65c','2018-02-21 19:29:25','2018-02-21 19:29:25'),(445,1,'CAz90mVoC4MK3v0qYYEQkpQI5AYNr0wL','2018-02-21 19:29:26','2018-02-21 19:29:26'),(446,1,'SQIdyZeMxkUJVlfGWhziAqe0yhuuIdQb','2018-02-21 19:35:28','2018-02-21 19:35:28'),(447,1,'zxsNAmKwWNXrX5mzRdiLDGdBnrKJE2sc','2018-02-21 19:35:46','2018-02-21 19:35:46'),(448,1,'a0ezzrcNH1levPrPPQglSXupAned3kS5','2018-02-21 19:35:50','2018-02-21 19:35:50'),(449,1,'mjdIAbc8XlqmJrY5nXTsju7l9F0NEcve','2018-02-21 19:35:52','2018-02-21 19:35:52'),(450,1,'6FDjh7xqOMIYEOOlidiEW3ub0ZIWc4jd','2018-02-21 19:37:28','2018-02-21 19:37:28'),(451,1,'PuhEj3wb3QGvS7866JbiDesH8m5Lmr5M','2018-02-21 19:37:33','2018-02-21 19:37:33'),(452,1,'g5nhc9YCfr5bF1Vb3Zv8Li1y4wrHFIw7','2018-02-21 19:42:31','2018-02-21 19:42:31'),(453,1,'F0wxoBOZIUlEDrOL1iLPyyBsN7Pb8ZiX','2018-02-21 19:42:42','2018-02-21 19:42:42'),(454,1,'FIvmYjVbx84oeCt0gIV0HEzhEySindWV','2018-02-21 19:50:08','2018-02-21 19:50:08'),(455,1,'2F9HnHsw3RIvWaAkwCFai0IlcX3nGHyu','2018-02-21 19:50:18','2018-02-21 19:50:18'),(456,1,'CLYL2X8iOtBq4jAM4aXteUfCjPqNiue1','2018-02-21 19:50:33','2018-02-21 19:50:33'),(457,1,'fIyH0pqOyOyYB9kgm6KEVk6dswNCx4Tm','2018-02-21 19:50:39','2018-02-21 19:50:39'),(458,1,'oTrK2POvgjVWK73uiLcXrexshHzt7uHc','2018-02-21 19:50:51','2018-02-21 19:50:51'),(459,1,'lCgDO2T7Elq88LWT5VMvMAOmhlsmknpX','2018-02-21 19:51:54','2018-02-21 19:51:54'),(460,1,'jvhQv7t6QClaTTDCYID5mxpRIMyI8464','2018-02-21 19:51:57','2018-02-21 19:51:57'),(461,1,'DPHAiTnWR3AilUBunNtGv5uQnSpMQ22I','2018-02-21 19:53:19','2018-02-21 19:53:19'),(462,1,'M7s0q2fV3vKEy5QkHu2CndB7WPWp79KR','2018-02-21 19:53:21','2018-02-21 19:53:21'),(463,1,'RAvRmndudWnXy6uGhkF20POMEkYqnOQc','2018-02-21 19:54:27','2018-02-21 19:54:27'),(464,1,'b9PuCSia2IRvlwMhABPbBtmdGILYVdrQ','2018-02-21 19:54:30','2018-02-21 19:54:30'),(465,1,'aANeoEKzDyS9pZ5m2w9f4J2ITVpIDGaD','2018-02-21 19:56:27','2018-02-21 19:56:27'),(466,1,'TDJiJ5ytY50RsVO2gn5O3PcGOmyAHFhK','2018-02-21 19:56:30','2018-02-21 19:56:30'),(467,1,'jQ034PYC3FpLerxZdVFmWUYe9pNu0i8O','2018-02-21 19:57:54','2018-02-21 19:57:54'),(468,1,'ZLksQ5SvFRq0MKiJMBe4Ya60FzNBMmxn','2018-02-21 19:58:03','2018-02-21 19:58:03'),(469,1,'k2Sk4XFoJk8Ws7ftZOCijhTVH0qGiQnR','2018-02-21 19:59:10','2018-02-21 19:59:10'),(470,1,'5ZrXfyyIiyk0FpnbhGdGcOeKV9kDhTCj','2018-02-21 19:59:44','2018-02-21 19:59:44'),(471,1,'7wUot3eJtc0lhMgqdVWfQ83HSmvlUYdM','2018-02-21 20:00:22','2018-02-21 20:00:22'),(472,1,'fP771XCTJWsrcBSOLeQWZlKwgSfVyYmh','2018-02-21 20:00:41','2018-02-21 20:00:41'),(473,1,'NIyJylVUdz4hoZbDF1vWu0Uk1DlA9Nfh','2018-02-21 20:00:43','2018-02-21 20:00:43'),(474,1,'bYOIZE7UZ9D57RQUaU2tJiiicN0Cw0Rh','2018-02-21 20:01:02','2018-02-21 20:01:02'),(475,1,'lvHJcR8nvJ5itUhxdsW5leEHCmfjq9pV','2018-02-21 21:34:14','2018-02-21 21:34:14'),(476,1,'nBMS78PRgSfwSdl6HiD7aPNcwoU1N95B','2018-02-21 21:35:06','2018-02-21 21:35:06'),(477,1,'dKsIUHdn5y9ooQ7dAtPXVv1eHO0KMo6u','2018-02-21 21:35:30','2018-02-21 21:35:30'),(478,1,'TMkKLCv2Z592XE2N3Xu7DAGPH5pwRhF3','2018-02-21 21:36:46','2018-02-21 21:36:46'),(479,1,'nZrH9JwWlt3OXvCfh8hh9p0fCFh9Gan8','2018-02-21 21:36:51','2018-02-21 21:36:51'),(480,1,'jBa6DrFUBPWNG8KaASYZxrE4w2lptqOS','2018-02-21 21:36:56','2018-02-21 21:36:56'),(481,1,'XWo03jNVyqArtVa1OzgmeeT3Ezn6JGaQ','2018-02-21 21:38:06','2018-02-21 21:38:06'),(482,1,'uQUJuvhwz04dvUq8pIaqsRcARFnqFM7Y','2018-02-21 21:40:23','2018-02-21 21:40:23'),(483,1,'zAhuaHVvFKHzKLtd97TcRfzUAcsyhbiH','2018-02-21 21:40:26','2018-02-21 21:40:26'),(484,1,'Qxy3ORFoah1qKP4nEs4xRxX5g4Uz1wj8','2018-02-21 21:46:57','2018-02-21 21:46:57'),(485,1,'2MeBrEbdycoCKwMhFtFU4pTtL4J9UBMZ','2018-02-21 21:48:18','2018-02-21 21:48:18'),(486,1,'93jUvByrypgybAchlhBX1d5pJ5NAASFc','2018-02-21 21:49:09','2018-02-21 21:49:09'),(487,1,'RyMwhOC29TLsjeJCF7BYQnoX83VV9hCO','2018-02-21 21:49:21','2018-02-21 21:49:21'),(488,1,'YBMRpjlgkxNpdVGk3nhxJ7cbsVwdjcqL','2018-02-21 22:02:51','2018-02-21 22:02:51'),(489,1,'zpuNvmYAm6eTUpyRBnyua7GaWhc670S4','2018-02-21 22:08:03','2018-02-21 22:08:03'),(490,1,'U5WjQvO5AC7GE4cvXbIojNHgOBJpIlh0','2018-02-21 22:09:20','2018-02-21 22:09:20'),(491,1,'bIm28bUVWtJFP0ZEzsIs5BvxqfeSnYgT','2018-02-21 22:10:08','2018-02-21 22:10:08'),(492,1,'n1JwMWp1KBNXlXxDSYJcnOeohuLTE1Ls','2018-02-21 22:11:40','2018-02-21 22:11:40'),(493,1,'5nYcZsseTm5mEF56xID1J6TuoIPBnEPd','2018-02-21 22:11:51','2018-02-21 22:11:51'),(494,1,'zEa94sq0lkKaW1W7ZBBtznOs3eIBiUBr','2018-02-21 22:11:53','2018-02-21 22:11:53'),(495,1,'9cqFYefn6f1zlJvMDUmUK4E9exs3SpNk','2018-02-21 22:13:03','2018-02-21 22:13:03'),(496,1,'8zx6nNGcHORggpOzpHEO9I90tulXWobp','2018-02-21 22:13:32','2018-02-21 22:13:32'),(497,1,'AVt9vLybm9lkmSwvRYJN7kgt8IDvBKiR','2018-02-21 22:13:51','2018-02-21 22:13:51'),(498,1,'MB0KwwErvLcB4iRVByXOxaGEo1SAR5f0','2018-02-21 22:14:26','2018-02-21 22:14:26'),(499,1,'XxPv4imXRYtbaU8E4uzAMxZOP7Wrfrtl','2018-02-21 22:14:40','2018-02-21 22:14:40'),(500,1,'puFTjqBaBYBM9zVeH4UDIqIbP6a1kcgX','2018-02-21 22:14:45','2018-02-21 22:14:45'),(501,1,'SN87mJnQWF9hFluBozgcHgR6QuBCFjZ6','2018-02-21 22:15:57','2018-02-21 22:15:57'),(502,1,'1tYIAK3RBs29RNBcdzyswx2Dyp9CEjKb','2018-02-21 23:00:30','2018-02-21 23:00:30'),(503,1,'KhAQqddnNQ6ip120yE5TVqPJQo1GrhBj','2018-02-21 23:01:32','2018-02-21 23:01:32'),(504,1,'3xn8DLAidgg6XC4xUUkpWO0msZ4jf3u7','2018-02-21 23:03:49','2018-02-21 23:03:49'),(505,1,'ZwbNSdJXyGstLb7pUxucQFhmQuhpIwWh','2018-02-21 23:10:46','2018-02-21 23:10:46'),(506,1,'Ms0xoe2uSAJYs2jKclitlorL7cKqtMoq','2018-02-21 23:11:44','2018-02-21 23:11:44'),(507,1,'a46cOHUDD1z1dBA0GyCFcDATvq0ySsaK','2018-02-21 23:51:27','2018-02-21 23:51:27'),(508,1,'T2xqPGA6HbxRCGuPWrkdeqTEUxNWsER8','2018-02-21 23:51:30','2018-02-21 23:51:30'),(509,1,'xdHxPeo2YhA6nIVIY0NvL6pHCzwx4Kmc','2018-02-22 00:07:53','2018-02-22 00:07:53'),(510,1,'ccbOCuwZz1gGXFIKnD9FXJJr43iPKH0y','2018-02-22 00:07:53','2018-02-22 00:07:53'),(511,1,'RMqChOWXnXGF8SgvZmzpoB6liu0OsWfW','2018-02-22 00:07:53','2018-02-22 00:07:53'),(512,1,'Qr2Sib7PaCzmoSQqazTNEpwN0MdchfOP','2018-02-22 00:08:26','2018-02-22 00:08:26'),(513,1,'XODoXEk7smNlJz72tfUqg7WalCvwUkh6','2018-02-22 00:09:54','2018-02-22 00:09:54'),(514,1,'YbMKZP46rKoeybXh5yB4fngFkBuRCjmr','2018-02-22 00:09:56','2018-02-22 00:09:56'),(515,1,'o00H3igFxlRbvqlbre2MOeG9PwBQBhjN','2018-02-22 00:09:56','2018-02-22 00:09:56'),(516,1,'0oem5rsxKjPftUpguqYctxpFKQ7NxfQV','2018-02-22 00:09:56','2018-02-22 00:09:56'),(517,1,'quaIUM3DuIBIWUuIS7xmGxMbMwCqKgeV','2018-02-22 00:14:04','2018-02-22 00:14:04'),(518,1,'r9GNQDblBpGOtetRo8Wz3RLtlXw3EWtj','2018-02-22 00:14:06','2018-02-22 00:14:06'),(519,1,'F3H4iUAJAXaErgAXcueakRfmWTwmpPpO','2018-02-22 00:14:45','2018-02-22 00:14:45'),(520,1,'YDwyVQDafSXdOugKx3ILAmBFa9a45YNu','2018-02-22 00:14:54','2018-02-22 00:14:54'),(521,1,'rmsNzDLon8TmXvxEo6FhR980RXRqOiUo','2018-02-22 00:14:54','2018-02-22 00:14:54'),(522,1,'T6bzQBnGmlzjBLLdhbfBJfPDuzFbwFkf','2018-02-22 00:17:06','2018-02-22 00:17:06'),(523,1,'vsAl7xtA7quNRtnJxf9jtXHybrHOoaCO','2018-02-22 00:19:38','2018-02-22 00:19:38'),(524,1,'oN9uO4jHH1t22T7chGkDL6lfMfCGFCpM','2018-02-22 00:24:50','2018-02-22 00:24:50'),(525,1,'ywCqDdkKkamyYTpoKYMqATohz8BAD9rD','2018-02-22 00:24:52','2018-02-22 00:24:52'),(526,1,'gBnFznDNQkRPtub6yPW7ltfCFNoowvJk','2018-02-22 00:29:38','2018-02-22 00:29:38'),(527,1,'TanMLo4Z1iYdaxnpxKtfcjAvnN6Xf38e','2018-02-22 00:29:40','2018-02-22 00:29:40'),(528,1,'tmSIbFnydLuGtC0OWfwuL0Lz0173FHIU','2018-02-22 00:39:56','2018-02-22 00:39:56'),(529,1,'N0HO7XmnS8oUZqTwZWIyImf8xgy9X4mV','2018-02-22 00:40:59','2018-02-22 00:40:59'),(530,1,'GFUcetChxz29eKqwifS9BJhSBsIGSFWT','2018-02-22 00:41:39','2018-02-22 00:41:39'),(531,1,'SV5AB5SIrDmNLX0DR0J0Z9Wi4vqfiv5p','2018-02-22 00:43:12','2018-02-22 00:43:12'),(532,1,'X6LSWswkmUc17LCoRVTZl0fwtGwf94wz','2018-02-22 00:45:17','2018-02-22 00:45:17'),(533,1,'7aKBHP0NYkodcG9VgdinOkWJKaEosIDm','2018-02-22 00:46:25','2018-02-22 00:46:25'),(534,1,'cR0aDkn2NA1dycomFGZKoJ2EW9z0wSf1','2018-02-22 00:47:35','2018-02-22 00:47:35'),(535,1,'Zfl1n7Lq0wWhL6EpLYUmIe8w9MMfNnKe','2018-02-22 00:48:29','2018-02-22 00:48:29'),(536,1,'DcdwIpI6ImMLcMVuJG4JB2X9nhBaP8bL','2018-02-22 00:49:04','2018-02-22 00:49:04'),(537,1,'1OViA3Ase5NpbQONFUvSWvKZR5JHeisS','2018-02-22 00:49:06','2018-02-22 00:49:06'),(538,1,'Afi9LuyaY4AYU5GRqIQE2p9MzLnnAGzO','2018-02-22 00:49:12','2018-02-22 00:49:12'),(539,1,'TSkSaAkNbwxu2TlwMOwJYymL6TCbjF0H','2018-02-22 00:51:09','2018-02-22 00:51:09'),(540,1,'zj4GSS7KpUXsW2InIFCn1w3yaSSh0gN6','2018-02-22 00:53:29','2018-02-22 00:53:29'),(541,1,'zAsxl9iWhIrV2iRTqX3gjUa0mpUgKoo3','2018-02-22 00:53:50','2018-02-22 00:53:50'),(542,1,'yGB41WKHFCmNJoOjhS3XnM6R1tEsYhv0','2018-02-22 00:53:54','2018-02-22 00:53:54'),(543,1,'WD0lY5e0PJHpOkCCAOOmtHyusbJr8DLj','2018-02-22 00:53:54','2018-02-22 00:53:54'),(544,1,'GsxWx8kRBRZmDK1ac810X4rpA9EFgUZn','2018-02-22 00:53:54','2018-02-22 00:53:54'),(545,1,'mf0deYiaWwgvZODEEPLEgNEK2y8jHuWG','2018-02-22 00:54:16','2018-02-22 00:54:16'),(546,1,'aXR98eIur6wz6lmIuumHamEA6Ml7esow','2018-02-22 00:55:56','2018-02-22 00:55:56'),(547,1,'SfqK5SKPvSFO1n4vAAEJBPBjrOF6bs5Q','2018-02-22 00:56:43','2018-02-22 00:56:43'),(548,1,'b3de0pYOGVc9qGaCOWBeiy7qdxzA9AuM','2018-02-22 00:57:59','2018-02-22 00:57:59'),(549,1,'uTDBGaEVLdFywkr652tWZFi4GKevjqt4','2018-02-22 01:04:53','2018-02-22 01:04:53'),(550,1,'fMv3kqHwn3IzI3n0mqeXRTJpjhVqcV9E','2018-02-22 01:05:41','2018-02-22 01:05:41'),(551,1,'mQtqPyVWJCCvzxzcLkSRuqJ0mD2b9ZML','2018-02-22 01:08:42','2018-02-22 01:08:42'),(552,1,'wfRXnyRDMyNUL7bsWe5unV7yCnk6Mlxe','2018-02-22 01:08:53','2018-02-22 01:08:53'),(553,1,'XpMZknEQcT2kDWdjc7gCMR0Yq7IdAOPq','2018-02-22 01:14:35','2018-02-22 01:14:35'),(555,1,'bvpIre26JkqV28xf9L89XQlko4hbSZ0Z','2018-02-22 01:21:27','2018-02-22 01:21:27'),(556,1,'Al13302jH4URqoSQUKXtxq5oOfe6UfSm','2018-02-22 01:21:30','2018-02-22 01:21:30'),(557,1,'KSPKLZYDhcocSL8WBq4S59zdEqp5DxjB','2018-02-22 01:21:31','2018-02-22 01:21:31'),(558,1,'CvyhhB9rf2iXXo2Rr7eEVSv5EKTd8JRi','2018-02-22 01:21:31','2018-02-22 01:21:31'),(559,1,'H2aGWDFGFUnfbK3HyFzA7bJDp3plrL0f','2018-02-22 01:22:01','2018-02-22 01:22:01'),(560,1,'KMufiaaPzMk8a9tNKCb2BU53XdTtZEDp','2018-02-22 01:24:31','2018-02-22 01:24:31'),(561,1,'JIkwWfZ0mSdAqvkgxO5I5JPZtcozKhSK','2018-02-22 01:24:55','2018-02-22 01:24:55'),(562,1,'55ClwfliHgr2ybWOIYgpAZs9UNsMGaA8','2018-02-22 01:25:18','2018-02-22 01:25:18'),(563,1,'Hmsrqi4zvIbK3XKUBdioJ2mgKlefDIfw','2018-02-22 01:26:06','2018-02-22 01:26:06'),(564,1,'u7Rf0iKZ8LvY8KE4cTvhAMkDMwk1eWJT','2018-02-22 01:26:46','2018-02-22 01:26:46'),(565,1,'ivMkl3VPC8wl5ETDAZY9iehJI8fIikTT','2018-02-22 01:26:53','2018-02-22 01:26:53'),(566,1,'CePlHysmzE6tDm0sKSaMRX2chpRqfOzr','2018-02-22 01:26:57','2018-02-22 01:26:57'),(567,1,'0eRRSbuvfeMtm33s1Y4Thp6r72Hp2Xhf','2018-02-22 01:27:00','2018-02-22 01:27:00'),(568,1,'fHcQPMgr4wmnyFwftM1IIAhPTCYkilu5','2018-02-22 01:27:01','2018-02-22 01:27:01'),(569,1,'GsxwNUJHYUL3jWUdLHCl3p5lyBdD5ZYC','2018-02-22 01:27:01','2018-02-22 01:27:01'),(570,1,'Fut5qjFdMMuzPKx4SocnWqk4wqNdRgwO','2018-02-22 01:27:02','2018-02-22 01:27:02'),(571,1,'y5wT9dpGaUhIwDUevH8ZEhDPMpzNOgoM','2018-02-22 01:27:29','2018-02-22 01:27:29'),(573,1,'WweBm8GgIdgSwrPBPzU9HuPQB5n9vaW4','2018-02-22 01:30:05','2018-02-22 01:30:05'),(574,1,'Gu9bTsZ66Pgbl8AHP9guI2JfNL3CdSDr','2018-02-22 01:30:09','2018-02-22 01:30:09'),(575,1,'yFx8l5ChACHo6cIoTQ48wpdXF8GZpVuK','2018-02-22 01:30:09','2018-02-22 01:30:09'),(576,1,'LWNpsURz7cCPGKKqJ2O72wreOZSTbbKm','2018-02-22 01:30:09','2018-02-22 01:30:09'),(577,1,'Ld2cODfIfLO64Oe0EBksaG3gOuDHfpHM','2018-02-22 01:30:13','2018-02-22 01:30:13'),(578,1,'n2sxV5F2zCosP2uqa5cD2SKFQIHpIHpV','2018-02-22 01:30:13','2018-02-22 01:30:13'),(579,1,'1r3VWlnKBOZH7JWobak07ozQRkMghtX5','2018-02-22 01:31:12','2018-02-22 01:31:12'),(580,1,'7HLUEZBl0rfgKxN1JZ8qaeWDjkAsrIsB','2018-02-22 01:31:13','2018-02-22 01:31:13'),(581,1,'fQzlcniDJZRJUSkqBYyiIwBRajJRdwkt','2018-02-22 01:31:14','2018-02-22 01:31:14'),(582,1,'BKLeMQtKbGcl10yzun2JvdYx1wyTu8YF','2018-02-22 01:31:14','2018-02-22 01:31:14'),(583,1,'nEWTSylrd5xo6flcBgBlFUF0cEGGB9SF','2018-02-22 01:31:40','2018-02-22 01:31:40'),(584,1,'5N6LgJesucV6cAGBZwAOUJZzA1tzb1ym','2018-02-22 01:38:46','2018-02-22 01:38:46'),(585,1,'ng5Sw6XD6ajyOfpaXmx3gvfVebUYiwKW','2018-02-22 01:39:07','2018-02-22 01:39:07'),(586,1,'q64O9Ee7G1VXobiOaMDWg5eK78o7FAms','2018-02-22 01:39:27','2018-02-22 01:39:27'),(587,1,'av1rc5h0dzq9dS9B3GjDFnuZ1Rf6NJJl','2018-02-22 01:39:33','2018-02-22 01:39:33'),(588,1,'mrofwbmaIbjguZj8jaQL4CjOI22y1ilM','2018-02-22 01:41:31','2018-02-22 01:41:31'),(589,1,'88XZ61G5t9kLD4dTN65X0wZQFRCHHdti','2018-02-22 01:41:32','2018-02-22 01:41:32'),(590,1,'lnhxToSHf18V8aLMR7ooqiBdnROVm6Xm','2018-02-22 01:41:34','2018-02-22 01:41:34'),(591,1,'dOBv94JSAwVfSiulYHocs3sExxK9Z3NL','2018-02-22 01:41:34','2018-02-22 01:41:34'),(592,1,'iIG8fDD8Yf4rKG1G32rPdQcvdHNpVFIA','2018-02-22 01:41:34','2018-02-22 01:41:34'),(593,1,'NLEtYtRdVeKsKDmLRvoezYgRL3iR8xeo','2018-02-22 01:42:14','2018-02-22 01:42:14'),(594,1,'GdUsL9SIl9zD0bq4VaLmOxpLiMRqtdWM','2018-02-22 01:43:24','2018-02-22 01:43:24'),(595,1,'zW0OxzwxavJyNiPyw7gpjF76OHTLkFrC','2018-02-22 01:43:39','2018-02-22 01:43:39'),(596,1,'hQiPy8TSGaaIo7cbtzFVTpQ65bxrEwqB','2018-02-22 01:43:39','2018-02-22 01:43:39'),(597,1,'X8uNo6GE6OinxkjHEi5VxJiDHiG5Hyzp','2018-02-22 01:43:49','2018-02-22 01:43:49'),(598,1,'yVg3b1r9kXm0TExoTwalwhJIDXdQOe2w','2018-02-22 01:43:50','2018-02-22 01:43:50'),(599,1,'5rfrxx6Q49tnXkrEmm5YJZ3qSmtGQuki','2018-02-22 01:43:50','2018-02-22 01:43:50'),(600,1,'PqZ3nubsp6yNtcNOsUj6kjAoUNkemBCQ','2018-02-22 01:43:53','2018-02-22 01:43:53'),(601,1,'thnd91vqiDw5MYUJzkbqMuntjS4WcxSn','2018-02-22 01:45:30','2018-02-22 01:45:30'),(602,1,'C8cVRjtQwQL8B3mOyJvRJjxvIWnKa5pe','2018-02-22 01:45:30','2018-02-22 01:45:30'),(608,1,'6iClVSiSxZvMo8KpJMrGD2ifZSDcec1o','2018-02-22 02:20:48','2018-02-22 02:20:48'),(609,1,'lCcYkeoO8SnZf7C5cltlmJbh5u0PNwyl','2018-02-22 02:22:13','2018-02-22 02:22:13'),(610,1,'6ChdDMk7t3idPPWyKsn7AQbxzGjgfONg','2018-02-22 19:21:28','2018-02-22 19:21:28'),(611,1,'DNV6HjQvM7hMsJPiARU7MjbTAcKmufM8','2018-02-22 22:27:09','2018-02-22 22:27:09'),(612,1,'F7SxouT80aBWatVSPke2TowRuGbhokrV','2018-02-22 23:57:16','2018-02-22 23:57:16'),(613,1,'zqOpPcxWsESV97dusejAefWW6QdQxBbn','2018-02-22 23:57:47','2018-02-22 23:57:47'),(614,1,'nKr01mC6tYzneFxIhBcS26l4WdcWQwTz','2018-02-22 23:58:13','2018-02-22 23:58:13'),(615,1,'ZFUZDXBTBUNEPqfPKEXgjpWX3RF36aJE','2018-02-23 00:10:51','2018-02-23 00:10:51'),(616,1,'57hPxApivdEAtbYW2dfjIeCZdeWVpkns','2018-02-23 00:11:32','2018-02-23 00:11:32'),(617,1,'DEHOxkx36HmVov0nILuL9Qc6MzBhmsm1','2018-02-23 00:11:44','2018-02-23 00:11:44'),(618,1,'LZDb8v9xRQGSeMUrFyxhxJ5SropjxSwH','2018-02-23 00:11:56','2018-02-23 00:11:56'),(619,1,'mSyExWf1zENSoYHpjWxU1PaOjp3PzdXZ','2018-02-23 00:12:06','2018-02-23 00:12:06'),(620,1,'5WKikZ5gc7b5nNKy3QVhEzVsUnqgsuRT','2018-02-23 00:12:19','2018-02-23 00:12:19'),(621,1,'vJYugQJRVHrjDPXHLN2VywOC6p6b8TGs','2018-02-23 00:12:24','2018-02-23 00:12:24'),(622,1,'Y5LLsXEpf44dZ86bgRhCsaEQMnUyDwWP','2018-02-23 00:13:12','2018-02-23 00:13:12'),(623,1,'AQRnJL7V1P2UqosizDFHOseF4B6VFaNK','2018-02-23 00:13:22','2018-02-23 00:13:22'),(624,1,'eGGkxVbFTgcxx41AX4QUEHiCfvBKAmc3','2018-02-23 00:13:26','2018-02-23 00:13:26'),(625,1,'qMEgnPm8zHLxAasEriPCUmNqDPvUERo4','2018-02-23 00:13:32','2018-02-23 00:13:32'),(626,1,'u635NrrEIkLnc5AolI6m9VeNrl5icNQc','2018-02-23 00:13:37','2018-02-23 00:13:37'),(627,1,'dwwEb1prR4Hu53sDJAtOgC5lxLcWRBOv','2018-02-23 00:13:43','2018-02-23 00:13:43'),(628,1,'rpWbYTELNWI2i6RC3DBE6FY7u9RNl5wO','2018-02-23 00:25:39','2018-02-23 00:25:39'),(629,1,'ZWjKxO7U4TJUmexy7XXrxUDC3JAcMfc1','2018-02-23 00:25:45','2018-02-23 00:25:45'),(630,1,'n1iRTwkmhiTpazcPyVBmv2DgeleQPsLg','2018-02-23 00:25:59','2018-02-23 00:25:59'),(631,1,'JscOIOBtPq2NV7x87kS5YuWTOjCarXba','2018-02-23 00:28:01','2018-02-23 00:28:01'),(632,1,'XfvHHHWRpQ7VLzGNymEIRYrNf9sUbaQn','2018-02-23 00:28:05','2018-02-23 00:28:05'),(633,1,'txsSbrBeOD7zDv0NuNiGQucvM9i1Hihe','2018-02-23 00:40:00','2018-02-23 00:40:00'),(634,1,'4f6EeBGblMNM9jKFQWx8qmY3PgShKyNS','2018-02-23 00:40:51','2018-02-23 00:40:51'),(635,1,'ZG9nkiHPh0I8TiJFZOPZ8avwGA8cEAC0','2018-02-23 00:41:42','2018-02-23 00:41:42'),(636,1,'GZa2LnQ2DoyO65Qr96IxNGipRB3fRxEO','2018-02-23 00:44:52','2018-02-23 00:44:52'),(637,1,'RtQl6roL2m56qBInw2jAD10htGvC12Qi','2018-02-23 00:46:50','2018-02-23 00:46:50'),(638,1,'lLXU2mIlkgryckRLFcKAFtLoz29MQ9fb','2018-02-23 00:48:11','2018-02-23 00:48:11'),(639,1,'Mvk5dI5T9GHyMBCxIwns32jiN0L9z70v','2018-02-23 00:50:22','2018-02-23 00:50:22'),(640,1,'jTCWSyIn69jUvquYuP45jDnsJJkteXRS','2018-02-23 00:51:27','2018-02-23 00:51:27'),(641,1,'lfmZMe9KjjFfvULTOaCpKzbocjfxiNFU','2018-02-23 01:06:29','2018-02-23 01:06:29'),(642,1,'h54acSmqf6sltovuWPaQtddgskk0Xc21','2018-02-23 01:08:14','2018-02-23 01:08:14'),(643,1,'SVWsESb7cRySZkloPmpPad9Syxo4TQ8i','2018-02-23 01:10:25','2018-02-23 01:10:25'),(644,1,'QM4ztbwD2ps7xoswx2Nk9AFU3t9eS6hG','2018-02-23 01:11:13','2018-02-23 01:11:13'),(645,1,'xhV0ItSHp3DDZfBDtR3dr8H4pBBixSmU','2018-02-23 01:12:12','2018-02-23 01:12:12'),(646,1,'N2nxcUvaRH7kNFkoRRrVNoZ3RAZUiji5','2018-02-23 01:16:13','2018-02-23 01:16:13'),(647,1,'rFduP7dNxxx5s48NG2jEL4UQeJbvlSNJ','2018-02-23 01:16:57','2018-02-23 01:16:57'),(648,1,'mWgLB1lUlKfx0a4t5RT7UX5CmIvdNFuJ','2018-02-23 01:17:16','2018-02-23 01:17:16'),(649,1,'WY47w8cYSWbv8ompSt7nFkaF6IW1TJVj','2018-02-23 01:17:37','2018-02-23 01:17:37'),(650,1,'nvyTuisOjTqzV8b1H6Qu6qn8c5NZ5hww','2018-02-23 01:20:31','2018-02-23 01:20:31'),(651,1,'6bxt8wswX8gNIdpT0pcEEo1p4LfbtsXv','2018-02-23 01:23:12','2018-02-23 01:23:12'),(652,1,'CGesO8xDoBvBbPjLLC5ETRzxdFaFKhoL','2018-02-23 01:24:22','2018-02-23 01:24:22'),(653,1,'pVMBXVZmo7XRAsW4ZbEpMsOaCiW4X0nG','2018-02-23 01:24:44','2018-02-23 01:24:44'),(654,1,'pNNGbmJ0NLYyPsm7MudnuWBXlxndg17Z','2018-02-23 01:24:54','2018-02-23 01:24:54'),(655,1,'MpDoDFVCIibE2pHkRXOEtia3cv8gRr7d','2018-02-23 01:51:12','2018-02-23 01:51:12'),(656,1,'NPQ4bbfxxAWraff5iKvJB9aEozjz9sUb','2018-02-23 01:51:14','2018-02-23 01:51:14'),(657,1,'culCgGWx9ZufMRNeBlnJfU8l4IHbP9mv','2018-02-23 01:57:20','2018-02-23 01:57:20'),(658,1,'jbiCUcxfD4Bxjm2zI1pqlU9bohKfCWCP','2018-02-23 01:57:31','2018-02-23 01:57:31'),(659,1,'HyYnKv3Y8t95owiq49OU59Ya7hwQvADb','2018-02-23 19:15:22','2018-02-23 19:15:22'),(660,1,'zUCtz9T2ftPuDGNieyI1Nf5A042sTR3s','2018-02-23 19:25:10','2018-02-23 19:25:10'),(661,1,'8ng85AkPoeky4lUIKXriCs2zjvBheRy6','2018-02-23 19:45:10','2018-02-23 19:45:10'),(662,1,'n7t5szrsz0xlwIRVX8tEFVR4hH6wFKTz','2018-02-23 19:47:19','2018-02-23 19:47:19'),(663,1,'eBOWoVldWZgQZdKIWp6xLmdveNe4iMpt','2018-02-23 19:47:29','2018-02-23 19:47:29'),(664,1,'yDFLkPSbQ4eOOuGzQSb7j8fZhLoz5IHw','2018-02-23 21:40:15','2018-02-23 21:40:15'),(665,1,'WsXulvVrmKwhF31xgjiT7ccmdWcKhsC0','2018-02-23 21:40:30','2018-02-23 21:40:30'),(666,1,'WPvAw3kXf8LNv9tyVj9ebsoPCNbzAecm','2018-02-23 21:54:51','2018-02-23 21:54:51'),(667,1,'qFnn8aZ2kWS93av4wmoTWl59UK6pMfm1','2018-02-23 21:55:13','2018-02-23 21:55:13'),(668,1,'JQmvjgwleEg0mcZcmCCq1Ybirgby1F94','2018-02-23 22:30:28','2018-02-23 22:30:28'),(669,1,'eaAXTqx3PCc7SOlk2hMfxlYPpolgsCWT','2018-02-23 23:16:36','2018-02-23 23:16:36'),(670,1,'QYpbchBlXViyCmQf1pHorPZNdsMmqQSW','2018-02-23 23:17:45','2018-02-23 23:17:45'),(671,1,'rTK9ILdpVJdZLajd6Pcccuhdyg7idWKy','2018-02-23 23:19:38','2018-02-23 23:19:38'),(672,1,'eo5iHlPV97Op0QdnDC9Kxy3sFiTCN9Tf','2018-02-23 23:19:54','2018-02-23 23:19:54'),(673,1,'zZDSfs7ZLMJRJQ65n3R3VXXAFbwyVlI6','2018-02-23 23:20:13','2018-02-23 23:20:13'),(674,1,'TzsWbb8wwr7wKsn8MovltsbZkwfmsnIw','2018-02-23 23:20:20','2018-02-23 23:20:20'),(675,1,'pwOOnbBbwWabmRCff7jnCsPKybkAonkR','2018-02-23 23:25:01','2018-02-23 23:25:01'),(676,1,'7gtfYmbNTgpHmMGKqSgwFXseARvsjU4b','2018-02-23 23:31:42','2018-02-23 23:31:42'),(677,1,'A4QJxSzXnAnPwGzQU8jXTZ2NE2ZuEsWc','2018-02-23 23:32:36','2018-02-23 23:32:36'),(678,1,'0QyhMfSKIw8xVtAsUAhV2DwUbkdRTU9Z','2018-02-23 23:46:15','2018-02-23 23:46:15'),(679,1,'XkdJ3xsAeLflicLhIx7v0CMHXTbsPMeS','2018-02-23 23:47:19','2018-02-23 23:47:19'),(680,1,'x1UATgDGxirpEMrysDf27ssJfnJ1ODrr','2018-02-24 01:49:07','2018-02-24 01:49:07'),(681,1,'PtQCFWHaXwGXPuU2wywjwBaXqAITPpti','2018-02-24 01:49:34','2018-02-24 01:49:34'),(682,1,'tPu6Hhsr709oBktnd2yWtw9rR7QHoKAx','2018-02-24 01:50:18','2018-02-24 01:50:18'),(683,1,'JJklDgMweYFNjloZyuDR5MISCpGExAmH','2018-02-24 01:51:32','2018-02-24 01:51:32'),(684,1,'foJzFgySTuCYsvmQYnJVxDMAD52tgQ7T','2018-02-24 01:53:12','2018-02-24 01:53:12'),(685,1,'aKM5TU89jCygjGmSM6kjuLT0b8h7NjbC','2018-02-24 02:00:23','2018-02-24 02:00:23'),(686,1,'O5by0giF95gW8kznc5P5KGHvIne60RCq','2018-02-24 02:22:13','2018-02-24 02:22:13'),(687,1,'32tK3vUv7aFr2zgMXy8vp8CR5hpKn0Sz','2018-02-24 02:22:50','2018-02-24 02:22:50'),(688,1,'yWI6c2jZA4joo2waUT1r3EXRFwDh2Pck','2018-02-24 02:23:46','2018-02-24 02:23:46'),(689,1,'4tp7vEDGR0po1LM11j2abAvMugfT7ugv','2018-02-24 02:25:42','2018-02-24 02:25:42'),(690,1,'vkTMgt4obRLUz4bC9kSXdRCtdcx9gu9j','2018-02-24 02:26:44','2018-02-24 02:26:44'),(691,1,'H93NznZ44TPR1kVD0JaOvn9wII4Pibqg','2018-02-24 02:27:48','2018-02-24 02:27:48'),(692,1,'t87tYmxYxLjgDhzdWiaHJaE7azkAUUox','2018-02-24 02:29:17','2018-02-24 02:29:17'),(693,1,'vtVHNIrWd0MWLyJ2TqUWzYaq4YOqHTig','2018-02-24 02:29:56','2018-02-24 02:29:56'),(694,1,'gGNpKZIVnncmqoJ1damhrWckBpjEaZy3','2018-02-24 02:31:44','2018-02-24 02:31:44'),(695,1,'MriGXJ5RmiiZi1QIQScbxS5ZCf2mlnyh','2018-02-24 02:33:36','2018-02-24 02:33:36'),(696,1,'dpCqZb0ZrAkBEAjR5mzkTpC1wFa3Yz45','2018-02-24 02:34:43','2018-02-24 02:34:43'),(697,1,'qtuLisRUL0De6gWNQcEGikvGK5cxhcxO','2018-02-24 02:39:15','2018-02-24 02:39:15'),(698,1,'ZCPD17yvEbUk6yq94ZLcQ1zu8uat78Gl','2018-02-24 02:41:44','2018-02-24 02:41:44'),(699,1,'ZeuFATwJSIas7gtCdojtGDnE89g2gY2Y','2018-02-24 02:44:29','2018-02-24 02:44:29'),(700,1,'UPpwfNofnKOZDRbMiMe1KdmU4oWJ5RVq','2018-02-24 02:46:31','2018-02-24 02:46:31'),(701,1,'ClcoH43ONwsiRDUpSUoXd4O5c3XN4w4H','2018-02-25 19:07:03','2018-02-25 19:07:03'),(702,1,'FTDdWrx8aletRp6Hc8j3J8T49J6bWn1p','2018-02-25 19:07:21','2018-02-25 19:07:21'),(703,1,'nBqYeMRN9TjThsbeZcAFpdToHtKQ3AZo','2018-02-25 19:07:32','2018-02-25 19:07:32'),(704,1,'NOhVgyLC0QV43oEWlIxlgnOYq6Q7hNDx','2018-02-25 19:07:39','2018-02-25 19:07:39'),(705,1,'cSqh3s74aMSpZ6IIb7w2huHZlZBCs4xa','2018-02-25 19:09:38','2018-02-25 19:09:38'),(706,1,'8QVM1yvSJ2VQilm54sOOdISWEj4BVeKp','2018-02-25 19:11:30','2018-02-25 19:11:30'),(707,1,'uT9KaKF0XjVYCRt6qbt7vysWB6w43KJx','2018-02-25 19:14:56','2018-02-25 19:14:56'),(708,1,'clPO3TTdTZ6t64Tr9sKxDir5FOskcgky','2018-02-25 19:15:20','2018-02-25 19:15:20'),(709,1,'TT3SG03CEFVx0TsIzo6KekVV2UtnDzO7','2018-02-25 19:16:21','2018-02-25 19:16:21'),(710,1,'BrUJSsK2rHKl8Zs4DjbSQSkbMrkSXhzp','2018-02-25 19:25:05','2018-02-25 19:25:05'),(711,1,'jm4qWVIrEBpwYUEHW4y6Y4fyec0z55qw','2018-02-25 19:29:53','2018-02-25 19:29:53'),(712,1,'OMHs1aW2HV0BF40GS2brtHjMFIHXVVM9','2018-02-25 19:43:57','2018-02-25 19:43:57'),(713,1,'TSCbZ7Goxu2usqhcGqfK4qAgCYFSHD3z','2018-02-25 19:45:36','2018-02-25 19:45:36'),(714,1,'es1WXXAsjatiVW8oYa7nF0tPC6mQPXJu','2018-02-25 21:33:15','2018-02-25 21:33:15'),(715,1,'fm2qiFl8azcLPiZTffzc6IsyKvKwDGNP','2018-02-25 21:34:18','2018-02-25 21:34:18'),(716,1,'cMXGAr42qiqGTxBBtRV3S8utZJSOgItt','2018-02-25 21:35:08','2018-02-25 21:35:08'),(717,1,'jWvEuCk4SwHoYHvdmMEMUYV2U5T8c8vc','2018-02-25 21:35:50','2018-02-25 21:35:50'),(718,1,'6dPLtpmfDh2GlrJpb8kRS3tHv2Lg5J38','2018-02-25 21:40:17','2018-02-25 21:40:17'),(719,1,'lE1cIoV5EHfllCPndndD1ARE0F5emtCY','2018-02-25 21:41:40','2018-02-25 21:41:40'),(720,1,'cgOxMHYKn1DzUBs0evXDdWqIF4ILMNBz','2018-02-25 21:43:50','2018-02-25 21:43:50'),(721,1,'ft13UMHfWzWxzDgZObm74JjjbvVag5MY','2018-02-25 21:44:56','2018-02-25 21:44:56'),(722,1,'5EGIbH7sJ6l2HpeKKdjNOOkxPu1NImG4','2018-02-25 21:48:12','2018-02-25 21:48:12'),(723,1,'pGTPBoiUk8Ai61mmWDnLCac1Cx5WI7SC','2018-02-25 21:50:24','2018-02-25 21:50:24'),(724,1,'LXh3offdppMaURExLeTICUlgvPzU2h41','2018-02-25 21:58:58','2018-02-25 21:58:58'),(725,1,'QMZrOxIGL4hYvuiCttUDUdU9zGADtNZE','2018-02-25 22:01:09','2018-02-25 22:01:09'),(726,1,'bCvjzEIGp0WFQkE5jN7Jak868gJWPmmB','2018-02-25 22:06:17','2018-02-25 22:06:17'),(727,1,'pld9SsgE8MO9QHPmITjQzi7kHCiRxfPm','2018-02-25 22:07:17','2018-02-25 22:07:17'),(728,1,'3th3ypAksgCYAt5qKx1YiHWDgQQb1atp','2018-02-25 22:14:55','2018-02-25 22:14:55'),(729,1,'DGKVnth3g85HWP2jSXAGic1sIt8JDf0F','2018-02-25 22:16:44','2018-02-25 22:16:44'),(730,1,'RjCkj6A4Nscc1gOXyWdIEIlBtMXFY5YA','2018-02-25 22:25:27','2018-02-25 22:25:27'),(731,1,'aiKo735NlaFetVWFzQzF6ekyawEL3r61','2018-02-25 22:27:18','2018-02-25 22:27:18'),(732,1,'KI4dBmt5eQ7ZjbTQ1yoh93KdNnXMW49x','2018-02-25 22:39:14','2018-02-25 22:39:14'),(733,1,'lo58yDNsbwqDLgnveYh0X96m4aGjSxIJ','2018-02-25 22:49:00','2018-02-25 22:49:00'),(734,1,'PG52hmtD86Q9tDCMi0jdkzJ1TUxCvIGu','2018-02-25 22:49:25','2018-02-25 22:49:25'),(735,1,'4Qv4LpS7VVDBFB3itfFfpZEVxBk1F7Pm','2018-02-25 22:50:40','2018-02-25 22:50:40'),(736,1,'1v0zwF5BlUx0frlE8ISnJZzngzf0WYAK','2018-02-25 22:55:42','2018-02-25 22:55:42'),(737,1,'TmvHTA4U3aOJHsULZTluxGODASapF6I5','2018-02-25 22:59:44','2018-02-25 22:59:44'),(738,1,'7urKlJiGpszSn0yO1LtAXAjC46BHh3GY','2018-02-25 23:03:19','2018-02-25 23:03:19'),(739,1,'ldRZ0GzANwD1FqnDUQ3sLRb6QVOrcx9x','2018-02-25 23:04:47','2018-02-25 23:04:47'),(740,1,'BoG2r0eMlf6sVwy5VMBVkByiqQzUxdEb','2018-02-25 23:07:01','2018-02-25 23:07:01'),(741,1,'V6C0BmXCKO57o4UMS3CEXxxSch6dAEMO','2018-02-25 23:09:28','2018-02-25 23:09:28'),(742,1,'FjwDXkC2ArHXcIto2gIfaQTexSQgNAAc','2018-02-25 23:10:06','2018-02-25 23:10:06'),(743,1,'0bZnCE6DEJbXRskutYhfn2hn7w3h3IqD','2018-02-25 23:13:07','2018-02-25 23:13:07'),(744,1,'hffzyRSyvJAJvNJqlH5PwV5dIWPYKoR7','2018-02-25 23:13:36','2018-02-25 23:13:36'),(745,1,'h0jYTwCazxJ0mchilTEda4yBWoi8GnjY','2018-02-25 23:15:22','2018-02-25 23:15:22'),(746,1,'PYxGckyx7PoJ3vSaPHPwIfmadQc1E4Hk','2018-02-25 23:15:43','2018-02-25 23:15:43'),(747,1,'C4DcGmpFPRSkD94aACs6aF1yvIQ1F8vn','2018-02-25 23:18:28','2018-02-25 23:18:28'),(748,1,'MAsm8LcviemufL9x5jVXq4fiTSn0rw8o','2018-02-25 23:19:14','2018-02-25 23:19:14'),(749,1,'55deGY6SAbBWy0O6UbGJpVgACrr7MC2V','2018-02-25 23:19:42','2018-02-25 23:19:42'),(750,1,'3ljlO9Npojukl2iHVIwCrXgt30voaB4V','2018-02-25 23:19:54','2018-02-25 23:19:54'),(751,1,'GpfbimmaX9zutTIlWWWjyoHYReZmEfDi','2018-02-25 23:22:40','2018-02-25 23:22:40'),(752,1,'ktzMtlLS8q9Rq447xJreXUDBkYTrDv4t','2018-02-25 23:23:16','2018-02-25 23:23:16'),(753,1,'QujNAylV5mujKCDoP4ZjNg0e9UMz7c02','2018-02-25 23:24:48','2018-02-25 23:24:48'),(754,1,'bSXISkXL5JRelffZ7LXqJQFGtv8D3JjW','2018-02-25 23:24:59','2018-02-25 23:24:59'),(755,1,'S7dJHtHcAOzNS9GVvQSYwKPDqqx4ynEl','2018-02-25 23:25:05','2018-02-25 23:25:05'),(756,1,'vm8HnCrS11rULgAmbPimJjMknijvECVa','2018-02-25 23:25:12','2018-02-25 23:25:12'),(757,1,'VWc4tCVFEeOBHVE28w8iEIFxCSCU3NqT','2018-02-25 23:25:42','2018-02-25 23:25:42'),(758,1,'Z0kkpbpIQt34wyZeui26Ffo7ynjaDLtd','2018-02-25 23:27:10','2018-02-25 23:27:10'),(759,1,'AuVhnPwob854Pp7hSNF8jYOdvobKj7pH','2018-02-25 23:27:57','2018-02-25 23:27:57'),(760,1,'zZxiU1paiuf0kRALWmiNSJjuUPhGLBc8','2018-02-25 23:29:38','2018-02-25 23:29:38'),(761,1,'6P8RAL7US6FiW8wpxUcResALhWJqdV5S','2018-02-25 23:30:11','2018-02-25 23:30:11'),(762,1,'jJjNfOt7715KktEbox2RSSYBRPp3hRjv','2018-02-25 23:30:15','2018-02-25 23:30:15'),(763,1,'n5OBVUj1uhMSSZkoYrnqSlgsfyqw9tWC','2018-02-25 23:30:32','2018-02-25 23:30:32'),(764,1,'tal8PvVdnrxLyEfL86lj3MeamY3yVBX5','2018-02-25 23:39:21','2018-02-25 23:39:21'),(765,1,'VqjHAx3clNxFuYztkZuiu2Vl175PLCzF','2018-02-25 23:39:24','2018-02-25 23:39:24'),(766,1,'Hg1CwnYwM2GaRT6vZy8aI5CViefpqZKc','2018-02-25 23:40:04','2018-02-25 23:40:04'),(767,1,'p13ob72niFvXEwwIe6xgBhQDxghy9qnM','2018-02-25 23:51:50','2018-02-25 23:51:50'),(768,1,'1rUUy7aWdI3ZsGdLgfeBdFeHCYZXk2Ac','2018-02-25 23:53:11','2018-02-25 23:53:11'),(769,1,'Z6Dd8tSpFtA1wa0mgsBQ1AlT00OYXhSo','2018-02-25 23:53:23','2018-02-25 23:53:23'),(770,1,'bbJE2E9sucQLH0YOAoK39kbKzpKlK37f','2018-02-25 23:54:32','2018-02-25 23:54:32'),(771,1,'CsA4lqKwZcuWkJ1ckwZW29gi7STAKJnX','2018-02-25 23:54:35','2018-02-25 23:54:35'),(772,1,'t1hjNKLfDJBA9rhHr3VZ7kvgm4MKDHwh','2018-02-25 23:55:39','2018-02-25 23:55:39'),(773,1,'ReIXboMvZj3TV3KyjIs6IhemYV4npZfF','2018-02-25 23:55:48','2018-02-25 23:55:48'),(774,1,'VFiV8t7SWRfNOHYM0FLFvSeb45v9gFcm','2018-02-25 23:55:53','2018-02-25 23:55:53'),(775,1,'VHxOUduOCX8dZqy4D5gPC8DWAEVeiXgg','2018-02-25 23:56:37','2018-02-25 23:56:37'),(776,1,'p9aq9fcYPsP4K0i2ntQm01AEkQJMMlBG','2018-02-25 23:58:16','2018-02-25 23:58:16'),(777,1,'SE7O1iPIFsR9xTlJuP56A79iHgr9rXS7','2018-02-25 23:59:19','2018-02-25 23:59:19'),(778,1,'Wcj4SpJvvrPCBrBnvGBMn88ELNgoTqYa','2018-02-25 23:59:22','2018-02-25 23:59:22'),(779,1,'7jnUu55yl3E66CPpjPcIDTvXPxbTs59x','2018-02-26 00:00:31','2018-02-26 00:00:31'),(780,1,'AUi5GtKmYD2iAALpvbdQ3fi5fVjwNZid','2018-02-26 00:01:00','2018-02-26 00:01:00'),(781,1,'CrDT2tLBCAnl3TNFNuPew9L3iJ46WwHw','2018-02-26 00:01:03','2018-02-26 00:01:03'),(782,1,'pGCuOTRUgRBZPrkSwSFzzixngjaIg9uc','2018-02-26 00:01:09','2018-02-26 00:01:09'),(783,1,'GPiyhZj5LZsnQGRfNtiRvZMqdOtSyPGH','2018-02-26 00:07:41','2018-02-26 00:07:41'),(784,1,'kq2rjqQQw9R6YJqIkwSP83YhA0vFhPnW','2018-02-26 00:07:59','2018-02-26 00:07:59'),(785,1,'dCqjJFLP3Pr68w0adiK6ekDUBkzgmS9G','2018-02-26 00:10:37','2018-02-26 00:10:37'),(786,1,'BUf2chsPODlPXZRe1nDsJhMcD0e5NUhp','2018-02-26 00:11:51','2018-02-26 00:11:51'),(787,1,'psPQNNzTSezKJX7AVQxl6OfDfDyPRD0C','2018-02-26 00:13:38','2018-02-26 00:13:38'),(788,1,'oE60h3ElzCmuyqHjJ5L4RzN2DSywzsOl','2018-02-26 00:14:18','2018-02-26 00:14:18'),(789,1,'pKjivf3QKJNpTZGmoMGFiC4GI4naiGUX','2018-02-26 00:15:38','2018-02-26 00:15:38'),(790,1,'XTAyRqiH7cQlFL9TvTYdx6gBQMfCpoqT','2018-02-26 00:15:59','2018-02-26 00:15:59'),(791,1,'QOrsMPADdP9lwmYkLkPVMSjwvOEqq7NB','2018-02-26 00:17:09','2018-02-26 00:17:09'),(792,1,'6h5CruxQGXexDqIyylZLxnPuFp8PeeW4','2018-02-26 00:19:08','2018-02-26 00:19:08'),(793,1,'FUzLFUK0g0rjeyAyWJ3CVKuFjhs9G0OL','2018-02-26 00:20:23','2018-02-26 00:20:23'),(794,1,'c9UgrnUIWNwxReUoRSemoQ7n3zTlrc0Z','2018-02-26 00:21:27','2018-02-26 00:21:27'),(795,1,'Lfqw9MmMeEowEigS5mfWKb6TpZvWEta5','2018-02-26 00:26:10','2018-02-26 00:26:10'),(796,1,'WEM0xIGnDKNC7dX3LoUf5mqhEPstt5Cv','2018-02-26 00:26:46','2018-02-26 00:26:46'),(797,1,'5J4CMw9KmbSMUiyYDwtlKEecmN8GKvYh','2018-02-26 00:27:53','2018-02-26 00:27:53'),(798,1,'r7yfGyhHUbghSRhdkclTmre3dGi68V49','2018-02-26 00:28:46','2018-02-26 00:28:46'),(799,1,'ZIoP0m6g8PzmmzpYBfWfo7oCX7ycP16t','2018-02-26 00:29:05','2018-02-26 00:29:05'),(800,1,'dxGHpedSKIVlIIiI9HCZ9LlRBc7oLqZi','2018-02-26 00:29:11','2018-02-26 00:29:11'),(801,1,'cNCsFjD50UI0jJ94Y5PSLIcJeIVqautL','2018-02-26 00:29:14','2018-02-26 00:29:14'),(802,1,'bJ5voF2lMeZkYpuQnAapESWxRpOtNKrw','2018-02-26 00:29:32','2018-02-26 00:29:32'),(803,1,'2Hn9qv5ELyxp0ryhxHkftk7K54I5gs3Q','2018-02-26 00:30:00','2018-02-26 00:30:00'),(804,1,'1drklTfmgx9fZoeEcpKlHYjFg8r9O2Vt','2018-02-26 00:30:58','2018-02-26 00:30:58'),(805,1,'jmGhUe33CnHUYmTokgUBKImnFCstyKZc','2018-02-26 00:32:49','2018-02-26 00:32:49'),(806,1,'4MaLOCplJ3FUf5XPCoOCb7VSpJG30O5W','2018-02-26 00:35:40','2018-02-26 00:35:40'),(807,1,'2G25ViYAMbAVg5v16tcAFLSN9l1Ir33J','2018-02-26 00:35:51','2018-02-26 00:35:51'),(808,1,'cSdsw7n8aTneD3mCkuSwsM2adccgMLTh','2018-02-26 00:36:16','2018-02-26 00:36:16'),(809,1,'OLY9oW8Fj2F7ZrphBklCKytE09T3HtgY','2018-02-26 00:36:18','2018-02-26 00:36:18'),(810,1,'gwoVEInoGHh7ULmGdjObKpv16CkdZ5Ij','2018-02-26 00:40:58','2018-02-26 00:40:58'),(811,1,'kuJn7wodanc9MXC8neyIRZ9vIXXe1jXR','2018-02-26 00:41:07','2018-02-26 00:41:07'),(812,1,'B06Q0Yq94ivNjpu26klZMrsVOLFqDeTp','2018-02-26 00:41:11','2018-02-26 00:41:11'),(813,1,'p0sAAS2D37wmB47FZFpaFjOsztgsZLDJ','2018-02-26 00:45:26','2018-02-26 00:45:26'),(814,1,'luHkwGU26McxqHQ2fP1q0alsZIU3bLf0','2018-02-26 00:47:33','2018-02-26 00:47:33'),(815,1,'9K3kutQL5brozhKBIiRDocQ3WPWRWBdq','2018-02-26 00:50:13','2018-02-26 00:50:13'),(816,1,'H6tNahayEuGik5OGA2tV1geCZQXQT0vt','2018-02-26 00:52:05','2018-02-26 00:52:05'),(817,1,'NJSnleBRAX9Y0puJCPgRmbm9lcxGgM2H','2018-02-26 01:00:51','2018-02-26 01:00:51'),(818,1,'h7NEdZyFIbEjHPL2ZwsBMAXYkxl8al0h','2018-02-26 01:26:05','2018-02-26 01:26:05'),(819,1,'fVqxLBk06rxRibnvZL5I1j1vvw46pln6','2018-02-26 01:48:22','2018-02-26 01:48:22'),(820,1,'76FP0SKZPVHkUX9ahIb8Fn49bf1PWTGi','2018-02-26 01:48:29','2018-02-26 01:48:29'),(821,1,'4hy8RQ0hLDPhMaydHMMe7TZzLTA9pQvj','2018-02-26 01:52:19','2018-02-26 01:52:19'),(822,1,'KqqLVqCKEqjLc5TITaP0bwv9wtQiFu1A','2018-02-26 01:54:55','2018-02-26 01:54:55'),(823,1,'vftvhfPrPl697ZYLiC4Libsm66oUFTIs','2018-02-26 01:55:27','2018-02-26 01:55:27'),(824,1,'qSOyOxCXFosBPiQaT0ZtJB7yjjNLpEBS','2018-02-26 01:56:11','2018-02-26 01:56:11'),(825,1,'b5G33U92OJhTurRrqsfirbEfECGyzYWQ','2018-02-26 01:57:13','2018-02-26 01:57:13'),(826,1,'VWMmNgVZZ28sCUdGOatirqSnrpicKMa6','2018-02-26 01:58:04','2018-02-26 01:58:04'),(827,1,'nVf6H0TYUgzoivz0Y9ci5xSWWI9OI0H6','2018-02-26 02:00:00','2018-02-26 02:00:00'),(828,1,'DkjL7uOWGNcUQvKZKHxT9turbXjXnDSg','2018-02-26 02:00:28','2018-02-26 02:00:28'),(829,1,'7FJRp2cQRhH9wnmlYwQG1wlEvUHmiamm','2018-02-26 02:05:12','2018-02-26 02:05:12'),(830,1,'AwXrEBy2LsQdkijPRpAb026N7u080vI1','2018-02-26 02:06:08','2018-02-26 02:06:08'),(831,1,'OCsLhrooiYAPdY8eB93XbpYm4qWS0rYV','2018-02-26 02:10:45','2018-02-26 02:10:45'),(832,1,'yezBfMJ56nkoRId52TO1qHhxzjS92HTx','2018-02-26 02:11:54','2018-02-26 02:11:54'),(833,1,'HwGHw5Akqh34gBGTSlzXlm0DwpDDP5Tx','2018-02-26 02:14:40','2018-02-26 02:14:40'),(834,1,'qnylQC0ZWLYWqbAXpnKw1gBd8uyKlwSm','2018-02-26 02:16:25','2018-02-26 02:16:25'),(835,1,'I346Yolz7Lb1vAGqXirHxjVbFE4712Kt','2018-02-26 02:19:01','2018-02-26 02:19:01'),(836,1,'Cv7Fl00ntNTvERwiLnEOQHixN27wqI48','2018-02-26 02:20:13','2018-02-26 02:20:13'),(837,1,'q2WwJ1Z1t7Hl9lDh3jSk479lypINPEw1','2018-02-26 02:21:07','2018-02-26 02:21:07'),(838,1,'uALeUGcc2Q8FD40A7uXjzWrWvfPO9szW','2018-02-26 02:24:25','2018-02-26 02:24:25'),(839,1,'BwWxZJAi7ycyu7KiJ2lbZsghPI0dGCpw','2018-02-26 02:24:30','2018-02-26 02:24:30'),(840,1,'SLkVMZ1ywaPyPImxw9Rv3i3eyqDC27iD','2018-02-26 02:25:40','2018-02-26 02:25:40'),(841,1,'zu89rMRe9FmJrwEF8dWarG2DsMJzxkEh','2018-02-26 02:25:42','2018-02-26 02:25:42'),(842,1,'xbIvaCrH99fvKicJSPDXoImhvmUsc6Ww','2018-02-26 02:28:22','2018-02-26 02:28:22'),(843,1,'PccHllgXY8odwBhFMbteu0ZLIhgxlfGW','2018-02-26 02:36:06','2018-02-26 02:36:06'),(844,1,'aQJhdXyrj4ewpVpNfvSlkiSv2qaeqMR3','2018-02-26 02:39:27','2018-02-26 02:39:27'),(845,1,'O90Zg2YW1x2MkAIOmsMg0PvbG1dzs5gP','2018-02-26 02:40:13','2018-02-26 02:40:13'),(846,1,'SeIuG7qP9c9WxlwTU1bV8BrGa4vkPXQf','2018-02-26 02:40:48','2018-02-26 02:40:48'),(847,1,'Zlb2Unt5OuQemhYQumThkWEK3dW643Fr','2018-02-26 02:41:47','2018-02-26 02:41:47'),(848,1,'vbLIGFSGEdi5Ln5O4e8VepNdX5wpftSX','2018-02-26 02:42:44','2018-02-26 02:42:44'),(849,1,'TL2ihrskLA51cJK3hU3rkbLEmKWvATR8','2018-02-26 02:42:46','2018-02-26 02:42:46'),(850,1,'m5nNzc7ukyNGEjTFs5KB6HeWw3878yPh','2018-02-26 02:43:36','2018-02-26 02:43:36'),(851,1,'WulucyKgYXPl6Q0yZkc6SYq37IhrKet9','2018-03-11 17:33:52','2018-03-11 17:33:52'),(852,1,'JmJNNNEcBquMDuAV7n2PzwXV611vOFGg','2018-03-11 17:36:25','2018-03-11 17:36:25'),(853,1,'upFuDdBo3vpbh43qpJX5bchMzubDnGtY','2018-03-11 17:38:34','2018-03-11 17:38:34'),(854,1,'YcJJDDNWh52WJMnelZp9zszc4FN50Jni','2018-03-11 17:38:35','2018-03-11 17:38:35'),(855,1,'HK1NqRr1HD2IQL9SjDvl0UWmCUOls32C','2018-03-11 17:38:38','2018-03-11 17:38:38'),(856,1,'y9qM9VBTHew37kPkF3LoQnhWHy5PGXVk','2018-03-11 17:38:39','2018-03-11 17:38:39'),(857,1,'RBnXiCi8rGM1tRh94NfZWECtwpmA9r3e','2018-03-11 17:53:06','2018-03-11 17:53:06'),(858,1,'MHaXNCQbnraqkOt9iBZKrs0kqL05WQIJ','2018-03-11 17:53:51','2018-03-11 17:53:51'),(859,1,'vs3v30o6K1fxLwpVCqJSXU3wVMLtJgN9','2018-03-11 17:53:52','2018-03-11 17:53:52'),(860,1,'xng3K1O8agoDNNf5n8LNgFAe55exjcVv','2018-03-11 17:54:31','2018-03-11 17:54:31'),(861,1,'CuC6zbKqN6ClcBYPzcNUX9hrO7kSkNdt','2018-03-11 18:02:51','2018-03-11 18:02:51'),(862,1,'roZVsU6NJl9rBpEZcCeuGc1bPZzzJpkd','2018-03-11 18:05:02','2018-03-11 18:05:02'),(863,1,'DwNoeLZnnnrsxrAhfIYbtsOf6y5UbSEn','2018-03-11 18:07:22','2018-03-11 18:07:22'),(864,1,'Po4xCygwAQf40EQGp8RBQVaMYZlsQYiL','2018-03-11 18:10:45','2018-03-11 18:10:45'),(865,1,'QKJwlng1XBvzDzaSsWIH4jIhAqQOjhYM','2018-03-11 18:27:41','2018-03-11 18:27:41'),(866,1,'EiATIajIum4r1DHtwEg1mkuUVbDnjmnl','2018-03-11 18:28:30','2018-03-11 18:28:30'),(867,1,'jjDqmEsrh5RbhopnG7W5k2m0gnI9UjTA','2018-03-11 18:28:31','2018-03-11 18:28:31'),(868,1,'4uLRkT6NZcybCxVa8rLtnz6LzpBxfnBR','2018-03-11 18:32:19','2018-03-11 18:32:19'),(869,1,'55Vi39p8A3RvqfKwQwUB3Xsvk3e8QFHe','2018-03-11 18:32:26','2018-03-11 18:32:26'),(870,1,'4bkPQfkHxPqsgs0uKJNh9vayk2mdYt9P','2018-03-11 18:32:27','2018-03-11 18:32:27'),(871,1,'nek7kvE6Icc4rxGYu0OXxZzOJcyadLdT','2018-03-11 18:35:34','2018-03-11 18:35:34'),(872,1,'tavjkXhXrNhdjKOp0yW4BUhtfnco8AtQ','2018-03-11 18:45:11','2018-03-11 18:45:11'),(873,1,'daJAh6BRfS9Vvf6mpC4EWcKigCsjZCpC','2018-03-11 18:45:18','2018-03-11 18:45:18'),(874,1,'5K6XqTVFaCi4hAdI8KTsBkaNk9vdTw7f','2018-03-11 18:45:25','2018-03-11 18:45:25'),(875,1,'apdIATmy5OeksKGMazkWOCYKbbRzSdVK','2018-03-11 18:45:26','2018-03-11 18:45:26'),(876,1,'D3oqQby8tP8ap7xriIzSDsoe3YpOuOEv','2018-03-11 18:50:28','2018-03-11 18:50:28'),(877,1,'HgoQ7VeqwZ4WjlvASj1vWEgMdRspzLos','2018-03-11 18:50:35','2018-03-11 18:50:35'),(878,1,'vB3OrcXJSZB4vbBdXWgBtjkI9aqvBsFa','2018-03-11 18:50:35','2018-03-11 18:50:35'),(879,1,'XO7fgPR6CNxOeMMd56c6WaWHsf0v7Pzv','2018-03-11 18:51:07','2018-03-11 18:51:07'),(880,1,'bOvoqnHhR97uBFaIcVhEozTSfkpis2Ej','2018-03-11 18:51:07','2018-03-11 18:51:07'),(881,1,'ugHeXmb02O4Jd1mjJyeBriTO9i07Cofv','2018-03-11 18:51:45','2018-03-11 18:51:45'),(882,1,'w46uReVG6NqdVrLPRYMG83q8HibgDJ9J','2018-03-11 18:51:45','2018-03-11 18:51:45'),(883,1,'71zclv1uc6cwxVlKa1dhJ5hw64rB2ot6','2018-03-11 18:55:03','2018-03-11 18:55:03'),(884,1,'SfjStMNYvlkQ4H431tiNTtWWY80dwHPq','2018-03-11 18:55:04','2018-03-11 18:55:04'),(885,1,'kfZRcp2pQ0bAyXIYDSSXT8IYl3Tvltzz','2018-03-11 18:56:37','2018-03-11 18:56:37'),(886,1,'nyaslxXFGRz3eqqdiXvCKJert6JD1imE','2018-03-11 18:56:37','2018-03-11 18:56:37'),(887,1,'RrqonPXkQ7D2VWr0KY2hkztjmiYRnnzy','2018-03-11 18:57:06','2018-03-11 18:57:06'),(888,1,'NkEgLjKRjDLrY1lnnVf9VAEC13o9G0TT','2018-03-11 18:57:07','2018-03-11 18:57:07'),(889,1,'Eg1jTdGsTkp3ARaPz9d2onuuMgVr6Sg1','2018-03-11 18:58:09','2018-03-11 18:58:09'),(890,1,'yr4SB9AHWhX3mw7R1dIRDuJ6m7X3uNzQ','2018-03-11 18:58:09','2018-03-11 18:58:09'),(891,1,'xETXaqw3E0hRslBT6PGuZETpcsZkStQi','2018-03-11 18:59:00','2018-03-11 18:59:00'),(892,1,'pOvGgP0lyyOYPrgM2mXzJH306G8YuFbE','2018-03-11 18:59:00','2018-03-11 18:59:00'),(893,1,'FZko3xSmpv9xPPbAVx0d5f1Tl6RXcf0j','2018-03-11 19:09:39','2018-03-11 19:09:39'),(894,1,'Ktm5PY3qeGwebTUhOkULIGuyNgs1OAAl','2018-03-11 19:09:39','2018-03-11 19:09:39'),(895,1,'jNBfienKuYCFQd2jE4Q35uNxGMJPHa9z','2018-03-11 19:10:20','2018-03-11 19:10:20'),(896,1,'qrqv2hueb5cJpfpP2IG8vMBas8wP6xyp','2018-03-11 19:10:20','2018-03-11 19:10:20'),(897,1,'Sm9kMvaVteVb9GpGRWmxe53dSjZbxvDV','2018-03-11 19:11:35','2018-03-11 19:11:35'),(898,1,'rvanT10gEZcc2T7SPlX9zlGOi78EWlSX','2018-03-11 19:11:35','2018-03-11 19:11:35'),(899,1,'YdcKdRmc39yoj9KvXH7xJAdShcM1GVU1','2018-03-11 19:12:33','2018-03-11 19:12:33'),(900,1,'kKg9bYrPbtQl1f74PHiK8I6OIHFXiAK8','2018-03-11 19:12:33','2018-03-11 19:12:33'),(901,1,'D65wrvoarpdlkvzlbXJf11dhvrHbPCGb','2018-03-11 19:15:20','2018-03-11 19:15:20'),(902,1,'4hUh3eB81PMY2bwHMkrsOa34AAAGYTQC','2018-03-11 19:15:20','2018-03-11 19:15:20'),(903,1,'mRacmEzzR2mbUlRRqqrD6qDOR6cP8Q8W','2018-03-11 19:17:24','2018-03-11 19:17:24'),(904,1,'sO2Spztgc6ThbjYQLBiogbXcCEx1b28e','2018-03-11 19:17:24','2018-03-11 19:17:24'),(905,1,'XBcTEyGWw2qMOMTACigRumHKiNXHC5O8','2018-03-11 19:18:37','2018-03-11 19:18:37'),(906,1,'U8sNWoSX16QYRd4aM2Voau8OWN2jTCdR','2018-03-11 19:18:37','2018-03-11 19:18:37'),(907,1,'kr2ZvTMfzNV2kAdeSX837lKjcpORtlwd','2018-03-11 19:19:34','2018-03-11 19:19:34'),(908,1,'bORuu9KvoKYc7kN6krVR1zAP2KneKxsZ','2018-03-11 19:19:35','2018-03-11 19:19:35'),(909,1,'RyyE37TLBKObNAni9EwlN4MUNHrzJdVY','2018-03-11 19:20:20','2018-03-11 19:20:20'),(910,1,'sZAFucte7ap2RpW0k4tTNvusI3NCGJMi','2018-03-11 19:20:21','2018-03-11 19:20:21'),(911,1,'ZIP393wZbL17m9oYawcMdamlsPgJkBj4','2018-03-11 19:22:43','2018-03-11 19:22:43'),(912,1,'Vp0Jj1aEJIiAvCH4bnvErj6dLjfPC1Ap','2018-03-11 19:22:43','2018-03-11 19:22:43'),(913,1,'OIyOKPjbRVVl455LLP0ozsJnoapLfovD','2018-03-11 19:38:13','2018-03-11 19:38:13'),(914,1,'XzOqen98ktMxc1y0xDJ2JtUpvMx6oo0L','2018-03-11 19:38:13','2018-03-11 19:38:13'),(915,1,'xgDDEnOcfcyEcgjFkETFVelmzOY7IJa6','2018-03-11 19:39:08','2018-03-11 19:39:08'),(916,1,'xb9653oFfsN7WXCIrMYU9XCZJwRDMf0o','2018-03-11 19:39:08','2018-03-11 19:39:08'),(917,1,'thYPZVm1cK7omgVY11iVlRnvG7h4uhuK','2018-03-11 19:41:05','2018-03-11 19:41:05'),(918,1,'xRUKKAKK5Bid6r1A5OFDIcAzgxSyGKW1','2018-03-11 19:41:05','2018-03-11 19:41:05'),(919,1,'MBemZiUxpgmEvEA4Er1ikWflXqVT7usP','2018-03-11 19:42:23','2018-03-11 19:42:23'),(920,1,'PSn2HhKVOe8S0GJt1dlb6fsmHGqZ7gG6','2018-03-11 19:42:23','2018-03-11 19:42:23'),(921,1,'x5uBw5J4gSOx0Vq6NFa5tRnafBVtdKyn','2018-03-11 19:43:48','2018-03-11 19:43:48'),(922,1,'ZfXXviXA7OtDYrlHh2dSnYqZs0mY97Iz','2018-03-11 19:43:48','2018-03-11 19:43:48'),(923,1,'A32h6VpJ8VUrZ9tCsVtwTXX42bEqhpyd','2018-03-11 19:43:57','2018-03-11 19:43:57'),(924,1,'h2ivV2HuDF7uJEU0i9uEnrKLJPRkN6Ou','2018-03-11 19:43:57','2018-03-11 19:43:57'),(925,1,'PDagDoJ0ByFdOx6pBG799yRMANLkuxUG','2018-03-11 19:51:51','2018-03-11 19:51:51'),(926,1,'0kO91QjiPyrAnuNUTq5X0jKAqiYuAtSw','2018-03-11 19:51:51','2018-03-11 19:51:51'),(927,1,'W2YoUfhTAGF3sP1KqgrIG6bpuJCqdCeq','2018-03-11 19:52:19','2018-03-11 19:52:19'),(928,1,'uJIheCnq6QthHmbU8k67KtwvGylvO7i1','2018-03-11 19:52:19','2018-03-11 19:52:19'),(929,1,'7PWYpZRxeqY5wtjYtAu31wsV4wq8SyzN','2018-03-11 19:52:53','2018-03-11 19:52:53'),(930,1,'Evoz4796qtJlGJ8iahmihHE7YIs1ZCBx','2018-03-11 19:52:53','2018-03-11 19:52:53'),(931,1,'JCdF7oNHKJadqDyPzPPDfWpmyrIQGyiF','2018-03-11 19:54:38','2018-03-11 19:54:38'),(932,1,'QclsqgN83AXcQv5jiimO0upwvXVc93Os','2018-03-11 19:54:39','2018-03-11 19:54:39'),(933,1,'Ahk6VwZ83cDrceFhzGY7XPQJ9aapOcg0','2018-03-11 19:58:24','2018-03-11 19:58:24'),(934,1,'4rRa6tOGj9kbHD0PKFeweHmYnhoswcYT','2018-03-11 19:58:24','2018-03-11 19:58:24'),(935,1,'ikr12ZVunqW5uvp65JyOOOaf6eDMZMz3','2018-03-11 21:30:17','2018-03-11 21:30:17'),(936,1,'A6LqdhOauW2BfAcQDFqT9Kxj5SqwaPW0','2018-03-11 21:30:17','2018-03-11 21:30:17'),(937,1,'z23xmQeva7cMiu4LYEj9s5NhxbB8KNjV','2018-03-11 21:31:16','2018-03-11 21:31:16'),(938,1,'fkAq9jFLXjs5mkbjqL01DzZU1ZsqrUvv','2018-03-11 21:31:16','2018-03-11 21:31:16'),(939,1,'qaJyYkYAiXIFoYYP8m1J44qr3CCW5oMc','2018-03-11 21:34:01','2018-03-11 21:34:01'),(940,1,'0kiQwnmU9mxgNvMWOBdu19D0TMO6G70i','2018-03-11 21:34:01','2018-03-11 21:34:01'),(941,1,'zl5c34mQAvVHvarSgjWWGc3HFCFFhVMo','2018-03-11 21:37:41','2018-03-11 21:37:41'),(942,1,'IoAFQ1lbhD2p5OZjbjfFD7uin2F2K30U','2018-03-11 21:37:41','2018-03-11 21:37:41'),(943,1,'W77TgrYObvHosIPeuurO7wTSanlwobqw','2018-03-11 21:38:32','2018-03-11 21:38:32'),(944,1,'CiO2QkQOpaDGsh09TxHCOytiqecn0RkS','2018-03-11 21:38:33','2018-03-11 21:38:33'),(945,1,'QLWt66onSzFGZbIaTlHResMthGMFMDKO','2018-03-11 21:39:05','2018-03-11 21:39:05'),(946,1,'p2A20uw1MCdXATZitdEgfcB22y2GBThS','2018-03-11 21:39:05','2018-03-11 21:39:05'),(947,1,'8Id0tvgbyClPBXCVzSRnrYjTfVte4oUl','2018-03-11 21:41:42','2018-03-11 21:41:42'),(948,1,'03UHreCm6e5T5OARmUzjXs4agQYSBSVD','2018-03-11 21:41:42','2018-03-11 21:41:42'),(949,1,'50H2Enmk5vW7NOvHta4Vnn0oc8nxOfau','2018-03-11 21:42:59','2018-03-11 21:42:59'),(950,1,'PFutInJfgCklWbf340k76cx9b4BsNqcp','2018-03-11 21:42:59','2018-03-11 21:42:59'),(951,1,'eoG7lZG823o8OQ7tAmMFYGnkvLcVhdez','2018-03-11 21:43:50','2018-03-11 21:43:50'),(952,1,'9nNsR1oceUy2YoFz71WryOvcHem0lKyh','2018-03-11 21:43:50','2018-03-11 21:43:50'),(953,1,'eUe3DMllXgUUx8YX3L9rVFGG17S3WCDM','2018-03-11 21:47:03','2018-03-11 21:47:03'),(954,1,'noNfXvEnSiz4E6ijAFbUIG6c0Jw3kwld','2018-03-11 21:47:03','2018-03-11 21:47:03'),(955,1,'oL1eNDL663zAWewJe2hBKuR5afc5vUAD','2018-03-11 21:49:56','2018-03-11 21:49:56'),(956,1,'Cq6R7vqbDoh63QqSiXSK1o5mv1QPlJb5','2018-03-11 21:49:57','2018-03-11 21:49:57'),(957,1,'bj58xMgFsg6W1TI8n8M5ysP35SYyx6Ho','2018-03-11 21:50:30','2018-03-11 21:50:30'),(958,1,'tUilwL6dXxiW2qnai6AAxUPNKoUoAcBY','2018-03-11 21:50:30','2018-03-11 21:50:30'),(959,1,'TaxTPxhPf3i42wARFP0TqsZFB4nM8laQ','2018-03-11 22:07:01','2018-03-11 22:07:01'),(960,1,'WGvhy6q2tTtGV7QAL0l26t6DCUlPXxDy','2018-03-11 22:07:01','2018-03-11 22:07:01'),(961,1,'MDsL2XycZQJvk3FhBF2iGstL1YRNP2Tl','2018-03-11 22:07:37','2018-03-11 22:07:37'),(962,1,'EkKEZpPiEsLJyg2GrCjkARVK6Qhn2J19','2018-03-11 22:07:37','2018-03-11 22:07:37'),(963,1,'wyCgooNLESQ31AffMZsqSEA2PodaesAA','2018-03-11 22:08:19','2018-03-11 22:08:19'),(964,1,'hARuNDd0p6JSnZWqUKTCTPb1ho1FuFCl','2018-03-11 22:08:19','2018-03-11 22:08:19'),(965,1,'yIuYA20hDbYbykiKZ7cDBn4hSoBuBhn7','2018-03-11 22:08:44','2018-03-11 22:08:44'),(966,1,'76QVPRawqnEZTLIQzBorJVCWwe91WeE4','2018-03-11 22:08:44','2018-03-11 22:08:44'),(967,1,'69qmKtS761PFEo6SMFQlG241VqbOnwQO','2018-03-11 22:13:55','2018-03-11 22:13:55'),(968,1,'D6i2p3Q8kYVXgCfvGiDs4HRAj2j0AYaC','2018-03-11 22:13:55','2018-03-11 22:13:55'),(969,1,'KC8PV8ee6a9J7xF9x52aBThRjmturLWG','2018-03-11 22:15:19','2018-03-11 22:15:19'),(970,1,'88uxKa3mV3JGUiASbuEvkEwy6ssAgixC','2018-03-11 22:15:20','2018-03-11 22:15:20'),(971,1,'YmQMub4Buui6ukY5MA2NpGPCJBc07eyJ','2018-03-11 22:15:31','2018-03-11 22:15:31'),(972,1,'KGSzPuFCtLVLPHsQxFmxwDFvXw1lgckd','2018-03-11 22:15:32','2018-03-11 22:15:32'),(973,1,'27jmsqWL7bHSgVWSu54b4VGw43d7wQNw','2018-03-11 22:17:00','2018-03-11 22:17:00'),(974,1,'sApd3Dx80W7x5bClc396gcMjY2bzo1y1','2018-03-11 22:17:00','2018-03-11 22:17:00'),(975,1,'oH5da0aUxVXAeX25g4NfAzEWANq2rhtz','2018-03-11 22:17:42','2018-03-11 22:17:42'),(976,1,'ySAtfrm1rhYBZqfskzzHVWKc35EOnRwi','2018-03-11 22:17:42','2018-03-11 22:17:42'),(977,1,'onAnYaJw55YcxurEPifrb31iBKkV6EN2','2018-03-11 22:18:34','2018-03-11 22:18:34'),(978,1,'H8pDpLKW6yJopCnRNrqTLhGzWgrwoKec','2018-03-11 22:18:35','2018-03-11 22:18:35'),(979,1,'CDHHcbfgKkjZTHpJYJiMB3FyPKlWwUys','2018-03-11 22:20:27','2018-03-11 22:20:27'),(980,1,'M0AlLYwFB2oZsiYTna4N1hdX1ghg5RxG','2018-03-11 22:20:27','2018-03-11 22:20:27'),(981,1,'bC2UEUxkobAlIQIRDGpGEpzbWC5A1K4K','2018-03-11 22:21:23','2018-03-11 22:21:23'),(982,1,'qchBMXtqSwDknT13Wtv1tDXF30efPBii','2018-03-11 22:21:23','2018-03-11 22:21:23'),(983,1,'QFmL1WRytNPKHTZbDePb0017yrNIM3SC','2018-03-11 22:22:34','2018-03-11 22:22:34'),(984,1,'PXEocxCtnUIVZkIPOla4XeVik9XkGZf8','2018-03-11 22:22:34','2018-03-11 22:22:34'),(985,1,'Ci81xlDk55H4flnxLbuX2h94N6r6lvse','2018-03-11 22:23:02','2018-03-11 22:23:02'),(986,1,'tVmUZuNrErqXqlSwvICNNt4rmhv0zCLk','2018-03-11 22:23:03','2018-03-11 22:23:03'),(987,1,'3WJlulP7oRTHo3eFpO7eKrUoYsZIjRzb','2018-03-11 22:24:43','2018-03-11 22:24:43'),(988,1,'ZZ4YMtwWzjmEk6iNDUrZChOixVsDdbdP','2018-03-11 22:24:44','2018-03-11 22:24:44'),(989,1,'mY94OBTPLa61JFmcNwOsWpYQICp7Crsf','2018-03-11 22:26:27','2018-03-11 22:26:27'),(990,1,'fqNMfrhoqL9ARpJiUO5SUK3yO8mvuu7X','2018-03-11 22:26:28','2018-03-11 22:26:28'),(991,1,'wJ51jD3HDzoKjUhczLlmHDhHsZiFvOvF','2018-03-11 22:26:54','2018-03-11 22:26:54'),(992,1,'2XllUpwdV054GsckqyGyCtbHp4m48psn','2018-03-11 22:26:54','2018-03-11 22:26:54'),(993,1,'dyZJ1ycsEkjLji9gIMiuTZOe3RVZ5cb1','2018-03-11 22:27:21','2018-03-11 22:27:21'),(994,1,'qxvHAn0SCw7Le16v2B25utmGyCUQoeM5','2018-03-11 22:27:21','2018-03-11 22:27:21'),(995,1,'r1EZOxtiJNmucXD9tmydaoOAfmzgBjdC','2018-03-11 22:28:38','2018-03-11 22:28:38'),(996,1,'c6ZpW6RM9lGxiylm6CI5AcLS3fHPNnFC','2018-03-11 22:28:39','2018-03-11 22:28:39'),(997,1,'uqCycHXHFOAEKF3YFIZt0p3lab3vzwRT','2018-03-11 22:31:55','2018-03-11 22:31:55'),(998,1,'GqaFcxqHOAi8j5qkViL4s3a4hY2NDtpr','2018-03-11 22:31:55','2018-03-11 22:31:55'),(999,1,'zJu99Y8TM5j1FVo6m76WUFGpyuyNzA8d','2018-03-11 22:32:52','2018-03-11 22:32:52'),(1000,1,'rF0LKCyVJfLXXBtzLLI42gPxFPJyhmVt','2018-03-11 22:32:52','2018-03-11 22:32:52'),(1001,1,'Xu23gfpf3CCgf41h594fT1xO6SUQJdiW','2018-03-11 22:33:23','2018-03-11 22:33:23'),(1002,1,'wji2SZDzkU6VuVGtfZAnZqIjTbGkSukb','2018-03-11 22:33:23','2018-03-11 22:33:23'),(1003,1,'So9RJQEFf4LEAVjBRBHZOU49iqUkZc5Y','2018-03-11 22:43:22','2018-03-11 22:43:22'),(1004,1,'oxuFMPVawA3JZFFOKQw7HAycJJWvQFFm','2018-03-11 22:43:22','2018-03-11 22:43:22'),(1005,1,'Tv4kelsZIyTMl6QQSUz6viyS5qrm8HJE','2018-03-11 22:44:15','2018-03-11 22:44:15'),(1006,1,'HzIrdtvBl2gGZxUjae0Np3vmmM0rdlMN','2018-03-11 22:44:15','2018-03-11 22:44:15'),(1007,1,'LoITtQRWoBwMr5te69DxM6uKoNZCXCDw','2018-03-11 22:51:23','2018-03-11 22:51:23'),(1008,1,'9FiKVSbOv4dHaEQ8r3a9xEhzLyvIySEh','2018-03-11 22:51:23','2018-03-11 22:51:23'),(1009,1,'1JyIGSOwSSosfqQKMuPlOuqdsEw3sPA3','2018-03-11 22:52:50','2018-03-11 22:52:50'),(1010,1,'tSwvmOY4i4gx6FqOpr9II6indAR56SK6','2018-03-11 22:52:51','2018-03-11 22:52:51'),(1011,1,'kwQ6BL8HykAaMTNlhDwopQMaxYU8YzjF','2018-03-11 22:53:55','2018-03-11 22:53:55'),(1012,1,'5utN9NQSl6R2Tfqh5kNiUjC1BN6Iod53','2018-03-11 22:53:55','2018-03-11 22:53:55'),(1013,1,'vkxLNVNq7siTHZAcxUtJKv9Ee6e5YsGh','2018-03-11 22:54:39','2018-03-11 22:54:39'),(1014,1,'qaBuRJemTW21U7rK9xyzICD8b9nVNeEx','2018-03-11 22:55:05','2018-03-11 22:55:05'),(1015,1,'0CQiftduMipjTwbtyrcBZMC3F7gJGUR3','2018-03-11 22:55:05','2018-03-11 22:55:05'),(1016,1,'0N7c6gRRVla9iT8Q0pw1f0IIjjn9ew7N','2018-03-11 23:05:19','2018-03-11 23:05:19'),(1017,1,'hak9rlgSAF1X0J1R2MBNGPr33yzvNRwv','2018-03-11 23:05:19','2018-03-11 23:05:19'),(1018,1,'JCBMRh0flxs2xxJBCqB7qrt19867OxqG','2018-03-11 23:09:19','2018-03-11 23:09:19'),(1019,1,'ZT8HWyxUJplexI5xtD3A6NZluaZwJlQ5','2018-03-11 23:09:19','2018-03-11 23:09:19'),(1020,1,'WgCUfXyFS1u2eLJg1C44m9wfRr9OTIf9','2018-03-11 23:10:30','2018-03-11 23:10:30'),(1021,1,'iWMuYe2iYiE5EQPji6pjHRp4SvvGntk4','2018-03-11 23:10:30','2018-03-11 23:10:30'),(1022,1,'ZwRB8L8LGQVSCXZChuRyFJtvoozO3Ngo','2018-03-11 23:11:56','2018-03-11 23:11:56'),(1023,1,'eCbutQaXKPD6Nf6OS6vRaMr96SVJBVh9','2018-03-11 23:11:56','2018-03-11 23:11:56'),(1024,1,'VnxbMUkZhZRhy3fCNKrJfR9LWxP4I3JA','2018-03-11 23:13:21','2018-03-11 23:13:21'),(1025,1,'qejKe8mXqZ8UFxp42kAEH38eNSzoAENz','2018-03-11 23:13:21','2018-03-11 23:13:21'),(1026,1,'bSqNGpHiWTwkW3Fsga7XD1mOzfoFpQoS','2018-03-11 23:14:06','2018-03-11 23:14:06'),(1027,1,'nNH26dCcW4QPVnG21tzHyE0uLMPSTAxN','2018-03-11 23:14:06','2018-03-11 23:14:06'),(1028,1,'0g4VpyCkpNhMk70S4DkQL3y5NCCZligI','2018-03-11 23:15:58','2018-03-11 23:15:58'),(1029,1,'o4iyzZiZqIwgTtENIKPALgXFIbylTHS8','2018-03-11 23:15:59','2018-03-11 23:15:59'),(1030,1,'rTdYkpKnSpf76kAShp4M8u29UeABm3On','2018-03-11 23:16:24','2018-03-11 23:16:24'),(1031,1,'ezhVYX7VgDcUmcXRW7lSMedrph8eyQio','2018-03-11 23:16:24','2018-03-11 23:16:24'),(1032,1,'pYyZ6TFxR5FvC3tq9cxnfM7twNbUHXmW','2018-03-11 23:17:34','2018-03-11 23:17:34'),(1033,1,'pESDVkerdVf3WTJpg0CxZX6KoQOGFxzZ','2018-03-11 23:17:34','2018-03-11 23:17:34'),(1034,1,'vwG0bWtpHilueLvOkaZqJwh0wrzQVOJq','2018-03-11 23:19:27','2018-03-11 23:19:27'),(1035,1,'eaox8eDwZBnkP4dzklqFraZl3bF0txsd','2018-03-11 23:19:28','2018-03-11 23:19:28'),(1036,1,'iB5RzJZnav192hTG9f4rzKhmV393WCm4','2018-03-11 23:20:05','2018-03-11 23:20:05'),(1037,1,'onMR7p3VyDd8MIBt2HyOXDHE7rIu9tQd','2018-03-11 23:20:05','2018-03-11 23:20:05'),(1038,1,'zbsimR10yybxKEfhOp1ZEXEF79v6po5i','2018-03-11 23:28:24','2018-03-11 23:28:24'),(1039,1,'bxxOfmSgG01KPNGBpjCH205VhWwbFDTm','2018-03-11 23:28:24','2018-03-11 23:28:24'),(1040,1,'fdhH1J8WhSiisVVkym3wRBeFZXBhl0gK','2018-03-11 23:36:07','2018-03-11 23:36:07'),(1041,1,'JiolKFphRqZKDLoxab0QB1EQ8YV4rsWT','2018-03-11 23:36:07','2018-03-11 23:36:07'),(1042,1,'ZMlAWKpeUm5o37dX9R9e8dLv0CF0fdVY','2018-03-11 23:39:18','2018-03-11 23:39:18'),(1043,1,'rmrt4S6zgPhax0N3yhVDuSwHMvHrcy9f','2018-03-11 23:39:18','2018-03-11 23:39:18'),(1044,1,'cAb0vI8yzsxSXVRHYZramtZ8tORHeXrH','2018-03-11 23:40:30','2018-03-11 23:40:30'),(1045,1,'Wy8ScaZnRWSWKBhLC9Zjj5405TeO2Pd8','2018-03-11 23:40:30','2018-03-11 23:40:30'),(1046,1,'hCnfwMlfGIbaqeC2pT3ClZ8zd2Ac5AI4','2018-03-11 23:54:32','2018-03-11 23:54:32'),(1047,1,'G0YWpmMMDFv41rhlq5sk4oWEEGDKv73J','2018-03-11 23:54:32','2018-03-11 23:54:32'),(1048,1,'kzPno12qPSBxtCXRhbuljkla1WSshVvq','2018-03-12 00:01:46','2018-03-12 00:01:46'),(1049,1,'ih9qlPVtxRyP4LyDBhkPXh0gsyFrQubo','2018-03-12 00:01:46','2018-03-12 00:01:46'),(1050,1,'5Dq2CcORARe972hXKovhRc6DuT401BuG','2018-03-12 00:06:42','2018-03-12 00:06:42'),(1051,1,'2MFbzbFjqhqQkVobGq3P3EOFwI4jc52T','2018-03-12 00:06:42','2018-03-12 00:06:42'),(1052,1,'NeDCzBRGc30OVHhaUekETDhGivQH8wzs','2018-03-12 00:08:15','2018-03-12 00:08:15'),(1053,1,'61hPdT4EpW5sNwn9oDTMLc7VoTlK6f4S','2018-03-12 00:08:15','2018-03-12 00:08:15'),(1054,1,'D77mIXcWbvOISjmc8j9R9EA5u4GywoBF','2018-03-12 00:08:26','2018-03-12 00:08:26'),(1055,1,'3uvMLlepiz00LkXHYdjIaKdzOOqxyu6Q','2018-03-12 00:08:26','2018-03-12 00:08:26'),(1056,1,'dycdlFp3aqlveMZFfatGyw5pwTkY3fnQ','2018-03-12 00:09:05','2018-03-12 00:09:05'),(1057,1,'CRyFL7gxD3JuP2f99dzpjrG49UHgnzhA','2018-03-12 00:09:05','2018-03-12 00:09:05'),(1058,1,'HibezuxrZVSL7M8hQIrUmpdakJwkY6mD','2018-03-12 00:09:19','2018-03-12 00:09:19'),(1059,1,'iJpByXkXR9waKBjmTQWof7GrXunnGONY','2018-03-12 00:09:19','2018-03-12 00:09:19'),(1060,1,'UeIfYr1fE4uCRlMNHSY45MDiDcfJVR3l','2018-03-12 00:10:33','2018-03-12 00:10:33'),(1061,1,'AxYxr3GVLottpvf3iXMDPu8Qu78etu6J','2018-03-12 00:10:33','2018-03-12 00:10:33'),(1062,1,'HcE73j2jwfogVuU8FxgJR07g5b4wQrK5','2018-03-12 00:20:00','2018-03-12 00:20:00'),(1063,1,'hIgHHfHMpHDlm1Zru2DElpquJqXqGe5d','2018-03-12 00:20:00','2018-03-12 00:20:00'),(1064,1,'IwPIvsETbk9vax8zrHd1eQLPae2Ob8GK','2018-03-12 00:21:24','2018-03-12 00:21:24'),(1065,1,'4dqVkam3MPGhiE7K0D86kt8ISeVXS4SV','2018-03-12 00:21:25','2018-03-12 00:21:25'),(1066,1,'XsLm0m1gyIv7ppu86odwRIOkX0JAw8Mq','2018-03-12 00:25:46','2018-03-12 00:25:46'),(1067,1,'ZDw8e1MqJqeb4XrO9PUOTgfGn8MjB8Sk','2018-03-12 00:25:46','2018-03-12 00:25:46'),(1068,1,'O7gqrGm3iW2dtFpyoCT4T2SQq0bHsi0c','2018-03-12 00:27:15','2018-03-12 00:27:15'),(1069,1,'kZ7woL0V9sMQ7f5QuYMbzBamMMCfP9pt','2018-03-12 00:27:15','2018-03-12 00:27:15'),(1070,1,'Pnb59uCIpMYoLCmfSH5mp0l0IZTpWM38','2018-03-12 00:31:57','2018-03-12 00:31:57'),(1071,1,'zk68xmceYu33O2dZuDeKLhDRQ9na3N2O','2018-03-12 00:31:57','2018-03-12 00:31:57'),(1072,1,'VWJECYyhc4YKFowWFwYvO8Zz11OzOhYB','2018-03-12 00:34:28','2018-03-12 00:34:28'),(1073,1,'GMlB3DSLFarOj7htWIDE6U2w5Sf0xV44','2018-03-12 00:34:28','2018-03-12 00:34:28'),(1074,1,'5EkSkVnIF7slH0yOLfHzqM31DXaLHrct','2018-03-12 00:35:06','2018-03-12 00:35:06'),(1075,1,'39KC5wLqgpBhxq7TjMzu6yEWnnjJQ37z','2018-03-12 00:35:06','2018-03-12 00:35:06'),(1076,1,'d45FG3wdFSRyhroKijYrJOfvFkP3Aszm','2018-03-12 00:39:38','2018-03-12 00:39:38'),(1077,1,'qZG315whqfZ5wRNzTwVCfmm8EtqhkQ6F','2018-03-12 00:39:38','2018-03-12 00:39:38'),(1078,1,'QdZxVMKrBwy0kaDLGiW4WLIRYMRQs6xj','2018-03-12 00:40:34','2018-03-12 00:40:34'),(1079,1,'Vv0vkZoaLzBRinBrmmqaOqAfe0oh4heQ','2018-03-12 00:40:35','2018-03-12 00:40:35'),(1080,1,'so6lVyxgwtTLmdu5kC2HBcQO5iV5LJ7g','2018-03-12 00:42:17','2018-03-12 00:42:17'),(1081,1,'puXJ3HJd82YSw9B6q9l4KYImcLOX6ra2','2018-03-12 00:42:17','2018-03-12 00:42:17'),(1082,1,'7wI992wqLAczkEd6TbspneSHtd4g3PXt','2018-03-12 00:43:52','2018-03-12 00:43:52'),(1083,1,'cKGMARpg4ScKxGGQLxiqAOLn0LNBufRw','2018-03-12 00:43:52','2018-03-12 00:43:52'),(1084,1,'fVazqzbQlt4MCcHxxptGx0cd86Gib34B','2018-03-12 00:48:58','2018-03-12 00:48:58'),(1085,1,'XJFZPzkIvUnxoYnYsUaQusLFMrTKjqWd','2018-03-12 00:48:58','2018-03-12 00:48:58'),(1086,1,'zwVs7QnTN9iDnN7GzHoMuMM3c09wmM2R','2018-03-12 00:49:32','2018-03-12 00:49:32'),(1087,1,'yx9sTeoHX7AxUbzQXaeleteqoxYzDLwF','2018-03-12 00:49:32','2018-03-12 00:49:32'),(1088,1,'M6dy7yr2Oh1dEdMG7KRfjvdED8WWrj0w','2018-03-12 00:49:57','2018-03-12 00:49:57'),(1089,1,'QWwj4539q0OhQOCYxu3WiXSHBbbCdUFj','2018-03-12 00:49:57','2018-03-12 00:49:57'),(1090,1,'4mbWE6jFZCpVFt98ZfqxjL46fBCwSSUA','2018-03-12 00:51:45','2018-03-12 00:51:45'),(1091,1,'9dBgnOy7qK5XBAmv87vz2wNvUL6G4DYF','2018-03-12 00:51:45','2018-03-12 00:51:45'),(1092,1,'bsoDrcYnwCvLWXdzEZco2QRRXw5H2ATr','2018-03-12 00:53:10','2018-03-12 00:53:10'),(1093,1,'osxDWqKeEU4bZZDcLqR9sSQFQVKTZrAe','2018-03-12 00:53:10','2018-03-12 00:53:10'),(1094,1,'RmNcK0HiIN1ItoHgV6nZpZCDrFRbeuC1','2018-03-12 00:53:51','2018-03-12 00:53:51'),(1095,1,'hQcLS6tnWgMPqu5AfzwFjkroNPFFZ4FV','2018-03-12 00:53:51','2018-03-12 00:53:51'),(1096,1,'hmQm9pStGrWFs8v5cr5g5HHglRilYMZP','2018-03-12 00:54:15','2018-03-12 00:54:15'),(1097,1,'gEehPDYGqA5iE1x132nvvB2QtAH7wZl2','2018-03-12 00:54:15','2018-03-12 00:54:15'),(1098,1,'QvoELLChLU14NwtfNWNKE5JJNmQN9J4G','2018-03-12 00:54:28','2018-03-12 00:54:28'),(1099,1,'ZmzBXpqYHcfrvIlBWe6PDi1DAN3QlGK4','2018-03-12 00:54:28','2018-03-12 00:54:28'),(1100,1,'WEiJnU0ShZ71CwymQkLgl2Dy6op5fqUF','2018-03-12 00:54:58','2018-03-12 00:54:58'),(1101,1,'cpD3Atvqzun8sQrH0Y3nZxjbwpGpjVUY','2018-03-12 00:54:58','2018-03-12 00:54:58'),(1102,1,'bTrEsLVBOj7Rh9EO2PuLPf0PRcZOpBxo','2018-03-12 00:56:18','2018-03-12 00:56:18'),(1103,1,'9o6PT2dBlwdBEoWucnnlx3BijFttKkZn','2018-03-12 00:56:18','2018-03-12 00:56:18'),(1104,1,'kXSGqSXGciITMc4PflfJ8ICLUyvnXEMC','2018-03-12 00:57:04','2018-03-12 00:57:04'),(1105,1,'lpsfPPzY0CJTKQUspK9oavjYIladkU0a','2018-03-12 00:57:27','2018-03-12 00:57:27'),(1106,1,'z1LaT9cSU3SmDztIC0qltELbyDCOlRzz','2018-03-12 00:59:36','2018-03-12 00:59:36'),(1107,1,'xW9X2cYhewwfK5jBNnhBTNqo9rklPfcF','2018-03-12 01:00:39','2018-03-12 01:00:39'),(1108,1,'VGkSyAqBQeEBqtpxNBDPSLjALIkN83e1','2018-03-12 01:02:09','2018-03-12 01:02:09'),(1109,1,'aTCIfVmVIHCjzAZW6lKEt9bV6NKM2XLk','2018-03-12 01:03:58','2018-03-12 01:03:58'),(1110,1,'khyLQO5y78Ic0P2EFzz1M6fbss7E4drY','2018-03-12 01:05:12','2018-03-12 01:05:12'),(1111,1,'EQWUUj6bkgpA1mwpbOdwDPw8g3fUUf6U','2018-03-12 01:06:55','2018-03-12 01:06:55'),(1112,1,'nXFN9zO9S7uvhDdrRiGRkkc4Plghj9px','2018-03-12 01:07:49','2018-03-12 01:07:49'),(1113,1,'NVCr9SyfSnP8c8DZMa7jTyvWKzu9o7pX','2018-03-12 01:07:52','2018-03-12 01:07:52'),(1114,1,'uVlJEf3KdJ6hKhWQ9aiZ4qBo90uB3TwA','2018-03-12 01:08:42','2018-03-12 01:08:42'),(1115,1,'aP08Zoy4giAONXzdvPKPtweCEBkQgGV8','2018-03-12 01:08:42','2018-03-12 01:08:42'),(1116,1,'d7O87RdexkUQ4OYfCtlXjDm5BeBqUVxb','2018-03-12 01:33:31','2018-03-12 01:33:31'),(1117,1,'UttR6Spk0M4P2fyJiRfDjHTqTPe41Jui','2018-03-12 01:33:31','2018-03-12 01:33:31'),(1118,1,'exwTU25hwIg6VyXS4VqyTGWTUg0SReiJ','2018-03-12 01:34:20','2018-03-12 01:34:20'),(1119,1,'N883gJf16j4QbFo9JbyYS7o75VoygdUh','2018-03-12 01:34:20','2018-03-12 01:34:20'),(1120,1,'3gsU0kZhd6fei1ZdGreZugznbWdtdOlY','2018-03-12 17:48:07','2018-03-12 17:48:07'),(1121,1,'niLKhbfTIGZAjlg2z1S9uO99EEG8k3ls','2018-03-12 17:48:08','2018-03-12 17:48:08'),(1122,1,'NzOtcY5FKg7Fd5WH9b3KnC8nBwTl6hUM','2018-03-12 17:48:09','2018-03-12 17:48:09'),(1123,1,'EEromBx3hAoM1psSej0MYAXlQVHWAk99','2018-03-12 17:49:06','2018-03-12 17:49:06'),(1124,1,'gSenqoXM2ecun2c8OVsxwNi4BVv0SEeE','2018-03-12 17:49:06','2018-03-12 17:49:06'),(1126,1,'DHNT7fwyoUilXLBioqb7uy1JlshM0gW4','2018-03-13 01:42:56','2018-03-13 01:42:56'),(1127,1,'5Owwi89jblsPZ5vP6Y3ie1tViR1lrYFP','2018-03-13 01:42:57','2018-03-13 01:42:57'),(1128,1,'KCaVNSNxTd7YT8pKoOuRfU840Z5tI5EX','2018-03-13 01:48:43','2018-03-13 01:48:43'),(1129,1,'xyd4d5lSSnAp17d7rHsMNPrYCPVD93D6','2018-03-13 01:48:43','2018-03-13 01:48:43'),(1130,1,'swcwstfQFJ3cCuFtwcnryeV0TRCCCPuf','2018-03-13 01:48:56','2018-03-13 01:48:56'),(1131,1,'MyURJ5R5JrYAyYhpPUHxziBkVEkU1BKw','2018-03-13 03:21:50','2018-03-13 03:21:50'),(1132,1,'XJTvlrhfQHerk4fpa8iGrobB1QTWq0Cu','2018-03-13 18:03:15','2018-03-13 18:03:15'),(1133,1,'FxK2gXR2bnSlmWX3hIUJ4VIchAme3ou6','2018-03-13 18:03:20','2018-03-13 18:03:20'),(1134,1,'V6zQfikI6iL9wvPvlALA8uL0VkxhLTtH','2018-03-13 23:57:59','2018-03-13 23:57:59'),(1135,1,'sipf1irVb7oE5lQOCV73IXAatubXyNuB','2018-03-15 01:02:10','2018-03-15 01:02:10'),(1136,1,'AdbN9w6PrWYaXjAmGxwpHXiEGUEisLI6','2018-03-15 01:02:53','2018-03-15 01:02:53'),(1137,1,'07BDlGOe4gWxqE74jWjqReEeZWdfgAmM','2018-03-15 01:02:53','2018-03-15 01:02:53'),(1138,1,'iAEUVzGB4SZKQfJAbi16f0Vpzy4BrGIU','2018-03-15 01:03:21','2018-03-15 01:03:21'),(1139,1,'UfeMccnpi3ZVhRyBeMPhw2mmh6vHcvIU','2018-03-15 01:03:21','2018-03-15 01:03:21'),(1140,1,'eNGIz0vg6AZn55HAaL73qUzKngJObzU7','2018-03-15 02:17:04','2018-03-15 02:17:04'),(1141,1,'C0tWgw8VECssu9BNbKnCGwfO2yh3Itmz','2018-03-15 02:17:26','2018-03-15 02:17:26'),(1142,1,'HC9envFnPu4lhSE7ChH2NEDVNlUvCfOk','2018-03-15 02:17:47','2018-03-15 02:17:47'),(1143,1,'IwXBGdXsFcmLqDzdnqlF8vUOhBXjNwH1','2018-03-15 02:17:51','2018-03-15 02:17:51'),(1144,1,'tqQ58jtPqtIDiPHzNBGNxxECaUZLiY1G','2018-03-15 02:40:02','2018-03-15 02:40:02'),(1145,1,'VTkZB6rZFiOOS7ppsx86vw9HugrBf9VC','2018-03-15 02:40:02','2018-03-15 02:40:02'),(1146,1,'MuPN4JFtKPRuVUV4cqm38CtY2YuUWixz','2018-03-15 17:11:05','2018-03-15 17:11:05'),(1147,1,'UespeiwoIARb79vpMwyl0te8k1PXMtBu','2018-03-15 19:25:49','2018-03-15 19:25:49'),(1148,1,'c26Ofa20AChdkO6Cl3FzSA5yrCSyHx6y','2018-03-15 19:25:49','2018-03-15 19:25:49'),(1149,1,'8VQL63Z5KDPxl9n9iq1oqOiLOJnaCIdQ','2018-03-15 19:28:54','2018-03-15 19:28:54'),(1150,1,'5fpOXBxiPtNUSGfcutHyek7mKJRwRZ0Y','2018-03-15 19:28:54','2018-03-15 19:28:54'),(1151,1,'kqLTyhF23VyXk0VPWKvRp3qatsAgw9Eu','2018-03-15 19:42:26','2018-03-15 19:42:26'),(1152,1,'hnxr1jk5Xd8L54z39UR7mXIBCU0WZdYR','2018-03-15 19:42:26','2018-03-15 19:42:26'),(1153,1,'19D3lYvJMUic7eBZStXXeZ7MlYG20xiN','2018-03-15 19:47:38','2018-03-15 19:47:38'),(1154,1,'22AEZ3Um8preG0jm4moK4gUojZbRH0WR','2018-03-15 19:47:38','2018-03-15 19:47:38'),(1155,1,'ogVXw0SsdkpP1YrbLmnKec68dOQHWjbF','2018-03-15 21:08:57','2018-03-15 21:08:57'),(1156,1,'PNPZcPOfTZ4EwFVADSAWcF02N4GQD8md','2018-03-15 21:08:57','2018-03-15 21:08:57'),(1157,1,'7cPJdQiBVOz9UiSlYzhqaD8GQiXW4Imm','2018-03-22 01:30:06','2018-03-22 01:30:06'),(1158,1,'k2sqWNQZ1Zx4OYmXS5G0qcm10Z7VivNq','2018-03-22 23:29:05','2018-03-22 23:29:05'),(1159,1,'9z31SbLuARvRdg33zx1sqlNgS9uaH0kL','2018-03-23 00:32:03','2018-03-23 00:32:03'),(1160,1,'0gjbnBcevi7Ks4UJKXICsRv6wIuICKry','2018-03-23 00:32:03','2018-03-23 00:32:03'),(1161,1,'2NaZROO9nP1w49a0nNitXYs6VYPLRGSD','2018-03-23 00:33:21','2018-03-23 00:33:21'),(1162,1,'IlZFQnZrjKRnEKvCx1v0kBlzlPWnpL46','2018-03-23 00:33:23','2018-03-23 00:33:23'),(1163,1,'OUkiGT0lIroq29koUNQzbj6N9ytTy5p3','2018-03-23 00:57:44','2018-03-23 00:57:44'),(1164,1,'vFXMDonU0Atvg3zfTonTkZzNk64Acbwo','2018-03-23 00:57:45','2018-03-23 00:57:45'),(1165,1,'Uz8mIhqO6hjipTZ5bjEyDEee9QBcGAU1','2018-03-23 00:58:03','2018-03-23 00:58:03'),(1166,1,'vaDw8Sr3qkUsGTstqQpkFVyo4l4YNZSQ','2018-03-23 00:58:05','2018-03-23 00:58:05'),(1167,1,'iLNMt9vN0rZ5NWM6aKGzWHIUYhGppGLP','2018-03-23 00:59:58','2018-03-23 00:59:58'),(1168,1,'QBuHNQXBPufIuWAwzMJms4ue0EbDO6a1','2018-03-23 00:59:58','2018-03-23 00:59:58'),(1169,1,'dkOAvVvfulxiiFrQbPK7j8ZvuFQJemAR','2018-03-23 01:00:25','2018-03-23 01:00:25'),(1170,1,'0eHYyqgvKBXUs7XTEhGeu5hHxJoQ8dBw','2018-03-23 01:00:26','2018-03-23 01:00:26'),(1171,1,'iCJ0xVutCy3VElvChMlQq4Q71iTDBXNB','2018-03-23 01:08:10','2018-03-23 01:08:10'),(1172,1,'vSV3wnkRPwxllVbihbhqm8GunPr691yJ','2018-03-23 01:08:10','2018-03-23 01:08:10'),(1173,1,'kxMHtZi6OMyoHa6XqAQlcjFRzaIfiqj1','2018-03-23 01:12:11','2018-03-23 01:12:11'),(1174,1,'r5wAqQv0PKy0v593bZRuGuNw3Du9rb0z','2018-03-23 01:12:11','2018-03-23 01:12:11'),(1175,1,'jKrdyniO7LHbkrH4vFnRUgBvu0N4XINX','2018-03-23 01:17:29','2018-03-23 01:17:29'),(1176,1,'Jyhd0EKWCv96R8nnXbVbiSML2CCedGi2','2018-03-23 01:17:30','2018-03-23 01:17:30'),(1177,1,'QSfUux1gk9zBUYDDVnKOeA33CjDvfghX','2018-03-23 01:17:54','2018-03-23 01:17:54'),(1178,1,'adifEeiyiVWOdOPWHPDG8SMMcccl7Tu9','2018-03-23 01:17:54','2018-03-23 01:17:54'),(1179,1,'OnLHxBnwSuey3l6HhAw1zsxOuh4whqAE','2018-03-23 01:21:04','2018-03-23 01:21:04'),(1180,1,'BOXnHkHbYWwakhWmwr02OZSkBQYzhZVp','2018-03-23 01:21:05','2018-03-23 01:21:05'),(1181,1,'JherHS1DWecTKs4bguPRHykAbt0NewbL','2018-03-23 01:22:59','2018-03-23 01:22:59'),(1182,1,'BcjJwsq7S8qFbkGzmC5ZdQuuF1iSTCdx','2018-03-23 01:23:00','2018-03-23 01:23:00'),(1183,1,'HQ0cRQuHXtvOKxa5PKCVq4lwzl5Y31oM','2018-03-23 01:23:58','2018-03-23 01:23:58'),(1184,1,'8xxV5e3CE7clofMp53Juau6nU3xZa1XK','2018-03-23 01:23:58','2018-03-23 01:23:58'),(1185,1,'FD3RSYYiwsHf8ut1NkH6FmMuMT7fWPfa','2018-03-23 01:27:47','2018-03-23 01:27:47'),(1186,1,'BgZg0z98i9681zuz5spNQdzqpk5RhtjZ','2018-03-23 01:27:47','2018-03-23 01:27:47'),(1187,1,'0gTVpG9elKbB539nItu2ATGqXWyTuKFI','2018-03-23 01:29:05','2018-03-23 01:29:05'),(1188,1,'B1Rma1E8eM80cCMQyzsW9wSWoNcyB09V','2018-03-23 01:29:05','2018-03-23 01:29:05'),(1189,1,'h6R4GeQYWwnPy498lbNxDAiW15VBm1zM','2018-03-23 01:30:48','2018-03-23 01:30:48'),(1190,1,'FRJ6UBnS3jtCv90AlOeNdRWP1j3lin45','2018-03-23 01:30:49','2018-03-23 01:30:49'),(1191,1,'kF7tkNXzVNrsykoXQ97xVmulls7xxntj','2018-03-23 01:31:13','2018-03-23 01:31:13'),(1192,1,'78f07L8z6nEpBREBUfW7ZuPCkcLVUKVb','2018-03-23 01:32:33','2018-03-23 01:32:33'),(1193,1,'r4ApVFCUfE8cO8J7qCfOIaM9H3HTdLJI','2018-03-23 01:32:33','2018-03-23 01:32:33'),(1194,1,'INBYJBI9k89KoSpWKGsA8oHCzGd32NRv','2018-03-23 01:34:13','2018-03-23 01:34:13'),(1195,1,'LU7YNWQVek2eHe8gdrf3C2ky5ul0bAwF','2018-03-23 01:34:13','2018-03-23 01:34:13'),(1196,1,'xL7HqoyJupcI5hVeulJjTimvgIPUNsYV','2018-03-23 01:34:44','2018-03-23 01:34:44'),(1197,1,'TNxhD8pFn4Y2v8Hdf4spohwBgDd1Rlj0','2018-03-23 01:35:58','2018-03-23 01:35:58'),(1198,1,'xHmxqwIf20EshEdtwZtGeHoo1YrZbLms','2018-03-23 01:35:59','2018-03-23 01:35:59'),(1199,1,'sZ2HRtlA1D0rAu9C78NqjgQU6hZbAJEw','2018-03-23 01:36:38','2018-03-23 01:36:38'),(1200,1,'lwwaIIz5WbB4MvoHQBBkqtLuYZTfxVou','2018-03-23 01:36:38','2018-03-23 01:36:38'),(1201,1,'gsaV0m4UhCuQbra9OqCgvdqfj3ZMm8YU','2018-03-23 02:12:00','2018-03-23 02:12:00'),(1202,1,'1XmFJ4T4cYRnJR8kIAYRtNuFXD1wZCYx','2018-03-23 02:12:00','2018-03-23 02:12:00'),(1203,1,'1Q6Gy34xEHb2MtndrFukXwBwoHMK1wqk','2018-03-23 02:12:28','2018-03-23 02:12:28'),(1204,1,'xaq535wayyn2A93wjpK2iGW2E9GruOwS','2018-03-23 02:12:28','2018-03-23 02:12:28'),(1205,1,'DyMBBLBJO7ZqvhMlJKCjzVGzmmTVzb35','2018-03-23 02:12:49','2018-03-23 02:12:49'),(1206,1,'cr8swSgBLfIzKXYaH86t8L7mabg0yJZV','2018-03-23 02:12:49','2018-03-23 02:12:49'),(1207,1,'KKns3ngUZTWD4Bf1ezg3VeeSWfPDPZjo','2018-03-23 02:13:05','2018-03-23 02:13:05'),(1208,1,'xrPcqPOryhazrgouaH9lV3vgSxVUMSEL','2018-03-23 02:13:05','2018-03-23 02:13:05'),(1209,1,'xHW0i0bVbFHtqfvMG8BdeCrxRTR1CwTv','2018-03-23 02:13:14','2018-03-23 02:13:14'),(1210,1,'BwTsV4k6QPuCGzk16Vj7TZ31vH6H3bGJ','2018-03-23 02:13:14','2018-03-23 02:13:14'),(1211,1,'UBWV5zvO05JyuUy8vYrw3WnxtrIouDV3','2018-03-23 02:13:23','2018-03-23 02:13:23'),(1212,1,'ZGzNPMppNUk88Kji1uucovIkoO7EOKKx','2018-03-23 02:13:23','2018-03-23 02:13:23'),(1214,1,'3vtHmzJeq2YmM5gbYbnrN74THWVd8rOv','2018-03-25 18:07:09','2018-03-25 18:07:09'),(1215,1,'LHka6HbsWthYAp7q0UW4Qb1NLstbD3yK','2018-03-25 18:07:09','2018-03-25 18:07:09'),(1216,1,'gIz79dxLKVJRC5IzNnyCfkUmahWiaLkK','2018-03-25 18:07:17','2018-03-25 18:07:17'),(1217,1,'jcSJOszrLn97es44Ltu1hwsMEdHDUK8a','2018-03-25 18:07:17','2018-03-25 18:07:17'),(1218,1,'EE4DFXYFImZFvvcteWUfZcyEEpsklh5M','2018-03-25 18:07:26','2018-03-25 18:07:26'),(1219,1,'8K79PdC3wIKMcgPOEA62XuXMegSZVNix','2018-03-25 18:07:26','2018-03-25 18:07:26'),(1220,1,'bNdSCkBU6IAg7YC0X971KxT61ZAiRS3B','2018-03-25 18:15:49','2018-03-25 18:15:49'),(1221,1,'XDFFt0PMBWkgVkwsUl7QPwsRCpi1sPEF','2018-03-25 18:26:31','2018-03-25 18:26:31'),(1222,1,'q1ikYuY2PunwFvmLtbDbAUv4cQ3OWnsI','2018-03-25 18:26:33','2018-03-25 18:26:33'),(1223,1,'qqWgLgccmgeFx7bPlHpmczAHVpN3Aiq5','2018-03-25 18:26:34','2018-03-25 18:26:34'),(1224,1,'t19kqilpUqKCZikD7GHExhztMFScJpU0','2018-03-25 18:26:34','2018-03-25 18:26:34'),(1225,1,'aidUKrSIirmIbOjdE5mkiUrEKJMUEXNl','2018-03-25 18:27:28','2018-03-25 18:27:28'),(1226,1,'6Noyqa6e9S3ykIAdX8Vyss633Czu5ZUY','2018-03-25 18:27:28','2018-03-25 18:27:28'),(1227,1,'xAl4KZerbJh9VWPcPU9pXVxOnbDwzJ9t','2018-03-25 18:27:44','2018-03-25 18:27:44'),(1228,1,'dMIkcCbuSeqa3VVx6vnddkP2e9QcAdMl','2018-03-25 18:27:44','2018-03-25 18:27:44'),(1229,1,'nVYnwnHxu8XCv7pimVgxZftmeIZHil8o','2018-03-25 18:27:45','2018-03-25 18:27:45'),(1230,1,'6bfjTkCmVqWIiHRKqeKppuAI8fqoQBhk','2018-03-25 18:27:48','2018-03-25 18:27:48'),(1231,1,'23rS4TOGfP0awkCuGUYUnWYagbpCApVM','2018-03-25 18:27:50','2018-03-25 18:27:50'),(1232,1,'jQ8Qy5TFoIc0p661rOkkY365FEsOmebz','2018-03-25 18:27:50','2018-03-25 18:27:50'),(1233,1,'Vj12hPeqDw5XRaKxTiACfKMm05YTMwkn','2018-03-25 18:27:51','2018-03-25 18:27:51'),(1234,1,'XmkF1bI1k3h0FQsCUduIbYUQGGwlYPlQ','2018-03-25 18:28:00','2018-03-25 18:28:00'),(1235,1,'qdhSmvCiOTtu82F2aoeBk5Quk0FoyKQe','2018-03-25 18:28:00','2018-03-25 18:28:00'),(1236,1,'NPNAlxGliAop08iJIAGOhgAmH0zaY9A9','2018-03-25 18:28:10','2018-03-25 18:28:10'),(1237,1,'IeU5cla3RTSMSLZHLEncfooChdLsO67C','2018-03-25 18:28:10','2018-03-25 18:28:10'),(1238,1,'3aA3oTM7mZvWSIE2QpA1D65h8VPDQkem','2018-03-25 18:28:10','2018-03-25 18:28:10'),(1239,1,'kDkeg7wgMSMvW9hwC3vveir0OL1KRDKd','2018-03-25 18:28:15','2018-03-25 18:28:15'),(1240,1,'OILMnHCuMC5zoUHNGmHiL7YtXNFG2qPz','2018-03-25 18:28:15','2018-03-25 18:28:15'),(1241,1,'9VEYYcLQLsQEH41ggKlQ17xpWsKkLPoW','2018-03-25 18:28:22','2018-03-25 18:28:22'),(1242,1,'FJ9opuixuYHQMi8kzDfKvrgnXqO6XAdB','2018-03-25 18:28:22','2018-03-25 18:28:22'),(1243,1,'orP5DyPWD6MH4ewiSRKTwD7W9a0ndU75','2018-03-25 18:28:22','2018-03-25 18:28:22'),(1244,1,'VLnmcoQ5ex2T38wLtNgTXeC17dorYrOd','2018-03-25 18:28:44','2018-03-25 18:28:44'),(1245,1,'XgVABcU4FrlP8g6W4iZJ1FcO05spWbyy','2018-03-25 18:28:44','2018-03-25 18:28:44'),(1246,1,'WLKJ4xLWsjab3ZUgK2MvjLf715f0wSht','2018-03-25 18:33:27','2018-03-25 18:33:27'),(1247,1,'P4OVLaWl2qI6eYRRbpW8UyjPnM0LckBF','2018-03-25 18:33:54','2018-03-25 18:33:54'),(1248,1,'h4uRN8GV2fMZtyusHFudxQD7eK9pkIcw','2018-03-25 18:33:55','2018-03-25 18:33:55'),(1249,1,'tvqU1TVLubVe357EiYHYhGOnMLQxY302','2018-03-25 18:33:55','2018-03-25 18:33:55'),(1250,1,'hHZCOjXzPKmpiJ5hCEelZFhlfjGrKNkf','2018-03-25 18:34:02','2018-03-25 18:34:02'),(1251,1,'2oxakzVBiqO0weHTpXym5BhoEXdWwwXQ','2018-03-25 18:34:02','2018-03-25 18:34:02'),(1252,1,'Oq2zdmAbZEcwNP7AcWsTwyVtRromLOE1','2018-03-25 18:34:23','2018-03-25 18:34:23'),(1253,1,'D0EfFqtRnN7k3S69K5nbDPWa0UIDfCQR','2018-03-25 18:34:23','2018-03-25 18:34:23'),(1254,1,'zUIc84Fx6Wq6ijiYlOt90PDsmYSWKyrL','2018-03-25 18:34:23','2018-03-25 18:34:23'),(1255,1,'X5D7m5sf1Weu2z2vjOK4JZ1wOEs38J9v','2018-03-25 18:34:39','2018-03-25 18:34:39'),(1256,1,'DkZPSgvpaW6ElgXZcqoVQPD7aVL4hqCZ','2018-03-25 18:34:39','2018-03-25 18:34:39'),(1257,1,'IWit3spSQR2Wo5IQvmv23CbvsuIGW7FN','2018-03-25 18:34:47','2018-03-25 18:34:47'),(1258,1,'ewp3S6nHhYuKHmzJMFZnXAdF88tTF191','2018-03-25 18:34:47','2018-03-25 18:34:47'),(1259,1,'KuVDnVQzHGSWB2cx6hFlXz5BCXyiA3bo','2018-03-25 18:34:47','2018-03-25 18:34:47'),(1260,1,'9el5jdKST4xrCP8R8zgaxH7tEkdKtPrN','2018-03-25 18:34:54','2018-03-25 18:34:54'),(1261,1,'CdRKCSk2krF3DzOFyFQSve5JEtrfonth','2018-03-25 18:34:55','2018-03-25 18:34:55'),(1262,1,'sdLcgd7bHQOBnu28PQ3m7pJ4UKtcoyma','2018-03-25 18:35:05','2018-03-25 18:35:05'),(1263,1,'jc4ChjON6WMSlLA2pQp6dRnq3gY3uoYb','2018-03-25 18:35:05','2018-03-25 18:35:05'),(1264,1,'H6aSLt9oC98UTFqRfzLv5nEf5y5Bm2r6','2018-03-25 18:35:06','2018-03-25 18:35:06'),(1265,1,'orHdU8T2yq1QgqbjouTMlA8BR8e2teuL','2018-03-25 18:35:56','2018-03-25 18:35:56'),(1266,1,'rzz0txIM13VlpZKzaEwkbUHNz6eXIVny','2018-03-25 18:35:58','2018-03-25 18:35:58'),(1267,1,'kOseJRZU07hhMnb70K86ETrY4d5NFA7O','2018-03-25 18:35:58','2018-03-25 18:35:58'),(1268,1,'u2RDb4I9ClijwkNHktb1zuRL9WJyA0Ny','2018-03-25 18:35:58','2018-03-25 18:35:58'),(1269,1,'YKbyxBUhokC2NkRM2iG9GQtY4TcpYbln','2018-03-25 18:36:22','2018-03-25 18:36:22'),(1270,1,'mHoAw6iQfIOGkGd85EiUEiYzYUf7IzTd','2018-03-25 18:36:24','2018-03-25 18:36:24'),(1271,1,'tKnaZW94YLlw6WwdLAmRWHnVsZELdvTq','2018-03-25 18:36:25','2018-03-25 18:36:25'),(1272,1,'qPRWEsv9dTn0cMJUMMsq4S49kF6diQZf','2018-03-25 18:36:25','2018-03-25 18:36:25'),(1273,1,'rvMiL6rf3zAAT0AjT5U1KqKjwjFPG5R7','2018-03-25 18:36:36','2018-03-25 18:36:36'),(1274,1,'mknUjUYSwCxJbeZURfTvQZtSksdSeEQ5','2018-03-25 18:36:36','2018-03-25 18:36:36'),(1275,1,'1aoABUk4kaOrZOANNn396VfcxsiYluFq','2018-03-25 18:36:59','2018-03-25 18:36:59'),(1276,1,'NbtzJuP80KExuOcJj4nLRz6genS1i7FJ','2018-03-25 18:36:59','2018-03-25 18:36:59'),(1277,1,'wcfKTWg7AiprztwmD5Xefn7AHRyWU0F4','2018-03-25 18:36:59','2018-03-25 18:36:59'),(1278,1,'GpumLOz5T2nboGXDWXuXmTN625ZYo1UG','2018-03-25 18:37:02','2018-03-25 18:37:02'),(1279,1,'ghiXHyKsZPjs8HZLsbafypAjFEhRl3Ns','2018-03-25 18:37:02','2018-03-25 18:37:02'),(1280,1,'66PGk4pFZnaJ1pjydiVRcSmgOPMMi5Uv','2018-03-25 18:37:04','2018-03-25 18:37:04'),(1281,1,'uePkyUN7ywHCblmPwNVbUHJ7nhGyPxaR','2018-03-25 18:37:04','2018-03-25 18:37:04'),(1282,1,'q5gB4yWQ0BQwuu4m2eFWjzGors3vPE7x','2018-03-25 18:37:04','2018-03-25 18:37:04'),(1283,1,'cjmFqSyYyy6CZJonVI0FUEwl2L9cfuqm','2018-03-25 18:37:19','2018-03-25 18:37:19'),(1284,1,'3X0nNc8dBjgHHGunpztP6Wq7QsqETrc0','2018-03-25 18:37:19','2018-03-25 18:37:19'),(1285,1,'roJt3Arauujjj7vo2xA7osCR6174eWy3','2018-03-25 18:37:51','2018-03-25 18:37:51'),(1286,1,'4kDDHkAYP4BNjJmRxQOZX8R6J5h7mLu9','2018-03-25 18:37:52','2018-03-25 18:37:52'),(1287,1,'4Qtu0rxGBRSj1mj29Z1kSo71Uxda24tD','2018-03-25 18:37:52','2018-03-25 18:37:52'),(1288,1,'C6WMWI0XeB440O4IgavcVv1rS73XymFn','2018-03-25 18:38:55','2018-03-25 18:38:55'),(1289,1,'shfdcCW74IMYCguz7KYd4LE2Sv3BSfID','2018-03-25 18:38:55','2018-03-25 18:38:55'),(1290,1,'IXvJrXHVNO5djbXRsZrxI9u7hN5ja3ng','2018-03-25 18:39:20','2018-03-25 18:39:20'),(1291,1,'kQckjte51DyMIKDPRJXKeqfG6AaeXkod','2018-03-25 18:39:20','2018-03-25 18:39:20'),(1292,1,'D5wmQKgzjdCnKn8stJt5SMRx9MWmXqv1','2018-03-25 18:41:49','2018-03-25 18:41:49'),(1293,1,'UEo6wT6afAOmwerEE3InlFVtBOLJREe3','2018-03-25 18:41:49','2018-03-25 18:41:49'),(1294,1,'loSpEau7RdFXjY5Yl1lCOacPLt5eqHeU','2018-03-25 18:41:57','2018-03-25 18:41:57'),(1295,1,'1oC2e1YDVa2Vcm6Dh7zqq2SUxDH3LTQk','2018-03-25 18:41:57','2018-03-25 18:41:57'),(1296,1,'ZrxrPZlC4r7OXtNyCImlFPdXtLxu1B0A','2018-03-25 18:42:08','2018-03-25 18:42:08'),(1297,1,'kMOvcCFbUzLcUXQzHPWdYJ3RKAnawr0w','2018-03-25 18:42:09','2018-03-25 18:42:09'),(1298,1,'Dp6Vo7JCvmjafQ5bSaoxbWviNIhgAylc','2018-03-25 18:42:20','2018-03-25 18:42:20'),(1299,1,'OV35fqiiHvTMkaK5IqwI7M8tNAJQUvgi','2018-03-25 18:42:20','2018-03-25 18:42:20'),(1300,1,'mxC9ZkNz3151ET3RKNep4vRztu7pE4wA','2018-03-25 18:45:39','2018-03-25 18:45:39'),(1301,1,'M6q1OPSka1U2HuuA38SV0h9qdoznizDS','2018-03-25 18:45:42','2018-03-25 18:45:42'),(1302,1,'cw6zGJBadDvmWNXAe6HqqAXcRMktSJhe','2018-03-25 18:46:26','2018-03-25 18:46:26'),(1303,1,'qjHNEQM3rpbJEa0GJTNpnpFmCMWjryrO','2018-03-25 18:47:29','2018-03-25 18:47:29'),(1304,1,'TBK1dgWuSQKGOBYyNz2QaH0ZSqGrrV1M','2018-03-25 18:47:31','2018-03-25 18:47:31'),(1305,1,'j9kNCZdZDOEHNQIuI97TuC1hm0Sa4f4m','2018-03-25 18:47:31','2018-03-25 18:47:31'),(1306,1,'lTtJ84clSUqnOhtZzV25VUvRSyyD8bwv','2018-03-25 18:47:31','2018-03-25 18:47:31'),(1307,1,'sFa9XGhuMRCtXKBtrDuSeJq8FZfBgOlH','2018-03-25 18:47:44','2018-03-25 18:47:44'),(1308,1,'MMZ5l0VjTXzpAj0utVpXLgsEvlcD4YE6','2018-03-25 18:47:46','2018-03-25 18:47:46'),(1309,1,'GjehHxVrSiKDnHTu5hM7kCtjvEK84WMY','2018-03-25 23:44:12','2018-03-25 23:44:12'),(1310,1,'GemDW2swKEzu2EnLN2tWtm5BNOGKQ7Ys','2018-03-26 00:41:09','2018-03-26 00:41:09'),(1311,1,'9QtpUjuLxGSvnpCMIQ2Mtm3BrpsThhrR','2018-03-26 00:41:09','2018-03-26 00:41:09'),(1312,1,'Jc7Go2tk0O34xI3ijGL1zv1aLUKZWjnA','2018-03-26 00:41:14','2018-03-26 00:41:14'),(1313,1,'D5koiJCt34u6XvPskgZSBLtSGlMdnozw','2018-03-26 00:41:14','2018-03-26 00:41:14'),(1314,1,'ByJmMXrtBO5ObrPLn3pIDidLend2XvNc','2018-03-26 00:41:19','2018-03-26 00:41:19'),(1315,1,'KbojS4dpGaYnWbgtKq8WvDZ3wzKgUpMr','2018-03-26 00:41:19','2018-03-26 00:41:19'),(1316,1,'QYW6NGG7GVi2weTaiiQtZqGDLyM6wwDy','2018-03-26 23:51:29','2018-03-26 23:51:29'),(1317,1,'hKc8F2MTT5L0YQYNh55a9O5tme7CGSee','2018-03-27 01:47:05','2018-03-27 01:47:05'),(1318,1,'1qIvWGj385jftHmraCyGveYcN5e8iLpF','2018-03-27 01:47:05','2018-03-27 01:47:05'),(1319,1,'HBPXrnN3Bk7yIUzfszE5WZGrfyxNtDyp','2018-03-27 01:47:05','2018-03-27 01:47:05'),(1320,1,'cxI2xwCntgzviwLPgrBYGpvFrtB0B0EO','2018-03-28 01:11:01','2018-03-28 01:11:01'),(1321,1,'KHJbdz0qC743gkHZJ1Nfoxf6w9MXNOyb','2018-03-28 01:11:06','2018-03-28 01:11:06'),(1322,1,'Li5u9V0Dg0AeshpIbq4f7DQRkax8pSGb','2018-03-28 01:11:09','2018-03-28 01:11:09'),(1323,1,'MhYLOLJikupG0regU9MH8TiuEJqlkAPA','2018-03-28 02:08:12','2018-03-28 02:08:12'),(1324,1,'E210bEBo00KVapjjD3nyxMGAAgG9ugFc','2018-03-28 02:08:18','2018-03-28 02:08:18'),(1325,1,'bmBMSEaK2XNp7hxPHWfhtH2xmcWgauDg','2018-03-28 02:08:20','2018-03-28 02:08:20'),(1326,1,'d15ynUtsLVc7iJVfg1CpZFp98lNbeYJM','2018-03-28 19:52:21','2018-03-28 19:52:21'),(1327,1,'AGJcodo67fVwUwMW1rnLZa8dQi9WGLAc','2018-03-28 19:52:29','2018-03-28 19:52:29'),(1328,1,'Ocn6jP3WVxOMwxIHe47dxmcO307ebEZ8','2018-03-28 19:52:29','2018-03-28 19:52:29'),(1329,1,'IxwHodxVZOTcgYlgY72l9fWRKjDSzxff','2018-03-28 19:52:48','2018-03-28 19:52:48'),(1330,1,'i53y5U7zNksFkySFezcSvIdO8JIhF2yd','2018-03-28 19:52:49','2018-03-28 19:52:49'),(1331,1,'9l9BY0jueGnnlieZwRIFcdLU7PAgNKPP','2018-03-28 19:52:49','2018-03-28 19:52:49'),(1332,1,'811PFvXXLvqllv8VgbEN8RE3bWnpo01I','2018-03-28 19:54:15','2018-03-28 19:54:15'),(1333,1,'Qe1X82zxfCsoxfiD0TKqfP6rKlEepo09','2018-03-28 19:54:15','2018-03-28 19:54:15'),(1334,1,'EZMTWD786bHp6AoaLNtm6hHtFsSSadHs','2018-03-28 19:54:16','2018-03-28 19:54:16'),(1335,1,'LT1uXlLuqU9R2S1A6ctxHATb2s73uO2Z','2018-03-28 21:46:29','2018-03-28 21:46:29'),(1336,1,'dqtcPObDIBBpTVRz00VXo2CyzeQ2oFyz','2018-03-28 23:59:28','2018-03-28 23:59:28'),(1337,1,'5hWtfolzA1YN1K6PJf6t3Cx4DNlSCQFt','2018-03-28 23:59:28','2018-03-28 23:59:28'),(1338,1,'XAR0JFXSU5eSttz1Wbv1jBWUwi09Eglt','2018-03-29 00:23:00','2018-03-29 00:23:00'),(1339,1,'LCc4AYk7S9SFzvZoE3zoxdM0bp0Ya5Cl','2018-03-29 00:23:00','2018-03-29 00:23:00'),(1340,1,'k3EMgEvxWVmw6uoKsLpjKgWhIUNHDBcA','2018-03-29 01:31:49','2018-03-29 01:31:49'),(1341,1,'GU4FdK8StC9HNf8MZuxivP5eE06vFczk','2018-03-29 01:31:49','2018-03-29 01:31:49'),(1342,1,'2gY0YatZYtJyNfIK2kmw9m0LkXMoCXs5','2018-03-29 01:32:07','2018-03-29 01:32:07'),(1343,1,'uiuSF9Ixc8vv6EPKCXqEVSKuMucAgxHW','2018-03-29 01:32:07','2018-03-29 01:32:07'),(1344,1,'ZG5McZkuIlOySFP6UwJ0RedHQoiiZSTi','2018-03-29 18:29:03','2018-03-29 18:29:03'),(1345,1,'FXINe9Jimh9UmQHo8sdSeQ7yUDMjcKHu','2018-03-29 18:29:20','2018-03-29 18:29:20'),(1346,1,'yxYDUFNKH3tJEa0sER955Coxc68xVRdn','2018-03-29 18:29:20','2018-03-29 18:29:20'),(1347,1,'aSf6ECxKXlRGiOu1st6LsJSoH7WGCbZw','2018-03-29 18:29:38','2018-03-29 18:29:38'),(1348,1,'EvqCy4nEw6DXvV7k6D4UvDkDSeyaesWM','2018-03-29 18:29:38','2018-03-29 18:29:38'),(1349,1,'TR8NBA7cqH22jeKxXL77u5zaINse8Jwm','2018-03-29 19:06:52','2018-03-29 19:06:52'),(1350,1,'w92QMY3vLlZH7Z1fM3CswpBH7woBfCBb','2018-03-29 19:06:52','2018-03-29 19:06:52'),(1351,1,'g5UIQ265DK5zQKGwEq1cNM77qqNPEG4i','2018-03-29 19:07:34','2018-03-29 19:07:34'),(1352,1,'nHSR39qO2pnZ4qfNKWs9q30ycpu0msRi','2018-03-29 19:07:34','2018-03-29 19:07:34'),(1353,1,'qYT35dgcGIfVHtZVj7KTZgi3xs2tNQt7','2018-03-29 19:29:17','2018-03-29 19:29:17'),(1354,1,'TA8K3LLZGPGvEggdM5JaOLSErT0MMb7l','2018-03-29 19:29:17','2018-03-29 19:29:17'),(1355,1,'RRw6KfYc4aSio3t5oEEMl473i1kKxC9x','2018-03-29 19:30:58','2018-03-29 19:30:58'),(1356,1,'CKTeu6Y5tWONudYBuKh1bGyywB8wzYsE','2018-03-29 19:30:58','2018-03-29 19:30:58'),(1357,1,'eHfpo4vp7ZuCNLWgFJHl2n3Ue47f0PE2','2018-03-29 19:31:17','2018-03-29 19:31:17'),(1358,1,'7r5ELsJjXqRxqSuQwFvTPzKtfn4WS7ls','2018-03-29 19:31:17','2018-03-29 19:31:17'),(1359,1,'c7XBMfqN4GcE7XJFOJ3JJ2RlY2xBtmIM','2018-03-29 19:31:52','2018-03-29 19:31:52'),(1360,1,'cl7uMIqolU2nogi1JPLrRIqMe78PHAqi','2018-03-29 19:31:52','2018-03-29 19:31:52'),(1361,1,'W0vONEZVPYkmloNbSqL9uzLpoHMyYb8D','2018-03-29 20:05:19','2018-03-29 20:05:19'),(1362,1,'qmL2mMTlX03sdCtSVnWuVmoKNMhCfvV3','2018-03-29 20:05:19','2018-03-29 20:05:19'),(1363,1,'tbRbbVuJp72hw19hZVkUWbUm5LR28EFy','2018-03-29 20:06:48','2018-03-29 20:06:48'),(1364,1,'AtZjL27nVHwvaJVNbT8LuuEu88n5XCoM','2018-03-29 20:06:48','2018-03-29 20:06:48'),(1365,1,'6vskmMHeKdWRgWhdB0dKQd1DOizkKklQ','2018-03-29 20:07:13','2018-03-29 20:07:13'),(1366,1,'zjEgj7MT3zcGelpUjzXjA6r3k9mak2Gg','2018-03-29 20:07:13','2018-03-29 20:07:13'),(1367,1,'1QLit0siThhMg6LIIOCbibUQSgwWrdDw','2018-03-29 21:38:21','2018-03-29 21:38:21'),(1368,1,'WgScOlJhkoVWzP51wtgQcx7sLYdu2PU3','2018-03-29 21:38:21','2018-03-29 21:38:21'),(1369,1,'LddJUP7M81LAFlFyd187nYzzWJZA3HKW','2018-03-29 21:39:32','2018-03-29 21:39:32'),(1370,1,'E9nZ8HHhmyHJV0fZ1xF5QagpVGFRux1O','2018-03-29 21:39:32','2018-03-29 21:39:32'),(1371,1,'UmBSIlzH0ULeXuqCyfh5c3A5CL4pVnvK','2018-03-29 21:39:55','2018-03-29 21:39:55'),(1372,1,'8fXS9RjQaZKG1OFEh0FERFQgZX6xCqO3','2018-03-29 21:39:55','2018-03-29 21:39:55'),(1373,1,'EWOdyh19Gj7bfpNllGZD0LuGU0R0dej4','2018-03-29 21:43:28','2018-03-29 21:43:28'),(1374,1,'8PpFF22pzIa0rmyN9Kzg0ENriuGXGyTh','2018-03-29 21:43:28','2018-03-29 21:43:28'),(1375,1,'RQqAtxTq3yOyj4OzKXUmn4GlV4udkH8H','2018-03-29 21:45:29','2018-03-29 21:45:29'),(1376,1,'lYWMC89xAJlnRhOOF1nfBPkHP4HkE6rR','2018-03-29 21:45:29','2018-03-29 21:45:29'),(1377,1,'qEHvbOAkceBbVjEQsi0AZQKVAadgqbte','2018-03-29 21:58:21','2018-03-29 21:58:21'),(1378,1,'5oexJE8D8YoEtFhTkIoUwUjcT0BbwiPC','2018-03-29 21:58:21','2018-03-29 21:58:21'),(1379,1,'TSK0ZAGU0QcxEmJYL7hoYL5cYTfSWN63','2018-03-29 22:01:44','2018-03-29 22:01:44'),(1380,1,'GI1nHYdaG9BhDJhzrvdUZ8KtBDTPIv4m','2018-03-29 22:01:45','2018-03-29 22:01:45'),(1381,1,'Z3iOLSCz7tTD6EEJFCaj0fknO148gM0b','2018-03-29 22:03:45','2018-03-29 22:03:45'),(1382,1,'K7q764gsndejS6PuLVVSeobzoVdiJGyv','2018-03-29 22:03:45','2018-03-29 22:03:45'),(1383,1,'zWzVjmGNOWYc0BRYZDiA4Kh87Y1DdN66','2018-03-29 22:07:32','2018-03-29 22:07:32'),(1384,1,'7dhpYbD8m6HPlA3ITNQm2VzwFnBWBmdc','2018-03-29 22:07:33','2018-03-29 22:07:33'),(1385,1,'L9dTj7HfzgavWG4bg1hw11Ndj9QdDdrF','2018-03-29 22:22:10','2018-03-29 22:22:10'),(1386,1,'Ja5u3KzwilNfkc6hvNqaaMRFlXNXnHNk','2018-03-29 22:22:10','2018-03-29 22:22:10'),(1387,1,'TSJadNp3tUasSxHGiB9Lf3oRxT263o2X','2018-03-29 22:22:17','2018-03-29 22:22:17'),(1388,1,'Xiy7zWYqpV58oSDJ4Qsgt6Ia7TgGJ8kt','2018-03-29 22:22:17','2018-03-29 22:22:17'),(1389,1,'HgLVJX3C2evUjYuj1J77SwkkJRGl9N8m','2018-03-29 22:22:23','2018-03-29 22:22:23'),(1390,1,'34xtHDj99YZYhA9f5uUIvF7n39aUiCaC','2018-03-29 22:22:23','2018-03-29 22:22:23'),(1391,1,'7FT3W1LIJeOMcTjXgoZKaVk6A3Gf2bhF','2018-03-29 22:25:52','2018-03-29 22:25:52'),(1392,1,'atjkBQSto6Gd3gnCbuilrXwwcQeIviNh','2018-03-29 22:25:52','2018-03-29 22:25:52'),(1393,1,'GnZHvquO3A8ltGMpMThaQnBNuhmQiOGO','2018-03-29 22:26:53','2018-03-29 22:26:53'),(1394,1,'Mg4qusbvQABAAfs10BoH40OcHzZz98XM','2018-03-29 22:26:53','2018-03-29 22:26:53'),(1395,1,'8LhwmhSz6aCzEupW95CeSjCaOpeyP2YW','2018-03-29 22:35:16','2018-03-29 22:35:16'),(1396,1,'6cvExbkRV3BxrxklpD8H7baoXY2eh3QH','2018-03-29 22:35:16','2018-03-29 22:35:16'),(1397,1,'SacidZU0Tj2ASXOMnQp1qflr4OFpHTkV','2018-03-29 22:36:10','2018-03-29 22:36:10'),(1398,1,'slBN6yuWjUmJaTcUSh3GXdOSsQJG6YJp','2018-03-29 22:36:10','2018-03-29 22:36:10'),(1399,1,'M80Oc1dkuphxBBCJDT8qHtf9TXBWjX6O','2018-03-29 22:36:52','2018-03-29 22:36:52'),(1400,1,'emtuyQoDjpC5yFBTTErEthMjzFrp6bZ4','2018-03-29 22:36:52','2018-03-29 22:36:52'),(1401,1,'mwvmkJXtfarPHLXwg8BvgMIigqYCySpC','2018-03-29 22:37:10','2018-03-29 22:37:10'),(1402,1,'vD5RZ7p9BKS86grzFjgsk51vW9eczpea','2018-03-29 22:37:10','2018-03-29 22:37:10'),(1403,1,'x4nxBCrqn96Iv89Xm4xH66vBljcX8TVG','2018-03-29 22:38:03','2018-03-29 22:38:03'),(1404,1,'FN9Ne26mfkmyBjw5nnTNVM7aJrx3WXdi','2018-03-29 22:38:03','2018-03-29 22:38:03'),(1405,1,'2fLCCIcGXn681UFfCAXHg8qVApo7v7OE','2018-03-29 22:38:20','2018-03-29 22:38:20'),(1406,1,'iExiHPmz1sItvJNOmXx1SbzIUFt7LsXt','2018-03-29 22:38:20','2018-03-29 22:38:20'),(1407,1,'bC4wzB8HzpieI9VlBRe903yPT12JLIpW','2018-03-29 22:39:24','2018-03-29 22:39:24'),(1408,1,'P7fCoouemVGMK0y8XAAmLwuNTlvNrV3E','2018-03-29 22:39:25','2018-03-29 22:39:25'),(1409,1,'ptL7KICHDWT0zKUCcbKMJlGKy3k5GPZB','2018-03-29 22:39:47','2018-03-29 22:39:47'),(1410,1,'o4LtzkgVVxZzy51oERT2fDaoCqRjtWok','2018-03-29 22:39:47','2018-03-29 22:39:47'),(1411,1,'G1ldJFGbi6qvrwxlsyLwzQ1D9H0rUOM8','2018-03-29 22:40:48','2018-03-29 22:40:48'),(1412,1,'buUICQSOiXdlQMS7VsS6AxxgGiOr9qrz','2018-03-29 22:40:50','2018-03-29 22:40:50'),(1413,1,'dYt1ZYYqjRYH4JsvMAqnHFJMBsDImXax','2018-03-29 22:53:39','2018-03-29 22:53:39'),(1414,1,'UV1F9VO399t5v27mLUXbDk2OtuMN0Eo7','2018-03-29 22:53:39','2018-03-29 22:53:39'),(1415,1,'6A5jzpdNhSg3fRSIWk0MqlNPDqt2BNE0','2018-03-29 23:10:00','2018-03-29 23:10:00'),(1416,1,'A63vUodviUbhm0lsyywMtvlrPneZw2iJ','2018-03-29 23:10:00','2018-03-29 23:10:00'),(1417,1,'QSDXCnjRaxueeEjDGYszUzLhujT9g2Wv','2018-03-29 23:10:37','2018-03-29 23:10:37'),(1418,1,'sMBWtYnYAJMgAVjxNqqu7a6XSvvTx6hM','2018-03-29 23:10:37','2018-03-29 23:10:37'),(1419,1,'GYcvpnmBtd5N71Ln3ax4orwTXF8AlSah','2018-03-29 23:13:15','2018-03-29 23:13:15'),(1420,1,'pW16r6Lg0FPTQuURHTbQhiydqJZo1hx8','2018-03-29 23:13:16','2018-03-29 23:13:16'),(1421,1,'tGX8Gi3xxxzszbwyD28b2McoyJvsBjCG','2018-03-29 23:15:14','2018-03-29 23:15:14'),(1422,1,'J6Lo3UmW0uHGV4nMXNzqWpgqmFN9Zrco','2018-03-29 23:15:14','2018-03-29 23:15:14'),(1423,1,'20XbSsIB4L8prKAUdMVtf7c5G6jdcMUC','2018-03-29 23:16:44','2018-03-29 23:16:44'),(1424,1,'BpHVszgPAjklvdMF6XKNTNCN4nHrd2f3','2018-03-29 23:16:44','2018-03-29 23:16:44'),(1425,1,'KeUstrfL0wp4qW4GbPtu5Hcq9WbAaBfs','2018-03-29 23:17:59','2018-03-29 23:17:59'),(1426,1,'I788UXhlN7G8RQxHUJFVzxQA6LV6M2Qz','2018-03-29 23:17:59','2018-03-29 23:17:59'),(1427,1,'Mg9qg9CMDbeepX4irnfF1BXOVgij8Icw','2018-03-29 23:18:45','2018-03-29 23:18:45'),(1428,1,'jwNaDAPmlMvdR7OGahqJSTbB219mzPJO','2018-03-29 23:18:45','2018-03-29 23:18:45'),(1429,1,'5UAzMwK3IFIgbJbsB969dojsTDbycpA7','2018-03-29 23:21:21','2018-03-29 23:21:21'),(1430,1,'0fBrEyOHIwfTTQaKeiySJAS6xYEx6aiS','2018-03-29 23:21:21','2018-03-29 23:21:21'),(1431,1,'jygkx564gc8gPxH0JnFSo95Je8VD7RCO','2018-03-29 23:23:20','2018-03-29 23:23:20'),(1432,1,'XRGYZioZJLXN2q20nzg9RAbIymEN894D','2018-03-29 23:23:20','2018-03-29 23:23:20'),(1433,1,'4N481PV0Ulk2fnt91eSFKAhF1Eny9K0V','2018-03-29 23:24:39','2018-03-29 23:24:39'),(1434,1,'Gc3T1aCOW4aZg75RhW4Cm54a3EUjDs5Y','2018-03-29 23:24:39','2018-03-29 23:24:39'),(1435,1,'2ofDDNCzq9jJfVhg8a6bfDmIonlJAkID','2018-03-29 23:25:42','2018-03-29 23:25:42'),(1436,1,'6XMniewBMU125xFHMhwPruo1D7u1RyGk','2018-03-29 23:25:42','2018-03-29 23:25:42'),(1437,1,'VH0ZBBlW0TjWReEqzV7nvkoLCjNyZSiB','2018-03-29 23:26:19','2018-03-29 23:26:19'),(1438,1,'5NjjsJMHfFH9KpE6qpm48zysAYuln9du','2018-03-29 23:26:19','2018-03-29 23:26:19'),(1439,1,'IXOvg3ZyzmW9hXTuOxHvpYeFyB1jA9Me','2018-03-29 23:26:37','2018-03-29 23:26:37'),(1440,1,'dI29LfzQbmI5Ke9lbx0g4N6UQjszgSkv','2018-03-29 23:26:41','2018-03-29 23:26:41'),(1441,1,'O7OKMRZ7dviS7a8sCvMynmNcRocKPtSc','2018-03-29 23:29:34','2018-03-29 23:29:34'),(1442,1,'k7Ju3CpqjPpfiRxf1355ja9cZHJYHjyT','2018-03-29 23:29:34','2018-03-29 23:29:34'),(1443,1,'xhXja7a0LnQz5xoykZqUfQO78dz3d5m4','2018-03-29 23:30:07','2018-03-29 23:30:07'),(1444,1,'hirqJ5gXM4vovgb4x3iETQ6lSajeltag','2018-03-29 23:30:07','2018-03-29 23:30:07'),(1445,1,'dZg3GHD6QWyXQhKT5OFXqdYIbNBUioMF','2018-03-29 23:30:31','2018-03-29 23:30:31'),(1446,1,'tLqBM2VoFpyExfu84p0eo8ZC8XqeP9B1','2018-03-29 23:30:32','2018-03-29 23:30:32'),(1447,1,'shZJrWcF27ekGElMECMFM6t5Y6N20cCy','2018-03-29 23:33:06','2018-03-29 23:33:06'),(1448,1,'nj6TrxZAC61XqvEWrsoC6MdJbJifBfEa','2018-03-29 23:33:06','2018-03-29 23:33:06'),(1449,1,'DAKu7ElDGOKKHfXrZrBwZN6QY66KkuRn','2018-03-29 23:33:31','2018-03-29 23:33:31'),(1450,1,'5v6oUvbqgShfTWLnaPLFtMgj4inl2j82','2018-03-29 23:33:31','2018-03-29 23:33:31'),(1451,1,'BcuOHYVlwyRuuuoCiCwqD7gCjHefR3y6','2018-03-29 23:34:19','2018-03-29 23:34:19'),(1452,1,'getxJdodRPL46OZMui8loy6tX6OHh1Bk','2018-03-29 23:34:19','2018-03-29 23:34:19'),(1453,1,'rjJjkQZO5d17pd7jeCdNUepNdbkQfSn9','2018-03-29 23:36:20','2018-03-29 23:36:20'),(1454,1,'KI04hOG5xD52GHFm5Lc0z4MRpuw3isyV','2018-03-29 23:36:20','2018-03-29 23:36:20'),(1455,1,'TW6pfU3blmKTB1hsrjKPOXxmRVhDzeHE','2018-03-29 23:37:52','2018-03-29 23:37:52'),(1456,1,'1m81N3tzun9YvhH2MVs6swULJcHcIiYu','2018-03-29 23:37:52','2018-03-29 23:37:52'),(1457,1,'VC5vasagZdCHD3VSQ4FCFONrmxOIpX5q','2018-03-29 23:40:02','2018-03-29 23:40:02'),(1458,1,'PIR4B2u2WREn0N3hhhMIJYRggtpsex6p','2018-03-29 23:40:02','2018-03-29 23:40:02'),(1459,1,'Otvs31spTS33JPdsNIAFvZvxydwqdwS0','2018-03-29 23:42:04','2018-03-29 23:42:04'),(1460,1,'PJhIVB0ybzhWdBu9yE8yfdrHQuowl2AF','2018-03-29 23:42:04','2018-03-29 23:42:04'),(1461,1,'5ToIf7QU1w81vgDoBOMoT7cxmER74q4C','2018-03-29 23:43:48','2018-03-29 23:43:48'),(1462,1,'mSpWFX8qr7cnNP0GUwYjrfZUYJaHiEam','2018-03-29 23:43:49','2018-03-29 23:43:49'),(1463,1,'DVRkE5V86vlkfWz0YDGFugp97F41BvOV','2018-03-29 23:44:49','2018-03-29 23:44:49'),(1464,1,'yDKfbqJtToEbjtCFF1MCJ6ffL8m4HyLP','2018-03-29 23:44:49','2018-03-29 23:44:49'),(1465,1,'SS45lhjb75q2aicirBuGkrwah4fQKMr0','2018-03-29 23:46:06','2018-03-29 23:46:06'),(1466,1,'9tHtORzpbCBhSU6kLW29K18YqyM3Cfj8','2018-03-29 23:46:07','2018-03-29 23:46:07'),(1467,1,'nfLNOS1wZlyUgnZomz5lAqBWIvnTHAtn','2018-03-29 23:47:35','2018-03-29 23:47:35'),(1468,1,'kA1Gqu326vhOp23CNKGrKyvCj2eqAl8A','2018-03-29 23:47:35','2018-03-29 23:47:35'),(1469,1,'jnF5v0EMtqVQ8HuuoxGL8fUI3BEjKwp1','2018-03-29 23:48:51','2018-03-29 23:48:51'),(1470,1,'uC7XjnBWjhl6HDySsCUe38cYoqKlEOUy','2018-03-29 23:48:51','2018-03-29 23:48:51'),(1471,1,'wqyOcbfcL0SCscZy6idQJI38haXB5854','2018-03-29 23:52:53','2018-03-29 23:52:53'),(1472,1,'qKarax7qrNuGnIpf9LnlDf60GoaMJ8RX','2018-03-29 23:52:53','2018-03-29 23:52:53'),(1473,1,'4u0ZSCQfmTns2ROVbL0kzNkMK2uRKUBz','2018-03-29 23:53:37','2018-03-29 23:53:37'),(1474,1,'DHngDo6cA5KunzbFSBMOA2eJFiC42Ly4','2018-03-29 23:53:37','2018-03-29 23:53:37'),(1475,1,'bmZCvvVlfUxMMvxaF25Tz7Rj1jDQ6NLZ','2018-03-29 23:54:06','2018-03-29 23:54:06'),(1476,1,'79lxJvQ7PTreUPlGsDNwNwhgUiUIoeta','2018-03-29 23:54:06','2018-03-29 23:54:06'),(1477,1,'7ymNvDY5tovU5tmWZrscpwGz6Knpyi5W','2018-03-29 23:55:05','2018-03-29 23:55:05'),(1478,1,'ardfR4z5zFmG1ulKIKvScZlxpSv6Tcfj','2018-03-29 23:55:05','2018-03-29 23:55:05'),(1479,1,'ZsKnu0VSmwpC0fXSFtVqLPP94pSWrNIs','2018-03-29 23:58:56','2018-03-29 23:58:56'),(1480,1,'eW9KLiWRop17LejANvAS73lT1sK5jefi','2018-03-29 23:58:56','2018-03-29 23:58:56'),(1481,1,'21K7FSRHhLz3gjg87W2C282RedXlQJHn','2018-03-30 00:03:39','2018-03-30 00:03:39'),(1482,1,'9Q4JnsUGSnrf8g1lOAbTyE1pSQ1JvUH7','2018-03-30 00:03:39','2018-03-30 00:03:39'),(1483,1,'hlK3JrrD2TFwtadu2Xc3emViNlIXKXxV','2018-03-30 00:04:37','2018-03-30 00:04:37'),(1484,1,'8X1tiYcaVcBiRif57v4K53sJAYgr3tPS','2018-03-30 00:04:37','2018-03-30 00:04:37'),(1485,1,'YvG6nQtbOeRPtfYqUnYuciSBLHaQc4Xu','2018-03-30 00:19:43','2018-03-30 00:19:43'),(1486,1,'61ypNsmDFa6VBgtqi1J1vJUSIrwJ0HiA','2018-03-30 00:19:43','2018-03-30 00:19:43'),(1487,1,'cnzhl1RBeURmbpLGlM6Ae8iS6AosaCJ4','2018-03-30 00:20:11','2018-03-30 00:20:11'),(1488,1,'hOBVVCIGpxzW2MrS0Pe7QTPaDCAXruCc','2018-03-30 00:20:11','2018-03-30 00:20:11'),(1489,1,'Qq2vs3IB2xypikpPhSDtKkM71xSsuHV4','2018-03-30 00:22:09','2018-03-30 00:22:09'),(1490,1,'frN5X5ynbiFH5C0kZ5QYjQLQr8vnxfbd','2018-03-30 00:22:09','2018-03-30 00:22:09'),(1491,1,'6kHxz3JUlrBaDqC1hW3XFzv4Ru6yBsfc','2018-03-30 00:24:48','2018-03-30 00:24:48'),(1492,1,'xZuLZdGmn4uvdO31rST2B3BHjEEPSmVM','2018-03-30 00:24:48','2018-03-30 00:24:48'),(1493,1,'sJIPyKopo3PC0X6kpnQHwop5HJbvbkGZ','2018-03-30 00:25:47','2018-03-30 00:25:47'),(1494,1,'y4wOa0HqBJcm7nOWohLXdNCc78I8NjLv','2018-03-30 00:25:48','2018-03-30 00:25:48'),(1495,1,'DQr5ABJx85XYoPRMb8XySD7CPcPm8cCA','2018-03-30 00:26:42','2018-03-30 00:26:42'),(1496,1,'MVQi4yDVRVfvlVeVE8vRF25gZhNoSv1N','2018-03-30 00:26:42','2018-03-30 00:26:42'),(1497,1,'s9Hqhz3kXTh8WjicBYR1a9im0Vq8WgdM','2018-03-30 00:27:56','2018-03-30 00:27:56'),(1498,1,'0BYIVU1bOVPQRBV6qveMNdUYNcvcorVg','2018-03-30 00:27:56','2018-03-30 00:27:56'),(1499,1,'ivsbtOQN1CnRLnAdfYMCPBhXwJCSu084','2018-03-30 00:32:42','2018-03-30 00:32:42'),(1500,1,'Y9lDuxNLgAc4qhD4RGQjcIYojwqL1HvS','2018-03-30 00:32:42','2018-03-30 00:32:42'),(1501,1,'ofDlVevaCh7jn9wJFijYzV1MVcTnsoM8','2018-03-30 00:32:58','2018-03-30 00:32:58'),(1502,1,'WnMzd1QVv973JuQflZ2mqbOUrzOqvcLT','2018-03-30 00:32:59','2018-03-30 00:32:59'),(1503,1,'KIQN4Hrs8qUP60qvMuVC0buSI7UILav6','2018-03-30 00:33:08','2018-03-30 00:33:08'),(1504,1,'on1o7Q4sYSm8kygmYp9z0ctQqWDwq8Ra','2018-03-30 00:33:08','2018-03-30 00:33:08'),(1505,1,'6Cy5dqQYpN5hDATCJuVCkzlEpjluSBch','2018-03-30 00:34:29','2018-03-30 00:34:29'),(1506,1,'DEBZYqf1IL1w2cCDa5cJJui2xQhhI2yy','2018-03-30 00:34:29','2018-03-30 00:34:29'),(1507,1,'1shHyUgiDpPFPjM7zwPBAnveOppUcJFn','2018-03-30 00:36:07','2018-03-30 00:36:07'),(1508,1,'r266WIu4aMlmek8qitTOXasZieOBtU47','2018-03-30 00:36:07','2018-03-30 00:36:07'),(1509,1,'4h1LlDLEKRqkQYvrqE51ePjTA3BCAKDS','2018-03-30 00:36:52','2018-03-30 00:36:52'),(1510,1,'IexS6a2oZnYlQzmFgzumBXxSOGLb63Yv','2018-03-30 00:36:52','2018-03-30 00:36:52'),(1511,1,'g0YW48sVXMFp3kXFcPmo7zYzcyYLyxX5','2018-03-30 00:37:07','2018-03-30 00:37:07'),(1512,1,'VM6VScs5tvs6KtLSKmHXrkzUDh92y9ie','2018-03-30 00:37:07','2018-03-30 00:37:07'),(1513,1,'snPuMt3BFxPB9NJLjct4yass1pbkaXWF','2018-03-30 00:37:32','2018-03-30 00:37:32'),(1514,1,'bXjUl8XhjBCFJ0tGz3FMBrq6dX1TXok8','2018-03-30 00:37:50','2018-03-30 00:37:50'),(1515,1,'TEO56lFpyhjq3WdlC20t2eL8acRgozrY','2018-03-30 00:50:41','2018-03-30 00:50:41'),(1516,1,'b4vYXzZ7EZUOF0aaqAXAe8ZpJjoD1fXc','2018-03-30 00:55:21','2018-03-30 00:55:21'),(1517,1,'7y6OX2BVHo9wV10fHbajRLpFXS8YAupL','2018-03-30 00:55:21','2018-03-30 00:55:21'),(1518,1,'T36SkgfyXHuusKhZzSE56n4w9a4RhqSo','2018-03-30 01:02:23','2018-03-30 01:02:23'),(1519,1,'2psu8gXmRkjGDzdMT0LNk4p27O2wSFTV','2018-03-30 01:02:23','2018-03-30 01:02:23'),(1520,1,'VbqaJPnN4zqbzf8UlKh6W1iDO2OBvNkk','2018-03-30 01:02:38','2018-03-30 01:02:38'),(1521,1,'vb8YRCKHrOrOujkyzkIQZ0GbvvNnDStF','2018-03-30 01:04:16','2018-03-30 01:04:16'),(1522,1,'VDEkgwkHdTsG5hqHQfRT6gKQegLNlDU1','2018-03-30 01:04:23','2018-03-30 01:04:23'),(1523,1,'q0syP07OlNliHDEULbOsYngMmlCjNuL0','2018-03-30 01:04:45','2018-03-30 01:04:45'),(1524,1,'GgYdXPCIutdmS64f7z1yuJlsDGjwcxhC','2018-03-30 01:05:02','2018-03-30 01:05:02'),(1525,1,'GZM2yukgaCpDyqVhZFHFvL4J29vi0RUw','2018-03-30 01:05:14','2018-03-30 01:05:14'),(1526,1,'OIM6AKR6UIQomyT2uoKWuOFhrh8OgaNU','2018-03-30 01:06:22','2018-03-30 01:06:22'),(1527,1,'3qYdA7sPZGt9gXRPydj7YV5WmrAgKtuy','2018-03-30 01:06:46','2018-03-30 01:06:46'),(1528,1,'r7Kj4Mdlx4126uWOszQWeZkI7zCji3wk','2018-03-30 01:08:07','2018-03-30 01:08:07'),(1529,1,'WNvbJoxGfQPOWpqQZtNQXRAKYHwN5aME','2018-03-30 01:08:07','2018-03-30 01:08:07'),(1530,1,'6Q9TkyE0YE4548LInqhWUuoQo7kyvvjD','2018-03-30 01:08:14','2018-03-30 01:08:14'),(1531,1,'zemwz9OaTLVYcefaY85MBHIOI7mAlPPa','2018-03-30 01:08:33','2018-03-30 01:08:33'),(1532,1,'vltyO5KSLJ4e3hSQOWax8xEymw5Nt80c','2018-03-30 01:11:13','2018-03-30 01:11:13'),(1533,1,'1wqfptm1HYuMoud1AU3Q3w0OJFBdVYSf','2018-03-30 01:11:13','2018-03-30 01:11:13'),(1534,1,'UDbLx9qf7XLXeZtAq2tc4mNUoOI7REww','2018-03-30 01:13:38','2018-03-30 01:13:38'),(1535,1,'gNugnhRY4Vy4RODkdiZHFU6KhK6DWvSV','2018-03-30 01:13:38','2018-03-30 01:13:38'),(1536,1,'o38PlqTQdwujympEpyd6Z59rcKprO6Kz','2018-03-30 01:14:44','2018-03-30 01:14:44'),(1537,1,'L1t5VwbiuKvuI7zn5MltFmHKwdHGcmyo','2018-03-30 01:14:45','2018-03-30 01:14:45'),(1538,1,'dvALekWUqSGgFV9b2CV8BfphjKmTKczq','2018-03-30 01:15:09','2018-03-30 01:15:09'),(1539,1,'zZPqkrJqmQPqu2re8IaYGvVaSRglk3VK','2018-03-30 01:15:09','2018-03-30 01:15:09'),(1540,1,'WJhwTPa0LUIYpOX5KkRSIjPSEbGDCYWB','2018-03-30 01:15:33','2018-03-30 01:15:33'),(1541,1,'DXQNflcmVJmbqTBEqRjEC2HNA8jqtlkZ','2018-03-30 01:15:33','2018-03-30 01:15:33'),(1542,1,'oLITTDvIqjoloD1GcxgW6cCbBynMsVk5','2018-04-01 17:09:19','2018-04-01 17:09:19'),(1543,1,'6qeTTxwMrgBK261yDLeuq4jWV5M7T21g','2018-04-01 17:09:20','2018-04-01 17:09:20'),(1544,1,'GMmbFOQlZMC75cFLJlwU6jatQWjknamr','2018-04-01 17:09:28','2018-04-01 17:09:28'),(1545,1,'aTYBLBas7hRlYw4wrP5oGcceVSILi9O1','2018-04-01 17:09:29','2018-04-01 17:09:29'),(1546,1,'9tWlA7l3WEweHPBmD8mwujYeOhcFZTqE','2018-04-01 17:21:20','2018-04-01 17:21:20'),(1547,1,'aiR3YxSNtFKdOvNjF7P0NqOuCv0NK7K3','2018-04-01 17:21:20','2018-04-01 17:21:20'),(1548,1,'7TcCdQjDBc1DM74tau2YIRaCO9greQ6s','2018-04-01 17:21:42','2018-04-01 17:21:42'),(1549,1,'hh313FIRBqiw9UmbjfrqOzuPsigHyPTp','2018-04-01 17:21:42','2018-04-01 17:21:42'),(1550,1,'jz1FY8iOMHaM8020dEYO5jnQKlk0IbZf','2018-04-01 17:23:24','2018-04-01 17:23:24'),(1551,1,'jBGAQn5WP8pV9A71v9eGWzySsYQoQRnU','2018-04-01 17:23:24','2018-04-01 17:23:24'),(1552,1,'IlNcSUWKxpjn3Vx7DgZJsveilaYFRPk4','2018-04-01 17:27:16','2018-04-01 17:27:16'),(1553,1,'GuqEa0ktGy2xi72lSoVmc81sVD7nnIac','2018-04-01 17:27:16','2018-04-01 17:27:16'),(1554,1,'JlBsJ4AmLf7DGYAzLhy7hTkawGiU0dip','2018-04-01 17:34:44','2018-04-01 17:34:44'),(1555,1,'ZxTuqQiIhvfVVDc5fXhIJSAdrgCVim3N','2018-04-01 17:34:44','2018-04-01 17:34:44'),(1556,1,'TgF4rLSLzhHULogx9JvvK1UpaEChxqd0','2018-04-01 17:39:51','2018-04-01 17:39:51'),(1557,1,'6Sh91fXuL4SgeVOySN6YJSzT34hY2Tz6','2018-04-01 17:39:51','2018-04-01 17:39:51'),(1558,1,'lT56ukn9ivxOo7XzhavNb7cVxA9bQhFU','2018-04-01 17:41:24','2018-04-01 17:41:24'),(1559,1,'ZawHXblAmYQ1IVPa7sltqiic2nR8w2qa','2018-04-01 17:41:24','2018-04-01 17:41:24'),(1560,1,'IN5WqmszQzLdAt5XkTtLZeE3pIT4K4Ne','2018-04-01 17:42:49','2018-04-01 17:42:49'),(1561,1,'dT4Oa0IXoGaaMmWlx1TlbRiNuvKZp8at','2018-04-01 17:42:49','2018-04-01 17:42:49'),(1562,1,'Od5ozQMAIaZmJWdzPVkWPjHd6bQEjxfC','2018-04-01 17:43:44','2018-04-01 17:43:44'),(1563,1,'3y3OtHN1L7lF2EfKjq1gWZQE7HGFByja','2018-04-01 17:43:44','2018-04-01 17:43:44'),(1564,1,'ZOtByfExRnQzoMcRExqtXTFVEL25a8CH','2018-04-01 17:46:16','2018-04-01 17:46:16'),(1565,1,'6yGaLhv6cBc3Lovk8jyxSemQxPiOBPvC','2018-04-01 17:46:16','2018-04-01 17:46:16'),(1566,1,'7dlHoYKJIYtpkUldZd20wGwP5x2rSori','2018-04-01 17:54:30','2018-04-01 17:54:30'),(1567,1,'JgkrMWCxH7yONjYTRi2AIEE616StnERr','2018-04-01 17:54:30','2018-04-01 17:54:30'),(1568,1,'NJX6lRw1E8mOHPvmAxP045hc5EvQiUEo','2018-04-01 17:56:55','2018-04-01 17:56:55'),(1569,1,'CIugSb4csACjz4gSK4hcgIK3ZTfyvRqH','2018-04-01 17:56:56','2018-04-01 17:56:56'),(1570,1,'pXM96O81p0EElBLv0spUU5MMTwJ1vFlu','2018-04-01 17:57:52','2018-04-01 17:57:52'),(1571,1,'sTaiYcRDsw2y2INaa6waHcFlDT0eBtft','2018-04-01 17:57:52','2018-04-01 17:57:52'),(1572,1,'AWkxKWUqxqyU2cfOqFWcTVihxTzleQ1A','2018-04-01 17:58:46','2018-04-01 17:58:46'),(1573,1,'YgTwcBp9qzrxbihH76mHO2OK0HbDDtQ5','2018-04-01 17:58:46','2018-04-01 17:58:46'),(1574,1,'WZxIVBejIdng3xHbgNMCkU5VbIZ78lgS','2018-04-01 17:59:19','2018-04-01 17:59:19'),(1575,1,'yeNX7lhknPdZr8P0PHIoeHnPGW2FjnNO','2018-04-01 17:59:19','2018-04-01 17:59:19'),(1576,1,'FSQIiV0gVW1VopcpjyomY2IlxQW50gFk','2018-04-01 18:02:09','2018-04-01 18:02:09'),(1577,1,'7n4Zsj4XTlihhMJOkXFUig8cNBHI0olR','2018-04-01 18:02:09','2018-04-01 18:02:09'),(1578,1,'Kh7VHuHLc5jMVeZoHEgpLb3mYR1txOOn','2018-04-01 18:03:48','2018-04-01 18:03:48'),(1579,1,'TpV42vb4lJRkt1VjH6TlMtXGe6jqnTJw','2018-04-01 18:03:48','2018-04-01 18:03:48'),(1580,1,'Tlay6gGxGAfasFzqM6LpP4dgWq056H7t','2018-04-01 18:04:46','2018-04-01 18:04:46'),(1581,1,'203OJqnfqpgiYESbsa1jRsUDzyTJuHSh','2018-04-01 18:04:47','2018-04-01 18:04:47'),(1582,1,'lHjtxJragCtqAq39FGobwNsXUZ8PWnIM','2018-04-01 18:09:44','2018-04-01 18:09:44'),(1583,1,'veZ9pwKt6N370kJZZMPmCqGXB3dNxrR4','2018-04-01 18:09:44','2018-04-01 18:09:44'),(1584,1,'zK5EKu5E2xMIzeMcxVDirtNaDRNkpJIk','2018-04-01 18:10:32','2018-04-01 18:10:32'),(1585,1,'CmM4XezRXDmaRKjFmSAsXwge3mjPHgHr','2018-04-01 18:10:32','2018-04-01 18:10:32'),(1586,1,'ycPgn9S8P1aexK7TH806DLO6Ph3XDzcA','2018-04-01 18:11:57','2018-04-01 18:11:57'),(1587,1,'XpP16wcoZtVFCbYsbVNjEXF5vi0AX8Jz','2018-04-01 18:11:57','2018-04-01 18:11:57'),(1588,1,'UzRedDvqNvEYS6csrJw6I2l2Fv0hDrMf','2018-04-01 18:13:20','2018-04-01 18:13:20'),(1589,1,'CNziWK9OeyRG7pK5hNRQzwuNsT63qYEd','2018-04-01 18:13:21','2018-04-01 18:13:21'),(1590,1,'iIgKYHIbUtDvx3142ms6mebhFzFRH2jm','2018-04-01 18:14:58','2018-04-01 18:14:58'),(1591,1,'e55E3Kt6gzRBAy6GTNzlp1CXHUx7BlWf','2018-04-01 18:14:58','2018-04-01 18:14:58'),(1592,1,'eL60sYdu2bJogmPbj1o3WoK2Ufa719Aq','2018-04-01 18:15:24','2018-04-01 18:15:24'),(1593,1,'xFddUBTUxkIVCyCrktOIVLN4AsHvQRuA','2018-04-01 18:15:24','2018-04-01 18:15:24'),(1594,1,'8h2xPe7IrStOtpShSmBWavc30kTGYY8T','2018-04-01 18:15:40','2018-04-01 18:15:40'),(1595,1,'BNXGzl2der0Gjdhrv75Xs8wblNFCGFYH','2018-04-01 18:15:40','2018-04-01 18:15:40'),(1596,1,'uuls71DFYmiRMMAs5d7zASBy6bviOoX9','2018-04-01 18:15:50','2018-04-01 18:15:50'),(1597,1,'7Oe4nJ8dYtq9qzDuYkYAaZkUghMOGSBZ','2018-04-01 18:15:50','2018-04-01 18:15:50'),(1598,1,'YwQFS2kRJ0A4w2wynAOCJ8BO5gqew4Gz','2018-04-01 18:16:23','2018-04-01 18:16:23'),(1599,1,'sF3WzcyZqLjP6QI28LSx7MNbxBT1ar7C','2018-04-01 18:16:24','2018-04-01 18:16:24'),(1600,1,'0u2D53hPxs0s9BkEgOEJO0uypmG7dRlb','2018-04-01 18:16:42','2018-04-01 18:16:42'),(1601,1,'0xMrLfBv6bF5a5FXAzsJZMmpAQfCN9NI','2018-04-01 18:16:42','2018-04-01 18:16:42'),(1602,1,'ZUsczsQaEbXl4S01llFWxmItHoifvdJj','2018-04-01 23:14:01','2018-04-01 23:14:01'),(1603,1,'6dy5BIw5BF79UQk5yYa7MEtwsMMgO1ok','2018-04-01 23:14:02','2018-04-01 23:14:02'),(1604,1,'j4OwMz38noX4KIHOaXN80uF1xddzk8B1','2018-04-01 23:14:02','2018-04-01 23:14:02'),(1605,1,'zEZteJ9nhz9tcbvSGYt6z2qGMIwElgYj','2018-04-01 23:34:33','2018-04-01 23:34:33'),(1606,1,'NxTaa5AezLRuHSztLj1XcMeIb3GsRDah','2018-04-01 23:34:33','2018-04-01 23:34:33'),(1607,1,'vu2oZxrjwM9CTVD3NBlGAAYSyA1sexzb','2018-04-01 23:58:33','2018-04-01 23:58:33'),(1608,1,'lTW5rgeEL1BXfKH9bungJKj8VQFfEKc4','2018-04-01 23:58:36','2018-04-01 23:58:36'),(1609,1,'QklzArBvfPHbZyz4M1F6o87O0hu9MboG','2018-04-02 01:20:28','2018-04-02 01:20:28'),(1610,1,'AlSKRTlFxOEQIcbreN5wkAhLNaeaj2Wi','2018-04-02 01:20:31','2018-04-02 01:20:31'),(1611,1,'LJ7PhdUX2p0hM8PdCErdRbGOte8arhth','2018-04-02 01:20:35','2018-04-02 01:20:35'),(1612,1,'EDhHwj2XxDoFQCx8XLwvt0R3sBWjIWzb','2018-04-02 01:20:42','2018-04-02 01:20:42'),(1613,1,'cDgTUMhaP1o0HAYFb7WaEDptzid4qbcT','2018-04-02 01:20:42','2018-04-02 01:20:42'),(1614,1,'HOXAlFLmrl0n6wwrylStimXhUdnQwrBB','2018-04-02 01:22:02','2018-04-02 01:22:02'),(1615,1,'G4SP8SNS8pyEcnfua1R0W115ZazCnP0F','2018-04-02 01:42:24','2018-04-02 01:42:24'),(1618,1,'xCziNXOXWgDdCAGVL6Kb1MaRyz4TBtnE','2018-04-02 19:25:41','2018-04-02 19:25:41'),(1633,1,'kBG3MHLJ5g8sshFv7fvoMUOt1LDuzmtG','2018-04-02 21:24:19','2018-04-02 21:24:19'),(1634,1,'GrQjM532Bb6FktzpOZAUZ4XY2o02YYnT','2018-04-02 21:24:21','2018-04-02 21:24:21'),(1635,1,'FuJa0H2ZPx4Q3rEu9AIDwIrPvSJRhrBi','2018-04-02 21:24:24','2018-04-02 21:24:24'),(1645,1,'tuGdniBrQneoNdthmGoPFYkoW0ZftO5A','2018-04-02 21:47:47','2018-04-02 21:47:47'),(1646,1,'q7GvbDGQrDhm4VFZKiYjDL8Uu02CJ41v','2018-04-02 21:48:05','2018-04-02 21:48:05'),(1647,1,'w5NqdcmWj9dWzIIn7yWBi3yDmbRENR4G','2018-04-02 21:52:42','2018-04-02 21:52:42'),(1648,1,'mJr5u15o3X4msdEPAMzG3ItaGnbpCPQ8','2018-04-02 21:52:55','2018-04-02 21:52:55'),(1649,1,'lOOwPb4iLq6nlsEbsKLdhyd0KCJrzVFo','2018-04-02 21:52:55','2018-04-02 21:52:55'),(1650,1,'cMb4B2po7qrvowJvlXCr8kSHM3pmIhLK','2018-04-02 21:52:55','2018-04-02 21:52:55'),(1651,1,'m5tmefWpxHL3OlbANoNHmzHMPVDJLTJb','2018-04-02 21:53:00','2018-04-02 21:53:00'),(1652,1,'pjoBsbvl0lHqGv0chtigQwkBoZqLrmcy','2018-04-02 21:53:07','2018-04-02 21:53:07'),(1653,1,'I9YuIXCDyiSWCzlikRgugMIDRoeSsbWZ','2018-04-02 21:53:07','2018-04-02 21:53:07'),(1654,1,'kYnKQqv2WO71M4NYVeI2kRmJMZD39qcq','2018-04-02 21:53:07','2018-04-02 21:53:07'),(1655,1,'fiHJ8SU6Yu6L0eWNHrmORuIzPPJk54UO','2018-04-02 21:53:12','2018-04-02 21:53:12'),(1658,1,'vgQf7a9XMJ1InuHNGyIBUUNKvZmwNu34','2018-04-02 22:11:24','2018-04-02 22:11:24'),(1659,1,'cSl6kPLJeJSD1lEwVSjoVm27rCKIz1ZV','2018-04-02 22:11:38','2018-04-02 22:11:38'),(1660,1,'A7ZR52EkuUkNTEmlrjJhaielhDgKRBsn','2018-04-02 22:12:41','2018-04-02 22:12:41'),(1662,1,'CgCSTzhMykpisw4GpvuvZu6pozGRVgW6','2018-04-02 22:35:47','2018-04-02 22:35:47'),(1663,1,'B5du5PNZHkPHIqTShQwfGgp6JA8ufX1B','2018-04-02 22:36:08','2018-04-02 22:36:08'),(1664,1,'dC5auwOE65nZnSgETaiaSmvDZGrsqZ5L','2018-04-02 22:46:53','2018-04-02 22:46:53'),(1665,1,'dITepcH7lJDL55SLrN334tGJ9nyiwyWv','2018-04-02 22:47:15','2018-04-02 22:47:15'),(1666,1,'njkd0iNqgsU4FOfSt68YAf1zgWyDkZ6T','2018-04-02 22:53:57','2018-04-02 22:53:57'),(1667,1,'pfy2ksFXsJwCYgqayKGiKLvujrGClzcJ','2018-04-02 22:55:01','2018-04-02 22:55:01'),(1668,1,'1m5Fn6IcDxY7IxuyRWU42KS09mslOHla','2018-04-02 22:55:34','2018-04-02 22:55:34'),(1669,1,'aaZZ2lMDRrbRQ8T9wGzf7BTc59CpZYEi','2018-04-02 22:55:52','2018-04-02 22:55:52'),(1670,1,'7CGekvGCG7mObzyzrmjMsyM6vMpw19VO','2018-04-02 22:57:42','2018-04-02 22:57:42'),(1671,1,'mPJkIUW6bD8rxTGErN95kvEzeb6lyHx1','2018-04-02 22:58:28','2018-04-02 22:58:28'),(1672,1,'5BJo9DCc5XChheFQtTieGnM0DFao1aUa','2018-04-02 22:58:44','2018-04-02 22:58:44'),(1673,1,'P1SgktXqsoAeogT4aUll3ZBsBaWD7gV5','2018-04-02 22:59:14','2018-04-02 22:59:14'),(1674,1,'GLpF2LNcZTj9yqLTurflITkoAurTYhcN','2018-04-02 23:00:14','2018-04-02 23:00:14'),(1675,1,'ELtiICndV6LbQDwOcvVAFMoEXXrY3AkD','2018-04-02 23:01:56','2018-04-02 23:01:56'),(1676,1,'sRcRgOI4IGzE5Kt1dNOnF3i6drjfkspz','2018-04-02 23:02:17','2018-04-02 23:02:17'),(1677,1,'DxoovfSIWyYrgb2ki8wKQEDnK7qSGAYd','2018-04-02 23:02:26','2018-04-02 23:02:26'),(1678,1,'8OG1dVlC0sPI8fXArIxDiSDLgghqIP3G','2018-04-02 23:02:31','2018-04-02 23:02:31'),(1679,1,'YlxLIHnzMs647KMw4xujUXP75mzNaLfV','2018-04-02 23:07:27','2018-04-02 23:07:27'),(1680,1,'WFrGWfj8e6og1TqoxfAzi2f0tlpVJOYs','2018-04-02 23:07:36','2018-04-02 23:07:36'),(1681,1,'49AS28fDbnRO55n0D2MSCSRF9eiKULJt','2018-04-02 23:14:43','2018-04-02 23:14:43'),(1682,1,'3L9D0p14pLch3XQTgbAFGc2sE9fvJUUX','2018-04-02 23:14:57','2018-04-02 23:14:57'),(1683,1,'I535MAULOl7YYme3mltOa76u3uSR07HS','2018-04-02 23:14:58','2018-04-02 23:14:58'),(1684,1,'HSGtiyIspr1Xy9vP0R76jyND84AWkgFb','2018-04-02 23:22:26','2018-04-02 23:22:26'),(1685,1,'T4xr6YSJk52nxCb0xpoH1a3Nft0yCLiz','2018-04-02 23:23:46','2018-04-02 23:23:46'),(1686,1,'OO3hq4iTz64gqW4nTJQOR8pqYM2ZELX1','2018-04-02 23:27:04','2018-04-02 23:27:04'),(1687,1,'S2swc8bzndTA14XdC0NCVJywzFtE0B2S','2018-04-02 23:27:06','2018-04-02 23:27:06'),(1688,1,'WatJdDVulVtQFYzPFn325pNEZMptTlsf','2018-04-02 23:30:54','2018-04-02 23:30:54'),(1689,1,'pjc0ZwX0LC9DoIlKbWuoUOiBJ3OuMU7K','2018-04-02 23:30:57','2018-04-02 23:30:57'),(1690,1,'GjSrdIXkuwx4YuLLksb3LuUUJTWC8hYe','2018-04-02 23:31:14','2018-04-02 23:31:14'),(1691,1,'eo5AWObUJs8HVtuXL4zcXarh97WmuUrQ','2018-04-02 23:31:15','2018-04-02 23:31:15'),(1692,1,'hTt6utkxxNuQwZMzNSVakyfobA5gV0Vj','2018-04-02 23:31:43','2018-04-02 23:31:43'),(1693,1,'K5GkyCgxmZix0qqtG6nKsT3whVtpz5Zx','2018-04-02 23:31:44','2018-04-02 23:31:44'),(1695,1,'tX3ygkWJRNx2turmQWU4KBV7JomFrCHz','2018-04-03 00:36:42','2018-04-03 00:36:42'),(1696,1,'0Viebiz2TlKGjkWxezkvxYJzh2VUpXYA','2018-04-03 01:11:58','2018-04-03 01:11:58'),(1697,1,'XjwZyDSPI4zkT5ttPbCRiBmnSj8Vd3ya','2018-04-03 01:12:04','2018-04-03 01:12:04'),(1698,1,'epAsQwLnxLfQXKk7dj6jxtcLPWEUIUQi','2018-04-03 01:12:04','2018-04-03 01:12:04'),(1699,1,'XtmVh4AeuyTT1kdNj1sGTlSdGtsvlRkM','2018-04-03 01:13:27','2018-04-03 01:13:27'),(1700,1,'xACsWcYEOLW8Xuhtpo1yT1uwF3x83SGH','2018-04-03 01:13:27','2018-04-03 01:13:27'),(1701,1,'cnjvMsLwJxWhkkLzEDeXzIoqlVukU32M','2018-04-03 01:14:50','2018-04-03 01:14:50'),(1702,1,'LBp4QyhJCEvwJnRpOehhSh1J9oTsu4KI','2018-04-03 01:14:53','2018-04-03 01:14:53'),(1707,1,'f3ZUf9H8kRtiJeHpsYkocpS8plu8oAt1','2018-04-03 18:04:39','2018-04-03 18:04:39'),(1708,1,'zQIyuPGyP5kDZ4CUCYKG2RIJAvAGcHX9','2018-04-03 18:04:44','2018-04-03 18:04:44'),(1709,1,'baSRysoNgwRtoBwf6uOWZT1eq2tfqc3l','2018-04-03 19:45:21','2018-04-03 19:45:21'),(1710,1,'9C6WBvs02xPQcD4HvskHBJB07xhd2xoZ','2018-04-03 21:56:36','2018-04-03 21:56:36');
/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product__attr_translations`
--

DROP TABLE IF EXISTS `product__attr_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product__attr_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attr_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product__attr_translations_attr_id_locale_unique` (`attr_id`,`locale`),
  KEY `product__attr_translations_locale_index` (`locale`),
  CONSTRAINT `product__attr_translations_attr_id_foreign` FOREIGN KEY (`attr_id`) REFERENCES `product__attrs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product__attr_translations`
--

LOCK TABLES `product__attr_translations` WRITE;
/*!40000 ALTER TABLE `product__attr_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `product__attr_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product__attrs`
--

DROP TABLE IF EXISTS `product__attrs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product__attrs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_for_sku` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=741 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product__attrs`
--

LOCK TABLES `product__attrs` WRITE;
/*!40000 ALTER TABLE `product__attrs` DISABLE KEYS */;
INSERT INTO `product__attrs` VALUES (375,24,'color','[\"blue\",\"red\"]',1,'2018-03-25 18:42:17','2018-03-25 18:42:17'),(376,24,'size','[\"m\"]',1,'2018-03-25 18:42:17','2018-03-25 18:42:17'),(377,24,'material','\"leather\"',0,'2018-03-25 18:42:17','2018-03-25 18:42:17'),(378,24,'brand','\"hm\"',0,'2018-03-25 18:42:17','2018-03-25 18:42:17'),(379,22,'color','[\"blue\",\"red\"]',1,'2018-03-25 18:42:24','2018-03-25 18:42:24'),(380,22,'size','[\"m\"]',1,'2018-03-25 18:42:24','2018-03-25 18:42:24'),(381,22,'material','\"leather\"',0,'2018-03-25 18:42:24','2018-03-25 18:42:24'),(382,22,'brand','\"zara\"',0,'2018-03-25 18:42:24','2018-03-25 18:42:24'),(491,26,'material','[\"leather\"]',1,'2018-03-30 00:37:02','2018-03-30 00:37:02'),(492,26,'brand','[\"zara\"]',1,'2018-03-30 00:37:02','2018-03-30 00:37:02'),(493,26,'color','[\"blue\",\"red\"]',1,'2018-03-30 00:37:02','2018-03-30 00:37:02'),(494,26,'size','[\"m\",\"l\"]',1,'2018-03-30 00:37:02','2018-03-30 00:37:02'),(495,26,'material','\"leather\"',0,'2018-03-30 00:37:02','2018-03-30 00:37:02'),(496,26,'brand','\"zara\"',0,'2018-03-30 00:37:02','2018-03-30 00:37:02'),(625,47,'material','[\"leather\"]',1,'2018-03-30 01:04:59','2018-03-30 01:04:59'),(626,47,'brand','[\"zara\"]',1,'2018-03-30 01:04:59','2018-03-30 01:04:59'),(627,47,'color','[\"blue\",\"red\"]',1,'2018-03-30 01:04:59','2018-03-30 01:04:59'),(628,47,'size','[\"m\"]',1,'2018-03-30 01:04:59','2018-03-30 01:04:59'),(629,46,'material','[\"leather\"]',1,'2018-03-30 01:08:11','2018-03-30 01:08:11'),(630,46,'brand','[\"zara\"]',1,'2018-03-30 01:08:11','2018-03-30 01:08:11'),(631,46,'color','[\"blue\",\"red\"]',1,'2018-03-30 01:08:11','2018-03-30 01:08:11'),(632,46,'size','[\"m\",\"l\"]',1,'2018-03-30 01:08:11','2018-03-30 01:08:11'),(723,25,'material','[\"leather\"]',1,'2018-04-01 18:16:20','2018-04-01 18:16:20'),(724,25,'brand','[\"zara\",\"hm\"]',1,'2018-04-01 18:16:20','2018-04-01 18:16:20'),(725,25,'color','[\"blue\",\"red\"]',1,'2018-04-01 18:16:20','2018-04-01 18:16:20'),(726,25,'size','[\"m\",\"l\"]',1,'2018-04-01 18:16:20','2018-04-01 18:16:20'),(727,25,'material','\"leather\"',0,'2018-04-01 18:16:20','2018-04-01 18:16:20'),(728,25,'brand','\"zara\"',0,'2018-04-01 18:16:20','2018-04-01 18:16:20'),(735,21,'material','[\"leather\",\"mutton\"]',1,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(736,21,'brand','[\"zara\",\"hm\"]',1,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(737,21,'color','[\"blue\",\"red\"]',1,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(738,21,'size','[\"m\",\"l\"]',1,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(739,21,'material','\"leather\"',0,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(740,21,'brand','\"zara\"',0,'2018-04-03 01:12:15','2018-04-03 01:12:15');
/*!40000 ALTER TABLE `product__attrs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product__attrset_translations`
--

DROP TABLE IF EXISTS `product__attrset_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product__attrset_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attrset_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product__attrset_translations_attrset_id_locale_unique` (`attrset_id`,`locale`),
  KEY `product__attrset_translations_locale_index` (`locale`),
  CONSTRAINT `product__attrset_translations_attrset_id_foreign` FOREIGN KEY (`attrset_id`) REFERENCES `product__attrsets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product__attrset_translations`
--

LOCK TABLES `product__attrset_translations` WRITE;
/*!40000 ALTER TABLE `product__attrset_translations` DISABLE KEYS */;
INSERT INTO `product__attrset_translations` VALUES (3,'electronic',2,'en'),(4,'电子产品',2,'zh'),(5,'clothes',3,'en'),(6,'衣服',3,'zh'),(7,'coat',4,'en'),(8,'外套',4,'zh');
/*!40000 ALTER TABLE `product__attrset_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product__attrsets`
--

DROP TABLE IF EXISTS `product__attrsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product__attrsets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product__attrsets`
--

LOCK TABLES `product__attrsets` WRITE;
/*!40000 ALTER TABLE `product__attrsets` DISABLE KEYS */;
INSERT INTO `product__attrsets` VALUES (2,'electronic',0,1,'2018-02-11 21:48:54','2018-02-11 21:48:54'),(3,'clothes',0,0,'2018-02-12 00:33:57','2018-02-12 00:33:57'),(4,'coat',3,3,'2018-02-21 19:48:18','2018-02-21 19:48:18');
/*!40000 ALTER TABLE `product__attrsets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product__categories`
--

DROP TABLE IF EXISTS `product__categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product__categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `pid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product__categories`
--

LOCK TABLES `product__categories` WRITE;
/*!40000 ALTER TABLE `product__categories` DISABLE KEYS */;
INSERT INTO `product__categories` VALUES (1,1,0,'2018-02-21 21:48:03','2018-02-21 21:48:03',NULL),(2,1,0,'2018-02-21 21:55:46','2018-02-21 21:55:46',NULL);
/*!40000 ALTER TABLE `product__categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product__category_translations`
--

DROP TABLE IF EXISTS `product__category_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product__category_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_words` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product__category_translations_category_id_locale_unique` (`category_id`,`locale`),
  KEY `product__category_translations_locale_index` (`locale`),
  CONSTRAINT `product__category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product__categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product__category_translations`
--

LOCK TABLES `product__category_translations` WRITE;
/*!40000 ALTER TABLE `product__category_translations` DISABLE KEYS */;
INSERT INTO `product__category_translations` VALUES (1,'shoes','high quality shoes','shoes','shoes','<p>shoes</p>',1,'en','high-quality-shoes'),(2,'鞋子','鞋子','鞋子','鞋子','<p>shoes</p>',1,'zh','shoes'),(3,'wedding dress','cheap wedding dress 2018','wedding dress','wedding dress','<p>wedding dress</p>',2,'en','cheap-wedding-dress-2018'),(4,'婚纱','婚纱','婚纱','婚纱','<p>婚纱</p>',2,'zh','cheap-wedding-dress');
/*!40000 ALTER TABLE `product__category_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product__images`
--

DROP TABLE IF EXISTS `product__images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product__images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product__images`
--

LOCK TABLES `product__images` WRITE;
/*!40000 ALTER TABLE `product__images` DISABLE KEYS */;
/*!40000 ALTER TABLE `product__images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product__product_translations`
--

DROP TABLE IF EXISTS `product__product_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product__product_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product__product_translations_product_id_locale_unique` (`product_id`,`locale`),
  KEY `product__product_translations_locale_index` (`locale`),
  CONSTRAINT `product__product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product__products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product__product_translations`
--

LOCK TABLES `product__product_translations` WRITE;
/*!40000 ALTER TABLE `product__product_translations` DISABLE KEYS */;
INSERT INTO `product__product_translations` VALUES (36,'time','time','time','<p>time</p>',21,'en','time'),(37,'时间杀猪刀','c1','c1','<p>c1</p>',21,'zh','time'),(38,'s','s','s','<p>s</p>',22,'en','s'),(39,'时间是把杀猪刀111222','s','s','<p>s</p>',22,'zh','111222'),(42,'gucci','gucci','gucci','<p>gucci</p>',24,'en','gucci'),(43,'古奇11','古奇','古奇','<p>古奇</p>',24,'zh','11'),(44,'luise','luiseweideng','luiseweideng','<p>luiseweideng</p>',25,'en','luise'),(45,'路易斯威登','luiseweideng','luiseweideng','<p>luiseweideng</p>',25,'zh','luiseweideng'),(46,'walundina','walundina','walundina','<p>walundina</p>',26,'en','walundina'),(47,'瓦伦蒂娜','瓦伦蒂娜','瓦伦蒂娜','<p>瓦伦蒂娜</p>',26,'zh','walundina'),(86,'test','test','test','<p>test</p>',46,'en','test'),(87,'test','test','test','<p>test</p>',46,'zh','test'),(88,'fashion dress','fashion dress','fashion dress','<p>fashion dress</p>',47,'en','fashion-dress'),(89,'fashion dress','fashion dress','fashion dress','<p>fashion dress</p>',47,'zh','fashion-dress'),(96,'a','a','a','<p>a</p>',51,'en','a'),(97,'a','a','a','<p>a</p>',51,'zh','a'),(100,'v','v','v','<p>v</p>',53,'en','v'),(101,'v','v','v','<p>v</p>',53,'zh','v');
/*!40000 ALTER TABLE `product__product_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product__products`
--

DROP TABLE IF EXISTS `product__products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product__products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attrset_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` tinyint(1) NOT NULL,
  `price` decimal(18,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `swatch_colors` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `product__products_attrset_id_index` (`attrset_id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product__products`
--

LOCK TABLES `product__products` WRITE;
/*!40000 ALTER TABLE `product__products` DISABLE KEYS */;
INSERT INTO `product__products` VALUES (21,3,0,0,12.00,60220,'2018-02-26 00:14:14','2018-04-03 01:12:15','{\"red\":{\"fileId\":17,\"filepath\":\"http://localhost:8000/assets/media/2018-03-29-03-54-15-5abc6367e7e81_smallThumb.jpg\"},\"blue\":{\"fileId\":13,\"filepath\":\"http://localhost:8000/assets/media/2018-03-29-03-52-48-5abc6310dcd53_smallThumb.jpg\"}}'),(22,3,0,0,2.00,56,'2018-03-12 01:08:38','2018-03-12 01:08:38','{\"blue\":{\"fileId\":2,\"filepath\":\"http://localhost:8000/assets/media/avatar-default_smallThumb.jpeg\"},\"red\":{\"fileId\":9,\"filepath\":\"http://localhost:8000/assets/media/2018-02-24-03-25-10-5a90db1633846_smallThumb.jpg\"}}'),(24,3,0,0,12.00,46,'2018-03-15 02:18:31','2018-03-15 21:09:11','{}'),(25,3,0,0,12.00,82,'2018-03-23 01:31:28','2018-04-01 18:16:20','{}'),(26,3,0,0,10.00,3,'2018-03-23 01:36:12','2018-03-30 00:37:02','{}'),(46,3,0,0,12.00,155,'2018-03-30 00:54:33','2018-03-30 00:54:33','{}'),(47,3,0,0,12.00,14,'2018-03-30 01:04:59','2018-03-30 01:04:59',NULL),(51,2,0,0,12.00,12,'2018-03-30 01:07:45','2018-03-30 01:07:45',NULL),(53,2,0,0,12.00,12,'2018-03-30 01:11:05','2018-03-30 01:11:05',NULL);
/*!40000 ALTER TABLE `product__products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product__products_cats`
--

DROP TABLE IF EXISTS `product__products_cats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product__products_cats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product__products_cats_product_id_index` (`product_id`),
  KEY `product__products_cats_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product__products_cats`
--

LOCK TABLES `product__products_cats` WRITE;
/*!40000 ALTER TABLE `product__products_cats` DISABLE KEYS */;
INSERT INTO `product__products_cats` VALUES (2,13,2,NULL,NULL),(3,14,2,NULL,NULL),(4,15,1,NULL,NULL),(6,16,2,NULL,NULL),(11,21,1,NULL,NULL),(12,22,1,NULL,NULL),(14,24,0,NULL,NULL),(15,20,1,NULL,NULL),(16,25,1,NULL,NULL),(18,26,2,NULL,NULL),(38,46,0,NULL,NULL),(39,47,1,NULL,NULL),(43,51,2,NULL,NULL),(45,53,1,NULL,NULL);
/*!40000 ALTER TABLE `product__products_cats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product__sku_translations`
--

DROP TABLE IF EXISTS `product__sku_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product__sku_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product__sku_translations_sku_id_locale_unique` (`sku_id`,`locale`),
  KEY `product__sku_translations_locale_index` (`locale`),
  CONSTRAINT `product__sku_translations_sku_id_foreign` FOREIGN KEY (`sku_id`) REFERENCES `product__skus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product__sku_translations`
--

LOCK TABLES `product__sku_translations` WRITE;
/*!40000 ALTER TABLE `product__sku_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `product__sku_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product__skus`
--

DROP TABLE IF EXISTS `product__skus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product__skus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=783 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product__skus`
--

LOCK TABLES `product__skus` WRITE;
/*!40000 ALTER TABLE `product__skus` DISABLE KEYS */;
INSERT INTO `product__skus` VALUES (219,24,'{\"color\":\"red\",\"size\":\"m\",\"price\":\"12\",\"stock\":\"23\"}',NULL,'2018-03-25 18:42:17','2018-03-25 18:42:17'),(220,24,'{\"color\":\"blue\",\"size\":\"m\",\"price\":\"12\",\"stock\":\"23\"}',NULL,'2018-03-25 18:42:17','2018-03-25 18:42:17'),(221,22,'{\"color\":\"blue\",\"size\":\"m\",\"price\":\"2\",\"stock\":\"22\"}',NULL,'2018-03-25 18:42:24','2018-03-25 18:42:24'),(222,22,'{\"color\":\"red\",\"size\":\"m\",\"price\":\"22\",\"stock\":\"34\"}',NULL,'2018-03-25 18:42:24','2018-03-25 18:42:24'),(313,26,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"blue\",\"size\":\"m\",\"price\":\"10\",\"stock\":\"0\"}',NULL,'2018-03-30 00:37:02','2018-03-30 00:37:02'),(314,26,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"blue\",\"size\":\"l\",\"price\":\"11\",\"stock\":\"1\"}',NULL,'2018-03-30 00:37:02','2018-03-30 00:37:02'),(315,26,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"red\",\"size\":\"m\",\"price\":\"12\",\"stock\":\"2\"}',NULL,'2018-03-30 00:37:02','2018-03-30 00:37:02'),(316,26,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"red\",\"size\":\"l\",\"price\":\"13\",\"stock\":\"0\"}',NULL,'2018-03-30 00:37:02','2018-03-30 00:37:02'),(497,47,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"blue\",\"size\":\"m\",\"price\":\"12\",\"stock\":\"12\"}',NULL,'2018-03-30 01:04:59','2018-03-30 01:04:59'),(498,47,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"red\",\"size\":\"m\",\"price\":\"23\",\"stock\":\"2\"}',NULL,'2018-03-30 01:04:59','2018-03-30 01:04:59'),(499,46,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"blue\",\"size\":\"m\",\"price\":\"12\",\"stock\":\"0\"}',NULL,'2018-03-30 01:08:11','2018-03-30 01:08:11'),(500,46,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"blue\",\"size\":\"l\",\"price\":\"13\",\"stock\":\"132\"}',NULL,'2018-03-30 01:08:11','2018-03-30 01:08:11'),(501,46,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"red\",\"size\":\"m\",\"price\":\"14\",\"stock\":\"23\"}',NULL,'2018-03-30 01:08:11','2018-03-30 01:08:11'),(502,46,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"red\",\"size\":\"l\",\"price\":\"15\",\"stock\":\"0\"}',NULL,'2018-03-30 01:08:11','2018-03-30 01:08:11'),(743,25,'{\"material\":\"leather\",\"brand\":\"hm\",\"color\":\"red\",\"size\":\"m\",\"price\":\"12\",\"stock\":\"0\"}',NULL,'2018-04-01 18:16:20','2018-04-01 18:16:20'),(744,25,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"red\",\"size\":\"l\",\"price\":\"12\",\"stock\":\"12\"}',NULL,'2018-04-01 18:16:20','2018-04-01 18:16:20'),(745,25,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"red\",\"size\":\"m\",\"price\":\"12\",\"stock\":\"12\"}',NULL,'2018-04-01 18:16:20','2018-04-01 18:16:20'),(746,25,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"blue\",\"size\":\"l\",\"price\":\"12\",\"stock\":\"34\"}',NULL,'2018-04-01 18:16:20','2018-04-01 18:16:20'),(747,25,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"blue\",\"size\":\"m\",\"price\":\"12\",\"stock\":\"0\"}',NULL,'2018-04-01 18:16:20','2018-04-01 18:16:20'),(748,25,'{\"material\":\"leather\",\"brand\":\"hm\",\"color\":\"blue\",\"size\":\"m\",\"price\":\"13\",\"stock\":\"12\"}',NULL,'2018-04-01 18:16:20','2018-04-01 18:16:20'),(749,25,'{\"material\":\"leather\",\"brand\":\"hm\",\"color\":\"blue\",\"size\":\"l\",\"price\":\"15\",\"stock\":\"12\"}',NULL,'2018-04-01 18:16:20','2018-04-01 18:16:20'),(750,25,'{\"material\":\"leather\",\"brand\":\"hm\",\"color\":\"red\",\"size\":\"l\",\"price\":\"45\",\"stock\":\"0\"}',NULL,'2018-04-01 18:16:20','2018-04-01 18:16:20'),(767,21,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"blue\",\"size\":\"m\",\"price\":\"12\",\"stock\":\"0\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(768,21,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"blue\",\"size\":\"l\",\"price\":\"13\",\"stock\":\"3445\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(769,21,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"red\",\"size\":\"m\",\"price\":\"14\",\"stock\":\"12\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(770,21,'{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"red\",\"size\":\"l\",\"price\":\"15\",\"stock\":\"0\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(771,21,'{\"material\":\"leather\",\"brand\":\"hm\",\"color\":\"blue\",\"size\":\"m\",\"price\":\"16\",\"stock\":\"12\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(772,21,'{\"material\":\"leather\",\"brand\":\"hm\",\"color\":\"blue\",\"size\":\"l\",\"price\":\"17\",\"stock\":\"56666\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(773,21,'{\"material\":\"leather\",\"brand\":\"hm\",\"color\":\"red\",\"size\":\"m\",\"price\":\"18\",\"stock\":\"0\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(774,21,'{\"material\":\"leather\",\"brand\":\"hm\",\"color\":\"red\",\"size\":\"l\",\"price\":\"19\",\"stock\":\"12\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(775,21,'{\"material\":\"mutton\",\"brand\":\"zara\",\"color\":\"blue\",\"size\":\"m\",\"price\":\"121\",\"stock\":\"12\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(776,21,'{\"material\":\"mutton\",\"brand\":\"zara\",\"color\":\"blue\",\"size\":\"l\",\"price\":\"122\",\"stock\":\"0\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(777,21,'{\"material\":\"mutton\",\"brand\":\"zara\",\"color\":\"red\",\"size\":\"m\",\"price\":\"123\",\"stock\":\"0\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(778,21,'{\"material\":\"mutton\",\"brand\":\"zara\",\"color\":\"red\",\"size\":\"l\",\"price\":\"124\",\"stock\":\"45\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(779,21,'{\"material\":\"mutton\",\"brand\":\"hm\",\"color\":\"blue\",\"size\":\"m\",\"price\":\"125\",\"stock\":\"0\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(780,21,'{\"material\":\"mutton\",\"brand\":\"hm\",\"color\":\"blue\",\"size\":\"l\",\"price\":\"612\",\"stock\":\"3\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(781,21,'{\"material\":\"mutton\",\"brand\":\"hm\",\"color\":\"red\",\"size\":\"l\",\"price\":\"712\",\"stock\":\"1\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15'),(782,21,'{\"material\":\"mutton\",\"brand\":\"hm\",\"color\":\"red\",\"size\":\"m\",\"price\":\"712\",\"stock\":\"12\"}',NULL,'2018-04-03 01:12:15','2018-04-03 01:12:15');
/*!40000 ALTER TABLE `product__skus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reminders`
--

DROP TABLE IF EXISTS `reminders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reminders`
--

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
INSERT INTO `reminders` VALUES (1,8,'EhBfXMHHz8OUy7y5l2kKXVuS7vztNB1E',1,'2018-02-22 01:45:14','2018-02-22 01:42:14','2018-02-22 01:45:14');
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` VALUES (1,1,'2018-02-05 02:08:17','2018-02-05 02:08:17'),(8,2,'2018-02-22 01:39:33','2018-02-22 01:39:33');
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"attribute.attributes.index\":true,\"attribute.attributes.create\":true,\"attribute.attributes.edit\":true,\"attribute.attributes.destroy\":true,\"blog.posts.index\":true,\"blog.posts.create\":true,\"blog.posts.edit\":true,\"blog.posts.destroy\":true,\"blog.categories.index\":true,\"blog.categories.create\":true,\"blog.categories.edit\":true,\"blog.categories.destroy\":true,\"core.sidebar.group\":true,\"dashboard.index\":true,\"dashboard.update\":true,\"dashboard.reset\":true,\"media.medias.index\":true,\"media.medias.create\":true,\"media.medias.edit\":true,\"media.medias.destroy\":true,\"media.folders.index\":true,\"media.folders.create\":true,\"media.folders.edit\":true,\"media.folders.destroy\":true,\"medialinkexample.authors.index\":true,\"medialinkexample.authors.create\":true,\"medialinkexample.authors.edit\":true,\"medialinkexample.authors.destroy\":true,\"menu.menus.index\":true,\"menu.menus.create\":true,\"menu.menus.edit\":true,\"menu.menus.destroy\":true,\"menu.menuitems.index\":true,\"menu.menuitems.create\":true,\"menu.menuitems.edit\":true,\"menu.menuitems.destroy\":true,\"page.pages.index\":true,\"page.pages.create\":true,\"page.pages.edit\":true,\"page.pages.destroy\":true,\"product.attrsets.index\":true,\"product.attrsets.create\":true,\"product.attrsets.edit\":true,\"product.attrsets.destroy\":true,\"product.products.index\":true,\"product.products.create\":true,\"product.products.edit\":true,\"product.products.destroy\":true,\"product.categories.index\":true,\"product.categories.create\":true,\"product.categories.edit\":true,\"product.categories.destroy\":true,\"product.images.index\":true,\"product.images.create\":true,\"product.images.edit\":true,\"product.images.destroy\":true,\"product.skus.index\":true,\"product.skus.create\":true,\"product.skus.edit\":true,\"product.skus.destroy\":true,\"product.attrs.index\":true,\"product.attrs.create\":true,\"product.attrs.edit\":true,\"product.attrs.destroy\":true,\"setting.settings.index\":true,\"setting.settings.edit\":true,\"tag.tags.index\":true,\"tag.tags.create\":true,\"tag.tags.edit\":true,\"tag.tags.destroy\":true,\"translation.translations.index\":true,\"translation.translations.edit\":true,\"translation.translations.import\":true,\"translation.translations.export\":true,\"user.users.index\":true,\"user.users.create\":true,\"user.users.edit\":true,\"user.users.destroy\":true,\"user.roles.index\":true,\"user.roles.create\":true,\"user.roles.edit\":true,\"user.roles.destroy\":true,\"account.api-keys.index\":true,\"account.api-keys.create\":true,\"account.api-keys.destroy\":true,\"workshop.sidebar.group\":true,\"workshop.modules.index\":true,\"workshop.modules.show\":true,\"workshop.modules.update\":true,\"workshop.modules.disable\":true,\"workshop.modules.enable\":true,\"workshop.modules.publish\":true,\"workshop.themes.index\":true,\"workshop.themes.show\":true,\"workshop.themes.publish\":true}','2018-02-05 02:07:57','2018-02-11 17:51:13'),(2,'user','User',NULL,'2018-02-05 02:07:57','2018-02-05 02:07:57');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting__setting_translations`
--

DROP TABLE IF EXISTS `setting__setting_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting__setting_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `setting_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting__setting_translations_setting_id_locale_unique` (`setting_id`,`locale`),
  KEY `setting__setting_translations_locale_index` (`locale`),
  CONSTRAINT `setting__setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `setting__settings` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting__setting_translations`
--

LOCK TABLES `setting__setting_translations` WRITE;
/*!40000 ALTER TABLE `setting__setting_translations` DISABLE KEYS */;
INSERT INTO `setting__setting_translations` VALUES (1,3,'en',NULL,NULL),(2,4,'en',NULL,NULL),(3,5,'en',NULL,NULL);
/*!40000 ALTER TABLE `setting__setting_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `setting__settings`
--

DROP TABLE IF EXISTS `setting__settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting__settings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plainValue` text COLLATE utf8mb4_unicode_ci,
  `isTranslatable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting__settings_name_unique` (`name`),
  KEY `setting__settings_name_index` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `setting__settings`
--

LOCK TABLES `setting__settings` WRITE;
/*!40000 ALTER TABLE `setting__settings` DISABLE KEYS */;
INSERT INTO `setting__settings` VALUES (1,'core::template','Flatly',0,'2018-02-05 02:08:18','2018-02-05 02:08:18'),(2,'core::locales','[\"en\",\"zh\"]',0,'2018-02-05 02:08:18','2018-02-05 02:16:40'),(3,'core::site-name',NULL,1,'2018-02-05 02:16:40','2018-02-05 02:16:40'),(4,'core::site-name-mini',NULL,1,'2018-02-05 02:16:40','2018-02-05 02:16:40'),(5,'core::site-description',NULL,1,'2018-02-05 02:16:40','2018-02-05 02:16:40'),(6,'core::analytics-script',NULL,0,'2018-02-05 02:16:40','2018-02-05 02:16:40');
/*!40000 ALTER TABLE `setting__settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag__tag_translations`
--

DROP TABLE IF EXISTS `tag__tag_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag__tag_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tag__tag_translations_tag_id_locale_unique` (`tag_id`,`locale`),
  KEY `tag__tag_translations_locale_index` (`locale`),
  CONSTRAINT `tag__tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tag__tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag__tag_translations`
--

LOCK TABLES `tag__tag_translations` WRITE;
/*!40000 ALTER TABLE `tag__tag_translations` DISABLE KEYS */;
INSERT INTO `tag__tag_translations` VALUES (1,'a','a',1,'en'),(2,'sdf','sdf',2,'zh'),(3,'cat','cat',3,'zh');
/*!40000 ALTER TABLE `tag__tag_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag__tagged`
--

DROP TABLE IF EXISTS `tag__tagged`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag__tagged` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag__tagged_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag__tagged`
--

LOCK TABLES `tag__tagged` WRITE;
/*!40000 ALTER TABLE `tag__tagged` DISABLE KEYS */;
INSERT INTO `tag__tagged` VALUES (1,'Modules\\Blog\\Entities\\Post',1,1),(2,'Modules\\Blog\\Entities\\Post',2,2);
/*!40000 ALTER TABLE `tag__tagged` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag__tags`
--

DROP TABLE IF EXISTS `tag__tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag__tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag__tags`
--

LOCK TABLES `tag__tags` WRITE;
/*!40000 ALTER TABLE `tag__tags` DISABLE KEYS */;
INSERT INTO `tag__tags` VALUES (1,'asgardcms/post','2018-02-05 23:31:14','2018-02-05 23:31:14'),(2,'asgardcms/post','2018-02-10 22:21:57','2018-02-10 22:21:57'),(3,'asgardcms/page','2018-02-22 00:14:54','2018-02-22 00:14:54');
/*!40000 ALTER TABLE `tag__tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `throttle`
--

DROP TABLE IF EXISTS `throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `throttle`
--

LOCK TABLES `throttle` WRITE;
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
INSERT INTO `throttle` VALUES (1,NULL,'global',NULL,'2018-03-11 17:33:47','2018-03-11 17:33:47'),(2,NULL,'ip','127.0.0.1','2018-03-11 17:33:47','2018-03-11 17:33:47'),(3,1,'user',NULL,'2018-03-11 17:33:47','2018-03-11 17:33:47');
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translation__translation_translations`
--

DROP TABLE IF EXISTS `translation__translation_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translation__translation_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_trans_id_locale_unique` (`translation_id`,`locale`),
  KEY `translation__translation_translations_locale_index` (`locale`),
  CONSTRAINT `translation__translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translation__translations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translation__translation_translations`
--

LOCK TABLES `translation__translation_translations` WRITE;
/*!40000 ALTER TABLE `translation__translation_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translation__translation_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translation__translations`
--

DROP TABLE IF EXISTS `translation__translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translation__translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translation__translations_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translation__translations`
--

LOCK TABLES `translation__translations` WRITE;
/*!40000 ALTER TABLE `translation__translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `translation__translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_tokens`
--

DROP TABLE IF EXISTS `user_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `access_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_tokens_access_token_unique` (`access_token`),
  KEY `user_tokens_user_id_foreign` (`user_id`),
  CONSTRAINT `user_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_tokens`
--

LOCK TABLES `user_tokens` WRITE;
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;
INSERT INTO `user_tokens` VALUES (1,1,'2d03ab9b-71a7-4dff-8a2a-64557c0af0fc','2018-02-05 02:08:17','2018-02-05 02:08:17'),(2,8,'e46d0058-b9a3-43a1-81b5-08ce4bc762c1','2018-02-22 01:39:33','2018-02-22 01:39:33');
/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2861166132@qq.com','$2y$10$QmK9vxdd6.rItQCxA0sAcOu9j2/FL1JnbNNR8bH4gk3AtdO18m.Ta',NULL,'2018-04-03 21:56:36','miya','yeh','2018-02-05 02:08:17','2018-04-03 21:56:36'),(8,'1738956292@qq.com','$2y$10$LA9wGms38rwy/r025jyGnu0ziD7/WKH7TUBCnt2STaObsCil6gUlO','','2018-02-22 02:06:04','sdf','sdf','2018-02-22 01:39:27','2018-02-22 02:06:04');
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

-- Dump completed on 2018-04-08 17:01:23
