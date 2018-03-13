# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.17)
# Database: ast
# Generation Time: 2018-03-13 09:00:42 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table activations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activations`;

CREATE TABLE `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`)
VALUES
	(1,1,'wBCGjcwShonfPDLdiv3Ywy3vgS1C3f4O',1,'2018-02-05 10:08:17','2018-02-05 10:08:17','2018-02-05 10:08:17'),
	(5,8,'9RSMWNiDCWcE0O1vkOEVLWZNouUmvezq',1,'2018-02-22 09:45:30','2018-02-22 09:45:30','2018-02-22 09:45:30');

/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table attribute__attribute_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attribute__attribute_translations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `attribute__attribute_translations` WRITE;
/*!40000 ALTER TABLE `attribute__attribute_translations` DISABLE KEYS */;

INSERT INTO `attribute__attribute_translations` (`id`, `name`, `description`, `attribute_id`, `locale`)
VALUES
	(47,'material','material',24,'en'),
	(48,'材质','材质',24,'zh'),
	(49,'brand','brand',25,'en'),
	(50,'品牌','品牌',25,'zh'),
	(51,'color','color',26,'en'),
	(52,'颜色','color',26,'zh'),
	(53,'size','size',27,'en'),
	(54,'尺码','size',27,'zh');

/*!40000 ALTER TABLE `attribute__attribute_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table attribute__attribute_values
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attribute__attribute_values`;

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



# Dump of table attribute__attributes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attribute__attributes`;

CREATE TABLE `attribute__attributes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_for_sku` tinyint(1) NOT NULL,
  `is_for_sale` tinyint(1) NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `is_enabled` tinyint(1) NOT NULL,
  `has_translatable_values` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `attribute__attributes` WRITE;
/*!40000 ALTER TABLE `attribute__attributes` DISABLE KEYS */;

INSERT INTO `attribute__attributes` (`id`, `namespace`, `key`, `type`, `is_for_sku`, `is_for_sale`, `options`, `is_enabled`, `has_translatable_values`, `created_at`, `updated_at`)
VALUES
	(24,'BaseNamespace','material','select',0,1,'{\"mutton\":{\"en\":\"Mutton\",\"zh\":\"\\u7f8a\\u6bdb\"},\"leather\":{\"en\":\"Leather\",\"zh\":\"\\u76ae\\u9769\"}}',1,1,'2018-02-12 09:21:21','2018-02-12 09:53:09'),
	(25,'BaseNamespace','brand','select',0,1,'{\"hm\":{\"en\":\"HM\",\"zh\":\"HM\"},\"zara\":{\"en\":\"ZARA\",\"zh\":\"ZARA\"}}',1,0,'2018-02-12 09:22:39','2018-02-12 09:23:19'),
	(26,'BaseNamespace','color','select',1,0,'{\"red\":{\"en\":\"Red\",\"zh\":\"\\u7ea2\\u8272\"},\"blue\":{\"en\":\"Blue\",\"zh\":\"\\u84dd\\u8272\"}}',1,1,'2018-02-22 01:50:33','2018-02-22 01:51:04'),
	(27,'BaseNamespace','size','select',1,0,'{\"l\":{\"en\":\"L\",\"zh\":\"\\u5927\\u7801\"},\"m\":{\"en\":\"M\",\"zh\":\"\\u4e2d\\u7801\"}}',1,1,'2018-02-22 02:04:49','2018-02-22 02:05:12');

/*!40000 ALTER TABLE `attribute__attributes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table attrset_attr
# ------------------------------------------------------------

DROP TABLE IF EXISTS `attrset_attr`;

CREATE TABLE `attrset_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attrset_id` int(10) unsigned NOT NULL,
  `attribute_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attrset_attr_attrset_id_index` (`attrset_id`),
  KEY `attrset_attr_attribute_id_index` (`attribute_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `attrset_attr` WRITE;
/*!40000 ALTER TABLE `attrset_attr` DISABLE KEYS */;

INSERT INTO `attrset_attr` (`id`, `attrset_id`, `attribute_id`)
VALUES
	(27,3,24),
	(30,3,25),
	(31,3,26),
	(32,3,27);

/*!40000 ALTER TABLE `attrset_attr` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blog__categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog__categories`;

CREATE TABLE `blog__categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `blog__categories` WRITE;
/*!40000 ALTER TABLE `blog__categories` DISABLE KEYS */;

INSERT INTO `blog__categories` (`id`, `created_at`, `updated_at`)
VALUES
	(1,'2018-02-06 07:29:48','2018-02-06 07:29:48');

/*!40000 ALTER TABLE `blog__categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blog__category_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog__category_translations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `blog__category_translations` WRITE;
/*!40000 ALTER TABLE `blog__category_translations` DISABLE KEYS */;

INSERT INTO `blog__category_translations` (`id`, `name`, `slug`, `category_id`, `locale`)
VALUES
	(1,'live','live',1,'en'),
	(2,'生活','live',1,'zh');

/*!40000 ALTER TABLE `blog__category_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blog__post_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog__post_translations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `blog__post_translations` WRITE;
/*!40000 ALTER TABLE `blog__post_translations` DISABLE KEYS */;

INSERT INTO `blog__post_translations` (`id`, `post_id`, `locale`, `title`, `slug`, `content`)
VALUES
	(1,1,'en','blog post','blog-post','<p>blog post<img alt=\"\" src=\"http://localhost:8002/assets/media/avatar-default_smallThumb.jpeg\" style=\"width: 50px; height: 50px;\" /></p>'),
	(2,1,'zh','中文博客','blog-post','<p>中文博客</p>'),
	(3,2,'en','sdfsdff','sdfsdff','<p>sdfsdf</p>'),
	(4,2,'zh','sdfsd','sdfsd','<p>sdfsdf</p>');

/*!40000 ALTER TABLE `blog__post_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blog__posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blog__posts`;

CREATE TABLE `blog__posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog__posts_category_id_index` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `blog__posts` WRITE;
/*!40000 ALTER TABLE `blog__posts` DISABLE KEYS */;

INSERT INTO `blog__posts` (`id`, `category_id`, `status`, `created_at`, `updated_at`)
VALUES
	(1,1,2,'2018-02-06 07:29:21','2018-02-06 07:34:31'),
	(2,1,0,'2018-02-11 06:21:57','2018-02-11 06:21:57');

/*!40000 ALTER TABLE `blog__posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dashboard__widgets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dashboard__widgets`;

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



# Dump of table media__file_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media__file_translations`;

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



# Dump of table media__files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media__files`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `media__files` WRITE;
/*!40000 ALTER TABLE `media__files` DISABLE KEYS */;

INSERT INTO `media__files` (`id`, `is_folder`, `filename`, `path`, `extension`, `mimetype`, `filesize`, `folder_id`, `created_at`, `updated_at`)
VALUES
	(1,0,'timg.jpg','/assets/media/timg.jpg','jpg','image/jpeg','45868','0','2018-02-05 13:38:58','2018-02-05 13:38:58'),
	(2,0,'avatar-default.jpeg','/assets/media/avatar-default.jpeg','jpeg','image/jpeg','5929','0','2018-02-05 13:45:21','2018-02-05 13:45:21'),
	(3,0,'timg-1.jpg','/assets/media/timg-1.jpg','jpg','image/jpeg','103974','0','2018-02-11 05:28:18','2018-02-11 05:28:18'),
	(4,0,'timg_1.jpg','/assets/media/timg_1.jpg','jpg','image/jpeg','45868','0','2018-02-11 05:37:30','2018-02-11 05:37:30'),
	(6,0,'2018-02-11-06-15-32-5a7fdf8400581.jpg','/assets/media/2018-02-11-06-15-32-5a7fdf8400581.jpg','jpg','image/jpeg','103974','0','2018-02-11 06:15:32','2018-02-11 06:15:32'),
	(8,0,'2018-02-11-06-45-30-5a7fe68a797a0.jpg','/assets/media/2018-02-11-06-45-30-5a7fe68a797a0.jpg','jpg','image/jpeg','45868','0','2018-02-11 06:45:30','2018-02-11 06:45:30'),
	(9,0,'2018-02-24-03-25-10-5a90db1633846.jpg','/assets/media/2018-02-24-03-25-10-5a90db1633846.jpg','jpg','image/jpeg','289022','0','2018-02-24 03:25:10','2018-02-24 03:25:10'),
	(12,0,'2018-03-12-02-45-25-5aa5e9c57221f.jpg','/assets/media/2018-03-12-02-45-25-5aa5e9c57221f.jpg','jpg','image/jpeg','761429','0','2018-03-12 02:45:25','2018-03-12 02:45:25');

/*!40000 ALTER TABLE `media__files` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table media__imageables
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media__imageables`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `media__imageables` WRITE;
/*!40000 ALTER TABLE `media__imageables` DISABLE KEYS */;

INSERT INTO `media__imageables` (`id`, `file_id`, `imageable_id`, `imageable_type`, `zone`, `order`, `created_at`, `updated_at`, `swatch_color`)
VALUES
	(1,2,1,'Modules\\Page\\Entities\\Page','image',NULL,'2018-02-05 13:50:00','2018-02-05 14:17:23',NULL),
	(2,2,1,'Modules\\Blog\\Entities\\Post','thumbnail',NULL,'2018-02-06 07:34:31','2018-02-06 07:42:27',NULL),
	(4,8,2,'Modules\\Blog\\Entities\\Post','thumbnail',NULL,'2018-02-11 13:41:31','2018-02-11 13:41:31',NULL),
	(16,8,13,'Modules\\Product\\Entities\\Product','gallery',0,'2018-02-22 06:02:50','2018-02-23 07:58:12',NULL),
	(17,6,13,'Modules\\Product\\Entities\\Product','gallery',1,'2018-02-22 06:02:50','2018-02-23 07:58:12',NULL),
	(18,6,14,'Modules\\Product\\Entities\\Product','gallery',0,'2018-02-22 07:03:48','2018-02-23 09:57:30',NULL),
	(19,8,14,'Modules\\Product\\Entities\\Product','gallery',1,'2018-02-22 07:03:48','2018-02-23 09:57:30',NULL),
	(20,8,16,'Modules\\Product\\Entities\\Product','gallery',0,'2018-02-23 08:12:05','2018-02-23 08:12:18',NULL),
	(21,6,16,'Modules\\Product\\Entities\\Product','gallery',1,'2018-02-23 08:12:05','2018-02-23 08:12:18',NULL),
	(22,2,15,'Modules\\Product\\Entities\\Product','gallery',0,'2018-02-23 08:13:21','2018-02-23 08:13:21',NULL),
	(23,9,21,'Modules\\Product\\Entities\\Product','gallery',0,'2018-02-26 08:14:14','2018-03-12 08:54:54',NULL),
	(24,8,21,'Modules\\Product\\Entities\\Product','gallery',1,'2018-02-26 08:14:14','2018-03-12 08:54:54',NULL),
	(25,12,22,'Modules\\Product\\Entities\\Product','gallery',0,'2018-03-12 09:08:38','2018-03-12 09:08:38',NULL),
	(26,9,22,'Modules\\Product\\Entities\\Product','gallery',1,'2018-03-12 09:08:38','2018-03-12 09:08:38',NULL);

/*!40000 ALTER TABLE `media__imageables` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu__menu_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu__menu_translations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu__menu_translations` WRITE;
/*!40000 ALTER TABLE `menu__menu_translations` DISABLE KEYS */;

INSERT INTO `menu__menu_translations` (`id`, `menu_id`, `locale`, `status`, `title`, `created_at`, `updated_at`)
VALUES
	(1,1,'en',1,'header','2018-02-22 06:56:50','2018-02-22 10:26:12'),
	(2,1,'zh',1,'头部菜单','2018-02-22 06:56:50','2018-02-22 06:56:50');

/*!40000 ALTER TABLE `menu__menu_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu__menuitem_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu__menuitem_translations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu__menuitem_translations` WRITE;
/*!40000 ALTER TABLE `menu__menuitem_translations` DISABLE KEYS */;

INSERT INTO `menu__menuitem_translations` (`id`, `menuitem_id`, `locale`, `status`, `title`, `url`, `uri`, `created_at`, `updated_at`)
VALUES
	(1,1,'en',0,'root',NULL,NULL,'2018-02-22 06:56:50','2018-02-22 06:56:50'),
	(2,1,'zh',0,'root',NULL,NULL,'2018-02-22 06:56:50','2018-02-22 06:56:50'),
	(3,2,'en',1,'home',NULL,'home','2018-02-22 08:01:16','2018-02-22 08:01:16'),
	(4,2,'zh',1,'home',NULL,'home','2018-02-22 08:01:16','2018-02-22 08:08:35'),
	(7,4,'en',1,'wedding dress',NULL,'cheap-wedding-dress-2018','2018-02-22 08:55:10','2018-02-23 07:29:16'),
	(8,4,'zh',1,'婚纱',NULL,'cheap-wedding-dress-2018','2018-02-22 08:55:10','2018-02-23 07:29:16');

/*!40000 ALTER TABLE `menu__menuitem_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu__menuitems
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu__menuitems`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu__menuitems` WRITE;
/*!40000 ALTER TABLE `menu__menuitems` DISABLE KEYS */;

INSERT INTO `menu__menuitems` (`id`, `menu_id`, `page_id`, `position`, `target`, `link_type`, `class`, `module_name`, `parent_id`, `lft`, `rgt`, `depth`, `created_at`, `updated_at`, `is_root`, `icon`)
VALUES
	(1,1,NULL,0,NULL,'page','',NULL,NULL,NULL,NULL,NULL,'2018-02-22 06:56:50','2018-02-22 06:56:50',1,NULL),
	(2,1,1,0,'_self','page',NULL,NULL,1,NULL,NULL,NULL,'2018-02-22 08:01:16','2018-02-22 08:01:16',0,NULL),
	(4,1,NULL,1,'_self','internal',NULL,NULL,2,NULL,NULL,NULL,'2018-02-22 08:55:10','2018-02-23 07:34:29',0,NULL);

/*!40000 ALTER TABLE `menu__menuitems` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu__menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu__menus`;

CREATE TABLE `menu__menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu__menus` WRITE;
/*!40000 ALTER TABLE `menu__menus` DISABLE KEYS */;

INSERT INTO `menu__menus` (`id`, `name`, `primary`, `created_at`, `updated_at`)
VALUES
	(1,'header-menu',0,'2018-02-22 06:56:50','2018-02-22 06:56:50');

/*!40000 ALTER TABLE `menu__menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2014_07_02_230147_migration_cartalyst_sentinel',1),
	(2,'2016_06_24_193447_create_user_tokens_table',1),
	(3,'2014_10_14_200250_create_settings_table',2),
	(4,'2014_10_15_191204_create_setting_translations_table',2),
	(5,'2015_06_18_170048_make_settings_value_text_field',2),
	(6,'2015_10_22_130947_make_settings_name_unique',2),
	(7,'2017_09_17_164631_make_setting_value_nullable',2),
	(8,'2014_11_03_160015_create_menus_table',3),
	(9,'2014_11_03_160138_create_menu-translations_table',3),
	(10,'2014_11_03_160753_create_menuitems_table',3),
	(11,'2014_11_03_160804_create_menuitem_translation_table',3),
	(12,'2014_12_17_185301_add_root_column_to_menus_table',3),
	(13,'2015_09_05_100142_add_icon_column_to_menuitems_table',3),
	(14,'2016_01_26_102307_update_icon_column_on_menuitems_table',3),
	(15,'2016_08_01_142345_add_link_type_colymn_to_menuitems_table',3),
	(16,'2016_08_01_143130_add_class_column_to_menuitems_table',3),
	(17,'2017_09_18_192639_make_title_field_nullable_menu_table',3),
	(18,'2014_10_26_162751_create_files_table',4),
	(19,'2014_10_26_162811_create_file_translations_table',4),
	(20,'2015_02_27_105241_create_image_links_table',4),
	(21,'2015_12_19_143643_add_sortable',4),
	(22,'2017_09_20_144631_add_folders_columns_on_files_table',4),
	(23,'2014_11_30_191858_create_pages_tables',5),
	(24,'2017_10_13_103344_make_status_field_nullable_on_page_translations_table',5),
	(25,'2015_04_02_184200_create_widgets_table',6),
	(26,'2013_04_09_062329_create_revisions_table',7),
	(27,'2015_11_20_184604486385_create_translation_translations_table',7),
	(28,'2015_11_20_184604743083_create_translation_translation_translations_table',7),
	(29,'2015_12_01_094031_update_translation_translations_table_with_index',7),
	(30,'2016_07_12_181155032011_create_tag_tags_table',8),
	(31,'2016_07_12_181155289444_create_tag_tag_translations_table',8),
	(34,'2014_09_27_170107_create_posts_table',10),
	(35,'2014_09_27_175411_create_post_translations_table',10),
	(36,'2014_09_27_175736_create_categories_table',10),
	(37,'2014_09_27_175804_create_category_translations_table',10),
	(38,'2015_05_29_180714_add_status_column_to_post_table',10),
	(41,'2016_07_21_081229115922_create_attribute_attributes_table',11),
	(42,'2016_07_21_081229374072_create_attribute_attribute_translations_table',11),
	(67,'2018_02_05_133152976979_create_product_attrsets_table',12),
	(68,'2018_02_05_133153231348_create_product_attrset_translations_table',12),
	(69,'2018_02_05_133153494643_create_product_products_table',12),
	(70,'2018_02_05_133153750701_create_product_product_translations_table',12),
	(71,'2018_02_05_133154012183_create_product_categories_table',12),
	(72,'2018_02_05_133154266494_create_product_category_translations_table',12),
	(73,'2018_02_05_133154523767_create_product_images_table',12),
	(74,'2018_02_05_133155035928_create_product_skus_table',12),
	(75,'2018_02_05_133155291155_create_product_sku_translations_table',12),
	(76,'2018_02_05_133155547986_create_product_attrs_table',12),
	(77,'2018_02_05_133155799894_create_product_attr_translations_table',12);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page__page_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page__page_translations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `page__page_translations` WRITE;
/*!40000 ALTER TABLE `page__page_translations` DISABLE KEYS */;

INSERT INTO `page__page_translations` (`id`, `page_id`, `locale`, `title`, `slug`, `status`, `body`, `meta_title`, `meta_description`, `og_title`, `og_description`, `og_image`, `og_type`, `created_at`, `updated_at`)
VALUES
	(1,1,'en','Home page','home','1','<p>english&nbsp;</p>','Home page',NULL,NULL,NULL,NULL,NULL,'2018-02-05 10:08:18','2018-02-05 14:18:08'),
	(2,1,'zh','首页标题','home','1','<p>chinese</p>',NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-05 13:50:00','2018-02-05 14:18:08'),
	(3,2,'en','category-page','category-page','1','<p>cat</p>',NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-22 08:14:54','2018-02-22 08:14:54'),
	(4,2,'zh','分类页','category','1','<p>cat</p>',NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-22 08:14:54','2018-02-22 08:14:54');

/*!40000 ALTER TABLE `page__page_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table page__pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page__pages`;

CREATE TABLE `page__pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `template` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `page__pages` WRITE;
/*!40000 ALTER TABLE `page__pages` DISABLE KEYS */;

INSERT INTO `page__pages` (`id`, `is_home`, `template`, `created_at`, `updated_at`)
VALUES
	(1,1,'home','2018-02-05 10:08:18','2018-02-05 10:08:18'),
	(2,0,'default','2018-02-22 08:14:54','2018-02-22 08:14:54');

/*!40000 ALTER TABLE `page__pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table persistences
# ------------------------------------------------------------

DROP TABLE IF EXISTS `persistences`;

CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `persistences` WRITE;
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`)
VALUES
	(1,1,'tvHXXWJfUxL4IlesCMbt7kHZUwYphPTL','2018-02-05 10:08:57','2018-02-05 10:08:57'),
	(2,1,'taFsIvzn2FPYP7hg4RCNqFolhjgAUWhp','2018-02-05 10:09:07','2018-02-05 10:09:07'),
	(3,1,'fPRbUGH5sro5UggdQs4KCIbCSAUCEtfb','2018-02-05 10:09:12','2018-02-05 10:09:12'),
	(4,1,'DgJSwYDWaLdeQMRYprqs5cFmDfwUtErt','2018-02-05 10:09:12','2018-02-05 10:09:12'),
	(5,1,'rsFqUEAvRr0R18jxcipZ0sNxemTD92Db','2018-02-05 10:09:12','2018-02-05 10:09:12'),
	(6,1,'4nUOoADYeypOnwJhxfTNd9Ig451Lg0MX','2018-02-05 10:09:26','2018-02-05 10:09:26'),
	(7,1,'krcEti7hRIsMU7c2s2t2whNYxe1bIEyV','2018-02-05 10:09:28','2018-02-05 10:09:28'),
	(8,1,'Jd74qBxioK3xEElpHOAqO6Qm1Uw8Qnot','2018-02-05 10:14:51','2018-02-05 10:14:51'),
	(9,1,'60p1RKYynesGWxihCPAjuzn2ux8NSjeV','2018-02-05 10:14:53','2018-02-05 10:14:53'),
	(10,1,'coawhNgGe8XTKhKge9ncH9XEFSTwwCQG','2018-02-05 10:14:57','2018-02-05 10:14:57'),
	(11,1,'M98iMctAYOk9aRvGJhG38EfrTq5zh3tA','2018-02-05 10:14:59','2018-02-05 10:14:59'),
	(12,1,'wvmUv4tWVY9Vi1diPDOGbres6koFVLlj','2018-02-05 10:14:59','2018-02-05 10:14:59'),
	(13,1,'r3Vcle2cfZhEFRFZgY0HJwg8NuAbYSVi','2018-02-05 10:15:05','2018-02-05 10:15:05'),
	(14,1,'74YTU4h2eeT5gJVxYjWrObO0yHCRIwX5','2018-02-05 10:15:06','2018-02-05 10:15:06'),
	(15,1,'REJxKCVqAqM6dCgrHuB2vOQy0Ts3dAwW','2018-02-05 10:15:09','2018-02-05 10:15:09'),
	(16,1,'4uTQY3A3sfktRzImnfqmRgxozS7YMR8O','2018-02-05 10:15:34','2018-02-05 10:15:34'),
	(17,1,'YSgRW1fVGe5kSZG9GciAN9p4gv8x2B1f','2018-02-05 13:38:48','2018-02-05 13:38:48'),
	(18,1,'tJDu7TSIBAXi8tL54GGVBDqZGV3yWeF8','2018-02-05 13:38:49','2018-02-05 13:38:49'),
	(19,1,'E0czVm4OkodKmA7KLd5bbOOC4GQZ8fse','2018-02-05 13:38:54','2018-02-05 13:38:54'),
	(20,1,'qxHmCWHUcozCNtLQRYUyGp8xygYTM0d1','2018-02-05 13:38:58','2018-02-05 13:38:58'),
	(21,1,'on5fc8PF7ggWHDo76rkizLB8WroKvqNP','2018-02-05 13:38:59','2018-02-05 13:38:59'),
	(22,1,'JEAPLovQZzDdNAzslW77je2hzqzfKhLu','2018-02-05 13:39:03','2018-02-05 13:39:03'),
	(23,1,'UzKof0vyTZOqKZp14JMbCZP6sfzRWLeu','2018-02-05 13:39:05','2018-02-05 13:39:05'),
	(24,1,'zuFAtBUxV0xdEnP7iH8dOI2PmEcdrtOg','2018-02-05 13:41:13','2018-02-05 13:41:13'),
	(25,1,'Ln93DKK6aaIgieod5upOKusWj7OeMWnI','2018-02-05 13:43:11','2018-02-05 13:43:11'),
	(26,1,'qnFQyQ1rEdK61Ua4gNxrui4ajkHANmzn','2018-02-05 13:44:53','2018-02-05 13:44:53'),
	(27,1,'pDSPGNLobGeOXLCACkXgqiSuZmJSk8ks','2018-02-05 13:45:09','2018-02-05 13:45:09'),
	(28,1,'4J7W35aTeTYcJIgs2cOU7WD76WbJyVzc','2018-02-05 13:45:21','2018-02-05 13:45:21'),
	(29,1,'lVKvaU6E8PmGtGgNgbqH4QP5x2k3XUDH','2018-02-05 13:45:21','2018-02-05 13:45:21'),
	(30,1,'mcPqalHmoNtdT3PBwzM14fKHh2pq2uk9','2018-02-05 13:48:48','2018-02-05 13:48:48'),
	(31,1,'m0NmsoH7CiT4XyKMaM4goTiuRUgWJQjp','2018-02-05 13:48:53','2018-02-05 13:48:53'),
	(32,1,'Qmu4b7gYdmHQBfa8ZTsT8NeRuOigcknL','2018-02-05 13:48:53','2018-02-05 13:48:53'),
	(33,1,'2w7Um7iH6fboDWSkFL9X4cKF5uLcqF3s','2018-02-05 13:48:53','2018-02-05 13:48:53'),
	(34,1,'Q0ZSkT6fqCmTJLxwZKW38jLjtnohJPUc','2018-02-05 13:48:55','2018-02-05 13:48:55'),
	(35,1,'q1keauczPBQSNHhLarcsCMV3dpdQO98L','2018-02-05 13:49:07','2018-02-05 13:49:07'),
	(36,1,'d0yv24O4Ee6zeYaoaVNSCGJ96VzvTCsz','2018-02-05 13:49:31','2018-02-05 13:49:31'),
	(37,1,'HTHgFucz155Yr1OB7Lv1i6sivSUJHwAG','2018-02-05 13:49:44','2018-02-05 13:49:44'),
	(38,1,'eIw6uw5lPLuP0ezik1aZJRebs04EEdXv','2018-02-05 13:50:00','2018-02-05 13:50:00'),
	(39,1,'TRkZYqdBFeFNn8zk1b6tRvKqULZKlalb','2018-02-05 13:50:01','2018-02-05 13:50:01'),
	(40,1,'IKSRET3Va4h00GAfdwDoOXRyhVJ25G5o','2018-02-05 13:50:03','2018-02-05 13:50:03'),
	(41,1,'n7QJler9X7l1s61sXQPkQDn9a1NT7ULW','2018-02-05 13:50:03','2018-02-05 13:50:03'),
	(42,1,'S7FuqFn4dGEnf7IGQzLkX664hT7DaPI6','2018-02-05 13:50:03','2018-02-05 13:50:03'),
	(43,1,'jXfXrXys6gQsWTk72HOf2G4PsVQL4AAI','2018-02-05 13:50:23','2018-02-05 13:50:23'),
	(44,1,'k3Fg1rPeLIPjOIy1qfBQxFLCLV1RntnQ','2018-02-05 13:50:23','2018-02-05 13:50:23'),
	(45,1,'9GH1PQvOGJm2KgDofwyRFnCyn6H791Bb','2018-02-05 13:50:25','2018-02-05 13:50:25'),
	(46,1,'zYptmVY7srqQE3f7AodVkR3CzeQWXLEO','2018-02-05 13:50:25','2018-02-05 13:50:25'),
	(47,1,'WiEF6bXBJ4YkhjMreP6a6kKAkycqPnG6','2018-02-05 13:50:25','2018-02-05 13:50:25'),
	(48,1,'kRs0cMCaBfuLW6S5H57lFBF60KffZeOz','2018-02-05 13:52:01','2018-02-05 13:52:01'),
	(49,1,'LPfWYEYwdn7Ff6zKujZb7fZZMkWO5obg','2018-02-05 13:54:16','2018-02-05 13:54:16'),
	(50,1,'lm2znvvYSUdWRk0ppkc7jdd1UbBEUaUh','2018-02-05 13:54:16','2018-02-05 13:54:16'),
	(51,1,'kHoVKPRRF8Q5IJ1S7ylgvbAGHsxth36P','2018-02-05 13:54:16','2018-02-05 13:54:16'),
	(52,1,'iewLPlXGWIUgrso1HD36wGsoUhqVyzwA','2018-02-05 13:54:23','2018-02-05 13:54:23'),
	(53,1,'o71aa4BUTmKCEUzEfGejmRHdSTRjXrWi','2018-02-05 13:54:28','2018-02-05 13:54:28'),
	(54,1,'BH4WgH1USDZNJEoYPhfbJZIRSIw8o43p','2018-02-05 13:54:37','2018-02-05 13:54:37'),
	(55,1,'NImVEHcKQXrY324Ly66jGco8JqMbD4Us','2018-02-05 13:55:01','2018-02-05 13:55:01'),
	(56,1,'wHOj466nMrmjOtQGPDtFq1oEnzSUYaYY','2018-02-05 13:55:02','2018-02-05 13:55:02'),
	(57,1,'ADMqtCeeby1XAAdcNHmdy408y66x4GqN','2018-02-05 13:56:52','2018-02-05 13:56:52'),
	(58,1,'BOAuwDKEqHaIs6kSOsRN08w7mo1nNLDz','2018-02-05 13:57:30','2018-02-05 13:57:30'),
	(59,1,'sBosmNCDLOiZvVyR9pfoBUFVmOxPe4XO','2018-02-05 13:57:36','2018-02-05 13:57:36'),
	(60,1,'QJtmTSCYWokERbgnBGNfybNdLR1MoQLo','2018-02-05 13:57:40','2018-02-05 13:57:40'),
	(61,1,'AhYQcHoYgHUqpMQnMcOdRP81fwgV2GTc','2018-02-05 13:58:00','2018-02-05 13:58:00'),
	(62,1,'Xma6ZEx3OIqEIv9XANJwphunswojoCut','2018-02-05 13:59:26','2018-02-05 13:59:26'),
	(63,1,'uFz9Fb2NHqD4mdhZVxcUSt35cChUKJST','2018-02-05 14:00:42','2018-02-05 14:00:42'),
	(64,1,'ZiGJEbzrpWRonNemfEasba7taubk5mT6','2018-02-05 14:01:22','2018-02-05 14:01:22'),
	(65,1,'ysZeDnprCzaL92BzKM3FbPoO5zfbG5lE','2018-02-05 14:01:29','2018-02-05 14:01:29'),
	(66,1,'VSNsfPcfs9wnSnjPCUZdcuWCe1r8o9EJ','2018-02-05 14:01:36','2018-02-05 14:01:36'),
	(67,1,'fhN8XxWw3AAZVbXyVSEr42y14zcqxxFQ','2018-02-05 14:01:57','2018-02-05 14:01:57'),
	(68,1,'IMfcmrMsBmY7xcH88paC78E3nG0vVlBa','2018-02-05 14:02:17','2018-02-05 14:02:17'),
	(69,1,'9x78lukdT0Q0xEYyOM5yFr4IOchNCp9k','2018-02-05 14:02:45','2018-02-05 14:02:45'),
	(70,1,'wsb7dLLcBPqpqzp2dVpFJGE8Po7dvrlu','2018-02-05 14:03:22','2018-02-05 14:03:22'),
	(71,1,'3oSht0JbD5dwjwUXNcMCL2tuSS7kwG8L','2018-02-05 14:04:05','2018-02-05 14:04:05'),
	(72,1,'tPCL2OvgNQCx2FDZQSC68kjNJt0ZzQMi','2018-02-05 14:16:55','2018-02-05 14:16:55'),
	(73,1,'zdr710ZzDFcq6Wn4viqCNkmP8fv60t18','2018-02-05 14:16:59','2018-02-05 14:16:59'),
	(74,1,'amrmsbDsSocJcTr156HRvd2sP25F2dA2','2018-02-05 14:17:07','2018-02-05 14:17:07'),
	(75,1,'qvVsY0yxgcbayjd27ZiWHgD5NxoYVuVo','2018-02-05 14:17:10','2018-02-05 14:17:10'),
	(76,1,'xDPTNXnjLq4SonIjinnbag6KplYPwozh','2018-02-05 14:17:10','2018-02-05 14:17:10'),
	(77,1,'IFGSdpw0bx19d8tdySmMIenN9a7fTg7F','2018-02-05 14:17:10','2018-02-05 14:17:10'),
	(78,1,'7AA6fAjQzVm8xVtVE1mXO524Yx8jZD7h','2018-02-05 14:17:23','2018-02-05 14:17:23'),
	(79,1,'R2Q4Mocnryr3NHFMD9YRNzZsk2x3IEQX','2018-02-05 14:17:23','2018-02-05 14:17:23'),
	(80,1,'Yb7LTqV262vcuFvh3KtGSlwT9laiHx4d','2018-02-05 14:17:42','2018-02-05 14:17:42'),
	(81,1,'f1cOcczHzmuNAZ2Ehx1suU6PTWT2qHTi','2018-02-05 14:17:42','2018-02-05 14:17:42'),
	(82,1,'7dxloYjFdpBtwIJvMnMtJO3ioyjArdZr','2018-02-05 14:17:42','2018-02-05 14:17:42'),
	(83,1,'DcSrm3sIKzRiSEtNq2m4KU1vNyzOI94I','2018-02-05 14:17:51','2018-02-05 14:17:51'),
	(84,1,'bBFARZFyFp5qlG28uYv9Qq06m6mMm2ai','2018-02-05 14:17:54','2018-02-05 14:17:54'),
	(85,1,'4HSTasfghPtSoSaIB2veyjZg6HqA5rdL','2018-02-05 14:17:54','2018-02-05 14:17:54'),
	(86,1,'uT5GwPC6nBgLr2qkyVKjfeNwVC2kZMVC','2018-02-05 14:17:54','2018-02-05 14:17:54'),
	(87,1,'w3z748NmbfQhHR9XK9ZaJDDtkUBfE72a','2018-02-05 14:18:08','2018-02-05 14:18:08'),
	(88,1,'TmPMWZseg6bcLJkim9tapfXCJAz2UvZ8','2018-02-05 14:18:08','2018-02-05 14:18:08'),
	(89,1,'I2sndaMsZ3lsqK7OXyovG63FC3Vi3M1v','2018-02-05 14:18:10','2018-02-05 14:18:10'),
	(90,1,'deXuckNMe51WHEqyHBkMkcgQlgMx2Joz','2018-02-05 14:18:11','2018-02-05 14:18:11'),
	(91,1,'1jBULuQE3g8j5YRbx0BEfHJxgQlSZxQB','2018-02-05 14:18:11','2018-02-05 14:18:11'),
	(92,1,'UEw3wcsAjyJYhztbkERPYYxTIEwYr0WX','2018-02-05 14:18:19','2018-02-05 14:18:19'),
	(93,1,'ntHXIUt82AA3SCo3MjGj4r3BDyt0FGkp','2018-02-05 14:18:19','2018-02-05 14:18:19'),
	(94,1,'SZD3PiDejZVgOU0EWzFlG1GwRqKPSJCh','2018-02-05 14:18:20','2018-02-05 14:18:20'),
	(95,1,'bxkbUOmlObDT049S4HfajGCrs4eZ9Cw5','2018-02-06 07:04:34','2018-02-06 07:04:34'),
	(96,1,'n2qORkVHmcNm5s9yXHxbZYnqVmXfmoL6','2018-02-06 07:04:39','2018-02-06 07:04:39'),
	(97,1,'cDaDmgycOGtVSP9qlhjDPlIGYf27gPes','2018-02-06 07:10:00','2018-02-06 07:10:00'),
	(98,1,'zzEkC2I9pYOtPMCZPLRUB0K7TcYHHA3F','2018-02-06 07:11:09','2018-02-06 07:11:09'),
	(99,1,'PwW6a0nFeuRuaTfy9F8KrSWYu4ApdmQd','2018-02-06 07:11:09','2018-02-06 07:11:09'),
	(100,1,'wJEWELT1cHDKL9SC5UoU8FeuGuicVzGO','2018-02-06 07:11:10','2018-02-06 07:11:10'),
	(101,1,'hZrFukSBRB0cvid2R1eDaCJCjrSn2Tsw','2018-02-06 07:12:33','2018-02-06 07:12:33'),
	(102,1,'n34exN2uoBNzt1BIdqtRLxCiEcailQ1H','2018-02-06 07:12:33','2018-02-06 07:12:33'),
	(103,1,'DU6l196bamblYsXDMM5Qzl2Tt1tRRNga','2018-02-06 07:12:33','2018-02-06 07:12:33'),
	(104,1,'tAgNhk7bcW28SNPR4YfoiSN1Kcj37FUF','2018-02-06 07:12:43','2018-02-06 07:12:43'),
	(105,1,'1hNYBEdnp9sw3Xv2VNMUzhFGlYHSKifL','2018-02-06 07:12:43','2018-02-06 07:12:43'),
	(106,1,'Ic12jCT243U8a6EGpZJOXDhKjPcAPVO0','2018-02-06 07:12:43','2018-02-06 07:12:43'),
	(107,1,'J89v3rlVQ0O51YWKJO6ImrRDKHMeKPem','2018-02-06 07:12:59','2018-02-06 07:12:59'),
	(108,1,'IUc40BHJ8UfWAZBIJN7wwa7XrovFE0Bs','2018-02-06 07:12:59','2018-02-06 07:12:59'),
	(109,1,'WtqfmvP2OstGR1xhG8YgyyFrw9RQQuza','2018-02-06 07:12:59','2018-02-06 07:12:59'),
	(110,1,'EI8CrWvnGh6TF8lGxBubkOJbWeO8uD1H','2018-02-06 07:13:31','2018-02-06 07:13:31'),
	(111,1,'hZJEIsViuGBjA2rPptt2jUWyYufXPRfb','2018-02-06 07:13:31','2018-02-06 07:13:31'),
	(112,1,'buOT9AZ4M9l5SguWGBJQpvcoBTLFzjFO','2018-02-06 07:13:31','2018-02-06 07:13:31'),
	(113,1,'2LWei6OjdyV1bGZOoz980H7C4mEofsum','2018-02-06 07:15:59','2018-02-06 07:15:59'),
	(114,1,'ffbqr1l8zly0MjStSz4xoHa5m1kkUvi3','2018-02-06 07:16:02','2018-02-06 07:16:02'),
	(115,1,'7vBfDb6mzUgycH7nrmW8GcqWsyxLjESM','2018-02-06 07:16:02','2018-02-06 07:16:02'),
	(116,1,'UXF07M5mZ6Pf97vIcT1W5VaEuiESA7f5','2018-02-06 07:16:02','2018-02-06 07:16:02'),
	(117,1,'iMPHjirQNF9dCxms9aR0guETAzJ9aMY5','2018-02-06 07:16:23','2018-02-06 07:16:23'),
	(118,1,'42RJwnMsk5UE9VeX3KfK4U1KirwS02Z5','2018-02-06 07:16:23','2018-02-06 07:16:23'),
	(119,1,'m9dnE6IS0ruHKV0TIXTYHE2eGP0StH2K','2018-02-06 07:16:23','2018-02-06 07:16:23'),
	(120,1,'LlsO0DkTEveuzAr1Upf3O9UVevHFgQfw','2018-02-06 07:16:45','2018-02-06 07:16:45'),
	(121,1,'gNo7vlsXyrckk2J08ixRskra7VCdEe9E','2018-02-06 07:16:45','2018-02-06 07:16:45'),
	(122,1,'kBo3QHxQCB1xWPv7JDnIpsRCxOVoRCWe','2018-02-06 07:16:45','2018-02-06 07:16:45'),
	(123,1,'s447xjnXZ2KTaZeYORhgvXkonrSWJH3B','2018-02-06 07:17:09','2018-02-06 07:17:09'),
	(124,1,'tCbTDVCKvba300MQOUIGOqqD3qdUr3Wg','2018-02-06 07:17:09','2018-02-06 07:17:09'),
	(125,1,'FNcjqF1eJSPPe7jesoJej7cksIPg8RHr','2018-02-06 07:17:09','2018-02-06 07:17:09'),
	(126,1,'7uxZBSo77dUy1vjW8Sm1QVkURjR2fJVV','2018-02-06 07:20:04','2018-02-06 07:20:04'),
	(127,1,'F6cD3Jl8b0mkC0ZUN3ekuaExtvQsTQfr','2018-02-06 07:20:04','2018-02-06 07:20:04'),
	(128,1,'cf9EUOoPxv87wzIgZBQDnKEdcJLbdFI5','2018-02-06 07:20:04','2018-02-06 07:20:04'),
	(129,1,'iIMxmI1u1gQvBZjglWQSMSzArlg0QVo9','2018-02-06 07:20:08','2018-02-06 07:20:08'),
	(130,1,'GNRxs7RcDj7TCCDWhyUR44GQnaEkHXkY','2018-02-06 07:20:10','2018-02-06 07:20:10'),
	(131,1,'IkES8prG1A0KFZEoPZj0QTJPDzzGuSgR','2018-02-06 07:20:10','2018-02-06 07:20:10'),
	(132,1,'S7C043komhEbn2x9922NpnTmmTthefqL','2018-02-06 07:20:18','2018-02-06 07:20:18'),
	(133,1,'oGIMfyvwpA9SVuj7z0qZI9FMZ9wP6oaN','2018-02-06 07:20:18','2018-02-06 07:20:18'),
	(134,1,'vb8tesgt3CrB1aauPyq2NcVJc82TtR1q','2018-02-06 07:20:22','2018-02-06 07:20:22'),
	(135,1,'5Rw5hMsmT04tRvR2KT96oXsXDrVpPYQp','2018-02-06 07:21:57','2018-02-06 07:21:57'),
	(136,1,'PvQfQC2iYremPW8fdZ52UBQenwKK3D49','2018-02-06 07:22:43','2018-02-06 07:22:43'),
	(137,1,'UhtUb7SCroKevin1M9OGnmGXwzh8tb8P','2018-02-06 07:22:44','2018-02-06 07:22:44'),
	(138,1,'KGrhLg2cYpo0a3d7w2muj0mufrskoJqi','2018-02-06 07:22:44','2018-02-06 07:22:44'),
	(139,1,'12M4GMj2HrXkh7ZrpdhXHUjm5bozZzqk','2018-02-06 07:22:51','2018-02-06 07:22:51'),
	(140,1,'I8mBRR0RciYMx3EyEq8jwny20TNZ7sAB','2018-02-06 07:22:51','2018-02-06 07:22:51'),
	(141,1,'RGnc7daVLhpMI1byYggyohH7TYBsFqcI','2018-02-06 07:22:54','2018-02-06 07:22:54'),
	(142,1,'RmlANMFlKvOGwqbdLi3sVhyxDGcl3wxf','2018-02-06 08:00:12','2018-02-06 08:00:12'),
	(143,1,'3eq93vOz9syvFlbLeUvYynHwyJsNZjWF','2018-02-06 10:34:46','2018-02-06 10:34:46'),
	(144,1,'D74EnHpQI3H5tkJCkBgHDYxPlLdTMNmi','2018-02-07 01:09:32','2018-02-07 01:09:32'),
	(145,1,'XWl4W5CjGVv0aaAH6nIah82V3EqdR2Rz','2018-02-07 05:43:24','2018-02-07 05:43:24'),
	(146,1,'pMd9Jl3nhqe6p6Bxvz4OJfM3GnAeRdTW','2018-02-07 07:44:48','2018-02-07 07:44:48'),
	(147,1,'Bfvi1AkeoQf7NqmB89YCYGcifaffFOIc','2018-02-07 07:44:52','2018-02-07 07:44:52'),
	(148,1,'OKVjPdqhzROnQ1tlJVqC0JrDCURKK45z','2018-02-08 01:04:08','2018-02-08 01:04:08'),
	(149,1,'hX1Qu2ahbMwX3cgN5BuLVFtYJhMFmSY2','2018-02-08 05:32:41','2018-02-08 05:32:41'),
	(150,1,'4OJgzDpRfg3ns60rH7wPdQRXlWntLzVt','2018-02-09 01:10:03','2018-02-09 01:10:03'),
	(151,1,'wKOIR8T25K5zKbAWvDad39y8zrdsigUd','2018-02-09 05:38:16','2018-02-09 05:38:16'),
	(152,1,'26RWmDNuV7HKtJlILDJCublDYIB8fTI8','2018-02-09 08:09:17','2018-02-09 08:09:17'),
	(153,1,'8ZQFRk7dS1TBoFJNORc1F8n3oVuOr3u1','2018-02-10 00:13:02','2018-02-10 00:13:02'),
	(154,1,'uZv04LRVGfQLLQaFP4q6nxK7nouzF5YS','2018-02-10 03:36:18','2018-02-10 03:36:18'),
	(155,1,'ntjg4Q5LdhbJWSPNYXqgDkwhgFsDi1bA','2018-02-10 03:37:03','2018-02-10 03:37:03'),
	(156,1,'VYnSq2rNUuNap9J5lBw7OOTtEux6vf7z','2018-02-10 03:37:35','2018-02-10 03:37:35'),
	(157,1,'p3AJkjy89z4KTicTNs6C6VEA2xjn8bQ9','2018-02-10 03:39:39','2018-02-10 03:39:39'),
	(158,1,'kEoziO5uSgAKrDLLequG2bzg6nDgGPty','2018-02-10 03:40:13','2018-02-10 03:40:13'),
	(159,1,'3HDPzWhcDcTu0qMkSP1r69MyCo9NwScd','2018-02-10 04:00:45','2018-02-10 04:00:45'),
	(160,1,'FgcAePV6eNWByKO41hV3UGBNjIseoPX9','2018-02-10 04:01:06','2018-02-10 04:01:06'),
	(161,1,'4E2GWFSYLdvPlCrAS9XKigEGjOkByKUC','2018-02-10 04:02:12','2018-02-10 04:02:12'),
	(162,1,'tK1LgB9YDZua6w5FNI4BQg9xHWEXFEW0','2018-02-10 04:31:22','2018-02-10 04:31:22'),
	(163,1,'ew3CoIEdk6OngsT0RNLtDGxtaxG9siZv','2018-02-10 04:31:38','2018-02-10 04:31:38'),
	(164,1,'swtN9zP8xsJjhScXJCgwdTdA2NFsNoSl','2018-02-10 04:33:20','2018-02-10 04:33:20'),
	(165,1,'FscoyEfVFHUcBoOrHeigS8YFmxK0e6kn','2018-02-10 04:35:32','2018-02-10 04:35:32'),
	(166,1,'YwX34bPSvqZ1Bx7O35jDocxL1DxNsDjY','2018-02-10 04:37:00','2018-02-10 04:37:00'),
	(167,1,'HtLEH3usaXlAjfKgTX46YDV6Jd2vgGcm','2018-02-10 04:37:17','2018-02-10 04:37:17'),
	(168,1,'UDvUwR94zs2ypGXmAolwKWETnxViOs3A','2018-02-10 04:40:05','2018-02-10 04:40:05'),
	(169,1,'8h0fQcO5aGKkZmggf4kDI0cEspmka2Q3','2018-02-10 04:41:23','2018-02-10 04:41:23'),
	(170,1,'w6DYUfYPkArTkXUuB5hreVTyOwMx9sQe','2018-02-10 04:50:17','2018-02-10 04:50:17'),
	(171,1,'xwhFuUxGs0Pu2TNM6K4Q8n5wLQbv2hjV','2018-02-10 04:51:55','2018-02-10 04:51:55'),
	(172,1,'1yTD2KW8HhFKLmbCNIxZ3LAGG749aPtm','2018-02-10 04:56:12','2018-02-10 04:56:12'),
	(173,1,'aFz216R1WNUJmWDj1p0tuCOdvaIpaoG2','2018-02-11 01:05:29','2018-02-11 01:05:29'),
	(174,1,'nhwJJ1YdVLMZZH78jfxxsxRsQuyac18A','2018-02-11 01:05:39','2018-02-11 01:05:39'),
	(175,1,'xV6kSBg6jaQXijpbffE5h2LESUTtOTzn','2018-02-11 01:05:45','2018-02-11 01:05:45'),
	(176,1,'Pe8Dr8kbL8NO2V55N290xW0yqqzkmvTy','2018-02-11 01:06:48','2018-02-11 01:06:48'),
	(177,1,'Q5QV5vsf3yWxr4ubPtVsz8916TikvAlw','2018-02-11 01:07:05','2018-02-11 01:07:05'),
	(178,1,'Zea2CDJboRMo9Pe0x44UKohUDdPcEu4Z','2018-02-11 01:07:41','2018-02-11 01:07:41'),
	(179,1,'r5TDK7iVDWsuyHXtdFCdU7suyCbYyVdp','2018-02-11 01:08:08','2018-02-11 01:08:08'),
	(180,1,'Bvf1Bflz4ynq5fUJY8erJm4nqrpFKice','2018-02-11 01:08:27','2018-02-11 01:08:27'),
	(181,1,'xu4jkSKg8dLzq6XDjDXkMNtM6J5iRJwx','2018-02-11 01:34:31','2018-02-11 01:34:31'),
	(182,1,'2mB67xI9gqZuBnwFv2A1pJPWIC0yUE0T','2018-02-11 01:34:50','2018-02-11 01:34:50'),
	(183,1,'9XWX55TTQC8ifHX2WbF9LtB1kTXCbAfN','2018-02-11 01:35:05','2018-02-11 01:35:05'),
	(184,1,'r0N1DP5oasQLi34GDoD8HIorZLvXE6xe','2018-02-11 01:35:12','2018-02-11 01:35:12'),
	(185,1,'XxtvFilu5vKDKBOAF2GzsvDB3RmE5d0g','2018-02-11 01:35:33','2018-02-11 01:35:33'),
	(186,1,'mXmZfioNIeqzRguGJcHodNTNb01QwF4U','2018-02-11 01:36:04','2018-02-11 01:36:04'),
	(187,1,'IlvZyQFcfP1oy42ZEi22k1qz8QRrM2K2','2018-02-11 01:39:11','2018-02-11 01:39:11'),
	(188,1,'N9F1IAY1ONw8KUTuisKiiAahJcIbwsjA','2018-02-11 01:39:45','2018-02-11 01:39:45'),
	(189,1,'f0ckuTWbWhFMFHbxDWWih7r9pdEWkBkD','2018-02-11 01:40:54','2018-02-11 01:40:54'),
	(190,1,'ncIzdApydbImo8YarDUM8MxH7V5k746K','2018-02-11 01:41:12','2018-02-11 01:41:12'),
	(191,1,'X43mVJjkAElClLbVSU2AW5vjBsQFdeCy','2018-02-11 01:41:24','2018-02-11 01:41:24'),
	(192,1,'gwRM53cemEhPyKtVE52WcnvgaCp0iFjc','2018-02-11 01:42:31','2018-02-11 01:42:31'),
	(193,1,'11Lm4z3mnauzC0PEDTt9zBMc1EAddZpY','2018-02-11 01:43:00','2018-02-11 01:43:00'),
	(194,1,'KDGqN2KtTFZWEcFaiiYXfLwv7i4u0QUt','2018-02-11 01:49:57','2018-02-11 01:49:57'),
	(195,1,'uSn9BssDb3d88KZ3GgacooLHuujb09hm','2018-02-11 01:50:36','2018-02-11 01:50:36'),
	(196,1,'CIK1OcEDeuknkN3FJIIqLHi9zsl6aP6S','2018-02-11 01:52:49','2018-02-11 01:52:49'),
	(197,1,'FNGYjCirSGWpxfcml6Y7oPRQT7XLtNTl','2018-02-11 01:53:01','2018-02-11 01:53:01'),
	(198,1,'RjdaagmtV5SaMyGGSWh7D485GypMMMIQ','2018-02-11 01:53:29','2018-02-11 01:53:29'),
	(199,1,'Am7k3zsponJOFdblwV2ElEsaEijoterU','2018-02-11 01:54:30','2018-02-11 01:54:30'),
	(200,1,'wHKpH2SNwBSMd9ecewnpPuD68zLNhv41','2018-02-11 01:54:31','2018-02-11 01:54:31'),
	(201,1,'dzz1QdDyEMcMcMG3hZ9cxofSac7yWCS5','2018-02-11 01:54:35','2018-02-11 01:54:35'),
	(202,1,'ztT2MSjwyFAkzUMTWyd929YFAwDynAyI','2018-02-11 01:54:45','2018-02-11 01:54:45'),
	(203,1,'ks1HrSFjglQOqcAbiMr8UClKNtSvQzOL','2018-02-11 02:14:32','2018-02-11 02:14:32'),
	(204,1,'gH3DtsQH6AbJ2K2NTBsibHT4WX1OsdAW','2018-02-11 02:16:29','2018-02-11 02:16:29'),
	(205,1,'mtfey8gGTp8IWgvA67YJFVzPQwMP6Uxe','2018-02-11 02:18:46','2018-02-11 02:18:46'),
	(206,1,'ofpSeq2WHiqYKmzByMFBibMRvuIhTZQI','2018-02-11 02:19:19','2018-02-11 02:19:19'),
	(207,1,'7CQCAqt9prCOfeDrci3b2D2fM8cbCrPC','2018-02-11 02:26:35','2018-02-11 02:26:35'),
	(208,1,'v2h8fFxZwZWFspj59TqsfWZuGlwmcAxt','2018-02-11 02:27:15','2018-02-11 02:27:15'),
	(209,1,'udFZd2XklCRbbMbDhukhjeymxJBYHvTy','2018-02-11 02:28:07','2018-02-11 02:28:07'),
	(210,1,'hTLuHw5HsSgbQDEJ1KpZDRYR7yJO00T2','2018-02-11 02:28:49','2018-02-11 02:28:49'),
	(211,1,'uR7to9TxuL3yE1gJRTe1Rcxw9ifOmkz0','2018-02-11 02:34:06','2018-02-11 02:34:06'),
	(212,1,'9yd1RokQL4i6fNFv5KeFfFpHtmTeuHvT','2018-02-11 02:34:53','2018-02-11 02:34:53'),
	(213,1,'IB3Aeohqce3EeZx5hcb9VbSrLvExZWIZ','2018-02-11 02:39:34','2018-02-11 02:39:34'),
	(214,1,'ngADZyXIAX6MvUsclBX43xe95vpZrQLu','2018-02-11 02:40:12','2018-02-11 02:40:12'),
	(215,1,'Bf3Udk87POks6a4XMpIrMJOK9UBXRvhQ','2018-02-11 02:42:49','2018-02-11 02:42:49'),
	(216,1,'gRdaZoSUPGtZzfd1mcKLtaR7vlY9EnTE','2018-02-11 02:43:21','2018-02-11 02:43:21'),
	(217,1,'ug94AnJl6aXB6w45aXJbZBDAd06gPJ1I','2018-02-11 02:44:10','2018-02-11 02:44:10'),
	(218,1,'XMTzBcCV9CTLzDnUsDyLyx7E5nZN9xoC','2018-02-11 04:38:13','2018-02-11 04:38:13'),
	(219,1,'0IBQGewacs9vzKrmpGpwgpOXqyjHRBJG','2018-02-11 04:38:17','2018-02-11 04:38:17'),
	(220,1,'wABSfvYgXNGSP7uSpx4H1KkGIpcRI17W','2018-02-11 04:38:30','2018-02-11 04:38:30'),
	(221,1,'PpA0cPqRiIXUMWfTxdIvwcBLNHvz0rxF','2018-02-11 04:39:56','2018-02-11 04:39:56'),
	(222,1,'V8vxLpnDmS9MPNJZMQrQIUW1238FkZmI','2018-02-11 04:39:59','2018-02-11 04:39:59'),
	(223,1,'jXdCXbsXQ8LSN9cWEMEHaCGOaUoTK4Om','2018-02-11 04:40:12','2018-02-11 04:40:12'),
	(224,1,'CqomGTjtdqTYrWTMadpLU72rd9XZLSx9','2018-02-11 04:40:53','2018-02-11 04:40:53'),
	(225,1,'aFZB6DxODs6NWSpL1MDZXbXdWu9Tmqav','2018-02-11 05:27:01','2018-02-11 05:27:01'),
	(226,1,'az5mkqxoFznDTMH5gTuw4ueudH3oI8pW','2018-02-11 05:27:04','2018-02-11 05:27:04'),
	(227,1,'fgkr88CPZJ5XgOSBumHpGyqSMipvG989','2018-02-11 05:27:57','2018-02-11 05:27:57'),
	(228,1,'zA6nS3InhO002kXAVHuuaDZJTH27V3Jr','2018-02-11 05:28:18','2018-02-11 05:28:18'),
	(229,1,'J1OfoEIFnOis7d6r3nFLZCaVVuIkAAvW','2018-02-11 05:28:18','2018-02-11 05:28:18'),
	(230,1,'mhVI02fUX40aeF5surUSr2fwj8qXAFbL','2018-02-11 05:28:21','2018-02-11 05:28:21'),
	(231,1,'WFmvMXQS8jZmT8qE1FTidW10w1eXFnKQ','2018-02-11 05:36:51','2018-02-11 05:36:51'),
	(232,1,'lf43h30tyqXc6kTurjEvfA7dWPaUmLSn','2018-02-11 05:37:00','2018-02-11 05:37:00'),
	(233,1,'r5x5Tp9dUeYM8KrX1K76NnyjX7XHpJBF','2018-02-11 05:37:04','2018-02-11 05:37:04'),
	(234,1,'IYMqGjmbQSddjyghKoEGiCX4CSPcUjeR','2018-02-11 05:37:26','2018-02-11 05:37:26'),
	(235,1,'3FOoMh52oIMz1aqHnyp5r8uf2jHT2KOQ','2018-02-11 05:37:30','2018-02-11 05:37:30'),
	(236,1,'WfoG2BYBnjM4dO81j9RN7R0PaihVyExU','2018-02-11 05:37:31','2018-02-11 05:37:31'),
	(237,1,'kXDOxyv52cXnE5CZAUcj6KYODYRgIo1D','2018-02-11 05:37:33','2018-02-11 05:37:33'),
	(238,1,'dWuTXIWA0OrvVj8VjY0ZOw77iXxNMNET','2018-02-11 05:42:06','2018-02-11 05:42:06'),
	(239,1,'o2nYp6UGkHxU0BSu7Ms8Cqwd8hQViz1s','2018-02-11 05:42:11','2018-02-11 05:42:11'),
	(240,1,'8jO27od9IeYV2vcXlzo9svneCbddTJ6T','2018-02-11 05:42:16','2018-02-11 05:42:16'),
	(241,1,'ZJqI632NKTBYW84uTrAOlPKqQVpKw0cz','2018-02-11 05:42:16','2018-02-11 05:42:16'),
	(242,1,'9I86PTyzu1O3D8XGloWY7a1P6ZCrDR6o','2018-02-11 05:42:21','2018-02-11 05:42:21'),
	(243,1,'kLZOTD8OP0lwVUskLxRaPuUCZRZ8CUvG','2018-02-11 05:43:10','2018-02-11 05:43:10'),
	(244,1,'hhc60HYQnlgGbEDyLcPUqz4lgujgOgXg','2018-02-11 05:43:18','2018-02-11 05:43:18'),
	(245,1,'Y2VAKVZzZ3GKQyVWFWWQumxqWuKrBECl','2018-02-11 05:45:13','2018-02-11 05:45:13'),
	(246,1,'7mNohYkvP01CwXuymn5CJSFgi7XriALQ','2018-02-11 05:45:15','2018-02-11 05:45:15'),
	(247,1,'iNiLPLYYQOgR0CzclgPCJFSPWzZpZACr','2018-02-11 05:45:23','2018-02-11 05:45:23'),
	(248,1,'fIH4lwPI6gRbNXXfHbKbrYOd5DpswdDv','2018-02-11 06:14:22','2018-02-11 06:14:22'),
	(249,1,'QaRjkzGaEbUgwsKP7Q4jU3WJ942ZPdE3','2018-02-11 06:14:28','2018-02-11 06:14:28'),
	(250,1,'eGxtWApE1oUdGWtunCHpcchf2DkKctOg','2018-02-11 06:14:46','2018-02-11 06:14:46'),
	(251,1,'feS3nhAV14qELwVbbZZWFbkYHcLURkdR','2018-02-11 06:15:16','2018-02-11 06:15:16'),
	(252,1,'8OG0teOZSF5WUUMmYmX0xWzskOfHgs7X','2018-02-11 06:15:28','2018-02-11 06:15:28'),
	(253,1,'fymeBKbL8SdhlO75KvC0wwM8qU9PkaPN','2018-02-11 06:15:31','2018-02-11 06:15:31'),
	(254,1,'p2j7DdSwSfvTnEjSvcYntoHz28akRto9','2018-02-11 06:15:32','2018-02-11 06:15:32'),
	(255,1,'dfKs1Tn053urphf97bl64X0uVh5OMZJB','2018-02-11 06:17:44','2018-02-11 06:17:44'),
	(256,1,'lywSZBqBLbNYeZaflGHyEb302NkmhXRT','2018-02-11 06:18:01','2018-02-11 06:18:01'),
	(257,1,'f0KuUDrraNodQViNIlbIOYVXJVd9Kt5G','2018-02-11 06:37:40','2018-02-11 06:37:40'),
	(258,1,'UyRcdbULdmKwAB5NNuNTIXz5npWe3Z6P','2018-02-11 06:37:43','2018-02-11 06:37:43'),
	(259,1,'8kIYDLk7eoYWoF5LfH1DCtN9qEVD4QpI','2018-02-11 06:38:19','2018-02-11 06:38:19'),
	(260,1,'nomQnPRWotXonSNgOYhKY37UXIavro7j','2018-02-11 06:39:03','2018-02-11 06:39:03'),
	(261,1,'9j4z1JbgaYqObKXvs1v4ICkwz0BWNLuU','2018-02-11 06:39:06','2018-02-11 06:39:06'),
	(262,1,'cgKv8SUzo4vvYzFI0nOM13My5uOs7AYF','2018-02-11 06:39:07','2018-02-11 06:39:07'),
	(263,1,'9K0GFXJd533VasSVQaRonE5Ra1J1CeqJ','2018-02-11 06:39:19','2018-02-11 06:39:19'),
	(264,1,'JYBgQ70oK9pEKyVyd5MNstJ5x8gXWlyb','2018-02-11 06:39:19','2018-02-11 06:39:19'),
	(265,1,'mZ9iHTG9eD7xN63sH0xb9Fhbucvgmzc0','2018-02-11 06:39:26','2018-02-11 06:39:26'),
	(266,1,'zFA6FNWf4nSw8vDFlsNCOk2Ta5QMK4Lm','2018-02-11 06:39:30','2018-02-11 06:39:30'),
	(267,1,'L2LMGh6xJAIgyLI5HlGEd0VJp7Y2qK53','2018-02-11 06:45:26','2018-02-11 06:45:26'),
	(268,1,'dkj3P2PKGrRGm6xG7InEz7Y9iHV8MqFP','2018-02-11 06:45:30','2018-02-11 06:45:30'),
	(269,1,'oUCwyWhgRpi6kEWMwjg2iWGxrQROBa84','2018-02-11 06:45:30','2018-02-11 06:45:30'),
	(270,1,'eY2G8zhfV0oqRq06LEWqtZJiRKcifj58','2018-02-11 06:51:02','2018-02-11 06:51:02'),
	(271,1,'JDF9nVF8yNG4xwDvhNgARJRYZca1Rfbm','2018-02-11 06:51:04','2018-02-11 06:51:04'),
	(272,1,'i4Gd2AdIo5dGy3L5gWNdBWoLHVYTxPqk','2018-02-11 06:52:57','2018-02-11 06:52:57'),
	(273,1,'Q8fZ1U7i6RCLPOfLM5gudwTOxNIg5SOL','2018-02-11 06:52:59','2018-02-11 06:52:59'),
	(274,1,'dDJBh0ENAFF8N28HH4ks6Y4mxH1CKBfO','2018-02-11 06:53:00','2018-02-11 06:53:00'),
	(275,1,'iEwGmiDOC8hFUPNLyv2Z4EGkAGGg5107','2018-02-11 06:53:01','2018-02-11 06:53:01'),
	(276,1,'Nv6koOkDMb5my6fnXtJcYJvs3ak8UdVj','2018-02-11 06:53:02','2018-02-11 06:53:02'),
	(277,1,'b71ZTMlScLAubH4pPBDNWxJ7Y7JRboyH','2018-02-11 06:53:03','2018-02-11 06:53:03'),
	(278,1,'sQbDrvuasE4PBb5pCRs2OvppsiCVjtAm','2018-02-11 06:53:05','2018-02-11 06:53:05'),
	(279,1,'XdcD98yVLFNCDlI881ORVkDmWebTyRbF','2018-02-11 06:59:14','2018-02-11 06:59:14'),
	(280,1,'drb3F7ZvDZQ7bQqvfPjWJfR1MiP7OMA6','2018-02-11 06:59:16','2018-02-11 06:59:16'),
	(281,1,'bZIIzo4RRyxayTODs4Z5PCTE1HkBBBZV','2018-02-11 06:59:16','2018-02-11 06:59:16'),
	(282,1,'rIHYbAte1Y2i9uZoJ5ac98qgq1lnFNoF','2018-02-11 06:59:16','2018-02-11 06:59:16'),
	(283,1,'97Hv5Wo3DhiqKBDCUOrZYhbhLbU1USqa','2018-02-11 07:30:00','2018-02-11 07:30:00'),
	(284,1,'sRKb0VOyVJsZ2fyy63Zl8JFB2DkCuyoG','2018-02-11 07:30:00','2018-02-11 07:30:00'),
	(285,1,'cnX25EgVyDNpiva68qh7Xs7QnqPVv6PD','2018-02-11 07:30:00','2018-02-11 07:30:00'),
	(286,1,'Z1wn0ZKd2SNGX9MI7i1IgVvvaHRgDuLE','2018-02-11 08:10:53','2018-02-11 08:10:53'),
	(287,1,'eUDdKBe2k6pGLFzaMiuAoSU7mKh6rCch','2018-02-11 08:10:56','2018-02-11 08:10:56'),
	(288,1,'2VeLDujes3n2P7h8nahmdeIJ7YO0J228','2018-02-11 09:18:35','2018-02-11 09:18:35'),
	(289,1,'YCyGuVejxpmWoFOK9yWwUnzW2fu71HwD','2018-02-11 13:18:03','2018-02-11 13:18:03'),
	(290,1,'4Na16QxJ6UoyjwayVHKHHAyABHApR87U','2018-02-12 01:25:07','2018-02-12 01:25:07'),
	(291,1,'36qXhrad1mgh8XsZTHrxJ3j0Nt53JsL3','2018-02-12 01:51:05','2018-02-12 01:51:05'),
	(292,1,'y6pJdHa0nQR5kGjGmWZYRc3EgCxi4QDM','2018-02-12 01:51:07','2018-02-12 01:51:07'),
	(293,1,'eOaX6gLETFddcInYFJy05O2SMlRjuSfH','2018-02-12 01:51:07','2018-02-12 01:51:07'),
	(294,1,'f84xXuWH9aKW8aeA1irOtIAJIWKE4fgH','2018-02-12 01:51:13','2018-02-12 01:51:13'),
	(295,1,'2Ieo25fhQk0PcjRdFS7Tmbl0ZyarFYdX','2018-02-12 01:51:13','2018-02-12 01:51:13'),
	(296,1,'72MWmATntHkp7AZrh61N2tdsnJnAzlL4','2018-02-12 01:51:16','2018-02-12 01:51:16'),
	(297,1,'iTaAJvyOqE0PBYWcXglHxY37hheg6sfO','2018-02-12 01:51:22','2018-02-12 01:51:22'),
	(298,1,'RXS53PimnZEgOIfdtgZNGC4g1Qce3mrr','2018-02-12 01:51:28','2018-02-12 01:51:28'),
	(299,1,'1pgi9HQCwu7ao60PqDM8zPP8kUjMeFH0','2018-02-12 01:51:40','2018-02-12 01:51:40'),
	(300,1,'mhTDktAAoris4TT11zU5Q7S2X2EI0RGG','2018-02-12 01:51:45','2018-02-12 01:51:45'),
	(301,1,'jyfzjE1FGDZzStsshjMJq6pOfnM7AEtD','2018-02-12 02:21:14','2018-02-12 02:21:14'),
	(302,1,'29Oy5KboRmw6XltSSfw69ZPP6OQ95c9t','2018-02-12 03:31:36','2018-02-12 03:31:36'),
	(303,1,'S2L5lyqja7OBePD45Q3PbzdNJmmENcgr','2018-02-12 03:31:37','2018-02-12 03:31:37'),
	(304,1,'SxRjIklXhQtIJb39VPMsoNcxKskLcBhA','2018-02-12 03:31:38','2018-02-12 03:31:38'),
	(305,1,'uIX4KgI4xcS2o0oq4g1CaWCi9zkCNIUa','2018-02-12 07:07:11','2018-02-12 07:07:11'),
	(306,1,'oXe619kCZsiaE1WDKdN6fJqZeDyFXJQx','2018-02-12 07:20:00','2018-02-12 07:20:00'),
	(307,1,'kVZu6QMy9XdSBcWi6nBP3MdD8MJfyZVe','2018-02-12 07:21:34','2018-02-12 07:21:34'),
	(308,1,'qqHmA77SAjdaIRAUljS0kVG4yGjWjutx','2018-02-12 07:21:55','2018-02-12 07:21:55'),
	(309,1,'lW1ZvefzFB3EubS7KCWItIW0YjAvkruI','2018-02-12 07:23:30','2018-02-12 07:23:30'),
	(310,1,'SjW8GcnRNRinSLLNS12BhW0ydyLdq25W','2018-02-12 07:23:32','2018-02-12 07:23:32'),
	(311,1,'8FL2ge7lAhjqA72DXp60xBywJDi5tJAq','2018-02-12 07:27:57','2018-02-12 07:27:57'),
	(312,1,'BefBlJQtNJIlXRH2uqwh5xl3WdhkthGH','2018-02-12 07:27:59','2018-02-12 07:27:59'),
	(313,1,'SzeaU1j79YL7TQNGtAgyS4TZhMMG3lJF','2018-02-12 07:29:10','2018-02-12 07:29:10'),
	(314,1,'5Dh16xlaGj7aDXifsJVMhcBzrsGvrBey','2018-02-12 07:29:13','2018-02-12 07:29:13'),
	(315,1,'lI9Xy56eiqYzIMJ9jN26zpuQfdYwswx7','2018-02-12 07:32:25','2018-02-12 07:32:25'),
	(316,1,'dczU6lEqF3Su1xsTqBSlHNuikz9b9vf3','2018-02-12 07:32:26','2018-02-12 07:32:26'),
	(317,1,'8gXoWyqcvhPbGXIErcFY9ONpRjSzft2c','2018-02-12 07:33:53','2018-02-12 07:33:53'),
	(318,1,'tZ9lw4Q3oIG8OyIBmUS40Kde6UKYwy12','2018-02-12 07:33:55','2018-02-12 07:33:55'),
	(319,1,'wcyIwVzd98UAXS8LKab1pTYC7BAbP2Bg','2018-02-12 07:33:56','2018-02-12 07:33:56'),
	(320,1,'V9W6emcERVbjef2CmVNwGNr3xDbkdFDx','2018-02-12 08:12:55','2018-02-12 08:12:55'),
	(321,1,'t5poboi1gnmi9bDzDsdXdAVURKtbDpyX','2018-02-12 08:13:30','2018-02-12 08:13:30'),
	(322,1,'9RZIERvhlQQ2aLzEFsAiBt3W7JcSH3xv','2018-02-12 08:14:26','2018-02-12 08:14:26'),
	(323,1,'vMsCckAm7qiWylRGqOYHJGoEThDhl3DB','2018-02-12 08:16:06','2018-02-12 08:16:06'),
	(324,1,'Vd8dBTufnDQ3kBxWgmePEDrmcaLmM2aK','2018-02-12 08:16:24','2018-02-12 08:16:24'),
	(325,1,'GUXaK40i9G6c4VKJKx1YFSeIDs8S0DnQ','2018-02-12 08:16:33','2018-02-12 08:16:33'),
	(326,1,'tIy0Tie8KSoPl0DIfawk8inNQYIxzZLz','2018-02-12 08:16:47','2018-02-12 08:16:47'),
	(327,1,'BEApFbr2Kwi7Aoghxmu1RkizQ9tnsijK','2018-02-12 08:17:11','2018-02-12 08:17:11'),
	(328,1,'vTYSa4dCIU4q7EYirHWsslchEEaoUVR9','2018-02-12 08:18:11','2018-02-12 08:18:11'),
	(329,1,'adi4Xz4INPTbxwmxPtRcS3qYgh9iLvpO','2018-02-12 08:18:37','2018-02-12 08:18:37'),
	(330,1,'koyywHHXEPLCrlxb4sQmQzDwylLBccx5','2018-02-12 08:18:49','2018-02-12 08:18:49'),
	(331,1,'xXiRjpM4fgrqc90bFI6yxiKiRy8p7ZXC','2018-02-12 08:19:02','2018-02-12 08:19:02'),
	(332,1,'bjRCpi57N0M9LBdrHrpFx4g34QfYXnPy','2018-02-12 08:19:09','2018-02-12 08:19:09'),
	(333,1,'Y0LVI9StdO7yRkfnJsxtxhyYklEgIDPs','2018-02-12 08:19:42','2018-02-12 08:19:42'),
	(334,1,'Phix4nXgerKptOl8rBJMpfoHnwkgpLcI','2018-02-12 08:21:21','2018-02-12 08:21:21'),
	(335,1,'E5DFR5rgU1xC8TguyoK4H45USXAsKyRt','2018-02-12 08:21:23','2018-02-12 08:21:23'),
	(336,1,'7sVixThgGscSSJbgRqGaUM3vSAmZFq3U','2018-02-12 09:24:58','2018-02-12 09:24:58'),
	(337,1,'ADCVDMZJjPPTp8cdHDIh72VnDY4OXBPy','2018-02-12 09:25:00','2018-02-12 09:25:00'),
	(338,1,'ZdENsg4v1vXuUemnRIkybzr3lUqjPll5','2018-02-12 09:25:08','2018-02-12 09:25:08'),
	(339,1,'3dL7SJBN4eAa9VYoyuHqH1QLvyN6dAN3','2018-02-12 09:25:11','2018-02-12 09:25:11'),
	(340,1,'HAi7G6rnckgG1ZmAjqVEHIqA35xk1jf3','2018-02-12 09:31:27','2018-02-12 09:31:27'),
	(341,1,'5px6tTyvFtMjHgzqp721XVTSXTnLcJIm','2018-02-12 09:32:18','2018-02-12 09:32:18'),
	(342,1,'Vaz6AQP5LVXTNNUgDS3tq46drk9c08dl','2018-02-12 09:34:49','2018-02-12 09:34:49'),
	(343,1,'uK5Ghp6MPS07NoZXXy46Q8sIey5tkZRB','2018-02-12 09:34:58','2018-02-12 09:34:58'),
	(344,1,'urzS2vkMonf28cCgRAwvnqw3uaoMc14G','2018-02-12 09:39:39','2018-02-12 09:39:39'),
	(345,1,'7aqvqEE0olwnEZZWcpqlB9Xs83IQ7HWh','2018-02-12 09:39:40','2018-02-12 09:39:40'),
	(346,1,'lFYBQbCgImBQ5Ta505tAHiVpwM7vScQP','2018-02-12 09:44:15','2018-02-12 09:44:15'),
	(347,1,'ThBEfpuEUNCSKpLmSUfwz5o0ZWMJwylY','2018-02-12 09:45:20','2018-02-12 09:45:20'),
	(348,1,'7y94OakFLDsD5o4LgSCWe04CRHcljGXM','2018-02-12 09:46:07','2018-02-12 09:46:07'),
	(349,1,'5DRqIE9Ij7zccWcqDYyGxMozbOUtDFeL','2018-02-12 09:46:34','2018-02-12 09:46:34'),
	(350,1,'GaC7Th1O60H7m7YpSUqnx2pB3sTMljJL','2018-02-12 09:46:35','2018-02-12 09:46:35'),
	(351,1,'P7I3YtvjD0qZQ2J2j5ZRNR5oaFV82enE','2018-02-12 09:47:22','2018-02-12 09:47:22'),
	(352,1,'aLeUOCZPomdIO1spgRHhPcbKFJDjUqFw','2018-02-12 09:50:18','2018-02-12 09:50:18'),
	(353,1,'N7nLSmtmVf2iUMQAnRafeNHjJQd6aBut','2018-02-12 09:51:40','2018-02-12 09:51:40'),
	(354,1,'oZnmg9OQ6FFmd98P31vJr0rBOfGzfuwx','2018-02-12 09:52:44','2018-02-12 09:52:44'),
	(355,1,'k6VaXc1MlfQILb08rGNWf5VlKGqfyTuK','2018-02-12 09:53:18','2018-02-12 09:53:18'),
	(356,1,'js570fliQJEVDyfHB5MzJOQFltMbcIik','2018-02-12 10:09:32','2018-02-12 10:09:32'),
	(357,1,'GSOFkF9eDMsNLV7ikQqokzDJsH7h9wwk','2018-02-12 10:15:45','2018-02-12 10:15:45'),
	(358,1,'KultsgNn2wEKvF5N9dMIAjJ2AjoSt84v','2018-02-12 10:17:54','2018-02-12 10:17:54'),
	(359,1,'TyUG6CtLv8CrJjywWFxr2nU5QUS4nrhi','2018-02-12 10:18:43','2018-02-12 10:18:43'),
	(360,1,'NCQQSEDZGO8NBOAvsvfMKfb8C6oPOAbG','2018-02-12 10:18:45','2018-02-12 10:18:45'),
	(361,1,'gbjUvQwyxy1aYYsDEtlh5DH3zf0ceWIG','2018-02-12 10:20:31','2018-02-12 10:20:31'),
	(362,1,'xapLeFo7FCdVBWqvYzPJ1MXSJa6qVK3n','2018-02-12 10:21:40','2018-02-12 10:21:40'),
	(363,1,'1251m2P5DeIuq9x2qQnCrAOkeCpgPiQ7','2018-02-12 10:21:45','2018-02-12 10:21:45'),
	(364,1,'p2HS7fNa1VFkOOS0F812hqwPFHpioVz6','2018-02-12 10:23:12','2018-02-12 10:23:12'),
	(365,1,'ZtiNWo3OF1HBsO1fmQWMfMGcQd6aMGOL','2018-02-12 10:24:39','2018-02-12 10:24:39'),
	(366,1,'4ecvcpl3sdDo4RRIiXvKXwSSAepyRlyk','2018-02-12 10:25:09','2018-02-12 10:25:09'),
	(367,1,'2iUxyiYy3OsgwWMp6Y1vTeUGt0LsgfmE','2018-02-12 10:25:45','2018-02-12 10:25:45'),
	(368,1,'of5luX2ATHkb7hKTgI8cQ3D5lon5yq68','2018-02-12 10:26:17','2018-02-12 10:26:17'),
	(369,1,'v65X8AeNLOKbXBRkkyxbf1s5Mf0uDdfp','2018-02-12 10:29:39','2018-02-12 10:29:39'),
	(370,1,'yARKOCEp4TOaXNCw8MYBQhAumQSDTPmU','2018-02-12 10:30:30','2018-02-12 10:30:30'),
	(371,1,'7OQtzi8yGDPWZmQ96R9Jn1BDlGJMKduO','2018-02-12 10:31:43','2018-02-12 10:31:43'),
	(372,1,'WJIwlVsK1WQK4b826KfX6icd4feKGcJa','2018-02-12 10:34:08','2018-02-12 10:34:08'),
	(373,1,'uEn5GaicSJNf8ifywUml4x0RCwE3b6r0','2018-02-12 10:37:09','2018-02-12 10:37:09'),
	(374,1,'L2VBGjeni1Z3xuIgk7dV6KVMDkOiHDDz','2018-02-12 10:38:38','2018-02-12 10:38:38'),
	(375,1,'hh2K3wWAG4eUf6OH28aMpTMrX3qUlK9X','2018-02-12 10:39:27','2018-02-12 10:39:27'),
	(376,1,'w5JTUniXHDKAHzzssRVIGcQ4wFGRc3cX','2018-02-12 10:39:39','2018-02-12 10:39:39'),
	(377,1,'cLPtEvos0r1agstJ5fmc2Ee8pseSW8IJ','2018-02-12 10:40:43','2018-02-12 10:40:43'),
	(378,1,'U05zS5BemZow2Zu8sqQQM8e6ZOUtyTFN','2018-02-12 10:41:30','2018-02-12 10:41:30'),
	(379,1,'R0AwbE7FE2THQf6hP5iFjJ96t5vzIDTB','2018-02-12 10:42:12','2018-02-12 10:42:12'),
	(380,1,'W7cTYd3YzIWG6VL9hXnxVNqZUN073MCp','2018-02-12 10:43:06','2018-02-12 10:43:06'),
	(381,1,'a4xIbLjC9bxl4M74TPztspUKA4JGZiTw','2018-02-12 10:48:11','2018-02-12 10:48:11'),
	(382,1,'mh2Uy7RzV0aWNMNg71opfe6ifQk3iBYJ','2018-02-12 10:48:15','2018-02-12 10:48:15'),
	(383,1,'Bv0RHTwY44g8oYmRfRuJoejRP6HzYux9','2018-02-12 10:55:21','2018-02-12 10:55:21'),
	(384,1,'MdpIOd9eObaV89lkVAh1f9X4p2h0SY5x','2018-02-12 10:57:59','2018-02-12 10:57:59'),
	(385,1,'67mtjS9WCsbaYZa8fJhpCTcogQ2fevqM','2018-02-12 11:04:55','2018-02-12 11:04:55'),
	(386,1,'YaZ7MxuzfeJbCFxpG6FBSMo7YD57A3Oe','2018-02-12 11:04:56','2018-02-12 11:04:56'),
	(388,1,'Omef25UWdv37nwZvh02POpZIKpLfx7LT','2018-02-22 01:23:05','2018-02-22 01:23:05'),
	(389,1,'PltZIDLXF3NzYSqyhEBvKnSv5fQyt62Z','2018-02-22 01:23:34','2018-02-22 01:23:34'),
	(390,1,'rBDKzdh59qYccm6Ihh0mxDbGHU8X0lsv','2018-02-22 01:39:25','2018-02-22 01:39:25'),
	(391,1,'p11pDCBA6b85oyKsdRZBWGZAfjHrsh6X','2018-02-22 01:48:12','2018-02-22 01:48:12'),
	(392,1,'RW4XDVuUvQtvLTxRW1nDN0t1VrSNVdTe','2018-02-22 02:06:34','2018-02-22 02:06:34'),
	(393,1,'Q3LicYg3zQDBlLtDi5RzHsgofTJovRVv','2018-02-22 02:25:04','2018-02-22 02:25:04'),
	(394,1,'WUiw2AbJScd5J0iHolHyvZJVuekm5smu','2018-02-22 02:29:34','2018-02-22 02:29:34'),
	(395,1,'sJ501MUEIpJwMf5BCZfNDwKjxQy0z3gW','2018-02-22 02:31:38','2018-02-22 02:31:38'),
	(396,1,'MowDcCp0MrRfFGVHoRJBW5yqbTn23WhQ','2018-02-22 02:32:46','2018-02-22 02:32:46'),
	(397,1,'minvE4Kj6iogTSez10WFhlQ8pDD54oWb','2018-02-22 02:34:10','2018-02-22 02:34:10'),
	(398,1,'2r8eCeTHumviC9Ez798eiWeI2OFrm0ID','2018-02-22 02:35:23','2018-02-22 02:35:23'),
	(399,1,'mXbLrHjO0TCAkHp11JbSLR4OXVcrzoz7','2018-02-22 02:37:03','2018-02-22 02:37:03'),
	(400,1,'sfOwM5KNjkKSbf63M0QYjGJZ686e5Iqz','2018-02-22 02:37:23','2018-02-22 02:37:23'),
	(401,1,'ovY0LhwjvhhE88k6fzk2oJChNqS898F4','2018-02-22 02:37:40','2018-02-22 02:37:40'),
	(402,1,'tgIVtJFuqcpySYZaWqSCS0kz3nch5nn0','2018-02-22 02:42:38','2018-02-22 02:42:38'),
	(403,1,'3d3ZWMDcSNVaiGfaUE16w3qLjFDz5B89','2018-02-22 02:43:12','2018-02-22 02:43:12'),
	(404,1,'MiDRSRtKMTtiOqCPpxTJ1S1DJei1JFo7','2018-02-22 02:43:47','2018-02-22 02:43:47'),
	(405,1,'pcchuGQUmUqtnDfUAEHJSzevQaCsy6xL','2018-02-22 02:44:08','2018-02-22 02:44:08'),
	(406,1,'q7bSqZWQTvzxwR7LTXwwIh8oS3B8G3M8','2018-02-22 02:45:32','2018-02-22 02:45:32'),
	(407,1,'o9aFjdhLesHxIqiKWvYWgA9JH5dadaHF','2018-02-22 02:46:18','2018-02-22 02:46:18'),
	(408,1,'QiU45sgKZN8ocgBimAuXmP28lPPaAHGk','2018-02-22 02:46:59','2018-02-22 02:46:59'),
	(409,1,'577rm7UeFqwexly1FOvgurLRuxJlQS0L','2018-02-22 02:48:51','2018-02-22 02:48:51'),
	(410,1,'hDXQ4mFIcFOfmYceNjbatjdBx5CfY21S','2018-02-22 02:51:04','2018-02-22 02:51:04'),
	(411,1,'fUGAUksGsqz3KaOnn5LNV3Be01ZgyxKO','2018-02-22 02:51:11','2018-02-22 02:51:11'),
	(412,1,'JxsBQVcbClQZU9w1i6PU0bJEITidJ9DI','2018-02-22 02:51:28','2018-02-22 02:51:28'),
	(413,1,'4fbVktz0J4qQBtMMC4ij9LRiwQKmzL7U','2018-02-22 02:52:43','2018-02-22 02:52:43'),
	(414,1,'m6XFZaTaWc360FlD6Sp60ZuXgyPFR1aV','2018-02-22 02:53:48','2018-02-22 02:53:48'),
	(415,1,'J4gRbWZdpIQIA1gF8rZvlLLi9xYb2yCR','2018-02-22 02:55:02','2018-02-22 02:55:02'),
	(416,1,'m7z4TOdKFm8Z2nKG73vmZRYWbzuFsp20','2018-02-22 02:55:38','2018-02-22 02:55:38'),
	(417,1,'ogsBKz2NFqrYnUWS4AIDe8aLlNM5Arnq','2018-02-22 02:58:01','2018-02-22 02:58:01'),
	(418,1,'a1QMJ1xmVveKutQSVXlXYoxBrutgTPk8','2018-02-22 02:58:42','2018-02-22 02:58:42'),
	(419,1,'2shOnEJdeXWKfBFyRdGmpsMG8pfSTdPt','2018-02-22 03:02:07','2018-02-22 03:02:07'),
	(420,1,'K2yqRsMLhx6L0DMmieKy1RbrhhDRRrSU','2018-02-22 03:02:10','2018-02-22 03:02:10'),
	(421,1,'2bvvNFt0CjF9QaxLwKBVweRvO387Gic1','2018-02-22 03:02:18','2018-02-22 03:02:18'),
	(422,1,'UXiWFlzUPywLghoDrutLXjIiXVRI5Rst','2018-02-22 03:03:27','2018-02-22 03:03:27'),
	(423,1,'ms8g9l8In95eRQRtR9hPG3t9vzg1Fat1','2018-02-22 03:06:29','2018-02-22 03:06:29'),
	(424,1,'Ey5o8W7DxdVdyJUPRz3gT8BXjoiFWEeq','2018-02-22 03:08:06','2018-02-22 03:08:06'),
	(425,1,'0RHuxBstSTNHmIdz96KcWPGatRf3lWXy','2018-02-22 03:08:53','2018-02-22 03:08:53'),
	(426,1,'jrr19pyYonsUemrmDWIEmBFSGc40uLsf','2018-02-22 03:09:40','2018-02-22 03:09:40'),
	(427,1,'H668OodsA8Ffw5puzgAQ8ebeMS3WASVJ','2018-02-22 03:09:52','2018-02-22 03:09:52'),
	(428,1,'i8BupKccFdTBAarS4XGWthXNFAshpDgG','2018-02-22 03:09:55','2018-02-22 03:09:55'),
	(429,1,'AxpR3VNVeLcYb4qNB41rZootd49PxqKU','2018-02-22 03:12:22','2018-02-22 03:12:22'),
	(430,1,'Wut1TDY0eyPL5uyP2we7TrUlPG3md9nl','2018-02-22 03:12:27','2018-02-22 03:12:27'),
	(431,1,'yJWBJr3CiBLMUZQuIZMx2i7afasWKE8R','2018-02-22 03:12:32','2018-02-22 03:12:32'),
	(432,1,'jpleKaXO1N8r5GdLUZdGFuImVyeyjsmn','2018-02-22 03:14:29','2018-02-22 03:14:29'),
	(433,1,'2HrbqccadYzo3FvblmfKNbcNQDJd8rNZ','2018-02-22 03:17:59','2018-02-22 03:17:59'),
	(434,1,'bPepg4iwSBGQbKwhq7lkPVyHJAs1vcvJ','2018-02-22 03:18:21','2018-02-22 03:18:21'),
	(435,1,'KrVeEuULZAMnClSoBIMmbqJUGP4u3MGG','2018-02-22 03:21:14','2018-02-22 03:21:14'),
	(436,1,'03S3PP0HiBeSPFiYfpS9oGtaRTQjgIoe','2018-02-22 03:22:11','2018-02-22 03:22:11'),
	(437,1,'q9CVg9kiEgdtBh9E7P1aVDqBnUYJN4aE','2018-02-22 03:23:12','2018-02-22 03:23:12'),
	(438,1,'NL2BfkwWs1qq6Dvd1eWkVcSPKlQZvaFO','2018-02-22 03:24:35','2018-02-22 03:24:35'),
	(439,1,'HhcuZF3AjaZ0MuPc0rcNa3X7TFjvzeN4','2018-02-22 03:26:57','2018-02-22 03:26:57'),
	(440,1,'94uFMXDQuxzHgtDFMukaXqOmRGCMa2Ue','2018-02-22 03:28:28','2018-02-22 03:28:28'),
	(441,1,'2k9fA65KozaKYl9VIcQeYuuYVR7gReu9','2018-02-22 03:29:10','2018-02-22 03:29:10'),
	(442,1,'3DWep7NskBrra0OvV2wstGJghDxOhFQY','2018-02-22 03:29:17','2018-02-22 03:29:17'),
	(443,1,'TPsyygR8ei422rzprvKNAQFtLbNiT1Qp','2018-02-22 03:29:19','2018-02-22 03:29:19'),
	(444,1,'0MdMYJdPWlldMzQfLkKNwbcAcpKWK65c','2018-02-22 03:29:25','2018-02-22 03:29:25'),
	(445,1,'CAz90mVoC4MK3v0qYYEQkpQI5AYNr0wL','2018-02-22 03:29:26','2018-02-22 03:29:26'),
	(446,1,'SQIdyZeMxkUJVlfGWhziAqe0yhuuIdQb','2018-02-22 03:35:28','2018-02-22 03:35:28'),
	(447,1,'zxsNAmKwWNXrX5mzRdiLDGdBnrKJE2sc','2018-02-22 03:35:46','2018-02-22 03:35:46'),
	(448,1,'a0ezzrcNH1levPrPPQglSXupAned3kS5','2018-02-22 03:35:50','2018-02-22 03:35:50'),
	(449,1,'mjdIAbc8XlqmJrY5nXTsju7l9F0NEcve','2018-02-22 03:35:52','2018-02-22 03:35:52'),
	(450,1,'6FDjh7xqOMIYEOOlidiEW3ub0ZIWc4jd','2018-02-22 03:37:28','2018-02-22 03:37:28'),
	(451,1,'PuhEj3wb3QGvS7866JbiDesH8m5Lmr5M','2018-02-22 03:37:33','2018-02-22 03:37:33'),
	(452,1,'g5nhc9YCfr5bF1Vb3Zv8Li1y4wrHFIw7','2018-02-22 03:42:31','2018-02-22 03:42:31'),
	(453,1,'F0wxoBOZIUlEDrOL1iLPyyBsN7Pb8ZiX','2018-02-22 03:42:42','2018-02-22 03:42:42'),
	(454,1,'FIvmYjVbx84oeCt0gIV0HEzhEySindWV','2018-02-22 03:50:08','2018-02-22 03:50:08'),
	(455,1,'2F9HnHsw3RIvWaAkwCFai0IlcX3nGHyu','2018-02-22 03:50:18','2018-02-22 03:50:18'),
	(456,1,'CLYL2X8iOtBq4jAM4aXteUfCjPqNiue1','2018-02-22 03:50:33','2018-02-22 03:50:33'),
	(457,1,'fIyH0pqOyOyYB9kgm6KEVk6dswNCx4Tm','2018-02-22 03:50:39','2018-02-22 03:50:39'),
	(458,1,'oTrK2POvgjVWK73uiLcXrexshHzt7uHc','2018-02-22 03:50:51','2018-02-22 03:50:51'),
	(459,1,'lCgDO2T7Elq88LWT5VMvMAOmhlsmknpX','2018-02-22 03:51:54','2018-02-22 03:51:54'),
	(460,1,'jvhQv7t6QClaTTDCYID5mxpRIMyI8464','2018-02-22 03:51:57','2018-02-22 03:51:57'),
	(461,1,'DPHAiTnWR3AilUBunNtGv5uQnSpMQ22I','2018-02-22 03:53:19','2018-02-22 03:53:19'),
	(462,1,'M7s0q2fV3vKEy5QkHu2CndB7WPWp79KR','2018-02-22 03:53:21','2018-02-22 03:53:21'),
	(463,1,'RAvRmndudWnXy6uGhkF20POMEkYqnOQc','2018-02-22 03:54:27','2018-02-22 03:54:27'),
	(464,1,'b9PuCSia2IRvlwMhABPbBtmdGILYVdrQ','2018-02-22 03:54:30','2018-02-22 03:54:30'),
	(465,1,'aANeoEKzDyS9pZ5m2w9f4J2ITVpIDGaD','2018-02-22 03:56:27','2018-02-22 03:56:27'),
	(466,1,'TDJiJ5ytY50RsVO2gn5O3PcGOmyAHFhK','2018-02-22 03:56:30','2018-02-22 03:56:30'),
	(467,1,'jQ034PYC3FpLerxZdVFmWUYe9pNu0i8O','2018-02-22 03:57:54','2018-02-22 03:57:54'),
	(468,1,'ZLksQ5SvFRq0MKiJMBe4Ya60FzNBMmxn','2018-02-22 03:58:03','2018-02-22 03:58:03'),
	(469,1,'k2Sk4XFoJk8Ws7ftZOCijhTVH0qGiQnR','2018-02-22 03:59:10','2018-02-22 03:59:10'),
	(470,1,'5ZrXfyyIiyk0FpnbhGdGcOeKV9kDhTCj','2018-02-22 03:59:44','2018-02-22 03:59:44'),
	(471,1,'7wUot3eJtc0lhMgqdVWfQ83HSmvlUYdM','2018-02-22 04:00:22','2018-02-22 04:00:22'),
	(472,1,'fP771XCTJWsrcBSOLeQWZlKwgSfVyYmh','2018-02-22 04:00:41','2018-02-22 04:00:41'),
	(473,1,'NIyJylVUdz4hoZbDF1vWu0Uk1DlA9Nfh','2018-02-22 04:00:43','2018-02-22 04:00:43'),
	(474,1,'bYOIZE7UZ9D57RQUaU2tJiiicN0Cw0Rh','2018-02-22 04:01:02','2018-02-22 04:01:02'),
	(475,1,'lvHJcR8nvJ5itUhxdsW5leEHCmfjq9pV','2018-02-22 05:34:14','2018-02-22 05:34:14'),
	(476,1,'nBMS78PRgSfwSdl6HiD7aPNcwoU1N95B','2018-02-22 05:35:06','2018-02-22 05:35:06'),
	(477,1,'dKsIUHdn5y9ooQ7dAtPXVv1eHO0KMo6u','2018-02-22 05:35:30','2018-02-22 05:35:30'),
	(478,1,'TMkKLCv2Z592XE2N3Xu7DAGPH5pwRhF3','2018-02-22 05:36:46','2018-02-22 05:36:46'),
	(479,1,'nZrH9JwWlt3OXvCfh8hh9p0fCFh9Gan8','2018-02-22 05:36:51','2018-02-22 05:36:51'),
	(480,1,'jBa6DrFUBPWNG8KaASYZxrE4w2lptqOS','2018-02-22 05:36:56','2018-02-22 05:36:56'),
	(481,1,'XWo03jNVyqArtVa1OzgmeeT3Ezn6JGaQ','2018-02-22 05:38:06','2018-02-22 05:38:06'),
	(482,1,'uQUJuvhwz04dvUq8pIaqsRcARFnqFM7Y','2018-02-22 05:40:23','2018-02-22 05:40:23'),
	(483,1,'zAhuaHVvFKHzKLtd97TcRfzUAcsyhbiH','2018-02-22 05:40:26','2018-02-22 05:40:26'),
	(484,1,'Qxy3ORFoah1qKP4nEs4xRxX5g4Uz1wj8','2018-02-22 05:46:57','2018-02-22 05:46:57'),
	(485,1,'2MeBrEbdycoCKwMhFtFU4pTtL4J9UBMZ','2018-02-22 05:48:18','2018-02-22 05:48:18'),
	(486,1,'93jUvByrypgybAchlhBX1d5pJ5NAASFc','2018-02-22 05:49:09','2018-02-22 05:49:09'),
	(487,1,'RyMwhOC29TLsjeJCF7BYQnoX83VV9hCO','2018-02-22 05:49:21','2018-02-22 05:49:21'),
	(488,1,'YBMRpjlgkxNpdVGk3nhxJ7cbsVwdjcqL','2018-02-22 06:02:51','2018-02-22 06:02:51'),
	(489,1,'zpuNvmYAm6eTUpyRBnyua7GaWhc670S4','2018-02-22 06:08:03','2018-02-22 06:08:03'),
	(490,1,'U5WjQvO5AC7GE4cvXbIojNHgOBJpIlh0','2018-02-22 06:09:20','2018-02-22 06:09:20'),
	(491,1,'bIm28bUVWtJFP0ZEzsIs5BvxqfeSnYgT','2018-02-22 06:10:08','2018-02-22 06:10:08'),
	(492,1,'n1JwMWp1KBNXlXxDSYJcnOeohuLTE1Ls','2018-02-22 06:11:40','2018-02-22 06:11:40'),
	(493,1,'5nYcZsseTm5mEF56xID1J6TuoIPBnEPd','2018-02-22 06:11:51','2018-02-22 06:11:51'),
	(494,1,'zEa94sq0lkKaW1W7ZBBtznOs3eIBiUBr','2018-02-22 06:11:53','2018-02-22 06:11:53'),
	(495,1,'9cqFYefn6f1zlJvMDUmUK4E9exs3SpNk','2018-02-22 06:13:03','2018-02-22 06:13:03'),
	(496,1,'8zx6nNGcHORggpOzpHEO9I90tulXWobp','2018-02-22 06:13:32','2018-02-22 06:13:32'),
	(497,1,'AVt9vLybm9lkmSwvRYJN7kgt8IDvBKiR','2018-02-22 06:13:51','2018-02-22 06:13:51'),
	(498,1,'MB0KwwErvLcB4iRVByXOxaGEo1SAR5f0','2018-02-22 06:14:26','2018-02-22 06:14:26'),
	(499,1,'XxPv4imXRYtbaU8E4uzAMxZOP7Wrfrtl','2018-02-22 06:14:40','2018-02-22 06:14:40'),
	(500,1,'puFTjqBaBYBM9zVeH4UDIqIbP6a1kcgX','2018-02-22 06:14:45','2018-02-22 06:14:45'),
	(501,1,'SN87mJnQWF9hFluBozgcHgR6QuBCFjZ6','2018-02-22 06:15:57','2018-02-22 06:15:57'),
	(502,1,'1tYIAK3RBs29RNBcdzyswx2Dyp9CEjKb','2018-02-22 07:00:30','2018-02-22 07:00:30'),
	(503,1,'KhAQqddnNQ6ip120yE5TVqPJQo1GrhBj','2018-02-22 07:01:32','2018-02-22 07:01:32'),
	(504,1,'3xn8DLAidgg6XC4xUUkpWO0msZ4jf3u7','2018-02-22 07:03:49','2018-02-22 07:03:49'),
	(505,1,'ZwbNSdJXyGstLb7pUxucQFhmQuhpIwWh','2018-02-22 07:10:46','2018-02-22 07:10:46'),
	(506,1,'Ms0xoe2uSAJYs2jKclitlorL7cKqtMoq','2018-02-22 07:11:44','2018-02-22 07:11:44'),
	(507,1,'a46cOHUDD1z1dBA0GyCFcDATvq0ySsaK','2018-02-22 07:51:27','2018-02-22 07:51:27'),
	(508,1,'T2xqPGA6HbxRCGuPWrkdeqTEUxNWsER8','2018-02-22 07:51:30','2018-02-22 07:51:30'),
	(509,1,'xdHxPeo2YhA6nIVIY0NvL6pHCzwx4Kmc','2018-02-22 08:07:53','2018-02-22 08:07:53'),
	(510,1,'ccbOCuwZz1gGXFIKnD9FXJJr43iPKH0y','2018-02-22 08:07:53','2018-02-22 08:07:53'),
	(511,1,'RMqChOWXnXGF8SgvZmzpoB6liu0OsWfW','2018-02-22 08:07:53','2018-02-22 08:07:53'),
	(512,1,'Qr2Sib7PaCzmoSQqazTNEpwN0MdchfOP','2018-02-22 08:08:26','2018-02-22 08:08:26'),
	(513,1,'XODoXEk7smNlJz72tfUqg7WalCvwUkh6','2018-02-22 08:09:54','2018-02-22 08:09:54'),
	(514,1,'YbMKZP46rKoeybXh5yB4fngFkBuRCjmr','2018-02-22 08:09:56','2018-02-22 08:09:56'),
	(515,1,'o00H3igFxlRbvqlbre2MOeG9PwBQBhjN','2018-02-22 08:09:56','2018-02-22 08:09:56'),
	(516,1,'0oem5rsxKjPftUpguqYctxpFKQ7NxfQV','2018-02-22 08:09:56','2018-02-22 08:09:56'),
	(517,1,'quaIUM3DuIBIWUuIS7xmGxMbMwCqKgeV','2018-02-22 08:14:04','2018-02-22 08:14:04'),
	(518,1,'r9GNQDblBpGOtetRo8Wz3RLtlXw3EWtj','2018-02-22 08:14:06','2018-02-22 08:14:06'),
	(519,1,'F3H4iUAJAXaErgAXcueakRfmWTwmpPpO','2018-02-22 08:14:45','2018-02-22 08:14:45'),
	(520,1,'YDwyVQDafSXdOugKx3ILAmBFa9a45YNu','2018-02-22 08:14:54','2018-02-22 08:14:54'),
	(521,1,'rmsNzDLon8TmXvxEo6FhR980RXRqOiUo','2018-02-22 08:14:54','2018-02-22 08:14:54'),
	(522,1,'T6bzQBnGmlzjBLLdhbfBJfPDuzFbwFkf','2018-02-22 08:17:06','2018-02-22 08:17:06'),
	(523,1,'vsAl7xtA7quNRtnJxf9jtXHybrHOoaCO','2018-02-22 08:19:38','2018-02-22 08:19:38'),
	(524,1,'oN9uO4jHH1t22T7chGkDL6lfMfCGFCpM','2018-02-22 08:24:50','2018-02-22 08:24:50'),
	(525,1,'ywCqDdkKkamyYTpoKYMqATohz8BAD9rD','2018-02-22 08:24:52','2018-02-22 08:24:52'),
	(526,1,'gBnFznDNQkRPtub6yPW7ltfCFNoowvJk','2018-02-22 08:29:38','2018-02-22 08:29:38'),
	(527,1,'TanMLo4Z1iYdaxnpxKtfcjAvnN6Xf38e','2018-02-22 08:29:40','2018-02-22 08:29:40'),
	(528,1,'tmSIbFnydLuGtC0OWfwuL0Lz0173FHIU','2018-02-22 08:39:56','2018-02-22 08:39:56'),
	(529,1,'N0HO7XmnS8oUZqTwZWIyImf8xgy9X4mV','2018-02-22 08:40:59','2018-02-22 08:40:59'),
	(530,1,'GFUcetChxz29eKqwifS9BJhSBsIGSFWT','2018-02-22 08:41:39','2018-02-22 08:41:39'),
	(531,1,'SV5AB5SIrDmNLX0DR0J0Z9Wi4vqfiv5p','2018-02-22 08:43:12','2018-02-22 08:43:12'),
	(532,1,'X6LSWswkmUc17LCoRVTZl0fwtGwf94wz','2018-02-22 08:45:17','2018-02-22 08:45:17'),
	(533,1,'7aKBHP0NYkodcG9VgdinOkWJKaEosIDm','2018-02-22 08:46:25','2018-02-22 08:46:25'),
	(534,1,'cR0aDkn2NA1dycomFGZKoJ2EW9z0wSf1','2018-02-22 08:47:35','2018-02-22 08:47:35'),
	(535,1,'Zfl1n7Lq0wWhL6EpLYUmIe8w9MMfNnKe','2018-02-22 08:48:29','2018-02-22 08:48:29'),
	(536,1,'DcdwIpI6ImMLcMVuJG4JB2X9nhBaP8bL','2018-02-22 08:49:04','2018-02-22 08:49:04'),
	(537,1,'1OViA3Ase5NpbQONFUvSWvKZR5JHeisS','2018-02-22 08:49:06','2018-02-22 08:49:06'),
	(538,1,'Afi9LuyaY4AYU5GRqIQE2p9MzLnnAGzO','2018-02-22 08:49:12','2018-02-22 08:49:12'),
	(539,1,'TSkSaAkNbwxu2TlwMOwJYymL6TCbjF0H','2018-02-22 08:51:09','2018-02-22 08:51:09'),
	(540,1,'zj4GSS7KpUXsW2InIFCn1w3yaSSh0gN6','2018-02-22 08:53:29','2018-02-22 08:53:29'),
	(541,1,'zAsxl9iWhIrV2iRTqX3gjUa0mpUgKoo3','2018-02-22 08:53:50','2018-02-22 08:53:50'),
	(542,1,'yGB41WKHFCmNJoOjhS3XnM6R1tEsYhv0','2018-02-22 08:53:54','2018-02-22 08:53:54'),
	(543,1,'WD0lY5e0PJHpOkCCAOOmtHyusbJr8DLj','2018-02-22 08:53:54','2018-02-22 08:53:54'),
	(544,1,'GsxWx8kRBRZmDK1ac810X4rpA9EFgUZn','2018-02-22 08:53:54','2018-02-22 08:53:54'),
	(545,1,'mf0deYiaWwgvZODEEPLEgNEK2y8jHuWG','2018-02-22 08:54:16','2018-02-22 08:54:16'),
	(546,1,'aXR98eIur6wz6lmIuumHamEA6Ml7esow','2018-02-22 08:55:56','2018-02-22 08:55:56'),
	(547,1,'SfqK5SKPvSFO1n4vAAEJBPBjrOF6bs5Q','2018-02-22 08:56:43','2018-02-22 08:56:43'),
	(548,1,'b3de0pYOGVc9qGaCOWBeiy7qdxzA9AuM','2018-02-22 08:57:59','2018-02-22 08:57:59'),
	(549,1,'uTDBGaEVLdFywkr652tWZFi4GKevjqt4','2018-02-22 09:04:53','2018-02-22 09:04:53'),
	(550,1,'fMv3kqHwn3IzI3n0mqeXRTJpjhVqcV9E','2018-02-22 09:05:41','2018-02-22 09:05:41'),
	(551,1,'mQtqPyVWJCCvzxzcLkSRuqJ0mD2b9ZML','2018-02-22 09:08:42','2018-02-22 09:08:42'),
	(552,1,'wfRXnyRDMyNUL7bsWe5unV7yCnk6Mlxe','2018-02-22 09:08:53','2018-02-22 09:08:53'),
	(553,1,'XpMZknEQcT2kDWdjc7gCMR0Yq7IdAOPq','2018-02-22 09:14:35','2018-02-22 09:14:35'),
	(555,1,'bvpIre26JkqV28xf9L89XQlko4hbSZ0Z','2018-02-22 09:21:27','2018-02-22 09:21:27'),
	(556,1,'Al13302jH4URqoSQUKXtxq5oOfe6UfSm','2018-02-22 09:21:30','2018-02-22 09:21:30'),
	(557,1,'KSPKLZYDhcocSL8WBq4S59zdEqp5DxjB','2018-02-22 09:21:31','2018-02-22 09:21:31'),
	(558,1,'CvyhhB9rf2iXXo2Rr7eEVSv5EKTd8JRi','2018-02-22 09:21:31','2018-02-22 09:21:31'),
	(559,1,'H2aGWDFGFUnfbK3HyFzA7bJDp3plrL0f','2018-02-22 09:22:01','2018-02-22 09:22:01'),
	(560,1,'KMufiaaPzMk8a9tNKCb2BU53XdTtZEDp','2018-02-22 09:24:31','2018-02-22 09:24:31'),
	(561,1,'JIkwWfZ0mSdAqvkgxO5I5JPZtcozKhSK','2018-02-22 09:24:55','2018-02-22 09:24:55'),
	(562,1,'55ClwfliHgr2ybWOIYgpAZs9UNsMGaA8','2018-02-22 09:25:18','2018-02-22 09:25:18'),
	(563,1,'Hmsrqi4zvIbK3XKUBdioJ2mgKlefDIfw','2018-02-22 09:26:06','2018-02-22 09:26:06'),
	(564,1,'u7Rf0iKZ8LvY8KE4cTvhAMkDMwk1eWJT','2018-02-22 09:26:46','2018-02-22 09:26:46'),
	(565,1,'ivMkl3VPC8wl5ETDAZY9iehJI8fIikTT','2018-02-22 09:26:53','2018-02-22 09:26:53'),
	(566,1,'CePlHysmzE6tDm0sKSaMRX2chpRqfOzr','2018-02-22 09:26:57','2018-02-22 09:26:57'),
	(567,1,'0eRRSbuvfeMtm33s1Y4Thp6r72Hp2Xhf','2018-02-22 09:27:00','2018-02-22 09:27:00'),
	(568,1,'fHcQPMgr4wmnyFwftM1IIAhPTCYkilu5','2018-02-22 09:27:01','2018-02-22 09:27:01'),
	(569,1,'GsxwNUJHYUL3jWUdLHCl3p5lyBdD5ZYC','2018-02-22 09:27:01','2018-02-22 09:27:01'),
	(570,1,'Fut5qjFdMMuzPKx4SocnWqk4wqNdRgwO','2018-02-22 09:27:02','2018-02-22 09:27:02'),
	(571,1,'y5wT9dpGaUhIwDUevH8ZEhDPMpzNOgoM','2018-02-22 09:27:29','2018-02-22 09:27:29'),
	(573,1,'WweBm8GgIdgSwrPBPzU9HuPQB5n9vaW4','2018-02-22 09:30:05','2018-02-22 09:30:05'),
	(574,1,'Gu9bTsZ66Pgbl8AHP9guI2JfNL3CdSDr','2018-02-22 09:30:09','2018-02-22 09:30:09'),
	(575,1,'yFx8l5ChACHo6cIoTQ48wpdXF8GZpVuK','2018-02-22 09:30:09','2018-02-22 09:30:09'),
	(576,1,'LWNpsURz7cCPGKKqJ2O72wreOZSTbbKm','2018-02-22 09:30:09','2018-02-22 09:30:09'),
	(577,1,'Ld2cODfIfLO64Oe0EBksaG3gOuDHfpHM','2018-02-22 09:30:13','2018-02-22 09:30:13'),
	(578,1,'n2sxV5F2zCosP2uqa5cD2SKFQIHpIHpV','2018-02-22 09:30:13','2018-02-22 09:30:13'),
	(579,1,'1r3VWlnKBOZH7JWobak07ozQRkMghtX5','2018-02-22 09:31:12','2018-02-22 09:31:12'),
	(580,1,'7HLUEZBl0rfgKxN1JZ8qaeWDjkAsrIsB','2018-02-22 09:31:13','2018-02-22 09:31:13'),
	(581,1,'fQzlcniDJZRJUSkqBYyiIwBRajJRdwkt','2018-02-22 09:31:14','2018-02-22 09:31:14'),
	(582,1,'BKLeMQtKbGcl10yzun2JvdYx1wyTu8YF','2018-02-22 09:31:14','2018-02-22 09:31:14'),
	(583,1,'nEWTSylrd5xo6flcBgBlFUF0cEGGB9SF','2018-02-22 09:31:40','2018-02-22 09:31:40'),
	(584,1,'5N6LgJesucV6cAGBZwAOUJZzA1tzb1ym','2018-02-22 09:38:46','2018-02-22 09:38:46'),
	(585,1,'ng5Sw6XD6ajyOfpaXmx3gvfVebUYiwKW','2018-02-22 09:39:07','2018-02-22 09:39:07'),
	(586,1,'q64O9Ee7G1VXobiOaMDWg5eK78o7FAms','2018-02-22 09:39:27','2018-02-22 09:39:27'),
	(587,1,'av1rc5h0dzq9dS9B3GjDFnuZ1Rf6NJJl','2018-02-22 09:39:33','2018-02-22 09:39:33'),
	(588,1,'mrofwbmaIbjguZj8jaQL4CjOI22y1ilM','2018-02-22 09:41:31','2018-02-22 09:41:31'),
	(589,1,'88XZ61G5t9kLD4dTN65X0wZQFRCHHdti','2018-02-22 09:41:32','2018-02-22 09:41:32'),
	(590,1,'lnhxToSHf18V8aLMR7ooqiBdnROVm6Xm','2018-02-22 09:41:34','2018-02-22 09:41:34'),
	(591,1,'dOBv94JSAwVfSiulYHocs3sExxK9Z3NL','2018-02-22 09:41:34','2018-02-22 09:41:34'),
	(592,1,'iIG8fDD8Yf4rKG1G32rPdQcvdHNpVFIA','2018-02-22 09:41:34','2018-02-22 09:41:34'),
	(593,1,'NLEtYtRdVeKsKDmLRvoezYgRL3iR8xeo','2018-02-22 09:42:14','2018-02-22 09:42:14'),
	(594,1,'GdUsL9SIl9zD0bq4VaLmOxpLiMRqtdWM','2018-02-22 09:43:24','2018-02-22 09:43:24'),
	(595,1,'zW0OxzwxavJyNiPyw7gpjF76OHTLkFrC','2018-02-22 09:43:39','2018-02-22 09:43:39'),
	(596,1,'hQiPy8TSGaaIo7cbtzFVTpQ65bxrEwqB','2018-02-22 09:43:39','2018-02-22 09:43:39'),
	(597,1,'X8uNo6GE6OinxkjHEi5VxJiDHiG5Hyzp','2018-02-22 09:43:49','2018-02-22 09:43:49'),
	(598,1,'yVg3b1r9kXm0TExoTwalwhJIDXdQOe2w','2018-02-22 09:43:50','2018-02-22 09:43:50'),
	(599,1,'5rfrxx6Q49tnXkrEmm5YJZ3qSmtGQuki','2018-02-22 09:43:50','2018-02-22 09:43:50'),
	(600,1,'PqZ3nubsp6yNtcNOsUj6kjAoUNkemBCQ','2018-02-22 09:43:53','2018-02-22 09:43:53'),
	(601,1,'thnd91vqiDw5MYUJzkbqMuntjS4WcxSn','2018-02-22 09:45:30','2018-02-22 09:45:30'),
	(602,1,'C8cVRjtQwQL8B3mOyJvRJjxvIWnKa5pe','2018-02-22 09:45:30','2018-02-22 09:45:30'),
	(608,1,'6iClVSiSxZvMo8KpJMrGD2ifZSDcec1o','2018-02-22 10:20:48','2018-02-22 10:20:48'),
	(609,1,'lCcYkeoO8SnZf7C5cltlmJbh5u0PNwyl','2018-02-22 10:22:13','2018-02-22 10:22:13'),
	(610,1,'6ChdDMk7t3idPPWyKsn7AQbxzGjgfONg','2018-02-23 03:21:28','2018-02-23 03:21:28'),
	(611,1,'DNV6HjQvM7hMsJPiARU7MjbTAcKmufM8','2018-02-23 06:27:09','2018-02-23 06:27:09'),
	(612,1,'F7SxouT80aBWatVSPke2TowRuGbhokrV','2018-02-23 07:57:16','2018-02-23 07:57:16'),
	(613,1,'zqOpPcxWsESV97dusejAefWW6QdQxBbn','2018-02-23 07:57:47','2018-02-23 07:57:47'),
	(614,1,'nKr01mC6tYzneFxIhBcS26l4WdcWQwTz','2018-02-23 07:58:13','2018-02-23 07:58:13'),
	(615,1,'ZFUZDXBTBUNEPqfPKEXgjpWX3RF36aJE','2018-02-23 08:10:51','2018-02-23 08:10:51'),
	(616,1,'57hPxApivdEAtbYW2dfjIeCZdeWVpkns','2018-02-23 08:11:32','2018-02-23 08:11:32'),
	(617,1,'DEHOxkx36HmVov0nILuL9Qc6MzBhmsm1','2018-02-23 08:11:44','2018-02-23 08:11:44'),
	(618,1,'LZDb8v9xRQGSeMUrFyxhxJ5SropjxSwH','2018-02-23 08:11:56','2018-02-23 08:11:56'),
	(619,1,'mSyExWf1zENSoYHpjWxU1PaOjp3PzdXZ','2018-02-23 08:12:06','2018-02-23 08:12:06'),
	(620,1,'5WKikZ5gc7b5nNKy3QVhEzVsUnqgsuRT','2018-02-23 08:12:19','2018-02-23 08:12:19'),
	(621,1,'vJYugQJRVHrjDPXHLN2VywOC6p6b8TGs','2018-02-23 08:12:24','2018-02-23 08:12:24'),
	(622,1,'Y5LLsXEpf44dZ86bgRhCsaEQMnUyDwWP','2018-02-23 08:13:12','2018-02-23 08:13:12'),
	(623,1,'AQRnJL7V1P2UqosizDFHOseF4B6VFaNK','2018-02-23 08:13:22','2018-02-23 08:13:22'),
	(624,1,'eGGkxVbFTgcxx41AX4QUEHiCfvBKAmc3','2018-02-23 08:13:26','2018-02-23 08:13:26'),
	(625,1,'qMEgnPm8zHLxAasEriPCUmNqDPvUERo4','2018-02-23 08:13:32','2018-02-23 08:13:32'),
	(626,1,'u635NrrEIkLnc5AolI6m9VeNrl5icNQc','2018-02-23 08:13:37','2018-02-23 08:13:37'),
	(627,1,'dwwEb1prR4Hu53sDJAtOgC5lxLcWRBOv','2018-02-23 08:13:43','2018-02-23 08:13:43'),
	(628,1,'rpWbYTELNWI2i6RC3DBE6FY7u9RNl5wO','2018-02-23 08:25:39','2018-02-23 08:25:39'),
	(629,1,'ZWjKxO7U4TJUmexy7XXrxUDC3JAcMfc1','2018-02-23 08:25:45','2018-02-23 08:25:45'),
	(630,1,'n1iRTwkmhiTpazcPyVBmv2DgeleQPsLg','2018-02-23 08:25:59','2018-02-23 08:25:59'),
	(631,1,'JscOIOBtPq2NV7x87kS5YuWTOjCarXba','2018-02-23 08:28:01','2018-02-23 08:28:01'),
	(632,1,'XfvHHHWRpQ7VLzGNymEIRYrNf9sUbaQn','2018-02-23 08:28:05','2018-02-23 08:28:05'),
	(633,1,'txsSbrBeOD7zDv0NuNiGQucvM9i1Hihe','2018-02-23 08:40:00','2018-02-23 08:40:00'),
	(634,1,'4f6EeBGblMNM9jKFQWx8qmY3PgShKyNS','2018-02-23 08:40:51','2018-02-23 08:40:51'),
	(635,1,'ZG9nkiHPh0I8TiJFZOPZ8avwGA8cEAC0','2018-02-23 08:41:42','2018-02-23 08:41:42'),
	(636,1,'GZa2LnQ2DoyO65Qr96IxNGipRB3fRxEO','2018-02-23 08:44:52','2018-02-23 08:44:52'),
	(637,1,'RtQl6roL2m56qBInw2jAD10htGvC12Qi','2018-02-23 08:46:50','2018-02-23 08:46:50'),
	(638,1,'lLXU2mIlkgryckRLFcKAFtLoz29MQ9fb','2018-02-23 08:48:11','2018-02-23 08:48:11'),
	(639,1,'Mvk5dI5T9GHyMBCxIwns32jiN0L9z70v','2018-02-23 08:50:22','2018-02-23 08:50:22'),
	(640,1,'jTCWSyIn69jUvquYuP45jDnsJJkteXRS','2018-02-23 08:51:27','2018-02-23 08:51:27'),
	(641,1,'lfmZMe9KjjFfvULTOaCpKzbocjfxiNFU','2018-02-23 09:06:29','2018-02-23 09:06:29'),
	(642,1,'h54acSmqf6sltovuWPaQtddgskk0Xc21','2018-02-23 09:08:14','2018-02-23 09:08:14'),
	(643,1,'SVWsESb7cRySZkloPmpPad9Syxo4TQ8i','2018-02-23 09:10:25','2018-02-23 09:10:25'),
	(644,1,'QM4ztbwD2ps7xoswx2Nk9AFU3t9eS6hG','2018-02-23 09:11:13','2018-02-23 09:11:13'),
	(645,1,'xhV0ItSHp3DDZfBDtR3dr8H4pBBixSmU','2018-02-23 09:12:12','2018-02-23 09:12:12'),
	(646,1,'N2nxcUvaRH7kNFkoRRrVNoZ3RAZUiji5','2018-02-23 09:16:13','2018-02-23 09:16:13'),
	(647,1,'rFduP7dNxxx5s48NG2jEL4UQeJbvlSNJ','2018-02-23 09:16:57','2018-02-23 09:16:57'),
	(648,1,'mWgLB1lUlKfx0a4t5RT7UX5CmIvdNFuJ','2018-02-23 09:17:16','2018-02-23 09:17:16'),
	(649,1,'WY47w8cYSWbv8ompSt7nFkaF6IW1TJVj','2018-02-23 09:17:37','2018-02-23 09:17:37'),
	(650,1,'nvyTuisOjTqzV8b1H6Qu6qn8c5NZ5hww','2018-02-23 09:20:31','2018-02-23 09:20:31'),
	(651,1,'6bxt8wswX8gNIdpT0pcEEo1p4LfbtsXv','2018-02-23 09:23:12','2018-02-23 09:23:12'),
	(652,1,'CGesO8xDoBvBbPjLLC5ETRzxdFaFKhoL','2018-02-23 09:24:22','2018-02-23 09:24:22'),
	(653,1,'pVMBXVZmo7XRAsW4ZbEpMsOaCiW4X0nG','2018-02-23 09:24:44','2018-02-23 09:24:44'),
	(654,1,'pNNGbmJ0NLYyPsm7MudnuWBXlxndg17Z','2018-02-23 09:24:54','2018-02-23 09:24:54'),
	(655,1,'MpDoDFVCIibE2pHkRXOEtia3cv8gRr7d','2018-02-23 09:51:12','2018-02-23 09:51:12'),
	(656,1,'NPQ4bbfxxAWraff5iKvJB9aEozjz9sUb','2018-02-23 09:51:14','2018-02-23 09:51:14'),
	(657,1,'culCgGWx9ZufMRNeBlnJfU8l4IHbP9mv','2018-02-23 09:57:20','2018-02-23 09:57:20'),
	(658,1,'jbiCUcxfD4Bxjm2zI1pqlU9bohKfCWCP','2018-02-23 09:57:31','2018-02-23 09:57:31'),
	(659,1,'HyYnKv3Y8t95owiq49OU59Ya7hwQvADb','2018-02-24 03:15:22','2018-02-24 03:15:22'),
	(660,1,'zUCtz9T2ftPuDGNieyI1Nf5A042sTR3s','2018-02-24 03:25:10','2018-02-24 03:25:10'),
	(661,1,'8ng85AkPoeky4lUIKXriCs2zjvBheRy6','2018-02-24 03:45:10','2018-02-24 03:45:10'),
	(662,1,'n7t5szrsz0xlwIRVX8tEFVR4hH6wFKTz','2018-02-24 03:47:19','2018-02-24 03:47:19'),
	(663,1,'eBOWoVldWZgQZdKIWp6xLmdveNe4iMpt','2018-02-24 03:47:29','2018-02-24 03:47:29'),
	(664,1,'yDFLkPSbQ4eOOuGzQSb7j8fZhLoz5IHw','2018-02-24 05:40:15','2018-02-24 05:40:15'),
	(665,1,'WsXulvVrmKwhF31xgjiT7ccmdWcKhsC0','2018-02-24 05:40:30','2018-02-24 05:40:30'),
	(666,1,'WPvAw3kXf8LNv9tyVj9ebsoPCNbzAecm','2018-02-24 05:54:51','2018-02-24 05:54:51'),
	(667,1,'qFnn8aZ2kWS93av4wmoTWl59UK6pMfm1','2018-02-24 05:55:13','2018-02-24 05:55:13'),
	(668,1,'JQmvjgwleEg0mcZcmCCq1Ybirgby1F94','2018-02-24 06:30:28','2018-02-24 06:30:28'),
	(669,1,'eaAXTqx3PCc7SOlk2hMfxlYPpolgsCWT','2018-02-24 07:16:36','2018-02-24 07:16:36'),
	(670,1,'QYpbchBlXViyCmQf1pHorPZNdsMmqQSW','2018-02-24 07:17:45','2018-02-24 07:17:45'),
	(671,1,'rTK9ILdpVJdZLajd6Pcccuhdyg7idWKy','2018-02-24 07:19:38','2018-02-24 07:19:38'),
	(672,1,'eo5iHlPV97Op0QdnDC9Kxy3sFiTCN9Tf','2018-02-24 07:19:54','2018-02-24 07:19:54'),
	(673,1,'zZDSfs7ZLMJRJQ65n3R3VXXAFbwyVlI6','2018-02-24 07:20:13','2018-02-24 07:20:13'),
	(674,1,'TzsWbb8wwr7wKsn8MovltsbZkwfmsnIw','2018-02-24 07:20:20','2018-02-24 07:20:20'),
	(675,1,'pwOOnbBbwWabmRCff7jnCsPKybkAonkR','2018-02-24 07:25:01','2018-02-24 07:25:01'),
	(676,1,'7gtfYmbNTgpHmMGKqSgwFXseARvsjU4b','2018-02-24 07:31:42','2018-02-24 07:31:42'),
	(677,1,'A4QJxSzXnAnPwGzQU8jXTZ2NE2ZuEsWc','2018-02-24 07:32:36','2018-02-24 07:32:36'),
	(678,1,'0QyhMfSKIw8xVtAsUAhV2DwUbkdRTU9Z','2018-02-24 07:46:15','2018-02-24 07:46:15'),
	(679,1,'XkdJ3xsAeLflicLhIx7v0CMHXTbsPMeS','2018-02-24 07:47:19','2018-02-24 07:47:19'),
	(680,1,'x1UATgDGxirpEMrysDf27ssJfnJ1ODrr','2018-02-24 09:49:07','2018-02-24 09:49:07'),
	(681,1,'PtQCFWHaXwGXPuU2wywjwBaXqAITPpti','2018-02-24 09:49:34','2018-02-24 09:49:34'),
	(682,1,'tPu6Hhsr709oBktnd2yWtw9rR7QHoKAx','2018-02-24 09:50:18','2018-02-24 09:50:18'),
	(683,1,'JJklDgMweYFNjloZyuDR5MISCpGExAmH','2018-02-24 09:51:32','2018-02-24 09:51:32'),
	(684,1,'foJzFgySTuCYsvmQYnJVxDMAD52tgQ7T','2018-02-24 09:53:12','2018-02-24 09:53:12'),
	(685,1,'aKM5TU89jCygjGmSM6kjuLT0b8h7NjbC','2018-02-24 10:00:23','2018-02-24 10:00:23'),
	(686,1,'O5by0giF95gW8kznc5P5KGHvIne60RCq','2018-02-24 10:22:13','2018-02-24 10:22:13'),
	(687,1,'32tK3vUv7aFr2zgMXy8vp8CR5hpKn0Sz','2018-02-24 10:22:50','2018-02-24 10:22:50'),
	(688,1,'yWI6c2jZA4joo2waUT1r3EXRFwDh2Pck','2018-02-24 10:23:46','2018-02-24 10:23:46'),
	(689,1,'4tp7vEDGR0po1LM11j2abAvMugfT7ugv','2018-02-24 10:25:42','2018-02-24 10:25:42'),
	(690,1,'vkTMgt4obRLUz4bC9kSXdRCtdcx9gu9j','2018-02-24 10:26:44','2018-02-24 10:26:44'),
	(691,1,'H93NznZ44TPR1kVD0JaOvn9wII4Pibqg','2018-02-24 10:27:48','2018-02-24 10:27:48'),
	(692,1,'t87tYmxYxLjgDhzdWiaHJaE7azkAUUox','2018-02-24 10:29:17','2018-02-24 10:29:17'),
	(693,1,'vtVHNIrWd0MWLyJ2TqUWzYaq4YOqHTig','2018-02-24 10:29:56','2018-02-24 10:29:56'),
	(694,1,'gGNpKZIVnncmqoJ1damhrWckBpjEaZy3','2018-02-24 10:31:44','2018-02-24 10:31:44'),
	(695,1,'MriGXJ5RmiiZi1QIQScbxS5ZCf2mlnyh','2018-02-24 10:33:36','2018-02-24 10:33:36'),
	(696,1,'dpCqZb0ZrAkBEAjR5mzkTpC1wFa3Yz45','2018-02-24 10:34:43','2018-02-24 10:34:43'),
	(697,1,'qtuLisRUL0De6gWNQcEGikvGK5cxhcxO','2018-02-24 10:39:15','2018-02-24 10:39:15'),
	(698,1,'ZCPD17yvEbUk6yq94ZLcQ1zu8uat78Gl','2018-02-24 10:41:44','2018-02-24 10:41:44'),
	(699,1,'ZeuFATwJSIas7gtCdojtGDnE89g2gY2Y','2018-02-24 10:44:29','2018-02-24 10:44:29'),
	(700,1,'UPpwfNofnKOZDRbMiMe1KdmU4oWJ5RVq','2018-02-24 10:46:31','2018-02-24 10:46:31'),
	(701,1,'ClcoH43ONwsiRDUpSUoXd4O5c3XN4w4H','2018-02-26 03:07:03','2018-02-26 03:07:03'),
	(702,1,'FTDdWrx8aletRp6Hc8j3J8T49J6bWn1p','2018-02-26 03:07:21','2018-02-26 03:07:21'),
	(703,1,'nBqYeMRN9TjThsbeZcAFpdToHtKQ3AZo','2018-02-26 03:07:32','2018-02-26 03:07:32'),
	(704,1,'NOhVgyLC0QV43oEWlIxlgnOYq6Q7hNDx','2018-02-26 03:07:39','2018-02-26 03:07:39'),
	(705,1,'cSqh3s74aMSpZ6IIb7w2huHZlZBCs4xa','2018-02-26 03:09:38','2018-02-26 03:09:38'),
	(706,1,'8QVM1yvSJ2VQilm54sOOdISWEj4BVeKp','2018-02-26 03:11:30','2018-02-26 03:11:30'),
	(707,1,'uT9KaKF0XjVYCRt6qbt7vysWB6w43KJx','2018-02-26 03:14:56','2018-02-26 03:14:56'),
	(708,1,'clPO3TTdTZ6t64Tr9sKxDir5FOskcgky','2018-02-26 03:15:20','2018-02-26 03:15:20'),
	(709,1,'TT3SG03CEFVx0TsIzo6KekVV2UtnDzO7','2018-02-26 03:16:21','2018-02-26 03:16:21'),
	(710,1,'BrUJSsK2rHKl8Zs4DjbSQSkbMrkSXhzp','2018-02-26 03:25:05','2018-02-26 03:25:05'),
	(711,1,'jm4qWVIrEBpwYUEHW4y6Y4fyec0z55qw','2018-02-26 03:29:53','2018-02-26 03:29:53'),
	(712,1,'OMHs1aW2HV0BF40GS2brtHjMFIHXVVM9','2018-02-26 03:43:57','2018-02-26 03:43:57'),
	(713,1,'TSCbZ7Goxu2usqhcGqfK4qAgCYFSHD3z','2018-02-26 03:45:36','2018-02-26 03:45:36'),
	(714,1,'es1WXXAsjatiVW8oYa7nF0tPC6mQPXJu','2018-02-26 05:33:15','2018-02-26 05:33:15'),
	(715,1,'fm2qiFl8azcLPiZTffzc6IsyKvKwDGNP','2018-02-26 05:34:18','2018-02-26 05:34:18'),
	(716,1,'cMXGAr42qiqGTxBBtRV3S8utZJSOgItt','2018-02-26 05:35:08','2018-02-26 05:35:08'),
	(717,1,'jWvEuCk4SwHoYHvdmMEMUYV2U5T8c8vc','2018-02-26 05:35:50','2018-02-26 05:35:50'),
	(718,1,'6dPLtpmfDh2GlrJpb8kRS3tHv2Lg5J38','2018-02-26 05:40:17','2018-02-26 05:40:17'),
	(719,1,'lE1cIoV5EHfllCPndndD1ARE0F5emtCY','2018-02-26 05:41:40','2018-02-26 05:41:40'),
	(720,1,'cgOxMHYKn1DzUBs0evXDdWqIF4ILMNBz','2018-02-26 05:43:50','2018-02-26 05:43:50'),
	(721,1,'ft13UMHfWzWxzDgZObm74JjjbvVag5MY','2018-02-26 05:44:56','2018-02-26 05:44:56'),
	(722,1,'5EGIbH7sJ6l2HpeKKdjNOOkxPu1NImG4','2018-02-26 05:48:12','2018-02-26 05:48:12'),
	(723,1,'pGTPBoiUk8Ai61mmWDnLCac1Cx5WI7SC','2018-02-26 05:50:24','2018-02-26 05:50:24'),
	(724,1,'LXh3offdppMaURExLeTICUlgvPzU2h41','2018-02-26 05:58:58','2018-02-26 05:58:58'),
	(725,1,'QMZrOxIGL4hYvuiCttUDUdU9zGADtNZE','2018-02-26 06:01:09','2018-02-26 06:01:09'),
	(726,1,'bCvjzEIGp0WFQkE5jN7Jak868gJWPmmB','2018-02-26 06:06:17','2018-02-26 06:06:17'),
	(727,1,'pld9SsgE8MO9QHPmITjQzi7kHCiRxfPm','2018-02-26 06:07:17','2018-02-26 06:07:17'),
	(728,1,'3th3ypAksgCYAt5qKx1YiHWDgQQb1atp','2018-02-26 06:14:55','2018-02-26 06:14:55'),
	(729,1,'DGKVnth3g85HWP2jSXAGic1sIt8JDf0F','2018-02-26 06:16:44','2018-02-26 06:16:44'),
	(730,1,'RjCkj6A4Nscc1gOXyWdIEIlBtMXFY5YA','2018-02-26 06:25:27','2018-02-26 06:25:27'),
	(731,1,'aiKo735NlaFetVWFzQzF6ekyawEL3r61','2018-02-26 06:27:18','2018-02-26 06:27:18'),
	(732,1,'KI4dBmt5eQ7ZjbTQ1yoh93KdNnXMW49x','2018-02-26 06:39:14','2018-02-26 06:39:14'),
	(733,1,'lo58yDNsbwqDLgnveYh0X96m4aGjSxIJ','2018-02-26 06:49:00','2018-02-26 06:49:00'),
	(734,1,'PG52hmtD86Q9tDCMi0jdkzJ1TUxCvIGu','2018-02-26 06:49:25','2018-02-26 06:49:25'),
	(735,1,'4Qv4LpS7VVDBFB3itfFfpZEVxBk1F7Pm','2018-02-26 06:50:40','2018-02-26 06:50:40'),
	(736,1,'1v0zwF5BlUx0frlE8ISnJZzngzf0WYAK','2018-02-26 06:55:42','2018-02-26 06:55:42'),
	(737,1,'TmvHTA4U3aOJHsULZTluxGODASapF6I5','2018-02-26 06:59:44','2018-02-26 06:59:44'),
	(738,1,'7urKlJiGpszSn0yO1LtAXAjC46BHh3GY','2018-02-26 07:03:19','2018-02-26 07:03:19'),
	(739,1,'ldRZ0GzANwD1FqnDUQ3sLRb6QVOrcx9x','2018-02-26 07:04:47','2018-02-26 07:04:47'),
	(740,1,'BoG2r0eMlf6sVwy5VMBVkByiqQzUxdEb','2018-02-26 07:07:01','2018-02-26 07:07:01'),
	(741,1,'V6C0BmXCKO57o4UMS3CEXxxSch6dAEMO','2018-02-26 07:09:28','2018-02-26 07:09:28'),
	(742,1,'FjwDXkC2ArHXcIto2gIfaQTexSQgNAAc','2018-02-26 07:10:06','2018-02-26 07:10:06'),
	(743,1,'0bZnCE6DEJbXRskutYhfn2hn7w3h3IqD','2018-02-26 07:13:07','2018-02-26 07:13:07'),
	(744,1,'hffzyRSyvJAJvNJqlH5PwV5dIWPYKoR7','2018-02-26 07:13:36','2018-02-26 07:13:36'),
	(745,1,'h0jYTwCazxJ0mchilTEda4yBWoi8GnjY','2018-02-26 07:15:22','2018-02-26 07:15:22'),
	(746,1,'PYxGckyx7PoJ3vSaPHPwIfmadQc1E4Hk','2018-02-26 07:15:43','2018-02-26 07:15:43'),
	(747,1,'C4DcGmpFPRSkD94aACs6aF1yvIQ1F8vn','2018-02-26 07:18:28','2018-02-26 07:18:28'),
	(748,1,'MAsm8LcviemufL9x5jVXq4fiTSn0rw8o','2018-02-26 07:19:14','2018-02-26 07:19:14'),
	(749,1,'55deGY6SAbBWy0O6UbGJpVgACrr7MC2V','2018-02-26 07:19:42','2018-02-26 07:19:42'),
	(750,1,'3ljlO9Npojukl2iHVIwCrXgt30voaB4V','2018-02-26 07:19:54','2018-02-26 07:19:54'),
	(751,1,'GpfbimmaX9zutTIlWWWjyoHYReZmEfDi','2018-02-26 07:22:40','2018-02-26 07:22:40'),
	(752,1,'ktzMtlLS8q9Rq447xJreXUDBkYTrDv4t','2018-02-26 07:23:16','2018-02-26 07:23:16'),
	(753,1,'QujNAylV5mujKCDoP4ZjNg0e9UMz7c02','2018-02-26 07:24:48','2018-02-26 07:24:48'),
	(754,1,'bSXISkXL5JRelffZ7LXqJQFGtv8D3JjW','2018-02-26 07:24:59','2018-02-26 07:24:59'),
	(755,1,'S7dJHtHcAOzNS9GVvQSYwKPDqqx4ynEl','2018-02-26 07:25:05','2018-02-26 07:25:05'),
	(756,1,'vm8HnCrS11rULgAmbPimJjMknijvECVa','2018-02-26 07:25:12','2018-02-26 07:25:12'),
	(757,1,'VWc4tCVFEeOBHVE28w8iEIFxCSCU3NqT','2018-02-26 07:25:42','2018-02-26 07:25:42'),
	(758,1,'Z0kkpbpIQt34wyZeui26Ffo7ynjaDLtd','2018-02-26 07:27:10','2018-02-26 07:27:10'),
	(759,1,'AuVhnPwob854Pp7hSNF8jYOdvobKj7pH','2018-02-26 07:27:57','2018-02-26 07:27:57'),
	(760,1,'zZxiU1paiuf0kRALWmiNSJjuUPhGLBc8','2018-02-26 07:29:38','2018-02-26 07:29:38'),
	(761,1,'6P8RAL7US6FiW8wpxUcResALhWJqdV5S','2018-02-26 07:30:11','2018-02-26 07:30:11'),
	(762,1,'jJjNfOt7715KktEbox2RSSYBRPp3hRjv','2018-02-26 07:30:15','2018-02-26 07:30:15'),
	(763,1,'n5OBVUj1uhMSSZkoYrnqSlgsfyqw9tWC','2018-02-26 07:30:32','2018-02-26 07:30:32'),
	(764,1,'tal8PvVdnrxLyEfL86lj3MeamY3yVBX5','2018-02-26 07:39:21','2018-02-26 07:39:21'),
	(765,1,'VqjHAx3clNxFuYztkZuiu2Vl175PLCzF','2018-02-26 07:39:24','2018-02-26 07:39:24'),
	(766,1,'Hg1CwnYwM2GaRT6vZy8aI5CViefpqZKc','2018-02-26 07:40:04','2018-02-26 07:40:04'),
	(767,1,'p13ob72niFvXEwwIe6xgBhQDxghy9qnM','2018-02-26 07:51:50','2018-02-26 07:51:50'),
	(768,1,'1rUUy7aWdI3ZsGdLgfeBdFeHCYZXk2Ac','2018-02-26 07:53:11','2018-02-26 07:53:11'),
	(769,1,'Z6Dd8tSpFtA1wa0mgsBQ1AlT00OYXhSo','2018-02-26 07:53:23','2018-02-26 07:53:23'),
	(770,1,'bbJE2E9sucQLH0YOAoK39kbKzpKlK37f','2018-02-26 07:54:32','2018-02-26 07:54:32'),
	(771,1,'CsA4lqKwZcuWkJ1ckwZW29gi7STAKJnX','2018-02-26 07:54:35','2018-02-26 07:54:35'),
	(772,1,'t1hjNKLfDJBA9rhHr3VZ7kvgm4MKDHwh','2018-02-26 07:55:39','2018-02-26 07:55:39'),
	(773,1,'ReIXboMvZj3TV3KyjIs6IhemYV4npZfF','2018-02-26 07:55:48','2018-02-26 07:55:48'),
	(774,1,'VFiV8t7SWRfNOHYM0FLFvSeb45v9gFcm','2018-02-26 07:55:53','2018-02-26 07:55:53'),
	(775,1,'VHxOUduOCX8dZqy4D5gPC8DWAEVeiXgg','2018-02-26 07:56:37','2018-02-26 07:56:37'),
	(776,1,'p9aq9fcYPsP4K0i2ntQm01AEkQJMMlBG','2018-02-26 07:58:16','2018-02-26 07:58:16'),
	(777,1,'SE7O1iPIFsR9xTlJuP56A79iHgr9rXS7','2018-02-26 07:59:19','2018-02-26 07:59:19'),
	(778,1,'Wcj4SpJvvrPCBrBnvGBMn88ELNgoTqYa','2018-02-26 07:59:22','2018-02-26 07:59:22'),
	(779,1,'7jnUu55yl3E66CPpjPcIDTvXPxbTs59x','2018-02-26 08:00:31','2018-02-26 08:00:31'),
	(780,1,'AUi5GtKmYD2iAALpvbdQ3fi5fVjwNZid','2018-02-26 08:01:00','2018-02-26 08:01:00'),
	(781,1,'CrDT2tLBCAnl3TNFNuPew9L3iJ46WwHw','2018-02-26 08:01:03','2018-02-26 08:01:03'),
	(782,1,'pGCuOTRUgRBZPrkSwSFzzixngjaIg9uc','2018-02-26 08:01:09','2018-02-26 08:01:09'),
	(783,1,'GPiyhZj5LZsnQGRfNtiRvZMqdOtSyPGH','2018-02-26 08:07:41','2018-02-26 08:07:41'),
	(784,1,'kq2rjqQQw9R6YJqIkwSP83YhA0vFhPnW','2018-02-26 08:07:59','2018-02-26 08:07:59'),
	(785,1,'dCqjJFLP3Pr68w0adiK6ekDUBkzgmS9G','2018-02-26 08:10:37','2018-02-26 08:10:37'),
	(786,1,'BUf2chsPODlPXZRe1nDsJhMcD0e5NUhp','2018-02-26 08:11:51','2018-02-26 08:11:51'),
	(787,1,'psPQNNzTSezKJX7AVQxl6OfDfDyPRD0C','2018-02-26 08:13:38','2018-02-26 08:13:38'),
	(788,1,'oE60h3ElzCmuyqHjJ5L4RzN2DSywzsOl','2018-02-26 08:14:18','2018-02-26 08:14:18'),
	(789,1,'pKjivf3QKJNpTZGmoMGFiC4GI4naiGUX','2018-02-26 08:15:38','2018-02-26 08:15:38'),
	(790,1,'XTAyRqiH7cQlFL9TvTYdx6gBQMfCpoqT','2018-02-26 08:15:59','2018-02-26 08:15:59'),
	(791,1,'QOrsMPADdP9lwmYkLkPVMSjwvOEqq7NB','2018-02-26 08:17:09','2018-02-26 08:17:09'),
	(792,1,'6h5CruxQGXexDqIyylZLxnPuFp8PeeW4','2018-02-26 08:19:08','2018-02-26 08:19:08'),
	(793,1,'FUzLFUK0g0rjeyAyWJ3CVKuFjhs9G0OL','2018-02-26 08:20:23','2018-02-26 08:20:23'),
	(794,1,'c9UgrnUIWNwxReUoRSemoQ7n3zTlrc0Z','2018-02-26 08:21:27','2018-02-26 08:21:27'),
	(795,1,'Lfqw9MmMeEowEigS5mfWKb6TpZvWEta5','2018-02-26 08:26:10','2018-02-26 08:26:10'),
	(796,1,'WEM0xIGnDKNC7dX3LoUf5mqhEPstt5Cv','2018-02-26 08:26:46','2018-02-26 08:26:46'),
	(797,1,'5J4CMw9KmbSMUiyYDwtlKEecmN8GKvYh','2018-02-26 08:27:53','2018-02-26 08:27:53'),
	(798,1,'r7yfGyhHUbghSRhdkclTmre3dGi68V49','2018-02-26 08:28:46','2018-02-26 08:28:46'),
	(799,1,'ZIoP0m6g8PzmmzpYBfWfo7oCX7ycP16t','2018-02-26 08:29:05','2018-02-26 08:29:05'),
	(800,1,'dxGHpedSKIVlIIiI9HCZ9LlRBc7oLqZi','2018-02-26 08:29:11','2018-02-26 08:29:11'),
	(801,1,'cNCsFjD50UI0jJ94Y5PSLIcJeIVqautL','2018-02-26 08:29:14','2018-02-26 08:29:14'),
	(802,1,'bJ5voF2lMeZkYpuQnAapESWxRpOtNKrw','2018-02-26 08:29:32','2018-02-26 08:29:32'),
	(803,1,'2Hn9qv5ELyxp0ryhxHkftk7K54I5gs3Q','2018-02-26 08:30:00','2018-02-26 08:30:00'),
	(804,1,'1drklTfmgx9fZoeEcpKlHYjFg8r9O2Vt','2018-02-26 08:30:58','2018-02-26 08:30:58'),
	(805,1,'jmGhUe33CnHUYmTokgUBKImnFCstyKZc','2018-02-26 08:32:49','2018-02-26 08:32:49'),
	(806,1,'4MaLOCplJ3FUf5XPCoOCb7VSpJG30O5W','2018-02-26 08:35:40','2018-02-26 08:35:40'),
	(807,1,'2G25ViYAMbAVg5v16tcAFLSN9l1Ir33J','2018-02-26 08:35:51','2018-02-26 08:35:51'),
	(808,1,'cSdsw7n8aTneD3mCkuSwsM2adccgMLTh','2018-02-26 08:36:16','2018-02-26 08:36:16'),
	(809,1,'OLY9oW8Fj2F7ZrphBklCKytE09T3HtgY','2018-02-26 08:36:18','2018-02-26 08:36:18'),
	(810,1,'gwoVEInoGHh7ULmGdjObKpv16CkdZ5Ij','2018-02-26 08:40:58','2018-02-26 08:40:58'),
	(811,1,'kuJn7wodanc9MXC8neyIRZ9vIXXe1jXR','2018-02-26 08:41:07','2018-02-26 08:41:07'),
	(812,1,'B06Q0Yq94ivNjpu26klZMrsVOLFqDeTp','2018-02-26 08:41:11','2018-02-26 08:41:11'),
	(813,1,'p0sAAS2D37wmB47FZFpaFjOsztgsZLDJ','2018-02-26 08:45:26','2018-02-26 08:45:26'),
	(814,1,'luHkwGU26McxqHQ2fP1q0alsZIU3bLf0','2018-02-26 08:47:33','2018-02-26 08:47:33'),
	(815,1,'9K3kutQL5brozhKBIiRDocQ3WPWRWBdq','2018-02-26 08:50:13','2018-02-26 08:50:13'),
	(816,1,'H6tNahayEuGik5OGA2tV1geCZQXQT0vt','2018-02-26 08:52:05','2018-02-26 08:52:05'),
	(817,1,'NJSnleBRAX9Y0puJCPgRmbm9lcxGgM2H','2018-02-26 09:00:51','2018-02-26 09:00:51'),
	(818,1,'h7NEdZyFIbEjHPL2ZwsBMAXYkxl8al0h','2018-02-26 09:26:05','2018-02-26 09:26:05'),
	(819,1,'fVqxLBk06rxRibnvZL5I1j1vvw46pln6','2018-02-26 09:48:22','2018-02-26 09:48:22'),
	(820,1,'76FP0SKZPVHkUX9ahIb8Fn49bf1PWTGi','2018-02-26 09:48:29','2018-02-26 09:48:29'),
	(821,1,'4hy8RQ0hLDPhMaydHMMe7TZzLTA9pQvj','2018-02-26 09:52:19','2018-02-26 09:52:19'),
	(822,1,'KqqLVqCKEqjLc5TITaP0bwv9wtQiFu1A','2018-02-26 09:54:55','2018-02-26 09:54:55'),
	(823,1,'vftvhfPrPl697ZYLiC4Libsm66oUFTIs','2018-02-26 09:55:27','2018-02-26 09:55:27'),
	(824,1,'qSOyOxCXFosBPiQaT0ZtJB7yjjNLpEBS','2018-02-26 09:56:11','2018-02-26 09:56:11'),
	(825,1,'b5G33U92OJhTurRrqsfirbEfECGyzYWQ','2018-02-26 09:57:13','2018-02-26 09:57:13'),
	(826,1,'VWMmNgVZZ28sCUdGOatirqSnrpicKMa6','2018-02-26 09:58:04','2018-02-26 09:58:04'),
	(827,1,'nVf6H0TYUgzoivz0Y9ci5xSWWI9OI0H6','2018-02-26 10:00:00','2018-02-26 10:00:00'),
	(828,1,'DkjL7uOWGNcUQvKZKHxT9turbXjXnDSg','2018-02-26 10:00:28','2018-02-26 10:00:28'),
	(829,1,'7FJRp2cQRhH9wnmlYwQG1wlEvUHmiamm','2018-02-26 10:05:12','2018-02-26 10:05:12'),
	(830,1,'AwXrEBy2LsQdkijPRpAb026N7u080vI1','2018-02-26 10:06:08','2018-02-26 10:06:08'),
	(831,1,'OCsLhrooiYAPdY8eB93XbpYm4qWS0rYV','2018-02-26 10:10:45','2018-02-26 10:10:45'),
	(832,1,'yezBfMJ56nkoRId52TO1qHhxzjS92HTx','2018-02-26 10:11:54','2018-02-26 10:11:54'),
	(833,1,'HwGHw5Akqh34gBGTSlzXlm0DwpDDP5Tx','2018-02-26 10:14:40','2018-02-26 10:14:40'),
	(834,1,'qnylQC0ZWLYWqbAXpnKw1gBd8uyKlwSm','2018-02-26 10:16:25','2018-02-26 10:16:25'),
	(835,1,'I346Yolz7Lb1vAGqXirHxjVbFE4712Kt','2018-02-26 10:19:01','2018-02-26 10:19:01'),
	(836,1,'Cv7Fl00ntNTvERwiLnEOQHixN27wqI48','2018-02-26 10:20:13','2018-02-26 10:20:13'),
	(837,1,'q2WwJ1Z1t7Hl9lDh3jSk479lypINPEw1','2018-02-26 10:21:07','2018-02-26 10:21:07'),
	(838,1,'uALeUGcc2Q8FD40A7uXjzWrWvfPO9szW','2018-02-26 10:24:25','2018-02-26 10:24:25'),
	(839,1,'BwWxZJAi7ycyu7KiJ2lbZsghPI0dGCpw','2018-02-26 10:24:30','2018-02-26 10:24:30'),
	(840,1,'SLkVMZ1ywaPyPImxw9Rv3i3eyqDC27iD','2018-02-26 10:25:40','2018-02-26 10:25:40'),
	(841,1,'zu89rMRe9FmJrwEF8dWarG2DsMJzxkEh','2018-02-26 10:25:42','2018-02-26 10:25:42'),
	(842,1,'xbIvaCrH99fvKicJSPDXoImhvmUsc6Ww','2018-02-26 10:28:22','2018-02-26 10:28:22'),
	(843,1,'PccHllgXY8odwBhFMbteu0ZLIhgxlfGW','2018-02-26 10:36:06','2018-02-26 10:36:06'),
	(844,1,'aQJhdXyrj4ewpVpNfvSlkiSv2qaeqMR3','2018-02-26 10:39:27','2018-02-26 10:39:27'),
	(845,1,'O90Zg2YW1x2MkAIOmsMg0PvbG1dzs5gP','2018-02-26 10:40:13','2018-02-26 10:40:13'),
	(846,1,'SeIuG7qP9c9WxlwTU1bV8BrGa4vkPXQf','2018-02-26 10:40:48','2018-02-26 10:40:48'),
	(847,1,'Zlb2Unt5OuQemhYQumThkWEK3dW643Fr','2018-02-26 10:41:47','2018-02-26 10:41:47'),
	(848,1,'vbLIGFSGEdi5Ln5O4e8VepNdX5wpftSX','2018-02-26 10:42:44','2018-02-26 10:42:44'),
	(849,1,'TL2ihrskLA51cJK3hU3rkbLEmKWvATR8','2018-02-26 10:42:46','2018-02-26 10:42:46'),
	(850,1,'m5nNzc7ukyNGEjTFs5KB6HeWw3878yPh','2018-02-26 10:43:36','2018-02-26 10:43:36'),
	(851,1,'WulucyKgYXPl6Q0yZkc6SYq37IhrKet9','2018-03-12 01:33:52','2018-03-12 01:33:52'),
	(852,1,'JmJNNNEcBquMDuAV7n2PzwXV611vOFGg','2018-03-12 01:36:25','2018-03-12 01:36:25'),
	(853,1,'upFuDdBo3vpbh43qpJX5bchMzubDnGtY','2018-03-12 01:38:34','2018-03-12 01:38:34'),
	(854,1,'YcJJDDNWh52WJMnelZp9zszc4FN50Jni','2018-03-12 01:38:35','2018-03-12 01:38:35'),
	(855,1,'HK1NqRr1HD2IQL9SjDvl0UWmCUOls32C','2018-03-12 01:38:38','2018-03-12 01:38:38'),
	(856,1,'y9qM9VBTHew37kPkF3LoQnhWHy5PGXVk','2018-03-12 01:38:39','2018-03-12 01:38:39'),
	(857,1,'RBnXiCi8rGM1tRh94NfZWECtwpmA9r3e','2018-03-12 01:53:06','2018-03-12 01:53:06'),
	(858,1,'MHaXNCQbnraqkOt9iBZKrs0kqL05WQIJ','2018-03-12 01:53:51','2018-03-12 01:53:51'),
	(859,1,'vs3v30o6K1fxLwpVCqJSXU3wVMLtJgN9','2018-03-12 01:53:52','2018-03-12 01:53:52'),
	(860,1,'xng3K1O8agoDNNf5n8LNgFAe55exjcVv','2018-03-12 01:54:31','2018-03-12 01:54:31'),
	(861,1,'CuC6zbKqN6ClcBYPzcNUX9hrO7kSkNdt','2018-03-12 02:02:51','2018-03-12 02:02:51'),
	(862,1,'roZVsU6NJl9rBpEZcCeuGc1bPZzzJpkd','2018-03-12 02:05:02','2018-03-12 02:05:02'),
	(863,1,'DwNoeLZnnnrsxrAhfIYbtsOf6y5UbSEn','2018-03-12 02:07:22','2018-03-12 02:07:22'),
	(864,1,'Po4xCygwAQf40EQGp8RBQVaMYZlsQYiL','2018-03-12 02:10:45','2018-03-12 02:10:45'),
	(865,1,'QKJwlng1XBvzDzaSsWIH4jIhAqQOjhYM','2018-03-12 02:27:41','2018-03-12 02:27:41'),
	(866,1,'EiATIajIum4r1DHtwEg1mkuUVbDnjmnl','2018-03-12 02:28:30','2018-03-12 02:28:30'),
	(867,1,'jjDqmEsrh5RbhopnG7W5k2m0gnI9UjTA','2018-03-12 02:28:31','2018-03-12 02:28:31'),
	(868,1,'4uLRkT6NZcybCxVa8rLtnz6LzpBxfnBR','2018-03-12 02:32:19','2018-03-12 02:32:19'),
	(869,1,'55Vi39p8A3RvqfKwQwUB3Xsvk3e8QFHe','2018-03-12 02:32:26','2018-03-12 02:32:26'),
	(870,1,'4bkPQfkHxPqsgs0uKJNh9vayk2mdYt9P','2018-03-12 02:32:27','2018-03-12 02:32:27'),
	(871,1,'nek7kvE6Icc4rxGYu0OXxZzOJcyadLdT','2018-03-12 02:35:34','2018-03-12 02:35:34'),
	(872,1,'tavjkXhXrNhdjKOp0yW4BUhtfnco8AtQ','2018-03-12 02:45:11','2018-03-12 02:45:11'),
	(873,1,'daJAh6BRfS9Vvf6mpC4EWcKigCsjZCpC','2018-03-12 02:45:18','2018-03-12 02:45:18'),
	(874,1,'5K6XqTVFaCi4hAdI8KTsBkaNk9vdTw7f','2018-03-12 02:45:25','2018-03-12 02:45:25'),
	(875,1,'apdIATmy5OeksKGMazkWOCYKbbRzSdVK','2018-03-12 02:45:26','2018-03-12 02:45:26'),
	(876,1,'D3oqQby8tP8ap7xriIzSDsoe3YpOuOEv','2018-03-12 02:50:28','2018-03-12 02:50:28'),
	(877,1,'HgoQ7VeqwZ4WjlvASj1vWEgMdRspzLos','2018-03-12 02:50:35','2018-03-12 02:50:35'),
	(878,1,'vB3OrcXJSZB4vbBdXWgBtjkI9aqvBsFa','2018-03-12 02:50:35','2018-03-12 02:50:35'),
	(879,1,'XO7fgPR6CNxOeMMd56c6WaWHsf0v7Pzv','2018-03-12 02:51:07','2018-03-12 02:51:07'),
	(880,1,'bOvoqnHhR97uBFaIcVhEozTSfkpis2Ej','2018-03-12 02:51:07','2018-03-12 02:51:07'),
	(881,1,'ugHeXmb02O4Jd1mjJyeBriTO9i07Cofv','2018-03-12 02:51:45','2018-03-12 02:51:45'),
	(882,1,'w46uReVG6NqdVrLPRYMG83q8HibgDJ9J','2018-03-12 02:51:45','2018-03-12 02:51:45'),
	(883,1,'71zclv1uc6cwxVlKa1dhJ5hw64rB2ot6','2018-03-12 02:55:03','2018-03-12 02:55:03'),
	(884,1,'SfjStMNYvlkQ4H431tiNTtWWY80dwHPq','2018-03-12 02:55:04','2018-03-12 02:55:04'),
	(885,1,'kfZRcp2pQ0bAyXIYDSSXT8IYl3Tvltzz','2018-03-12 02:56:37','2018-03-12 02:56:37'),
	(886,1,'nyaslxXFGRz3eqqdiXvCKJert6JD1imE','2018-03-12 02:56:37','2018-03-12 02:56:37'),
	(887,1,'RrqonPXkQ7D2VWr0KY2hkztjmiYRnnzy','2018-03-12 02:57:06','2018-03-12 02:57:06'),
	(888,1,'NkEgLjKRjDLrY1lnnVf9VAEC13o9G0TT','2018-03-12 02:57:07','2018-03-12 02:57:07'),
	(889,1,'Eg1jTdGsTkp3ARaPz9d2onuuMgVr6Sg1','2018-03-12 02:58:09','2018-03-12 02:58:09'),
	(890,1,'yr4SB9AHWhX3mw7R1dIRDuJ6m7X3uNzQ','2018-03-12 02:58:09','2018-03-12 02:58:09'),
	(891,1,'xETXaqw3E0hRslBT6PGuZETpcsZkStQi','2018-03-12 02:59:00','2018-03-12 02:59:00'),
	(892,1,'pOvGgP0lyyOYPrgM2mXzJH306G8YuFbE','2018-03-12 02:59:00','2018-03-12 02:59:00'),
	(893,1,'FZko3xSmpv9xPPbAVx0d5f1Tl6RXcf0j','2018-03-12 03:09:39','2018-03-12 03:09:39'),
	(894,1,'Ktm5PY3qeGwebTUhOkULIGuyNgs1OAAl','2018-03-12 03:09:39','2018-03-12 03:09:39'),
	(895,1,'jNBfienKuYCFQd2jE4Q35uNxGMJPHa9z','2018-03-12 03:10:20','2018-03-12 03:10:20'),
	(896,1,'qrqv2hueb5cJpfpP2IG8vMBas8wP6xyp','2018-03-12 03:10:20','2018-03-12 03:10:20'),
	(897,1,'Sm9kMvaVteVb9GpGRWmxe53dSjZbxvDV','2018-03-12 03:11:35','2018-03-12 03:11:35'),
	(898,1,'rvanT10gEZcc2T7SPlX9zlGOi78EWlSX','2018-03-12 03:11:35','2018-03-12 03:11:35'),
	(899,1,'YdcKdRmc39yoj9KvXH7xJAdShcM1GVU1','2018-03-12 03:12:33','2018-03-12 03:12:33'),
	(900,1,'kKg9bYrPbtQl1f74PHiK8I6OIHFXiAK8','2018-03-12 03:12:33','2018-03-12 03:12:33'),
	(901,1,'D65wrvoarpdlkvzlbXJf11dhvrHbPCGb','2018-03-12 03:15:20','2018-03-12 03:15:20'),
	(902,1,'4hUh3eB81PMY2bwHMkrsOa34AAAGYTQC','2018-03-12 03:15:20','2018-03-12 03:15:20'),
	(903,1,'mRacmEzzR2mbUlRRqqrD6qDOR6cP8Q8W','2018-03-12 03:17:24','2018-03-12 03:17:24'),
	(904,1,'sO2Spztgc6ThbjYQLBiogbXcCEx1b28e','2018-03-12 03:17:24','2018-03-12 03:17:24'),
	(905,1,'XBcTEyGWw2qMOMTACigRumHKiNXHC5O8','2018-03-12 03:18:37','2018-03-12 03:18:37'),
	(906,1,'U8sNWoSX16QYRd4aM2Voau8OWN2jTCdR','2018-03-12 03:18:37','2018-03-12 03:18:37'),
	(907,1,'kr2ZvTMfzNV2kAdeSX837lKjcpORtlwd','2018-03-12 03:19:34','2018-03-12 03:19:34'),
	(908,1,'bORuu9KvoKYc7kN6krVR1zAP2KneKxsZ','2018-03-12 03:19:35','2018-03-12 03:19:35'),
	(909,1,'RyyE37TLBKObNAni9EwlN4MUNHrzJdVY','2018-03-12 03:20:20','2018-03-12 03:20:20'),
	(910,1,'sZAFucte7ap2RpW0k4tTNvusI3NCGJMi','2018-03-12 03:20:21','2018-03-12 03:20:21'),
	(911,1,'ZIP393wZbL17m9oYawcMdamlsPgJkBj4','2018-03-12 03:22:43','2018-03-12 03:22:43'),
	(912,1,'Vp0Jj1aEJIiAvCH4bnvErj6dLjfPC1Ap','2018-03-12 03:22:43','2018-03-12 03:22:43'),
	(913,1,'OIyOKPjbRVVl455LLP0ozsJnoapLfovD','2018-03-12 03:38:13','2018-03-12 03:38:13'),
	(914,1,'XzOqen98ktMxc1y0xDJ2JtUpvMx6oo0L','2018-03-12 03:38:13','2018-03-12 03:38:13'),
	(915,1,'xgDDEnOcfcyEcgjFkETFVelmzOY7IJa6','2018-03-12 03:39:08','2018-03-12 03:39:08'),
	(916,1,'xb9653oFfsN7WXCIrMYU9XCZJwRDMf0o','2018-03-12 03:39:08','2018-03-12 03:39:08'),
	(917,1,'thYPZVm1cK7omgVY11iVlRnvG7h4uhuK','2018-03-12 03:41:05','2018-03-12 03:41:05'),
	(918,1,'xRUKKAKK5Bid6r1A5OFDIcAzgxSyGKW1','2018-03-12 03:41:05','2018-03-12 03:41:05'),
	(919,1,'MBemZiUxpgmEvEA4Er1ikWflXqVT7usP','2018-03-12 03:42:23','2018-03-12 03:42:23'),
	(920,1,'PSn2HhKVOe8S0GJt1dlb6fsmHGqZ7gG6','2018-03-12 03:42:23','2018-03-12 03:42:23'),
	(921,1,'x5uBw5J4gSOx0Vq6NFa5tRnafBVtdKyn','2018-03-12 03:43:48','2018-03-12 03:43:48'),
	(922,1,'ZfXXviXA7OtDYrlHh2dSnYqZs0mY97Iz','2018-03-12 03:43:48','2018-03-12 03:43:48'),
	(923,1,'A32h6VpJ8VUrZ9tCsVtwTXX42bEqhpyd','2018-03-12 03:43:57','2018-03-12 03:43:57'),
	(924,1,'h2ivV2HuDF7uJEU0i9uEnrKLJPRkN6Ou','2018-03-12 03:43:57','2018-03-12 03:43:57'),
	(925,1,'PDagDoJ0ByFdOx6pBG799yRMANLkuxUG','2018-03-12 03:51:51','2018-03-12 03:51:51'),
	(926,1,'0kO91QjiPyrAnuNUTq5X0jKAqiYuAtSw','2018-03-12 03:51:51','2018-03-12 03:51:51'),
	(927,1,'W2YoUfhTAGF3sP1KqgrIG6bpuJCqdCeq','2018-03-12 03:52:19','2018-03-12 03:52:19'),
	(928,1,'uJIheCnq6QthHmbU8k67KtwvGylvO7i1','2018-03-12 03:52:19','2018-03-12 03:52:19'),
	(929,1,'7PWYpZRxeqY5wtjYtAu31wsV4wq8SyzN','2018-03-12 03:52:53','2018-03-12 03:52:53'),
	(930,1,'Evoz4796qtJlGJ8iahmihHE7YIs1ZCBx','2018-03-12 03:52:53','2018-03-12 03:52:53'),
	(931,1,'JCdF7oNHKJadqDyPzPPDfWpmyrIQGyiF','2018-03-12 03:54:38','2018-03-12 03:54:38'),
	(932,1,'QclsqgN83AXcQv5jiimO0upwvXVc93Os','2018-03-12 03:54:39','2018-03-12 03:54:39'),
	(933,1,'Ahk6VwZ83cDrceFhzGY7XPQJ9aapOcg0','2018-03-12 03:58:24','2018-03-12 03:58:24'),
	(934,1,'4rRa6tOGj9kbHD0PKFeweHmYnhoswcYT','2018-03-12 03:58:24','2018-03-12 03:58:24'),
	(935,1,'ikr12ZVunqW5uvp65JyOOOaf6eDMZMz3','2018-03-12 05:30:17','2018-03-12 05:30:17'),
	(936,1,'A6LqdhOauW2BfAcQDFqT9Kxj5SqwaPW0','2018-03-12 05:30:17','2018-03-12 05:30:17'),
	(937,1,'z23xmQeva7cMiu4LYEj9s5NhxbB8KNjV','2018-03-12 05:31:16','2018-03-12 05:31:16'),
	(938,1,'fkAq9jFLXjs5mkbjqL01DzZU1ZsqrUvv','2018-03-12 05:31:16','2018-03-12 05:31:16'),
	(939,1,'qaJyYkYAiXIFoYYP8m1J44qr3CCW5oMc','2018-03-12 05:34:01','2018-03-12 05:34:01'),
	(940,1,'0kiQwnmU9mxgNvMWOBdu19D0TMO6G70i','2018-03-12 05:34:01','2018-03-12 05:34:01'),
	(941,1,'zl5c34mQAvVHvarSgjWWGc3HFCFFhVMo','2018-03-12 05:37:41','2018-03-12 05:37:41'),
	(942,1,'IoAFQ1lbhD2p5OZjbjfFD7uin2F2K30U','2018-03-12 05:37:41','2018-03-12 05:37:41'),
	(943,1,'W77TgrYObvHosIPeuurO7wTSanlwobqw','2018-03-12 05:38:32','2018-03-12 05:38:32'),
	(944,1,'CiO2QkQOpaDGsh09TxHCOytiqecn0RkS','2018-03-12 05:38:33','2018-03-12 05:38:33'),
	(945,1,'QLWt66onSzFGZbIaTlHResMthGMFMDKO','2018-03-12 05:39:05','2018-03-12 05:39:05'),
	(946,1,'p2A20uw1MCdXATZitdEgfcB22y2GBThS','2018-03-12 05:39:05','2018-03-12 05:39:05'),
	(947,1,'8Id0tvgbyClPBXCVzSRnrYjTfVte4oUl','2018-03-12 05:41:42','2018-03-12 05:41:42'),
	(948,1,'03UHreCm6e5T5OARmUzjXs4agQYSBSVD','2018-03-12 05:41:42','2018-03-12 05:41:42'),
	(949,1,'50H2Enmk5vW7NOvHta4Vnn0oc8nxOfau','2018-03-12 05:42:59','2018-03-12 05:42:59'),
	(950,1,'PFutInJfgCklWbf340k76cx9b4BsNqcp','2018-03-12 05:42:59','2018-03-12 05:42:59'),
	(951,1,'eoG7lZG823o8OQ7tAmMFYGnkvLcVhdez','2018-03-12 05:43:50','2018-03-12 05:43:50'),
	(952,1,'9nNsR1oceUy2YoFz71WryOvcHem0lKyh','2018-03-12 05:43:50','2018-03-12 05:43:50'),
	(953,1,'eUe3DMllXgUUx8YX3L9rVFGG17S3WCDM','2018-03-12 05:47:03','2018-03-12 05:47:03'),
	(954,1,'noNfXvEnSiz4E6ijAFbUIG6c0Jw3kwld','2018-03-12 05:47:03','2018-03-12 05:47:03'),
	(955,1,'oL1eNDL663zAWewJe2hBKuR5afc5vUAD','2018-03-12 05:49:56','2018-03-12 05:49:56'),
	(956,1,'Cq6R7vqbDoh63QqSiXSK1o5mv1QPlJb5','2018-03-12 05:49:57','2018-03-12 05:49:57'),
	(957,1,'bj58xMgFsg6W1TI8n8M5ysP35SYyx6Ho','2018-03-12 05:50:30','2018-03-12 05:50:30'),
	(958,1,'tUilwL6dXxiW2qnai6AAxUPNKoUoAcBY','2018-03-12 05:50:30','2018-03-12 05:50:30'),
	(959,1,'TaxTPxhPf3i42wARFP0TqsZFB4nM8laQ','2018-03-12 06:07:01','2018-03-12 06:07:01'),
	(960,1,'WGvhy6q2tTtGV7QAL0l26t6DCUlPXxDy','2018-03-12 06:07:01','2018-03-12 06:07:01'),
	(961,1,'MDsL2XycZQJvk3FhBF2iGstL1YRNP2Tl','2018-03-12 06:07:37','2018-03-12 06:07:37'),
	(962,1,'EkKEZpPiEsLJyg2GrCjkARVK6Qhn2J19','2018-03-12 06:07:37','2018-03-12 06:07:37'),
	(963,1,'wyCgooNLESQ31AffMZsqSEA2PodaesAA','2018-03-12 06:08:19','2018-03-12 06:08:19'),
	(964,1,'hARuNDd0p6JSnZWqUKTCTPb1ho1FuFCl','2018-03-12 06:08:19','2018-03-12 06:08:19'),
	(965,1,'yIuYA20hDbYbykiKZ7cDBn4hSoBuBhn7','2018-03-12 06:08:44','2018-03-12 06:08:44'),
	(966,1,'76QVPRawqnEZTLIQzBorJVCWwe91WeE4','2018-03-12 06:08:44','2018-03-12 06:08:44'),
	(967,1,'69qmKtS761PFEo6SMFQlG241VqbOnwQO','2018-03-12 06:13:55','2018-03-12 06:13:55'),
	(968,1,'D6i2p3Q8kYVXgCfvGiDs4HRAj2j0AYaC','2018-03-12 06:13:55','2018-03-12 06:13:55'),
	(969,1,'KC8PV8ee6a9J7xF9x52aBThRjmturLWG','2018-03-12 06:15:19','2018-03-12 06:15:19'),
	(970,1,'88uxKa3mV3JGUiASbuEvkEwy6ssAgixC','2018-03-12 06:15:20','2018-03-12 06:15:20'),
	(971,1,'YmQMub4Buui6ukY5MA2NpGPCJBc07eyJ','2018-03-12 06:15:31','2018-03-12 06:15:31'),
	(972,1,'KGSzPuFCtLVLPHsQxFmxwDFvXw1lgckd','2018-03-12 06:15:32','2018-03-12 06:15:32'),
	(973,1,'27jmsqWL7bHSgVWSu54b4VGw43d7wQNw','2018-03-12 06:17:00','2018-03-12 06:17:00'),
	(974,1,'sApd3Dx80W7x5bClc396gcMjY2bzo1y1','2018-03-12 06:17:00','2018-03-12 06:17:00'),
	(975,1,'oH5da0aUxVXAeX25g4NfAzEWANq2rhtz','2018-03-12 06:17:42','2018-03-12 06:17:42'),
	(976,1,'ySAtfrm1rhYBZqfskzzHVWKc35EOnRwi','2018-03-12 06:17:42','2018-03-12 06:17:42'),
	(977,1,'onAnYaJw55YcxurEPifrb31iBKkV6EN2','2018-03-12 06:18:34','2018-03-12 06:18:34'),
	(978,1,'H8pDpLKW6yJopCnRNrqTLhGzWgrwoKec','2018-03-12 06:18:35','2018-03-12 06:18:35'),
	(979,1,'CDHHcbfgKkjZTHpJYJiMB3FyPKlWwUys','2018-03-12 06:20:27','2018-03-12 06:20:27'),
	(980,1,'M0AlLYwFB2oZsiYTna4N1hdX1ghg5RxG','2018-03-12 06:20:27','2018-03-12 06:20:27'),
	(981,1,'bC2UEUxkobAlIQIRDGpGEpzbWC5A1K4K','2018-03-12 06:21:23','2018-03-12 06:21:23'),
	(982,1,'qchBMXtqSwDknT13Wtv1tDXF30efPBii','2018-03-12 06:21:23','2018-03-12 06:21:23'),
	(983,1,'QFmL1WRytNPKHTZbDePb0017yrNIM3SC','2018-03-12 06:22:34','2018-03-12 06:22:34'),
	(984,1,'PXEocxCtnUIVZkIPOla4XeVik9XkGZf8','2018-03-12 06:22:34','2018-03-12 06:22:34'),
	(985,1,'Ci81xlDk55H4flnxLbuX2h94N6r6lvse','2018-03-12 06:23:02','2018-03-12 06:23:02'),
	(986,1,'tVmUZuNrErqXqlSwvICNNt4rmhv0zCLk','2018-03-12 06:23:03','2018-03-12 06:23:03'),
	(987,1,'3WJlulP7oRTHo3eFpO7eKrUoYsZIjRzb','2018-03-12 06:24:43','2018-03-12 06:24:43'),
	(988,1,'ZZ4YMtwWzjmEk6iNDUrZChOixVsDdbdP','2018-03-12 06:24:44','2018-03-12 06:24:44'),
	(989,1,'mY94OBTPLa61JFmcNwOsWpYQICp7Crsf','2018-03-12 06:26:27','2018-03-12 06:26:27'),
	(990,1,'fqNMfrhoqL9ARpJiUO5SUK3yO8mvuu7X','2018-03-12 06:26:28','2018-03-12 06:26:28'),
	(991,1,'wJ51jD3HDzoKjUhczLlmHDhHsZiFvOvF','2018-03-12 06:26:54','2018-03-12 06:26:54'),
	(992,1,'2XllUpwdV054GsckqyGyCtbHp4m48psn','2018-03-12 06:26:54','2018-03-12 06:26:54'),
	(993,1,'dyZJ1ycsEkjLji9gIMiuTZOe3RVZ5cb1','2018-03-12 06:27:21','2018-03-12 06:27:21'),
	(994,1,'qxvHAn0SCw7Le16v2B25utmGyCUQoeM5','2018-03-12 06:27:21','2018-03-12 06:27:21'),
	(995,1,'r1EZOxtiJNmucXD9tmydaoOAfmzgBjdC','2018-03-12 06:28:38','2018-03-12 06:28:38'),
	(996,1,'c6ZpW6RM9lGxiylm6CI5AcLS3fHPNnFC','2018-03-12 06:28:39','2018-03-12 06:28:39'),
	(997,1,'uqCycHXHFOAEKF3YFIZt0p3lab3vzwRT','2018-03-12 06:31:55','2018-03-12 06:31:55'),
	(998,1,'GqaFcxqHOAi8j5qkViL4s3a4hY2NDtpr','2018-03-12 06:31:55','2018-03-12 06:31:55'),
	(999,1,'zJu99Y8TM5j1FVo6m76WUFGpyuyNzA8d','2018-03-12 06:32:52','2018-03-12 06:32:52'),
	(1000,1,'rF0LKCyVJfLXXBtzLLI42gPxFPJyhmVt','2018-03-12 06:32:52','2018-03-12 06:32:52'),
	(1001,1,'Xu23gfpf3CCgf41h594fT1xO6SUQJdiW','2018-03-12 06:33:23','2018-03-12 06:33:23'),
	(1002,1,'wji2SZDzkU6VuVGtfZAnZqIjTbGkSukb','2018-03-12 06:33:23','2018-03-12 06:33:23'),
	(1003,1,'So9RJQEFf4LEAVjBRBHZOU49iqUkZc5Y','2018-03-12 06:43:22','2018-03-12 06:43:22'),
	(1004,1,'oxuFMPVawA3JZFFOKQw7HAycJJWvQFFm','2018-03-12 06:43:22','2018-03-12 06:43:22'),
	(1005,1,'Tv4kelsZIyTMl6QQSUz6viyS5qrm8HJE','2018-03-12 06:44:15','2018-03-12 06:44:15'),
	(1006,1,'HzIrdtvBl2gGZxUjae0Np3vmmM0rdlMN','2018-03-12 06:44:15','2018-03-12 06:44:15'),
	(1007,1,'LoITtQRWoBwMr5te69DxM6uKoNZCXCDw','2018-03-12 06:51:23','2018-03-12 06:51:23'),
	(1008,1,'9FiKVSbOv4dHaEQ8r3a9xEhzLyvIySEh','2018-03-12 06:51:23','2018-03-12 06:51:23'),
	(1009,1,'1JyIGSOwSSosfqQKMuPlOuqdsEw3sPA3','2018-03-12 06:52:50','2018-03-12 06:52:50'),
	(1010,1,'tSwvmOY4i4gx6FqOpr9II6indAR56SK6','2018-03-12 06:52:51','2018-03-12 06:52:51'),
	(1011,1,'kwQ6BL8HykAaMTNlhDwopQMaxYU8YzjF','2018-03-12 06:53:55','2018-03-12 06:53:55'),
	(1012,1,'5utN9NQSl6R2Tfqh5kNiUjC1BN6Iod53','2018-03-12 06:53:55','2018-03-12 06:53:55'),
	(1013,1,'vkxLNVNq7siTHZAcxUtJKv9Ee6e5YsGh','2018-03-12 06:54:39','2018-03-12 06:54:39'),
	(1014,1,'qaBuRJemTW21U7rK9xyzICD8b9nVNeEx','2018-03-12 06:55:05','2018-03-12 06:55:05'),
	(1015,1,'0CQiftduMipjTwbtyrcBZMC3F7gJGUR3','2018-03-12 06:55:05','2018-03-12 06:55:05'),
	(1016,1,'0N7c6gRRVla9iT8Q0pw1f0IIjjn9ew7N','2018-03-12 07:05:19','2018-03-12 07:05:19'),
	(1017,1,'hak9rlgSAF1X0J1R2MBNGPr33yzvNRwv','2018-03-12 07:05:19','2018-03-12 07:05:19'),
	(1018,1,'JCBMRh0flxs2xxJBCqB7qrt19867OxqG','2018-03-12 07:09:19','2018-03-12 07:09:19'),
	(1019,1,'ZT8HWyxUJplexI5xtD3A6NZluaZwJlQ5','2018-03-12 07:09:19','2018-03-12 07:09:19'),
	(1020,1,'WgCUfXyFS1u2eLJg1C44m9wfRr9OTIf9','2018-03-12 07:10:30','2018-03-12 07:10:30'),
	(1021,1,'iWMuYe2iYiE5EQPji6pjHRp4SvvGntk4','2018-03-12 07:10:30','2018-03-12 07:10:30'),
	(1022,1,'ZwRB8L8LGQVSCXZChuRyFJtvoozO3Ngo','2018-03-12 07:11:56','2018-03-12 07:11:56'),
	(1023,1,'eCbutQaXKPD6Nf6OS6vRaMr96SVJBVh9','2018-03-12 07:11:56','2018-03-12 07:11:56'),
	(1024,1,'VnxbMUkZhZRhy3fCNKrJfR9LWxP4I3JA','2018-03-12 07:13:21','2018-03-12 07:13:21'),
	(1025,1,'qejKe8mXqZ8UFxp42kAEH38eNSzoAENz','2018-03-12 07:13:21','2018-03-12 07:13:21'),
	(1026,1,'bSqNGpHiWTwkW3Fsga7XD1mOzfoFpQoS','2018-03-12 07:14:06','2018-03-12 07:14:06'),
	(1027,1,'nNH26dCcW4QPVnG21tzHyE0uLMPSTAxN','2018-03-12 07:14:06','2018-03-12 07:14:06'),
	(1028,1,'0g4VpyCkpNhMk70S4DkQL3y5NCCZligI','2018-03-12 07:15:58','2018-03-12 07:15:58'),
	(1029,1,'o4iyzZiZqIwgTtENIKPALgXFIbylTHS8','2018-03-12 07:15:59','2018-03-12 07:15:59'),
	(1030,1,'rTdYkpKnSpf76kAShp4M8u29UeABm3On','2018-03-12 07:16:24','2018-03-12 07:16:24'),
	(1031,1,'ezhVYX7VgDcUmcXRW7lSMedrph8eyQio','2018-03-12 07:16:24','2018-03-12 07:16:24'),
	(1032,1,'pYyZ6TFxR5FvC3tq9cxnfM7twNbUHXmW','2018-03-12 07:17:34','2018-03-12 07:17:34'),
	(1033,1,'pESDVkerdVf3WTJpg0CxZX6KoQOGFxzZ','2018-03-12 07:17:34','2018-03-12 07:17:34'),
	(1034,1,'vwG0bWtpHilueLvOkaZqJwh0wrzQVOJq','2018-03-12 07:19:27','2018-03-12 07:19:27'),
	(1035,1,'eaox8eDwZBnkP4dzklqFraZl3bF0txsd','2018-03-12 07:19:28','2018-03-12 07:19:28'),
	(1036,1,'iB5RzJZnav192hTG9f4rzKhmV393WCm4','2018-03-12 07:20:05','2018-03-12 07:20:05'),
	(1037,1,'onMR7p3VyDd8MIBt2HyOXDHE7rIu9tQd','2018-03-12 07:20:05','2018-03-12 07:20:05'),
	(1038,1,'zbsimR10yybxKEfhOp1ZEXEF79v6po5i','2018-03-12 07:28:24','2018-03-12 07:28:24'),
	(1039,1,'bxxOfmSgG01KPNGBpjCH205VhWwbFDTm','2018-03-12 07:28:24','2018-03-12 07:28:24'),
	(1040,1,'fdhH1J8WhSiisVVkym3wRBeFZXBhl0gK','2018-03-12 07:36:07','2018-03-12 07:36:07'),
	(1041,1,'JiolKFphRqZKDLoxab0QB1EQ8YV4rsWT','2018-03-12 07:36:07','2018-03-12 07:36:07'),
	(1042,1,'ZMlAWKpeUm5o37dX9R9e8dLv0CF0fdVY','2018-03-12 07:39:18','2018-03-12 07:39:18'),
	(1043,1,'rmrt4S6zgPhax0N3yhVDuSwHMvHrcy9f','2018-03-12 07:39:18','2018-03-12 07:39:18'),
	(1044,1,'cAb0vI8yzsxSXVRHYZramtZ8tORHeXrH','2018-03-12 07:40:30','2018-03-12 07:40:30'),
	(1045,1,'Wy8ScaZnRWSWKBhLC9Zjj5405TeO2Pd8','2018-03-12 07:40:30','2018-03-12 07:40:30'),
	(1046,1,'hCnfwMlfGIbaqeC2pT3ClZ8zd2Ac5AI4','2018-03-12 07:54:32','2018-03-12 07:54:32'),
	(1047,1,'G0YWpmMMDFv41rhlq5sk4oWEEGDKv73J','2018-03-12 07:54:32','2018-03-12 07:54:32'),
	(1048,1,'kzPno12qPSBxtCXRhbuljkla1WSshVvq','2018-03-12 08:01:46','2018-03-12 08:01:46'),
	(1049,1,'ih9qlPVtxRyP4LyDBhkPXh0gsyFrQubo','2018-03-12 08:01:46','2018-03-12 08:01:46'),
	(1050,1,'5Dq2CcORARe972hXKovhRc6DuT401BuG','2018-03-12 08:06:42','2018-03-12 08:06:42'),
	(1051,1,'2MFbzbFjqhqQkVobGq3P3EOFwI4jc52T','2018-03-12 08:06:42','2018-03-12 08:06:42'),
	(1052,1,'NeDCzBRGc30OVHhaUekETDhGivQH8wzs','2018-03-12 08:08:15','2018-03-12 08:08:15'),
	(1053,1,'61hPdT4EpW5sNwn9oDTMLc7VoTlK6f4S','2018-03-12 08:08:15','2018-03-12 08:08:15'),
	(1054,1,'D77mIXcWbvOISjmc8j9R9EA5u4GywoBF','2018-03-12 08:08:26','2018-03-12 08:08:26'),
	(1055,1,'3uvMLlepiz00LkXHYdjIaKdzOOqxyu6Q','2018-03-12 08:08:26','2018-03-12 08:08:26'),
	(1056,1,'dycdlFp3aqlveMZFfatGyw5pwTkY3fnQ','2018-03-12 08:09:05','2018-03-12 08:09:05'),
	(1057,1,'CRyFL7gxD3JuP2f99dzpjrG49UHgnzhA','2018-03-12 08:09:05','2018-03-12 08:09:05'),
	(1058,1,'HibezuxrZVSL7M8hQIrUmpdakJwkY6mD','2018-03-12 08:09:19','2018-03-12 08:09:19'),
	(1059,1,'iJpByXkXR9waKBjmTQWof7GrXunnGONY','2018-03-12 08:09:19','2018-03-12 08:09:19'),
	(1060,1,'UeIfYr1fE4uCRlMNHSY45MDiDcfJVR3l','2018-03-12 08:10:33','2018-03-12 08:10:33'),
	(1061,1,'AxYxr3GVLottpvf3iXMDPu8Qu78etu6J','2018-03-12 08:10:33','2018-03-12 08:10:33'),
	(1062,1,'HcE73j2jwfogVuU8FxgJR07g5b4wQrK5','2018-03-12 08:20:00','2018-03-12 08:20:00'),
	(1063,1,'hIgHHfHMpHDlm1Zru2DElpquJqXqGe5d','2018-03-12 08:20:00','2018-03-12 08:20:00'),
	(1064,1,'IwPIvsETbk9vax8zrHd1eQLPae2Ob8GK','2018-03-12 08:21:24','2018-03-12 08:21:24'),
	(1065,1,'4dqVkam3MPGhiE7K0D86kt8ISeVXS4SV','2018-03-12 08:21:25','2018-03-12 08:21:25'),
	(1066,1,'XsLm0m1gyIv7ppu86odwRIOkX0JAw8Mq','2018-03-12 08:25:46','2018-03-12 08:25:46'),
	(1067,1,'ZDw8e1MqJqeb4XrO9PUOTgfGn8MjB8Sk','2018-03-12 08:25:46','2018-03-12 08:25:46'),
	(1068,1,'O7gqrGm3iW2dtFpyoCT4T2SQq0bHsi0c','2018-03-12 08:27:15','2018-03-12 08:27:15'),
	(1069,1,'kZ7woL0V9sMQ7f5QuYMbzBamMMCfP9pt','2018-03-12 08:27:15','2018-03-12 08:27:15'),
	(1070,1,'Pnb59uCIpMYoLCmfSH5mp0l0IZTpWM38','2018-03-12 08:31:57','2018-03-12 08:31:57'),
	(1071,1,'zk68xmceYu33O2dZuDeKLhDRQ9na3N2O','2018-03-12 08:31:57','2018-03-12 08:31:57'),
	(1072,1,'VWJECYyhc4YKFowWFwYvO8Zz11OzOhYB','2018-03-12 08:34:28','2018-03-12 08:34:28'),
	(1073,1,'GMlB3DSLFarOj7htWIDE6U2w5Sf0xV44','2018-03-12 08:34:28','2018-03-12 08:34:28'),
	(1074,1,'5EkSkVnIF7slH0yOLfHzqM31DXaLHrct','2018-03-12 08:35:06','2018-03-12 08:35:06'),
	(1075,1,'39KC5wLqgpBhxq7TjMzu6yEWnnjJQ37z','2018-03-12 08:35:06','2018-03-12 08:35:06'),
	(1076,1,'d45FG3wdFSRyhroKijYrJOfvFkP3Aszm','2018-03-12 08:39:38','2018-03-12 08:39:38'),
	(1077,1,'qZG315whqfZ5wRNzTwVCfmm8EtqhkQ6F','2018-03-12 08:39:38','2018-03-12 08:39:38'),
	(1078,1,'QdZxVMKrBwy0kaDLGiW4WLIRYMRQs6xj','2018-03-12 08:40:34','2018-03-12 08:40:34'),
	(1079,1,'Vv0vkZoaLzBRinBrmmqaOqAfe0oh4heQ','2018-03-12 08:40:35','2018-03-12 08:40:35'),
	(1080,1,'so6lVyxgwtTLmdu5kC2HBcQO5iV5LJ7g','2018-03-12 08:42:17','2018-03-12 08:42:17'),
	(1081,1,'puXJ3HJd82YSw9B6q9l4KYImcLOX6ra2','2018-03-12 08:42:17','2018-03-12 08:42:17'),
	(1082,1,'7wI992wqLAczkEd6TbspneSHtd4g3PXt','2018-03-12 08:43:52','2018-03-12 08:43:52'),
	(1083,1,'cKGMARpg4ScKxGGQLxiqAOLn0LNBufRw','2018-03-12 08:43:52','2018-03-12 08:43:52'),
	(1084,1,'fVazqzbQlt4MCcHxxptGx0cd86Gib34B','2018-03-12 08:48:58','2018-03-12 08:48:58'),
	(1085,1,'XJFZPzkIvUnxoYnYsUaQusLFMrTKjqWd','2018-03-12 08:48:58','2018-03-12 08:48:58'),
	(1086,1,'zwVs7QnTN9iDnN7GzHoMuMM3c09wmM2R','2018-03-12 08:49:32','2018-03-12 08:49:32'),
	(1087,1,'yx9sTeoHX7AxUbzQXaeleteqoxYzDLwF','2018-03-12 08:49:32','2018-03-12 08:49:32'),
	(1088,1,'M6dy7yr2Oh1dEdMG7KRfjvdED8WWrj0w','2018-03-12 08:49:57','2018-03-12 08:49:57'),
	(1089,1,'QWwj4539q0OhQOCYxu3WiXSHBbbCdUFj','2018-03-12 08:49:57','2018-03-12 08:49:57'),
	(1090,1,'4mbWE6jFZCpVFt98ZfqxjL46fBCwSSUA','2018-03-12 08:51:45','2018-03-12 08:51:45'),
	(1091,1,'9dBgnOy7qK5XBAmv87vz2wNvUL6G4DYF','2018-03-12 08:51:45','2018-03-12 08:51:45'),
	(1092,1,'bsoDrcYnwCvLWXdzEZco2QRRXw5H2ATr','2018-03-12 08:53:10','2018-03-12 08:53:10'),
	(1093,1,'osxDWqKeEU4bZZDcLqR9sSQFQVKTZrAe','2018-03-12 08:53:10','2018-03-12 08:53:10'),
	(1094,1,'RmNcK0HiIN1ItoHgV6nZpZCDrFRbeuC1','2018-03-12 08:53:51','2018-03-12 08:53:51'),
	(1095,1,'hQcLS6tnWgMPqu5AfzwFjkroNPFFZ4FV','2018-03-12 08:53:51','2018-03-12 08:53:51'),
	(1096,1,'hmQm9pStGrWFs8v5cr5g5HHglRilYMZP','2018-03-12 08:54:15','2018-03-12 08:54:15'),
	(1097,1,'gEehPDYGqA5iE1x132nvvB2QtAH7wZl2','2018-03-12 08:54:15','2018-03-12 08:54:15'),
	(1098,1,'QvoELLChLU14NwtfNWNKE5JJNmQN9J4G','2018-03-12 08:54:28','2018-03-12 08:54:28'),
	(1099,1,'ZmzBXpqYHcfrvIlBWe6PDi1DAN3QlGK4','2018-03-12 08:54:28','2018-03-12 08:54:28'),
	(1100,1,'WEiJnU0ShZ71CwymQkLgl2Dy6op5fqUF','2018-03-12 08:54:58','2018-03-12 08:54:58'),
	(1101,1,'cpD3Atvqzun8sQrH0Y3nZxjbwpGpjVUY','2018-03-12 08:54:58','2018-03-12 08:54:58'),
	(1102,1,'bTrEsLVBOj7Rh9EO2PuLPf0PRcZOpBxo','2018-03-12 08:56:18','2018-03-12 08:56:18'),
	(1103,1,'9o6PT2dBlwdBEoWucnnlx3BijFttKkZn','2018-03-12 08:56:18','2018-03-12 08:56:18'),
	(1104,1,'kXSGqSXGciITMc4PflfJ8ICLUyvnXEMC','2018-03-12 08:57:04','2018-03-12 08:57:04'),
	(1105,1,'lpsfPPzY0CJTKQUspK9oavjYIladkU0a','2018-03-12 08:57:27','2018-03-12 08:57:27'),
	(1106,1,'z1LaT9cSU3SmDztIC0qltELbyDCOlRzz','2018-03-12 08:59:36','2018-03-12 08:59:36'),
	(1107,1,'xW9X2cYhewwfK5jBNnhBTNqo9rklPfcF','2018-03-12 09:00:39','2018-03-12 09:00:39'),
	(1108,1,'VGkSyAqBQeEBqtpxNBDPSLjALIkN83e1','2018-03-12 09:02:09','2018-03-12 09:02:09'),
	(1109,1,'aTCIfVmVIHCjzAZW6lKEt9bV6NKM2XLk','2018-03-12 09:03:58','2018-03-12 09:03:58'),
	(1110,1,'khyLQO5y78Ic0P2EFzz1M6fbss7E4drY','2018-03-12 09:05:12','2018-03-12 09:05:12'),
	(1111,1,'EQWUUj6bkgpA1mwpbOdwDPw8g3fUUf6U','2018-03-12 09:06:55','2018-03-12 09:06:55'),
	(1112,1,'nXFN9zO9S7uvhDdrRiGRkkc4Plghj9px','2018-03-12 09:07:49','2018-03-12 09:07:49'),
	(1113,1,'NVCr9SyfSnP8c8DZMa7jTyvWKzu9o7pX','2018-03-12 09:07:52','2018-03-12 09:07:52'),
	(1114,1,'uVlJEf3KdJ6hKhWQ9aiZ4qBo90uB3TwA','2018-03-12 09:08:42','2018-03-12 09:08:42'),
	(1115,1,'aP08Zoy4giAONXzdvPKPtweCEBkQgGV8','2018-03-12 09:08:42','2018-03-12 09:08:42'),
	(1116,1,'d7O87RdexkUQ4OYfCtlXjDm5BeBqUVxb','2018-03-12 09:33:31','2018-03-12 09:33:31'),
	(1117,1,'UttR6Spk0M4P2fyJiRfDjHTqTPe41Jui','2018-03-12 09:33:31','2018-03-12 09:33:31'),
	(1118,1,'exwTU25hwIg6VyXS4VqyTGWTUg0SReiJ','2018-03-12 09:34:20','2018-03-12 09:34:20'),
	(1119,1,'N883gJf16j4QbFo9JbyYS7o75VoygdUh','2018-03-12 09:34:20','2018-03-12 09:34:20'),
	(1120,1,'3gsU0kZhd6fei1ZdGreZugznbWdtdOlY','2018-03-13 01:48:07','2018-03-13 01:48:07'),
	(1121,1,'niLKhbfTIGZAjlg2z1S9uO99EEG8k3ls','2018-03-13 01:48:08','2018-03-13 01:48:08'),
	(1122,1,'NzOtcY5FKg7Fd5WH9b3KnC8nBwTl6hUM','2018-03-13 01:48:09','2018-03-13 01:48:09'),
	(1123,1,'EEromBx3hAoM1psSej0MYAXlQVHWAk99','2018-03-13 01:49:06','2018-03-13 01:49:06'),
	(1124,1,'gSenqoXM2ecun2c8OVsxwNi4BVv0SEeE','2018-03-13 01:49:06','2018-03-13 01:49:06');

/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product__attr_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product__attr_translations`;

CREATE TABLE `product__attr_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attr_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product__attr_translations_attr_id_locale_unique` (`attr_id`,`locale`),
  KEY `product__attr_translations_locale_index` (`locale`),
  CONSTRAINT `product__attr_translations_attr_id_foreign` FOREIGN KEY (`attr_id`) REFERENCES `product__attrs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table product__attrs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product__attrs`;

CREATE TABLE `product__attrs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `attr_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_for_sku` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `product__attrs` WRITE;
/*!40000 ALTER TABLE `product__attrs` DISABLE KEYS */;

INSERT INTO `product__attrs` (`id`, `product_id`, `attr_key`, `value`, `is_for_sku`, `created_at`, `updated_at`)
VALUES
	(57,14,'color','[\"blue\"]',1,'2018-02-23 09:17:16','2018-02-23 09:17:16'),
	(58,14,'size','[\"m\",\"l\"]',1,'2018-02-23 09:17:16','2018-02-23 09:17:16'),
	(59,14,'material','\"mutton\"',0,'2018-02-23 09:24:44','2018-02-23 09:24:44'),
	(60,14,'brand','\"hm\"',0,'2018-02-23 09:24:44','2018-02-23 09:24:44'),
	(127,20,'color','[\"blue\"]',1,'2018-02-26 08:01:26','2018-02-26 08:01:26'),
	(128,20,'size','[\"m\"]',1,'2018-02-26 08:01:26','2018-02-26 08:01:26'),
	(129,20,'material','\"mutton\"',0,'2018-02-26 08:01:26','2018-02-26 08:01:26'),
	(130,20,'brand','\"hm\"',0,'2018-02-26 08:01:26','2018-02-26 08:01:26'),
	(227,21,'color','[\"blue\",\"red\"]',1,'2018-03-12 08:54:54','2018-03-12 08:54:54'),
	(228,21,'size','[\"m\",\"l\"]',1,'2018-03-12 08:54:54','2018-03-12 08:54:54'),
	(229,21,'material','\"leather\"',0,'2018-03-12 08:54:54','2018-03-12 08:54:54'),
	(230,21,'brand','\"zara\"',0,'2018-03-12 08:54:54','2018-03-12 08:54:54'),
	(231,22,'color','[\"blue\",\"red\"]',1,'2018-03-12 09:08:38','2018-03-12 09:08:38'),
	(232,22,'size','[\"m\"]',1,'2018-03-12 09:08:38','2018-03-12 09:08:38'),
	(233,22,'material','\"leather\"',0,'2018-03-12 09:08:38','2018-03-12 09:08:38'),
	(234,22,'brand','\"zara\"',0,'2018-03-12 09:08:38','2018-03-12 09:08:38');

/*!40000 ALTER TABLE `product__attrs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product__attrset_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product__attrset_translations`;

CREATE TABLE `product__attrset_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attrset_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product__attrset_translations_attrset_id_locale_unique` (`attrset_id`,`locale`),
  KEY `product__attrset_translations_locale_index` (`locale`),
  CONSTRAINT `product__attrset_translations_attrset_id_foreign` FOREIGN KEY (`attrset_id`) REFERENCES `product__attrsets` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `product__attrset_translations` WRITE;
/*!40000 ALTER TABLE `product__attrset_translations` DISABLE KEYS */;

INSERT INTO `product__attrset_translations` (`id`, `name`, `attrset_id`, `locale`)
VALUES
	(3,'electronic',2,'en'),
	(4,'电子产品',2,'zh'),
	(5,'clothes',3,'en'),
	(6,'衣服',3,'zh'),
	(7,'coat',4,'en'),
	(8,'外套',4,'zh');

/*!40000 ALTER TABLE `product__attrset_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product__attrsets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product__attrsets`;

CREATE TABLE `product__attrsets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `product__attrsets` WRITE;
/*!40000 ALTER TABLE `product__attrsets` DISABLE KEYS */;

INSERT INTO `product__attrsets` (`id`, `key`, `pid`, `sort_order`, `created_at`, `updated_at`)
VALUES
	(2,'electronic',0,1,'2018-02-12 05:48:54','2018-02-12 05:48:54'),
	(3,'clothes',0,0,'2018-02-12 08:33:57','2018-02-12 08:33:57'),
	(4,'coat',3,3,'2018-02-22 03:48:18','2018-02-22 03:48:18');

/*!40000 ALTER TABLE `product__attrsets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product__categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product__categories`;

CREATE TABLE `product__categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `pid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `product__categories` WRITE;
/*!40000 ALTER TABLE `product__categories` DISABLE KEYS */;

INSERT INTO `product__categories` (`id`, `status`, `pid`, `created_at`, `updated_at`, `slug`)
VALUES
	(1,1,0,'2018-02-22 05:48:03','2018-02-22 05:48:03',NULL),
	(2,1,0,'2018-02-22 05:55:46','2018-02-22 05:55:46',NULL);

/*!40000 ALTER TABLE `product__categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product__category_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product__category_translations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `product__category_translations` WRITE;
/*!40000 ALTER TABLE `product__category_translations` DISABLE KEYS */;

INSERT INTO `product__category_translations` (`id`, `name`, `title`, `key_words`, `meta_description`, `description`, `category_id`, `locale`, `slug`)
VALUES
	(1,'shoes','high quality shoes','shoes','shoes','<p>shoes</p>',1,'en','high-quality-shoes'),
	(2,'鞋子','鞋子','鞋子','鞋子','<p>shoes</p>',1,'zh','shoes'),
	(3,'wedding dress','cheap wedding dress 2018','wedding dress','wedding dress','<p>wedding dress</p>',2,'en','cheap-wedding-dress-2018'),
	(4,'婚纱','婚纱','婚纱','婚纱','<p>婚纱</p>',2,'zh','cheap-wedding-dress');

/*!40000 ALTER TABLE `product__category_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product__images
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product__images`;

CREATE TABLE `product__images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table product__product_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product__product_translations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `product__product_translations` WRITE;
/*!40000 ALTER TABLE `product__product_translations` DISABLE KEYS */;

INSERT INTO `product__product_translations` (`id`, `title`, `keywords`, `meta_description`, `description`, `product_id`, `locale`, `slug`)
VALUES
	(20,'wedding dress','wedding-dress','wedding-dress','<p>s</p>',13,'en','wedding-dress'),
	(21,'wedding dress','wedding-dress','wedding-dress','<p>s</p>',13,'zh','wedding-dress'),
	(22,'sd','sd','sd','<p>sd</p>',14,'en','sdf'),
	(23,'sds','sd','sd','<p>sd</p>',14,'zh','sds'),
	(24,'sdf','sdfdfdf','sdfssss','<p>sdf</p>',15,'en',NULL),
	(25,'sdfdf','sd','sdfdf','<p>sdf</p>',15,'zh',NULL),
	(26,'ssdf','s','s','<p>s</p>',16,'en','ssdf'),
	(27,'ssd','sd','sdf','<p>sdf</p>',16,'zh','ssd'),
	(34,'a','a','a','<p>a</p>',20,'en','a'),
	(35,'aaa','a','a','<p>a</p>',20,'zh','aaa'),
	(36,'c1','c1','c1','<p>c1</p>',21,'en','c1'),
	(37,'c1','c1','c1','<p>c1</p>',21,'zh','c1'),
	(38,'s','s','s','<p>s</p>',22,'en','s'),
	(39,'s','s','s','<p>s</p>',22,'zh','s');

/*!40000 ALTER TABLE `product__product_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product__products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product__products`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `product__products` WRITE;
/*!40000 ALTER TABLE `product__products` DISABLE KEYS */;

INSERT INTO `product__products` (`id`, `attrset_id`, `status`, `sort_order`, `price`, `stock`, `created_at`, `updated_at`, `swatch_colors`)
VALUES
	(13,3,0,0,0.00,0,'2018-02-22 06:02:50','2018-02-22 06:02:50',NULL),
	(14,3,0,0,121.00,45,'2018-02-22 07:03:48','2018-02-23 09:17:16',NULL),
	(15,3,0,0,0.00,0,'2018-02-22 08:43:12','2018-02-22 08:43:12',NULL),
	(16,3,0,0,0.00,0,'2018-02-22 08:47:34','2018-02-22 08:47:34',NULL),
	(20,3,0,0,11234.00,12,'2018-02-26 06:17:27','2018-02-26 07:55:47',NULL),
	(21,3,0,0,10.00,95,'2018-02-26 08:14:14','2018-03-12 08:54:54','{\"blue\":{\"fileId\":3,\"filepath\":\"http://localhost:8000/assets/media/timg-1_smallThumb.jpg\"},\"red\":{\"fileId\":2,\"filepath\":\"http://localhost:8000/assets/media/avatar-default_smallThumb.jpeg\"}}'),
	(22,3,0,0,2.00,56,'2018-03-12 09:08:38','2018-03-12 09:08:38','{\"blue\":{\"fileId\":2,\"filepath\":\"http://localhost:8000/assets/media/avatar-default_smallThumb.jpeg\"},\"red\":{\"fileId\":9,\"filepath\":\"http://localhost:8000/assets/media/2018-02-24-03-25-10-5a90db1633846_smallThumb.jpg\"}}');

/*!40000 ALTER TABLE `product__products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product__products_cats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product__products_cats`;

CREATE TABLE `product__products_cats` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product__products_cats_product_id_index` (`product_id`),
  KEY `product__products_cats_category_id_index` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `product__products_cats` WRITE;
/*!40000 ALTER TABLE `product__products_cats` DISABLE KEYS */;

INSERT INTO `product__products_cats` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`)
VALUES
	(2,13,2,NULL,NULL),
	(3,14,2,NULL,NULL),
	(4,15,1,NULL,NULL),
	(6,16,2,NULL,NULL),
	(10,20,0,NULL,NULL),
	(11,21,1,NULL,NULL),
	(12,22,1,NULL,NULL);

/*!40000 ALTER TABLE `product__products_cats` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table product__sku_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product__sku_translations`;

CREATE TABLE `product__sku_translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sku_id` int(10) unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `product__sku_translations_sku_id_locale_unique` (`sku_id`,`locale`),
  KEY `product__sku_translations_locale_index` (`locale`),
  CONSTRAINT `product__sku_translations_sku_id_foreign` FOREIGN KEY (`sku_id`) REFERENCES `product__skus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table product__skus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `product__skus`;

CREATE TABLE `product__skus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `product__skus` WRITE;
/*!40000 ALTER TABLE `product__skus` DISABLE KEYS */;

INSERT INTO `product__skus` (`id`, `product_id`, `settings`, `seller_code`, `created_at`, `updated_at`)
VALUES
	(45,14,'{\"color\":\"blue\",\"size\":\"l\",\"price\":\"121\",\"stock\":\"13\"}',NULL,'2018-02-23 09:17:16','2018-02-23 09:17:16'),
	(46,14,'{\"color\":\"blue\",\"size\":\"m\",\"price\":\"1232\",\"stock\":\"32\"}',NULL,'2018-02-23 09:17:16','2018-02-23 09:17:16'),
	(79,20,'{\"color\":\"blue\",\"size\":\"m\",\"price\":\"11234\",\"stock\":\"12\"}',NULL,'2018-02-26 08:01:26','2018-02-26 08:01:26'),
	(151,21,'{\"color\":\"red\",\"size\":\"l\",\"price\":\"10\",\"stock\":\"24\"}',NULL,'2018-03-12 08:54:54','2018-03-12 08:54:54'),
	(152,21,'{\"color\":\"blue\",\"size\":\"l\",\"price\":\"12\",\"stock\":\"25\"}',NULL,'2018-03-12 08:54:54','2018-03-12 08:54:54'),
	(153,21,'{\"color\":\"blue\",\"size\":\"m\",\"price\":\"12\",\"stock\":\"23\"}',NULL,'2018-03-12 08:54:54','2018-03-12 08:54:54'),
	(154,21,'{\"color\":\"red\",\"size\":\"m\",\"price\":\"123\",\"stock\":\"23\"}',NULL,'2018-03-12 08:54:54','2018-03-12 08:54:54'),
	(155,22,'{\"color\":\"blue\",\"size\":\"m\",\"price\":\"2\",\"stock\":\"22\"}',NULL,'2018-03-12 09:08:38','2018-03-12 09:08:38'),
	(156,22,'{\"color\":\"red\",\"size\":\"m\",\"price\":\"22\",\"stock\":\"34\"}',NULL,'2018-03-12 09:08:38','2018-03-12 09:08:38');

/*!40000 ALTER TABLE `product__skus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table reminders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reminders`;

CREATE TABLE `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `reminders` WRITE;
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;

INSERT INTO `reminders` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`)
VALUES
	(1,8,'EhBfXMHHz8OUy7y5l2kKXVuS7vztNB1E',1,'2018-02-22 09:45:14','2018-02-22 09:42:14','2018-02-22 09:45:14');

/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table revisions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `revisions`;

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



# Dump of table role_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role_users`;

CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`)
VALUES
	(1,1,'2018-02-05 10:08:17','2018-02-05 10:08:17'),
	(8,2,'2018-02-22 09:39:33','2018-02-22 09:39:33');

/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`)
VALUES
	(1,'admin','Admin','{\"attribute.attributes.index\":true,\"attribute.attributes.create\":true,\"attribute.attributes.edit\":true,\"attribute.attributes.destroy\":true,\"blog.posts.index\":true,\"blog.posts.create\":true,\"blog.posts.edit\":true,\"blog.posts.destroy\":true,\"blog.categories.index\":true,\"blog.categories.create\":true,\"blog.categories.edit\":true,\"blog.categories.destroy\":true,\"core.sidebar.group\":true,\"dashboard.index\":true,\"dashboard.update\":true,\"dashboard.reset\":true,\"media.medias.index\":true,\"media.medias.create\":true,\"media.medias.edit\":true,\"media.medias.destroy\":true,\"media.folders.index\":true,\"media.folders.create\":true,\"media.folders.edit\":true,\"media.folders.destroy\":true,\"medialinkexample.authors.index\":true,\"medialinkexample.authors.create\":true,\"medialinkexample.authors.edit\":true,\"medialinkexample.authors.destroy\":true,\"menu.menus.index\":true,\"menu.menus.create\":true,\"menu.menus.edit\":true,\"menu.menus.destroy\":true,\"menu.menuitems.index\":true,\"menu.menuitems.create\":true,\"menu.menuitems.edit\":true,\"menu.menuitems.destroy\":true,\"page.pages.index\":true,\"page.pages.create\":true,\"page.pages.edit\":true,\"page.pages.destroy\":true,\"product.attrsets.index\":true,\"product.attrsets.create\":true,\"product.attrsets.edit\":true,\"product.attrsets.destroy\":true,\"product.products.index\":true,\"product.products.create\":true,\"product.products.edit\":true,\"product.products.destroy\":true,\"product.categories.index\":true,\"product.categories.create\":true,\"product.categories.edit\":true,\"product.categories.destroy\":true,\"product.images.index\":true,\"product.images.create\":true,\"product.images.edit\":true,\"product.images.destroy\":true,\"product.skus.index\":true,\"product.skus.create\":true,\"product.skus.edit\":true,\"product.skus.destroy\":true,\"product.attrs.index\":true,\"product.attrs.create\":true,\"product.attrs.edit\":true,\"product.attrs.destroy\":true,\"setting.settings.index\":true,\"setting.settings.edit\":true,\"tag.tags.index\":true,\"tag.tags.create\":true,\"tag.tags.edit\":true,\"tag.tags.destroy\":true,\"translation.translations.index\":true,\"translation.translations.edit\":true,\"translation.translations.import\":true,\"translation.translations.export\":true,\"user.users.index\":true,\"user.users.create\":true,\"user.users.edit\":true,\"user.users.destroy\":true,\"user.roles.index\":true,\"user.roles.create\":true,\"user.roles.edit\":true,\"user.roles.destroy\":true,\"account.api-keys.index\":true,\"account.api-keys.create\":true,\"account.api-keys.destroy\":true,\"workshop.sidebar.group\":true,\"workshop.modules.index\":true,\"workshop.modules.show\":true,\"workshop.modules.update\":true,\"workshop.modules.disable\":true,\"workshop.modules.enable\":true,\"workshop.modules.publish\":true,\"workshop.themes.index\":true,\"workshop.themes.show\":true,\"workshop.themes.publish\":true}','2018-02-05 10:07:57','2018-02-12 01:51:13'),
	(2,'user','User',NULL,'2018-02-05 10:07:57','2018-02-05 10:07:57');

/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table setting__setting_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `setting__setting_translations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `setting__setting_translations` WRITE;
/*!40000 ALTER TABLE `setting__setting_translations` DISABLE KEYS */;

INSERT INTO `setting__setting_translations` (`id`, `setting_id`, `locale`, `value`, `description`)
VALUES
	(1,3,'en',NULL,NULL),
	(2,4,'en',NULL,NULL),
	(3,5,'en',NULL,NULL);

/*!40000 ALTER TABLE `setting__setting_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table setting__settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `setting__settings`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `setting__settings` WRITE;
/*!40000 ALTER TABLE `setting__settings` DISABLE KEYS */;

INSERT INTO `setting__settings` (`id`, `name`, `plainValue`, `isTranslatable`, `created_at`, `updated_at`)
VALUES
	(1,'core::template','Flatly',0,'2018-02-05 10:08:18','2018-02-05 10:08:18'),
	(2,'core::locales','[\"en\",\"zh\"]',0,'2018-02-05 10:08:18','2018-02-05 10:16:40'),
	(3,'core::site-name',NULL,1,'2018-02-05 10:16:40','2018-02-05 10:16:40'),
	(4,'core::site-name-mini',NULL,1,'2018-02-05 10:16:40','2018-02-05 10:16:40'),
	(5,'core::site-description',NULL,1,'2018-02-05 10:16:40','2018-02-05 10:16:40'),
	(6,'core::analytics-script',NULL,0,'2018-02-05 10:16:40','2018-02-05 10:16:40');

/*!40000 ALTER TABLE `setting__settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tag__tag_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tag__tag_translations`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tag__tag_translations` WRITE;
/*!40000 ALTER TABLE `tag__tag_translations` DISABLE KEYS */;

INSERT INTO `tag__tag_translations` (`id`, `slug`, `name`, `tag_id`, `locale`)
VALUES
	(1,'a','a',1,'en'),
	(2,'sdf','sdf',2,'zh'),
	(3,'cat','cat',3,'zh');

/*!40000 ALTER TABLE `tag__tag_translations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tag__tagged
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tag__tagged`;

CREATE TABLE `tag__tagged` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag__tagged_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tag__tagged` WRITE;
/*!40000 ALTER TABLE `tag__tagged` DISABLE KEYS */;

INSERT INTO `tag__tagged` (`id`, `taggable_type`, `taggable_id`, `tag_id`)
VALUES
	(1,'Modules\\Blog\\Entities\\Post',1,1),
	(2,'Modules\\Blog\\Entities\\Post',2,2),
	(3,'Modules\\Page\\Entities\\Page',2,3);

/*!40000 ALTER TABLE `tag__tagged` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tag__tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tag__tags`;

CREATE TABLE `tag__tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tag__tags` WRITE;
/*!40000 ALTER TABLE `tag__tags` DISABLE KEYS */;

INSERT INTO `tag__tags` (`id`, `namespace`, `created_at`, `updated_at`)
VALUES
	(1,'asgardcms/post','2018-02-06 07:31:14','2018-02-06 07:31:14'),
	(2,'asgardcms/post','2018-02-11 06:21:57','2018-02-11 06:21:57'),
	(3,'asgardcms/page','2018-02-22 08:14:54','2018-02-22 08:14:54');

/*!40000 ALTER TABLE `tag__tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table throttle
# ------------------------------------------------------------

DROP TABLE IF EXISTS `throttle`;

CREATE TABLE `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `throttle` WRITE;
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`)
VALUES
	(1,NULL,'global',NULL,'2018-03-12 01:33:47','2018-03-12 01:33:47'),
	(2,NULL,'ip','127.0.0.1','2018-03-12 01:33:47','2018-03-12 01:33:47'),
	(3,1,'user',NULL,'2018-03-12 01:33:47','2018-03-12 01:33:47');

/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table translation__translation_translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translation__translation_translations`;

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



# Dump of table translation__translations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `translation__translations`;

CREATE TABLE `translation__translations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `translation__translations_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table user_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_tokens`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `user_tokens` WRITE;
/*!40000 ALTER TABLE `user_tokens` DISABLE KEYS */;

INSERT INTO `user_tokens` (`id`, `user_id`, `access_token`, `created_at`, `updated_at`)
VALUES
	(1,1,'2d03ab9b-71a7-4dff-8a2a-64557c0af0fc','2018-02-05 10:08:17','2018-02-05 10:08:17'),
	(2,8,'e46d0058-b9a3-43a1-81b5-08ce4bc762c1','2018-02-22 09:39:33','2018-02-22 09:39:33');

/*!40000 ALTER TABLE `user_tokens` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `created_at`, `updated_at`)
VALUES
	(1,'2861166132@qq.com','$2y$10$QmK9vxdd6.rItQCxA0sAcOu9j2/FL1JnbNNR8bH4gk3AtdO18m.Ta',NULL,'2018-03-13 01:49:06','miya','yeh','2018-02-05 10:08:17','2018-03-13 01:49:06'),
	(8,'1738956292@qq.com','$2y$10$LA9wGms38rwy/r025jyGnu0ziD7/WKH7TUBCnt2STaObsCil6gUlO','','2018-02-22 10:06:04','sdf','sdf','2018-02-22 09:39:27','2018-02-22 10:06:04');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
