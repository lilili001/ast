/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50719
Source Host           : localhost:3306
Source Database       : ast

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2018-05-08 14:55:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for activations
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of activations
-- ----------------------------
INSERT INTO `activations` VALUES ('1', '1', 'wBCGjcwShonfPDLdiv3Ywy3vgS1C3f4O', '1', '2018-02-05 10:08:17', '2018-02-05 10:08:17', '2018-02-05 10:08:17');
INSERT INTO `activations` VALUES ('5', '8', '9RSMWNiDCWcE0O1vkOEVLWZNouUmvezq', '1', '2018-02-22 09:45:30', '2018-02-22 09:45:30', '2018-02-22 09:45:30');

-- ----------------------------
-- Table structure for ast_2018-04-28.sql
-- ----------------------------
DROP TABLE IF EXISTS `ast_2018-04-28.sql`;
CREATE TABLE `ast_2018-04-28.sql` (
  `# ************************************************************` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ast_2018-04-28.sql
-- ----------------------------
INSERT INTO `ast_2018-04-28.sql` VALUES ('# Sequel Pro SQL dump');
INSERT INTO `ast_2018-04-28.sql` VALUES ('# Version 4541');
INSERT INTO `ast_2018-04-28.sql` VALUES ('#');
INSERT INTO `ast_2018-04-28.sql` VALUES ('# http://www.sequelpro.com/');
INSERT INTO `ast_2018-04-28.sql` VALUES ('# https://github.com/sequelpro/sequelpro');
INSERT INTO `ast_2018-04-28.sql` VALUES ('#');
INSERT INTO `ast_2018-04-28.sql` VALUES ('# Host: 127.0.0.1 (MySQL 5.7.17)');
INSERT INTO `ast_2018-04-28.sql` VALUES ('# Database: ast');
INSERT INTO `ast_2018-04-28.sql` VALUES ('# Generation Time: 2018-04-28 02:42:15 +0000');
INSERT INTO `ast_2018-04-28.sql` VALUES ('# ************************************************************');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;');
INSERT INTO `ast_2018-04-28.sql` VALUES ('/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;');
INSERT INTO `ast_2018-04-28.sql` VALUES ('/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;');
INSERT INTO `ast_2018-04-28.sql` VALUES ('/*!40101 SET NAMES utf8 */;');
INSERT INTO `ast_2018-04-28.sql` VALUES ('/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;');
INSERT INTO `ast_2018-04-28.sql` VALUES ('/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE=\'NO_AUTO_VALUE_ON_ZERO\' */;');
INSERT INTO `ast_2018-04-28.sql` VALUES ('/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('# Dump of table activations');
INSERT INTO `ast_2018-04-28.sql` VALUES ('# ------------------------------------------------------------');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('DROP TABLE IF EXISTS `activations`;');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('CREATE TABLE `activations` (');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `user_id` int(10) unsigned NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `completed` tinyint(1) NOT NULL DEFAULT \'0\',');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `completed_at` timestamp NULL DEFAULT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `created_at` timestamp NULL DEFAULT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `updated_at` timestamp NULL DEFAULT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  PRIMARY KEY (`id`)');
INSERT INTO `ast_2018-04-28.sql` VALUES (') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('LOCK TABLES `activations` WRITE;');
INSERT INTO `ast_2018-04-28.sql` VALUES ('/*!40000 ALTER TABLE `activations` DISABLE KEYS */;');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`)');
INSERT INTO `ast_2018-04-28.sql` VALUES ('VALUES');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('/*!40000 ALTER TABLE `activations` ENABLE KEYS */;');
INSERT INTO `ast_2018-04-28.sql` VALUES ('UNLOCK TABLES;');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('# Dump of table attribute__attribute_translations');
INSERT INTO `ast_2018-04-28.sql` VALUES ('# ------------------------------------------------------------');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('DROP TABLE IF EXISTS `attribute__attribute_translations`;');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('CREATE TABLE `attribute__attribute_translations` (');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `attribute_id` int(10) unsigned NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  PRIMARY KEY (`id`),');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  UNIQUE KEY `attribute__attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`),');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  KEY `attribute__attribute_translations_locale_index` (`locale`),');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  CONSTRAINT `attribute__attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attribute__attributes` (`id`) ON DELETE CASCADE');
INSERT INTO `ast_2018-04-28.sql` VALUES (') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('LOCK TABLES `attribute__attribute_translations` WRITE;');
INSERT INTO `ast_2018-04-28.sql` VALUES ('/*!40000 ALTER TABLE `attribute__attribute_translations` DISABLE KEYS */;');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('INSERT INTO `attribute__attribute_translations` (`id`, `name`, `description`, `attribute_id`, `locale`)');
INSERT INTO `ast_2018-04-28.sql` VALUES ('VALUES');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('/*!40000 ALTER TABLE `attribute__attribute_translations` ENABLE KEYS */;');
INSERT INTO `ast_2018-04-28.sql` VALUES ('UNLOCK TABLES;');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('# Dump of table attribute__attribute_values');
INSERT INTO `ast_2018-04-28.sql` VALUES ('# ------------------------------------------------------------');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('DROP TABLE IF EXISTS `attribute__attribute_values`;');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('CREATE TABLE `attribute__attribute_values` (');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `attribute_id` int(10) unsigned NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `entity_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `entity_id` int(10) unsigned NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `created_at` timestamp NULL DEFAULT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `updated_at` timestamp NULL DEFAULT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  PRIMARY KEY (`id`),');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  KEY `attribute__attribute_values_attribute_id_index` (`attribute_id`),');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  KEY `attribute__attribute_values_entity_type_index` (`entity_type`),');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  KEY `attribute__attribute_values_entity_id_index` (`entity_id`)');
INSERT INTO `ast_2018-04-28.sql` VALUES (') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('# Dump of table attribute__attributes');
INSERT INTO `ast_2018-04-28.sql` VALUES ('# ------------------------------------------------------------');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('DROP TABLE IF EXISTS `attribute__attributes`;');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('CREATE TABLE `attribute__attributes` (');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `is_for_sku` tinyint(1) NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `is_for_sale` tinyint(1) NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `is_filterable` tinyint(1) DEFAULT \'0\',');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `is_visible_on_front` tinyint(1) DEFAULT \'0\',');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `options` text COLLATE utf8mb4_unicode_ci,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `is_enabled` tinyint(1) NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `has_translatable_values` tinyint(1) NOT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `created_at` timestamp NULL DEFAULT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `updated_at` timestamp NULL DEFAULT NULL,');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  `position` int(11) DEFAULT \'0\',');
INSERT INTO `ast_2018-04-28.sql` VALUES ('  PRIMARY KEY (`id`)');
INSERT INTO `ast_2018-04-28.sql` VALUES (') ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('LOCK TABLES `attribute__attributes` WRITE;');
INSERT INTO `ast_2018-04-28.sql` VALUES ('/*!40000 ALTER TABLE `attribute__attributes` DISABLE KEYS */;');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);
INSERT INTO `ast_2018-04-28.sql` VALUES ('INSERT INTO `attribute__attributes` (`id`, `namespace`, `key`, `type`, `is_for_sku`, `is_for_sale`, `is_filterable`, `is_visible_on_front`, `options`, `is_enabled`, `has_translatable_values`, `created_at`, `updated_at`, `position`)');
INSERT INTO `ast_2018-04-28.sql` VALUES ('VALUES');
INSERT INTO `ast_2018-04-28.sql` VALUES (null);

-- ----------------------------
-- Table structure for attribute__attributes
-- ----------------------------
DROP TABLE IF EXISTS `attribute__attributes`;
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

-- ----------------------------
-- Records of attribute__attributes
-- ----------------------------
INSERT INTO `attribute__attributes` VALUES ('24', 'BaseNamespace', 'material', 'select', '1', '1', '1', '1', '{\"mutton\":{\"en\":\"Mutton\",\"zh\":\"\\u7f8a\\u6bdb\"},\"leather\":{\"en\":\"Leather\",\"zh\":\"\\u76ae\\u9769\"}}', '1', '1', '2018-02-12 09:21:21', '2018-03-30 06:39:18', '1');
INSERT INTO `attribute__attributes` VALUES ('25', 'BaseNamespace', 'brand', 'select', '1', '1', '1', '1', '{\"hm\":{\"en\":\"HM\",\"zh\":\"HM\"},\"zara\":{\"en\":\"ZARA\",\"zh\":\"ZARA\"}}', '1', '0', '2018-02-12 09:22:39', '2018-03-30 06:39:12', '3');
INSERT INTO `attribute__attributes` VALUES ('26', 'BaseNamespace', 'color', 'select', '1', '0', '1', '1', '{\"red\":{\"en\":\"Red\",\"zh\":\"\\u7ea2\\u8272\"},\"blue\":{\"en\":\"Blue\",\"zh\":\"\\u84dd\\u8272\"}}', '1', '1', '2018-02-22 01:50:33', '2018-03-26 03:17:03', '0');
INSERT INTO `attribute__attributes` VALUES ('27', 'BaseNamespace', 'size', 'select', '1', '0', '1', '1', '{\"l\":{\"en\":\"L\",\"zh\":\"\\u5927\\u7801\"},\"m\":{\"en\":\"M\",\"zh\":\"\\u4e2d\\u7801\"}}', '1', '1', '2018-02-22 02:04:49', '2018-03-26 03:18:19', '2');

-- ----------------------------
-- Table structure for attribute__attribute_translations
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of attribute__attribute_translations
-- ----------------------------
INSERT INTO `attribute__attribute_translations` VALUES ('47', 'material', 'material', '24', 'en');
INSERT INTO `attribute__attribute_translations` VALUES ('48', '材质', '材质', '24', 'zh');
INSERT INTO `attribute__attribute_translations` VALUES ('49', 'brand', 'brand', '25', 'en');
INSERT INTO `attribute__attribute_translations` VALUES ('50', '品牌', '品牌', '25', 'zh');
INSERT INTO `attribute__attribute_translations` VALUES ('51', 'color', 'color', '26', 'en');
INSERT INTO `attribute__attribute_translations` VALUES ('52', '颜色', 'color', '26', 'zh');
INSERT INTO `attribute__attribute_translations` VALUES ('53', 'size', 'size', '27', 'en');
INSERT INTO `attribute__attribute_translations` VALUES ('54', '尺码', 'size', '27', 'zh');

-- ----------------------------
-- Table structure for attribute__attribute_values
-- ----------------------------
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

-- ----------------------------
-- Records of attribute__attribute_values
-- ----------------------------

-- ----------------------------
-- Table structure for attrset_attr
-- ----------------------------
DROP TABLE IF EXISTS `attrset_attr`;
CREATE TABLE `attrset_attr` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attrset_id` int(10) unsigned NOT NULL,
  `attribute_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `attrset_attr_attrset_id_index` (`attrset_id`),
  KEY `attrset_attr_attribute_id_index` (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of attrset_attr
-- ----------------------------
INSERT INTO `attrset_attr` VALUES ('27', '3', '24');
INSERT INTO `attrset_attr` VALUES ('30', '3', '25');
INSERT INTO `attrset_attr` VALUES ('31', '3', '26');
INSERT INTO `attrset_attr` VALUES ('32', '3', '27');

-- ----------------------------
-- Table structure for blog__categories
-- ----------------------------
DROP TABLE IF EXISTS `blog__categories`;
CREATE TABLE `blog__categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blog__categories
-- ----------------------------
INSERT INTO `blog__categories` VALUES ('1', '2018-02-06 07:29:48', '2018-02-06 07:29:48');

-- ----------------------------
-- Table structure for blog__category_translations
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blog__category_translations
-- ----------------------------
INSERT INTO `blog__category_translations` VALUES ('1', 'live', 'live', '1', 'en');
INSERT INTO `blog__category_translations` VALUES ('2', '生活', 'live', '1', 'zh');

-- ----------------------------
-- Table structure for blog__posts
-- ----------------------------
DROP TABLE IF EXISTS `blog__posts`;
CREATE TABLE `blog__posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `blog__posts_category_id_index` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blog__posts
-- ----------------------------
INSERT INTO `blog__posts` VALUES ('1', '1', '2', '2018-02-06 07:29:21', '2018-02-06 07:34:31');
INSERT INTO `blog__posts` VALUES ('2', '1', '0', '2018-02-11 06:21:57', '2018-02-11 06:21:57');

-- ----------------------------
-- Table structure for blog__post_translations
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of blog__post_translations
-- ----------------------------
INSERT INTO `blog__post_translations` VALUES ('1', '1', 'en', 'blog post', 'blog-post', '<p>blog post<img alt=\"\" src=\"http://localhost:8002/assets/media/avatar-default_smallThumb.jpeg\" style=\"width: 50px; height: 50px;\" /></p>');
INSERT INTO `blog__post_translations` VALUES ('2', '1', 'zh', '中文博客', 'blog-post', '<p>中文博客</p>');
INSERT INTO `blog__post_translations` VALUES ('3', '2', 'en', 'sdfsdff', 'sdfsdff', '<p>sdfsdf</p>');
INSERT INTO `blog__post_translations` VALUES ('4', '2', 'zh', 'sdfsd', 'sdfsd', '<p>sdfsdf</p>');

-- ----------------------------
-- Table structure for currency_code
-- ----------------------------
DROP TABLE IF EXISTS `currency_code`;
CREATE TABLE `currency_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `d_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of currency_code
-- ----------------------------
INSERT INTO `currency_code` VALUES ('1', 'AED', '阿联酋迪拉姆', 'United Arab Emirates Dirham');
INSERT INTO `currency_code` VALUES ('2', 'AFN', '阿富汗尼', 'Afghan Afghani');
INSERT INTO `currency_code` VALUES ('3', 'ALL', '阿尔巴尼列克', 'Albania Lek');
INSERT INTO `currency_code` VALUES ('4', 'AMD', '亚美尼亚德拉姆', 'Armenia Dram');
INSERT INTO `currency_code` VALUES ('5', 'ANG', '荷兰盾', 'Dutch Guilder');
INSERT INTO `currency_code` VALUES ('6', 'AOA', '安哥拉宽扎', 'Angola Kwanza');
INSERT INTO `currency_code` VALUES ('7', 'ARS', '阿根廷比索', 'Argentina Peso');
INSERT INTO `currency_code` VALUES ('8', 'AUD', '澳元', 'Australia Dollar');
INSERT INTO `currency_code` VALUES ('9', 'AWG', '阿鲁巴弗罗林', 'Aruba Florin');
INSERT INTO `currency_code` VALUES ('10', 'AZN', '阿塞拜疆马纳特', 'Azerbaijan Manat');
INSERT INTO `currency_code` VALUES ('11', 'BAM', '波黑可兑换马克', 'Bosnia Convertible Mark');
INSERT INTO `currency_code` VALUES ('12', 'BBD', '巴巴多斯元', 'Barbados Dollar');
INSERT INTO `currency_code` VALUES ('13', 'BDT', '孟加拉国塔卡', 'Bangladesh Taka');
INSERT INTO `currency_code` VALUES ('14', 'BGN', '保加利亚列弗', 'Bulgaria Lev');
INSERT INTO `currency_code` VALUES ('15', 'BHD', '巴林第纳尔', 'Bahrain Dinar');
INSERT INTO `currency_code` VALUES ('16', 'BIF', '布隆迪法郎', 'Burundi Franc');
INSERT INTO `currency_code` VALUES ('17', 'BMD', '百慕大元', 'Bermudian Dollar');
INSERT INTO `currency_code` VALUES ('18', 'BND', '文莱元', 'Brunei Dollar');
INSERT INTO `currency_code` VALUES ('19', 'BOB', '玻利维亚诺', 'Bolivian Boliviano');
INSERT INTO `currency_code` VALUES ('20', 'BRL', '巴西雷亚尔', 'Brazilian Real');
INSERT INTO `currency_code` VALUES ('21', 'BSD', '巴哈马元', 'Bahamian Dollar');
INSERT INTO `currency_code` VALUES ('22', 'BTN', '不丹努扎姆', 'Bhutanese Ngultrum');
INSERT INTO `currency_code` VALUES ('23', 'BWP', '博茨瓦纳普拉', 'Botswana Pula ');
INSERT INTO `currency_code` VALUES ('24', 'BYR', '白俄罗斯卢布', 'Belarusian Ruble');
INSERT INTO `currency_code` VALUES ('25', 'BZD', '伯利兹元', 'Belize Dollar');
INSERT INTO `currency_code` VALUES ('26', 'CAD', '加元', 'Canadian Dollar');
INSERT INTO `currency_code` VALUES ('27', 'CDF', '刚果法郎', 'Congolese Franc');
INSERT INTO `currency_code` VALUES ('28', 'CHF', '瑞士法郎', 'Swiss Franc');
INSERT INTO `currency_code` VALUES ('29', 'CLF', '智利比索(基金)', 'Chilean Unidad de Fomento');
INSERT INTO `currency_code` VALUES ('30', 'CLP', '智利比索', 'Chilean Peso');
INSERT INTO `currency_code` VALUES ('31', 'CNH', '中国离岸人民币', 'Chinese Offshore Renminbi');
INSERT INTO `currency_code` VALUES ('32', 'CNY', '人民币', 'Chinese Yuan');
INSERT INTO `currency_code` VALUES ('33', 'COP', '哥伦比亚比索', 'Colombia Peso ');
INSERT INTO `currency_code` VALUES ('34', 'CRC', '哥斯达黎加科朗', 'Costa Rica Colon');
INSERT INTO `currency_code` VALUES ('35', 'CUP', '古巴比索', 'Cuban Peso');
INSERT INTO `currency_code` VALUES ('36', 'CVE', '佛得角埃斯库多', 'Cape Verde Escudo');
INSERT INTO `currency_code` VALUES ('37', 'CYP', '塞普路斯镑', 'Cyprus Pound');
INSERT INTO `currency_code` VALUES ('38', 'CZK', '捷克克朗', 'Czech Republic Koruna');
INSERT INTO `currency_code` VALUES ('39', 'DEM', '德国马克', 'Deutsche Mark');
INSERT INTO `currency_code` VALUES ('40', 'DJF', '吉布提法郎', 'Djiboutian Franc');
INSERT INTO `currency_code` VALUES ('41', 'DKK', '丹麦克朗', 'Danish Krone');
INSERT INTO `currency_code` VALUES ('42', 'DOP', '多米尼加比索', 'Dominican Peso');
INSERT INTO `currency_code` VALUES ('43', 'DZD', '阿尔及利亚第纳尔', 'Algerian Dinar ');
INSERT INTO `currency_code` VALUES ('44', 'ECS', '厄瓜多尔苏克雷', 'Ecuadorian Sucre');
INSERT INTO `currency_code` VALUES ('45', 'EGP', '埃及镑', 'Egyptian Pound');
INSERT INTO `currency_code` VALUES ('46', 'ERN', '厄立特里亚纳克法', 'Eritrean Nakfa ');
INSERT INTO `currency_code` VALUES ('47', 'ETB', '埃塞俄比亚比尔', 'Ethiopian Birr');
INSERT INTO `currency_code` VALUES ('48', 'EUR', '欧元', 'Euro');
INSERT INTO `currency_code` VALUES ('49', 'FJD', '斐济元', 'Fiji Dollar');
INSERT INTO `currency_code` VALUES ('50', 'FKP', '福克兰群岛镑', 'Falkland Islands Pound');
INSERT INTO `currency_code` VALUES ('51', 'FRF', '法国法郎', 'French Franc');
INSERT INTO `currency_code` VALUES ('52', 'GBP', '英镑', 'British Pound');
INSERT INTO `currency_code` VALUES ('53', 'GEL', '格鲁吉亚拉里', 'Georgian Lari');
INSERT INTO `currency_code` VALUES ('54', 'GHS', '加纳塞地', 'Ghanaian Cedi');
INSERT INTO `currency_code` VALUES ('55', 'GIP', '直布罗陀镑', 'Gibraltar Pound');
INSERT INTO `currency_code` VALUES ('56', 'GMD', '冈比亚达拉西', 'Gambian Dalasi');
INSERT INTO `currency_code` VALUES ('57', 'GNF', '几内亚法郎', 'Guinean Franc');
INSERT INTO `currency_code` VALUES ('58', 'GTQ', '危地马拉格查尔', 'Guatemalan Quetzal');
INSERT INTO `currency_code` VALUES ('59', 'GYD', '圭亚那元', 'Guyanese Dollar');
INSERT INTO `currency_code` VALUES ('60', 'HKD', '港币', 'Hong Kong Dollar');
INSERT INTO `currency_code` VALUES ('61', 'HNL', '洪都拉斯伦皮拉', 'Honduran Lempira');
INSERT INTO `currency_code` VALUES ('62', 'HRK', '克罗地亚库纳', 'Croatian Kuna');
INSERT INTO `currency_code` VALUES ('63', 'HTG', '海地古德', 'Haitian Gourde');
INSERT INTO `currency_code` VALUES ('64', 'HUF', '匈牙利福林', 'Hungarian Forint');
INSERT INTO `currency_code` VALUES ('65', 'IDR', '印度尼西亚卢比', 'Indonesian Rupiah');
INSERT INTO `currency_code` VALUES ('66', 'IEP', '爱尔兰镑', 'Irish Pound');
INSERT INTO `currency_code` VALUES ('67', 'ILS', '以色列新谢克尔', 'Israeli New Shekel');
INSERT INTO `currency_code` VALUES ('68', 'INR', '印度卢比', 'Indian Rupee');
INSERT INTO `currency_code` VALUES ('69', 'IQD', '伊拉克第纳尔', 'Iraqi Dinar');
INSERT INTO `currency_code` VALUES ('70', 'IRR', '伊朗里亚尔', 'Iranian Rial');
INSERT INTO `currency_code` VALUES ('71', 'ISK', '冰岛克郎', 'Icelandic Krona');
INSERT INTO `currency_code` VALUES ('72', 'ITL', '意大利里拉', 'Italian Lira');
INSERT INTO `currency_code` VALUES ('73', 'JMD', '牙买加元', 'Jamaican Dollar');
INSERT INTO `currency_code` VALUES ('74', 'JOD', '约旦第纳尔', 'Jordanian Dinar');
INSERT INTO `currency_code` VALUES ('75', 'JPY', '日元', 'Japanese Yen');
INSERT INTO `currency_code` VALUES ('76', 'KES', '肯尼亚先令', 'Kenyan Shilling');
INSERT INTO `currency_code` VALUES ('77', 'KGS', '吉尔吉斯斯坦索姆', 'Kyrgyzstani Som');
INSERT INTO `currency_code` VALUES ('78', 'KHR', '柬埔寨瑞尔', 'Cambodian Riel');
INSERT INTO `currency_code` VALUES ('79', 'KMF', '科摩罗法郎', 'Comorian franc');
INSERT INTO `currency_code` VALUES ('80', 'KPW', '朝鲜元', 'North Korean Won');
INSERT INTO `currency_code` VALUES ('81', 'KRW', '韩元', 'South Korean Won');
INSERT INTO `currency_code` VALUES ('82', 'KWD', '科威特第纳尔', 'Kuwaiti Dinar');
INSERT INTO `currency_code` VALUES ('83', 'KYD', '开曼群岛元', 'Cayman Islands Dollar');
INSERT INTO `currency_code` VALUES ('84', 'KZT', '哈萨克斯坦坚戈', 'Kazakstani Tenge');
INSERT INTO `currency_code` VALUES ('85', 'LAK', '老挝基普', 'Lao kip');
INSERT INTO `currency_code` VALUES ('86', 'LBP', '黎巴嫩镑', 'Lebanese Pound');
INSERT INTO `currency_code` VALUES ('87', 'LKR', '斯里兰卡卢比', 'Sri Lankan Rupee');
INSERT INTO `currency_code` VALUES ('88', 'LRD', '利比里亚元', 'Liberian dollar');
INSERT INTO `currency_code` VALUES ('89', 'LSL', '莱索托洛蒂', 'Lesotho Loti');
INSERT INTO `currency_code` VALUES ('90', 'LTL', '立陶宛立特', 'Lithuanian Litas');
INSERT INTO `currency_code` VALUES ('91', 'LVL', '拉脱维亚拉特', 'Latvian Lats');
INSERT INTO `currency_code` VALUES ('92', 'LYD', '利比亚第纳尔', 'Libyan Dinar');
INSERT INTO `currency_code` VALUES ('93', 'MAD', '摩洛哥迪拉姆', 'Moroccan Dirham');
INSERT INTO `currency_code` VALUES ('94', 'MDL', '摩尔多瓦列伊', 'Moldovan Leu');
INSERT INTO `currency_code` VALUES ('95', 'MGA', '马达加斯加阿里亚里', 'Malagasy Ariary');
INSERT INTO `currency_code` VALUES ('96', 'MKD', '马其顿代纳尔', 'Macedonian Denar');
INSERT INTO `currency_code` VALUES ('97', 'MMK', '缅甸元', 'Myanmar Kyat');
INSERT INTO `currency_code` VALUES ('98', 'MNT', '蒙古图格里克', 'Mongolian Tugrik');
INSERT INTO `currency_code` VALUES ('99', 'MOP', '澳门元', 'Macau Pataca');
INSERT INTO `currency_code` VALUES ('100', 'MRO', '毛里塔尼亚乌吉亚', 'Mauritania Ouguiya');
INSERT INTO `currency_code` VALUES ('101', 'MUR', '毛里求斯卢比', 'Mauritian Rupee');
INSERT INTO `currency_code` VALUES ('102', 'MVR', '马尔代夫拉菲亚', 'Maldives Rufiyaa');
INSERT INTO `currency_code` VALUES ('103', 'MWK', '马拉维克瓦查', 'Malawian Kwacha');
INSERT INTO `currency_code` VALUES ('104', 'MXN', '墨西哥比索', 'Mexican Peso');
INSERT INTO `currency_code` VALUES ('105', 'MXV', '墨西哥(资金)', 'Mexican Unidad De Inversion');
INSERT INTO `currency_code` VALUES ('106', 'MYR', '林吉特', 'Malaysian Ringgit');
INSERT INTO `currency_code` VALUES ('107', 'MZN', '莫桑比克新梅蒂卡尔', 'New Mozambican Metical');
INSERT INTO `currency_code` VALUES ('108', 'NAD', '纳米比亚元', 'Namibian Dollar');
INSERT INTO `currency_code` VALUES ('109', 'NGN', '尼日利亚奈拉', 'Nigerian Naira');
INSERT INTO `currency_code` VALUES ('110', 'NIO', '尼加拉瓜新科多巴', 'Nicaraguan Cordoba Oro');
INSERT INTO `currency_code` VALUES ('111', 'NOK', '挪威克朗', 'Norwegian Krone');
INSERT INTO `currency_code` VALUES ('112', 'NPR', '尼泊尔卢比', 'Nepalese Rupee');
INSERT INTO `currency_code` VALUES ('113', 'NZD', '新西兰元', 'New Zealand Dollar');
INSERT INTO `currency_code` VALUES ('114', 'OMR', '阿曼里亚尔', 'Omani Rial');
INSERT INTO `currency_code` VALUES ('115', 'PAB', '巴拿马巴波亚', 'Panamanian Balboa');
INSERT INTO `currency_code` VALUES ('116', 'PEN', '秘鲁新索尔', 'Peruvian Nuevo Sol');
INSERT INTO `currency_code` VALUES ('117', 'PGK', '巴布亚新几内亚基那', 'Papua New Guinea Kina');
INSERT INTO `currency_code` VALUES ('118', 'PHP', '菲律宾比索', 'Philippine Peso');
INSERT INTO `currency_code` VALUES ('119', 'PKR', '巴基斯坦卢比', 'Pakistan Rupee');
INSERT INTO `currency_code` VALUES ('120', 'PLN', '波兰兹罗提', 'Polish Zloty');
INSERT INTO `currency_code` VALUES ('121', 'PYG', '巴拉圭瓜拉尼', 'Paraguayan Guarani');
INSERT INTO `currency_code` VALUES ('122', 'QAR', '卡塔尔里亚尔', 'Qatari Riyal');
INSERT INTO `currency_code` VALUES ('123', 'RON', '罗马尼亚列伊', 'Romanian Leu');
INSERT INTO `currency_code` VALUES ('124', 'RSD', '塞尔维亚第纳尔', 'Serbian Dinar');
INSERT INTO `currency_code` VALUES ('125', 'RUB', '俄罗斯卢布', 'Russian Ruble');
INSERT INTO `currency_code` VALUES ('126', 'RWF', '卢旺达法郎', 'Rwandan Franc');
INSERT INTO `currency_code` VALUES ('127', 'SAR', '沙特里亚尔', 'Saudi Arabian Riyal');
INSERT INTO `currency_code` VALUES ('128', 'SBD', '所罗门群岛元', 'Solomon Islands Dollar');
INSERT INTO `currency_code` VALUES ('129', 'SCR', '塞舌尔卢比', 'Seychelles Rupee');
INSERT INTO `currency_code` VALUES ('130', 'SDG', '苏丹磅', 'Sudanese Pound');
INSERT INTO `currency_code` VALUES ('131', 'SEK', '瑞典克朗', 'Swedish Krona');
INSERT INTO `currency_code` VALUES ('132', 'SGD', '新加坡元', 'Singapore Dollar');
INSERT INTO `currency_code` VALUES ('133', 'SHP', '圣赫勒拿镑', 'Saint Helena Pound');
INSERT INTO `currency_code` VALUES ('134', 'SIT', '斯洛文尼亚托拉尔', 'Slovenian Tolar');
INSERT INTO `currency_code` VALUES ('135', 'SLL', '塞拉利昂利昂', 'Sierra Leonean Leone');
INSERT INTO `currency_code` VALUES ('136', 'SOS', '索马里先令', 'Somali Shilling');
INSERT INTO `currency_code` VALUES ('137', 'SRD', '苏里南元', 'Suriname Dollar');
INSERT INTO `currency_code` VALUES ('138', 'STD', '圣多美多布拉', 'Sao Tome Dobra');
INSERT INTO `currency_code` VALUES ('139', 'SVC', '萨尔瓦多科朗', 'Salvadoran Colon');
INSERT INTO `currency_code` VALUES ('140', 'SYP', '叙利亚镑', 'Syrian Pound');
INSERT INTO `currency_code` VALUES ('141', 'SZL', '斯威士兰里兰吉尼', 'Swazi Lilangeni');
INSERT INTO `currency_code` VALUES ('142', 'THB', '泰铢', 'Thai Baht');
INSERT INTO `currency_code` VALUES ('143', 'TJS', '塔吉克斯坦索莫尼', 'Tajikistan Somoni');
INSERT INTO `currency_code` VALUES ('144', 'TMT', '土库曼斯坦马纳特', 'Turkmenistan Manat');
INSERT INTO `currency_code` VALUES ('145', 'TND', '突尼斯第纳尔', 'Tunisian Dinar');
INSERT INTO `currency_code` VALUES ('146', 'TOP', '汤加潘加', 'Tongan Pa\'Anga');
INSERT INTO `currency_code` VALUES ('147', 'TRY', '土耳其里拉', 'Turkish Lira');
INSERT INTO `currency_code` VALUES ('148', 'TTD', '特立尼达多巴哥元', 'Trinidad and Tobago Dollar');
INSERT INTO `currency_code` VALUES ('149', 'TWD', '新台币', 'New Taiwan Dollar');
INSERT INTO `currency_code` VALUES ('150', 'TZS', '坦桑尼亚先令', 'Tanzanian Shilling');
INSERT INTO `currency_code` VALUES ('151', 'UAH', '乌克兰格里夫纳', 'Ukrainian Hryvnia');
INSERT INTO `currency_code` VALUES ('152', 'UGX', '乌干达先令', 'Ugandan Shilling');
INSERT INTO `currency_code` VALUES ('153', 'USD', '美元', 'United States Dollar');
INSERT INTO `currency_code` VALUES ('154', 'UYU', '乌拉圭比索', 'Uruguayan Peso');
INSERT INTO `currency_code` VALUES ('155', 'UZS', '乌兹别克斯坦苏姆', 'Uzbekistani Som');
INSERT INTO `currency_code` VALUES ('156', 'VEF', '委内瑞拉玻利瓦尔', 'Venezuelan Bolivar Fuerte');
INSERT INTO `currency_code` VALUES ('157', 'VND', '越南盾', 'Viet Nam Dong');
INSERT INTO `currency_code` VALUES ('158', 'VUV', '瓦努阿图瓦图', 'Vanuatu Vatu');
INSERT INTO `currency_code` VALUES ('159', 'WST', '萨摩亚塔拉', 'Samoa Tala');
INSERT INTO `currency_code` VALUES ('160', 'XAF', '中非法郎', 'Central African CFA Franc');
INSERT INTO `currency_code` VALUES ('161', 'XAG', '银价盎司', 'Ounces of Silver');
INSERT INTO `currency_code` VALUES ('162', 'XAU', '金价盎司', 'Ounces of Gold');
INSERT INTO `currency_code` VALUES ('163', 'XCD', '东加勒比元', 'East Caribbean Dollar');
INSERT INTO `currency_code` VALUES ('164', 'XCP', '铜价盎司', 'Ounces of Copper');
INSERT INTO `currency_code` VALUES ('165', 'XDR', 'IMF特别提款权', 'IMF Special Drawing Rights');
INSERT INTO `currency_code` VALUES ('166', 'XOF', '西非法郎', 'West African CFA');
INSERT INTO `currency_code` VALUES ('167', 'XPD', '钯价盎司', 'Ounces of Palladium');
INSERT INTO `currency_code` VALUES ('168', 'XPF', '太平洋法郎', 'French Pacific Franc');
INSERT INTO `currency_code` VALUES ('169', 'XPT', '珀价盎司', 'Ounces of Platinum');
INSERT INTO `currency_code` VALUES ('170', 'YER', '也门里亚尔', 'Yemeni Rial');
INSERT INTO `currency_code` VALUES ('171', 'ZAR', '南非兰特', 'South African Rand');
INSERT INTO `currency_code` VALUES ('172', 'ZMW', '赞比亚克瓦查', 'Zambian Kwacha');
INSERT INTO `currency_code` VALUES ('173', 'ZWL', '津巴布韦元', 'Zimbabwean Dollar');

-- ----------------------------
-- Table structure for customer_address
-- ----------------------------
DROP TABLE IF EXISTS `customer_address`;
CREATE TABLE `customer_address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telephone` varchar(40) DEFAULT NULL,
  `country` int(3) DEFAULT NULL,
  `country_label` varchar(100) DEFAULT NULL,
  `state` int(3) DEFAULT NULL,
  `state_label` varchar(100) DEFAULT NULL,
  `city` int(3) DEFAULT NULL,
  `city_label` varchar(100) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL,
  `is_default` int(255) DEFAULT NULL,
  `street` text,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of customer_address
-- ----------------------------
INSERT INTO `customer_address` VALUES ('1', 'alice', 'lin', 'aa@aa.com', '13472740665', '7', 'China', '248', 'Tianjin', '3039', 'Hexi', '200120', '1', '0', '上海市浦东新区上浦路36弄42号601', '2018-04-28 14:32:04', '2018-04-28 14:32:04');
INSERT INTO `customer_address` VALUES ('2', 'Melody', 'Li', 'bb@bb.com', '13472740668', '7', 'China', '249', 'Hebei', '3058', 'Baoding', '200120', '1', '1', '上海市浦东新区上浦路36弄42号602', '2018-04-28 06:32:04', '2018-04-28 06:32:04');

-- ----------------------------
-- Table structure for dashboard__widgets
-- ----------------------------
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

-- ----------------------------
-- Records of dashboard__widgets
-- ----------------------------

-- ----------------------------
-- Table structure for media__files
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of media__files
-- ----------------------------
INSERT INTO `media__files` VALUES ('1', '0', '2018-05-07-03-33-03-5aefc8ef3e7c3.jpg', '/assets/media/2018-05-07-03-33-03-5aefc8ef3e7c3.jpg', 'jpg', 'image/jpeg', '43520', '0', '2018-05-07 03:33:03', '2018-05-07 03:33:03');
INSERT INTO `media__files` VALUES ('2', '0', '2018-05-07-03-33-04-5aefc8f097412.jpg', '/assets/media/2018-05-07-03-33-04-5aefc8f097412.jpg', 'jpg', 'image/jpeg', '40640', '0', '2018-05-07 03:33:04', '2018-05-07 03:33:04');

-- ----------------------------
-- Table structure for media__file_translations
-- ----------------------------
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

-- ----------------------------
-- Records of media__file_translations
-- ----------------------------

-- ----------------------------
-- Table structure for media__imageables
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of media__imageables
-- ----------------------------
INSERT INTO `media__imageables` VALUES ('1', '2', '1', 'Modules\\Page\\Entities\\Page', 'image', null, '2018-02-05 13:50:00', '2018-02-05 14:17:23', null);
INSERT INTO `media__imageables` VALUES ('2', '2', '1', 'Modules\\Blog\\Entities\\Post', 'thumbnail', null, '2018-02-06 07:34:31', '2018-02-06 07:42:27', null);
INSERT INTO `media__imageables` VALUES ('4', '8', '2', 'Modules\\Blog\\Entities\\Post', 'thumbnail', null, '2018-02-11 13:41:31', '2018-02-11 13:41:31', null);
INSERT INTO `media__imageables` VALUES ('7', '1', '4', 'Modules\\Product\\Entities\\Product', 'gallery', '0', '2018-05-07 03:52:55', '2018-05-07 05:36:01', null);
INSERT INTO `media__imageables` VALUES ('8', '2', '4', 'Modules\\Product\\Entities\\Product', 'gallery', '1', '2018-05-07 03:52:55', '2018-05-07 05:36:01', null);

-- ----------------------------
-- Table structure for menu__menuitems
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu__menuitems
-- ----------------------------
INSERT INTO `menu__menuitems` VALUES ('1', '1', null, '0', null, 'page', '', null, null, null, null, null, '2018-02-22 06:56:50', '2018-02-22 06:56:50', '1', null);
INSERT INTO `menu__menuitems` VALUES ('2', '1', '1', '0', '_self', 'page', null, null, '1', null, null, null, '2018-02-22 08:01:16', '2018-02-22 08:01:16', '0', null);
INSERT INTO `menu__menuitems` VALUES ('4', '1', null, '0', '_self', 'internal', null, null, '1', null, null, null, '2018-02-22 08:55:10', '2018-03-29 05:46:37', '0', null);
INSERT INTO `menu__menuitems` VALUES ('5', '1', null, '1', '_self', 'internal', null, null, '1', null, null, null, '2018-03-26 02:46:18', '2018-03-29 05:46:57', '0', null);

-- ----------------------------
-- Table structure for menu__menuitem_translations
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu__menuitem_translations
-- ----------------------------
INSERT INTO `menu__menuitem_translations` VALUES ('1', '1', 'en', '0', 'root', null, null, '2018-02-22 06:56:50', '2018-02-22 06:56:50');
INSERT INTO `menu__menuitem_translations` VALUES ('2', '1', 'zh', '0', 'root', null, null, '2018-02-22 06:56:50', '2018-02-22 06:56:50');
INSERT INTO `menu__menuitem_translations` VALUES ('3', '2', 'en', '1', 'home', null, 'home', '2018-02-22 08:01:16', '2018-02-22 08:01:16');
INSERT INTO `menu__menuitem_translations` VALUES ('4', '2', 'zh', '1', 'home', null, 'home', '2018-02-22 08:01:16', '2018-02-22 08:08:35');
INSERT INTO `menu__menuitem_translations` VALUES ('7', '4', 'en', '1', 'wedding dress', null, 'cheap-wedding-dress-2018', '2018-02-22 08:55:10', '2018-02-23 07:29:16');
INSERT INTO `menu__menuitem_translations` VALUES ('8', '4', 'zh', '1', '婚纱', null, 'c/cheap-wedding-dress', '2018-02-22 08:55:10', '2018-03-26 02:22:55');
INSERT INTO `menu__menuitem_translations` VALUES ('9', '5', 'en', '0', 'shoes', null, 'c/shoes', '2018-03-26 02:46:18', '2018-03-26 02:47:05');
INSERT INTO `menu__menuitem_translations` VALUES ('10', '5', 'zh', '1', '鞋子', null, 'c/shoes', '2018-03-26 02:46:18', '2018-03-26 02:47:05');

-- ----------------------------
-- Table structure for menu__menus
-- ----------------------------
DROP TABLE IF EXISTS `menu__menus`;
CREATE TABLE `menu__menus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu__menus
-- ----------------------------
INSERT INTO `menu__menus` VALUES ('1', 'header-menu', '0', '2018-02-22 06:56:50', '2018-02-22 06:56:50');

-- ----------------------------
-- Table structure for menu__menu_translations
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of menu__menu_translations
-- ----------------------------
INSERT INTO `menu__menu_translations` VALUES ('1', '1', 'en', '1', 'header', '2018-02-22 06:56:50', '2018-02-22 10:26:12');
INSERT INTO `menu__menu_translations` VALUES ('2', '1', 'zh', '1', '头部菜单', '2018-02-22 06:56:50', '2018-02-22 06:56:50');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_07_02_230147_migration_cartalyst_sentinel', '1');
INSERT INTO `migrations` VALUES ('2', '2016_06_24_193447_create_user_tokens_table', '1');
INSERT INTO `migrations` VALUES ('3', '2014_10_14_200250_create_settings_table', '2');
INSERT INTO `migrations` VALUES ('4', '2014_10_15_191204_create_setting_translations_table', '2');
INSERT INTO `migrations` VALUES ('5', '2015_06_18_170048_make_settings_value_text_field', '2');
INSERT INTO `migrations` VALUES ('6', '2015_10_22_130947_make_settings_name_unique', '2');
INSERT INTO `migrations` VALUES ('7', '2017_09_17_164631_make_setting_value_nullable', '2');
INSERT INTO `migrations` VALUES ('8', '2014_11_03_160015_create_menus_table', '3');
INSERT INTO `migrations` VALUES ('9', '2014_11_03_160138_create_menu-translations_table', '3');
INSERT INTO `migrations` VALUES ('10', '2014_11_03_160753_create_menuitems_table', '3');
INSERT INTO `migrations` VALUES ('11', '2014_11_03_160804_create_menuitem_translation_table', '3');
INSERT INTO `migrations` VALUES ('12', '2014_12_17_185301_add_root_column_to_menus_table', '3');
INSERT INTO `migrations` VALUES ('13', '2015_09_05_100142_add_icon_column_to_menuitems_table', '3');
INSERT INTO `migrations` VALUES ('14', '2016_01_26_102307_update_icon_column_on_menuitems_table', '3');
INSERT INTO `migrations` VALUES ('15', '2016_08_01_142345_add_link_type_colymn_to_menuitems_table', '3');
INSERT INTO `migrations` VALUES ('16', '2016_08_01_143130_add_class_column_to_menuitems_table', '3');
INSERT INTO `migrations` VALUES ('17', '2017_09_18_192639_make_title_field_nullable_menu_table', '3');
INSERT INTO `migrations` VALUES ('18', '2014_10_26_162751_create_files_table', '4');
INSERT INTO `migrations` VALUES ('19', '2014_10_26_162811_create_file_translations_table', '4');
INSERT INTO `migrations` VALUES ('20', '2015_02_27_105241_create_image_links_table', '4');
INSERT INTO `migrations` VALUES ('21', '2015_12_19_143643_add_sortable', '4');
INSERT INTO `migrations` VALUES ('22', '2017_09_20_144631_add_folders_columns_on_files_table', '4');
INSERT INTO `migrations` VALUES ('23', '2014_11_30_191858_create_pages_tables', '5');
INSERT INTO `migrations` VALUES ('24', '2017_10_13_103344_make_status_field_nullable_on_page_translations_table', '5');
INSERT INTO `migrations` VALUES ('25', '2015_04_02_184200_create_widgets_table', '6');
INSERT INTO `migrations` VALUES ('26', '2013_04_09_062329_create_revisions_table', '7');
INSERT INTO `migrations` VALUES ('27', '2015_11_20_184604486385_create_translation_translations_table', '7');
INSERT INTO `migrations` VALUES ('28', '2015_11_20_184604743083_create_translation_translation_translations_table', '7');
INSERT INTO `migrations` VALUES ('29', '2015_12_01_094031_update_translation_translations_table_with_index', '7');
INSERT INTO `migrations` VALUES ('30', '2016_07_12_181155032011_create_tag_tags_table', '8');
INSERT INTO `migrations` VALUES ('31', '2016_07_12_181155289444_create_tag_tag_translations_table', '8');
INSERT INTO `migrations` VALUES ('34', '2014_09_27_170107_create_posts_table', '10');
INSERT INTO `migrations` VALUES ('35', '2014_09_27_175411_create_post_translations_table', '10');
INSERT INTO `migrations` VALUES ('36', '2014_09_27_175736_create_categories_table', '10');
INSERT INTO `migrations` VALUES ('37', '2014_09_27_175804_create_category_translations_table', '10');
INSERT INTO `migrations` VALUES ('38', '2015_05_29_180714_add_status_column_to_post_table', '10');
INSERT INTO `migrations` VALUES ('41', '2016_07_21_081229115922_create_attribute_attributes_table', '11');
INSERT INTO `migrations` VALUES ('42', '2016_07_21_081229374072_create_attribute_attribute_translations_table', '11');
INSERT INTO `migrations` VALUES ('67', '2018_02_05_133152976979_create_product_attrsets_table', '12');
INSERT INTO `migrations` VALUES ('68', '2018_02_05_133153231348_create_product_attrset_translations_table', '12');
INSERT INTO `migrations` VALUES ('69', '2018_02_05_133153494643_create_product_products_table', '12');
INSERT INTO `migrations` VALUES ('70', '2018_02_05_133153750701_create_product_product_translations_table', '12');
INSERT INTO `migrations` VALUES ('71', '2018_02_05_133154012183_create_product_categories_table', '12');
INSERT INTO `migrations` VALUES ('72', '2018_02_05_133154266494_create_product_category_translations_table', '12');
INSERT INTO `migrations` VALUES ('73', '2018_02_05_133154523767_create_product_images_table', '12');
INSERT INTO `migrations` VALUES ('74', '2018_02_05_133155035928_create_product_skus_table', '12');
INSERT INTO `migrations` VALUES ('75', '2018_02_05_133155291155_create_product_sku_translations_table', '12');
INSERT INTO `migrations` VALUES ('76', '2018_02_05_133155547986_create_product_attrs_table', '12');
INSERT INTO `migrations` VALUES ('77', '2018_02_05_133155799894_create_product_attr_translations_table', '12');

-- ----------------------------
-- Table structure for page__pages
-- ----------------------------
DROP TABLE IF EXISTS `page__pages`;
CREATE TABLE `page__pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `template` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of page__pages
-- ----------------------------
INSERT INTO `page__pages` VALUES ('1', '1', 'home', '2018-02-05 10:08:18', '2018-02-05 10:08:18');

-- ----------------------------
-- Table structure for page__page_translations
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of page__page_translations
-- ----------------------------
INSERT INTO `page__page_translations` VALUES ('1', '1', 'en', 'Home page', 'home', '1', '<p>english&nbsp;</p>', 'Home page', null, null, null, null, null, '2018-02-05 10:08:18', '2018-02-05 14:18:08');
INSERT INTO `page__page_translations` VALUES ('2', '1', 'zh', '首页标题', 'home', '1', '<p>chinese</p>', null, null, null, null, null, null, '2018-02-05 13:50:00', '2018-02-05 14:18:08');

-- ----------------------------
-- Table structure for persistences
-- ----------------------------
DROP TABLE IF EXISTS `persistences`;
CREATE TABLE `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=1806 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of persistences
-- ----------------------------
INSERT INTO `persistences` VALUES ('1', '1', 'tvHXXWJfUxL4IlesCMbt7kHZUwYphPTL', '2018-02-05 10:08:57', '2018-02-05 10:08:57');
INSERT INTO `persistences` VALUES ('2', '1', 'taFsIvzn2FPYP7hg4RCNqFolhjgAUWhp', '2018-02-05 10:09:07', '2018-02-05 10:09:07');
INSERT INTO `persistences` VALUES ('3', '1', 'fPRbUGH5sro5UggdQs4KCIbCSAUCEtfb', '2018-02-05 10:09:12', '2018-02-05 10:09:12');
INSERT INTO `persistences` VALUES ('4', '1', 'DgJSwYDWaLdeQMRYprqs5cFmDfwUtErt', '2018-02-05 10:09:12', '2018-02-05 10:09:12');
INSERT INTO `persistences` VALUES ('5', '1', 'rsFqUEAvRr0R18jxcipZ0sNxemTD92Db', '2018-02-05 10:09:12', '2018-02-05 10:09:12');
INSERT INTO `persistences` VALUES ('6', '1', '4nUOoADYeypOnwJhxfTNd9Ig451Lg0MX', '2018-02-05 10:09:26', '2018-02-05 10:09:26');
INSERT INTO `persistences` VALUES ('7', '1', 'krcEti7hRIsMU7c2s2t2whNYxe1bIEyV', '2018-02-05 10:09:28', '2018-02-05 10:09:28');
INSERT INTO `persistences` VALUES ('8', '1', 'Jd74qBxioK3xEElpHOAqO6Qm1Uw8Qnot', '2018-02-05 10:14:51', '2018-02-05 10:14:51');
INSERT INTO `persistences` VALUES ('9', '1', '60p1RKYynesGWxihCPAjuzn2ux8NSjeV', '2018-02-05 10:14:53', '2018-02-05 10:14:53');
INSERT INTO `persistences` VALUES ('10', '1', 'coawhNgGe8XTKhKge9ncH9XEFSTwwCQG', '2018-02-05 10:14:57', '2018-02-05 10:14:57');
INSERT INTO `persistences` VALUES ('11', '1', 'M98iMctAYOk9aRvGJhG38EfrTq5zh3tA', '2018-02-05 10:14:59', '2018-02-05 10:14:59');
INSERT INTO `persistences` VALUES ('12', '1', 'wvmUv4tWVY9Vi1diPDOGbres6koFVLlj', '2018-02-05 10:14:59', '2018-02-05 10:14:59');
INSERT INTO `persistences` VALUES ('13', '1', 'r3Vcle2cfZhEFRFZgY0HJwg8NuAbYSVi', '2018-02-05 10:15:05', '2018-02-05 10:15:05');
INSERT INTO `persistences` VALUES ('14', '1', '74YTU4h2eeT5gJVxYjWrObO0yHCRIwX5', '2018-02-05 10:15:06', '2018-02-05 10:15:06');
INSERT INTO `persistences` VALUES ('15', '1', 'REJxKCVqAqM6dCgrHuB2vOQy0Ts3dAwW', '2018-02-05 10:15:09', '2018-02-05 10:15:09');
INSERT INTO `persistences` VALUES ('16', '1', '4uTQY3A3sfktRzImnfqmRgxozS7YMR8O', '2018-02-05 10:15:34', '2018-02-05 10:15:34');
INSERT INTO `persistences` VALUES ('17', '1', 'YSgRW1fVGe5kSZG9GciAN9p4gv8x2B1f', '2018-02-05 13:38:48', '2018-02-05 13:38:48');
INSERT INTO `persistences` VALUES ('18', '1', 'tJDu7TSIBAXi8tL54GGVBDqZGV3yWeF8', '2018-02-05 13:38:49', '2018-02-05 13:38:49');
INSERT INTO `persistences` VALUES ('19', '1', 'E0czVm4OkodKmA7KLd5bbOOC4GQZ8fse', '2018-02-05 13:38:54', '2018-02-05 13:38:54');
INSERT INTO `persistences` VALUES ('20', '1', 'qxHmCWHUcozCNtLQRYUyGp8xygYTM0d1', '2018-02-05 13:38:58', '2018-02-05 13:38:58');
INSERT INTO `persistences` VALUES ('21', '1', 'on5fc8PF7ggWHDo76rkizLB8WroKvqNP', '2018-02-05 13:38:59', '2018-02-05 13:38:59');
INSERT INTO `persistences` VALUES ('22', '1', 'JEAPLovQZzDdNAzslW77je2hzqzfKhLu', '2018-02-05 13:39:03', '2018-02-05 13:39:03');
INSERT INTO `persistences` VALUES ('23', '1', 'UzKof0vyTZOqKZp14JMbCZP6sfzRWLeu', '2018-02-05 13:39:05', '2018-02-05 13:39:05');
INSERT INTO `persistences` VALUES ('24', '1', 'zuFAtBUxV0xdEnP7iH8dOI2PmEcdrtOg', '2018-02-05 13:41:13', '2018-02-05 13:41:13');
INSERT INTO `persistences` VALUES ('25', '1', 'Ln93DKK6aaIgieod5upOKusWj7OeMWnI', '2018-02-05 13:43:11', '2018-02-05 13:43:11');
INSERT INTO `persistences` VALUES ('26', '1', 'qnFQyQ1rEdK61Ua4gNxrui4ajkHANmzn', '2018-02-05 13:44:53', '2018-02-05 13:44:53');
INSERT INTO `persistences` VALUES ('27', '1', 'pDSPGNLobGeOXLCACkXgqiSuZmJSk8ks', '2018-02-05 13:45:09', '2018-02-05 13:45:09');
INSERT INTO `persistences` VALUES ('28', '1', '4J7W35aTeTYcJIgs2cOU7WD76WbJyVzc', '2018-02-05 13:45:21', '2018-02-05 13:45:21');
INSERT INTO `persistences` VALUES ('29', '1', 'lVKvaU6E8PmGtGgNgbqH4QP5x2k3XUDH', '2018-02-05 13:45:21', '2018-02-05 13:45:21');
INSERT INTO `persistences` VALUES ('30', '1', 'mcPqalHmoNtdT3PBwzM14fKHh2pq2uk9', '2018-02-05 13:48:48', '2018-02-05 13:48:48');
INSERT INTO `persistences` VALUES ('31', '1', 'm0NmsoH7CiT4XyKMaM4goTiuRUgWJQjp', '2018-02-05 13:48:53', '2018-02-05 13:48:53');
INSERT INTO `persistences` VALUES ('32', '1', 'Qmu4b7gYdmHQBfa8ZTsT8NeRuOigcknL', '2018-02-05 13:48:53', '2018-02-05 13:48:53');
INSERT INTO `persistences` VALUES ('33', '1', '2w7Um7iH6fboDWSkFL9X4cKF5uLcqF3s', '2018-02-05 13:48:53', '2018-02-05 13:48:53');
INSERT INTO `persistences` VALUES ('34', '1', 'Q0ZSkT6fqCmTJLxwZKW38jLjtnohJPUc', '2018-02-05 13:48:55', '2018-02-05 13:48:55');
INSERT INTO `persistences` VALUES ('35', '1', 'q1keauczPBQSNHhLarcsCMV3dpdQO98L', '2018-02-05 13:49:07', '2018-02-05 13:49:07');
INSERT INTO `persistences` VALUES ('36', '1', 'd0yv24O4Ee6zeYaoaVNSCGJ96VzvTCsz', '2018-02-05 13:49:31', '2018-02-05 13:49:31');
INSERT INTO `persistences` VALUES ('37', '1', 'HTHgFucz155Yr1OB7Lv1i6sivSUJHwAG', '2018-02-05 13:49:44', '2018-02-05 13:49:44');
INSERT INTO `persistences` VALUES ('38', '1', 'eIw6uw5lPLuP0ezik1aZJRebs04EEdXv', '2018-02-05 13:50:00', '2018-02-05 13:50:00');
INSERT INTO `persistences` VALUES ('39', '1', 'TRkZYqdBFeFNn8zk1b6tRvKqULZKlalb', '2018-02-05 13:50:01', '2018-02-05 13:50:01');
INSERT INTO `persistences` VALUES ('40', '1', 'IKSRET3Va4h00GAfdwDoOXRyhVJ25G5o', '2018-02-05 13:50:03', '2018-02-05 13:50:03');
INSERT INTO `persistences` VALUES ('41', '1', 'n7QJler9X7l1s61sXQPkQDn9a1NT7ULW', '2018-02-05 13:50:03', '2018-02-05 13:50:03');
INSERT INTO `persistences` VALUES ('42', '1', 'S7FuqFn4dGEnf7IGQzLkX664hT7DaPI6', '2018-02-05 13:50:03', '2018-02-05 13:50:03');
INSERT INTO `persistences` VALUES ('43', '1', 'jXfXrXys6gQsWTk72HOf2G4PsVQL4AAI', '2018-02-05 13:50:23', '2018-02-05 13:50:23');
INSERT INTO `persistences` VALUES ('44', '1', 'k3Fg1rPeLIPjOIy1qfBQxFLCLV1RntnQ', '2018-02-05 13:50:23', '2018-02-05 13:50:23');
INSERT INTO `persistences` VALUES ('45', '1', '9GH1PQvOGJm2KgDofwyRFnCyn6H791Bb', '2018-02-05 13:50:25', '2018-02-05 13:50:25');
INSERT INTO `persistences` VALUES ('46', '1', 'zYptmVY7srqQE3f7AodVkR3CzeQWXLEO', '2018-02-05 13:50:25', '2018-02-05 13:50:25');
INSERT INTO `persistences` VALUES ('47', '1', 'WiEF6bXBJ4YkhjMreP6a6kKAkycqPnG6', '2018-02-05 13:50:25', '2018-02-05 13:50:25');
INSERT INTO `persistences` VALUES ('48', '1', 'kRs0cMCaBfuLW6S5H57lFBF60KffZeOz', '2018-02-05 13:52:01', '2018-02-05 13:52:01');
INSERT INTO `persistences` VALUES ('49', '1', 'LPfWYEYwdn7Ff6zKujZb7fZZMkWO5obg', '2018-02-05 13:54:16', '2018-02-05 13:54:16');
INSERT INTO `persistences` VALUES ('50', '1', 'lm2znvvYSUdWRk0ppkc7jdd1UbBEUaUh', '2018-02-05 13:54:16', '2018-02-05 13:54:16');
INSERT INTO `persistences` VALUES ('51', '1', 'kHoVKPRRF8Q5IJ1S7ylgvbAGHsxth36P', '2018-02-05 13:54:16', '2018-02-05 13:54:16');
INSERT INTO `persistences` VALUES ('52', '1', 'iewLPlXGWIUgrso1HD36wGsoUhqVyzwA', '2018-02-05 13:54:23', '2018-02-05 13:54:23');
INSERT INTO `persistences` VALUES ('53', '1', 'o71aa4BUTmKCEUzEfGejmRHdSTRjXrWi', '2018-02-05 13:54:28', '2018-02-05 13:54:28');
INSERT INTO `persistences` VALUES ('54', '1', 'BH4WgH1USDZNJEoYPhfbJZIRSIw8o43p', '2018-02-05 13:54:37', '2018-02-05 13:54:37');
INSERT INTO `persistences` VALUES ('55', '1', 'NImVEHcKQXrY324Ly66jGco8JqMbD4Us', '2018-02-05 13:55:01', '2018-02-05 13:55:01');
INSERT INTO `persistences` VALUES ('56', '1', 'wHOj466nMrmjOtQGPDtFq1oEnzSUYaYY', '2018-02-05 13:55:02', '2018-02-05 13:55:02');
INSERT INTO `persistences` VALUES ('57', '1', 'ADMqtCeeby1XAAdcNHmdy408y66x4GqN', '2018-02-05 13:56:52', '2018-02-05 13:56:52');
INSERT INTO `persistences` VALUES ('58', '1', 'BOAuwDKEqHaIs6kSOsRN08w7mo1nNLDz', '2018-02-05 13:57:30', '2018-02-05 13:57:30');
INSERT INTO `persistences` VALUES ('59', '1', 'sBosmNCDLOiZvVyR9pfoBUFVmOxPe4XO', '2018-02-05 13:57:36', '2018-02-05 13:57:36');
INSERT INTO `persistences` VALUES ('60', '1', 'QJtmTSCYWokERbgnBGNfybNdLR1MoQLo', '2018-02-05 13:57:40', '2018-02-05 13:57:40');
INSERT INTO `persistences` VALUES ('61', '1', 'AhYQcHoYgHUqpMQnMcOdRP81fwgV2GTc', '2018-02-05 13:58:00', '2018-02-05 13:58:00');
INSERT INTO `persistences` VALUES ('62', '1', 'Xma6ZEx3OIqEIv9XANJwphunswojoCut', '2018-02-05 13:59:26', '2018-02-05 13:59:26');
INSERT INTO `persistences` VALUES ('63', '1', 'uFz9Fb2NHqD4mdhZVxcUSt35cChUKJST', '2018-02-05 14:00:42', '2018-02-05 14:00:42');
INSERT INTO `persistences` VALUES ('64', '1', 'ZiGJEbzrpWRonNemfEasba7taubk5mT6', '2018-02-05 14:01:22', '2018-02-05 14:01:22');
INSERT INTO `persistences` VALUES ('65', '1', 'ysZeDnprCzaL92BzKM3FbPoO5zfbG5lE', '2018-02-05 14:01:29', '2018-02-05 14:01:29');
INSERT INTO `persistences` VALUES ('66', '1', 'VSNsfPcfs9wnSnjPCUZdcuWCe1r8o9EJ', '2018-02-05 14:01:36', '2018-02-05 14:01:36');
INSERT INTO `persistences` VALUES ('67', '1', 'fhN8XxWw3AAZVbXyVSEr42y14zcqxxFQ', '2018-02-05 14:01:57', '2018-02-05 14:01:57');
INSERT INTO `persistences` VALUES ('68', '1', 'IMfcmrMsBmY7xcH88paC78E3nG0vVlBa', '2018-02-05 14:02:17', '2018-02-05 14:02:17');
INSERT INTO `persistences` VALUES ('69', '1', '9x78lukdT0Q0xEYyOM5yFr4IOchNCp9k', '2018-02-05 14:02:45', '2018-02-05 14:02:45');
INSERT INTO `persistences` VALUES ('70', '1', 'wsb7dLLcBPqpqzp2dVpFJGE8Po7dvrlu', '2018-02-05 14:03:22', '2018-02-05 14:03:22');
INSERT INTO `persistences` VALUES ('71', '1', '3oSht0JbD5dwjwUXNcMCL2tuSS7kwG8L', '2018-02-05 14:04:05', '2018-02-05 14:04:05');
INSERT INTO `persistences` VALUES ('72', '1', 'tPCL2OvgNQCx2FDZQSC68kjNJt0ZzQMi', '2018-02-05 14:16:55', '2018-02-05 14:16:55');
INSERT INTO `persistences` VALUES ('73', '1', 'zdr710ZzDFcq6Wn4viqCNkmP8fv60t18', '2018-02-05 14:16:59', '2018-02-05 14:16:59');
INSERT INTO `persistences` VALUES ('74', '1', 'amrmsbDsSocJcTr156HRvd2sP25F2dA2', '2018-02-05 14:17:07', '2018-02-05 14:17:07');
INSERT INTO `persistences` VALUES ('75', '1', 'qvVsY0yxgcbayjd27ZiWHgD5NxoYVuVo', '2018-02-05 14:17:10', '2018-02-05 14:17:10');
INSERT INTO `persistences` VALUES ('76', '1', 'xDPTNXnjLq4SonIjinnbag6KplYPwozh', '2018-02-05 14:17:10', '2018-02-05 14:17:10');
INSERT INTO `persistences` VALUES ('77', '1', 'IFGSdpw0bx19d8tdySmMIenN9a7fTg7F', '2018-02-05 14:17:10', '2018-02-05 14:17:10');
INSERT INTO `persistences` VALUES ('78', '1', '7AA6fAjQzVm8xVtVE1mXO524Yx8jZD7h', '2018-02-05 14:17:23', '2018-02-05 14:17:23');
INSERT INTO `persistences` VALUES ('79', '1', 'R2Q4Mocnryr3NHFMD9YRNzZsk2x3IEQX', '2018-02-05 14:17:23', '2018-02-05 14:17:23');
INSERT INTO `persistences` VALUES ('80', '1', 'Yb7LTqV262vcuFvh3KtGSlwT9laiHx4d', '2018-02-05 14:17:42', '2018-02-05 14:17:42');
INSERT INTO `persistences` VALUES ('81', '1', 'f1cOcczHzmuNAZ2Ehx1suU6PTWT2qHTi', '2018-02-05 14:17:42', '2018-02-05 14:17:42');
INSERT INTO `persistences` VALUES ('82', '1', '7dxloYjFdpBtwIJvMnMtJO3ioyjArdZr', '2018-02-05 14:17:42', '2018-02-05 14:17:42');
INSERT INTO `persistences` VALUES ('83', '1', 'DcSrm3sIKzRiSEtNq2m4KU1vNyzOI94I', '2018-02-05 14:17:51', '2018-02-05 14:17:51');
INSERT INTO `persistences` VALUES ('84', '1', 'bBFARZFyFp5qlG28uYv9Qq06m6mMm2ai', '2018-02-05 14:17:54', '2018-02-05 14:17:54');
INSERT INTO `persistences` VALUES ('85', '1', '4HSTasfghPtSoSaIB2veyjZg6HqA5rdL', '2018-02-05 14:17:54', '2018-02-05 14:17:54');
INSERT INTO `persistences` VALUES ('86', '1', 'uT5GwPC6nBgLr2qkyVKjfeNwVC2kZMVC', '2018-02-05 14:17:54', '2018-02-05 14:17:54');
INSERT INTO `persistences` VALUES ('87', '1', 'w3z748NmbfQhHR9XK9ZaJDDtkUBfE72a', '2018-02-05 14:18:08', '2018-02-05 14:18:08');
INSERT INTO `persistences` VALUES ('88', '1', 'TmPMWZseg6bcLJkim9tapfXCJAz2UvZ8', '2018-02-05 14:18:08', '2018-02-05 14:18:08');
INSERT INTO `persistences` VALUES ('89', '1', 'I2sndaMsZ3lsqK7OXyovG63FC3Vi3M1v', '2018-02-05 14:18:10', '2018-02-05 14:18:10');
INSERT INTO `persistences` VALUES ('90', '1', 'deXuckNMe51WHEqyHBkMkcgQlgMx2Joz', '2018-02-05 14:18:11', '2018-02-05 14:18:11');
INSERT INTO `persistences` VALUES ('91', '1', '1jBULuQE3g8j5YRbx0BEfHJxgQlSZxQB', '2018-02-05 14:18:11', '2018-02-05 14:18:11');
INSERT INTO `persistences` VALUES ('92', '1', 'UEw3wcsAjyJYhztbkERPYYxTIEwYr0WX', '2018-02-05 14:18:19', '2018-02-05 14:18:19');
INSERT INTO `persistences` VALUES ('93', '1', 'ntHXIUt82AA3SCo3MjGj4r3BDyt0FGkp', '2018-02-05 14:18:19', '2018-02-05 14:18:19');
INSERT INTO `persistences` VALUES ('94', '1', 'SZD3PiDejZVgOU0EWzFlG1GwRqKPSJCh', '2018-02-05 14:18:20', '2018-02-05 14:18:20');
INSERT INTO `persistences` VALUES ('95', '1', 'bxkbUOmlObDT049S4HfajGCrs4eZ9Cw5', '2018-02-06 07:04:34', '2018-02-06 07:04:34');
INSERT INTO `persistences` VALUES ('96', '1', 'n2qORkVHmcNm5s9yXHxbZYnqVmXfmoL6', '2018-02-06 07:04:39', '2018-02-06 07:04:39');
INSERT INTO `persistences` VALUES ('97', '1', 'cDaDmgycOGtVSP9qlhjDPlIGYf27gPes', '2018-02-06 07:10:00', '2018-02-06 07:10:00');
INSERT INTO `persistences` VALUES ('98', '1', 'zzEkC2I9pYOtPMCZPLRUB0K7TcYHHA3F', '2018-02-06 07:11:09', '2018-02-06 07:11:09');
INSERT INTO `persistences` VALUES ('99', '1', 'PwW6a0nFeuRuaTfy9F8KrSWYu4ApdmQd', '2018-02-06 07:11:09', '2018-02-06 07:11:09');
INSERT INTO `persistences` VALUES ('100', '1', 'wJEWELT1cHDKL9SC5UoU8FeuGuicVzGO', '2018-02-06 07:11:10', '2018-02-06 07:11:10');
INSERT INTO `persistences` VALUES ('101', '1', 'hZrFukSBRB0cvid2R1eDaCJCjrSn2Tsw', '2018-02-06 07:12:33', '2018-02-06 07:12:33');
INSERT INTO `persistences` VALUES ('102', '1', 'n34exN2uoBNzt1BIdqtRLxCiEcailQ1H', '2018-02-06 07:12:33', '2018-02-06 07:12:33');
INSERT INTO `persistences` VALUES ('103', '1', 'DU6l196bamblYsXDMM5Qzl2Tt1tRRNga', '2018-02-06 07:12:33', '2018-02-06 07:12:33');
INSERT INTO `persistences` VALUES ('104', '1', 'tAgNhk7bcW28SNPR4YfoiSN1Kcj37FUF', '2018-02-06 07:12:43', '2018-02-06 07:12:43');
INSERT INTO `persistences` VALUES ('105', '1', '1hNYBEdnp9sw3Xv2VNMUzhFGlYHSKifL', '2018-02-06 07:12:43', '2018-02-06 07:12:43');
INSERT INTO `persistences` VALUES ('106', '1', 'Ic12jCT243U8a6EGpZJOXDhKjPcAPVO0', '2018-02-06 07:12:43', '2018-02-06 07:12:43');
INSERT INTO `persistences` VALUES ('107', '1', 'J89v3rlVQ0O51YWKJO6ImrRDKHMeKPem', '2018-02-06 07:12:59', '2018-02-06 07:12:59');
INSERT INTO `persistences` VALUES ('108', '1', 'IUc40BHJ8UfWAZBIJN7wwa7XrovFE0Bs', '2018-02-06 07:12:59', '2018-02-06 07:12:59');
INSERT INTO `persistences` VALUES ('109', '1', 'WtqfmvP2OstGR1xhG8YgyyFrw9RQQuza', '2018-02-06 07:12:59', '2018-02-06 07:12:59');
INSERT INTO `persistences` VALUES ('110', '1', 'EI8CrWvnGh6TF8lGxBubkOJbWeO8uD1H', '2018-02-06 07:13:31', '2018-02-06 07:13:31');
INSERT INTO `persistences` VALUES ('111', '1', 'hZJEIsViuGBjA2rPptt2jUWyYufXPRfb', '2018-02-06 07:13:31', '2018-02-06 07:13:31');
INSERT INTO `persistences` VALUES ('112', '1', 'buOT9AZ4M9l5SguWGBJQpvcoBTLFzjFO', '2018-02-06 07:13:31', '2018-02-06 07:13:31');
INSERT INTO `persistences` VALUES ('113', '1', '2LWei6OjdyV1bGZOoz980H7C4mEofsum', '2018-02-06 07:15:59', '2018-02-06 07:15:59');
INSERT INTO `persistences` VALUES ('114', '1', 'ffbqr1l8zly0MjStSz4xoHa5m1kkUvi3', '2018-02-06 07:16:02', '2018-02-06 07:16:02');
INSERT INTO `persistences` VALUES ('115', '1', '7vBfDb6mzUgycH7nrmW8GcqWsyxLjESM', '2018-02-06 07:16:02', '2018-02-06 07:16:02');
INSERT INTO `persistences` VALUES ('116', '1', 'UXF07M5mZ6Pf97vIcT1W5VaEuiESA7f5', '2018-02-06 07:16:02', '2018-02-06 07:16:02');
INSERT INTO `persistences` VALUES ('117', '1', 'iMPHjirQNF9dCxms9aR0guETAzJ9aMY5', '2018-02-06 07:16:23', '2018-02-06 07:16:23');
INSERT INTO `persistences` VALUES ('118', '1', '42RJwnMsk5UE9VeX3KfK4U1KirwS02Z5', '2018-02-06 07:16:23', '2018-02-06 07:16:23');
INSERT INTO `persistences` VALUES ('119', '1', 'm9dnE6IS0ruHKV0TIXTYHE2eGP0StH2K', '2018-02-06 07:16:23', '2018-02-06 07:16:23');
INSERT INTO `persistences` VALUES ('120', '1', 'LlsO0DkTEveuzAr1Upf3O9UVevHFgQfw', '2018-02-06 07:16:45', '2018-02-06 07:16:45');
INSERT INTO `persistences` VALUES ('121', '1', 'gNo7vlsXyrckk2J08ixRskra7VCdEe9E', '2018-02-06 07:16:45', '2018-02-06 07:16:45');
INSERT INTO `persistences` VALUES ('122', '1', 'kBo3QHxQCB1xWPv7JDnIpsRCxOVoRCWe', '2018-02-06 07:16:45', '2018-02-06 07:16:45');
INSERT INTO `persistences` VALUES ('123', '1', 's447xjnXZ2KTaZeYORhgvXkonrSWJH3B', '2018-02-06 07:17:09', '2018-02-06 07:17:09');
INSERT INTO `persistences` VALUES ('124', '1', 'tCbTDVCKvba300MQOUIGOqqD3qdUr3Wg', '2018-02-06 07:17:09', '2018-02-06 07:17:09');
INSERT INTO `persistences` VALUES ('125', '1', 'FNcjqF1eJSPPe7jesoJej7cksIPg8RHr', '2018-02-06 07:17:09', '2018-02-06 07:17:09');
INSERT INTO `persistences` VALUES ('126', '1', '7uxZBSo77dUy1vjW8Sm1QVkURjR2fJVV', '2018-02-06 07:20:04', '2018-02-06 07:20:04');
INSERT INTO `persistences` VALUES ('127', '1', 'F6cD3Jl8b0mkC0ZUN3ekuaExtvQsTQfr', '2018-02-06 07:20:04', '2018-02-06 07:20:04');
INSERT INTO `persistences` VALUES ('128', '1', 'cf9EUOoPxv87wzIgZBQDnKEdcJLbdFI5', '2018-02-06 07:20:04', '2018-02-06 07:20:04');
INSERT INTO `persistences` VALUES ('129', '1', 'iIMxmI1u1gQvBZjglWQSMSzArlg0QVo9', '2018-02-06 07:20:08', '2018-02-06 07:20:08');
INSERT INTO `persistences` VALUES ('130', '1', 'GNRxs7RcDj7TCCDWhyUR44GQnaEkHXkY', '2018-02-06 07:20:10', '2018-02-06 07:20:10');
INSERT INTO `persistences` VALUES ('131', '1', 'IkES8prG1A0KFZEoPZj0QTJPDzzGuSgR', '2018-02-06 07:20:10', '2018-02-06 07:20:10');
INSERT INTO `persistences` VALUES ('132', '1', 'S7C043komhEbn2x9922NpnTmmTthefqL', '2018-02-06 07:20:18', '2018-02-06 07:20:18');
INSERT INTO `persistences` VALUES ('133', '1', 'oGIMfyvwpA9SVuj7z0qZI9FMZ9wP6oaN', '2018-02-06 07:20:18', '2018-02-06 07:20:18');
INSERT INTO `persistences` VALUES ('134', '1', 'vb8tesgt3CrB1aauPyq2NcVJc82TtR1q', '2018-02-06 07:20:22', '2018-02-06 07:20:22');
INSERT INTO `persistences` VALUES ('135', '1', '5Rw5hMsmT04tRvR2KT96oXsXDrVpPYQp', '2018-02-06 07:21:57', '2018-02-06 07:21:57');
INSERT INTO `persistences` VALUES ('136', '1', 'PvQfQC2iYremPW8fdZ52UBQenwKK3D49', '2018-02-06 07:22:43', '2018-02-06 07:22:43');
INSERT INTO `persistences` VALUES ('137', '1', 'UhtUb7SCroKevin1M9OGnmGXwzh8tb8P', '2018-02-06 07:22:44', '2018-02-06 07:22:44');
INSERT INTO `persistences` VALUES ('138', '1', 'KGrhLg2cYpo0a3d7w2muj0mufrskoJqi', '2018-02-06 07:22:44', '2018-02-06 07:22:44');
INSERT INTO `persistences` VALUES ('139', '1', '12M4GMj2HrXkh7ZrpdhXHUjm5bozZzqk', '2018-02-06 07:22:51', '2018-02-06 07:22:51');
INSERT INTO `persistences` VALUES ('140', '1', 'I8mBRR0RciYMx3EyEq8jwny20TNZ7sAB', '2018-02-06 07:22:51', '2018-02-06 07:22:51');
INSERT INTO `persistences` VALUES ('141', '1', 'RGnc7daVLhpMI1byYggyohH7TYBsFqcI', '2018-02-06 07:22:54', '2018-02-06 07:22:54');
INSERT INTO `persistences` VALUES ('142', '1', 'RmlANMFlKvOGwqbdLi3sVhyxDGcl3wxf', '2018-02-06 08:00:12', '2018-02-06 08:00:12');
INSERT INTO `persistences` VALUES ('143', '1', '3eq93vOz9syvFlbLeUvYynHwyJsNZjWF', '2018-02-06 10:34:46', '2018-02-06 10:34:46');
INSERT INTO `persistences` VALUES ('144', '1', 'D74EnHpQI3H5tkJCkBgHDYxPlLdTMNmi', '2018-02-07 01:09:32', '2018-02-07 01:09:32');
INSERT INTO `persistences` VALUES ('145', '1', 'XWl4W5CjGVv0aaAH6nIah82V3EqdR2Rz', '2018-02-07 05:43:24', '2018-02-07 05:43:24');
INSERT INTO `persistences` VALUES ('146', '1', 'pMd9Jl3nhqe6p6Bxvz4OJfM3GnAeRdTW', '2018-02-07 07:44:48', '2018-02-07 07:44:48');
INSERT INTO `persistences` VALUES ('147', '1', 'Bfvi1AkeoQf7NqmB89YCYGcifaffFOIc', '2018-02-07 07:44:52', '2018-02-07 07:44:52');
INSERT INTO `persistences` VALUES ('148', '1', 'OKVjPdqhzROnQ1tlJVqC0JrDCURKK45z', '2018-02-08 01:04:08', '2018-02-08 01:04:08');
INSERT INTO `persistences` VALUES ('149', '1', 'hX1Qu2ahbMwX3cgN5BuLVFtYJhMFmSY2', '2018-02-08 05:32:41', '2018-02-08 05:32:41');
INSERT INTO `persistences` VALUES ('150', '1', '4OJgzDpRfg3ns60rH7wPdQRXlWntLzVt', '2018-02-09 01:10:03', '2018-02-09 01:10:03');
INSERT INTO `persistences` VALUES ('151', '1', 'wKOIR8T25K5zKbAWvDad39y8zrdsigUd', '2018-02-09 05:38:16', '2018-02-09 05:38:16');
INSERT INTO `persistences` VALUES ('152', '1', '26RWmDNuV7HKtJlILDJCublDYIB8fTI8', '2018-02-09 08:09:17', '2018-02-09 08:09:17');
INSERT INTO `persistences` VALUES ('153', '1', '8ZQFRk7dS1TBoFJNORc1F8n3oVuOr3u1', '2018-02-10 00:13:02', '2018-02-10 00:13:02');
INSERT INTO `persistences` VALUES ('154', '1', 'uZv04LRVGfQLLQaFP4q6nxK7nouzF5YS', '2018-02-10 03:36:18', '2018-02-10 03:36:18');
INSERT INTO `persistences` VALUES ('155', '1', 'ntjg4Q5LdhbJWSPNYXqgDkwhgFsDi1bA', '2018-02-10 03:37:03', '2018-02-10 03:37:03');
INSERT INTO `persistences` VALUES ('156', '1', 'VYnSq2rNUuNap9J5lBw7OOTtEux6vf7z', '2018-02-10 03:37:35', '2018-02-10 03:37:35');
INSERT INTO `persistences` VALUES ('157', '1', 'p3AJkjy89z4KTicTNs6C6VEA2xjn8bQ9', '2018-02-10 03:39:39', '2018-02-10 03:39:39');
INSERT INTO `persistences` VALUES ('158', '1', 'kEoziO5uSgAKrDLLequG2bzg6nDgGPty', '2018-02-10 03:40:13', '2018-02-10 03:40:13');
INSERT INTO `persistences` VALUES ('159', '1', '3HDPzWhcDcTu0qMkSP1r69MyCo9NwScd', '2018-02-10 04:00:45', '2018-02-10 04:00:45');
INSERT INTO `persistences` VALUES ('160', '1', 'FgcAePV6eNWByKO41hV3UGBNjIseoPX9', '2018-02-10 04:01:06', '2018-02-10 04:01:06');
INSERT INTO `persistences` VALUES ('161', '1', '4E2GWFSYLdvPlCrAS9XKigEGjOkByKUC', '2018-02-10 04:02:12', '2018-02-10 04:02:12');
INSERT INTO `persistences` VALUES ('162', '1', 'tK1LgB9YDZua6w5FNI4BQg9xHWEXFEW0', '2018-02-10 04:31:22', '2018-02-10 04:31:22');
INSERT INTO `persistences` VALUES ('163', '1', 'ew3CoIEdk6OngsT0RNLtDGxtaxG9siZv', '2018-02-10 04:31:38', '2018-02-10 04:31:38');
INSERT INTO `persistences` VALUES ('164', '1', 'swtN9zP8xsJjhScXJCgwdTdA2NFsNoSl', '2018-02-10 04:33:20', '2018-02-10 04:33:20');
INSERT INTO `persistences` VALUES ('165', '1', 'FscoyEfVFHUcBoOrHeigS8YFmxK0e6kn', '2018-02-10 04:35:32', '2018-02-10 04:35:32');
INSERT INTO `persistences` VALUES ('166', '1', 'YwX34bPSvqZ1Bx7O35jDocxL1DxNsDjY', '2018-02-10 04:37:00', '2018-02-10 04:37:00');
INSERT INTO `persistences` VALUES ('167', '1', 'HtLEH3usaXlAjfKgTX46YDV6Jd2vgGcm', '2018-02-10 04:37:17', '2018-02-10 04:37:17');
INSERT INTO `persistences` VALUES ('168', '1', 'UDvUwR94zs2ypGXmAolwKWETnxViOs3A', '2018-02-10 04:40:05', '2018-02-10 04:40:05');
INSERT INTO `persistences` VALUES ('169', '1', '8h0fQcO5aGKkZmggf4kDI0cEspmka2Q3', '2018-02-10 04:41:23', '2018-02-10 04:41:23');
INSERT INTO `persistences` VALUES ('170', '1', 'w6DYUfYPkArTkXUuB5hreVTyOwMx9sQe', '2018-02-10 04:50:17', '2018-02-10 04:50:17');
INSERT INTO `persistences` VALUES ('171', '1', 'xwhFuUxGs0Pu2TNM6K4Q8n5wLQbv2hjV', '2018-02-10 04:51:55', '2018-02-10 04:51:55');
INSERT INTO `persistences` VALUES ('172', '1', '1yTD2KW8HhFKLmbCNIxZ3LAGG749aPtm', '2018-02-10 04:56:12', '2018-02-10 04:56:12');
INSERT INTO `persistences` VALUES ('173', '1', 'aFz216R1WNUJmWDj1p0tuCOdvaIpaoG2', '2018-02-11 01:05:29', '2018-02-11 01:05:29');
INSERT INTO `persistences` VALUES ('174', '1', 'nhwJJ1YdVLMZZH78jfxxsxRsQuyac18A', '2018-02-11 01:05:39', '2018-02-11 01:05:39');
INSERT INTO `persistences` VALUES ('175', '1', 'xV6kSBg6jaQXijpbffE5h2LESUTtOTzn', '2018-02-11 01:05:45', '2018-02-11 01:05:45');
INSERT INTO `persistences` VALUES ('176', '1', 'Pe8Dr8kbL8NO2V55N290xW0yqqzkmvTy', '2018-02-11 01:06:48', '2018-02-11 01:06:48');
INSERT INTO `persistences` VALUES ('177', '1', 'Q5QV5vsf3yWxr4ubPtVsz8916TikvAlw', '2018-02-11 01:07:05', '2018-02-11 01:07:05');
INSERT INTO `persistences` VALUES ('178', '1', 'Zea2CDJboRMo9Pe0x44UKohUDdPcEu4Z', '2018-02-11 01:07:41', '2018-02-11 01:07:41');
INSERT INTO `persistences` VALUES ('179', '1', 'r5TDK7iVDWsuyHXtdFCdU7suyCbYyVdp', '2018-02-11 01:08:08', '2018-02-11 01:08:08');
INSERT INTO `persistences` VALUES ('180', '1', 'Bvf1Bflz4ynq5fUJY8erJm4nqrpFKice', '2018-02-11 01:08:27', '2018-02-11 01:08:27');
INSERT INTO `persistences` VALUES ('181', '1', 'xu4jkSKg8dLzq6XDjDXkMNtM6J5iRJwx', '2018-02-11 01:34:31', '2018-02-11 01:34:31');
INSERT INTO `persistences` VALUES ('182', '1', '2mB67xI9gqZuBnwFv2A1pJPWIC0yUE0T', '2018-02-11 01:34:50', '2018-02-11 01:34:50');
INSERT INTO `persistences` VALUES ('183', '1', '9XWX55TTQC8ifHX2WbF9LtB1kTXCbAfN', '2018-02-11 01:35:05', '2018-02-11 01:35:05');
INSERT INTO `persistences` VALUES ('184', '1', 'r0N1DP5oasQLi34GDoD8HIorZLvXE6xe', '2018-02-11 01:35:12', '2018-02-11 01:35:12');
INSERT INTO `persistences` VALUES ('185', '1', 'XxtvFilu5vKDKBOAF2GzsvDB3RmE5d0g', '2018-02-11 01:35:33', '2018-02-11 01:35:33');
INSERT INTO `persistences` VALUES ('186', '1', 'mXmZfioNIeqzRguGJcHodNTNb01QwF4U', '2018-02-11 01:36:04', '2018-02-11 01:36:04');
INSERT INTO `persistences` VALUES ('187', '1', 'IlvZyQFcfP1oy42ZEi22k1qz8QRrM2K2', '2018-02-11 01:39:11', '2018-02-11 01:39:11');
INSERT INTO `persistences` VALUES ('188', '1', 'N9F1IAY1ONw8KUTuisKiiAahJcIbwsjA', '2018-02-11 01:39:45', '2018-02-11 01:39:45');
INSERT INTO `persistences` VALUES ('189', '1', 'f0ckuTWbWhFMFHbxDWWih7r9pdEWkBkD', '2018-02-11 01:40:54', '2018-02-11 01:40:54');
INSERT INTO `persistences` VALUES ('190', '1', 'ncIzdApydbImo8YarDUM8MxH7V5k746K', '2018-02-11 01:41:12', '2018-02-11 01:41:12');
INSERT INTO `persistences` VALUES ('191', '1', 'X43mVJjkAElClLbVSU2AW5vjBsQFdeCy', '2018-02-11 01:41:24', '2018-02-11 01:41:24');
INSERT INTO `persistences` VALUES ('192', '1', 'gwRM53cemEhPyKtVE52WcnvgaCp0iFjc', '2018-02-11 01:42:31', '2018-02-11 01:42:31');
INSERT INTO `persistences` VALUES ('193', '1', '11Lm4z3mnauzC0PEDTt9zBMc1EAddZpY', '2018-02-11 01:43:00', '2018-02-11 01:43:00');
INSERT INTO `persistences` VALUES ('194', '1', 'KDGqN2KtTFZWEcFaiiYXfLwv7i4u0QUt', '2018-02-11 01:49:57', '2018-02-11 01:49:57');
INSERT INTO `persistences` VALUES ('195', '1', 'uSn9BssDb3d88KZ3GgacooLHuujb09hm', '2018-02-11 01:50:36', '2018-02-11 01:50:36');
INSERT INTO `persistences` VALUES ('196', '1', 'CIK1OcEDeuknkN3FJIIqLHi9zsl6aP6S', '2018-02-11 01:52:49', '2018-02-11 01:52:49');
INSERT INTO `persistences` VALUES ('197', '1', 'FNGYjCirSGWpxfcml6Y7oPRQT7XLtNTl', '2018-02-11 01:53:01', '2018-02-11 01:53:01');
INSERT INTO `persistences` VALUES ('198', '1', 'RjdaagmtV5SaMyGGSWh7D485GypMMMIQ', '2018-02-11 01:53:29', '2018-02-11 01:53:29');
INSERT INTO `persistences` VALUES ('199', '1', 'Am7k3zsponJOFdblwV2ElEsaEijoterU', '2018-02-11 01:54:30', '2018-02-11 01:54:30');
INSERT INTO `persistences` VALUES ('200', '1', 'wHKpH2SNwBSMd9ecewnpPuD68zLNhv41', '2018-02-11 01:54:31', '2018-02-11 01:54:31');
INSERT INTO `persistences` VALUES ('201', '1', 'dzz1QdDyEMcMcMG3hZ9cxofSac7yWCS5', '2018-02-11 01:54:35', '2018-02-11 01:54:35');
INSERT INTO `persistences` VALUES ('202', '1', 'ztT2MSjwyFAkzUMTWyd929YFAwDynAyI', '2018-02-11 01:54:45', '2018-02-11 01:54:45');
INSERT INTO `persistences` VALUES ('203', '1', 'ks1HrSFjglQOqcAbiMr8UClKNtSvQzOL', '2018-02-11 02:14:32', '2018-02-11 02:14:32');
INSERT INTO `persistences` VALUES ('204', '1', 'gH3DtsQH6AbJ2K2NTBsibHT4WX1OsdAW', '2018-02-11 02:16:29', '2018-02-11 02:16:29');
INSERT INTO `persistences` VALUES ('205', '1', 'mtfey8gGTp8IWgvA67YJFVzPQwMP6Uxe', '2018-02-11 02:18:46', '2018-02-11 02:18:46');
INSERT INTO `persistences` VALUES ('206', '1', 'ofpSeq2WHiqYKmzByMFBibMRvuIhTZQI', '2018-02-11 02:19:19', '2018-02-11 02:19:19');
INSERT INTO `persistences` VALUES ('207', '1', '7CQCAqt9prCOfeDrci3b2D2fM8cbCrPC', '2018-02-11 02:26:35', '2018-02-11 02:26:35');
INSERT INTO `persistences` VALUES ('208', '1', 'v2h8fFxZwZWFspj59TqsfWZuGlwmcAxt', '2018-02-11 02:27:15', '2018-02-11 02:27:15');
INSERT INTO `persistences` VALUES ('209', '1', 'udFZd2XklCRbbMbDhukhjeymxJBYHvTy', '2018-02-11 02:28:07', '2018-02-11 02:28:07');
INSERT INTO `persistences` VALUES ('210', '1', 'hTLuHw5HsSgbQDEJ1KpZDRYR7yJO00T2', '2018-02-11 02:28:49', '2018-02-11 02:28:49');
INSERT INTO `persistences` VALUES ('211', '1', 'uR7to9TxuL3yE1gJRTe1Rcxw9ifOmkz0', '2018-02-11 02:34:06', '2018-02-11 02:34:06');
INSERT INTO `persistences` VALUES ('212', '1', '9yd1RokQL4i6fNFv5KeFfFpHtmTeuHvT', '2018-02-11 02:34:53', '2018-02-11 02:34:53');
INSERT INTO `persistences` VALUES ('213', '1', 'IB3Aeohqce3EeZx5hcb9VbSrLvExZWIZ', '2018-02-11 02:39:34', '2018-02-11 02:39:34');
INSERT INTO `persistences` VALUES ('214', '1', 'ngADZyXIAX6MvUsclBX43xe95vpZrQLu', '2018-02-11 02:40:12', '2018-02-11 02:40:12');
INSERT INTO `persistences` VALUES ('215', '1', 'Bf3Udk87POks6a4XMpIrMJOK9UBXRvhQ', '2018-02-11 02:42:49', '2018-02-11 02:42:49');
INSERT INTO `persistences` VALUES ('216', '1', 'gRdaZoSUPGtZzfd1mcKLtaR7vlY9EnTE', '2018-02-11 02:43:21', '2018-02-11 02:43:21');
INSERT INTO `persistences` VALUES ('217', '1', 'ug94AnJl6aXB6w45aXJbZBDAd06gPJ1I', '2018-02-11 02:44:10', '2018-02-11 02:44:10');
INSERT INTO `persistences` VALUES ('218', '1', 'XMTzBcCV9CTLzDnUsDyLyx7E5nZN9xoC', '2018-02-11 04:38:13', '2018-02-11 04:38:13');
INSERT INTO `persistences` VALUES ('219', '1', '0IBQGewacs9vzKrmpGpwgpOXqyjHRBJG', '2018-02-11 04:38:17', '2018-02-11 04:38:17');
INSERT INTO `persistences` VALUES ('220', '1', 'wABSfvYgXNGSP7uSpx4H1KkGIpcRI17W', '2018-02-11 04:38:30', '2018-02-11 04:38:30');
INSERT INTO `persistences` VALUES ('221', '1', 'PpA0cPqRiIXUMWfTxdIvwcBLNHvz0rxF', '2018-02-11 04:39:56', '2018-02-11 04:39:56');
INSERT INTO `persistences` VALUES ('222', '1', 'V8vxLpnDmS9MPNJZMQrQIUW1238FkZmI', '2018-02-11 04:39:59', '2018-02-11 04:39:59');
INSERT INTO `persistences` VALUES ('223', '1', 'jXdCXbsXQ8LSN9cWEMEHaCGOaUoTK4Om', '2018-02-11 04:40:12', '2018-02-11 04:40:12');
INSERT INTO `persistences` VALUES ('224', '1', 'CqomGTjtdqTYrWTMadpLU72rd9XZLSx9', '2018-02-11 04:40:53', '2018-02-11 04:40:53');
INSERT INTO `persistences` VALUES ('225', '1', 'aFZB6DxODs6NWSpL1MDZXbXdWu9Tmqav', '2018-02-11 05:27:01', '2018-02-11 05:27:01');
INSERT INTO `persistences` VALUES ('226', '1', 'az5mkqxoFznDTMH5gTuw4ueudH3oI8pW', '2018-02-11 05:27:04', '2018-02-11 05:27:04');
INSERT INTO `persistences` VALUES ('227', '1', 'fgkr88CPZJ5XgOSBumHpGyqSMipvG989', '2018-02-11 05:27:57', '2018-02-11 05:27:57');
INSERT INTO `persistences` VALUES ('228', '1', 'zA6nS3InhO002kXAVHuuaDZJTH27V3Jr', '2018-02-11 05:28:18', '2018-02-11 05:28:18');
INSERT INTO `persistences` VALUES ('229', '1', 'J1OfoEIFnOis7d6r3nFLZCaVVuIkAAvW', '2018-02-11 05:28:18', '2018-02-11 05:28:18');
INSERT INTO `persistences` VALUES ('230', '1', 'mhVI02fUX40aeF5surUSr2fwj8qXAFbL', '2018-02-11 05:28:21', '2018-02-11 05:28:21');
INSERT INTO `persistences` VALUES ('231', '1', 'WFmvMXQS8jZmT8qE1FTidW10w1eXFnKQ', '2018-02-11 05:36:51', '2018-02-11 05:36:51');
INSERT INTO `persistences` VALUES ('232', '1', 'lf43h30tyqXc6kTurjEvfA7dWPaUmLSn', '2018-02-11 05:37:00', '2018-02-11 05:37:00');
INSERT INTO `persistences` VALUES ('233', '1', 'r5x5Tp9dUeYM8KrX1K76NnyjX7XHpJBF', '2018-02-11 05:37:04', '2018-02-11 05:37:04');
INSERT INTO `persistences` VALUES ('234', '1', 'IYMqGjmbQSddjyghKoEGiCX4CSPcUjeR', '2018-02-11 05:37:26', '2018-02-11 05:37:26');
INSERT INTO `persistences` VALUES ('235', '1', '3FOoMh52oIMz1aqHnyp5r8uf2jHT2KOQ', '2018-02-11 05:37:30', '2018-02-11 05:37:30');
INSERT INTO `persistences` VALUES ('236', '1', 'WfoG2BYBnjM4dO81j9RN7R0PaihVyExU', '2018-02-11 05:37:31', '2018-02-11 05:37:31');
INSERT INTO `persistences` VALUES ('237', '1', 'kXDOxyv52cXnE5CZAUcj6KYODYRgIo1D', '2018-02-11 05:37:33', '2018-02-11 05:37:33');
INSERT INTO `persistences` VALUES ('238', '1', 'dWuTXIWA0OrvVj8VjY0ZOw77iXxNMNET', '2018-02-11 05:42:06', '2018-02-11 05:42:06');
INSERT INTO `persistences` VALUES ('239', '1', 'o2nYp6UGkHxU0BSu7Ms8Cqwd8hQViz1s', '2018-02-11 05:42:11', '2018-02-11 05:42:11');
INSERT INTO `persistences` VALUES ('240', '1', '8jO27od9IeYV2vcXlzo9svneCbddTJ6T', '2018-02-11 05:42:16', '2018-02-11 05:42:16');
INSERT INTO `persistences` VALUES ('241', '1', 'ZJqI632NKTBYW84uTrAOlPKqQVpKw0cz', '2018-02-11 05:42:16', '2018-02-11 05:42:16');
INSERT INTO `persistences` VALUES ('242', '1', '9I86PTyzu1O3D8XGloWY7a1P6ZCrDR6o', '2018-02-11 05:42:21', '2018-02-11 05:42:21');
INSERT INTO `persistences` VALUES ('243', '1', 'kLZOTD8OP0lwVUskLxRaPuUCZRZ8CUvG', '2018-02-11 05:43:10', '2018-02-11 05:43:10');
INSERT INTO `persistences` VALUES ('244', '1', 'hhc60HYQnlgGbEDyLcPUqz4lgujgOgXg', '2018-02-11 05:43:18', '2018-02-11 05:43:18');
INSERT INTO `persistences` VALUES ('245', '1', 'Y2VAKVZzZ3GKQyVWFWWQumxqWuKrBECl', '2018-02-11 05:45:13', '2018-02-11 05:45:13');
INSERT INTO `persistences` VALUES ('246', '1', '7mNohYkvP01CwXuymn5CJSFgi7XriALQ', '2018-02-11 05:45:15', '2018-02-11 05:45:15');
INSERT INTO `persistences` VALUES ('247', '1', 'iNiLPLYYQOgR0CzclgPCJFSPWzZpZACr', '2018-02-11 05:45:23', '2018-02-11 05:45:23');
INSERT INTO `persistences` VALUES ('248', '1', 'fIH4lwPI6gRbNXXfHbKbrYOd5DpswdDv', '2018-02-11 06:14:22', '2018-02-11 06:14:22');
INSERT INTO `persistences` VALUES ('249', '1', 'QaRjkzGaEbUgwsKP7Q4jU3WJ942ZPdE3', '2018-02-11 06:14:28', '2018-02-11 06:14:28');
INSERT INTO `persistences` VALUES ('250', '1', 'eGxtWApE1oUdGWtunCHpcchf2DkKctOg', '2018-02-11 06:14:46', '2018-02-11 06:14:46');
INSERT INTO `persistences` VALUES ('251', '1', 'feS3nhAV14qELwVbbZZWFbkYHcLURkdR', '2018-02-11 06:15:16', '2018-02-11 06:15:16');
INSERT INTO `persistences` VALUES ('252', '1', '8OG0teOZSF5WUUMmYmX0xWzskOfHgs7X', '2018-02-11 06:15:28', '2018-02-11 06:15:28');
INSERT INTO `persistences` VALUES ('253', '1', 'fymeBKbL8SdhlO75KvC0wwM8qU9PkaPN', '2018-02-11 06:15:31', '2018-02-11 06:15:31');
INSERT INTO `persistences` VALUES ('254', '1', 'p2j7DdSwSfvTnEjSvcYntoHz28akRto9', '2018-02-11 06:15:32', '2018-02-11 06:15:32');
INSERT INTO `persistences` VALUES ('255', '1', 'dfKs1Tn053urphf97bl64X0uVh5OMZJB', '2018-02-11 06:17:44', '2018-02-11 06:17:44');
INSERT INTO `persistences` VALUES ('256', '1', 'lywSZBqBLbNYeZaflGHyEb302NkmhXRT', '2018-02-11 06:18:01', '2018-02-11 06:18:01');
INSERT INTO `persistences` VALUES ('257', '1', 'f0KuUDrraNodQViNIlbIOYVXJVd9Kt5G', '2018-02-11 06:37:40', '2018-02-11 06:37:40');
INSERT INTO `persistences` VALUES ('258', '1', 'UyRcdbULdmKwAB5NNuNTIXz5npWe3Z6P', '2018-02-11 06:37:43', '2018-02-11 06:37:43');
INSERT INTO `persistences` VALUES ('259', '1', '8kIYDLk7eoYWoF5LfH1DCtN9qEVD4QpI', '2018-02-11 06:38:19', '2018-02-11 06:38:19');
INSERT INTO `persistences` VALUES ('260', '1', 'nomQnPRWotXonSNgOYhKY37UXIavro7j', '2018-02-11 06:39:03', '2018-02-11 06:39:03');
INSERT INTO `persistences` VALUES ('261', '1', '9j4z1JbgaYqObKXvs1v4ICkwz0BWNLuU', '2018-02-11 06:39:06', '2018-02-11 06:39:06');
INSERT INTO `persistences` VALUES ('262', '1', 'cgKv8SUzo4vvYzFI0nOM13My5uOs7AYF', '2018-02-11 06:39:07', '2018-02-11 06:39:07');
INSERT INTO `persistences` VALUES ('263', '1', '9K0GFXJd533VasSVQaRonE5Ra1J1CeqJ', '2018-02-11 06:39:19', '2018-02-11 06:39:19');
INSERT INTO `persistences` VALUES ('264', '1', 'JYBgQ70oK9pEKyVyd5MNstJ5x8gXWlyb', '2018-02-11 06:39:19', '2018-02-11 06:39:19');
INSERT INTO `persistences` VALUES ('265', '1', 'mZ9iHTG9eD7xN63sH0xb9Fhbucvgmzc0', '2018-02-11 06:39:26', '2018-02-11 06:39:26');
INSERT INTO `persistences` VALUES ('266', '1', 'zFA6FNWf4nSw8vDFlsNCOk2Ta5QMK4Lm', '2018-02-11 06:39:30', '2018-02-11 06:39:30');
INSERT INTO `persistences` VALUES ('267', '1', 'L2LMGh6xJAIgyLI5HlGEd0VJp7Y2qK53', '2018-02-11 06:45:26', '2018-02-11 06:45:26');
INSERT INTO `persistences` VALUES ('268', '1', 'dkj3P2PKGrRGm6xG7InEz7Y9iHV8MqFP', '2018-02-11 06:45:30', '2018-02-11 06:45:30');
INSERT INTO `persistences` VALUES ('269', '1', 'oUCwyWhgRpi6kEWMwjg2iWGxrQROBa84', '2018-02-11 06:45:30', '2018-02-11 06:45:30');
INSERT INTO `persistences` VALUES ('270', '1', 'eY2G8zhfV0oqRq06LEWqtZJiRKcifj58', '2018-02-11 06:51:02', '2018-02-11 06:51:02');
INSERT INTO `persistences` VALUES ('271', '1', 'JDF9nVF8yNG4xwDvhNgARJRYZca1Rfbm', '2018-02-11 06:51:04', '2018-02-11 06:51:04');
INSERT INTO `persistences` VALUES ('272', '1', 'i4Gd2AdIo5dGy3L5gWNdBWoLHVYTxPqk', '2018-02-11 06:52:57', '2018-02-11 06:52:57');
INSERT INTO `persistences` VALUES ('273', '1', 'Q8fZ1U7i6RCLPOfLM5gudwTOxNIg5SOL', '2018-02-11 06:52:59', '2018-02-11 06:52:59');
INSERT INTO `persistences` VALUES ('274', '1', 'dDJBh0ENAFF8N28HH4ks6Y4mxH1CKBfO', '2018-02-11 06:53:00', '2018-02-11 06:53:00');
INSERT INTO `persistences` VALUES ('275', '1', 'iEwGmiDOC8hFUPNLyv2Z4EGkAGGg5107', '2018-02-11 06:53:01', '2018-02-11 06:53:01');
INSERT INTO `persistences` VALUES ('276', '1', 'Nv6koOkDMb5my6fnXtJcYJvs3ak8UdVj', '2018-02-11 06:53:02', '2018-02-11 06:53:02');
INSERT INTO `persistences` VALUES ('277', '1', 'b71ZTMlScLAubH4pPBDNWxJ7Y7JRboyH', '2018-02-11 06:53:03', '2018-02-11 06:53:03');
INSERT INTO `persistences` VALUES ('278', '1', 'sQbDrvuasE4PBb5pCRs2OvppsiCVjtAm', '2018-02-11 06:53:05', '2018-02-11 06:53:05');
INSERT INTO `persistences` VALUES ('279', '1', 'XdcD98yVLFNCDlI881ORVkDmWebTyRbF', '2018-02-11 06:59:14', '2018-02-11 06:59:14');
INSERT INTO `persistences` VALUES ('280', '1', 'drb3F7ZvDZQ7bQqvfPjWJfR1MiP7OMA6', '2018-02-11 06:59:16', '2018-02-11 06:59:16');
INSERT INTO `persistences` VALUES ('281', '1', 'bZIIzo4RRyxayTODs4Z5PCTE1HkBBBZV', '2018-02-11 06:59:16', '2018-02-11 06:59:16');
INSERT INTO `persistences` VALUES ('282', '1', 'rIHYbAte1Y2i9uZoJ5ac98qgq1lnFNoF', '2018-02-11 06:59:16', '2018-02-11 06:59:16');
INSERT INTO `persistences` VALUES ('283', '1', '97Hv5Wo3DhiqKBDCUOrZYhbhLbU1USqa', '2018-02-11 07:30:00', '2018-02-11 07:30:00');
INSERT INTO `persistences` VALUES ('284', '1', 'sRKb0VOyVJsZ2fyy63Zl8JFB2DkCuyoG', '2018-02-11 07:30:00', '2018-02-11 07:30:00');
INSERT INTO `persistences` VALUES ('285', '1', 'cnX25EgVyDNpiva68qh7Xs7QnqPVv6PD', '2018-02-11 07:30:00', '2018-02-11 07:30:00');
INSERT INTO `persistences` VALUES ('286', '1', 'Z1wn0ZKd2SNGX9MI7i1IgVvvaHRgDuLE', '2018-02-11 08:10:53', '2018-02-11 08:10:53');
INSERT INTO `persistences` VALUES ('287', '1', 'eUDdKBe2k6pGLFzaMiuAoSU7mKh6rCch', '2018-02-11 08:10:56', '2018-02-11 08:10:56');
INSERT INTO `persistences` VALUES ('288', '1', '2VeLDujes3n2P7h8nahmdeIJ7YO0J228', '2018-02-11 09:18:35', '2018-02-11 09:18:35');
INSERT INTO `persistences` VALUES ('289', '1', 'YCyGuVejxpmWoFOK9yWwUnzW2fu71HwD', '2018-02-11 13:18:03', '2018-02-11 13:18:03');
INSERT INTO `persistences` VALUES ('290', '1', '4Na16QxJ6UoyjwayVHKHHAyABHApR87U', '2018-02-12 01:25:07', '2018-02-12 01:25:07');
INSERT INTO `persistences` VALUES ('291', '1', '36qXhrad1mgh8XsZTHrxJ3j0Nt53JsL3', '2018-02-12 01:51:05', '2018-02-12 01:51:05');
INSERT INTO `persistences` VALUES ('292', '1', 'y6pJdHa0nQR5kGjGmWZYRc3EgCxi4QDM', '2018-02-12 01:51:07', '2018-02-12 01:51:07');
INSERT INTO `persistences` VALUES ('293', '1', 'eOaX6gLETFddcInYFJy05O2SMlRjuSfH', '2018-02-12 01:51:07', '2018-02-12 01:51:07');
INSERT INTO `persistences` VALUES ('294', '1', 'f84xXuWH9aKW8aeA1irOtIAJIWKE4fgH', '2018-02-12 01:51:13', '2018-02-12 01:51:13');
INSERT INTO `persistences` VALUES ('295', '1', '2Ieo25fhQk0PcjRdFS7Tmbl0ZyarFYdX', '2018-02-12 01:51:13', '2018-02-12 01:51:13');
INSERT INTO `persistences` VALUES ('296', '1', '72MWmATntHkp7AZrh61N2tdsnJnAzlL4', '2018-02-12 01:51:16', '2018-02-12 01:51:16');
INSERT INTO `persistences` VALUES ('297', '1', 'iTaAJvyOqE0PBYWcXglHxY37hheg6sfO', '2018-02-12 01:51:22', '2018-02-12 01:51:22');
INSERT INTO `persistences` VALUES ('298', '1', 'RXS53PimnZEgOIfdtgZNGC4g1Qce3mrr', '2018-02-12 01:51:28', '2018-02-12 01:51:28');
INSERT INTO `persistences` VALUES ('299', '1', '1pgi9HQCwu7ao60PqDM8zPP8kUjMeFH0', '2018-02-12 01:51:40', '2018-02-12 01:51:40');
INSERT INTO `persistences` VALUES ('300', '1', 'mhTDktAAoris4TT11zU5Q7S2X2EI0RGG', '2018-02-12 01:51:45', '2018-02-12 01:51:45');
INSERT INTO `persistences` VALUES ('301', '1', 'jyfzjE1FGDZzStsshjMJq6pOfnM7AEtD', '2018-02-12 02:21:14', '2018-02-12 02:21:14');
INSERT INTO `persistences` VALUES ('302', '1', '29Oy5KboRmw6XltSSfw69ZPP6OQ95c9t', '2018-02-12 03:31:36', '2018-02-12 03:31:36');
INSERT INTO `persistences` VALUES ('303', '1', 'S2L5lyqja7OBePD45Q3PbzdNJmmENcgr', '2018-02-12 03:31:37', '2018-02-12 03:31:37');
INSERT INTO `persistences` VALUES ('304', '1', 'SxRjIklXhQtIJb39VPMsoNcxKskLcBhA', '2018-02-12 03:31:38', '2018-02-12 03:31:38');
INSERT INTO `persistences` VALUES ('305', '1', 'uIX4KgI4xcS2o0oq4g1CaWCi9zkCNIUa', '2018-02-12 07:07:11', '2018-02-12 07:07:11');
INSERT INTO `persistences` VALUES ('306', '1', 'oXe619kCZsiaE1WDKdN6fJqZeDyFXJQx', '2018-02-12 07:20:00', '2018-02-12 07:20:00');
INSERT INTO `persistences` VALUES ('307', '1', 'kVZu6QMy9XdSBcWi6nBP3MdD8MJfyZVe', '2018-02-12 07:21:34', '2018-02-12 07:21:34');
INSERT INTO `persistences` VALUES ('308', '1', 'qqHmA77SAjdaIRAUljS0kVG4yGjWjutx', '2018-02-12 07:21:55', '2018-02-12 07:21:55');
INSERT INTO `persistences` VALUES ('309', '1', 'lW1ZvefzFB3EubS7KCWItIW0YjAvkruI', '2018-02-12 07:23:30', '2018-02-12 07:23:30');
INSERT INTO `persistences` VALUES ('310', '1', 'SjW8GcnRNRinSLLNS12BhW0ydyLdq25W', '2018-02-12 07:23:32', '2018-02-12 07:23:32');
INSERT INTO `persistences` VALUES ('311', '1', '8FL2ge7lAhjqA72DXp60xBywJDi5tJAq', '2018-02-12 07:27:57', '2018-02-12 07:27:57');
INSERT INTO `persistences` VALUES ('312', '1', 'BefBlJQtNJIlXRH2uqwh5xl3WdhkthGH', '2018-02-12 07:27:59', '2018-02-12 07:27:59');
INSERT INTO `persistences` VALUES ('313', '1', 'SzeaU1j79YL7TQNGtAgyS4TZhMMG3lJF', '2018-02-12 07:29:10', '2018-02-12 07:29:10');
INSERT INTO `persistences` VALUES ('314', '1', '5Dh16xlaGj7aDXifsJVMhcBzrsGvrBey', '2018-02-12 07:29:13', '2018-02-12 07:29:13');
INSERT INTO `persistences` VALUES ('315', '1', 'lI9Xy56eiqYzIMJ9jN26zpuQfdYwswx7', '2018-02-12 07:32:25', '2018-02-12 07:32:25');
INSERT INTO `persistences` VALUES ('316', '1', 'dczU6lEqF3Su1xsTqBSlHNuikz9b9vf3', '2018-02-12 07:32:26', '2018-02-12 07:32:26');
INSERT INTO `persistences` VALUES ('317', '1', '8gXoWyqcvhPbGXIErcFY9ONpRjSzft2c', '2018-02-12 07:33:53', '2018-02-12 07:33:53');
INSERT INTO `persistences` VALUES ('318', '1', 'tZ9lw4Q3oIG8OyIBmUS40Kde6UKYwy12', '2018-02-12 07:33:55', '2018-02-12 07:33:55');
INSERT INTO `persistences` VALUES ('319', '1', 'wcyIwVzd98UAXS8LKab1pTYC7BAbP2Bg', '2018-02-12 07:33:56', '2018-02-12 07:33:56');
INSERT INTO `persistences` VALUES ('320', '1', 'V9W6emcERVbjef2CmVNwGNr3xDbkdFDx', '2018-02-12 08:12:55', '2018-02-12 08:12:55');
INSERT INTO `persistences` VALUES ('321', '1', 't5poboi1gnmi9bDzDsdXdAVURKtbDpyX', '2018-02-12 08:13:30', '2018-02-12 08:13:30');
INSERT INTO `persistences` VALUES ('322', '1', '9RZIERvhlQQ2aLzEFsAiBt3W7JcSH3xv', '2018-02-12 08:14:26', '2018-02-12 08:14:26');
INSERT INTO `persistences` VALUES ('323', '1', 'vMsCckAm7qiWylRGqOYHJGoEThDhl3DB', '2018-02-12 08:16:06', '2018-02-12 08:16:06');
INSERT INTO `persistences` VALUES ('324', '1', 'Vd8dBTufnDQ3kBxWgmePEDrmcaLmM2aK', '2018-02-12 08:16:24', '2018-02-12 08:16:24');
INSERT INTO `persistences` VALUES ('325', '1', 'GUXaK40i9G6c4VKJKx1YFSeIDs8S0DnQ', '2018-02-12 08:16:33', '2018-02-12 08:16:33');
INSERT INTO `persistences` VALUES ('326', '1', 'tIy0Tie8KSoPl0DIfawk8inNQYIxzZLz', '2018-02-12 08:16:47', '2018-02-12 08:16:47');
INSERT INTO `persistences` VALUES ('327', '1', 'BEApFbr2Kwi7Aoghxmu1RkizQ9tnsijK', '2018-02-12 08:17:11', '2018-02-12 08:17:11');
INSERT INTO `persistences` VALUES ('328', '1', 'vTYSa4dCIU4q7EYirHWsslchEEaoUVR9', '2018-02-12 08:18:11', '2018-02-12 08:18:11');
INSERT INTO `persistences` VALUES ('329', '1', 'adi4Xz4INPTbxwmxPtRcS3qYgh9iLvpO', '2018-02-12 08:18:37', '2018-02-12 08:18:37');
INSERT INTO `persistences` VALUES ('330', '1', 'koyywHHXEPLCrlxb4sQmQzDwylLBccx5', '2018-02-12 08:18:49', '2018-02-12 08:18:49');
INSERT INTO `persistences` VALUES ('331', '1', 'xXiRjpM4fgrqc90bFI6yxiKiRy8p7ZXC', '2018-02-12 08:19:02', '2018-02-12 08:19:02');
INSERT INTO `persistences` VALUES ('332', '1', 'bjRCpi57N0M9LBdrHrpFx4g34QfYXnPy', '2018-02-12 08:19:09', '2018-02-12 08:19:09');
INSERT INTO `persistences` VALUES ('333', '1', 'Y0LVI9StdO7yRkfnJsxtxhyYklEgIDPs', '2018-02-12 08:19:42', '2018-02-12 08:19:42');
INSERT INTO `persistences` VALUES ('334', '1', 'Phix4nXgerKptOl8rBJMpfoHnwkgpLcI', '2018-02-12 08:21:21', '2018-02-12 08:21:21');
INSERT INTO `persistences` VALUES ('335', '1', 'E5DFR5rgU1xC8TguyoK4H45USXAsKyRt', '2018-02-12 08:21:23', '2018-02-12 08:21:23');
INSERT INTO `persistences` VALUES ('336', '1', '7sVixThgGscSSJbgRqGaUM3vSAmZFq3U', '2018-02-12 09:24:58', '2018-02-12 09:24:58');
INSERT INTO `persistences` VALUES ('337', '1', 'ADCVDMZJjPPTp8cdHDIh72VnDY4OXBPy', '2018-02-12 09:25:00', '2018-02-12 09:25:00');
INSERT INTO `persistences` VALUES ('338', '1', 'ZdENsg4v1vXuUemnRIkybzr3lUqjPll5', '2018-02-12 09:25:08', '2018-02-12 09:25:08');
INSERT INTO `persistences` VALUES ('339', '1', '3dL7SJBN4eAa9VYoyuHqH1QLvyN6dAN3', '2018-02-12 09:25:11', '2018-02-12 09:25:11');
INSERT INTO `persistences` VALUES ('340', '1', 'HAi7G6rnckgG1ZmAjqVEHIqA35xk1jf3', '2018-02-12 09:31:27', '2018-02-12 09:31:27');
INSERT INTO `persistences` VALUES ('341', '1', '5px6tTyvFtMjHgzqp721XVTSXTnLcJIm', '2018-02-12 09:32:18', '2018-02-12 09:32:18');
INSERT INTO `persistences` VALUES ('342', '1', 'Vaz6AQP5LVXTNNUgDS3tq46drk9c08dl', '2018-02-12 09:34:49', '2018-02-12 09:34:49');
INSERT INTO `persistences` VALUES ('343', '1', 'uK5Ghp6MPS07NoZXXy46Q8sIey5tkZRB', '2018-02-12 09:34:58', '2018-02-12 09:34:58');
INSERT INTO `persistences` VALUES ('344', '1', 'urzS2vkMonf28cCgRAwvnqw3uaoMc14G', '2018-02-12 09:39:39', '2018-02-12 09:39:39');
INSERT INTO `persistences` VALUES ('345', '1', '7aqvqEE0olwnEZZWcpqlB9Xs83IQ7HWh', '2018-02-12 09:39:40', '2018-02-12 09:39:40');
INSERT INTO `persistences` VALUES ('346', '1', 'lFYBQbCgImBQ5Ta505tAHiVpwM7vScQP', '2018-02-12 09:44:15', '2018-02-12 09:44:15');
INSERT INTO `persistences` VALUES ('347', '1', 'ThBEfpuEUNCSKpLmSUfwz5o0ZWMJwylY', '2018-02-12 09:45:20', '2018-02-12 09:45:20');
INSERT INTO `persistences` VALUES ('348', '1', '7y94OakFLDsD5o4LgSCWe04CRHcljGXM', '2018-02-12 09:46:07', '2018-02-12 09:46:07');
INSERT INTO `persistences` VALUES ('349', '1', '5DRqIE9Ij7zccWcqDYyGxMozbOUtDFeL', '2018-02-12 09:46:34', '2018-02-12 09:46:34');
INSERT INTO `persistences` VALUES ('350', '1', 'GaC7Th1O60H7m7YpSUqnx2pB3sTMljJL', '2018-02-12 09:46:35', '2018-02-12 09:46:35');
INSERT INTO `persistences` VALUES ('351', '1', 'P7I3YtvjD0qZQ2J2j5ZRNR5oaFV82enE', '2018-02-12 09:47:22', '2018-02-12 09:47:22');
INSERT INTO `persistences` VALUES ('352', '1', 'aLeUOCZPomdIO1spgRHhPcbKFJDjUqFw', '2018-02-12 09:50:18', '2018-02-12 09:50:18');
INSERT INTO `persistences` VALUES ('353', '1', 'N7nLSmtmVf2iUMQAnRafeNHjJQd6aBut', '2018-02-12 09:51:40', '2018-02-12 09:51:40');
INSERT INTO `persistences` VALUES ('354', '1', 'oZnmg9OQ6FFmd98P31vJr0rBOfGzfuwx', '2018-02-12 09:52:44', '2018-02-12 09:52:44');
INSERT INTO `persistences` VALUES ('355', '1', 'k6VaXc1MlfQILb08rGNWf5VlKGqfyTuK', '2018-02-12 09:53:18', '2018-02-12 09:53:18');
INSERT INTO `persistences` VALUES ('356', '1', 'js570fliQJEVDyfHB5MzJOQFltMbcIik', '2018-02-12 10:09:32', '2018-02-12 10:09:32');
INSERT INTO `persistences` VALUES ('357', '1', 'GSOFkF9eDMsNLV7ikQqokzDJsH7h9wwk', '2018-02-12 10:15:45', '2018-02-12 10:15:45');
INSERT INTO `persistences` VALUES ('358', '1', 'KultsgNn2wEKvF5N9dMIAjJ2AjoSt84v', '2018-02-12 10:17:54', '2018-02-12 10:17:54');
INSERT INTO `persistences` VALUES ('359', '1', 'TyUG6CtLv8CrJjywWFxr2nU5QUS4nrhi', '2018-02-12 10:18:43', '2018-02-12 10:18:43');
INSERT INTO `persistences` VALUES ('360', '1', 'NCQQSEDZGO8NBOAvsvfMKfb8C6oPOAbG', '2018-02-12 10:18:45', '2018-02-12 10:18:45');
INSERT INTO `persistences` VALUES ('361', '1', 'gbjUvQwyxy1aYYsDEtlh5DH3zf0ceWIG', '2018-02-12 10:20:31', '2018-02-12 10:20:31');
INSERT INTO `persistences` VALUES ('362', '1', 'xapLeFo7FCdVBWqvYzPJ1MXSJa6qVK3n', '2018-02-12 10:21:40', '2018-02-12 10:21:40');
INSERT INTO `persistences` VALUES ('363', '1', '1251m2P5DeIuq9x2qQnCrAOkeCpgPiQ7', '2018-02-12 10:21:45', '2018-02-12 10:21:45');
INSERT INTO `persistences` VALUES ('364', '1', 'p2HS7fNa1VFkOOS0F812hqwPFHpioVz6', '2018-02-12 10:23:12', '2018-02-12 10:23:12');
INSERT INTO `persistences` VALUES ('365', '1', 'ZtiNWo3OF1HBsO1fmQWMfMGcQd6aMGOL', '2018-02-12 10:24:39', '2018-02-12 10:24:39');
INSERT INTO `persistences` VALUES ('366', '1', '4ecvcpl3sdDo4RRIiXvKXwSSAepyRlyk', '2018-02-12 10:25:09', '2018-02-12 10:25:09');
INSERT INTO `persistences` VALUES ('367', '1', '2iUxyiYy3OsgwWMp6Y1vTeUGt0LsgfmE', '2018-02-12 10:25:45', '2018-02-12 10:25:45');
INSERT INTO `persistences` VALUES ('368', '1', 'of5luX2ATHkb7hKTgI8cQ3D5lon5yq68', '2018-02-12 10:26:17', '2018-02-12 10:26:17');
INSERT INTO `persistences` VALUES ('369', '1', 'v65X8AeNLOKbXBRkkyxbf1s5Mf0uDdfp', '2018-02-12 10:29:39', '2018-02-12 10:29:39');
INSERT INTO `persistences` VALUES ('370', '1', 'yARKOCEp4TOaXNCw8MYBQhAumQSDTPmU', '2018-02-12 10:30:30', '2018-02-12 10:30:30');
INSERT INTO `persistences` VALUES ('371', '1', '7OQtzi8yGDPWZmQ96R9Jn1BDlGJMKduO', '2018-02-12 10:31:43', '2018-02-12 10:31:43');
INSERT INTO `persistences` VALUES ('372', '1', 'WJIwlVsK1WQK4b826KfX6icd4feKGcJa', '2018-02-12 10:34:08', '2018-02-12 10:34:08');
INSERT INTO `persistences` VALUES ('373', '1', 'uEn5GaicSJNf8ifywUml4x0RCwE3b6r0', '2018-02-12 10:37:09', '2018-02-12 10:37:09');
INSERT INTO `persistences` VALUES ('374', '1', 'L2VBGjeni1Z3xuIgk7dV6KVMDkOiHDDz', '2018-02-12 10:38:38', '2018-02-12 10:38:38');
INSERT INTO `persistences` VALUES ('375', '1', 'hh2K3wWAG4eUf6OH28aMpTMrX3qUlK9X', '2018-02-12 10:39:27', '2018-02-12 10:39:27');
INSERT INTO `persistences` VALUES ('376', '1', 'w5JTUniXHDKAHzzssRVIGcQ4wFGRc3cX', '2018-02-12 10:39:39', '2018-02-12 10:39:39');
INSERT INTO `persistences` VALUES ('377', '1', 'cLPtEvos0r1agstJ5fmc2Ee8pseSW8IJ', '2018-02-12 10:40:43', '2018-02-12 10:40:43');
INSERT INTO `persistences` VALUES ('378', '1', 'U05zS5BemZow2Zu8sqQQM8e6ZOUtyTFN', '2018-02-12 10:41:30', '2018-02-12 10:41:30');
INSERT INTO `persistences` VALUES ('379', '1', 'R0AwbE7FE2THQf6hP5iFjJ96t5vzIDTB', '2018-02-12 10:42:12', '2018-02-12 10:42:12');
INSERT INTO `persistences` VALUES ('380', '1', 'W7cTYd3YzIWG6VL9hXnxVNqZUN073MCp', '2018-02-12 10:43:06', '2018-02-12 10:43:06');
INSERT INTO `persistences` VALUES ('381', '1', 'a4xIbLjC9bxl4M74TPztspUKA4JGZiTw', '2018-02-12 10:48:11', '2018-02-12 10:48:11');
INSERT INTO `persistences` VALUES ('382', '1', 'mh2Uy7RzV0aWNMNg71opfe6ifQk3iBYJ', '2018-02-12 10:48:15', '2018-02-12 10:48:15');
INSERT INTO `persistences` VALUES ('383', '1', 'Bv0RHTwY44g8oYmRfRuJoejRP6HzYux9', '2018-02-12 10:55:21', '2018-02-12 10:55:21');
INSERT INTO `persistences` VALUES ('384', '1', 'MdpIOd9eObaV89lkVAh1f9X4p2h0SY5x', '2018-02-12 10:57:59', '2018-02-12 10:57:59');
INSERT INTO `persistences` VALUES ('385', '1', '67mtjS9WCsbaYZa8fJhpCTcogQ2fevqM', '2018-02-12 11:04:55', '2018-02-12 11:04:55');
INSERT INTO `persistences` VALUES ('386', '1', 'YaZ7MxuzfeJbCFxpG6FBSMo7YD57A3Oe', '2018-02-12 11:04:56', '2018-02-12 11:04:56');
INSERT INTO `persistences` VALUES ('388', '1', 'Omef25UWdv37nwZvh02POpZIKpLfx7LT', '2018-02-22 01:23:05', '2018-02-22 01:23:05');
INSERT INTO `persistences` VALUES ('389', '1', 'PltZIDLXF3NzYSqyhEBvKnSv5fQyt62Z', '2018-02-22 01:23:34', '2018-02-22 01:23:34');
INSERT INTO `persistences` VALUES ('390', '1', 'rBDKzdh59qYccm6Ihh0mxDbGHU8X0lsv', '2018-02-22 01:39:25', '2018-02-22 01:39:25');
INSERT INTO `persistences` VALUES ('391', '1', 'p11pDCBA6b85oyKsdRZBWGZAfjHrsh6X', '2018-02-22 01:48:12', '2018-02-22 01:48:12');
INSERT INTO `persistences` VALUES ('392', '1', 'RW4XDVuUvQtvLTxRW1nDN0t1VrSNVdTe', '2018-02-22 02:06:34', '2018-02-22 02:06:34');
INSERT INTO `persistences` VALUES ('393', '1', 'Q3LicYg3zQDBlLtDi5RzHsgofTJovRVv', '2018-02-22 02:25:04', '2018-02-22 02:25:04');
INSERT INTO `persistences` VALUES ('394', '1', 'WUiw2AbJScd5J0iHolHyvZJVuekm5smu', '2018-02-22 02:29:34', '2018-02-22 02:29:34');
INSERT INTO `persistences` VALUES ('395', '1', 'sJ501MUEIpJwMf5BCZfNDwKjxQy0z3gW', '2018-02-22 02:31:38', '2018-02-22 02:31:38');
INSERT INTO `persistences` VALUES ('396', '1', 'MowDcCp0MrRfFGVHoRJBW5yqbTn23WhQ', '2018-02-22 02:32:46', '2018-02-22 02:32:46');
INSERT INTO `persistences` VALUES ('397', '1', 'minvE4Kj6iogTSez10WFhlQ8pDD54oWb', '2018-02-22 02:34:10', '2018-02-22 02:34:10');
INSERT INTO `persistences` VALUES ('398', '1', '2r8eCeTHumviC9Ez798eiWeI2OFrm0ID', '2018-02-22 02:35:23', '2018-02-22 02:35:23');
INSERT INTO `persistences` VALUES ('399', '1', 'mXbLrHjO0TCAkHp11JbSLR4OXVcrzoz7', '2018-02-22 02:37:03', '2018-02-22 02:37:03');
INSERT INTO `persistences` VALUES ('400', '1', 'sfOwM5KNjkKSbf63M0QYjGJZ686e5Iqz', '2018-02-22 02:37:23', '2018-02-22 02:37:23');
INSERT INTO `persistences` VALUES ('401', '1', 'ovY0LhwjvhhE88k6fzk2oJChNqS898F4', '2018-02-22 02:37:40', '2018-02-22 02:37:40');
INSERT INTO `persistences` VALUES ('402', '1', 'tgIVtJFuqcpySYZaWqSCS0kz3nch5nn0', '2018-02-22 02:42:38', '2018-02-22 02:42:38');
INSERT INTO `persistences` VALUES ('403', '1', '3d3ZWMDcSNVaiGfaUE16w3qLjFDz5B89', '2018-02-22 02:43:12', '2018-02-22 02:43:12');
INSERT INTO `persistences` VALUES ('404', '1', 'MiDRSRtKMTtiOqCPpxTJ1S1DJei1JFo7', '2018-02-22 02:43:47', '2018-02-22 02:43:47');
INSERT INTO `persistences` VALUES ('405', '1', 'pcchuGQUmUqtnDfUAEHJSzevQaCsy6xL', '2018-02-22 02:44:08', '2018-02-22 02:44:08');
INSERT INTO `persistences` VALUES ('406', '1', 'q7bSqZWQTvzxwR7LTXwwIh8oS3B8G3M8', '2018-02-22 02:45:32', '2018-02-22 02:45:32');
INSERT INTO `persistences` VALUES ('407', '1', 'o9aFjdhLesHxIqiKWvYWgA9JH5dadaHF', '2018-02-22 02:46:18', '2018-02-22 02:46:18');
INSERT INTO `persistences` VALUES ('408', '1', 'QiU45sgKZN8ocgBimAuXmP28lPPaAHGk', '2018-02-22 02:46:59', '2018-02-22 02:46:59');
INSERT INTO `persistences` VALUES ('409', '1', '577rm7UeFqwexly1FOvgurLRuxJlQS0L', '2018-02-22 02:48:51', '2018-02-22 02:48:51');
INSERT INTO `persistences` VALUES ('410', '1', 'hDXQ4mFIcFOfmYceNjbatjdBx5CfY21S', '2018-02-22 02:51:04', '2018-02-22 02:51:04');
INSERT INTO `persistences` VALUES ('411', '1', 'fUGAUksGsqz3KaOnn5LNV3Be01ZgyxKO', '2018-02-22 02:51:11', '2018-02-22 02:51:11');
INSERT INTO `persistences` VALUES ('412', '1', 'JxsBQVcbClQZU9w1i6PU0bJEITidJ9DI', '2018-02-22 02:51:28', '2018-02-22 02:51:28');
INSERT INTO `persistences` VALUES ('413', '1', '4fbVktz0J4qQBtMMC4ij9LRiwQKmzL7U', '2018-02-22 02:52:43', '2018-02-22 02:52:43');
INSERT INTO `persistences` VALUES ('414', '1', 'm6XFZaTaWc360FlD6Sp60ZuXgyPFR1aV', '2018-02-22 02:53:48', '2018-02-22 02:53:48');
INSERT INTO `persistences` VALUES ('415', '1', 'J4gRbWZdpIQIA1gF8rZvlLLi9xYb2yCR', '2018-02-22 02:55:02', '2018-02-22 02:55:02');
INSERT INTO `persistences` VALUES ('416', '1', 'm7z4TOdKFm8Z2nKG73vmZRYWbzuFsp20', '2018-02-22 02:55:38', '2018-02-22 02:55:38');
INSERT INTO `persistences` VALUES ('417', '1', 'ogsBKz2NFqrYnUWS4AIDe8aLlNM5Arnq', '2018-02-22 02:58:01', '2018-02-22 02:58:01');
INSERT INTO `persistences` VALUES ('418', '1', 'a1QMJ1xmVveKutQSVXlXYoxBrutgTPk8', '2018-02-22 02:58:42', '2018-02-22 02:58:42');
INSERT INTO `persistences` VALUES ('419', '1', '2shOnEJdeXWKfBFyRdGmpsMG8pfSTdPt', '2018-02-22 03:02:07', '2018-02-22 03:02:07');
INSERT INTO `persistences` VALUES ('420', '1', 'K2yqRsMLhx6L0DMmieKy1RbrhhDRRrSU', '2018-02-22 03:02:10', '2018-02-22 03:02:10');
INSERT INTO `persistences` VALUES ('421', '1', '2bvvNFt0CjF9QaxLwKBVweRvO387Gic1', '2018-02-22 03:02:18', '2018-02-22 03:02:18');
INSERT INTO `persistences` VALUES ('422', '1', 'UXiWFlzUPywLghoDrutLXjIiXVRI5Rst', '2018-02-22 03:03:27', '2018-02-22 03:03:27');
INSERT INTO `persistences` VALUES ('423', '1', 'ms8g9l8In95eRQRtR9hPG3t9vzg1Fat1', '2018-02-22 03:06:29', '2018-02-22 03:06:29');
INSERT INTO `persistences` VALUES ('424', '1', 'Ey5o8W7DxdVdyJUPRz3gT8BXjoiFWEeq', '2018-02-22 03:08:06', '2018-02-22 03:08:06');
INSERT INTO `persistences` VALUES ('425', '1', '0RHuxBstSTNHmIdz96KcWPGatRf3lWXy', '2018-02-22 03:08:53', '2018-02-22 03:08:53');
INSERT INTO `persistences` VALUES ('426', '1', 'jrr19pyYonsUemrmDWIEmBFSGc40uLsf', '2018-02-22 03:09:40', '2018-02-22 03:09:40');
INSERT INTO `persistences` VALUES ('427', '1', 'H668OodsA8Ffw5puzgAQ8ebeMS3WASVJ', '2018-02-22 03:09:52', '2018-02-22 03:09:52');
INSERT INTO `persistences` VALUES ('428', '1', 'i8BupKccFdTBAarS4XGWthXNFAshpDgG', '2018-02-22 03:09:55', '2018-02-22 03:09:55');
INSERT INTO `persistences` VALUES ('429', '1', 'AxpR3VNVeLcYb4qNB41rZootd49PxqKU', '2018-02-22 03:12:22', '2018-02-22 03:12:22');
INSERT INTO `persistences` VALUES ('430', '1', 'Wut1TDY0eyPL5uyP2we7TrUlPG3md9nl', '2018-02-22 03:12:27', '2018-02-22 03:12:27');
INSERT INTO `persistences` VALUES ('431', '1', 'yJWBJr3CiBLMUZQuIZMx2i7afasWKE8R', '2018-02-22 03:12:32', '2018-02-22 03:12:32');
INSERT INTO `persistences` VALUES ('432', '1', 'jpleKaXO1N8r5GdLUZdGFuImVyeyjsmn', '2018-02-22 03:14:29', '2018-02-22 03:14:29');
INSERT INTO `persistences` VALUES ('433', '1', '2HrbqccadYzo3FvblmfKNbcNQDJd8rNZ', '2018-02-22 03:17:59', '2018-02-22 03:17:59');
INSERT INTO `persistences` VALUES ('434', '1', 'bPepg4iwSBGQbKwhq7lkPVyHJAs1vcvJ', '2018-02-22 03:18:21', '2018-02-22 03:18:21');
INSERT INTO `persistences` VALUES ('435', '1', 'KrVeEuULZAMnClSoBIMmbqJUGP4u3MGG', '2018-02-22 03:21:14', '2018-02-22 03:21:14');
INSERT INTO `persistences` VALUES ('436', '1', '03S3PP0HiBeSPFiYfpS9oGtaRTQjgIoe', '2018-02-22 03:22:11', '2018-02-22 03:22:11');
INSERT INTO `persistences` VALUES ('437', '1', 'q9CVg9kiEgdtBh9E7P1aVDqBnUYJN4aE', '2018-02-22 03:23:12', '2018-02-22 03:23:12');
INSERT INTO `persistences` VALUES ('438', '1', 'NL2BfkwWs1qq6Dvd1eWkVcSPKlQZvaFO', '2018-02-22 03:24:35', '2018-02-22 03:24:35');
INSERT INTO `persistences` VALUES ('439', '1', 'HhcuZF3AjaZ0MuPc0rcNa3X7TFjvzeN4', '2018-02-22 03:26:57', '2018-02-22 03:26:57');
INSERT INTO `persistences` VALUES ('440', '1', '94uFMXDQuxzHgtDFMukaXqOmRGCMa2Ue', '2018-02-22 03:28:28', '2018-02-22 03:28:28');
INSERT INTO `persistences` VALUES ('441', '1', '2k9fA65KozaKYl9VIcQeYuuYVR7gReu9', '2018-02-22 03:29:10', '2018-02-22 03:29:10');
INSERT INTO `persistences` VALUES ('442', '1', '3DWep7NskBrra0OvV2wstGJghDxOhFQY', '2018-02-22 03:29:17', '2018-02-22 03:29:17');
INSERT INTO `persistences` VALUES ('443', '1', 'TPsyygR8ei422rzprvKNAQFtLbNiT1Qp', '2018-02-22 03:29:19', '2018-02-22 03:29:19');
INSERT INTO `persistences` VALUES ('444', '1', '0MdMYJdPWlldMzQfLkKNwbcAcpKWK65c', '2018-02-22 03:29:25', '2018-02-22 03:29:25');
INSERT INTO `persistences` VALUES ('445', '1', 'CAz90mVoC4MK3v0qYYEQkpQI5AYNr0wL', '2018-02-22 03:29:26', '2018-02-22 03:29:26');
INSERT INTO `persistences` VALUES ('446', '1', 'SQIdyZeMxkUJVlfGWhziAqe0yhuuIdQb', '2018-02-22 03:35:28', '2018-02-22 03:35:28');
INSERT INTO `persistences` VALUES ('447', '1', 'zxsNAmKwWNXrX5mzRdiLDGdBnrKJE2sc', '2018-02-22 03:35:46', '2018-02-22 03:35:46');
INSERT INTO `persistences` VALUES ('448', '1', 'a0ezzrcNH1levPrPPQglSXupAned3kS5', '2018-02-22 03:35:50', '2018-02-22 03:35:50');
INSERT INTO `persistences` VALUES ('449', '1', 'mjdIAbc8XlqmJrY5nXTsju7l9F0NEcve', '2018-02-22 03:35:52', '2018-02-22 03:35:52');
INSERT INTO `persistences` VALUES ('450', '1', '6FDjh7xqOMIYEOOlidiEW3ub0ZIWc4jd', '2018-02-22 03:37:28', '2018-02-22 03:37:28');
INSERT INTO `persistences` VALUES ('451', '1', 'PuhEj3wb3QGvS7866JbiDesH8m5Lmr5M', '2018-02-22 03:37:33', '2018-02-22 03:37:33');
INSERT INTO `persistences` VALUES ('452', '1', 'g5nhc9YCfr5bF1Vb3Zv8Li1y4wrHFIw7', '2018-02-22 03:42:31', '2018-02-22 03:42:31');
INSERT INTO `persistences` VALUES ('453', '1', 'F0wxoBOZIUlEDrOL1iLPyyBsN7Pb8ZiX', '2018-02-22 03:42:42', '2018-02-22 03:42:42');
INSERT INTO `persistences` VALUES ('454', '1', 'FIvmYjVbx84oeCt0gIV0HEzhEySindWV', '2018-02-22 03:50:08', '2018-02-22 03:50:08');
INSERT INTO `persistences` VALUES ('455', '1', '2F9HnHsw3RIvWaAkwCFai0IlcX3nGHyu', '2018-02-22 03:50:18', '2018-02-22 03:50:18');
INSERT INTO `persistences` VALUES ('456', '1', 'CLYL2X8iOtBq4jAM4aXteUfCjPqNiue1', '2018-02-22 03:50:33', '2018-02-22 03:50:33');
INSERT INTO `persistences` VALUES ('457', '1', 'fIyH0pqOyOyYB9kgm6KEVk6dswNCx4Tm', '2018-02-22 03:50:39', '2018-02-22 03:50:39');
INSERT INTO `persistences` VALUES ('458', '1', 'oTrK2POvgjVWK73uiLcXrexshHzt7uHc', '2018-02-22 03:50:51', '2018-02-22 03:50:51');
INSERT INTO `persistences` VALUES ('459', '1', 'lCgDO2T7Elq88LWT5VMvMAOmhlsmknpX', '2018-02-22 03:51:54', '2018-02-22 03:51:54');
INSERT INTO `persistences` VALUES ('460', '1', 'jvhQv7t6QClaTTDCYID5mxpRIMyI8464', '2018-02-22 03:51:57', '2018-02-22 03:51:57');
INSERT INTO `persistences` VALUES ('461', '1', 'DPHAiTnWR3AilUBunNtGv5uQnSpMQ22I', '2018-02-22 03:53:19', '2018-02-22 03:53:19');
INSERT INTO `persistences` VALUES ('462', '1', 'M7s0q2fV3vKEy5QkHu2CndB7WPWp79KR', '2018-02-22 03:53:21', '2018-02-22 03:53:21');
INSERT INTO `persistences` VALUES ('463', '1', 'RAvRmndudWnXy6uGhkF20POMEkYqnOQc', '2018-02-22 03:54:27', '2018-02-22 03:54:27');
INSERT INTO `persistences` VALUES ('464', '1', 'b9PuCSia2IRvlwMhABPbBtmdGILYVdrQ', '2018-02-22 03:54:30', '2018-02-22 03:54:30');
INSERT INTO `persistences` VALUES ('465', '1', 'aANeoEKzDyS9pZ5m2w9f4J2ITVpIDGaD', '2018-02-22 03:56:27', '2018-02-22 03:56:27');
INSERT INTO `persistences` VALUES ('466', '1', 'TDJiJ5ytY50RsVO2gn5O3PcGOmyAHFhK', '2018-02-22 03:56:30', '2018-02-22 03:56:30');
INSERT INTO `persistences` VALUES ('467', '1', 'jQ034PYC3FpLerxZdVFmWUYe9pNu0i8O', '2018-02-22 03:57:54', '2018-02-22 03:57:54');
INSERT INTO `persistences` VALUES ('468', '1', 'ZLksQ5SvFRq0MKiJMBe4Ya60FzNBMmxn', '2018-02-22 03:58:03', '2018-02-22 03:58:03');
INSERT INTO `persistences` VALUES ('469', '1', 'k2Sk4XFoJk8Ws7ftZOCijhTVH0qGiQnR', '2018-02-22 03:59:10', '2018-02-22 03:59:10');
INSERT INTO `persistences` VALUES ('470', '1', '5ZrXfyyIiyk0FpnbhGdGcOeKV9kDhTCj', '2018-02-22 03:59:44', '2018-02-22 03:59:44');
INSERT INTO `persistences` VALUES ('471', '1', '7wUot3eJtc0lhMgqdVWfQ83HSmvlUYdM', '2018-02-22 04:00:22', '2018-02-22 04:00:22');
INSERT INTO `persistences` VALUES ('472', '1', 'fP771XCTJWsrcBSOLeQWZlKwgSfVyYmh', '2018-02-22 04:00:41', '2018-02-22 04:00:41');
INSERT INTO `persistences` VALUES ('473', '1', 'NIyJylVUdz4hoZbDF1vWu0Uk1DlA9Nfh', '2018-02-22 04:00:43', '2018-02-22 04:00:43');
INSERT INTO `persistences` VALUES ('474', '1', 'bYOIZE7UZ9D57RQUaU2tJiiicN0Cw0Rh', '2018-02-22 04:01:02', '2018-02-22 04:01:02');
INSERT INTO `persistences` VALUES ('475', '1', 'lvHJcR8nvJ5itUhxdsW5leEHCmfjq9pV', '2018-02-22 05:34:14', '2018-02-22 05:34:14');
INSERT INTO `persistences` VALUES ('476', '1', 'nBMS78PRgSfwSdl6HiD7aPNcwoU1N95B', '2018-02-22 05:35:06', '2018-02-22 05:35:06');
INSERT INTO `persistences` VALUES ('477', '1', 'dKsIUHdn5y9ooQ7dAtPXVv1eHO0KMo6u', '2018-02-22 05:35:30', '2018-02-22 05:35:30');
INSERT INTO `persistences` VALUES ('478', '1', 'TMkKLCv2Z592XE2N3Xu7DAGPH5pwRhF3', '2018-02-22 05:36:46', '2018-02-22 05:36:46');
INSERT INTO `persistences` VALUES ('479', '1', 'nZrH9JwWlt3OXvCfh8hh9p0fCFh9Gan8', '2018-02-22 05:36:51', '2018-02-22 05:36:51');
INSERT INTO `persistences` VALUES ('480', '1', 'jBa6DrFUBPWNG8KaASYZxrE4w2lptqOS', '2018-02-22 05:36:56', '2018-02-22 05:36:56');
INSERT INTO `persistences` VALUES ('481', '1', 'XWo03jNVyqArtVa1OzgmeeT3Ezn6JGaQ', '2018-02-22 05:38:06', '2018-02-22 05:38:06');
INSERT INTO `persistences` VALUES ('482', '1', 'uQUJuvhwz04dvUq8pIaqsRcARFnqFM7Y', '2018-02-22 05:40:23', '2018-02-22 05:40:23');
INSERT INTO `persistences` VALUES ('483', '1', 'zAhuaHVvFKHzKLtd97TcRfzUAcsyhbiH', '2018-02-22 05:40:26', '2018-02-22 05:40:26');
INSERT INTO `persistences` VALUES ('484', '1', 'Qxy3ORFoah1qKP4nEs4xRxX5g4Uz1wj8', '2018-02-22 05:46:57', '2018-02-22 05:46:57');
INSERT INTO `persistences` VALUES ('485', '1', '2MeBrEbdycoCKwMhFtFU4pTtL4J9UBMZ', '2018-02-22 05:48:18', '2018-02-22 05:48:18');
INSERT INTO `persistences` VALUES ('486', '1', '93jUvByrypgybAchlhBX1d5pJ5NAASFc', '2018-02-22 05:49:09', '2018-02-22 05:49:09');
INSERT INTO `persistences` VALUES ('487', '1', 'RyMwhOC29TLsjeJCF7BYQnoX83VV9hCO', '2018-02-22 05:49:21', '2018-02-22 05:49:21');
INSERT INTO `persistences` VALUES ('488', '1', 'YBMRpjlgkxNpdVGk3nhxJ7cbsVwdjcqL', '2018-02-22 06:02:51', '2018-02-22 06:02:51');
INSERT INTO `persistences` VALUES ('489', '1', 'zpuNvmYAm6eTUpyRBnyua7GaWhc670S4', '2018-02-22 06:08:03', '2018-02-22 06:08:03');
INSERT INTO `persistences` VALUES ('490', '1', 'U5WjQvO5AC7GE4cvXbIojNHgOBJpIlh0', '2018-02-22 06:09:20', '2018-02-22 06:09:20');
INSERT INTO `persistences` VALUES ('491', '1', 'bIm28bUVWtJFP0ZEzsIs5BvxqfeSnYgT', '2018-02-22 06:10:08', '2018-02-22 06:10:08');
INSERT INTO `persistences` VALUES ('492', '1', 'n1JwMWp1KBNXlXxDSYJcnOeohuLTE1Ls', '2018-02-22 06:11:40', '2018-02-22 06:11:40');
INSERT INTO `persistences` VALUES ('493', '1', '5nYcZsseTm5mEF56xID1J6TuoIPBnEPd', '2018-02-22 06:11:51', '2018-02-22 06:11:51');
INSERT INTO `persistences` VALUES ('494', '1', 'zEa94sq0lkKaW1W7ZBBtznOs3eIBiUBr', '2018-02-22 06:11:53', '2018-02-22 06:11:53');
INSERT INTO `persistences` VALUES ('495', '1', '9cqFYefn6f1zlJvMDUmUK4E9exs3SpNk', '2018-02-22 06:13:03', '2018-02-22 06:13:03');
INSERT INTO `persistences` VALUES ('496', '1', '8zx6nNGcHORggpOzpHEO9I90tulXWobp', '2018-02-22 06:13:32', '2018-02-22 06:13:32');
INSERT INTO `persistences` VALUES ('497', '1', 'AVt9vLybm9lkmSwvRYJN7kgt8IDvBKiR', '2018-02-22 06:13:51', '2018-02-22 06:13:51');
INSERT INTO `persistences` VALUES ('498', '1', 'MB0KwwErvLcB4iRVByXOxaGEo1SAR5f0', '2018-02-22 06:14:26', '2018-02-22 06:14:26');
INSERT INTO `persistences` VALUES ('499', '1', 'XxPv4imXRYtbaU8E4uzAMxZOP7Wrfrtl', '2018-02-22 06:14:40', '2018-02-22 06:14:40');
INSERT INTO `persistences` VALUES ('500', '1', 'puFTjqBaBYBM9zVeH4UDIqIbP6a1kcgX', '2018-02-22 06:14:45', '2018-02-22 06:14:45');
INSERT INTO `persistences` VALUES ('501', '1', 'SN87mJnQWF9hFluBozgcHgR6QuBCFjZ6', '2018-02-22 06:15:57', '2018-02-22 06:15:57');
INSERT INTO `persistences` VALUES ('502', '1', '1tYIAK3RBs29RNBcdzyswx2Dyp9CEjKb', '2018-02-22 07:00:30', '2018-02-22 07:00:30');
INSERT INTO `persistences` VALUES ('503', '1', 'KhAQqddnNQ6ip120yE5TVqPJQo1GrhBj', '2018-02-22 07:01:32', '2018-02-22 07:01:32');
INSERT INTO `persistences` VALUES ('504', '1', '3xn8DLAidgg6XC4xUUkpWO0msZ4jf3u7', '2018-02-22 07:03:49', '2018-02-22 07:03:49');
INSERT INTO `persistences` VALUES ('505', '1', 'ZwbNSdJXyGstLb7pUxucQFhmQuhpIwWh', '2018-02-22 07:10:46', '2018-02-22 07:10:46');
INSERT INTO `persistences` VALUES ('506', '1', 'Ms0xoe2uSAJYs2jKclitlorL7cKqtMoq', '2018-02-22 07:11:44', '2018-02-22 07:11:44');
INSERT INTO `persistences` VALUES ('507', '1', 'a46cOHUDD1z1dBA0GyCFcDATvq0ySsaK', '2018-02-22 07:51:27', '2018-02-22 07:51:27');
INSERT INTO `persistences` VALUES ('508', '1', 'T2xqPGA6HbxRCGuPWrkdeqTEUxNWsER8', '2018-02-22 07:51:30', '2018-02-22 07:51:30');
INSERT INTO `persistences` VALUES ('509', '1', 'xdHxPeo2YhA6nIVIY0NvL6pHCzwx4Kmc', '2018-02-22 08:07:53', '2018-02-22 08:07:53');
INSERT INTO `persistences` VALUES ('510', '1', 'ccbOCuwZz1gGXFIKnD9FXJJr43iPKH0y', '2018-02-22 08:07:53', '2018-02-22 08:07:53');
INSERT INTO `persistences` VALUES ('511', '1', 'RMqChOWXnXGF8SgvZmzpoB6liu0OsWfW', '2018-02-22 08:07:53', '2018-02-22 08:07:53');
INSERT INTO `persistences` VALUES ('512', '1', 'Qr2Sib7PaCzmoSQqazTNEpwN0MdchfOP', '2018-02-22 08:08:26', '2018-02-22 08:08:26');
INSERT INTO `persistences` VALUES ('513', '1', 'XODoXEk7smNlJz72tfUqg7WalCvwUkh6', '2018-02-22 08:09:54', '2018-02-22 08:09:54');
INSERT INTO `persistences` VALUES ('514', '1', 'YbMKZP46rKoeybXh5yB4fngFkBuRCjmr', '2018-02-22 08:09:56', '2018-02-22 08:09:56');
INSERT INTO `persistences` VALUES ('515', '1', 'o00H3igFxlRbvqlbre2MOeG9PwBQBhjN', '2018-02-22 08:09:56', '2018-02-22 08:09:56');
INSERT INTO `persistences` VALUES ('516', '1', '0oem5rsxKjPftUpguqYctxpFKQ7NxfQV', '2018-02-22 08:09:56', '2018-02-22 08:09:56');
INSERT INTO `persistences` VALUES ('517', '1', 'quaIUM3DuIBIWUuIS7xmGxMbMwCqKgeV', '2018-02-22 08:14:04', '2018-02-22 08:14:04');
INSERT INTO `persistences` VALUES ('518', '1', 'r9GNQDblBpGOtetRo8Wz3RLtlXw3EWtj', '2018-02-22 08:14:06', '2018-02-22 08:14:06');
INSERT INTO `persistences` VALUES ('519', '1', 'F3H4iUAJAXaErgAXcueakRfmWTwmpPpO', '2018-02-22 08:14:45', '2018-02-22 08:14:45');
INSERT INTO `persistences` VALUES ('520', '1', 'YDwyVQDafSXdOugKx3ILAmBFa9a45YNu', '2018-02-22 08:14:54', '2018-02-22 08:14:54');
INSERT INTO `persistences` VALUES ('521', '1', 'rmsNzDLon8TmXvxEo6FhR980RXRqOiUo', '2018-02-22 08:14:54', '2018-02-22 08:14:54');
INSERT INTO `persistences` VALUES ('522', '1', 'T6bzQBnGmlzjBLLdhbfBJfPDuzFbwFkf', '2018-02-22 08:17:06', '2018-02-22 08:17:06');
INSERT INTO `persistences` VALUES ('523', '1', 'vsAl7xtA7quNRtnJxf9jtXHybrHOoaCO', '2018-02-22 08:19:38', '2018-02-22 08:19:38');
INSERT INTO `persistences` VALUES ('524', '1', 'oN9uO4jHH1t22T7chGkDL6lfMfCGFCpM', '2018-02-22 08:24:50', '2018-02-22 08:24:50');
INSERT INTO `persistences` VALUES ('525', '1', 'ywCqDdkKkamyYTpoKYMqATohz8BAD9rD', '2018-02-22 08:24:52', '2018-02-22 08:24:52');
INSERT INTO `persistences` VALUES ('526', '1', 'gBnFznDNQkRPtub6yPW7ltfCFNoowvJk', '2018-02-22 08:29:38', '2018-02-22 08:29:38');
INSERT INTO `persistences` VALUES ('527', '1', 'TanMLo4Z1iYdaxnpxKtfcjAvnN6Xf38e', '2018-02-22 08:29:40', '2018-02-22 08:29:40');
INSERT INTO `persistences` VALUES ('528', '1', 'tmSIbFnydLuGtC0OWfwuL0Lz0173FHIU', '2018-02-22 08:39:56', '2018-02-22 08:39:56');
INSERT INTO `persistences` VALUES ('529', '1', 'N0HO7XmnS8oUZqTwZWIyImf8xgy9X4mV', '2018-02-22 08:40:59', '2018-02-22 08:40:59');
INSERT INTO `persistences` VALUES ('530', '1', 'GFUcetChxz29eKqwifS9BJhSBsIGSFWT', '2018-02-22 08:41:39', '2018-02-22 08:41:39');
INSERT INTO `persistences` VALUES ('531', '1', 'SV5AB5SIrDmNLX0DR0J0Z9Wi4vqfiv5p', '2018-02-22 08:43:12', '2018-02-22 08:43:12');
INSERT INTO `persistences` VALUES ('532', '1', 'X6LSWswkmUc17LCoRVTZl0fwtGwf94wz', '2018-02-22 08:45:17', '2018-02-22 08:45:17');
INSERT INTO `persistences` VALUES ('533', '1', '7aKBHP0NYkodcG9VgdinOkWJKaEosIDm', '2018-02-22 08:46:25', '2018-02-22 08:46:25');
INSERT INTO `persistences` VALUES ('534', '1', 'cR0aDkn2NA1dycomFGZKoJ2EW9z0wSf1', '2018-02-22 08:47:35', '2018-02-22 08:47:35');
INSERT INTO `persistences` VALUES ('535', '1', 'Zfl1n7Lq0wWhL6EpLYUmIe8w9MMfNnKe', '2018-02-22 08:48:29', '2018-02-22 08:48:29');
INSERT INTO `persistences` VALUES ('536', '1', 'DcdwIpI6ImMLcMVuJG4JB2X9nhBaP8bL', '2018-02-22 08:49:04', '2018-02-22 08:49:04');
INSERT INTO `persistences` VALUES ('537', '1', '1OViA3Ase5NpbQONFUvSWvKZR5JHeisS', '2018-02-22 08:49:06', '2018-02-22 08:49:06');
INSERT INTO `persistences` VALUES ('538', '1', 'Afi9LuyaY4AYU5GRqIQE2p9MzLnnAGzO', '2018-02-22 08:49:12', '2018-02-22 08:49:12');
INSERT INTO `persistences` VALUES ('539', '1', 'TSkSaAkNbwxu2TlwMOwJYymL6TCbjF0H', '2018-02-22 08:51:09', '2018-02-22 08:51:09');
INSERT INTO `persistences` VALUES ('540', '1', 'zj4GSS7KpUXsW2InIFCn1w3yaSSh0gN6', '2018-02-22 08:53:29', '2018-02-22 08:53:29');
INSERT INTO `persistences` VALUES ('541', '1', 'zAsxl9iWhIrV2iRTqX3gjUa0mpUgKoo3', '2018-02-22 08:53:50', '2018-02-22 08:53:50');
INSERT INTO `persistences` VALUES ('542', '1', 'yGB41WKHFCmNJoOjhS3XnM6R1tEsYhv0', '2018-02-22 08:53:54', '2018-02-22 08:53:54');
INSERT INTO `persistences` VALUES ('543', '1', 'WD0lY5e0PJHpOkCCAOOmtHyusbJr8DLj', '2018-02-22 08:53:54', '2018-02-22 08:53:54');
INSERT INTO `persistences` VALUES ('544', '1', 'GsxWx8kRBRZmDK1ac810X4rpA9EFgUZn', '2018-02-22 08:53:54', '2018-02-22 08:53:54');
INSERT INTO `persistences` VALUES ('545', '1', 'mf0deYiaWwgvZODEEPLEgNEK2y8jHuWG', '2018-02-22 08:54:16', '2018-02-22 08:54:16');
INSERT INTO `persistences` VALUES ('546', '1', 'aXR98eIur6wz6lmIuumHamEA6Ml7esow', '2018-02-22 08:55:56', '2018-02-22 08:55:56');
INSERT INTO `persistences` VALUES ('547', '1', 'SfqK5SKPvSFO1n4vAAEJBPBjrOF6bs5Q', '2018-02-22 08:56:43', '2018-02-22 08:56:43');
INSERT INTO `persistences` VALUES ('548', '1', 'b3de0pYOGVc9qGaCOWBeiy7qdxzA9AuM', '2018-02-22 08:57:59', '2018-02-22 08:57:59');
INSERT INTO `persistences` VALUES ('549', '1', 'uTDBGaEVLdFywkr652tWZFi4GKevjqt4', '2018-02-22 09:04:53', '2018-02-22 09:04:53');
INSERT INTO `persistences` VALUES ('550', '1', 'fMv3kqHwn3IzI3n0mqeXRTJpjhVqcV9E', '2018-02-22 09:05:41', '2018-02-22 09:05:41');
INSERT INTO `persistences` VALUES ('551', '1', 'mQtqPyVWJCCvzxzcLkSRuqJ0mD2b9ZML', '2018-02-22 09:08:42', '2018-02-22 09:08:42');
INSERT INTO `persistences` VALUES ('552', '1', 'wfRXnyRDMyNUL7bsWe5unV7yCnk6Mlxe', '2018-02-22 09:08:53', '2018-02-22 09:08:53');
INSERT INTO `persistences` VALUES ('553', '1', 'XpMZknEQcT2kDWdjc7gCMR0Yq7IdAOPq', '2018-02-22 09:14:35', '2018-02-22 09:14:35');
INSERT INTO `persistences` VALUES ('555', '1', 'bvpIre26JkqV28xf9L89XQlko4hbSZ0Z', '2018-02-22 09:21:27', '2018-02-22 09:21:27');
INSERT INTO `persistences` VALUES ('556', '1', 'Al13302jH4URqoSQUKXtxq5oOfe6UfSm', '2018-02-22 09:21:30', '2018-02-22 09:21:30');
INSERT INTO `persistences` VALUES ('557', '1', 'KSPKLZYDhcocSL8WBq4S59zdEqp5DxjB', '2018-02-22 09:21:31', '2018-02-22 09:21:31');
INSERT INTO `persistences` VALUES ('558', '1', 'CvyhhB9rf2iXXo2Rr7eEVSv5EKTd8JRi', '2018-02-22 09:21:31', '2018-02-22 09:21:31');
INSERT INTO `persistences` VALUES ('559', '1', 'H2aGWDFGFUnfbK3HyFzA7bJDp3plrL0f', '2018-02-22 09:22:01', '2018-02-22 09:22:01');
INSERT INTO `persistences` VALUES ('560', '1', 'KMufiaaPzMk8a9tNKCb2BU53XdTtZEDp', '2018-02-22 09:24:31', '2018-02-22 09:24:31');
INSERT INTO `persistences` VALUES ('561', '1', 'JIkwWfZ0mSdAqvkgxO5I5JPZtcozKhSK', '2018-02-22 09:24:55', '2018-02-22 09:24:55');
INSERT INTO `persistences` VALUES ('562', '1', '55ClwfliHgr2ybWOIYgpAZs9UNsMGaA8', '2018-02-22 09:25:18', '2018-02-22 09:25:18');
INSERT INTO `persistences` VALUES ('563', '1', 'Hmsrqi4zvIbK3XKUBdioJ2mgKlefDIfw', '2018-02-22 09:26:06', '2018-02-22 09:26:06');
INSERT INTO `persistences` VALUES ('564', '1', 'u7Rf0iKZ8LvY8KE4cTvhAMkDMwk1eWJT', '2018-02-22 09:26:46', '2018-02-22 09:26:46');
INSERT INTO `persistences` VALUES ('565', '1', 'ivMkl3VPC8wl5ETDAZY9iehJI8fIikTT', '2018-02-22 09:26:53', '2018-02-22 09:26:53');
INSERT INTO `persistences` VALUES ('566', '1', 'CePlHysmzE6tDm0sKSaMRX2chpRqfOzr', '2018-02-22 09:26:57', '2018-02-22 09:26:57');
INSERT INTO `persistences` VALUES ('567', '1', '0eRRSbuvfeMtm33s1Y4Thp6r72Hp2Xhf', '2018-02-22 09:27:00', '2018-02-22 09:27:00');
INSERT INTO `persistences` VALUES ('568', '1', 'fHcQPMgr4wmnyFwftM1IIAhPTCYkilu5', '2018-02-22 09:27:01', '2018-02-22 09:27:01');
INSERT INTO `persistences` VALUES ('569', '1', 'GsxwNUJHYUL3jWUdLHCl3p5lyBdD5ZYC', '2018-02-22 09:27:01', '2018-02-22 09:27:01');
INSERT INTO `persistences` VALUES ('570', '1', 'Fut5qjFdMMuzPKx4SocnWqk4wqNdRgwO', '2018-02-22 09:27:02', '2018-02-22 09:27:02');
INSERT INTO `persistences` VALUES ('571', '1', 'y5wT9dpGaUhIwDUevH8ZEhDPMpzNOgoM', '2018-02-22 09:27:29', '2018-02-22 09:27:29');
INSERT INTO `persistences` VALUES ('573', '1', 'WweBm8GgIdgSwrPBPzU9HuPQB5n9vaW4', '2018-02-22 09:30:05', '2018-02-22 09:30:05');
INSERT INTO `persistences` VALUES ('574', '1', 'Gu9bTsZ66Pgbl8AHP9guI2JfNL3CdSDr', '2018-02-22 09:30:09', '2018-02-22 09:30:09');
INSERT INTO `persistences` VALUES ('575', '1', 'yFx8l5ChACHo6cIoTQ48wpdXF8GZpVuK', '2018-02-22 09:30:09', '2018-02-22 09:30:09');
INSERT INTO `persistences` VALUES ('576', '1', 'LWNpsURz7cCPGKKqJ2O72wreOZSTbbKm', '2018-02-22 09:30:09', '2018-02-22 09:30:09');
INSERT INTO `persistences` VALUES ('577', '1', 'Ld2cODfIfLO64Oe0EBksaG3gOuDHfpHM', '2018-02-22 09:30:13', '2018-02-22 09:30:13');
INSERT INTO `persistences` VALUES ('578', '1', 'n2sxV5F2zCosP2uqa5cD2SKFQIHpIHpV', '2018-02-22 09:30:13', '2018-02-22 09:30:13');
INSERT INTO `persistences` VALUES ('579', '1', '1r3VWlnKBOZH7JWobak07ozQRkMghtX5', '2018-02-22 09:31:12', '2018-02-22 09:31:12');
INSERT INTO `persistences` VALUES ('580', '1', '7HLUEZBl0rfgKxN1JZ8qaeWDjkAsrIsB', '2018-02-22 09:31:13', '2018-02-22 09:31:13');
INSERT INTO `persistences` VALUES ('581', '1', 'fQzlcniDJZRJUSkqBYyiIwBRajJRdwkt', '2018-02-22 09:31:14', '2018-02-22 09:31:14');
INSERT INTO `persistences` VALUES ('582', '1', 'BKLeMQtKbGcl10yzun2JvdYx1wyTu8YF', '2018-02-22 09:31:14', '2018-02-22 09:31:14');
INSERT INTO `persistences` VALUES ('583', '1', 'nEWTSylrd5xo6flcBgBlFUF0cEGGB9SF', '2018-02-22 09:31:40', '2018-02-22 09:31:40');
INSERT INTO `persistences` VALUES ('584', '1', '5N6LgJesucV6cAGBZwAOUJZzA1tzb1ym', '2018-02-22 09:38:46', '2018-02-22 09:38:46');
INSERT INTO `persistences` VALUES ('585', '1', 'ng5Sw6XD6ajyOfpaXmx3gvfVebUYiwKW', '2018-02-22 09:39:07', '2018-02-22 09:39:07');
INSERT INTO `persistences` VALUES ('586', '1', 'q64O9Ee7G1VXobiOaMDWg5eK78o7FAms', '2018-02-22 09:39:27', '2018-02-22 09:39:27');
INSERT INTO `persistences` VALUES ('587', '1', 'av1rc5h0dzq9dS9B3GjDFnuZ1Rf6NJJl', '2018-02-22 09:39:33', '2018-02-22 09:39:33');
INSERT INTO `persistences` VALUES ('588', '1', 'mrofwbmaIbjguZj8jaQL4CjOI22y1ilM', '2018-02-22 09:41:31', '2018-02-22 09:41:31');
INSERT INTO `persistences` VALUES ('589', '1', '88XZ61G5t9kLD4dTN65X0wZQFRCHHdti', '2018-02-22 09:41:32', '2018-02-22 09:41:32');
INSERT INTO `persistences` VALUES ('590', '1', 'lnhxToSHf18V8aLMR7ooqiBdnROVm6Xm', '2018-02-22 09:41:34', '2018-02-22 09:41:34');
INSERT INTO `persistences` VALUES ('591', '1', 'dOBv94JSAwVfSiulYHocs3sExxK9Z3NL', '2018-02-22 09:41:34', '2018-02-22 09:41:34');
INSERT INTO `persistences` VALUES ('592', '1', 'iIG8fDD8Yf4rKG1G32rPdQcvdHNpVFIA', '2018-02-22 09:41:34', '2018-02-22 09:41:34');
INSERT INTO `persistences` VALUES ('593', '1', 'NLEtYtRdVeKsKDmLRvoezYgRL3iR8xeo', '2018-02-22 09:42:14', '2018-02-22 09:42:14');
INSERT INTO `persistences` VALUES ('594', '1', 'GdUsL9SIl9zD0bq4VaLmOxpLiMRqtdWM', '2018-02-22 09:43:24', '2018-02-22 09:43:24');
INSERT INTO `persistences` VALUES ('595', '1', 'zW0OxzwxavJyNiPyw7gpjF76OHTLkFrC', '2018-02-22 09:43:39', '2018-02-22 09:43:39');
INSERT INTO `persistences` VALUES ('596', '1', 'hQiPy8TSGaaIo7cbtzFVTpQ65bxrEwqB', '2018-02-22 09:43:39', '2018-02-22 09:43:39');
INSERT INTO `persistences` VALUES ('597', '1', 'X8uNo6GE6OinxkjHEi5VxJiDHiG5Hyzp', '2018-02-22 09:43:49', '2018-02-22 09:43:49');
INSERT INTO `persistences` VALUES ('598', '1', 'yVg3b1r9kXm0TExoTwalwhJIDXdQOe2w', '2018-02-22 09:43:50', '2018-02-22 09:43:50');
INSERT INTO `persistences` VALUES ('599', '1', '5rfrxx6Q49tnXkrEmm5YJZ3qSmtGQuki', '2018-02-22 09:43:50', '2018-02-22 09:43:50');
INSERT INTO `persistences` VALUES ('600', '1', 'PqZ3nubsp6yNtcNOsUj6kjAoUNkemBCQ', '2018-02-22 09:43:53', '2018-02-22 09:43:53');
INSERT INTO `persistences` VALUES ('601', '1', 'thnd91vqiDw5MYUJzkbqMuntjS4WcxSn', '2018-02-22 09:45:30', '2018-02-22 09:45:30');
INSERT INTO `persistences` VALUES ('602', '1', 'C8cVRjtQwQL8B3mOyJvRJjxvIWnKa5pe', '2018-02-22 09:45:30', '2018-02-22 09:45:30');
INSERT INTO `persistences` VALUES ('608', '1', '6iClVSiSxZvMo8KpJMrGD2ifZSDcec1o', '2018-02-22 10:20:48', '2018-02-22 10:20:48');
INSERT INTO `persistences` VALUES ('609', '1', 'lCcYkeoO8SnZf7C5cltlmJbh5u0PNwyl', '2018-02-22 10:22:13', '2018-02-22 10:22:13');
INSERT INTO `persistences` VALUES ('610', '1', '6ChdDMk7t3idPPWyKsn7AQbxzGjgfONg', '2018-02-23 03:21:28', '2018-02-23 03:21:28');
INSERT INTO `persistences` VALUES ('611', '1', 'DNV6HjQvM7hMsJPiARU7MjbTAcKmufM8', '2018-02-23 06:27:09', '2018-02-23 06:27:09');
INSERT INTO `persistences` VALUES ('612', '1', 'F7SxouT80aBWatVSPke2TowRuGbhokrV', '2018-02-23 07:57:16', '2018-02-23 07:57:16');
INSERT INTO `persistences` VALUES ('613', '1', 'zqOpPcxWsESV97dusejAefWW6QdQxBbn', '2018-02-23 07:57:47', '2018-02-23 07:57:47');
INSERT INTO `persistences` VALUES ('614', '1', 'nKr01mC6tYzneFxIhBcS26l4WdcWQwTz', '2018-02-23 07:58:13', '2018-02-23 07:58:13');
INSERT INTO `persistences` VALUES ('615', '1', 'ZFUZDXBTBUNEPqfPKEXgjpWX3RF36aJE', '2018-02-23 08:10:51', '2018-02-23 08:10:51');
INSERT INTO `persistences` VALUES ('616', '1', '57hPxApivdEAtbYW2dfjIeCZdeWVpkns', '2018-02-23 08:11:32', '2018-02-23 08:11:32');
INSERT INTO `persistences` VALUES ('617', '1', 'DEHOxkx36HmVov0nILuL9Qc6MzBhmsm1', '2018-02-23 08:11:44', '2018-02-23 08:11:44');
INSERT INTO `persistences` VALUES ('618', '1', 'LZDb8v9xRQGSeMUrFyxhxJ5SropjxSwH', '2018-02-23 08:11:56', '2018-02-23 08:11:56');
INSERT INTO `persistences` VALUES ('619', '1', 'mSyExWf1zENSoYHpjWxU1PaOjp3PzdXZ', '2018-02-23 08:12:06', '2018-02-23 08:12:06');
INSERT INTO `persistences` VALUES ('620', '1', '5WKikZ5gc7b5nNKy3QVhEzVsUnqgsuRT', '2018-02-23 08:12:19', '2018-02-23 08:12:19');
INSERT INTO `persistences` VALUES ('621', '1', 'vJYugQJRVHrjDPXHLN2VywOC6p6b8TGs', '2018-02-23 08:12:24', '2018-02-23 08:12:24');
INSERT INTO `persistences` VALUES ('622', '1', 'Y5LLsXEpf44dZ86bgRhCsaEQMnUyDwWP', '2018-02-23 08:13:12', '2018-02-23 08:13:12');
INSERT INTO `persistences` VALUES ('623', '1', 'AQRnJL7V1P2UqosizDFHOseF4B6VFaNK', '2018-02-23 08:13:22', '2018-02-23 08:13:22');
INSERT INTO `persistences` VALUES ('624', '1', 'eGGkxVbFTgcxx41AX4QUEHiCfvBKAmc3', '2018-02-23 08:13:26', '2018-02-23 08:13:26');
INSERT INTO `persistences` VALUES ('625', '1', 'qMEgnPm8zHLxAasEriPCUmNqDPvUERo4', '2018-02-23 08:13:32', '2018-02-23 08:13:32');
INSERT INTO `persistences` VALUES ('626', '1', 'u635NrrEIkLnc5AolI6m9VeNrl5icNQc', '2018-02-23 08:13:37', '2018-02-23 08:13:37');
INSERT INTO `persistences` VALUES ('627', '1', 'dwwEb1prR4Hu53sDJAtOgC5lxLcWRBOv', '2018-02-23 08:13:43', '2018-02-23 08:13:43');
INSERT INTO `persistences` VALUES ('628', '1', 'rpWbYTELNWI2i6RC3DBE6FY7u9RNl5wO', '2018-02-23 08:25:39', '2018-02-23 08:25:39');
INSERT INTO `persistences` VALUES ('629', '1', 'ZWjKxO7U4TJUmexy7XXrxUDC3JAcMfc1', '2018-02-23 08:25:45', '2018-02-23 08:25:45');
INSERT INTO `persistences` VALUES ('630', '1', 'n1iRTwkmhiTpazcPyVBmv2DgeleQPsLg', '2018-02-23 08:25:59', '2018-02-23 08:25:59');
INSERT INTO `persistences` VALUES ('631', '1', 'JscOIOBtPq2NV7x87kS5YuWTOjCarXba', '2018-02-23 08:28:01', '2018-02-23 08:28:01');
INSERT INTO `persistences` VALUES ('632', '1', 'XfvHHHWRpQ7VLzGNymEIRYrNf9sUbaQn', '2018-02-23 08:28:05', '2018-02-23 08:28:05');
INSERT INTO `persistences` VALUES ('633', '1', 'txsSbrBeOD7zDv0NuNiGQucvM9i1Hihe', '2018-02-23 08:40:00', '2018-02-23 08:40:00');
INSERT INTO `persistences` VALUES ('634', '1', '4f6EeBGblMNM9jKFQWx8qmY3PgShKyNS', '2018-02-23 08:40:51', '2018-02-23 08:40:51');
INSERT INTO `persistences` VALUES ('635', '1', 'ZG9nkiHPh0I8TiJFZOPZ8avwGA8cEAC0', '2018-02-23 08:41:42', '2018-02-23 08:41:42');
INSERT INTO `persistences` VALUES ('636', '1', 'GZa2LnQ2DoyO65Qr96IxNGipRB3fRxEO', '2018-02-23 08:44:52', '2018-02-23 08:44:52');
INSERT INTO `persistences` VALUES ('637', '1', 'RtQl6roL2m56qBInw2jAD10htGvC12Qi', '2018-02-23 08:46:50', '2018-02-23 08:46:50');
INSERT INTO `persistences` VALUES ('638', '1', 'lLXU2mIlkgryckRLFcKAFtLoz29MQ9fb', '2018-02-23 08:48:11', '2018-02-23 08:48:11');
INSERT INTO `persistences` VALUES ('639', '1', 'Mvk5dI5T9GHyMBCxIwns32jiN0L9z70v', '2018-02-23 08:50:22', '2018-02-23 08:50:22');
INSERT INTO `persistences` VALUES ('640', '1', 'jTCWSyIn69jUvquYuP45jDnsJJkteXRS', '2018-02-23 08:51:27', '2018-02-23 08:51:27');
INSERT INTO `persistences` VALUES ('641', '1', 'lfmZMe9KjjFfvULTOaCpKzbocjfxiNFU', '2018-02-23 09:06:29', '2018-02-23 09:06:29');
INSERT INTO `persistences` VALUES ('642', '1', 'h54acSmqf6sltovuWPaQtddgskk0Xc21', '2018-02-23 09:08:14', '2018-02-23 09:08:14');
INSERT INTO `persistences` VALUES ('643', '1', 'SVWsESb7cRySZkloPmpPad9Syxo4TQ8i', '2018-02-23 09:10:25', '2018-02-23 09:10:25');
INSERT INTO `persistences` VALUES ('644', '1', 'QM4ztbwD2ps7xoswx2Nk9AFU3t9eS6hG', '2018-02-23 09:11:13', '2018-02-23 09:11:13');
INSERT INTO `persistences` VALUES ('645', '1', 'xhV0ItSHp3DDZfBDtR3dr8H4pBBixSmU', '2018-02-23 09:12:12', '2018-02-23 09:12:12');
INSERT INTO `persistences` VALUES ('646', '1', 'N2nxcUvaRH7kNFkoRRrVNoZ3RAZUiji5', '2018-02-23 09:16:13', '2018-02-23 09:16:13');
INSERT INTO `persistences` VALUES ('647', '1', 'rFduP7dNxxx5s48NG2jEL4UQeJbvlSNJ', '2018-02-23 09:16:57', '2018-02-23 09:16:57');
INSERT INTO `persistences` VALUES ('648', '1', 'mWgLB1lUlKfx0a4t5RT7UX5CmIvdNFuJ', '2018-02-23 09:17:16', '2018-02-23 09:17:16');
INSERT INTO `persistences` VALUES ('649', '1', 'WY47w8cYSWbv8ompSt7nFkaF6IW1TJVj', '2018-02-23 09:17:37', '2018-02-23 09:17:37');
INSERT INTO `persistences` VALUES ('650', '1', 'nvyTuisOjTqzV8b1H6Qu6qn8c5NZ5hww', '2018-02-23 09:20:31', '2018-02-23 09:20:31');
INSERT INTO `persistences` VALUES ('651', '1', '6bxt8wswX8gNIdpT0pcEEo1p4LfbtsXv', '2018-02-23 09:23:12', '2018-02-23 09:23:12');
INSERT INTO `persistences` VALUES ('652', '1', 'CGesO8xDoBvBbPjLLC5ETRzxdFaFKhoL', '2018-02-23 09:24:22', '2018-02-23 09:24:22');
INSERT INTO `persistences` VALUES ('653', '1', 'pVMBXVZmo7XRAsW4ZbEpMsOaCiW4X0nG', '2018-02-23 09:24:44', '2018-02-23 09:24:44');
INSERT INTO `persistences` VALUES ('654', '1', 'pNNGbmJ0NLYyPsm7MudnuWBXlxndg17Z', '2018-02-23 09:24:54', '2018-02-23 09:24:54');
INSERT INTO `persistences` VALUES ('655', '1', 'MpDoDFVCIibE2pHkRXOEtia3cv8gRr7d', '2018-02-23 09:51:12', '2018-02-23 09:51:12');
INSERT INTO `persistences` VALUES ('656', '1', 'NPQ4bbfxxAWraff5iKvJB9aEozjz9sUb', '2018-02-23 09:51:14', '2018-02-23 09:51:14');
INSERT INTO `persistences` VALUES ('657', '1', 'culCgGWx9ZufMRNeBlnJfU8l4IHbP9mv', '2018-02-23 09:57:20', '2018-02-23 09:57:20');
INSERT INTO `persistences` VALUES ('658', '1', 'jbiCUcxfD4Bxjm2zI1pqlU9bohKfCWCP', '2018-02-23 09:57:31', '2018-02-23 09:57:31');
INSERT INTO `persistences` VALUES ('659', '1', 'HyYnKv3Y8t95owiq49OU59Ya7hwQvADb', '2018-02-24 03:15:22', '2018-02-24 03:15:22');
INSERT INTO `persistences` VALUES ('660', '1', 'zUCtz9T2ftPuDGNieyI1Nf5A042sTR3s', '2018-02-24 03:25:10', '2018-02-24 03:25:10');
INSERT INTO `persistences` VALUES ('661', '1', '8ng85AkPoeky4lUIKXriCs2zjvBheRy6', '2018-02-24 03:45:10', '2018-02-24 03:45:10');
INSERT INTO `persistences` VALUES ('662', '1', 'n7t5szrsz0xlwIRVX8tEFVR4hH6wFKTz', '2018-02-24 03:47:19', '2018-02-24 03:47:19');
INSERT INTO `persistences` VALUES ('663', '1', 'eBOWoVldWZgQZdKIWp6xLmdveNe4iMpt', '2018-02-24 03:47:29', '2018-02-24 03:47:29');
INSERT INTO `persistences` VALUES ('664', '1', 'yDFLkPSbQ4eOOuGzQSb7j8fZhLoz5IHw', '2018-02-24 05:40:15', '2018-02-24 05:40:15');
INSERT INTO `persistences` VALUES ('665', '1', 'WsXulvVrmKwhF31xgjiT7ccmdWcKhsC0', '2018-02-24 05:40:30', '2018-02-24 05:40:30');
INSERT INTO `persistences` VALUES ('666', '1', 'WPvAw3kXf8LNv9tyVj9ebsoPCNbzAecm', '2018-02-24 05:54:51', '2018-02-24 05:54:51');
INSERT INTO `persistences` VALUES ('667', '1', 'qFnn8aZ2kWS93av4wmoTWl59UK6pMfm1', '2018-02-24 05:55:13', '2018-02-24 05:55:13');
INSERT INTO `persistences` VALUES ('668', '1', 'JQmvjgwleEg0mcZcmCCq1Ybirgby1F94', '2018-02-24 06:30:28', '2018-02-24 06:30:28');
INSERT INTO `persistences` VALUES ('669', '1', 'eaAXTqx3PCc7SOlk2hMfxlYPpolgsCWT', '2018-02-24 07:16:36', '2018-02-24 07:16:36');
INSERT INTO `persistences` VALUES ('670', '1', 'QYpbchBlXViyCmQf1pHorPZNdsMmqQSW', '2018-02-24 07:17:45', '2018-02-24 07:17:45');
INSERT INTO `persistences` VALUES ('671', '1', 'rTK9ILdpVJdZLajd6Pcccuhdyg7idWKy', '2018-02-24 07:19:38', '2018-02-24 07:19:38');
INSERT INTO `persistences` VALUES ('672', '1', 'eo5iHlPV97Op0QdnDC9Kxy3sFiTCN9Tf', '2018-02-24 07:19:54', '2018-02-24 07:19:54');
INSERT INTO `persistences` VALUES ('673', '1', 'zZDSfs7ZLMJRJQ65n3R3VXXAFbwyVlI6', '2018-02-24 07:20:13', '2018-02-24 07:20:13');
INSERT INTO `persistences` VALUES ('674', '1', 'TzsWbb8wwr7wKsn8MovltsbZkwfmsnIw', '2018-02-24 07:20:20', '2018-02-24 07:20:20');
INSERT INTO `persistences` VALUES ('675', '1', 'pwOOnbBbwWabmRCff7jnCsPKybkAonkR', '2018-02-24 07:25:01', '2018-02-24 07:25:01');
INSERT INTO `persistences` VALUES ('676', '1', '7gtfYmbNTgpHmMGKqSgwFXseARvsjU4b', '2018-02-24 07:31:42', '2018-02-24 07:31:42');
INSERT INTO `persistences` VALUES ('677', '1', 'A4QJxSzXnAnPwGzQU8jXTZ2NE2ZuEsWc', '2018-02-24 07:32:36', '2018-02-24 07:32:36');
INSERT INTO `persistences` VALUES ('678', '1', '0QyhMfSKIw8xVtAsUAhV2DwUbkdRTU9Z', '2018-02-24 07:46:15', '2018-02-24 07:46:15');
INSERT INTO `persistences` VALUES ('679', '1', 'XkdJ3xsAeLflicLhIx7v0CMHXTbsPMeS', '2018-02-24 07:47:19', '2018-02-24 07:47:19');
INSERT INTO `persistences` VALUES ('680', '1', 'x1UATgDGxirpEMrysDf27ssJfnJ1ODrr', '2018-02-24 09:49:07', '2018-02-24 09:49:07');
INSERT INTO `persistences` VALUES ('681', '1', 'PtQCFWHaXwGXPuU2wywjwBaXqAITPpti', '2018-02-24 09:49:34', '2018-02-24 09:49:34');
INSERT INTO `persistences` VALUES ('682', '1', 'tPu6Hhsr709oBktnd2yWtw9rR7QHoKAx', '2018-02-24 09:50:18', '2018-02-24 09:50:18');
INSERT INTO `persistences` VALUES ('683', '1', 'JJklDgMweYFNjloZyuDR5MISCpGExAmH', '2018-02-24 09:51:32', '2018-02-24 09:51:32');
INSERT INTO `persistences` VALUES ('684', '1', 'foJzFgySTuCYsvmQYnJVxDMAD52tgQ7T', '2018-02-24 09:53:12', '2018-02-24 09:53:12');
INSERT INTO `persistences` VALUES ('685', '1', 'aKM5TU89jCygjGmSM6kjuLT0b8h7NjbC', '2018-02-24 10:00:23', '2018-02-24 10:00:23');
INSERT INTO `persistences` VALUES ('686', '1', 'O5by0giF95gW8kznc5P5KGHvIne60RCq', '2018-02-24 10:22:13', '2018-02-24 10:22:13');
INSERT INTO `persistences` VALUES ('687', '1', '32tK3vUv7aFr2zgMXy8vp8CR5hpKn0Sz', '2018-02-24 10:22:50', '2018-02-24 10:22:50');
INSERT INTO `persistences` VALUES ('688', '1', 'yWI6c2jZA4joo2waUT1r3EXRFwDh2Pck', '2018-02-24 10:23:46', '2018-02-24 10:23:46');
INSERT INTO `persistences` VALUES ('689', '1', '4tp7vEDGR0po1LM11j2abAvMugfT7ugv', '2018-02-24 10:25:42', '2018-02-24 10:25:42');
INSERT INTO `persistences` VALUES ('690', '1', 'vkTMgt4obRLUz4bC9kSXdRCtdcx9gu9j', '2018-02-24 10:26:44', '2018-02-24 10:26:44');
INSERT INTO `persistences` VALUES ('691', '1', 'H93NznZ44TPR1kVD0JaOvn9wII4Pibqg', '2018-02-24 10:27:48', '2018-02-24 10:27:48');
INSERT INTO `persistences` VALUES ('692', '1', 't87tYmxYxLjgDhzdWiaHJaE7azkAUUox', '2018-02-24 10:29:17', '2018-02-24 10:29:17');
INSERT INTO `persistences` VALUES ('693', '1', 'vtVHNIrWd0MWLyJ2TqUWzYaq4YOqHTig', '2018-02-24 10:29:56', '2018-02-24 10:29:56');
INSERT INTO `persistences` VALUES ('694', '1', 'gGNpKZIVnncmqoJ1damhrWckBpjEaZy3', '2018-02-24 10:31:44', '2018-02-24 10:31:44');
INSERT INTO `persistences` VALUES ('695', '1', 'MriGXJ5RmiiZi1QIQScbxS5ZCf2mlnyh', '2018-02-24 10:33:36', '2018-02-24 10:33:36');
INSERT INTO `persistences` VALUES ('696', '1', 'dpCqZb0ZrAkBEAjR5mzkTpC1wFa3Yz45', '2018-02-24 10:34:43', '2018-02-24 10:34:43');
INSERT INTO `persistences` VALUES ('697', '1', 'qtuLisRUL0De6gWNQcEGikvGK5cxhcxO', '2018-02-24 10:39:15', '2018-02-24 10:39:15');
INSERT INTO `persistences` VALUES ('698', '1', 'ZCPD17yvEbUk6yq94ZLcQ1zu8uat78Gl', '2018-02-24 10:41:44', '2018-02-24 10:41:44');
INSERT INTO `persistences` VALUES ('699', '1', 'ZeuFATwJSIas7gtCdojtGDnE89g2gY2Y', '2018-02-24 10:44:29', '2018-02-24 10:44:29');
INSERT INTO `persistences` VALUES ('700', '1', 'UPpwfNofnKOZDRbMiMe1KdmU4oWJ5RVq', '2018-02-24 10:46:31', '2018-02-24 10:46:31');
INSERT INTO `persistences` VALUES ('701', '1', 'ClcoH43ONwsiRDUpSUoXd4O5c3XN4w4H', '2018-02-26 03:07:03', '2018-02-26 03:07:03');
INSERT INTO `persistences` VALUES ('702', '1', 'FTDdWrx8aletRp6Hc8j3J8T49J6bWn1p', '2018-02-26 03:07:21', '2018-02-26 03:07:21');
INSERT INTO `persistences` VALUES ('703', '1', 'nBqYeMRN9TjThsbeZcAFpdToHtKQ3AZo', '2018-02-26 03:07:32', '2018-02-26 03:07:32');
INSERT INTO `persistences` VALUES ('704', '1', 'NOhVgyLC0QV43oEWlIxlgnOYq6Q7hNDx', '2018-02-26 03:07:39', '2018-02-26 03:07:39');
INSERT INTO `persistences` VALUES ('705', '1', 'cSqh3s74aMSpZ6IIb7w2huHZlZBCs4xa', '2018-02-26 03:09:38', '2018-02-26 03:09:38');
INSERT INTO `persistences` VALUES ('706', '1', '8QVM1yvSJ2VQilm54sOOdISWEj4BVeKp', '2018-02-26 03:11:30', '2018-02-26 03:11:30');
INSERT INTO `persistences` VALUES ('707', '1', 'uT9KaKF0XjVYCRt6qbt7vysWB6w43KJx', '2018-02-26 03:14:56', '2018-02-26 03:14:56');
INSERT INTO `persistences` VALUES ('708', '1', 'clPO3TTdTZ6t64Tr9sKxDir5FOskcgky', '2018-02-26 03:15:20', '2018-02-26 03:15:20');
INSERT INTO `persistences` VALUES ('709', '1', 'TT3SG03CEFVx0TsIzo6KekVV2UtnDzO7', '2018-02-26 03:16:21', '2018-02-26 03:16:21');
INSERT INTO `persistences` VALUES ('710', '1', 'BrUJSsK2rHKl8Zs4DjbSQSkbMrkSXhzp', '2018-02-26 03:25:05', '2018-02-26 03:25:05');
INSERT INTO `persistences` VALUES ('711', '1', 'jm4qWVIrEBpwYUEHW4y6Y4fyec0z55qw', '2018-02-26 03:29:53', '2018-02-26 03:29:53');
INSERT INTO `persistences` VALUES ('712', '1', 'OMHs1aW2HV0BF40GS2brtHjMFIHXVVM9', '2018-02-26 03:43:57', '2018-02-26 03:43:57');
INSERT INTO `persistences` VALUES ('713', '1', 'TSCbZ7Goxu2usqhcGqfK4qAgCYFSHD3z', '2018-02-26 03:45:36', '2018-02-26 03:45:36');
INSERT INTO `persistences` VALUES ('714', '1', 'es1WXXAsjatiVW8oYa7nF0tPC6mQPXJu', '2018-02-26 05:33:15', '2018-02-26 05:33:15');
INSERT INTO `persistences` VALUES ('715', '1', 'fm2qiFl8azcLPiZTffzc6IsyKvKwDGNP', '2018-02-26 05:34:18', '2018-02-26 05:34:18');
INSERT INTO `persistences` VALUES ('716', '1', 'cMXGAr42qiqGTxBBtRV3S8utZJSOgItt', '2018-02-26 05:35:08', '2018-02-26 05:35:08');
INSERT INTO `persistences` VALUES ('717', '1', 'jWvEuCk4SwHoYHvdmMEMUYV2U5T8c8vc', '2018-02-26 05:35:50', '2018-02-26 05:35:50');
INSERT INTO `persistences` VALUES ('718', '1', '6dPLtpmfDh2GlrJpb8kRS3tHv2Lg5J38', '2018-02-26 05:40:17', '2018-02-26 05:40:17');
INSERT INTO `persistences` VALUES ('719', '1', 'lE1cIoV5EHfllCPndndD1ARE0F5emtCY', '2018-02-26 05:41:40', '2018-02-26 05:41:40');
INSERT INTO `persistences` VALUES ('720', '1', 'cgOxMHYKn1DzUBs0evXDdWqIF4ILMNBz', '2018-02-26 05:43:50', '2018-02-26 05:43:50');
INSERT INTO `persistences` VALUES ('721', '1', 'ft13UMHfWzWxzDgZObm74JjjbvVag5MY', '2018-02-26 05:44:56', '2018-02-26 05:44:56');
INSERT INTO `persistences` VALUES ('722', '1', '5EGIbH7sJ6l2HpeKKdjNOOkxPu1NImG4', '2018-02-26 05:48:12', '2018-02-26 05:48:12');
INSERT INTO `persistences` VALUES ('723', '1', 'pGTPBoiUk8Ai61mmWDnLCac1Cx5WI7SC', '2018-02-26 05:50:24', '2018-02-26 05:50:24');
INSERT INTO `persistences` VALUES ('724', '1', 'LXh3offdppMaURExLeTICUlgvPzU2h41', '2018-02-26 05:58:58', '2018-02-26 05:58:58');
INSERT INTO `persistences` VALUES ('725', '1', 'QMZrOxIGL4hYvuiCttUDUdU9zGADtNZE', '2018-02-26 06:01:09', '2018-02-26 06:01:09');
INSERT INTO `persistences` VALUES ('726', '1', 'bCvjzEIGp0WFQkE5jN7Jak868gJWPmmB', '2018-02-26 06:06:17', '2018-02-26 06:06:17');
INSERT INTO `persistences` VALUES ('727', '1', 'pld9SsgE8MO9QHPmITjQzi7kHCiRxfPm', '2018-02-26 06:07:17', '2018-02-26 06:07:17');
INSERT INTO `persistences` VALUES ('728', '1', '3th3ypAksgCYAt5qKx1YiHWDgQQb1atp', '2018-02-26 06:14:55', '2018-02-26 06:14:55');
INSERT INTO `persistences` VALUES ('729', '1', 'DGKVnth3g85HWP2jSXAGic1sIt8JDf0F', '2018-02-26 06:16:44', '2018-02-26 06:16:44');
INSERT INTO `persistences` VALUES ('730', '1', 'RjCkj6A4Nscc1gOXyWdIEIlBtMXFY5YA', '2018-02-26 06:25:27', '2018-02-26 06:25:27');
INSERT INTO `persistences` VALUES ('731', '1', 'aiKo735NlaFetVWFzQzF6ekyawEL3r61', '2018-02-26 06:27:18', '2018-02-26 06:27:18');
INSERT INTO `persistences` VALUES ('732', '1', 'KI4dBmt5eQ7ZjbTQ1yoh93KdNnXMW49x', '2018-02-26 06:39:14', '2018-02-26 06:39:14');
INSERT INTO `persistences` VALUES ('733', '1', 'lo58yDNsbwqDLgnveYh0X96m4aGjSxIJ', '2018-02-26 06:49:00', '2018-02-26 06:49:00');
INSERT INTO `persistences` VALUES ('734', '1', 'PG52hmtD86Q9tDCMi0jdkzJ1TUxCvIGu', '2018-02-26 06:49:25', '2018-02-26 06:49:25');
INSERT INTO `persistences` VALUES ('735', '1', '4Qv4LpS7VVDBFB3itfFfpZEVxBk1F7Pm', '2018-02-26 06:50:40', '2018-02-26 06:50:40');
INSERT INTO `persistences` VALUES ('736', '1', '1v0zwF5BlUx0frlE8ISnJZzngzf0WYAK', '2018-02-26 06:55:42', '2018-02-26 06:55:42');
INSERT INTO `persistences` VALUES ('737', '1', 'TmvHTA4U3aOJHsULZTluxGODASapF6I5', '2018-02-26 06:59:44', '2018-02-26 06:59:44');
INSERT INTO `persistences` VALUES ('738', '1', '7urKlJiGpszSn0yO1LtAXAjC46BHh3GY', '2018-02-26 07:03:19', '2018-02-26 07:03:19');
INSERT INTO `persistences` VALUES ('739', '1', 'ldRZ0GzANwD1FqnDUQ3sLRb6QVOrcx9x', '2018-02-26 07:04:47', '2018-02-26 07:04:47');
INSERT INTO `persistences` VALUES ('740', '1', 'BoG2r0eMlf6sVwy5VMBVkByiqQzUxdEb', '2018-02-26 07:07:01', '2018-02-26 07:07:01');
INSERT INTO `persistences` VALUES ('741', '1', 'V6C0BmXCKO57o4UMS3CEXxxSch6dAEMO', '2018-02-26 07:09:28', '2018-02-26 07:09:28');
INSERT INTO `persistences` VALUES ('742', '1', 'FjwDXkC2ArHXcIto2gIfaQTexSQgNAAc', '2018-02-26 07:10:06', '2018-02-26 07:10:06');
INSERT INTO `persistences` VALUES ('743', '1', '0bZnCE6DEJbXRskutYhfn2hn7w3h3IqD', '2018-02-26 07:13:07', '2018-02-26 07:13:07');
INSERT INTO `persistences` VALUES ('744', '1', 'hffzyRSyvJAJvNJqlH5PwV5dIWPYKoR7', '2018-02-26 07:13:36', '2018-02-26 07:13:36');
INSERT INTO `persistences` VALUES ('745', '1', 'h0jYTwCazxJ0mchilTEda4yBWoi8GnjY', '2018-02-26 07:15:22', '2018-02-26 07:15:22');
INSERT INTO `persistences` VALUES ('746', '1', 'PYxGckyx7PoJ3vSaPHPwIfmadQc1E4Hk', '2018-02-26 07:15:43', '2018-02-26 07:15:43');
INSERT INTO `persistences` VALUES ('747', '1', 'C4DcGmpFPRSkD94aACs6aF1yvIQ1F8vn', '2018-02-26 07:18:28', '2018-02-26 07:18:28');
INSERT INTO `persistences` VALUES ('748', '1', 'MAsm8LcviemufL9x5jVXq4fiTSn0rw8o', '2018-02-26 07:19:14', '2018-02-26 07:19:14');
INSERT INTO `persistences` VALUES ('749', '1', '55deGY6SAbBWy0O6UbGJpVgACrr7MC2V', '2018-02-26 07:19:42', '2018-02-26 07:19:42');
INSERT INTO `persistences` VALUES ('750', '1', '3ljlO9Npojukl2iHVIwCrXgt30voaB4V', '2018-02-26 07:19:54', '2018-02-26 07:19:54');
INSERT INTO `persistences` VALUES ('751', '1', 'GpfbimmaX9zutTIlWWWjyoHYReZmEfDi', '2018-02-26 07:22:40', '2018-02-26 07:22:40');
INSERT INTO `persistences` VALUES ('752', '1', 'ktzMtlLS8q9Rq447xJreXUDBkYTrDv4t', '2018-02-26 07:23:16', '2018-02-26 07:23:16');
INSERT INTO `persistences` VALUES ('753', '1', 'QujNAylV5mujKCDoP4ZjNg0e9UMz7c02', '2018-02-26 07:24:48', '2018-02-26 07:24:48');
INSERT INTO `persistences` VALUES ('754', '1', 'bSXISkXL5JRelffZ7LXqJQFGtv8D3JjW', '2018-02-26 07:24:59', '2018-02-26 07:24:59');
INSERT INTO `persistences` VALUES ('755', '1', 'S7dJHtHcAOzNS9GVvQSYwKPDqqx4ynEl', '2018-02-26 07:25:05', '2018-02-26 07:25:05');
INSERT INTO `persistences` VALUES ('756', '1', 'vm8HnCrS11rULgAmbPimJjMknijvECVa', '2018-02-26 07:25:12', '2018-02-26 07:25:12');
INSERT INTO `persistences` VALUES ('757', '1', 'VWc4tCVFEeOBHVE28w8iEIFxCSCU3NqT', '2018-02-26 07:25:42', '2018-02-26 07:25:42');
INSERT INTO `persistences` VALUES ('758', '1', 'Z0kkpbpIQt34wyZeui26Ffo7ynjaDLtd', '2018-02-26 07:27:10', '2018-02-26 07:27:10');
INSERT INTO `persistences` VALUES ('759', '1', 'AuVhnPwob854Pp7hSNF8jYOdvobKj7pH', '2018-02-26 07:27:57', '2018-02-26 07:27:57');
INSERT INTO `persistences` VALUES ('760', '1', 'zZxiU1paiuf0kRALWmiNSJjuUPhGLBc8', '2018-02-26 07:29:38', '2018-02-26 07:29:38');
INSERT INTO `persistences` VALUES ('761', '1', '6P8RAL7US6FiW8wpxUcResALhWJqdV5S', '2018-02-26 07:30:11', '2018-02-26 07:30:11');
INSERT INTO `persistences` VALUES ('762', '1', 'jJjNfOt7715KktEbox2RSSYBRPp3hRjv', '2018-02-26 07:30:15', '2018-02-26 07:30:15');
INSERT INTO `persistences` VALUES ('763', '1', 'n5OBVUj1uhMSSZkoYrnqSlgsfyqw9tWC', '2018-02-26 07:30:32', '2018-02-26 07:30:32');
INSERT INTO `persistences` VALUES ('764', '1', 'tal8PvVdnrxLyEfL86lj3MeamY3yVBX5', '2018-02-26 07:39:21', '2018-02-26 07:39:21');
INSERT INTO `persistences` VALUES ('765', '1', 'VqjHAx3clNxFuYztkZuiu2Vl175PLCzF', '2018-02-26 07:39:24', '2018-02-26 07:39:24');
INSERT INTO `persistences` VALUES ('766', '1', 'Hg1CwnYwM2GaRT6vZy8aI5CViefpqZKc', '2018-02-26 07:40:04', '2018-02-26 07:40:04');
INSERT INTO `persistences` VALUES ('767', '1', 'p13ob72niFvXEwwIe6xgBhQDxghy9qnM', '2018-02-26 07:51:50', '2018-02-26 07:51:50');
INSERT INTO `persistences` VALUES ('768', '1', '1rUUy7aWdI3ZsGdLgfeBdFeHCYZXk2Ac', '2018-02-26 07:53:11', '2018-02-26 07:53:11');
INSERT INTO `persistences` VALUES ('769', '1', 'Z6Dd8tSpFtA1wa0mgsBQ1AlT00OYXhSo', '2018-02-26 07:53:23', '2018-02-26 07:53:23');
INSERT INTO `persistences` VALUES ('770', '1', 'bbJE2E9sucQLH0YOAoK39kbKzpKlK37f', '2018-02-26 07:54:32', '2018-02-26 07:54:32');
INSERT INTO `persistences` VALUES ('771', '1', 'CsA4lqKwZcuWkJ1ckwZW29gi7STAKJnX', '2018-02-26 07:54:35', '2018-02-26 07:54:35');
INSERT INTO `persistences` VALUES ('772', '1', 't1hjNKLfDJBA9rhHr3VZ7kvgm4MKDHwh', '2018-02-26 07:55:39', '2018-02-26 07:55:39');
INSERT INTO `persistences` VALUES ('773', '1', 'ReIXboMvZj3TV3KyjIs6IhemYV4npZfF', '2018-02-26 07:55:48', '2018-02-26 07:55:48');
INSERT INTO `persistences` VALUES ('774', '1', 'VFiV8t7SWRfNOHYM0FLFvSeb45v9gFcm', '2018-02-26 07:55:53', '2018-02-26 07:55:53');
INSERT INTO `persistences` VALUES ('775', '1', 'VHxOUduOCX8dZqy4D5gPC8DWAEVeiXgg', '2018-02-26 07:56:37', '2018-02-26 07:56:37');
INSERT INTO `persistences` VALUES ('776', '1', 'p9aq9fcYPsP4K0i2ntQm01AEkQJMMlBG', '2018-02-26 07:58:16', '2018-02-26 07:58:16');
INSERT INTO `persistences` VALUES ('777', '1', 'SE7O1iPIFsR9xTlJuP56A79iHgr9rXS7', '2018-02-26 07:59:19', '2018-02-26 07:59:19');
INSERT INTO `persistences` VALUES ('778', '1', 'Wcj4SpJvvrPCBrBnvGBMn88ELNgoTqYa', '2018-02-26 07:59:22', '2018-02-26 07:59:22');
INSERT INTO `persistences` VALUES ('779', '1', '7jnUu55yl3E66CPpjPcIDTvXPxbTs59x', '2018-02-26 08:00:31', '2018-02-26 08:00:31');
INSERT INTO `persistences` VALUES ('780', '1', 'AUi5GtKmYD2iAALpvbdQ3fi5fVjwNZid', '2018-02-26 08:01:00', '2018-02-26 08:01:00');
INSERT INTO `persistences` VALUES ('781', '1', 'CrDT2tLBCAnl3TNFNuPew9L3iJ46WwHw', '2018-02-26 08:01:03', '2018-02-26 08:01:03');
INSERT INTO `persistences` VALUES ('782', '1', 'pGCuOTRUgRBZPrkSwSFzzixngjaIg9uc', '2018-02-26 08:01:09', '2018-02-26 08:01:09');
INSERT INTO `persistences` VALUES ('783', '1', 'GPiyhZj5LZsnQGRfNtiRvZMqdOtSyPGH', '2018-02-26 08:07:41', '2018-02-26 08:07:41');
INSERT INTO `persistences` VALUES ('784', '1', 'kq2rjqQQw9R6YJqIkwSP83YhA0vFhPnW', '2018-02-26 08:07:59', '2018-02-26 08:07:59');
INSERT INTO `persistences` VALUES ('785', '1', 'dCqjJFLP3Pr68w0adiK6ekDUBkzgmS9G', '2018-02-26 08:10:37', '2018-02-26 08:10:37');
INSERT INTO `persistences` VALUES ('786', '1', 'BUf2chsPODlPXZRe1nDsJhMcD0e5NUhp', '2018-02-26 08:11:51', '2018-02-26 08:11:51');
INSERT INTO `persistences` VALUES ('787', '1', 'psPQNNzTSezKJX7AVQxl6OfDfDyPRD0C', '2018-02-26 08:13:38', '2018-02-26 08:13:38');
INSERT INTO `persistences` VALUES ('788', '1', 'oE60h3ElzCmuyqHjJ5L4RzN2DSywzsOl', '2018-02-26 08:14:18', '2018-02-26 08:14:18');
INSERT INTO `persistences` VALUES ('789', '1', 'pKjivf3QKJNpTZGmoMGFiC4GI4naiGUX', '2018-02-26 08:15:38', '2018-02-26 08:15:38');
INSERT INTO `persistences` VALUES ('790', '1', 'XTAyRqiH7cQlFL9TvTYdx6gBQMfCpoqT', '2018-02-26 08:15:59', '2018-02-26 08:15:59');
INSERT INTO `persistences` VALUES ('791', '1', 'QOrsMPADdP9lwmYkLkPVMSjwvOEqq7NB', '2018-02-26 08:17:09', '2018-02-26 08:17:09');
INSERT INTO `persistences` VALUES ('792', '1', '6h5CruxQGXexDqIyylZLxnPuFp8PeeW4', '2018-02-26 08:19:08', '2018-02-26 08:19:08');
INSERT INTO `persistences` VALUES ('793', '1', 'FUzLFUK0g0rjeyAyWJ3CVKuFjhs9G0OL', '2018-02-26 08:20:23', '2018-02-26 08:20:23');
INSERT INTO `persistences` VALUES ('794', '1', 'c9UgrnUIWNwxReUoRSemoQ7n3zTlrc0Z', '2018-02-26 08:21:27', '2018-02-26 08:21:27');
INSERT INTO `persistences` VALUES ('795', '1', 'Lfqw9MmMeEowEigS5mfWKb6TpZvWEta5', '2018-02-26 08:26:10', '2018-02-26 08:26:10');
INSERT INTO `persistences` VALUES ('796', '1', 'WEM0xIGnDKNC7dX3LoUf5mqhEPstt5Cv', '2018-02-26 08:26:46', '2018-02-26 08:26:46');
INSERT INTO `persistences` VALUES ('797', '1', '5J4CMw9KmbSMUiyYDwtlKEecmN8GKvYh', '2018-02-26 08:27:53', '2018-02-26 08:27:53');
INSERT INTO `persistences` VALUES ('798', '1', 'r7yfGyhHUbghSRhdkclTmre3dGi68V49', '2018-02-26 08:28:46', '2018-02-26 08:28:46');
INSERT INTO `persistences` VALUES ('799', '1', 'ZIoP0m6g8PzmmzpYBfWfo7oCX7ycP16t', '2018-02-26 08:29:05', '2018-02-26 08:29:05');
INSERT INTO `persistences` VALUES ('800', '1', 'dxGHpedSKIVlIIiI9HCZ9LlRBc7oLqZi', '2018-02-26 08:29:11', '2018-02-26 08:29:11');
INSERT INTO `persistences` VALUES ('801', '1', 'cNCsFjD50UI0jJ94Y5PSLIcJeIVqautL', '2018-02-26 08:29:14', '2018-02-26 08:29:14');
INSERT INTO `persistences` VALUES ('802', '1', 'bJ5voF2lMeZkYpuQnAapESWxRpOtNKrw', '2018-02-26 08:29:32', '2018-02-26 08:29:32');
INSERT INTO `persistences` VALUES ('803', '1', '2Hn9qv5ELyxp0ryhxHkftk7K54I5gs3Q', '2018-02-26 08:30:00', '2018-02-26 08:30:00');
INSERT INTO `persistences` VALUES ('804', '1', '1drklTfmgx9fZoeEcpKlHYjFg8r9O2Vt', '2018-02-26 08:30:58', '2018-02-26 08:30:58');
INSERT INTO `persistences` VALUES ('805', '1', 'jmGhUe33CnHUYmTokgUBKImnFCstyKZc', '2018-02-26 08:32:49', '2018-02-26 08:32:49');
INSERT INTO `persistences` VALUES ('806', '1', '4MaLOCplJ3FUf5XPCoOCb7VSpJG30O5W', '2018-02-26 08:35:40', '2018-02-26 08:35:40');
INSERT INTO `persistences` VALUES ('807', '1', '2G25ViYAMbAVg5v16tcAFLSN9l1Ir33J', '2018-02-26 08:35:51', '2018-02-26 08:35:51');
INSERT INTO `persistences` VALUES ('808', '1', 'cSdsw7n8aTneD3mCkuSwsM2adccgMLTh', '2018-02-26 08:36:16', '2018-02-26 08:36:16');
INSERT INTO `persistences` VALUES ('809', '1', 'OLY9oW8Fj2F7ZrphBklCKytE09T3HtgY', '2018-02-26 08:36:18', '2018-02-26 08:36:18');
INSERT INTO `persistences` VALUES ('810', '1', 'gwoVEInoGHh7ULmGdjObKpv16CkdZ5Ij', '2018-02-26 08:40:58', '2018-02-26 08:40:58');
INSERT INTO `persistences` VALUES ('811', '1', 'kuJn7wodanc9MXC8neyIRZ9vIXXe1jXR', '2018-02-26 08:41:07', '2018-02-26 08:41:07');
INSERT INTO `persistences` VALUES ('812', '1', 'B06Q0Yq94ivNjpu26klZMrsVOLFqDeTp', '2018-02-26 08:41:11', '2018-02-26 08:41:11');
INSERT INTO `persistences` VALUES ('813', '1', 'p0sAAS2D37wmB47FZFpaFjOsztgsZLDJ', '2018-02-26 08:45:26', '2018-02-26 08:45:26');
INSERT INTO `persistences` VALUES ('814', '1', 'luHkwGU26McxqHQ2fP1q0alsZIU3bLf0', '2018-02-26 08:47:33', '2018-02-26 08:47:33');
INSERT INTO `persistences` VALUES ('815', '1', '9K3kutQL5brozhKBIiRDocQ3WPWRWBdq', '2018-02-26 08:50:13', '2018-02-26 08:50:13');
INSERT INTO `persistences` VALUES ('816', '1', 'H6tNahayEuGik5OGA2tV1geCZQXQT0vt', '2018-02-26 08:52:05', '2018-02-26 08:52:05');
INSERT INTO `persistences` VALUES ('817', '1', 'NJSnleBRAX9Y0puJCPgRmbm9lcxGgM2H', '2018-02-26 09:00:51', '2018-02-26 09:00:51');
INSERT INTO `persistences` VALUES ('818', '1', 'h7NEdZyFIbEjHPL2ZwsBMAXYkxl8al0h', '2018-02-26 09:26:05', '2018-02-26 09:26:05');
INSERT INTO `persistences` VALUES ('819', '1', 'fVqxLBk06rxRibnvZL5I1j1vvw46pln6', '2018-02-26 09:48:22', '2018-02-26 09:48:22');
INSERT INTO `persistences` VALUES ('820', '1', '76FP0SKZPVHkUX9ahIb8Fn49bf1PWTGi', '2018-02-26 09:48:29', '2018-02-26 09:48:29');
INSERT INTO `persistences` VALUES ('821', '1', '4hy8RQ0hLDPhMaydHMMe7TZzLTA9pQvj', '2018-02-26 09:52:19', '2018-02-26 09:52:19');
INSERT INTO `persistences` VALUES ('822', '1', 'KqqLVqCKEqjLc5TITaP0bwv9wtQiFu1A', '2018-02-26 09:54:55', '2018-02-26 09:54:55');
INSERT INTO `persistences` VALUES ('823', '1', 'vftvhfPrPl697ZYLiC4Libsm66oUFTIs', '2018-02-26 09:55:27', '2018-02-26 09:55:27');
INSERT INTO `persistences` VALUES ('824', '1', 'qSOyOxCXFosBPiQaT0ZtJB7yjjNLpEBS', '2018-02-26 09:56:11', '2018-02-26 09:56:11');
INSERT INTO `persistences` VALUES ('825', '1', 'b5G33U92OJhTurRrqsfirbEfECGyzYWQ', '2018-02-26 09:57:13', '2018-02-26 09:57:13');
INSERT INTO `persistences` VALUES ('826', '1', 'VWMmNgVZZ28sCUdGOatirqSnrpicKMa6', '2018-02-26 09:58:04', '2018-02-26 09:58:04');
INSERT INTO `persistences` VALUES ('827', '1', 'nVf6H0TYUgzoivz0Y9ci5xSWWI9OI0H6', '2018-02-26 10:00:00', '2018-02-26 10:00:00');
INSERT INTO `persistences` VALUES ('828', '1', 'DkjL7uOWGNcUQvKZKHxT9turbXjXnDSg', '2018-02-26 10:00:28', '2018-02-26 10:00:28');
INSERT INTO `persistences` VALUES ('829', '1', '7FJRp2cQRhH9wnmlYwQG1wlEvUHmiamm', '2018-02-26 10:05:12', '2018-02-26 10:05:12');
INSERT INTO `persistences` VALUES ('830', '1', 'AwXrEBy2LsQdkijPRpAb026N7u080vI1', '2018-02-26 10:06:08', '2018-02-26 10:06:08');
INSERT INTO `persistences` VALUES ('831', '1', 'OCsLhrooiYAPdY8eB93XbpYm4qWS0rYV', '2018-02-26 10:10:45', '2018-02-26 10:10:45');
INSERT INTO `persistences` VALUES ('832', '1', 'yezBfMJ56nkoRId52TO1qHhxzjS92HTx', '2018-02-26 10:11:54', '2018-02-26 10:11:54');
INSERT INTO `persistences` VALUES ('833', '1', 'HwGHw5Akqh34gBGTSlzXlm0DwpDDP5Tx', '2018-02-26 10:14:40', '2018-02-26 10:14:40');
INSERT INTO `persistences` VALUES ('834', '1', 'qnylQC0ZWLYWqbAXpnKw1gBd8uyKlwSm', '2018-02-26 10:16:25', '2018-02-26 10:16:25');
INSERT INTO `persistences` VALUES ('835', '1', 'I346Yolz7Lb1vAGqXirHxjVbFE4712Kt', '2018-02-26 10:19:01', '2018-02-26 10:19:01');
INSERT INTO `persistences` VALUES ('836', '1', 'Cv7Fl00ntNTvERwiLnEOQHixN27wqI48', '2018-02-26 10:20:13', '2018-02-26 10:20:13');
INSERT INTO `persistences` VALUES ('837', '1', 'q2WwJ1Z1t7Hl9lDh3jSk479lypINPEw1', '2018-02-26 10:21:07', '2018-02-26 10:21:07');
INSERT INTO `persistences` VALUES ('838', '1', 'uALeUGcc2Q8FD40A7uXjzWrWvfPO9szW', '2018-02-26 10:24:25', '2018-02-26 10:24:25');
INSERT INTO `persistences` VALUES ('839', '1', 'BwWxZJAi7ycyu7KiJ2lbZsghPI0dGCpw', '2018-02-26 10:24:30', '2018-02-26 10:24:30');
INSERT INTO `persistences` VALUES ('840', '1', 'SLkVMZ1ywaPyPImxw9Rv3i3eyqDC27iD', '2018-02-26 10:25:40', '2018-02-26 10:25:40');
INSERT INTO `persistences` VALUES ('841', '1', 'zu89rMRe9FmJrwEF8dWarG2DsMJzxkEh', '2018-02-26 10:25:42', '2018-02-26 10:25:42');
INSERT INTO `persistences` VALUES ('842', '1', 'xbIvaCrH99fvKicJSPDXoImhvmUsc6Ww', '2018-02-26 10:28:22', '2018-02-26 10:28:22');
INSERT INTO `persistences` VALUES ('843', '1', 'PccHllgXY8odwBhFMbteu0ZLIhgxlfGW', '2018-02-26 10:36:06', '2018-02-26 10:36:06');
INSERT INTO `persistences` VALUES ('844', '1', 'aQJhdXyrj4ewpVpNfvSlkiSv2qaeqMR3', '2018-02-26 10:39:27', '2018-02-26 10:39:27');
INSERT INTO `persistences` VALUES ('845', '1', 'O90Zg2YW1x2MkAIOmsMg0PvbG1dzs5gP', '2018-02-26 10:40:13', '2018-02-26 10:40:13');
INSERT INTO `persistences` VALUES ('846', '1', 'SeIuG7qP9c9WxlwTU1bV8BrGa4vkPXQf', '2018-02-26 10:40:48', '2018-02-26 10:40:48');
INSERT INTO `persistences` VALUES ('847', '1', 'Zlb2Unt5OuQemhYQumThkWEK3dW643Fr', '2018-02-26 10:41:47', '2018-02-26 10:41:47');
INSERT INTO `persistences` VALUES ('848', '1', 'vbLIGFSGEdi5Ln5O4e8VepNdX5wpftSX', '2018-02-26 10:42:44', '2018-02-26 10:42:44');
INSERT INTO `persistences` VALUES ('849', '1', 'TL2ihrskLA51cJK3hU3rkbLEmKWvATR8', '2018-02-26 10:42:46', '2018-02-26 10:42:46');
INSERT INTO `persistences` VALUES ('850', '1', 'm5nNzc7ukyNGEjTFs5KB6HeWw3878yPh', '2018-02-26 10:43:36', '2018-02-26 10:43:36');
INSERT INTO `persistences` VALUES ('851', '1', 'WulucyKgYXPl6Q0yZkc6SYq37IhrKet9', '2018-03-12 01:33:52', '2018-03-12 01:33:52');
INSERT INTO `persistences` VALUES ('852', '1', 'JmJNNNEcBquMDuAV7n2PzwXV611vOFGg', '2018-03-12 01:36:25', '2018-03-12 01:36:25');
INSERT INTO `persistences` VALUES ('853', '1', 'upFuDdBo3vpbh43qpJX5bchMzubDnGtY', '2018-03-12 01:38:34', '2018-03-12 01:38:34');
INSERT INTO `persistences` VALUES ('854', '1', 'YcJJDDNWh52WJMnelZp9zszc4FN50Jni', '2018-03-12 01:38:35', '2018-03-12 01:38:35');
INSERT INTO `persistences` VALUES ('855', '1', 'HK1NqRr1HD2IQL9SjDvl0UWmCUOls32C', '2018-03-12 01:38:38', '2018-03-12 01:38:38');
INSERT INTO `persistences` VALUES ('856', '1', 'y9qM9VBTHew37kPkF3LoQnhWHy5PGXVk', '2018-03-12 01:38:39', '2018-03-12 01:38:39');
INSERT INTO `persistences` VALUES ('857', '1', 'RBnXiCi8rGM1tRh94NfZWECtwpmA9r3e', '2018-03-12 01:53:06', '2018-03-12 01:53:06');
INSERT INTO `persistences` VALUES ('858', '1', 'MHaXNCQbnraqkOt9iBZKrs0kqL05WQIJ', '2018-03-12 01:53:51', '2018-03-12 01:53:51');
INSERT INTO `persistences` VALUES ('859', '1', 'vs3v30o6K1fxLwpVCqJSXU3wVMLtJgN9', '2018-03-12 01:53:52', '2018-03-12 01:53:52');
INSERT INTO `persistences` VALUES ('860', '1', 'xng3K1O8agoDNNf5n8LNgFAe55exjcVv', '2018-03-12 01:54:31', '2018-03-12 01:54:31');
INSERT INTO `persistences` VALUES ('861', '1', 'CuC6zbKqN6ClcBYPzcNUX9hrO7kSkNdt', '2018-03-12 02:02:51', '2018-03-12 02:02:51');
INSERT INTO `persistences` VALUES ('862', '1', 'roZVsU6NJl9rBpEZcCeuGc1bPZzzJpkd', '2018-03-12 02:05:02', '2018-03-12 02:05:02');
INSERT INTO `persistences` VALUES ('863', '1', 'DwNoeLZnnnrsxrAhfIYbtsOf6y5UbSEn', '2018-03-12 02:07:22', '2018-03-12 02:07:22');
INSERT INTO `persistences` VALUES ('864', '1', 'Po4xCygwAQf40EQGp8RBQVaMYZlsQYiL', '2018-03-12 02:10:45', '2018-03-12 02:10:45');
INSERT INTO `persistences` VALUES ('865', '1', 'QKJwlng1XBvzDzaSsWIH4jIhAqQOjhYM', '2018-03-12 02:27:41', '2018-03-12 02:27:41');
INSERT INTO `persistences` VALUES ('866', '1', 'EiATIajIum4r1DHtwEg1mkuUVbDnjmnl', '2018-03-12 02:28:30', '2018-03-12 02:28:30');
INSERT INTO `persistences` VALUES ('867', '1', 'jjDqmEsrh5RbhopnG7W5k2m0gnI9UjTA', '2018-03-12 02:28:31', '2018-03-12 02:28:31');
INSERT INTO `persistences` VALUES ('868', '1', '4uLRkT6NZcybCxVa8rLtnz6LzpBxfnBR', '2018-03-12 02:32:19', '2018-03-12 02:32:19');
INSERT INTO `persistences` VALUES ('869', '1', '55Vi39p8A3RvqfKwQwUB3Xsvk3e8QFHe', '2018-03-12 02:32:26', '2018-03-12 02:32:26');
INSERT INTO `persistences` VALUES ('870', '1', '4bkPQfkHxPqsgs0uKJNh9vayk2mdYt9P', '2018-03-12 02:32:27', '2018-03-12 02:32:27');
INSERT INTO `persistences` VALUES ('871', '1', 'nek7kvE6Icc4rxGYu0OXxZzOJcyadLdT', '2018-03-12 02:35:34', '2018-03-12 02:35:34');
INSERT INTO `persistences` VALUES ('872', '1', 'tavjkXhXrNhdjKOp0yW4BUhtfnco8AtQ', '2018-03-12 02:45:11', '2018-03-12 02:45:11');
INSERT INTO `persistences` VALUES ('873', '1', 'daJAh6BRfS9Vvf6mpC4EWcKigCsjZCpC', '2018-03-12 02:45:18', '2018-03-12 02:45:18');
INSERT INTO `persistences` VALUES ('874', '1', '5K6XqTVFaCi4hAdI8KTsBkaNk9vdTw7f', '2018-03-12 02:45:25', '2018-03-12 02:45:25');
INSERT INTO `persistences` VALUES ('875', '1', 'apdIATmy5OeksKGMazkWOCYKbbRzSdVK', '2018-03-12 02:45:26', '2018-03-12 02:45:26');
INSERT INTO `persistences` VALUES ('876', '1', 'D3oqQby8tP8ap7xriIzSDsoe3YpOuOEv', '2018-03-12 02:50:28', '2018-03-12 02:50:28');
INSERT INTO `persistences` VALUES ('877', '1', 'HgoQ7VeqwZ4WjlvASj1vWEgMdRspzLos', '2018-03-12 02:50:35', '2018-03-12 02:50:35');
INSERT INTO `persistences` VALUES ('878', '1', 'vB3OrcXJSZB4vbBdXWgBtjkI9aqvBsFa', '2018-03-12 02:50:35', '2018-03-12 02:50:35');
INSERT INTO `persistences` VALUES ('879', '1', 'XO7fgPR6CNxOeMMd56c6WaWHsf0v7Pzv', '2018-03-12 02:51:07', '2018-03-12 02:51:07');
INSERT INTO `persistences` VALUES ('880', '1', 'bOvoqnHhR97uBFaIcVhEozTSfkpis2Ej', '2018-03-12 02:51:07', '2018-03-12 02:51:07');
INSERT INTO `persistences` VALUES ('881', '1', 'ugHeXmb02O4Jd1mjJyeBriTO9i07Cofv', '2018-03-12 02:51:45', '2018-03-12 02:51:45');
INSERT INTO `persistences` VALUES ('882', '1', 'w46uReVG6NqdVrLPRYMG83q8HibgDJ9J', '2018-03-12 02:51:45', '2018-03-12 02:51:45');
INSERT INTO `persistences` VALUES ('883', '1', '71zclv1uc6cwxVlKa1dhJ5hw64rB2ot6', '2018-03-12 02:55:03', '2018-03-12 02:55:03');
INSERT INTO `persistences` VALUES ('884', '1', 'SfjStMNYvlkQ4H431tiNTtWWY80dwHPq', '2018-03-12 02:55:04', '2018-03-12 02:55:04');
INSERT INTO `persistences` VALUES ('885', '1', 'kfZRcp2pQ0bAyXIYDSSXT8IYl3Tvltzz', '2018-03-12 02:56:37', '2018-03-12 02:56:37');
INSERT INTO `persistences` VALUES ('886', '1', 'nyaslxXFGRz3eqqdiXvCKJert6JD1imE', '2018-03-12 02:56:37', '2018-03-12 02:56:37');
INSERT INTO `persistences` VALUES ('887', '1', 'RrqonPXkQ7D2VWr0KY2hkztjmiYRnnzy', '2018-03-12 02:57:06', '2018-03-12 02:57:06');
INSERT INTO `persistences` VALUES ('888', '1', 'NkEgLjKRjDLrY1lnnVf9VAEC13o9G0TT', '2018-03-12 02:57:07', '2018-03-12 02:57:07');
INSERT INTO `persistences` VALUES ('889', '1', 'Eg1jTdGsTkp3ARaPz9d2onuuMgVr6Sg1', '2018-03-12 02:58:09', '2018-03-12 02:58:09');
INSERT INTO `persistences` VALUES ('890', '1', 'yr4SB9AHWhX3mw7R1dIRDuJ6m7X3uNzQ', '2018-03-12 02:58:09', '2018-03-12 02:58:09');
INSERT INTO `persistences` VALUES ('891', '1', 'xETXaqw3E0hRslBT6PGuZETpcsZkStQi', '2018-03-12 02:59:00', '2018-03-12 02:59:00');
INSERT INTO `persistences` VALUES ('892', '1', 'pOvGgP0lyyOYPrgM2mXzJH306G8YuFbE', '2018-03-12 02:59:00', '2018-03-12 02:59:00');
INSERT INTO `persistences` VALUES ('893', '1', 'FZko3xSmpv9xPPbAVx0d5f1Tl6RXcf0j', '2018-03-12 03:09:39', '2018-03-12 03:09:39');
INSERT INTO `persistences` VALUES ('894', '1', 'Ktm5PY3qeGwebTUhOkULIGuyNgs1OAAl', '2018-03-12 03:09:39', '2018-03-12 03:09:39');
INSERT INTO `persistences` VALUES ('895', '1', 'jNBfienKuYCFQd2jE4Q35uNxGMJPHa9z', '2018-03-12 03:10:20', '2018-03-12 03:10:20');
INSERT INTO `persistences` VALUES ('896', '1', 'qrqv2hueb5cJpfpP2IG8vMBas8wP6xyp', '2018-03-12 03:10:20', '2018-03-12 03:10:20');
INSERT INTO `persistences` VALUES ('897', '1', 'Sm9kMvaVteVb9GpGRWmxe53dSjZbxvDV', '2018-03-12 03:11:35', '2018-03-12 03:11:35');
INSERT INTO `persistences` VALUES ('898', '1', 'rvanT10gEZcc2T7SPlX9zlGOi78EWlSX', '2018-03-12 03:11:35', '2018-03-12 03:11:35');
INSERT INTO `persistences` VALUES ('899', '1', 'YdcKdRmc39yoj9KvXH7xJAdShcM1GVU1', '2018-03-12 03:12:33', '2018-03-12 03:12:33');
INSERT INTO `persistences` VALUES ('900', '1', 'kKg9bYrPbtQl1f74PHiK8I6OIHFXiAK8', '2018-03-12 03:12:33', '2018-03-12 03:12:33');
INSERT INTO `persistences` VALUES ('901', '1', 'D65wrvoarpdlkvzlbXJf11dhvrHbPCGb', '2018-03-12 03:15:20', '2018-03-12 03:15:20');
INSERT INTO `persistences` VALUES ('902', '1', '4hUh3eB81PMY2bwHMkrsOa34AAAGYTQC', '2018-03-12 03:15:20', '2018-03-12 03:15:20');
INSERT INTO `persistences` VALUES ('903', '1', 'mRacmEzzR2mbUlRRqqrD6qDOR6cP8Q8W', '2018-03-12 03:17:24', '2018-03-12 03:17:24');
INSERT INTO `persistences` VALUES ('904', '1', 'sO2Spztgc6ThbjYQLBiogbXcCEx1b28e', '2018-03-12 03:17:24', '2018-03-12 03:17:24');
INSERT INTO `persistences` VALUES ('905', '1', 'XBcTEyGWw2qMOMTACigRumHKiNXHC5O8', '2018-03-12 03:18:37', '2018-03-12 03:18:37');
INSERT INTO `persistences` VALUES ('906', '1', 'U8sNWoSX16QYRd4aM2Voau8OWN2jTCdR', '2018-03-12 03:18:37', '2018-03-12 03:18:37');
INSERT INTO `persistences` VALUES ('907', '1', 'kr2ZvTMfzNV2kAdeSX837lKjcpORtlwd', '2018-03-12 03:19:34', '2018-03-12 03:19:34');
INSERT INTO `persistences` VALUES ('908', '1', 'bORuu9KvoKYc7kN6krVR1zAP2KneKxsZ', '2018-03-12 03:19:35', '2018-03-12 03:19:35');
INSERT INTO `persistences` VALUES ('909', '1', 'RyyE37TLBKObNAni9EwlN4MUNHrzJdVY', '2018-03-12 03:20:20', '2018-03-12 03:20:20');
INSERT INTO `persistences` VALUES ('910', '1', 'sZAFucte7ap2RpW0k4tTNvusI3NCGJMi', '2018-03-12 03:20:21', '2018-03-12 03:20:21');
INSERT INTO `persistences` VALUES ('911', '1', 'ZIP393wZbL17m9oYawcMdamlsPgJkBj4', '2018-03-12 03:22:43', '2018-03-12 03:22:43');
INSERT INTO `persistences` VALUES ('912', '1', 'Vp0Jj1aEJIiAvCH4bnvErj6dLjfPC1Ap', '2018-03-12 03:22:43', '2018-03-12 03:22:43');
INSERT INTO `persistences` VALUES ('913', '1', 'OIyOKPjbRVVl455LLP0ozsJnoapLfovD', '2018-03-12 03:38:13', '2018-03-12 03:38:13');
INSERT INTO `persistences` VALUES ('914', '1', 'XzOqen98ktMxc1y0xDJ2JtUpvMx6oo0L', '2018-03-12 03:38:13', '2018-03-12 03:38:13');
INSERT INTO `persistences` VALUES ('915', '1', 'xgDDEnOcfcyEcgjFkETFVelmzOY7IJa6', '2018-03-12 03:39:08', '2018-03-12 03:39:08');
INSERT INTO `persistences` VALUES ('916', '1', 'xb9653oFfsN7WXCIrMYU9XCZJwRDMf0o', '2018-03-12 03:39:08', '2018-03-12 03:39:08');
INSERT INTO `persistences` VALUES ('917', '1', 'thYPZVm1cK7omgVY11iVlRnvG7h4uhuK', '2018-03-12 03:41:05', '2018-03-12 03:41:05');
INSERT INTO `persistences` VALUES ('918', '1', 'xRUKKAKK5Bid6r1A5OFDIcAzgxSyGKW1', '2018-03-12 03:41:05', '2018-03-12 03:41:05');
INSERT INTO `persistences` VALUES ('919', '1', 'MBemZiUxpgmEvEA4Er1ikWflXqVT7usP', '2018-03-12 03:42:23', '2018-03-12 03:42:23');
INSERT INTO `persistences` VALUES ('920', '1', 'PSn2HhKVOe8S0GJt1dlb6fsmHGqZ7gG6', '2018-03-12 03:42:23', '2018-03-12 03:42:23');
INSERT INTO `persistences` VALUES ('921', '1', 'x5uBw5J4gSOx0Vq6NFa5tRnafBVtdKyn', '2018-03-12 03:43:48', '2018-03-12 03:43:48');
INSERT INTO `persistences` VALUES ('922', '1', 'ZfXXviXA7OtDYrlHh2dSnYqZs0mY97Iz', '2018-03-12 03:43:48', '2018-03-12 03:43:48');
INSERT INTO `persistences` VALUES ('923', '1', 'A32h6VpJ8VUrZ9tCsVtwTXX42bEqhpyd', '2018-03-12 03:43:57', '2018-03-12 03:43:57');
INSERT INTO `persistences` VALUES ('924', '1', 'h2ivV2HuDF7uJEU0i9uEnrKLJPRkN6Ou', '2018-03-12 03:43:57', '2018-03-12 03:43:57');
INSERT INTO `persistences` VALUES ('925', '1', 'PDagDoJ0ByFdOx6pBG799yRMANLkuxUG', '2018-03-12 03:51:51', '2018-03-12 03:51:51');
INSERT INTO `persistences` VALUES ('926', '1', '0kO91QjiPyrAnuNUTq5X0jKAqiYuAtSw', '2018-03-12 03:51:51', '2018-03-12 03:51:51');
INSERT INTO `persistences` VALUES ('927', '1', 'W2YoUfhTAGF3sP1KqgrIG6bpuJCqdCeq', '2018-03-12 03:52:19', '2018-03-12 03:52:19');
INSERT INTO `persistences` VALUES ('928', '1', 'uJIheCnq6QthHmbU8k67KtwvGylvO7i1', '2018-03-12 03:52:19', '2018-03-12 03:52:19');
INSERT INTO `persistences` VALUES ('929', '1', '7PWYpZRxeqY5wtjYtAu31wsV4wq8SyzN', '2018-03-12 03:52:53', '2018-03-12 03:52:53');
INSERT INTO `persistences` VALUES ('930', '1', 'Evoz4796qtJlGJ8iahmihHE7YIs1ZCBx', '2018-03-12 03:52:53', '2018-03-12 03:52:53');
INSERT INTO `persistences` VALUES ('931', '1', 'JCdF7oNHKJadqDyPzPPDfWpmyrIQGyiF', '2018-03-12 03:54:38', '2018-03-12 03:54:38');
INSERT INTO `persistences` VALUES ('932', '1', 'QclsqgN83AXcQv5jiimO0upwvXVc93Os', '2018-03-12 03:54:39', '2018-03-12 03:54:39');
INSERT INTO `persistences` VALUES ('933', '1', 'Ahk6VwZ83cDrceFhzGY7XPQJ9aapOcg0', '2018-03-12 03:58:24', '2018-03-12 03:58:24');
INSERT INTO `persistences` VALUES ('934', '1', '4rRa6tOGj9kbHD0PKFeweHmYnhoswcYT', '2018-03-12 03:58:24', '2018-03-12 03:58:24');
INSERT INTO `persistences` VALUES ('935', '1', 'ikr12ZVunqW5uvp65JyOOOaf6eDMZMz3', '2018-03-12 05:30:17', '2018-03-12 05:30:17');
INSERT INTO `persistences` VALUES ('936', '1', 'A6LqdhOauW2BfAcQDFqT9Kxj5SqwaPW0', '2018-03-12 05:30:17', '2018-03-12 05:30:17');
INSERT INTO `persistences` VALUES ('937', '1', 'z23xmQeva7cMiu4LYEj9s5NhxbB8KNjV', '2018-03-12 05:31:16', '2018-03-12 05:31:16');
INSERT INTO `persistences` VALUES ('938', '1', 'fkAq9jFLXjs5mkbjqL01DzZU1ZsqrUvv', '2018-03-12 05:31:16', '2018-03-12 05:31:16');
INSERT INTO `persistences` VALUES ('939', '1', 'qaJyYkYAiXIFoYYP8m1J44qr3CCW5oMc', '2018-03-12 05:34:01', '2018-03-12 05:34:01');
INSERT INTO `persistences` VALUES ('940', '1', '0kiQwnmU9mxgNvMWOBdu19D0TMO6G70i', '2018-03-12 05:34:01', '2018-03-12 05:34:01');
INSERT INTO `persistences` VALUES ('941', '1', 'zl5c34mQAvVHvarSgjWWGc3HFCFFhVMo', '2018-03-12 05:37:41', '2018-03-12 05:37:41');
INSERT INTO `persistences` VALUES ('942', '1', 'IoAFQ1lbhD2p5OZjbjfFD7uin2F2K30U', '2018-03-12 05:37:41', '2018-03-12 05:37:41');
INSERT INTO `persistences` VALUES ('943', '1', 'W77TgrYObvHosIPeuurO7wTSanlwobqw', '2018-03-12 05:38:32', '2018-03-12 05:38:32');
INSERT INTO `persistences` VALUES ('944', '1', 'CiO2QkQOpaDGsh09TxHCOytiqecn0RkS', '2018-03-12 05:38:33', '2018-03-12 05:38:33');
INSERT INTO `persistences` VALUES ('945', '1', 'QLWt66onSzFGZbIaTlHResMthGMFMDKO', '2018-03-12 05:39:05', '2018-03-12 05:39:05');
INSERT INTO `persistences` VALUES ('946', '1', 'p2A20uw1MCdXATZitdEgfcB22y2GBThS', '2018-03-12 05:39:05', '2018-03-12 05:39:05');
INSERT INTO `persistences` VALUES ('947', '1', '8Id0tvgbyClPBXCVzSRnrYjTfVte4oUl', '2018-03-12 05:41:42', '2018-03-12 05:41:42');
INSERT INTO `persistences` VALUES ('948', '1', '03UHreCm6e5T5OARmUzjXs4agQYSBSVD', '2018-03-12 05:41:42', '2018-03-12 05:41:42');
INSERT INTO `persistences` VALUES ('949', '1', '50H2Enmk5vW7NOvHta4Vnn0oc8nxOfau', '2018-03-12 05:42:59', '2018-03-12 05:42:59');
INSERT INTO `persistences` VALUES ('950', '1', 'PFutInJfgCklWbf340k76cx9b4BsNqcp', '2018-03-12 05:42:59', '2018-03-12 05:42:59');
INSERT INTO `persistences` VALUES ('951', '1', 'eoG7lZG823o8OQ7tAmMFYGnkvLcVhdez', '2018-03-12 05:43:50', '2018-03-12 05:43:50');
INSERT INTO `persistences` VALUES ('952', '1', '9nNsR1oceUy2YoFz71WryOvcHem0lKyh', '2018-03-12 05:43:50', '2018-03-12 05:43:50');
INSERT INTO `persistences` VALUES ('953', '1', 'eUe3DMllXgUUx8YX3L9rVFGG17S3WCDM', '2018-03-12 05:47:03', '2018-03-12 05:47:03');
INSERT INTO `persistences` VALUES ('954', '1', 'noNfXvEnSiz4E6ijAFbUIG6c0Jw3kwld', '2018-03-12 05:47:03', '2018-03-12 05:47:03');
INSERT INTO `persistences` VALUES ('955', '1', 'oL1eNDL663zAWewJe2hBKuR5afc5vUAD', '2018-03-12 05:49:56', '2018-03-12 05:49:56');
INSERT INTO `persistences` VALUES ('956', '1', 'Cq6R7vqbDoh63QqSiXSK1o5mv1QPlJb5', '2018-03-12 05:49:57', '2018-03-12 05:49:57');
INSERT INTO `persistences` VALUES ('957', '1', 'bj58xMgFsg6W1TI8n8M5ysP35SYyx6Ho', '2018-03-12 05:50:30', '2018-03-12 05:50:30');
INSERT INTO `persistences` VALUES ('958', '1', 'tUilwL6dXxiW2qnai6AAxUPNKoUoAcBY', '2018-03-12 05:50:30', '2018-03-12 05:50:30');
INSERT INTO `persistences` VALUES ('959', '1', 'TaxTPxhPf3i42wARFP0TqsZFB4nM8laQ', '2018-03-12 06:07:01', '2018-03-12 06:07:01');
INSERT INTO `persistences` VALUES ('960', '1', 'WGvhy6q2tTtGV7QAL0l26t6DCUlPXxDy', '2018-03-12 06:07:01', '2018-03-12 06:07:01');
INSERT INTO `persistences` VALUES ('961', '1', 'MDsL2XycZQJvk3FhBF2iGstL1YRNP2Tl', '2018-03-12 06:07:37', '2018-03-12 06:07:37');
INSERT INTO `persistences` VALUES ('962', '1', 'EkKEZpPiEsLJyg2GrCjkARVK6Qhn2J19', '2018-03-12 06:07:37', '2018-03-12 06:07:37');
INSERT INTO `persistences` VALUES ('963', '1', 'wyCgooNLESQ31AffMZsqSEA2PodaesAA', '2018-03-12 06:08:19', '2018-03-12 06:08:19');
INSERT INTO `persistences` VALUES ('964', '1', 'hARuNDd0p6JSnZWqUKTCTPb1ho1FuFCl', '2018-03-12 06:08:19', '2018-03-12 06:08:19');
INSERT INTO `persistences` VALUES ('965', '1', 'yIuYA20hDbYbykiKZ7cDBn4hSoBuBhn7', '2018-03-12 06:08:44', '2018-03-12 06:08:44');
INSERT INTO `persistences` VALUES ('966', '1', '76QVPRawqnEZTLIQzBorJVCWwe91WeE4', '2018-03-12 06:08:44', '2018-03-12 06:08:44');
INSERT INTO `persistences` VALUES ('967', '1', '69qmKtS761PFEo6SMFQlG241VqbOnwQO', '2018-03-12 06:13:55', '2018-03-12 06:13:55');
INSERT INTO `persistences` VALUES ('968', '1', 'D6i2p3Q8kYVXgCfvGiDs4HRAj2j0AYaC', '2018-03-12 06:13:55', '2018-03-12 06:13:55');
INSERT INTO `persistences` VALUES ('969', '1', 'KC8PV8ee6a9J7xF9x52aBThRjmturLWG', '2018-03-12 06:15:19', '2018-03-12 06:15:19');
INSERT INTO `persistences` VALUES ('970', '1', '88uxKa3mV3JGUiASbuEvkEwy6ssAgixC', '2018-03-12 06:15:20', '2018-03-12 06:15:20');
INSERT INTO `persistences` VALUES ('971', '1', 'YmQMub4Buui6ukY5MA2NpGPCJBc07eyJ', '2018-03-12 06:15:31', '2018-03-12 06:15:31');
INSERT INTO `persistences` VALUES ('972', '1', 'KGSzPuFCtLVLPHsQxFmxwDFvXw1lgckd', '2018-03-12 06:15:32', '2018-03-12 06:15:32');
INSERT INTO `persistences` VALUES ('973', '1', '27jmsqWL7bHSgVWSu54b4VGw43d7wQNw', '2018-03-12 06:17:00', '2018-03-12 06:17:00');
INSERT INTO `persistences` VALUES ('974', '1', 'sApd3Dx80W7x5bClc396gcMjY2bzo1y1', '2018-03-12 06:17:00', '2018-03-12 06:17:00');
INSERT INTO `persistences` VALUES ('975', '1', 'oH5da0aUxVXAeX25g4NfAzEWANq2rhtz', '2018-03-12 06:17:42', '2018-03-12 06:17:42');
INSERT INTO `persistences` VALUES ('976', '1', 'ySAtfrm1rhYBZqfskzzHVWKc35EOnRwi', '2018-03-12 06:17:42', '2018-03-12 06:17:42');
INSERT INTO `persistences` VALUES ('977', '1', 'onAnYaJw55YcxurEPifrb31iBKkV6EN2', '2018-03-12 06:18:34', '2018-03-12 06:18:34');
INSERT INTO `persistences` VALUES ('978', '1', 'H8pDpLKW6yJopCnRNrqTLhGzWgrwoKec', '2018-03-12 06:18:35', '2018-03-12 06:18:35');
INSERT INTO `persistences` VALUES ('979', '1', 'CDHHcbfgKkjZTHpJYJiMB3FyPKlWwUys', '2018-03-12 06:20:27', '2018-03-12 06:20:27');
INSERT INTO `persistences` VALUES ('980', '1', 'M0AlLYwFB2oZsiYTna4N1hdX1ghg5RxG', '2018-03-12 06:20:27', '2018-03-12 06:20:27');
INSERT INTO `persistences` VALUES ('981', '1', 'bC2UEUxkobAlIQIRDGpGEpzbWC5A1K4K', '2018-03-12 06:21:23', '2018-03-12 06:21:23');
INSERT INTO `persistences` VALUES ('982', '1', 'qchBMXtqSwDknT13Wtv1tDXF30efPBii', '2018-03-12 06:21:23', '2018-03-12 06:21:23');
INSERT INTO `persistences` VALUES ('983', '1', 'QFmL1WRytNPKHTZbDePb0017yrNIM3SC', '2018-03-12 06:22:34', '2018-03-12 06:22:34');
INSERT INTO `persistences` VALUES ('984', '1', 'PXEocxCtnUIVZkIPOla4XeVik9XkGZf8', '2018-03-12 06:22:34', '2018-03-12 06:22:34');
INSERT INTO `persistences` VALUES ('985', '1', 'Ci81xlDk55H4flnxLbuX2h94N6r6lvse', '2018-03-12 06:23:02', '2018-03-12 06:23:02');
INSERT INTO `persistences` VALUES ('986', '1', 'tVmUZuNrErqXqlSwvICNNt4rmhv0zCLk', '2018-03-12 06:23:03', '2018-03-12 06:23:03');
INSERT INTO `persistences` VALUES ('987', '1', '3WJlulP7oRTHo3eFpO7eKrUoYsZIjRzb', '2018-03-12 06:24:43', '2018-03-12 06:24:43');
INSERT INTO `persistences` VALUES ('988', '1', 'ZZ4YMtwWzjmEk6iNDUrZChOixVsDdbdP', '2018-03-12 06:24:44', '2018-03-12 06:24:44');
INSERT INTO `persistences` VALUES ('989', '1', 'mY94OBTPLa61JFmcNwOsWpYQICp7Crsf', '2018-03-12 06:26:27', '2018-03-12 06:26:27');
INSERT INTO `persistences` VALUES ('990', '1', 'fqNMfrhoqL9ARpJiUO5SUK3yO8mvuu7X', '2018-03-12 06:26:28', '2018-03-12 06:26:28');
INSERT INTO `persistences` VALUES ('991', '1', 'wJ51jD3HDzoKjUhczLlmHDhHsZiFvOvF', '2018-03-12 06:26:54', '2018-03-12 06:26:54');
INSERT INTO `persistences` VALUES ('992', '1', '2XllUpwdV054GsckqyGyCtbHp4m48psn', '2018-03-12 06:26:54', '2018-03-12 06:26:54');
INSERT INTO `persistences` VALUES ('993', '1', 'dyZJ1ycsEkjLji9gIMiuTZOe3RVZ5cb1', '2018-03-12 06:27:21', '2018-03-12 06:27:21');
INSERT INTO `persistences` VALUES ('994', '1', 'qxvHAn0SCw7Le16v2B25utmGyCUQoeM5', '2018-03-12 06:27:21', '2018-03-12 06:27:21');
INSERT INTO `persistences` VALUES ('995', '1', 'r1EZOxtiJNmucXD9tmydaoOAfmzgBjdC', '2018-03-12 06:28:38', '2018-03-12 06:28:38');
INSERT INTO `persistences` VALUES ('996', '1', 'c6ZpW6RM9lGxiylm6CI5AcLS3fHPNnFC', '2018-03-12 06:28:39', '2018-03-12 06:28:39');
INSERT INTO `persistences` VALUES ('997', '1', 'uqCycHXHFOAEKF3YFIZt0p3lab3vzwRT', '2018-03-12 06:31:55', '2018-03-12 06:31:55');
INSERT INTO `persistences` VALUES ('998', '1', 'GqaFcxqHOAi8j5qkViL4s3a4hY2NDtpr', '2018-03-12 06:31:55', '2018-03-12 06:31:55');
INSERT INTO `persistences` VALUES ('999', '1', 'zJu99Y8TM5j1FVo6m76WUFGpyuyNzA8d', '2018-03-12 06:32:52', '2018-03-12 06:32:52');
INSERT INTO `persistences` VALUES ('1000', '1', 'rF0LKCyVJfLXXBtzLLI42gPxFPJyhmVt', '2018-03-12 06:32:52', '2018-03-12 06:32:52');
INSERT INTO `persistences` VALUES ('1001', '1', 'Xu23gfpf3CCgf41h594fT1xO6SUQJdiW', '2018-03-12 06:33:23', '2018-03-12 06:33:23');
INSERT INTO `persistences` VALUES ('1002', '1', 'wji2SZDzkU6VuVGtfZAnZqIjTbGkSukb', '2018-03-12 06:33:23', '2018-03-12 06:33:23');
INSERT INTO `persistences` VALUES ('1003', '1', 'So9RJQEFf4LEAVjBRBHZOU49iqUkZc5Y', '2018-03-12 06:43:22', '2018-03-12 06:43:22');
INSERT INTO `persistences` VALUES ('1004', '1', 'oxuFMPVawA3JZFFOKQw7HAycJJWvQFFm', '2018-03-12 06:43:22', '2018-03-12 06:43:22');
INSERT INTO `persistences` VALUES ('1005', '1', 'Tv4kelsZIyTMl6QQSUz6viyS5qrm8HJE', '2018-03-12 06:44:15', '2018-03-12 06:44:15');
INSERT INTO `persistences` VALUES ('1006', '1', 'HzIrdtvBl2gGZxUjae0Np3vmmM0rdlMN', '2018-03-12 06:44:15', '2018-03-12 06:44:15');
INSERT INTO `persistences` VALUES ('1007', '1', 'LoITtQRWoBwMr5te69DxM6uKoNZCXCDw', '2018-03-12 06:51:23', '2018-03-12 06:51:23');
INSERT INTO `persistences` VALUES ('1008', '1', '9FiKVSbOv4dHaEQ8r3a9xEhzLyvIySEh', '2018-03-12 06:51:23', '2018-03-12 06:51:23');
INSERT INTO `persistences` VALUES ('1009', '1', '1JyIGSOwSSosfqQKMuPlOuqdsEw3sPA3', '2018-03-12 06:52:50', '2018-03-12 06:52:50');
INSERT INTO `persistences` VALUES ('1010', '1', 'tSwvmOY4i4gx6FqOpr9II6indAR56SK6', '2018-03-12 06:52:51', '2018-03-12 06:52:51');
INSERT INTO `persistences` VALUES ('1011', '1', 'kwQ6BL8HykAaMTNlhDwopQMaxYU8YzjF', '2018-03-12 06:53:55', '2018-03-12 06:53:55');
INSERT INTO `persistences` VALUES ('1012', '1', '5utN9NQSl6R2Tfqh5kNiUjC1BN6Iod53', '2018-03-12 06:53:55', '2018-03-12 06:53:55');
INSERT INTO `persistences` VALUES ('1013', '1', 'vkxLNVNq7siTHZAcxUtJKv9Ee6e5YsGh', '2018-03-12 06:54:39', '2018-03-12 06:54:39');
INSERT INTO `persistences` VALUES ('1014', '1', 'qaBuRJemTW21U7rK9xyzICD8b9nVNeEx', '2018-03-12 06:55:05', '2018-03-12 06:55:05');
INSERT INTO `persistences` VALUES ('1015', '1', '0CQiftduMipjTwbtyrcBZMC3F7gJGUR3', '2018-03-12 06:55:05', '2018-03-12 06:55:05');
INSERT INTO `persistences` VALUES ('1016', '1', '0N7c6gRRVla9iT8Q0pw1f0IIjjn9ew7N', '2018-03-12 07:05:19', '2018-03-12 07:05:19');
INSERT INTO `persistences` VALUES ('1017', '1', 'hak9rlgSAF1X0J1R2MBNGPr33yzvNRwv', '2018-03-12 07:05:19', '2018-03-12 07:05:19');
INSERT INTO `persistences` VALUES ('1018', '1', 'JCBMRh0flxs2xxJBCqB7qrt19867OxqG', '2018-03-12 07:09:19', '2018-03-12 07:09:19');
INSERT INTO `persistences` VALUES ('1019', '1', 'ZT8HWyxUJplexI5xtD3A6NZluaZwJlQ5', '2018-03-12 07:09:19', '2018-03-12 07:09:19');
INSERT INTO `persistences` VALUES ('1020', '1', 'WgCUfXyFS1u2eLJg1C44m9wfRr9OTIf9', '2018-03-12 07:10:30', '2018-03-12 07:10:30');
INSERT INTO `persistences` VALUES ('1021', '1', 'iWMuYe2iYiE5EQPji6pjHRp4SvvGntk4', '2018-03-12 07:10:30', '2018-03-12 07:10:30');
INSERT INTO `persistences` VALUES ('1022', '1', 'ZwRB8L8LGQVSCXZChuRyFJtvoozO3Ngo', '2018-03-12 07:11:56', '2018-03-12 07:11:56');
INSERT INTO `persistences` VALUES ('1023', '1', 'eCbutQaXKPD6Nf6OS6vRaMr96SVJBVh9', '2018-03-12 07:11:56', '2018-03-12 07:11:56');
INSERT INTO `persistences` VALUES ('1024', '1', 'VnxbMUkZhZRhy3fCNKrJfR9LWxP4I3JA', '2018-03-12 07:13:21', '2018-03-12 07:13:21');
INSERT INTO `persistences` VALUES ('1025', '1', 'qejKe8mXqZ8UFxp42kAEH38eNSzoAENz', '2018-03-12 07:13:21', '2018-03-12 07:13:21');
INSERT INTO `persistences` VALUES ('1026', '1', 'bSqNGpHiWTwkW3Fsga7XD1mOzfoFpQoS', '2018-03-12 07:14:06', '2018-03-12 07:14:06');
INSERT INTO `persistences` VALUES ('1027', '1', 'nNH26dCcW4QPVnG21tzHyE0uLMPSTAxN', '2018-03-12 07:14:06', '2018-03-12 07:14:06');
INSERT INTO `persistences` VALUES ('1028', '1', '0g4VpyCkpNhMk70S4DkQL3y5NCCZligI', '2018-03-12 07:15:58', '2018-03-12 07:15:58');
INSERT INTO `persistences` VALUES ('1029', '1', 'o4iyzZiZqIwgTtENIKPALgXFIbylTHS8', '2018-03-12 07:15:59', '2018-03-12 07:15:59');
INSERT INTO `persistences` VALUES ('1030', '1', 'rTdYkpKnSpf76kAShp4M8u29UeABm3On', '2018-03-12 07:16:24', '2018-03-12 07:16:24');
INSERT INTO `persistences` VALUES ('1031', '1', 'ezhVYX7VgDcUmcXRW7lSMedrph8eyQio', '2018-03-12 07:16:24', '2018-03-12 07:16:24');
INSERT INTO `persistences` VALUES ('1032', '1', 'pYyZ6TFxR5FvC3tq9cxnfM7twNbUHXmW', '2018-03-12 07:17:34', '2018-03-12 07:17:34');
INSERT INTO `persistences` VALUES ('1033', '1', 'pESDVkerdVf3WTJpg0CxZX6KoQOGFxzZ', '2018-03-12 07:17:34', '2018-03-12 07:17:34');
INSERT INTO `persistences` VALUES ('1034', '1', 'vwG0bWtpHilueLvOkaZqJwh0wrzQVOJq', '2018-03-12 07:19:27', '2018-03-12 07:19:27');
INSERT INTO `persistences` VALUES ('1035', '1', 'eaox8eDwZBnkP4dzklqFraZl3bF0txsd', '2018-03-12 07:19:28', '2018-03-12 07:19:28');
INSERT INTO `persistences` VALUES ('1036', '1', 'iB5RzJZnav192hTG9f4rzKhmV393WCm4', '2018-03-12 07:20:05', '2018-03-12 07:20:05');
INSERT INTO `persistences` VALUES ('1037', '1', 'onMR7p3VyDd8MIBt2HyOXDHE7rIu9tQd', '2018-03-12 07:20:05', '2018-03-12 07:20:05');
INSERT INTO `persistences` VALUES ('1038', '1', 'zbsimR10yybxKEfhOp1ZEXEF79v6po5i', '2018-03-12 07:28:24', '2018-03-12 07:28:24');
INSERT INTO `persistences` VALUES ('1039', '1', 'bxxOfmSgG01KPNGBpjCH205VhWwbFDTm', '2018-03-12 07:28:24', '2018-03-12 07:28:24');
INSERT INTO `persistences` VALUES ('1040', '1', 'fdhH1J8WhSiisVVkym3wRBeFZXBhl0gK', '2018-03-12 07:36:07', '2018-03-12 07:36:07');
INSERT INTO `persistences` VALUES ('1041', '1', 'JiolKFphRqZKDLoxab0QB1EQ8YV4rsWT', '2018-03-12 07:36:07', '2018-03-12 07:36:07');
INSERT INTO `persistences` VALUES ('1042', '1', 'ZMlAWKpeUm5o37dX9R9e8dLv0CF0fdVY', '2018-03-12 07:39:18', '2018-03-12 07:39:18');
INSERT INTO `persistences` VALUES ('1043', '1', 'rmrt4S6zgPhax0N3yhVDuSwHMvHrcy9f', '2018-03-12 07:39:18', '2018-03-12 07:39:18');
INSERT INTO `persistences` VALUES ('1044', '1', 'cAb0vI8yzsxSXVRHYZramtZ8tORHeXrH', '2018-03-12 07:40:30', '2018-03-12 07:40:30');
INSERT INTO `persistences` VALUES ('1045', '1', 'Wy8ScaZnRWSWKBhLC9Zjj5405TeO2Pd8', '2018-03-12 07:40:30', '2018-03-12 07:40:30');
INSERT INTO `persistences` VALUES ('1046', '1', 'hCnfwMlfGIbaqeC2pT3ClZ8zd2Ac5AI4', '2018-03-12 07:54:32', '2018-03-12 07:54:32');
INSERT INTO `persistences` VALUES ('1047', '1', 'G0YWpmMMDFv41rhlq5sk4oWEEGDKv73J', '2018-03-12 07:54:32', '2018-03-12 07:54:32');
INSERT INTO `persistences` VALUES ('1048', '1', 'kzPno12qPSBxtCXRhbuljkla1WSshVvq', '2018-03-12 08:01:46', '2018-03-12 08:01:46');
INSERT INTO `persistences` VALUES ('1049', '1', 'ih9qlPVtxRyP4LyDBhkPXh0gsyFrQubo', '2018-03-12 08:01:46', '2018-03-12 08:01:46');
INSERT INTO `persistences` VALUES ('1050', '1', '5Dq2CcORARe972hXKovhRc6DuT401BuG', '2018-03-12 08:06:42', '2018-03-12 08:06:42');
INSERT INTO `persistences` VALUES ('1051', '1', '2MFbzbFjqhqQkVobGq3P3EOFwI4jc52T', '2018-03-12 08:06:42', '2018-03-12 08:06:42');
INSERT INTO `persistences` VALUES ('1052', '1', 'NeDCzBRGc30OVHhaUekETDhGivQH8wzs', '2018-03-12 08:08:15', '2018-03-12 08:08:15');
INSERT INTO `persistences` VALUES ('1053', '1', '61hPdT4EpW5sNwn9oDTMLc7VoTlK6f4S', '2018-03-12 08:08:15', '2018-03-12 08:08:15');
INSERT INTO `persistences` VALUES ('1054', '1', 'D77mIXcWbvOISjmc8j9R9EA5u4GywoBF', '2018-03-12 08:08:26', '2018-03-12 08:08:26');
INSERT INTO `persistences` VALUES ('1055', '1', '3uvMLlepiz00LkXHYdjIaKdzOOqxyu6Q', '2018-03-12 08:08:26', '2018-03-12 08:08:26');
INSERT INTO `persistences` VALUES ('1056', '1', 'dycdlFp3aqlveMZFfatGyw5pwTkY3fnQ', '2018-03-12 08:09:05', '2018-03-12 08:09:05');
INSERT INTO `persistences` VALUES ('1057', '1', 'CRyFL7gxD3JuP2f99dzpjrG49UHgnzhA', '2018-03-12 08:09:05', '2018-03-12 08:09:05');
INSERT INTO `persistences` VALUES ('1058', '1', 'HibezuxrZVSL7M8hQIrUmpdakJwkY6mD', '2018-03-12 08:09:19', '2018-03-12 08:09:19');
INSERT INTO `persistences` VALUES ('1059', '1', 'iJpByXkXR9waKBjmTQWof7GrXunnGONY', '2018-03-12 08:09:19', '2018-03-12 08:09:19');
INSERT INTO `persistences` VALUES ('1060', '1', 'UeIfYr1fE4uCRlMNHSY45MDiDcfJVR3l', '2018-03-12 08:10:33', '2018-03-12 08:10:33');
INSERT INTO `persistences` VALUES ('1061', '1', 'AxYxr3GVLottpvf3iXMDPu8Qu78etu6J', '2018-03-12 08:10:33', '2018-03-12 08:10:33');
INSERT INTO `persistences` VALUES ('1062', '1', 'HcE73j2jwfogVuU8FxgJR07g5b4wQrK5', '2018-03-12 08:20:00', '2018-03-12 08:20:00');
INSERT INTO `persistences` VALUES ('1063', '1', 'hIgHHfHMpHDlm1Zru2DElpquJqXqGe5d', '2018-03-12 08:20:00', '2018-03-12 08:20:00');
INSERT INTO `persistences` VALUES ('1064', '1', 'IwPIvsETbk9vax8zrHd1eQLPae2Ob8GK', '2018-03-12 08:21:24', '2018-03-12 08:21:24');
INSERT INTO `persistences` VALUES ('1065', '1', '4dqVkam3MPGhiE7K0D86kt8ISeVXS4SV', '2018-03-12 08:21:25', '2018-03-12 08:21:25');
INSERT INTO `persistences` VALUES ('1066', '1', 'XsLm0m1gyIv7ppu86odwRIOkX0JAw8Mq', '2018-03-12 08:25:46', '2018-03-12 08:25:46');
INSERT INTO `persistences` VALUES ('1067', '1', 'ZDw8e1MqJqeb4XrO9PUOTgfGn8MjB8Sk', '2018-03-12 08:25:46', '2018-03-12 08:25:46');
INSERT INTO `persistences` VALUES ('1068', '1', 'O7gqrGm3iW2dtFpyoCT4T2SQq0bHsi0c', '2018-03-12 08:27:15', '2018-03-12 08:27:15');
INSERT INTO `persistences` VALUES ('1069', '1', 'kZ7woL0V9sMQ7f5QuYMbzBamMMCfP9pt', '2018-03-12 08:27:15', '2018-03-12 08:27:15');
INSERT INTO `persistences` VALUES ('1070', '1', 'Pnb59uCIpMYoLCmfSH5mp0l0IZTpWM38', '2018-03-12 08:31:57', '2018-03-12 08:31:57');
INSERT INTO `persistences` VALUES ('1071', '1', 'zk68xmceYu33O2dZuDeKLhDRQ9na3N2O', '2018-03-12 08:31:57', '2018-03-12 08:31:57');
INSERT INTO `persistences` VALUES ('1072', '1', 'VWJECYyhc4YKFowWFwYvO8Zz11OzOhYB', '2018-03-12 08:34:28', '2018-03-12 08:34:28');
INSERT INTO `persistences` VALUES ('1073', '1', 'GMlB3DSLFarOj7htWIDE6U2w5Sf0xV44', '2018-03-12 08:34:28', '2018-03-12 08:34:28');
INSERT INTO `persistences` VALUES ('1074', '1', '5EkSkVnIF7slH0yOLfHzqM31DXaLHrct', '2018-03-12 08:35:06', '2018-03-12 08:35:06');
INSERT INTO `persistences` VALUES ('1075', '1', '39KC5wLqgpBhxq7TjMzu6yEWnnjJQ37z', '2018-03-12 08:35:06', '2018-03-12 08:35:06');
INSERT INTO `persistences` VALUES ('1076', '1', 'd45FG3wdFSRyhroKijYrJOfvFkP3Aszm', '2018-03-12 08:39:38', '2018-03-12 08:39:38');
INSERT INTO `persistences` VALUES ('1077', '1', 'qZG315whqfZ5wRNzTwVCfmm8EtqhkQ6F', '2018-03-12 08:39:38', '2018-03-12 08:39:38');
INSERT INTO `persistences` VALUES ('1078', '1', 'QdZxVMKrBwy0kaDLGiW4WLIRYMRQs6xj', '2018-03-12 08:40:34', '2018-03-12 08:40:34');
INSERT INTO `persistences` VALUES ('1079', '1', 'Vv0vkZoaLzBRinBrmmqaOqAfe0oh4heQ', '2018-03-12 08:40:35', '2018-03-12 08:40:35');
INSERT INTO `persistences` VALUES ('1080', '1', 'so6lVyxgwtTLmdu5kC2HBcQO5iV5LJ7g', '2018-03-12 08:42:17', '2018-03-12 08:42:17');
INSERT INTO `persistences` VALUES ('1081', '1', 'puXJ3HJd82YSw9B6q9l4KYImcLOX6ra2', '2018-03-12 08:42:17', '2018-03-12 08:42:17');
INSERT INTO `persistences` VALUES ('1082', '1', '7wI992wqLAczkEd6TbspneSHtd4g3PXt', '2018-03-12 08:43:52', '2018-03-12 08:43:52');
INSERT INTO `persistences` VALUES ('1083', '1', 'cKGMARpg4ScKxGGQLxiqAOLn0LNBufRw', '2018-03-12 08:43:52', '2018-03-12 08:43:52');
INSERT INTO `persistences` VALUES ('1084', '1', 'fVazqzbQlt4MCcHxxptGx0cd86Gib34B', '2018-03-12 08:48:58', '2018-03-12 08:48:58');
INSERT INTO `persistences` VALUES ('1085', '1', 'XJFZPzkIvUnxoYnYsUaQusLFMrTKjqWd', '2018-03-12 08:48:58', '2018-03-12 08:48:58');
INSERT INTO `persistences` VALUES ('1086', '1', 'zwVs7QnTN9iDnN7GzHoMuMM3c09wmM2R', '2018-03-12 08:49:32', '2018-03-12 08:49:32');
INSERT INTO `persistences` VALUES ('1087', '1', 'yx9sTeoHX7AxUbzQXaeleteqoxYzDLwF', '2018-03-12 08:49:32', '2018-03-12 08:49:32');
INSERT INTO `persistences` VALUES ('1088', '1', 'M6dy7yr2Oh1dEdMG7KRfjvdED8WWrj0w', '2018-03-12 08:49:57', '2018-03-12 08:49:57');
INSERT INTO `persistences` VALUES ('1089', '1', 'QWwj4539q0OhQOCYxu3WiXSHBbbCdUFj', '2018-03-12 08:49:57', '2018-03-12 08:49:57');
INSERT INTO `persistences` VALUES ('1090', '1', '4mbWE6jFZCpVFt98ZfqxjL46fBCwSSUA', '2018-03-12 08:51:45', '2018-03-12 08:51:45');
INSERT INTO `persistences` VALUES ('1091', '1', '9dBgnOy7qK5XBAmv87vz2wNvUL6G4DYF', '2018-03-12 08:51:45', '2018-03-12 08:51:45');
INSERT INTO `persistences` VALUES ('1092', '1', 'bsoDrcYnwCvLWXdzEZco2QRRXw5H2ATr', '2018-03-12 08:53:10', '2018-03-12 08:53:10');
INSERT INTO `persistences` VALUES ('1093', '1', 'osxDWqKeEU4bZZDcLqR9sSQFQVKTZrAe', '2018-03-12 08:53:10', '2018-03-12 08:53:10');
INSERT INTO `persistences` VALUES ('1094', '1', 'RmNcK0HiIN1ItoHgV6nZpZCDrFRbeuC1', '2018-03-12 08:53:51', '2018-03-12 08:53:51');
INSERT INTO `persistences` VALUES ('1095', '1', 'hQcLS6tnWgMPqu5AfzwFjkroNPFFZ4FV', '2018-03-12 08:53:51', '2018-03-12 08:53:51');
INSERT INTO `persistences` VALUES ('1096', '1', 'hmQm9pStGrWFs8v5cr5g5HHglRilYMZP', '2018-03-12 08:54:15', '2018-03-12 08:54:15');
INSERT INTO `persistences` VALUES ('1097', '1', 'gEehPDYGqA5iE1x132nvvB2QtAH7wZl2', '2018-03-12 08:54:15', '2018-03-12 08:54:15');
INSERT INTO `persistences` VALUES ('1098', '1', 'QvoELLChLU14NwtfNWNKE5JJNmQN9J4G', '2018-03-12 08:54:28', '2018-03-12 08:54:28');
INSERT INTO `persistences` VALUES ('1099', '1', 'ZmzBXpqYHcfrvIlBWe6PDi1DAN3QlGK4', '2018-03-12 08:54:28', '2018-03-12 08:54:28');
INSERT INTO `persistences` VALUES ('1100', '1', 'WEiJnU0ShZ71CwymQkLgl2Dy6op5fqUF', '2018-03-12 08:54:58', '2018-03-12 08:54:58');
INSERT INTO `persistences` VALUES ('1101', '1', 'cpD3Atvqzun8sQrH0Y3nZxjbwpGpjVUY', '2018-03-12 08:54:58', '2018-03-12 08:54:58');
INSERT INTO `persistences` VALUES ('1102', '1', 'bTrEsLVBOj7Rh9EO2PuLPf0PRcZOpBxo', '2018-03-12 08:56:18', '2018-03-12 08:56:18');
INSERT INTO `persistences` VALUES ('1103', '1', '9o6PT2dBlwdBEoWucnnlx3BijFttKkZn', '2018-03-12 08:56:18', '2018-03-12 08:56:18');
INSERT INTO `persistences` VALUES ('1104', '1', 'kXSGqSXGciITMc4PflfJ8ICLUyvnXEMC', '2018-03-12 08:57:04', '2018-03-12 08:57:04');
INSERT INTO `persistences` VALUES ('1105', '1', 'lpsfPPzY0CJTKQUspK9oavjYIladkU0a', '2018-03-12 08:57:27', '2018-03-12 08:57:27');
INSERT INTO `persistences` VALUES ('1106', '1', 'z1LaT9cSU3SmDztIC0qltELbyDCOlRzz', '2018-03-12 08:59:36', '2018-03-12 08:59:36');
INSERT INTO `persistences` VALUES ('1107', '1', 'xW9X2cYhewwfK5jBNnhBTNqo9rklPfcF', '2018-03-12 09:00:39', '2018-03-12 09:00:39');
INSERT INTO `persistences` VALUES ('1108', '1', 'VGkSyAqBQeEBqtpxNBDPSLjALIkN83e1', '2018-03-12 09:02:09', '2018-03-12 09:02:09');
INSERT INTO `persistences` VALUES ('1109', '1', 'aTCIfVmVIHCjzAZW6lKEt9bV6NKM2XLk', '2018-03-12 09:03:58', '2018-03-12 09:03:58');
INSERT INTO `persistences` VALUES ('1110', '1', 'khyLQO5y78Ic0P2EFzz1M6fbss7E4drY', '2018-03-12 09:05:12', '2018-03-12 09:05:12');
INSERT INTO `persistences` VALUES ('1111', '1', 'EQWUUj6bkgpA1mwpbOdwDPw8g3fUUf6U', '2018-03-12 09:06:55', '2018-03-12 09:06:55');
INSERT INTO `persistences` VALUES ('1112', '1', 'nXFN9zO9S7uvhDdrRiGRkkc4Plghj9px', '2018-03-12 09:07:49', '2018-03-12 09:07:49');
INSERT INTO `persistences` VALUES ('1113', '1', 'NVCr9SyfSnP8c8DZMa7jTyvWKzu9o7pX', '2018-03-12 09:07:52', '2018-03-12 09:07:52');
INSERT INTO `persistences` VALUES ('1114', '1', 'uVlJEf3KdJ6hKhWQ9aiZ4qBo90uB3TwA', '2018-03-12 09:08:42', '2018-03-12 09:08:42');
INSERT INTO `persistences` VALUES ('1115', '1', 'aP08Zoy4giAONXzdvPKPtweCEBkQgGV8', '2018-03-12 09:08:42', '2018-03-12 09:08:42');
INSERT INTO `persistences` VALUES ('1116', '1', 'd7O87RdexkUQ4OYfCtlXjDm5BeBqUVxb', '2018-03-12 09:33:31', '2018-03-12 09:33:31');
INSERT INTO `persistences` VALUES ('1117', '1', 'UttR6Spk0M4P2fyJiRfDjHTqTPe41Jui', '2018-03-12 09:33:31', '2018-03-12 09:33:31');
INSERT INTO `persistences` VALUES ('1118', '1', 'exwTU25hwIg6VyXS4VqyTGWTUg0SReiJ', '2018-03-12 09:34:20', '2018-03-12 09:34:20');
INSERT INTO `persistences` VALUES ('1119', '1', 'N883gJf16j4QbFo9JbyYS7o75VoygdUh', '2018-03-12 09:34:20', '2018-03-12 09:34:20');
INSERT INTO `persistences` VALUES ('1120', '1', '3gsU0kZhd6fei1ZdGreZugznbWdtdOlY', '2018-03-13 01:48:07', '2018-03-13 01:48:07');
INSERT INTO `persistences` VALUES ('1121', '1', 'niLKhbfTIGZAjlg2z1S9uO99EEG8k3ls', '2018-03-13 01:48:08', '2018-03-13 01:48:08');
INSERT INTO `persistences` VALUES ('1122', '1', 'NzOtcY5FKg7Fd5WH9b3KnC8nBwTl6hUM', '2018-03-13 01:48:09', '2018-03-13 01:48:09');
INSERT INTO `persistences` VALUES ('1123', '1', 'EEromBx3hAoM1psSej0MYAXlQVHWAk99', '2018-03-13 01:49:06', '2018-03-13 01:49:06');
INSERT INTO `persistences` VALUES ('1124', '1', 'gSenqoXM2ecun2c8OVsxwNi4BVv0SEeE', '2018-03-13 01:49:06', '2018-03-13 01:49:06');
INSERT INTO `persistences` VALUES ('1126', '1', 'DHNT7fwyoUilXLBioqb7uy1JlshM0gW4', '2018-03-13 09:42:56', '2018-03-13 09:42:56');
INSERT INTO `persistences` VALUES ('1127', '1', '5Owwi89jblsPZ5vP6Y3ie1tViR1lrYFP', '2018-03-13 09:42:57', '2018-03-13 09:42:57');
INSERT INTO `persistences` VALUES ('1128', '1', 'KCaVNSNxTd7YT8pKoOuRfU840Z5tI5EX', '2018-03-13 09:48:43', '2018-03-13 09:48:43');
INSERT INTO `persistences` VALUES ('1129', '1', 'xyd4d5lSSnAp17d7rHsMNPrYCPVD93D6', '2018-03-13 09:48:43', '2018-03-13 09:48:43');
INSERT INTO `persistences` VALUES ('1130', '1', 'swcwstfQFJ3cCuFtwcnryeV0TRCCCPuf', '2018-03-13 09:48:56', '2018-03-13 09:48:56');
INSERT INTO `persistences` VALUES ('1131', '1', 'MyURJ5R5JrYAyYhpPUHxziBkVEkU1BKw', '2018-03-13 11:21:50', '2018-03-13 11:21:50');
INSERT INTO `persistences` VALUES ('1132', '1', 'XJTvlrhfQHerk4fpa8iGrobB1QTWq0Cu', '2018-03-14 02:03:15', '2018-03-14 02:03:15');
INSERT INTO `persistences` VALUES ('1133', '1', 'FxK2gXR2bnSlmWX3hIUJ4VIchAme3ou6', '2018-03-14 02:03:20', '2018-03-14 02:03:20');
INSERT INTO `persistences` VALUES ('1134', '1', 'V6zQfikI6iL9wvPvlALA8uL0VkxhLTtH', '2018-03-14 07:57:59', '2018-03-14 07:57:59');
INSERT INTO `persistences` VALUES ('1135', '1', 'sipf1irVb7oE5lQOCV73IXAatubXyNuB', '2018-03-15 09:02:10', '2018-03-15 09:02:10');
INSERT INTO `persistences` VALUES ('1136', '1', 'AdbN9w6PrWYaXjAmGxwpHXiEGUEisLI6', '2018-03-15 09:02:53', '2018-03-15 09:02:53');
INSERT INTO `persistences` VALUES ('1137', '1', '07BDlGOe4gWxqE74jWjqReEeZWdfgAmM', '2018-03-15 09:02:53', '2018-03-15 09:02:53');
INSERT INTO `persistences` VALUES ('1138', '1', 'iAEUVzGB4SZKQfJAbi16f0Vpzy4BrGIU', '2018-03-15 09:03:21', '2018-03-15 09:03:21');
INSERT INTO `persistences` VALUES ('1139', '1', 'UfeMccnpi3ZVhRyBeMPhw2mmh6vHcvIU', '2018-03-15 09:03:21', '2018-03-15 09:03:21');
INSERT INTO `persistences` VALUES ('1140', '1', 'eNGIz0vg6AZn55HAaL73qUzKngJObzU7', '2018-03-15 10:17:04', '2018-03-15 10:17:04');
INSERT INTO `persistences` VALUES ('1141', '1', 'C0tWgw8VECssu9BNbKnCGwfO2yh3Itmz', '2018-03-15 10:17:26', '2018-03-15 10:17:26');
INSERT INTO `persistences` VALUES ('1142', '1', 'HC9envFnPu4lhSE7ChH2NEDVNlUvCfOk', '2018-03-15 10:17:47', '2018-03-15 10:17:47');
INSERT INTO `persistences` VALUES ('1143', '1', 'IwXBGdXsFcmLqDzdnqlF8vUOhBXjNwH1', '2018-03-15 10:17:51', '2018-03-15 10:17:51');
INSERT INTO `persistences` VALUES ('1144', '1', 'tqQ58jtPqtIDiPHzNBGNxxECaUZLiY1G', '2018-03-15 10:40:02', '2018-03-15 10:40:02');
INSERT INTO `persistences` VALUES ('1145', '1', 'VTkZB6rZFiOOS7ppsx86vw9HugrBf9VC', '2018-03-15 10:40:02', '2018-03-15 10:40:02');
INSERT INTO `persistences` VALUES ('1146', '1', 'MuPN4JFtKPRuVUV4cqm38CtY2YuUWixz', '2018-03-16 01:11:05', '2018-03-16 01:11:05');
INSERT INTO `persistences` VALUES ('1147', '1', 'UespeiwoIARb79vpMwyl0te8k1PXMtBu', '2018-03-16 03:25:49', '2018-03-16 03:25:49');
INSERT INTO `persistences` VALUES ('1148', '1', 'c26Ofa20AChdkO6Cl3FzSA5yrCSyHx6y', '2018-03-16 03:25:49', '2018-03-16 03:25:49');
INSERT INTO `persistences` VALUES ('1149', '1', '8VQL63Z5KDPxl9n9iq1oqOiLOJnaCIdQ', '2018-03-16 03:28:54', '2018-03-16 03:28:54');
INSERT INTO `persistences` VALUES ('1150', '1', '5fpOXBxiPtNUSGfcutHyek7mKJRwRZ0Y', '2018-03-16 03:28:54', '2018-03-16 03:28:54');
INSERT INTO `persistences` VALUES ('1151', '1', 'kqLTyhF23VyXk0VPWKvRp3qatsAgw9Eu', '2018-03-16 03:42:26', '2018-03-16 03:42:26');
INSERT INTO `persistences` VALUES ('1152', '1', 'hnxr1jk5Xd8L54z39UR7mXIBCU0WZdYR', '2018-03-16 03:42:26', '2018-03-16 03:42:26');
INSERT INTO `persistences` VALUES ('1153', '1', '19D3lYvJMUic7eBZStXXeZ7MlYG20xiN', '2018-03-16 03:47:38', '2018-03-16 03:47:38');
INSERT INTO `persistences` VALUES ('1154', '1', '22AEZ3Um8preG0jm4moK4gUojZbRH0WR', '2018-03-16 03:47:38', '2018-03-16 03:47:38');
INSERT INTO `persistences` VALUES ('1155', '1', 'ogVXw0SsdkpP1YrbLmnKec68dOQHWjbF', '2018-03-16 05:08:57', '2018-03-16 05:08:57');
INSERT INTO `persistences` VALUES ('1156', '1', 'PNPZcPOfTZ4EwFVADSAWcF02N4GQD8md', '2018-03-16 05:08:57', '2018-03-16 05:08:57');
INSERT INTO `persistences` VALUES ('1157', '1', '7cPJdQiBVOz9UiSlYzhqaD8GQiXW4Imm', '2018-03-22 09:30:06', '2018-03-22 09:30:06');
INSERT INTO `persistences` VALUES ('1158', '1', 'k2sqWNQZ1Zx4OYmXS5G0qcm10Z7VivNq', '2018-03-23 07:29:05', '2018-03-23 07:29:05');
INSERT INTO `persistences` VALUES ('1159', '1', '9z31SbLuARvRdg33zx1sqlNgS9uaH0kL', '2018-03-23 08:32:03', '2018-03-23 08:32:03');
INSERT INTO `persistences` VALUES ('1160', '1', '0gjbnBcevi7Ks4UJKXICsRv6wIuICKry', '2018-03-23 08:32:03', '2018-03-23 08:32:03');
INSERT INTO `persistences` VALUES ('1161', '1', '2NaZROO9nP1w49a0nNitXYs6VYPLRGSD', '2018-03-23 08:33:21', '2018-03-23 08:33:21');
INSERT INTO `persistences` VALUES ('1162', '1', 'IlZFQnZrjKRnEKvCx1v0kBlzlPWnpL46', '2018-03-23 08:33:23', '2018-03-23 08:33:23');
INSERT INTO `persistences` VALUES ('1163', '1', 'OUkiGT0lIroq29koUNQzbj6N9ytTy5p3', '2018-03-23 08:57:44', '2018-03-23 08:57:44');
INSERT INTO `persistences` VALUES ('1164', '1', 'vFXMDonU0Atvg3zfTonTkZzNk64Acbwo', '2018-03-23 08:57:45', '2018-03-23 08:57:45');
INSERT INTO `persistences` VALUES ('1165', '1', 'Uz8mIhqO6hjipTZ5bjEyDEee9QBcGAU1', '2018-03-23 08:58:03', '2018-03-23 08:58:03');
INSERT INTO `persistences` VALUES ('1166', '1', 'vaDw8Sr3qkUsGTstqQpkFVyo4l4YNZSQ', '2018-03-23 08:58:05', '2018-03-23 08:58:05');
INSERT INTO `persistences` VALUES ('1167', '1', 'iLNMt9vN0rZ5NWM6aKGzWHIUYhGppGLP', '2018-03-23 08:59:58', '2018-03-23 08:59:58');
INSERT INTO `persistences` VALUES ('1168', '1', 'QBuHNQXBPufIuWAwzMJms4ue0EbDO6a1', '2018-03-23 08:59:58', '2018-03-23 08:59:58');
INSERT INTO `persistences` VALUES ('1169', '1', 'dkOAvVvfulxiiFrQbPK7j8ZvuFQJemAR', '2018-03-23 09:00:25', '2018-03-23 09:00:25');
INSERT INTO `persistences` VALUES ('1170', '1', '0eHYyqgvKBXUs7XTEhGeu5hHxJoQ8dBw', '2018-03-23 09:00:26', '2018-03-23 09:00:26');
INSERT INTO `persistences` VALUES ('1171', '1', 'iCJ0xVutCy3VElvChMlQq4Q71iTDBXNB', '2018-03-23 09:08:10', '2018-03-23 09:08:10');
INSERT INTO `persistences` VALUES ('1172', '1', 'vSV3wnkRPwxllVbihbhqm8GunPr691yJ', '2018-03-23 09:08:10', '2018-03-23 09:08:10');
INSERT INTO `persistences` VALUES ('1173', '1', 'kxMHtZi6OMyoHa6XqAQlcjFRzaIfiqj1', '2018-03-23 09:12:11', '2018-03-23 09:12:11');
INSERT INTO `persistences` VALUES ('1174', '1', 'r5wAqQv0PKy0v593bZRuGuNw3Du9rb0z', '2018-03-23 09:12:11', '2018-03-23 09:12:11');
INSERT INTO `persistences` VALUES ('1175', '1', 'jKrdyniO7LHbkrH4vFnRUgBvu0N4XINX', '2018-03-23 09:17:29', '2018-03-23 09:17:29');
INSERT INTO `persistences` VALUES ('1176', '1', 'Jyhd0EKWCv96R8nnXbVbiSML2CCedGi2', '2018-03-23 09:17:30', '2018-03-23 09:17:30');
INSERT INTO `persistences` VALUES ('1177', '1', 'QSfUux1gk9zBUYDDVnKOeA33CjDvfghX', '2018-03-23 09:17:54', '2018-03-23 09:17:54');
INSERT INTO `persistences` VALUES ('1178', '1', 'adifEeiyiVWOdOPWHPDG8SMMcccl7Tu9', '2018-03-23 09:17:54', '2018-03-23 09:17:54');
INSERT INTO `persistences` VALUES ('1179', '1', 'OnLHxBnwSuey3l6HhAw1zsxOuh4whqAE', '2018-03-23 09:21:04', '2018-03-23 09:21:04');
INSERT INTO `persistences` VALUES ('1180', '1', 'BOXnHkHbYWwakhWmwr02OZSkBQYzhZVp', '2018-03-23 09:21:05', '2018-03-23 09:21:05');
INSERT INTO `persistences` VALUES ('1181', '1', 'JherHS1DWecTKs4bguPRHykAbt0NewbL', '2018-03-23 09:22:59', '2018-03-23 09:22:59');
INSERT INTO `persistences` VALUES ('1182', '1', 'BcjJwsq7S8qFbkGzmC5ZdQuuF1iSTCdx', '2018-03-23 09:23:00', '2018-03-23 09:23:00');
INSERT INTO `persistences` VALUES ('1183', '1', 'HQ0cRQuHXtvOKxa5PKCVq4lwzl5Y31oM', '2018-03-23 09:23:58', '2018-03-23 09:23:58');
INSERT INTO `persistences` VALUES ('1184', '1', '8xxV5e3CE7clofMp53Juau6nU3xZa1XK', '2018-03-23 09:23:58', '2018-03-23 09:23:58');
INSERT INTO `persistences` VALUES ('1185', '1', 'FD3RSYYiwsHf8ut1NkH6FmMuMT7fWPfa', '2018-03-23 09:27:47', '2018-03-23 09:27:47');
INSERT INTO `persistences` VALUES ('1186', '1', 'BgZg0z98i9681zuz5spNQdzqpk5RhtjZ', '2018-03-23 09:27:47', '2018-03-23 09:27:47');
INSERT INTO `persistences` VALUES ('1187', '1', '0gTVpG9elKbB539nItu2ATGqXWyTuKFI', '2018-03-23 09:29:05', '2018-03-23 09:29:05');
INSERT INTO `persistences` VALUES ('1188', '1', 'B1Rma1E8eM80cCMQyzsW9wSWoNcyB09V', '2018-03-23 09:29:05', '2018-03-23 09:29:05');
INSERT INTO `persistences` VALUES ('1189', '1', 'h6R4GeQYWwnPy498lbNxDAiW15VBm1zM', '2018-03-23 09:30:48', '2018-03-23 09:30:48');
INSERT INTO `persistences` VALUES ('1190', '1', 'FRJ6UBnS3jtCv90AlOeNdRWP1j3lin45', '2018-03-23 09:30:49', '2018-03-23 09:30:49');
INSERT INTO `persistences` VALUES ('1191', '1', 'kF7tkNXzVNrsykoXQ97xVmulls7xxntj', '2018-03-23 09:31:13', '2018-03-23 09:31:13');
INSERT INTO `persistences` VALUES ('1192', '1', '78f07L8z6nEpBREBUfW7ZuPCkcLVUKVb', '2018-03-23 09:32:33', '2018-03-23 09:32:33');
INSERT INTO `persistences` VALUES ('1193', '1', 'r4ApVFCUfE8cO8J7qCfOIaM9H3HTdLJI', '2018-03-23 09:32:33', '2018-03-23 09:32:33');
INSERT INTO `persistences` VALUES ('1194', '1', 'INBYJBI9k89KoSpWKGsA8oHCzGd32NRv', '2018-03-23 09:34:13', '2018-03-23 09:34:13');
INSERT INTO `persistences` VALUES ('1195', '1', 'LU7YNWQVek2eHe8gdrf3C2ky5ul0bAwF', '2018-03-23 09:34:13', '2018-03-23 09:34:13');
INSERT INTO `persistences` VALUES ('1196', '1', 'xL7HqoyJupcI5hVeulJjTimvgIPUNsYV', '2018-03-23 09:34:44', '2018-03-23 09:34:44');
INSERT INTO `persistences` VALUES ('1197', '1', 'TNxhD8pFn4Y2v8Hdf4spohwBgDd1Rlj0', '2018-03-23 09:35:58', '2018-03-23 09:35:58');
INSERT INTO `persistences` VALUES ('1198', '1', 'xHmxqwIf20EshEdtwZtGeHoo1YrZbLms', '2018-03-23 09:35:59', '2018-03-23 09:35:59');
INSERT INTO `persistences` VALUES ('1199', '1', 'sZ2HRtlA1D0rAu9C78NqjgQU6hZbAJEw', '2018-03-23 09:36:38', '2018-03-23 09:36:38');
INSERT INTO `persistences` VALUES ('1200', '1', 'lwwaIIz5WbB4MvoHQBBkqtLuYZTfxVou', '2018-03-23 09:36:38', '2018-03-23 09:36:38');
INSERT INTO `persistences` VALUES ('1201', '1', 'gsaV0m4UhCuQbra9OqCgvdqfj3ZMm8YU', '2018-03-23 10:12:00', '2018-03-23 10:12:00');
INSERT INTO `persistences` VALUES ('1202', '1', '1XmFJ4T4cYRnJR8kIAYRtNuFXD1wZCYx', '2018-03-23 10:12:00', '2018-03-23 10:12:00');
INSERT INTO `persistences` VALUES ('1203', '1', '1Q6Gy34xEHb2MtndrFukXwBwoHMK1wqk', '2018-03-23 10:12:28', '2018-03-23 10:12:28');
INSERT INTO `persistences` VALUES ('1204', '1', 'xaq535wayyn2A93wjpK2iGW2E9GruOwS', '2018-03-23 10:12:28', '2018-03-23 10:12:28');
INSERT INTO `persistences` VALUES ('1205', '1', 'DyMBBLBJO7ZqvhMlJKCjzVGzmmTVzb35', '2018-03-23 10:12:49', '2018-03-23 10:12:49');
INSERT INTO `persistences` VALUES ('1206', '1', 'cr8swSgBLfIzKXYaH86t8L7mabg0yJZV', '2018-03-23 10:12:49', '2018-03-23 10:12:49');
INSERT INTO `persistences` VALUES ('1207', '1', 'KKns3ngUZTWD4Bf1ezg3VeeSWfPDPZjo', '2018-03-23 10:13:05', '2018-03-23 10:13:05');
INSERT INTO `persistences` VALUES ('1208', '1', 'xrPcqPOryhazrgouaH9lV3vgSxVUMSEL', '2018-03-23 10:13:05', '2018-03-23 10:13:05');
INSERT INTO `persistences` VALUES ('1209', '1', 'xHW0i0bVbFHtqfvMG8BdeCrxRTR1CwTv', '2018-03-23 10:13:14', '2018-03-23 10:13:14');
INSERT INTO `persistences` VALUES ('1210', '1', 'BwTsV4k6QPuCGzk16Vj7TZ31vH6H3bGJ', '2018-03-23 10:13:14', '2018-03-23 10:13:14');
INSERT INTO `persistences` VALUES ('1211', '1', 'UBWV5zvO05JyuUy8vYrw3WnxtrIouDV3', '2018-03-23 10:13:23', '2018-03-23 10:13:23');
INSERT INTO `persistences` VALUES ('1212', '1', 'ZGzNPMppNUk88Kji1uucovIkoO7EOKKx', '2018-03-23 10:13:23', '2018-03-23 10:13:23');
INSERT INTO `persistences` VALUES ('1214', '1', '3vtHmzJeq2YmM5gbYbnrN74THWVd8rOv', '2018-03-26 02:07:09', '2018-03-26 02:07:09');
INSERT INTO `persistences` VALUES ('1215', '1', 'LHka6HbsWthYAp7q0UW4Qb1NLstbD3yK', '2018-03-26 02:07:09', '2018-03-26 02:07:09');
INSERT INTO `persistences` VALUES ('1216', '1', 'gIz79dxLKVJRC5IzNnyCfkUmahWiaLkK', '2018-03-26 02:07:17', '2018-03-26 02:07:17');
INSERT INTO `persistences` VALUES ('1217', '1', 'jcSJOszrLn97es44Ltu1hwsMEdHDUK8a', '2018-03-26 02:07:17', '2018-03-26 02:07:17');
INSERT INTO `persistences` VALUES ('1218', '1', 'EE4DFXYFImZFvvcteWUfZcyEEpsklh5M', '2018-03-26 02:07:26', '2018-03-26 02:07:26');
INSERT INTO `persistences` VALUES ('1219', '1', '8K79PdC3wIKMcgPOEA62XuXMegSZVNix', '2018-03-26 02:07:26', '2018-03-26 02:07:26');
INSERT INTO `persistences` VALUES ('1220', '1', 'bNdSCkBU6IAg7YC0X971KxT61ZAiRS3B', '2018-03-26 02:15:49', '2018-03-26 02:15:49');
INSERT INTO `persistences` VALUES ('1221', '1', 'XDFFt0PMBWkgVkwsUl7QPwsRCpi1sPEF', '2018-03-26 02:26:31', '2018-03-26 02:26:31');
INSERT INTO `persistences` VALUES ('1222', '1', 'q1ikYuY2PunwFvmLtbDbAUv4cQ3OWnsI', '2018-03-26 02:26:33', '2018-03-26 02:26:33');
INSERT INTO `persistences` VALUES ('1223', '1', 'qqWgLgccmgeFx7bPlHpmczAHVpN3Aiq5', '2018-03-26 02:26:34', '2018-03-26 02:26:34');
INSERT INTO `persistences` VALUES ('1224', '1', 't19kqilpUqKCZikD7GHExhztMFScJpU0', '2018-03-26 02:26:34', '2018-03-26 02:26:34');
INSERT INTO `persistences` VALUES ('1225', '1', 'aidUKrSIirmIbOjdE5mkiUrEKJMUEXNl', '2018-03-26 02:27:28', '2018-03-26 02:27:28');
INSERT INTO `persistences` VALUES ('1226', '1', '6Noyqa6e9S3ykIAdX8Vyss633Czu5ZUY', '2018-03-26 02:27:28', '2018-03-26 02:27:28');
INSERT INTO `persistences` VALUES ('1227', '1', 'xAl4KZerbJh9VWPcPU9pXVxOnbDwzJ9t', '2018-03-26 02:27:44', '2018-03-26 02:27:44');
INSERT INTO `persistences` VALUES ('1228', '1', 'dMIkcCbuSeqa3VVx6vnddkP2e9QcAdMl', '2018-03-26 02:27:44', '2018-03-26 02:27:44');
INSERT INTO `persistences` VALUES ('1229', '1', 'nVYnwnHxu8XCv7pimVgxZftmeIZHil8o', '2018-03-26 02:27:45', '2018-03-26 02:27:45');
INSERT INTO `persistences` VALUES ('1230', '1', '6bfjTkCmVqWIiHRKqeKppuAI8fqoQBhk', '2018-03-26 02:27:48', '2018-03-26 02:27:48');
INSERT INTO `persistences` VALUES ('1231', '1', '23rS4TOGfP0awkCuGUYUnWYagbpCApVM', '2018-03-26 02:27:50', '2018-03-26 02:27:50');
INSERT INTO `persistences` VALUES ('1232', '1', 'jQ8Qy5TFoIc0p661rOkkY365FEsOmebz', '2018-03-26 02:27:50', '2018-03-26 02:27:50');
INSERT INTO `persistences` VALUES ('1233', '1', 'Vj12hPeqDw5XRaKxTiACfKMm05YTMwkn', '2018-03-26 02:27:51', '2018-03-26 02:27:51');
INSERT INTO `persistences` VALUES ('1234', '1', 'XmkF1bI1k3h0FQsCUduIbYUQGGwlYPlQ', '2018-03-26 02:28:00', '2018-03-26 02:28:00');
INSERT INTO `persistences` VALUES ('1235', '1', 'qdhSmvCiOTtu82F2aoeBk5Quk0FoyKQe', '2018-03-26 02:28:00', '2018-03-26 02:28:00');
INSERT INTO `persistences` VALUES ('1236', '1', 'NPNAlxGliAop08iJIAGOhgAmH0zaY9A9', '2018-03-26 02:28:10', '2018-03-26 02:28:10');
INSERT INTO `persistences` VALUES ('1237', '1', 'IeU5cla3RTSMSLZHLEncfooChdLsO67C', '2018-03-26 02:28:10', '2018-03-26 02:28:10');
INSERT INTO `persistences` VALUES ('1238', '1', '3aA3oTM7mZvWSIE2QpA1D65h8VPDQkem', '2018-03-26 02:28:10', '2018-03-26 02:28:10');
INSERT INTO `persistences` VALUES ('1239', '1', 'kDkeg7wgMSMvW9hwC3vveir0OL1KRDKd', '2018-03-26 02:28:15', '2018-03-26 02:28:15');
INSERT INTO `persistences` VALUES ('1240', '1', 'OILMnHCuMC5zoUHNGmHiL7YtXNFG2qPz', '2018-03-26 02:28:15', '2018-03-26 02:28:15');
INSERT INTO `persistences` VALUES ('1241', '1', '9VEYYcLQLsQEH41ggKlQ17xpWsKkLPoW', '2018-03-26 02:28:22', '2018-03-26 02:28:22');
INSERT INTO `persistences` VALUES ('1242', '1', 'FJ9opuixuYHQMi8kzDfKvrgnXqO6XAdB', '2018-03-26 02:28:22', '2018-03-26 02:28:22');
INSERT INTO `persistences` VALUES ('1243', '1', 'orP5DyPWD6MH4ewiSRKTwD7W9a0ndU75', '2018-03-26 02:28:22', '2018-03-26 02:28:22');
INSERT INTO `persistences` VALUES ('1244', '1', 'VLnmcoQ5ex2T38wLtNgTXeC17dorYrOd', '2018-03-26 02:28:44', '2018-03-26 02:28:44');
INSERT INTO `persistences` VALUES ('1245', '1', 'XgVABcU4FrlP8g6W4iZJ1FcO05spWbyy', '2018-03-26 02:28:44', '2018-03-26 02:28:44');
INSERT INTO `persistences` VALUES ('1246', '1', 'WLKJ4xLWsjab3ZUgK2MvjLf715f0wSht', '2018-03-26 02:33:27', '2018-03-26 02:33:27');
INSERT INTO `persistences` VALUES ('1247', '1', 'P4OVLaWl2qI6eYRRbpW8UyjPnM0LckBF', '2018-03-26 02:33:54', '2018-03-26 02:33:54');
INSERT INTO `persistences` VALUES ('1248', '1', 'h4uRN8GV2fMZtyusHFudxQD7eK9pkIcw', '2018-03-26 02:33:55', '2018-03-26 02:33:55');
INSERT INTO `persistences` VALUES ('1249', '1', 'tvqU1TVLubVe357EiYHYhGOnMLQxY302', '2018-03-26 02:33:55', '2018-03-26 02:33:55');
INSERT INTO `persistences` VALUES ('1250', '1', 'hHZCOjXzPKmpiJ5hCEelZFhlfjGrKNkf', '2018-03-26 02:34:02', '2018-03-26 02:34:02');
INSERT INTO `persistences` VALUES ('1251', '1', '2oxakzVBiqO0weHTpXym5BhoEXdWwwXQ', '2018-03-26 02:34:02', '2018-03-26 02:34:02');
INSERT INTO `persistences` VALUES ('1252', '1', 'Oq2zdmAbZEcwNP7AcWsTwyVtRromLOE1', '2018-03-26 02:34:23', '2018-03-26 02:34:23');
INSERT INTO `persistences` VALUES ('1253', '1', 'D0EfFqtRnN7k3S69K5nbDPWa0UIDfCQR', '2018-03-26 02:34:23', '2018-03-26 02:34:23');
INSERT INTO `persistences` VALUES ('1254', '1', 'zUIc84Fx6Wq6ijiYlOt90PDsmYSWKyrL', '2018-03-26 02:34:23', '2018-03-26 02:34:23');
INSERT INTO `persistences` VALUES ('1255', '1', 'X5D7m5sf1Weu2z2vjOK4JZ1wOEs38J9v', '2018-03-26 02:34:39', '2018-03-26 02:34:39');
INSERT INTO `persistences` VALUES ('1256', '1', 'DkZPSgvpaW6ElgXZcqoVQPD7aVL4hqCZ', '2018-03-26 02:34:39', '2018-03-26 02:34:39');
INSERT INTO `persistences` VALUES ('1257', '1', 'IWit3spSQR2Wo5IQvmv23CbvsuIGW7FN', '2018-03-26 02:34:47', '2018-03-26 02:34:47');
INSERT INTO `persistences` VALUES ('1258', '1', 'ewp3S6nHhYuKHmzJMFZnXAdF88tTF191', '2018-03-26 02:34:47', '2018-03-26 02:34:47');
INSERT INTO `persistences` VALUES ('1259', '1', 'KuVDnVQzHGSWB2cx6hFlXz5BCXyiA3bo', '2018-03-26 02:34:47', '2018-03-26 02:34:47');
INSERT INTO `persistences` VALUES ('1260', '1', '9el5jdKST4xrCP8R8zgaxH7tEkdKtPrN', '2018-03-26 02:34:54', '2018-03-26 02:34:54');
INSERT INTO `persistences` VALUES ('1261', '1', 'CdRKCSk2krF3DzOFyFQSve5JEtrfonth', '2018-03-26 02:34:55', '2018-03-26 02:34:55');
INSERT INTO `persistences` VALUES ('1262', '1', 'sdLcgd7bHQOBnu28PQ3m7pJ4UKtcoyma', '2018-03-26 02:35:05', '2018-03-26 02:35:05');
INSERT INTO `persistences` VALUES ('1263', '1', 'jc4ChjON6WMSlLA2pQp6dRnq3gY3uoYb', '2018-03-26 02:35:05', '2018-03-26 02:35:05');
INSERT INTO `persistences` VALUES ('1264', '1', 'H6aSLt9oC98UTFqRfzLv5nEf5y5Bm2r6', '2018-03-26 02:35:06', '2018-03-26 02:35:06');
INSERT INTO `persistences` VALUES ('1265', '1', 'orHdU8T2yq1QgqbjouTMlA8BR8e2teuL', '2018-03-26 02:35:56', '2018-03-26 02:35:56');
INSERT INTO `persistences` VALUES ('1266', '1', 'rzz0txIM13VlpZKzaEwkbUHNz6eXIVny', '2018-03-26 02:35:58', '2018-03-26 02:35:58');
INSERT INTO `persistences` VALUES ('1267', '1', 'kOseJRZU07hhMnb70K86ETrY4d5NFA7O', '2018-03-26 02:35:58', '2018-03-26 02:35:58');
INSERT INTO `persistences` VALUES ('1268', '1', 'u2RDb4I9ClijwkNHktb1zuRL9WJyA0Ny', '2018-03-26 02:35:58', '2018-03-26 02:35:58');
INSERT INTO `persistences` VALUES ('1269', '1', 'YKbyxBUhokC2NkRM2iG9GQtY4TcpYbln', '2018-03-26 02:36:22', '2018-03-26 02:36:22');
INSERT INTO `persistences` VALUES ('1270', '1', 'mHoAw6iQfIOGkGd85EiUEiYzYUf7IzTd', '2018-03-26 02:36:24', '2018-03-26 02:36:24');
INSERT INTO `persistences` VALUES ('1271', '1', 'tKnaZW94YLlw6WwdLAmRWHnVsZELdvTq', '2018-03-26 02:36:25', '2018-03-26 02:36:25');
INSERT INTO `persistences` VALUES ('1272', '1', 'qPRWEsv9dTn0cMJUMMsq4S49kF6diQZf', '2018-03-26 02:36:25', '2018-03-26 02:36:25');
INSERT INTO `persistences` VALUES ('1273', '1', 'rvMiL6rf3zAAT0AjT5U1KqKjwjFPG5R7', '2018-03-26 02:36:36', '2018-03-26 02:36:36');
INSERT INTO `persistences` VALUES ('1274', '1', 'mknUjUYSwCxJbeZURfTvQZtSksdSeEQ5', '2018-03-26 02:36:36', '2018-03-26 02:36:36');
INSERT INTO `persistences` VALUES ('1275', '1', '1aoABUk4kaOrZOANNn396VfcxsiYluFq', '2018-03-26 02:36:59', '2018-03-26 02:36:59');
INSERT INTO `persistences` VALUES ('1276', '1', 'NbtzJuP80KExuOcJj4nLRz6genS1i7FJ', '2018-03-26 02:36:59', '2018-03-26 02:36:59');
INSERT INTO `persistences` VALUES ('1277', '1', 'wcfKTWg7AiprztwmD5Xefn7AHRyWU0F4', '2018-03-26 02:36:59', '2018-03-26 02:36:59');
INSERT INTO `persistences` VALUES ('1278', '1', 'GpumLOz5T2nboGXDWXuXmTN625ZYo1UG', '2018-03-26 02:37:02', '2018-03-26 02:37:02');
INSERT INTO `persistences` VALUES ('1279', '1', 'ghiXHyKsZPjs8HZLsbafypAjFEhRl3Ns', '2018-03-26 02:37:02', '2018-03-26 02:37:02');
INSERT INTO `persistences` VALUES ('1280', '1', '66PGk4pFZnaJ1pjydiVRcSmgOPMMi5Uv', '2018-03-26 02:37:04', '2018-03-26 02:37:04');
INSERT INTO `persistences` VALUES ('1281', '1', 'uePkyUN7ywHCblmPwNVbUHJ7nhGyPxaR', '2018-03-26 02:37:04', '2018-03-26 02:37:04');
INSERT INTO `persistences` VALUES ('1282', '1', 'q5gB4yWQ0BQwuu4m2eFWjzGors3vPE7x', '2018-03-26 02:37:04', '2018-03-26 02:37:04');
INSERT INTO `persistences` VALUES ('1283', '1', 'cjmFqSyYyy6CZJonVI0FUEwl2L9cfuqm', '2018-03-26 02:37:19', '2018-03-26 02:37:19');
INSERT INTO `persistences` VALUES ('1284', '1', '3X0nNc8dBjgHHGunpztP6Wq7QsqETrc0', '2018-03-26 02:37:19', '2018-03-26 02:37:19');
INSERT INTO `persistences` VALUES ('1285', '1', 'roJt3Arauujjj7vo2xA7osCR6174eWy3', '2018-03-26 02:37:51', '2018-03-26 02:37:51');
INSERT INTO `persistences` VALUES ('1286', '1', '4kDDHkAYP4BNjJmRxQOZX8R6J5h7mLu9', '2018-03-26 02:37:52', '2018-03-26 02:37:52');
INSERT INTO `persistences` VALUES ('1287', '1', '4Qtu0rxGBRSj1mj29Z1kSo71Uxda24tD', '2018-03-26 02:37:52', '2018-03-26 02:37:52');
INSERT INTO `persistences` VALUES ('1288', '1', 'C6WMWI0XeB440O4IgavcVv1rS73XymFn', '2018-03-26 02:38:55', '2018-03-26 02:38:55');
INSERT INTO `persistences` VALUES ('1289', '1', 'shfdcCW74IMYCguz7KYd4LE2Sv3BSfID', '2018-03-26 02:38:55', '2018-03-26 02:38:55');
INSERT INTO `persistences` VALUES ('1290', '1', 'IXvJrXHVNO5djbXRsZrxI9u7hN5ja3ng', '2018-03-26 02:39:20', '2018-03-26 02:39:20');
INSERT INTO `persistences` VALUES ('1291', '1', 'kQckjte51DyMIKDPRJXKeqfG6AaeXkod', '2018-03-26 02:39:20', '2018-03-26 02:39:20');
INSERT INTO `persistences` VALUES ('1292', '1', 'D5wmQKgzjdCnKn8stJt5SMRx9MWmXqv1', '2018-03-26 02:41:49', '2018-03-26 02:41:49');
INSERT INTO `persistences` VALUES ('1293', '1', 'UEo6wT6afAOmwerEE3InlFVtBOLJREe3', '2018-03-26 02:41:49', '2018-03-26 02:41:49');
INSERT INTO `persistences` VALUES ('1294', '1', 'loSpEau7RdFXjY5Yl1lCOacPLt5eqHeU', '2018-03-26 02:41:57', '2018-03-26 02:41:57');
INSERT INTO `persistences` VALUES ('1295', '1', '1oC2e1YDVa2Vcm6Dh7zqq2SUxDH3LTQk', '2018-03-26 02:41:57', '2018-03-26 02:41:57');
INSERT INTO `persistences` VALUES ('1296', '1', 'ZrxrPZlC4r7OXtNyCImlFPdXtLxu1B0A', '2018-03-26 02:42:08', '2018-03-26 02:42:08');
INSERT INTO `persistences` VALUES ('1297', '1', 'kMOvcCFbUzLcUXQzHPWdYJ3RKAnawr0w', '2018-03-26 02:42:09', '2018-03-26 02:42:09');
INSERT INTO `persistences` VALUES ('1298', '1', 'Dp6Vo7JCvmjafQ5bSaoxbWviNIhgAylc', '2018-03-26 02:42:20', '2018-03-26 02:42:20');
INSERT INTO `persistences` VALUES ('1299', '1', 'OV35fqiiHvTMkaK5IqwI7M8tNAJQUvgi', '2018-03-26 02:42:20', '2018-03-26 02:42:20');
INSERT INTO `persistences` VALUES ('1300', '1', 'mxC9ZkNz3151ET3RKNep4vRztu7pE4wA', '2018-03-26 02:45:39', '2018-03-26 02:45:39');
INSERT INTO `persistences` VALUES ('1301', '1', 'M6q1OPSka1U2HuuA38SV0h9qdoznizDS', '2018-03-26 02:45:42', '2018-03-26 02:45:42');
INSERT INTO `persistences` VALUES ('1302', '1', 'cw6zGJBadDvmWNXAe6HqqAXcRMktSJhe', '2018-03-26 02:46:26', '2018-03-26 02:46:26');
INSERT INTO `persistences` VALUES ('1303', '1', 'qjHNEQM3rpbJEa0GJTNpnpFmCMWjryrO', '2018-03-26 02:47:29', '2018-03-26 02:47:29');
INSERT INTO `persistences` VALUES ('1304', '1', 'TBK1dgWuSQKGOBYyNz2QaH0ZSqGrrV1M', '2018-03-26 02:47:31', '2018-03-26 02:47:31');
INSERT INTO `persistences` VALUES ('1305', '1', 'j9kNCZdZDOEHNQIuI97TuC1hm0Sa4f4m', '2018-03-26 02:47:31', '2018-03-26 02:47:31');
INSERT INTO `persistences` VALUES ('1306', '1', 'lTtJ84clSUqnOhtZzV25VUvRSyyD8bwv', '2018-03-26 02:47:31', '2018-03-26 02:47:31');
INSERT INTO `persistences` VALUES ('1307', '1', 'sFa9XGhuMRCtXKBtrDuSeJq8FZfBgOlH', '2018-03-26 02:47:44', '2018-03-26 02:47:44');
INSERT INTO `persistences` VALUES ('1308', '1', 'MMZ5l0VjTXzpAj0utVpXLgsEvlcD4YE6', '2018-03-26 02:47:46', '2018-03-26 02:47:46');
INSERT INTO `persistences` VALUES ('1309', '1', 'GjehHxVrSiKDnHTu5hM7kCtjvEK84WMY', '2018-03-26 07:44:12', '2018-03-26 07:44:12');
INSERT INTO `persistences` VALUES ('1310', '1', 'GemDW2swKEzu2EnLN2tWtm5BNOGKQ7Ys', '2018-03-26 08:41:09', '2018-03-26 08:41:09');
INSERT INTO `persistences` VALUES ('1311', '1', '9QtpUjuLxGSvnpCMIQ2Mtm3BrpsThhrR', '2018-03-26 08:41:09', '2018-03-26 08:41:09');
INSERT INTO `persistences` VALUES ('1312', '1', 'Jc7Go2tk0O34xI3ijGL1zv1aLUKZWjnA', '2018-03-26 08:41:14', '2018-03-26 08:41:14');
INSERT INTO `persistences` VALUES ('1313', '1', 'D5koiJCt34u6XvPskgZSBLtSGlMdnozw', '2018-03-26 08:41:14', '2018-03-26 08:41:14');
INSERT INTO `persistences` VALUES ('1314', '1', 'ByJmMXrtBO5ObrPLn3pIDidLend2XvNc', '2018-03-26 08:41:19', '2018-03-26 08:41:19');
INSERT INTO `persistences` VALUES ('1315', '1', 'KbojS4dpGaYnWbgtKq8WvDZ3wzKgUpMr', '2018-03-26 08:41:19', '2018-03-26 08:41:19');
INSERT INTO `persistences` VALUES ('1316', '1', 'QYW6NGG7GVi2weTaiiQtZqGDLyM6wwDy', '2018-03-27 07:51:29', '2018-03-27 07:51:29');
INSERT INTO `persistences` VALUES ('1317', '1', 'hKc8F2MTT5L0YQYNh55a9O5tme7CGSee', '2018-03-27 09:47:05', '2018-03-27 09:47:05');
INSERT INTO `persistences` VALUES ('1318', '1', '1qIvWGj385jftHmraCyGveYcN5e8iLpF', '2018-03-27 09:47:05', '2018-03-27 09:47:05');
INSERT INTO `persistences` VALUES ('1319', '1', 'HBPXrnN3Bk7yIUzfszE5WZGrfyxNtDyp', '2018-03-27 09:47:05', '2018-03-27 09:47:05');
INSERT INTO `persistences` VALUES ('1320', '1', 'cxI2xwCntgzviwLPgrBYGpvFrtB0B0EO', '2018-03-28 09:11:01', '2018-03-28 09:11:01');
INSERT INTO `persistences` VALUES ('1321', '1', 'KHJbdz0qC743gkHZJ1Nfoxf6w9MXNOyb', '2018-03-28 09:11:06', '2018-03-28 09:11:06');
INSERT INTO `persistences` VALUES ('1322', '1', 'Li5u9V0Dg0AeshpIbq4f7DQRkax8pSGb', '2018-03-28 09:11:09', '2018-03-28 09:11:09');
INSERT INTO `persistences` VALUES ('1323', '1', 'MhYLOLJikupG0regU9MH8TiuEJqlkAPA', '2018-03-28 10:08:12', '2018-03-28 10:08:12');
INSERT INTO `persistences` VALUES ('1324', '1', 'E210bEBo00KVapjjD3nyxMGAAgG9ugFc', '2018-03-28 10:08:18', '2018-03-28 10:08:18');
INSERT INTO `persistences` VALUES ('1325', '1', 'bmBMSEaK2XNp7hxPHWfhtH2xmcWgauDg', '2018-03-28 10:08:20', '2018-03-28 10:08:20');
INSERT INTO `persistences` VALUES ('1326', '1', 'd15ynUtsLVc7iJVfg1CpZFp98lNbeYJM', '2018-03-29 03:52:21', '2018-03-29 03:52:21');
INSERT INTO `persistences` VALUES ('1327', '1', 'AGJcodo67fVwUwMW1rnLZa8dQi9WGLAc', '2018-03-29 03:52:29', '2018-03-29 03:52:29');
INSERT INTO `persistences` VALUES ('1328', '1', 'Ocn6jP3WVxOMwxIHe47dxmcO307ebEZ8', '2018-03-29 03:52:29', '2018-03-29 03:52:29');
INSERT INTO `persistences` VALUES ('1329', '1', 'IxwHodxVZOTcgYlgY72l9fWRKjDSzxff', '2018-03-29 03:52:48', '2018-03-29 03:52:48');
INSERT INTO `persistences` VALUES ('1330', '1', 'i53y5U7zNksFkySFezcSvIdO8JIhF2yd', '2018-03-29 03:52:49', '2018-03-29 03:52:49');
INSERT INTO `persistences` VALUES ('1331', '1', '9l9BY0jueGnnlieZwRIFcdLU7PAgNKPP', '2018-03-29 03:52:49', '2018-03-29 03:52:49');
INSERT INTO `persistences` VALUES ('1332', '1', '811PFvXXLvqllv8VgbEN8RE3bWnpo01I', '2018-03-29 03:54:15', '2018-03-29 03:54:15');
INSERT INTO `persistences` VALUES ('1333', '1', 'Qe1X82zxfCsoxfiD0TKqfP6rKlEepo09', '2018-03-29 03:54:15', '2018-03-29 03:54:15');
INSERT INTO `persistences` VALUES ('1334', '1', 'EZMTWD786bHp6AoaLNtm6hHtFsSSadHs', '2018-03-29 03:54:16', '2018-03-29 03:54:16');
INSERT INTO `persistences` VALUES ('1335', '1', 'LT1uXlLuqU9R2S1A6ctxHATb2s73uO2Z', '2018-03-29 05:46:29', '2018-03-29 05:46:29');
INSERT INTO `persistences` VALUES ('1336', '1', 'dqtcPObDIBBpTVRz00VXo2CyzeQ2oFyz', '2018-03-29 07:59:28', '2018-03-29 07:59:28');
INSERT INTO `persistences` VALUES ('1337', '1', '5hWtfolzA1YN1K6PJf6t3Cx4DNlSCQFt', '2018-03-29 07:59:28', '2018-03-29 07:59:28');
INSERT INTO `persistences` VALUES ('1338', '1', 'XAR0JFXSU5eSttz1Wbv1jBWUwi09Eglt', '2018-03-29 08:23:00', '2018-03-29 08:23:00');
INSERT INTO `persistences` VALUES ('1339', '1', 'LCc4AYk7S9SFzvZoE3zoxdM0bp0Ya5Cl', '2018-03-29 08:23:00', '2018-03-29 08:23:00');
INSERT INTO `persistences` VALUES ('1340', '1', 'k3EMgEvxWVmw6uoKsLpjKgWhIUNHDBcA', '2018-03-29 09:31:49', '2018-03-29 09:31:49');
INSERT INTO `persistences` VALUES ('1341', '1', 'GU4FdK8StC9HNf8MZuxivP5eE06vFczk', '2018-03-29 09:31:49', '2018-03-29 09:31:49');
INSERT INTO `persistences` VALUES ('1342', '1', '2gY0YatZYtJyNfIK2kmw9m0LkXMoCXs5', '2018-03-29 09:32:07', '2018-03-29 09:32:07');
INSERT INTO `persistences` VALUES ('1343', '1', 'uiuSF9Ixc8vv6EPKCXqEVSKuMucAgxHW', '2018-03-29 09:32:07', '2018-03-29 09:32:07');
INSERT INTO `persistences` VALUES ('1344', '1', 'ZG5McZkuIlOySFP6UwJ0RedHQoiiZSTi', '2018-03-30 02:29:03', '2018-03-30 02:29:03');
INSERT INTO `persistences` VALUES ('1345', '1', 'FXINe9Jimh9UmQHo8sdSeQ7yUDMjcKHu', '2018-03-30 02:29:20', '2018-03-30 02:29:20');
INSERT INTO `persistences` VALUES ('1346', '1', 'yxYDUFNKH3tJEa0sER955Coxc68xVRdn', '2018-03-30 02:29:20', '2018-03-30 02:29:20');
INSERT INTO `persistences` VALUES ('1347', '1', 'aSf6ECxKXlRGiOu1st6LsJSoH7WGCbZw', '2018-03-30 02:29:38', '2018-03-30 02:29:38');
INSERT INTO `persistences` VALUES ('1348', '1', 'EvqCy4nEw6DXvV7k6D4UvDkDSeyaesWM', '2018-03-30 02:29:38', '2018-03-30 02:29:38');
INSERT INTO `persistences` VALUES ('1349', '1', 'TR8NBA7cqH22jeKxXL77u5zaINse8Jwm', '2018-03-30 03:06:52', '2018-03-30 03:06:52');
INSERT INTO `persistences` VALUES ('1350', '1', 'w92QMY3vLlZH7Z1fM3CswpBH7woBfCBb', '2018-03-30 03:06:52', '2018-03-30 03:06:52');
INSERT INTO `persistences` VALUES ('1351', '1', 'g5UIQ265DK5zQKGwEq1cNM77qqNPEG4i', '2018-03-30 03:07:34', '2018-03-30 03:07:34');
INSERT INTO `persistences` VALUES ('1352', '1', 'nHSR39qO2pnZ4qfNKWs9q30ycpu0msRi', '2018-03-30 03:07:34', '2018-03-30 03:07:34');
INSERT INTO `persistences` VALUES ('1353', '1', 'qYT35dgcGIfVHtZVj7KTZgi3xs2tNQt7', '2018-03-30 03:29:17', '2018-03-30 03:29:17');
INSERT INTO `persistences` VALUES ('1354', '1', 'TA8K3LLZGPGvEggdM5JaOLSErT0MMb7l', '2018-03-30 03:29:17', '2018-03-30 03:29:17');
INSERT INTO `persistences` VALUES ('1355', '1', 'RRw6KfYc4aSio3t5oEEMl473i1kKxC9x', '2018-03-30 03:30:58', '2018-03-30 03:30:58');
INSERT INTO `persistences` VALUES ('1356', '1', 'CKTeu6Y5tWONudYBuKh1bGyywB8wzYsE', '2018-03-30 03:30:58', '2018-03-30 03:30:58');
INSERT INTO `persistences` VALUES ('1357', '1', 'eHfpo4vp7ZuCNLWgFJHl2n3Ue47f0PE2', '2018-03-30 03:31:17', '2018-03-30 03:31:17');
INSERT INTO `persistences` VALUES ('1358', '1', '7r5ELsJjXqRxqSuQwFvTPzKtfn4WS7ls', '2018-03-30 03:31:17', '2018-03-30 03:31:17');
INSERT INTO `persistences` VALUES ('1359', '1', 'c7XBMfqN4GcE7XJFOJ3JJ2RlY2xBtmIM', '2018-03-30 03:31:52', '2018-03-30 03:31:52');
INSERT INTO `persistences` VALUES ('1360', '1', 'cl7uMIqolU2nogi1JPLrRIqMe78PHAqi', '2018-03-30 03:31:52', '2018-03-30 03:31:52');
INSERT INTO `persistences` VALUES ('1361', '1', 'W0vONEZVPYkmloNbSqL9uzLpoHMyYb8D', '2018-03-30 04:05:19', '2018-03-30 04:05:19');
INSERT INTO `persistences` VALUES ('1362', '1', 'qmL2mMTlX03sdCtSVnWuVmoKNMhCfvV3', '2018-03-30 04:05:19', '2018-03-30 04:05:19');
INSERT INTO `persistences` VALUES ('1363', '1', 'tbRbbVuJp72hw19hZVkUWbUm5LR28EFy', '2018-03-30 04:06:48', '2018-03-30 04:06:48');
INSERT INTO `persistences` VALUES ('1364', '1', 'AtZjL27nVHwvaJVNbT8LuuEu88n5XCoM', '2018-03-30 04:06:48', '2018-03-30 04:06:48');
INSERT INTO `persistences` VALUES ('1365', '1', '6vskmMHeKdWRgWhdB0dKQd1DOizkKklQ', '2018-03-30 04:07:13', '2018-03-30 04:07:13');
INSERT INTO `persistences` VALUES ('1366', '1', 'zjEgj7MT3zcGelpUjzXjA6r3k9mak2Gg', '2018-03-30 04:07:13', '2018-03-30 04:07:13');
INSERT INTO `persistences` VALUES ('1367', '1', '1QLit0siThhMg6LIIOCbibUQSgwWrdDw', '2018-03-30 05:38:21', '2018-03-30 05:38:21');
INSERT INTO `persistences` VALUES ('1368', '1', 'WgScOlJhkoVWzP51wtgQcx7sLYdu2PU3', '2018-03-30 05:38:21', '2018-03-30 05:38:21');
INSERT INTO `persistences` VALUES ('1369', '1', 'LddJUP7M81LAFlFyd187nYzzWJZA3HKW', '2018-03-30 05:39:32', '2018-03-30 05:39:32');
INSERT INTO `persistences` VALUES ('1370', '1', 'E9nZ8HHhmyHJV0fZ1xF5QagpVGFRux1O', '2018-03-30 05:39:32', '2018-03-30 05:39:32');
INSERT INTO `persistences` VALUES ('1371', '1', 'UmBSIlzH0ULeXuqCyfh5c3A5CL4pVnvK', '2018-03-30 05:39:55', '2018-03-30 05:39:55');
INSERT INTO `persistences` VALUES ('1372', '1', '8fXS9RjQaZKG1OFEh0FERFQgZX6xCqO3', '2018-03-30 05:39:55', '2018-03-30 05:39:55');
INSERT INTO `persistences` VALUES ('1373', '1', 'EWOdyh19Gj7bfpNllGZD0LuGU0R0dej4', '2018-03-30 05:43:28', '2018-03-30 05:43:28');
INSERT INTO `persistences` VALUES ('1374', '1', '8PpFF22pzIa0rmyN9Kzg0ENriuGXGyTh', '2018-03-30 05:43:28', '2018-03-30 05:43:28');
INSERT INTO `persistences` VALUES ('1375', '1', 'RQqAtxTq3yOyj4OzKXUmn4GlV4udkH8H', '2018-03-30 05:45:29', '2018-03-30 05:45:29');
INSERT INTO `persistences` VALUES ('1376', '1', 'lYWMC89xAJlnRhOOF1nfBPkHP4HkE6rR', '2018-03-30 05:45:29', '2018-03-30 05:45:29');
INSERT INTO `persistences` VALUES ('1377', '1', 'qEHvbOAkceBbVjEQsi0AZQKVAadgqbte', '2018-03-30 05:58:21', '2018-03-30 05:58:21');
INSERT INTO `persistences` VALUES ('1378', '1', '5oexJE8D8YoEtFhTkIoUwUjcT0BbwiPC', '2018-03-30 05:58:21', '2018-03-30 05:58:21');
INSERT INTO `persistences` VALUES ('1379', '1', 'TSK0ZAGU0QcxEmJYL7hoYL5cYTfSWN63', '2018-03-30 06:01:44', '2018-03-30 06:01:44');
INSERT INTO `persistences` VALUES ('1380', '1', 'GI1nHYdaG9BhDJhzrvdUZ8KtBDTPIv4m', '2018-03-30 06:01:45', '2018-03-30 06:01:45');
INSERT INTO `persistences` VALUES ('1381', '1', 'Z3iOLSCz7tTD6EEJFCaj0fknO148gM0b', '2018-03-30 06:03:45', '2018-03-30 06:03:45');
INSERT INTO `persistences` VALUES ('1382', '1', 'K7q764gsndejS6PuLVVSeobzoVdiJGyv', '2018-03-30 06:03:45', '2018-03-30 06:03:45');
INSERT INTO `persistences` VALUES ('1383', '1', 'zWzVjmGNOWYc0BRYZDiA4Kh87Y1DdN66', '2018-03-30 06:07:32', '2018-03-30 06:07:32');
INSERT INTO `persistences` VALUES ('1384', '1', '7dhpYbD8m6HPlA3ITNQm2VzwFnBWBmdc', '2018-03-30 06:07:33', '2018-03-30 06:07:33');
INSERT INTO `persistences` VALUES ('1385', '1', 'L9dTj7HfzgavWG4bg1hw11Ndj9QdDdrF', '2018-03-30 06:22:10', '2018-03-30 06:22:10');
INSERT INTO `persistences` VALUES ('1386', '1', 'Ja5u3KzwilNfkc6hvNqaaMRFlXNXnHNk', '2018-03-30 06:22:10', '2018-03-30 06:22:10');
INSERT INTO `persistences` VALUES ('1387', '1', 'TSJadNp3tUasSxHGiB9Lf3oRxT263o2X', '2018-03-30 06:22:17', '2018-03-30 06:22:17');
INSERT INTO `persistences` VALUES ('1388', '1', 'Xiy7zWYqpV58oSDJ4Qsgt6Ia7TgGJ8kt', '2018-03-30 06:22:17', '2018-03-30 06:22:17');
INSERT INTO `persistences` VALUES ('1389', '1', 'HgLVJX3C2evUjYuj1J77SwkkJRGl9N8m', '2018-03-30 06:22:23', '2018-03-30 06:22:23');
INSERT INTO `persistences` VALUES ('1390', '1', '34xtHDj99YZYhA9f5uUIvF7n39aUiCaC', '2018-03-30 06:22:23', '2018-03-30 06:22:23');
INSERT INTO `persistences` VALUES ('1391', '1', '7FT3W1LIJeOMcTjXgoZKaVk6A3Gf2bhF', '2018-03-30 06:25:52', '2018-03-30 06:25:52');
INSERT INTO `persistences` VALUES ('1392', '1', 'atjkBQSto6Gd3gnCbuilrXwwcQeIviNh', '2018-03-30 06:25:52', '2018-03-30 06:25:52');
INSERT INTO `persistences` VALUES ('1393', '1', 'GnZHvquO3A8ltGMpMThaQnBNuhmQiOGO', '2018-03-30 06:26:53', '2018-03-30 06:26:53');
INSERT INTO `persistences` VALUES ('1394', '1', 'Mg4qusbvQABAAfs10BoH40OcHzZz98XM', '2018-03-30 06:26:53', '2018-03-30 06:26:53');
INSERT INTO `persistences` VALUES ('1395', '1', '8LhwmhSz6aCzEupW95CeSjCaOpeyP2YW', '2018-03-30 06:35:16', '2018-03-30 06:35:16');
INSERT INTO `persistences` VALUES ('1396', '1', '6cvExbkRV3BxrxklpD8H7baoXY2eh3QH', '2018-03-30 06:35:16', '2018-03-30 06:35:16');
INSERT INTO `persistences` VALUES ('1397', '1', 'SacidZU0Tj2ASXOMnQp1qflr4OFpHTkV', '2018-03-30 06:36:10', '2018-03-30 06:36:10');
INSERT INTO `persistences` VALUES ('1398', '1', 'slBN6yuWjUmJaTcUSh3GXdOSsQJG6YJp', '2018-03-30 06:36:10', '2018-03-30 06:36:10');
INSERT INTO `persistences` VALUES ('1399', '1', 'M80Oc1dkuphxBBCJDT8qHtf9TXBWjX6O', '2018-03-30 06:36:52', '2018-03-30 06:36:52');
INSERT INTO `persistences` VALUES ('1400', '1', 'emtuyQoDjpC5yFBTTErEthMjzFrp6bZ4', '2018-03-30 06:36:52', '2018-03-30 06:36:52');
INSERT INTO `persistences` VALUES ('1401', '1', 'mwvmkJXtfarPHLXwg8BvgMIigqYCySpC', '2018-03-30 06:37:10', '2018-03-30 06:37:10');
INSERT INTO `persistences` VALUES ('1402', '1', 'vD5RZ7p9BKS86grzFjgsk51vW9eczpea', '2018-03-30 06:37:10', '2018-03-30 06:37:10');
INSERT INTO `persistences` VALUES ('1403', '1', 'x4nxBCrqn96Iv89Xm4xH66vBljcX8TVG', '2018-03-30 06:38:03', '2018-03-30 06:38:03');
INSERT INTO `persistences` VALUES ('1404', '1', 'FN9Ne26mfkmyBjw5nnTNVM7aJrx3WXdi', '2018-03-30 06:38:03', '2018-03-30 06:38:03');
INSERT INTO `persistences` VALUES ('1405', '1', '2fLCCIcGXn681UFfCAXHg8qVApo7v7OE', '2018-03-30 06:38:20', '2018-03-30 06:38:20');
INSERT INTO `persistences` VALUES ('1406', '1', 'iExiHPmz1sItvJNOmXx1SbzIUFt7LsXt', '2018-03-30 06:38:20', '2018-03-30 06:38:20');
INSERT INTO `persistences` VALUES ('1407', '1', 'bC4wzB8HzpieI9VlBRe903yPT12JLIpW', '2018-03-30 06:39:24', '2018-03-30 06:39:24');
INSERT INTO `persistences` VALUES ('1408', '1', 'P7fCoouemVGMK0y8XAAmLwuNTlvNrV3E', '2018-03-30 06:39:25', '2018-03-30 06:39:25');
INSERT INTO `persistences` VALUES ('1409', '1', 'ptL7KICHDWT0zKUCcbKMJlGKy3k5GPZB', '2018-03-30 06:39:47', '2018-03-30 06:39:47');
INSERT INTO `persistences` VALUES ('1410', '1', 'o4LtzkgVVxZzy51oERT2fDaoCqRjtWok', '2018-03-30 06:39:47', '2018-03-30 06:39:47');
INSERT INTO `persistences` VALUES ('1411', '1', 'G1ldJFGbi6qvrwxlsyLwzQ1D9H0rUOM8', '2018-03-30 06:40:48', '2018-03-30 06:40:48');
INSERT INTO `persistences` VALUES ('1412', '1', 'buUICQSOiXdlQMS7VsS6AxxgGiOr9qrz', '2018-03-30 06:40:50', '2018-03-30 06:40:50');
INSERT INTO `persistences` VALUES ('1413', '1', 'dYt1ZYYqjRYH4JsvMAqnHFJMBsDImXax', '2018-03-30 06:53:39', '2018-03-30 06:53:39');
INSERT INTO `persistences` VALUES ('1414', '1', 'UV1F9VO399t5v27mLUXbDk2OtuMN0Eo7', '2018-03-30 06:53:39', '2018-03-30 06:53:39');
INSERT INTO `persistences` VALUES ('1415', '1', '6A5jzpdNhSg3fRSIWk0MqlNPDqt2BNE0', '2018-03-30 07:10:00', '2018-03-30 07:10:00');
INSERT INTO `persistences` VALUES ('1416', '1', 'A63vUodviUbhm0lsyywMtvlrPneZw2iJ', '2018-03-30 07:10:00', '2018-03-30 07:10:00');
INSERT INTO `persistences` VALUES ('1417', '1', 'QSDXCnjRaxueeEjDGYszUzLhujT9g2Wv', '2018-03-30 07:10:37', '2018-03-30 07:10:37');
INSERT INTO `persistences` VALUES ('1418', '1', 'sMBWtYnYAJMgAVjxNqqu7a6XSvvTx6hM', '2018-03-30 07:10:37', '2018-03-30 07:10:37');
INSERT INTO `persistences` VALUES ('1419', '1', 'GYcvpnmBtd5N71Ln3ax4orwTXF8AlSah', '2018-03-30 07:13:15', '2018-03-30 07:13:15');
INSERT INTO `persistences` VALUES ('1420', '1', 'pW16r6Lg0FPTQuURHTbQhiydqJZo1hx8', '2018-03-30 07:13:16', '2018-03-30 07:13:16');
INSERT INTO `persistences` VALUES ('1421', '1', 'tGX8Gi3xxxzszbwyD28b2McoyJvsBjCG', '2018-03-30 07:15:14', '2018-03-30 07:15:14');
INSERT INTO `persistences` VALUES ('1422', '1', 'J6Lo3UmW0uHGV4nMXNzqWpgqmFN9Zrco', '2018-03-30 07:15:14', '2018-03-30 07:15:14');
INSERT INTO `persistences` VALUES ('1423', '1', '20XbSsIB4L8prKAUdMVtf7c5G6jdcMUC', '2018-03-30 07:16:44', '2018-03-30 07:16:44');
INSERT INTO `persistences` VALUES ('1424', '1', 'BpHVszgPAjklvdMF6XKNTNCN4nHrd2f3', '2018-03-30 07:16:44', '2018-03-30 07:16:44');
INSERT INTO `persistences` VALUES ('1425', '1', 'KeUstrfL0wp4qW4GbPtu5Hcq9WbAaBfs', '2018-03-30 07:17:59', '2018-03-30 07:17:59');
INSERT INTO `persistences` VALUES ('1426', '1', 'I788UXhlN7G8RQxHUJFVzxQA6LV6M2Qz', '2018-03-30 07:17:59', '2018-03-30 07:17:59');
INSERT INTO `persistences` VALUES ('1427', '1', 'Mg9qg9CMDbeepX4irnfF1BXOVgij8Icw', '2018-03-30 07:18:45', '2018-03-30 07:18:45');
INSERT INTO `persistences` VALUES ('1428', '1', 'jwNaDAPmlMvdR7OGahqJSTbB219mzPJO', '2018-03-30 07:18:45', '2018-03-30 07:18:45');
INSERT INTO `persistences` VALUES ('1429', '1', '5UAzMwK3IFIgbJbsB969dojsTDbycpA7', '2018-03-30 07:21:21', '2018-03-30 07:21:21');
INSERT INTO `persistences` VALUES ('1430', '1', '0fBrEyOHIwfTTQaKeiySJAS6xYEx6aiS', '2018-03-30 07:21:21', '2018-03-30 07:21:21');
INSERT INTO `persistences` VALUES ('1431', '1', 'jygkx564gc8gPxH0JnFSo95Je8VD7RCO', '2018-03-30 07:23:20', '2018-03-30 07:23:20');
INSERT INTO `persistences` VALUES ('1432', '1', 'XRGYZioZJLXN2q20nzg9RAbIymEN894D', '2018-03-30 07:23:20', '2018-03-30 07:23:20');
INSERT INTO `persistences` VALUES ('1433', '1', '4N481PV0Ulk2fnt91eSFKAhF1Eny9K0V', '2018-03-30 07:24:39', '2018-03-30 07:24:39');
INSERT INTO `persistences` VALUES ('1434', '1', 'Gc3T1aCOW4aZg75RhW4Cm54a3EUjDs5Y', '2018-03-30 07:24:39', '2018-03-30 07:24:39');
INSERT INTO `persistences` VALUES ('1435', '1', '2ofDDNCzq9jJfVhg8a6bfDmIonlJAkID', '2018-03-30 07:25:42', '2018-03-30 07:25:42');
INSERT INTO `persistences` VALUES ('1436', '1', '6XMniewBMU125xFHMhwPruo1D7u1RyGk', '2018-03-30 07:25:42', '2018-03-30 07:25:42');
INSERT INTO `persistences` VALUES ('1437', '1', 'VH0ZBBlW0TjWReEqzV7nvkoLCjNyZSiB', '2018-03-30 07:26:19', '2018-03-30 07:26:19');
INSERT INTO `persistences` VALUES ('1438', '1', '5NjjsJMHfFH9KpE6qpm48zysAYuln9du', '2018-03-30 07:26:19', '2018-03-30 07:26:19');
INSERT INTO `persistences` VALUES ('1439', '1', 'IXOvg3ZyzmW9hXTuOxHvpYeFyB1jA9Me', '2018-03-30 07:26:37', '2018-03-30 07:26:37');
INSERT INTO `persistences` VALUES ('1440', '1', 'dI29LfzQbmI5Ke9lbx0g4N6UQjszgSkv', '2018-03-30 07:26:41', '2018-03-30 07:26:41');
INSERT INTO `persistences` VALUES ('1441', '1', 'O7OKMRZ7dviS7a8sCvMynmNcRocKPtSc', '2018-03-30 07:29:34', '2018-03-30 07:29:34');
INSERT INTO `persistences` VALUES ('1442', '1', 'k7Ju3CpqjPpfiRxf1355ja9cZHJYHjyT', '2018-03-30 07:29:34', '2018-03-30 07:29:34');
INSERT INTO `persistences` VALUES ('1443', '1', 'xhXja7a0LnQz5xoykZqUfQO78dz3d5m4', '2018-03-30 07:30:07', '2018-03-30 07:30:07');
INSERT INTO `persistences` VALUES ('1444', '1', 'hirqJ5gXM4vovgb4x3iETQ6lSajeltag', '2018-03-30 07:30:07', '2018-03-30 07:30:07');
INSERT INTO `persistences` VALUES ('1445', '1', 'dZg3GHD6QWyXQhKT5OFXqdYIbNBUioMF', '2018-03-30 07:30:31', '2018-03-30 07:30:31');
INSERT INTO `persistences` VALUES ('1446', '1', 'tLqBM2VoFpyExfu84p0eo8ZC8XqeP9B1', '2018-03-30 07:30:32', '2018-03-30 07:30:32');
INSERT INTO `persistences` VALUES ('1447', '1', 'shZJrWcF27ekGElMECMFM6t5Y6N20cCy', '2018-03-30 07:33:06', '2018-03-30 07:33:06');
INSERT INTO `persistences` VALUES ('1448', '1', 'nj6TrxZAC61XqvEWrsoC6MdJbJifBfEa', '2018-03-30 07:33:06', '2018-03-30 07:33:06');
INSERT INTO `persistences` VALUES ('1449', '1', 'DAKu7ElDGOKKHfXrZrBwZN6QY66KkuRn', '2018-03-30 07:33:31', '2018-03-30 07:33:31');
INSERT INTO `persistences` VALUES ('1450', '1', '5v6oUvbqgShfTWLnaPLFtMgj4inl2j82', '2018-03-30 07:33:31', '2018-03-30 07:33:31');
INSERT INTO `persistences` VALUES ('1451', '1', 'BcuOHYVlwyRuuuoCiCwqD7gCjHefR3y6', '2018-03-30 07:34:19', '2018-03-30 07:34:19');
INSERT INTO `persistences` VALUES ('1452', '1', 'getxJdodRPL46OZMui8loy6tX6OHh1Bk', '2018-03-30 07:34:19', '2018-03-30 07:34:19');
INSERT INTO `persistences` VALUES ('1453', '1', 'rjJjkQZO5d17pd7jeCdNUepNdbkQfSn9', '2018-03-30 07:36:20', '2018-03-30 07:36:20');
INSERT INTO `persistences` VALUES ('1454', '1', 'KI04hOG5xD52GHFm5Lc0z4MRpuw3isyV', '2018-03-30 07:36:20', '2018-03-30 07:36:20');
INSERT INTO `persistences` VALUES ('1455', '1', 'TW6pfU3blmKTB1hsrjKPOXxmRVhDzeHE', '2018-03-30 07:37:52', '2018-03-30 07:37:52');
INSERT INTO `persistences` VALUES ('1456', '1', '1m81N3tzun9YvhH2MVs6swULJcHcIiYu', '2018-03-30 07:37:52', '2018-03-30 07:37:52');
INSERT INTO `persistences` VALUES ('1457', '1', 'VC5vasagZdCHD3VSQ4FCFONrmxOIpX5q', '2018-03-30 07:40:02', '2018-03-30 07:40:02');
INSERT INTO `persistences` VALUES ('1458', '1', 'PIR4B2u2WREn0N3hhhMIJYRggtpsex6p', '2018-03-30 07:40:02', '2018-03-30 07:40:02');
INSERT INTO `persistences` VALUES ('1459', '1', 'Otvs31spTS33JPdsNIAFvZvxydwqdwS0', '2018-03-30 07:42:04', '2018-03-30 07:42:04');
INSERT INTO `persistences` VALUES ('1460', '1', 'PJhIVB0ybzhWdBu9yE8yfdrHQuowl2AF', '2018-03-30 07:42:04', '2018-03-30 07:42:04');
INSERT INTO `persistences` VALUES ('1461', '1', '5ToIf7QU1w81vgDoBOMoT7cxmER74q4C', '2018-03-30 07:43:48', '2018-03-30 07:43:48');
INSERT INTO `persistences` VALUES ('1462', '1', 'mSpWFX8qr7cnNP0GUwYjrfZUYJaHiEam', '2018-03-30 07:43:49', '2018-03-30 07:43:49');
INSERT INTO `persistences` VALUES ('1463', '1', 'DVRkE5V86vlkfWz0YDGFugp97F41BvOV', '2018-03-30 07:44:49', '2018-03-30 07:44:49');
INSERT INTO `persistences` VALUES ('1464', '1', 'yDKfbqJtToEbjtCFF1MCJ6ffL8m4HyLP', '2018-03-30 07:44:49', '2018-03-30 07:44:49');
INSERT INTO `persistences` VALUES ('1465', '1', 'SS45lhjb75q2aicirBuGkrwah4fQKMr0', '2018-03-30 07:46:06', '2018-03-30 07:46:06');
INSERT INTO `persistences` VALUES ('1466', '1', '9tHtORzpbCBhSU6kLW29K18YqyM3Cfj8', '2018-03-30 07:46:07', '2018-03-30 07:46:07');
INSERT INTO `persistences` VALUES ('1467', '1', 'nfLNOS1wZlyUgnZomz5lAqBWIvnTHAtn', '2018-03-30 07:47:35', '2018-03-30 07:47:35');
INSERT INTO `persistences` VALUES ('1468', '1', 'kA1Gqu326vhOp23CNKGrKyvCj2eqAl8A', '2018-03-30 07:47:35', '2018-03-30 07:47:35');
INSERT INTO `persistences` VALUES ('1469', '1', 'jnF5v0EMtqVQ8HuuoxGL8fUI3BEjKwp1', '2018-03-30 07:48:51', '2018-03-30 07:48:51');
INSERT INTO `persistences` VALUES ('1470', '1', 'uC7XjnBWjhl6HDySsCUe38cYoqKlEOUy', '2018-03-30 07:48:51', '2018-03-30 07:48:51');
INSERT INTO `persistences` VALUES ('1471', '1', 'wqyOcbfcL0SCscZy6idQJI38haXB5854', '2018-03-30 07:52:53', '2018-03-30 07:52:53');
INSERT INTO `persistences` VALUES ('1472', '1', 'qKarax7qrNuGnIpf9LnlDf60GoaMJ8RX', '2018-03-30 07:52:53', '2018-03-30 07:52:53');
INSERT INTO `persistences` VALUES ('1473', '1', '4u0ZSCQfmTns2ROVbL0kzNkMK2uRKUBz', '2018-03-30 07:53:37', '2018-03-30 07:53:37');
INSERT INTO `persistences` VALUES ('1474', '1', 'DHngDo6cA5KunzbFSBMOA2eJFiC42Ly4', '2018-03-30 07:53:37', '2018-03-30 07:53:37');
INSERT INTO `persistences` VALUES ('1475', '1', 'bmZCvvVlfUxMMvxaF25Tz7Rj1jDQ6NLZ', '2018-03-30 07:54:06', '2018-03-30 07:54:06');
INSERT INTO `persistences` VALUES ('1476', '1', '79lxJvQ7PTreUPlGsDNwNwhgUiUIoeta', '2018-03-30 07:54:06', '2018-03-30 07:54:06');
INSERT INTO `persistences` VALUES ('1477', '1', '7ymNvDY5tovU5tmWZrscpwGz6Knpyi5W', '2018-03-30 07:55:05', '2018-03-30 07:55:05');
INSERT INTO `persistences` VALUES ('1478', '1', 'ardfR4z5zFmG1ulKIKvScZlxpSv6Tcfj', '2018-03-30 07:55:05', '2018-03-30 07:55:05');
INSERT INTO `persistences` VALUES ('1479', '1', 'ZsKnu0VSmwpC0fXSFtVqLPP94pSWrNIs', '2018-03-30 07:58:56', '2018-03-30 07:58:56');
INSERT INTO `persistences` VALUES ('1480', '1', 'eW9KLiWRop17LejANvAS73lT1sK5jefi', '2018-03-30 07:58:56', '2018-03-30 07:58:56');
INSERT INTO `persistences` VALUES ('1481', '1', '21K7FSRHhLz3gjg87W2C282RedXlQJHn', '2018-03-30 08:03:39', '2018-03-30 08:03:39');
INSERT INTO `persistences` VALUES ('1482', '1', '9Q4JnsUGSnrf8g1lOAbTyE1pSQ1JvUH7', '2018-03-30 08:03:39', '2018-03-30 08:03:39');
INSERT INTO `persistences` VALUES ('1483', '1', 'hlK3JrrD2TFwtadu2Xc3emViNlIXKXxV', '2018-03-30 08:04:37', '2018-03-30 08:04:37');
INSERT INTO `persistences` VALUES ('1484', '1', '8X1tiYcaVcBiRif57v4K53sJAYgr3tPS', '2018-03-30 08:04:37', '2018-03-30 08:04:37');
INSERT INTO `persistences` VALUES ('1485', '1', 'YvG6nQtbOeRPtfYqUnYuciSBLHaQc4Xu', '2018-03-30 08:19:43', '2018-03-30 08:19:43');
INSERT INTO `persistences` VALUES ('1486', '1', '61ypNsmDFa6VBgtqi1J1vJUSIrwJ0HiA', '2018-03-30 08:19:43', '2018-03-30 08:19:43');
INSERT INTO `persistences` VALUES ('1487', '1', 'cnzhl1RBeURmbpLGlM6Ae8iS6AosaCJ4', '2018-03-30 08:20:11', '2018-03-30 08:20:11');
INSERT INTO `persistences` VALUES ('1488', '1', 'hOBVVCIGpxzW2MrS0Pe7QTPaDCAXruCc', '2018-03-30 08:20:11', '2018-03-30 08:20:11');
INSERT INTO `persistences` VALUES ('1489', '1', 'Qq2vs3IB2xypikpPhSDtKkM71xSsuHV4', '2018-03-30 08:22:09', '2018-03-30 08:22:09');
INSERT INTO `persistences` VALUES ('1490', '1', 'frN5X5ynbiFH5C0kZ5QYjQLQr8vnxfbd', '2018-03-30 08:22:09', '2018-03-30 08:22:09');
INSERT INTO `persistences` VALUES ('1491', '1', '6kHxz3JUlrBaDqC1hW3XFzv4Ru6yBsfc', '2018-03-30 08:24:48', '2018-03-30 08:24:48');
INSERT INTO `persistences` VALUES ('1492', '1', 'xZuLZdGmn4uvdO31rST2B3BHjEEPSmVM', '2018-03-30 08:24:48', '2018-03-30 08:24:48');
INSERT INTO `persistences` VALUES ('1493', '1', 'sJIPyKopo3PC0X6kpnQHwop5HJbvbkGZ', '2018-03-30 08:25:47', '2018-03-30 08:25:47');
INSERT INTO `persistences` VALUES ('1494', '1', 'y4wOa0HqBJcm7nOWohLXdNCc78I8NjLv', '2018-03-30 08:25:48', '2018-03-30 08:25:48');
INSERT INTO `persistences` VALUES ('1495', '1', 'DQr5ABJx85XYoPRMb8XySD7CPcPm8cCA', '2018-03-30 08:26:42', '2018-03-30 08:26:42');
INSERT INTO `persistences` VALUES ('1496', '1', 'MVQi4yDVRVfvlVeVE8vRF25gZhNoSv1N', '2018-03-30 08:26:42', '2018-03-30 08:26:42');
INSERT INTO `persistences` VALUES ('1497', '1', 's9Hqhz3kXTh8WjicBYR1a9im0Vq8WgdM', '2018-03-30 08:27:56', '2018-03-30 08:27:56');
INSERT INTO `persistences` VALUES ('1498', '1', '0BYIVU1bOVPQRBV6qveMNdUYNcvcorVg', '2018-03-30 08:27:56', '2018-03-30 08:27:56');
INSERT INTO `persistences` VALUES ('1499', '1', 'ivsbtOQN1CnRLnAdfYMCPBhXwJCSu084', '2018-03-30 08:32:42', '2018-03-30 08:32:42');
INSERT INTO `persistences` VALUES ('1500', '1', 'Y9lDuxNLgAc4qhD4RGQjcIYojwqL1HvS', '2018-03-30 08:32:42', '2018-03-30 08:32:42');
INSERT INTO `persistences` VALUES ('1501', '1', 'ofDlVevaCh7jn9wJFijYzV1MVcTnsoM8', '2018-03-30 08:32:58', '2018-03-30 08:32:58');
INSERT INTO `persistences` VALUES ('1502', '1', 'WnMzd1QVv973JuQflZ2mqbOUrzOqvcLT', '2018-03-30 08:32:59', '2018-03-30 08:32:59');
INSERT INTO `persistences` VALUES ('1503', '1', 'KIQN4Hrs8qUP60qvMuVC0buSI7UILav6', '2018-03-30 08:33:08', '2018-03-30 08:33:08');
INSERT INTO `persistences` VALUES ('1504', '1', 'on1o7Q4sYSm8kygmYp9z0ctQqWDwq8Ra', '2018-03-30 08:33:08', '2018-03-30 08:33:08');
INSERT INTO `persistences` VALUES ('1505', '1', '6Cy5dqQYpN5hDATCJuVCkzlEpjluSBch', '2018-03-30 08:34:29', '2018-03-30 08:34:29');
INSERT INTO `persistences` VALUES ('1506', '1', 'DEBZYqf1IL1w2cCDa5cJJui2xQhhI2yy', '2018-03-30 08:34:29', '2018-03-30 08:34:29');
INSERT INTO `persistences` VALUES ('1507', '1', '1shHyUgiDpPFPjM7zwPBAnveOppUcJFn', '2018-03-30 08:36:07', '2018-03-30 08:36:07');
INSERT INTO `persistences` VALUES ('1508', '1', 'r266WIu4aMlmek8qitTOXasZieOBtU47', '2018-03-30 08:36:07', '2018-03-30 08:36:07');
INSERT INTO `persistences` VALUES ('1509', '1', '4h1LlDLEKRqkQYvrqE51ePjTA3BCAKDS', '2018-03-30 08:36:52', '2018-03-30 08:36:52');
INSERT INTO `persistences` VALUES ('1510', '1', 'IexS6a2oZnYlQzmFgzumBXxSOGLb63Yv', '2018-03-30 08:36:52', '2018-03-30 08:36:52');
INSERT INTO `persistences` VALUES ('1511', '1', 'g0YW48sVXMFp3kXFcPmo7zYzcyYLyxX5', '2018-03-30 08:37:07', '2018-03-30 08:37:07');
INSERT INTO `persistences` VALUES ('1512', '1', 'VM6VScs5tvs6KtLSKmHXrkzUDh92y9ie', '2018-03-30 08:37:07', '2018-03-30 08:37:07');
INSERT INTO `persistences` VALUES ('1513', '1', 'snPuMt3BFxPB9NJLjct4yass1pbkaXWF', '2018-03-30 08:37:32', '2018-03-30 08:37:32');
INSERT INTO `persistences` VALUES ('1514', '1', 'bXjUl8XhjBCFJ0tGz3FMBrq6dX1TXok8', '2018-03-30 08:37:50', '2018-03-30 08:37:50');
INSERT INTO `persistences` VALUES ('1515', '1', 'TEO56lFpyhjq3WdlC20t2eL8acRgozrY', '2018-03-30 08:50:41', '2018-03-30 08:50:41');
INSERT INTO `persistences` VALUES ('1516', '1', 'b4vYXzZ7EZUOF0aaqAXAe8ZpJjoD1fXc', '2018-03-30 08:55:21', '2018-03-30 08:55:21');
INSERT INTO `persistences` VALUES ('1517', '1', '7y6OX2BVHo9wV10fHbajRLpFXS8YAupL', '2018-03-30 08:55:21', '2018-03-30 08:55:21');
INSERT INTO `persistences` VALUES ('1518', '1', 'T36SkgfyXHuusKhZzSE56n4w9a4RhqSo', '2018-03-30 09:02:23', '2018-03-30 09:02:23');
INSERT INTO `persistences` VALUES ('1519', '1', '2psu8gXmRkjGDzdMT0LNk4p27O2wSFTV', '2018-03-30 09:02:23', '2018-03-30 09:02:23');
INSERT INTO `persistences` VALUES ('1520', '1', 'VbqaJPnN4zqbzf8UlKh6W1iDO2OBvNkk', '2018-03-30 09:02:38', '2018-03-30 09:02:38');
INSERT INTO `persistences` VALUES ('1521', '1', 'vb8YRCKHrOrOujkyzkIQZ0GbvvNnDStF', '2018-03-30 09:04:16', '2018-03-30 09:04:16');
INSERT INTO `persistences` VALUES ('1522', '1', 'VDEkgwkHdTsG5hqHQfRT6gKQegLNlDU1', '2018-03-30 09:04:23', '2018-03-30 09:04:23');
INSERT INTO `persistences` VALUES ('1523', '1', 'q0syP07OlNliHDEULbOsYngMmlCjNuL0', '2018-03-30 09:04:45', '2018-03-30 09:04:45');
INSERT INTO `persistences` VALUES ('1524', '1', 'GgYdXPCIutdmS64f7z1yuJlsDGjwcxhC', '2018-03-30 09:05:02', '2018-03-30 09:05:02');
INSERT INTO `persistences` VALUES ('1525', '1', 'GZM2yukgaCpDyqVhZFHFvL4J29vi0RUw', '2018-03-30 09:05:14', '2018-03-30 09:05:14');
INSERT INTO `persistences` VALUES ('1526', '1', 'OIM6AKR6UIQomyT2uoKWuOFhrh8OgaNU', '2018-03-30 09:06:22', '2018-03-30 09:06:22');
INSERT INTO `persistences` VALUES ('1527', '1', '3qYdA7sPZGt9gXRPydj7YV5WmrAgKtuy', '2018-03-30 09:06:46', '2018-03-30 09:06:46');
INSERT INTO `persistences` VALUES ('1528', '1', 'r7Kj4Mdlx4126uWOszQWeZkI7zCji3wk', '2018-03-30 09:08:07', '2018-03-30 09:08:07');
INSERT INTO `persistences` VALUES ('1529', '1', 'WNvbJoxGfQPOWpqQZtNQXRAKYHwN5aME', '2018-03-30 09:08:07', '2018-03-30 09:08:07');
INSERT INTO `persistences` VALUES ('1530', '1', '6Q9TkyE0YE4548LInqhWUuoQo7kyvvjD', '2018-03-30 09:08:14', '2018-03-30 09:08:14');
INSERT INTO `persistences` VALUES ('1531', '1', 'zemwz9OaTLVYcefaY85MBHIOI7mAlPPa', '2018-03-30 09:08:33', '2018-03-30 09:08:33');
INSERT INTO `persistences` VALUES ('1532', '1', 'vltyO5KSLJ4e3hSQOWax8xEymw5Nt80c', '2018-03-30 09:11:13', '2018-03-30 09:11:13');
INSERT INTO `persistences` VALUES ('1533', '1', '1wqfptm1HYuMoud1AU3Q3w0OJFBdVYSf', '2018-03-30 09:11:13', '2018-03-30 09:11:13');
INSERT INTO `persistences` VALUES ('1534', '1', 'UDbLx9qf7XLXeZtAq2tc4mNUoOI7REww', '2018-03-30 09:13:38', '2018-03-30 09:13:38');
INSERT INTO `persistences` VALUES ('1535', '1', 'gNugnhRY4Vy4RODkdiZHFU6KhK6DWvSV', '2018-03-30 09:13:38', '2018-03-30 09:13:38');
INSERT INTO `persistences` VALUES ('1536', '1', 'o38PlqTQdwujympEpyd6Z59rcKprO6Kz', '2018-03-30 09:14:44', '2018-03-30 09:14:44');
INSERT INTO `persistences` VALUES ('1537', '1', 'L1t5VwbiuKvuI7zn5MltFmHKwdHGcmyo', '2018-03-30 09:14:45', '2018-03-30 09:14:45');
INSERT INTO `persistences` VALUES ('1538', '1', 'dvALekWUqSGgFV9b2CV8BfphjKmTKczq', '2018-03-30 09:15:09', '2018-03-30 09:15:09');
INSERT INTO `persistences` VALUES ('1539', '1', 'zZPqkrJqmQPqu2re8IaYGvVaSRglk3VK', '2018-03-30 09:15:09', '2018-03-30 09:15:09');
INSERT INTO `persistences` VALUES ('1540', '1', 'WJhwTPa0LUIYpOX5KkRSIjPSEbGDCYWB', '2018-03-30 09:15:33', '2018-03-30 09:15:33');
INSERT INTO `persistences` VALUES ('1541', '1', 'DXQNflcmVJmbqTBEqRjEC2HNA8jqtlkZ', '2018-03-30 09:15:33', '2018-03-30 09:15:33');
INSERT INTO `persistences` VALUES ('1542', '1', 'oLITTDvIqjoloD1GcxgW6cCbBynMsVk5', '2018-04-02 01:09:19', '2018-04-02 01:09:19');
INSERT INTO `persistences` VALUES ('1543', '1', '6qeTTxwMrgBK261yDLeuq4jWV5M7T21g', '2018-04-02 01:09:20', '2018-04-02 01:09:20');
INSERT INTO `persistences` VALUES ('1544', '1', 'GMmbFOQlZMC75cFLJlwU6jatQWjknamr', '2018-04-02 01:09:28', '2018-04-02 01:09:28');
INSERT INTO `persistences` VALUES ('1545', '1', 'aTYBLBas7hRlYw4wrP5oGcceVSILi9O1', '2018-04-02 01:09:29', '2018-04-02 01:09:29');
INSERT INTO `persistences` VALUES ('1546', '1', '9tWlA7l3WEweHPBmD8mwujYeOhcFZTqE', '2018-04-02 01:21:20', '2018-04-02 01:21:20');
INSERT INTO `persistences` VALUES ('1547', '1', 'aiR3YxSNtFKdOvNjF7P0NqOuCv0NK7K3', '2018-04-02 01:21:20', '2018-04-02 01:21:20');
INSERT INTO `persistences` VALUES ('1548', '1', '7TcCdQjDBc1DM74tau2YIRaCO9greQ6s', '2018-04-02 01:21:42', '2018-04-02 01:21:42');
INSERT INTO `persistences` VALUES ('1549', '1', 'hh313FIRBqiw9UmbjfrqOzuPsigHyPTp', '2018-04-02 01:21:42', '2018-04-02 01:21:42');
INSERT INTO `persistences` VALUES ('1550', '1', 'jz1FY8iOMHaM8020dEYO5jnQKlk0IbZf', '2018-04-02 01:23:24', '2018-04-02 01:23:24');
INSERT INTO `persistences` VALUES ('1551', '1', 'jBGAQn5WP8pV9A71v9eGWzySsYQoQRnU', '2018-04-02 01:23:24', '2018-04-02 01:23:24');
INSERT INTO `persistences` VALUES ('1552', '1', 'IlNcSUWKxpjn3Vx7DgZJsveilaYFRPk4', '2018-04-02 01:27:16', '2018-04-02 01:27:16');
INSERT INTO `persistences` VALUES ('1553', '1', 'GuqEa0ktGy2xi72lSoVmc81sVD7nnIac', '2018-04-02 01:27:16', '2018-04-02 01:27:16');
INSERT INTO `persistences` VALUES ('1554', '1', 'JlBsJ4AmLf7DGYAzLhy7hTkawGiU0dip', '2018-04-02 01:34:44', '2018-04-02 01:34:44');
INSERT INTO `persistences` VALUES ('1555', '1', 'ZxTuqQiIhvfVVDc5fXhIJSAdrgCVim3N', '2018-04-02 01:34:44', '2018-04-02 01:34:44');
INSERT INTO `persistences` VALUES ('1556', '1', 'TgF4rLSLzhHULogx9JvvK1UpaEChxqd0', '2018-04-02 01:39:51', '2018-04-02 01:39:51');
INSERT INTO `persistences` VALUES ('1557', '1', '6Sh91fXuL4SgeVOySN6YJSzT34hY2Tz6', '2018-04-02 01:39:51', '2018-04-02 01:39:51');
INSERT INTO `persistences` VALUES ('1558', '1', 'lT56ukn9ivxOo7XzhavNb7cVxA9bQhFU', '2018-04-02 01:41:24', '2018-04-02 01:41:24');
INSERT INTO `persistences` VALUES ('1559', '1', 'ZawHXblAmYQ1IVPa7sltqiic2nR8w2qa', '2018-04-02 01:41:24', '2018-04-02 01:41:24');
INSERT INTO `persistences` VALUES ('1560', '1', 'IN5WqmszQzLdAt5XkTtLZeE3pIT4K4Ne', '2018-04-02 01:42:49', '2018-04-02 01:42:49');
INSERT INTO `persistences` VALUES ('1561', '1', 'dT4Oa0IXoGaaMmWlx1TlbRiNuvKZp8at', '2018-04-02 01:42:49', '2018-04-02 01:42:49');
INSERT INTO `persistences` VALUES ('1562', '1', 'Od5ozQMAIaZmJWdzPVkWPjHd6bQEjxfC', '2018-04-02 01:43:44', '2018-04-02 01:43:44');
INSERT INTO `persistences` VALUES ('1563', '1', '3y3OtHN1L7lF2EfKjq1gWZQE7HGFByja', '2018-04-02 01:43:44', '2018-04-02 01:43:44');
INSERT INTO `persistences` VALUES ('1564', '1', 'ZOtByfExRnQzoMcRExqtXTFVEL25a8CH', '2018-04-02 01:46:16', '2018-04-02 01:46:16');
INSERT INTO `persistences` VALUES ('1565', '1', '6yGaLhv6cBc3Lovk8jyxSemQxPiOBPvC', '2018-04-02 01:46:16', '2018-04-02 01:46:16');
INSERT INTO `persistences` VALUES ('1566', '1', '7dlHoYKJIYtpkUldZd20wGwP5x2rSori', '2018-04-02 01:54:30', '2018-04-02 01:54:30');
INSERT INTO `persistences` VALUES ('1567', '1', 'JgkrMWCxH7yONjYTRi2AIEE616StnERr', '2018-04-02 01:54:30', '2018-04-02 01:54:30');
INSERT INTO `persistences` VALUES ('1568', '1', 'NJX6lRw1E8mOHPvmAxP045hc5EvQiUEo', '2018-04-02 01:56:55', '2018-04-02 01:56:55');
INSERT INTO `persistences` VALUES ('1569', '1', 'CIugSb4csACjz4gSK4hcgIK3ZTfyvRqH', '2018-04-02 01:56:56', '2018-04-02 01:56:56');
INSERT INTO `persistences` VALUES ('1570', '1', 'pXM96O81p0EElBLv0spUU5MMTwJ1vFlu', '2018-04-02 01:57:52', '2018-04-02 01:57:52');
INSERT INTO `persistences` VALUES ('1571', '1', 'sTaiYcRDsw2y2INaa6waHcFlDT0eBtft', '2018-04-02 01:57:52', '2018-04-02 01:57:52');
INSERT INTO `persistences` VALUES ('1572', '1', 'AWkxKWUqxqyU2cfOqFWcTVihxTzleQ1A', '2018-04-02 01:58:46', '2018-04-02 01:58:46');
INSERT INTO `persistences` VALUES ('1573', '1', 'YgTwcBp9qzrxbihH76mHO2OK0HbDDtQ5', '2018-04-02 01:58:46', '2018-04-02 01:58:46');
INSERT INTO `persistences` VALUES ('1574', '1', 'WZxIVBejIdng3xHbgNMCkU5VbIZ78lgS', '2018-04-02 01:59:19', '2018-04-02 01:59:19');
INSERT INTO `persistences` VALUES ('1575', '1', 'yeNX7lhknPdZr8P0PHIoeHnPGW2FjnNO', '2018-04-02 01:59:19', '2018-04-02 01:59:19');
INSERT INTO `persistences` VALUES ('1576', '1', 'FSQIiV0gVW1VopcpjyomY2IlxQW50gFk', '2018-04-02 02:02:09', '2018-04-02 02:02:09');
INSERT INTO `persistences` VALUES ('1577', '1', '7n4Zsj4XTlihhMJOkXFUig8cNBHI0olR', '2018-04-02 02:02:09', '2018-04-02 02:02:09');
INSERT INTO `persistences` VALUES ('1578', '1', 'Kh7VHuHLc5jMVeZoHEgpLb3mYR1txOOn', '2018-04-02 02:03:48', '2018-04-02 02:03:48');
INSERT INTO `persistences` VALUES ('1579', '1', 'TpV42vb4lJRkt1VjH6TlMtXGe6jqnTJw', '2018-04-02 02:03:48', '2018-04-02 02:03:48');
INSERT INTO `persistences` VALUES ('1580', '1', 'Tlay6gGxGAfasFzqM6LpP4dgWq056H7t', '2018-04-02 02:04:46', '2018-04-02 02:04:46');
INSERT INTO `persistences` VALUES ('1581', '1', '203OJqnfqpgiYESbsa1jRsUDzyTJuHSh', '2018-04-02 02:04:47', '2018-04-02 02:04:47');
INSERT INTO `persistences` VALUES ('1582', '1', 'lHjtxJragCtqAq39FGobwNsXUZ8PWnIM', '2018-04-02 02:09:44', '2018-04-02 02:09:44');
INSERT INTO `persistences` VALUES ('1583', '1', 'veZ9pwKt6N370kJZZMPmCqGXB3dNxrR4', '2018-04-02 02:09:44', '2018-04-02 02:09:44');
INSERT INTO `persistences` VALUES ('1584', '1', 'zK5EKu5E2xMIzeMcxVDirtNaDRNkpJIk', '2018-04-02 02:10:32', '2018-04-02 02:10:32');
INSERT INTO `persistences` VALUES ('1585', '1', 'CmM4XezRXDmaRKjFmSAsXwge3mjPHgHr', '2018-04-02 02:10:32', '2018-04-02 02:10:32');
INSERT INTO `persistences` VALUES ('1586', '1', 'ycPgn9S8P1aexK7TH806DLO6Ph3XDzcA', '2018-04-02 02:11:57', '2018-04-02 02:11:57');
INSERT INTO `persistences` VALUES ('1587', '1', 'XpP16wcoZtVFCbYsbVNjEXF5vi0AX8Jz', '2018-04-02 02:11:57', '2018-04-02 02:11:57');
INSERT INTO `persistences` VALUES ('1588', '1', 'UzRedDvqNvEYS6csrJw6I2l2Fv0hDrMf', '2018-04-02 02:13:20', '2018-04-02 02:13:20');
INSERT INTO `persistences` VALUES ('1589', '1', 'CNziWK9OeyRG7pK5hNRQzwuNsT63qYEd', '2018-04-02 02:13:21', '2018-04-02 02:13:21');
INSERT INTO `persistences` VALUES ('1590', '1', 'iIgKYHIbUtDvx3142ms6mebhFzFRH2jm', '2018-04-02 02:14:58', '2018-04-02 02:14:58');
INSERT INTO `persistences` VALUES ('1591', '1', 'e55E3Kt6gzRBAy6GTNzlp1CXHUx7BlWf', '2018-04-02 02:14:58', '2018-04-02 02:14:58');
INSERT INTO `persistences` VALUES ('1592', '1', 'eL60sYdu2bJogmPbj1o3WoK2Ufa719Aq', '2018-04-02 02:15:24', '2018-04-02 02:15:24');
INSERT INTO `persistences` VALUES ('1593', '1', 'xFddUBTUxkIVCyCrktOIVLN4AsHvQRuA', '2018-04-02 02:15:24', '2018-04-02 02:15:24');
INSERT INTO `persistences` VALUES ('1594', '1', '8h2xPe7IrStOtpShSmBWavc30kTGYY8T', '2018-04-02 02:15:40', '2018-04-02 02:15:40');
INSERT INTO `persistences` VALUES ('1595', '1', 'BNXGzl2der0Gjdhrv75Xs8wblNFCGFYH', '2018-04-02 02:15:40', '2018-04-02 02:15:40');
INSERT INTO `persistences` VALUES ('1596', '1', 'uuls71DFYmiRMMAs5d7zASBy6bviOoX9', '2018-04-02 02:15:50', '2018-04-02 02:15:50');
INSERT INTO `persistences` VALUES ('1597', '1', '7Oe4nJ8dYtq9qzDuYkYAaZkUghMOGSBZ', '2018-04-02 02:15:50', '2018-04-02 02:15:50');
INSERT INTO `persistences` VALUES ('1598', '1', 'YwQFS2kRJ0A4w2wynAOCJ8BO5gqew4Gz', '2018-04-02 02:16:23', '2018-04-02 02:16:23');
INSERT INTO `persistences` VALUES ('1599', '1', 'sF3WzcyZqLjP6QI28LSx7MNbxBT1ar7C', '2018-04-02 02:16:24', '2018-04-02 02:16:24');
INSERT INTO `persistences` VALUES ('1600', '1', '0u2D53hPxs0s9BkEgOEJO0uypmG7dRlb', '2018-04-02 02:16:42', '2018-04-02 02:16:42');
INSERT INTO `persistences` VALUES ('1601', '1', '0xMrLfBv6bF5a5FXAzsJZMmpAQfCN9NI', '2018-04-02 02:16:42', '2018-04-02 02:16:42');
INSERT INTO `persistences` VALUES ('1602', '1', 'ZUsczsQaEbXl4S01llFWxmItHoifvdJj', '2018-04-02 07:14:01', '2018-04-02 07:14:01');
INSERT INTO `persistences` VALUES ('1603', '1', '6dy5BIw5BF79UQk5yYa7MEtwsMMgO1ok', '2018-04-02 07:14:02', '2018-04-02 07:14:02');
INSERT INTO `persistences` VALUES ('1604', '1', 'j4OwMz38noX4KIHOaXN80uF1xddzk8B1', '2018-04-02 07:14:02', '2018-04-02 07:14:02');
INSERT INTO `persistences` VALUES ('1605', '1', 'zEZteJ9nhz9tcbvSGYt6z2qGMIwElgYj', '2018-04-02 07:34:33', '2018-04-02 07:34:33');
INSERT INTO `persistences` VALUES ('1606', '1', 'NxTaa5AezLRuHSztLj1XcMeIb3GsRDah', '2018-04-02 07:34:33', '2018-04-02 07:34:33');
INSERT INTO `persistences` VALUES ('1607', '1', 'vu2oZxrjwM9CTVD3NBlGAAYSyA1sexzb', '2018-04-02 07:58:33', '2018-04-02 07:58:33');
INSERT INTO `persistences` VALUES ('1608', '1', 'lTW5rgeEL1BXfKH9bungJKj8VQFfEKc4', '2018-04-02 07:58:36', '2018-04-02 07:58:36');
INSERT INTO `persistences` VALUES ('1609', '1', 'QklzArBvfPHbZyz4M1F6o87O0hu9MboG', '2018-04-02 09:20:28', '2018-04-02 09:20:28');
INSERT INTO `persistences` VALUES ('1610', '1', 'AlSKRTlFxOEQIcbreN5wkAhLNaeaj2Wi', '2018-04-02 09:20:31', '2018-04-02 09:20:31');
INSERT INTO `persistences` VALUES ('1611', '1', 'LJ7PhdUX2p0hM8PdCErdRbGOte8arhth', '2018-04-02 09:20:35', '2018-04-02 09:20:35');
INSERT INTO `persistences` VALUES ('1612', '1', 'EDhHwj2XxDoFQCx8XLwvt0R3sBWjIWzb', '2018-04-02 09:20:42', '2018-04-02 09:20:42');
INSERT INTO `persistences` VALUES ('1613', '1', 'cDgTUMhaP1o0HAYFb7WaEDptzid4qbcT', '2018-04-02 09:20:42', '2018-04-02 09:20:42');
INSERT INTO `persistences` VALUES ('1614', '1', 'HOXAlFLmrl0n6wwrylStimXhUdnQwrBB', '2018-04-02 09:22:02', '2018-04-02 09:22:02');
INSERT INTO `persistences` VALUES ('1615', '1', 'G4SP8SNS8pyEcnfua1R0W115ZazCnP0F', '2018-04-02 09:42:24', '2018-04-02 09:42:24');
INSERT INTO `persistences` VALUES ('1618', '1', 'xCziNXOXWgDdCAGVL6Kb1MaRyz4TBtnE', '2018-04-03 03:25:41', '2018-04-03 03:25:41');
INSERT INTO `persistences` VALUES ('1633', '1', 'kBG3MHLJ5g8sshFv7fvoMUOt1LDuzmtG', '2018-04-03 05:24:19', '2018-04-03 05:24:19');
INSERT INTO `persistences` VALUES ('1634', '1', 'GrQjM532Bb6FktzpOZAUZ4XY2o02YYnT', '2018-04-03 05:24:21', '2018-04-03 05:24:21');
INSERT INTO `persistences` VALUES ('1635', '1', 'FuJa0H2ZPx4Q3rEu9AIDwIrPvSJRhrBi', '2018-04-03 05:24:24', '2018-04-03 05:24:24');
INSERT INTO `persistences` VALUES ('1645', '1', 'tuGdniBrQneoNdthmGoPFYkoW0ZftO5A', '2018-04-03 05:47:47', '2018-04-03 05:47:47');
INSERT INTO `persistences` VALUES ('1646', '1', 'q7GvbDGQrDhm4VFZKiYjDL8Uu02CJ41v', '2018-04-03 05:48:05', '2018-04-03 05:48:05');
INSERT INTO `persistences` VALUES ('1647', '1', 'w5NqdcmWj9dWzIIn7yWBi3yDmbRENR4G', '2018-04-03 05:52:42', '2018-04-03 05:52:42');
INSERT INTO `persistences` VALUES ('1648', '1', 'mJr5u15o3X4msdEPAMzG3ItaGnbpCPQ8', '2018-04-03 05:52:55', '2018-04-03 05:52:55');
INSERT INTO `persistences` VALUES ('1649', '1', 'lOOwPb4iLq6nlsEbsKLdhyd0KCJrzVFo', '2018-04-03 05:52:55', '2018-04-03 05:52:55');
INSERT INTO `persistences` VALUES ('1650', '1', 'cMb4B2po7qrvowJvlXCr8kSHM3pmIhLK', '2018-04-03 05:52:55', '2018-04-03 05:52:55');
INSERT INTO `persistences` VALUES ('1651', '1', 'm5tmefWpxHL3OlbANoNHmzHMPVDJLTJb', '2018-04-03 05:53:00', '2018-04-03 05:53:00');
INSERT INTO `persistences` VALUES ('1652', '1', 'pjoBsbvl0lHqGv0chtigQwkBoZqLrmcy', '2018-04-03 05:53:07', '2018-04-03 05:53:07');
INSERT INTO `persistences` VALUES ('1653', '1', 'I9YuIXCDyiSWCzlikRgugMIDRoeSsbWZ', '2018-04-03 05:53:07', '2018-04-03 05:53:07');
INSERT INTO `persistences` VALUES ('1654', '1', 'kYnKQqv2WO71M4NYVeI2kRmJMZD39qcq', '2018-04-03 05:53:07', '2018-04-03 05:53:07');
INSERT INTO `persistences` VALUES ('1655', '1', 'fiHJ8SU6Yu6L0eWNHrmORuIzPPJk54UO', '2018-04-03 05:53:12', '2018-04-03 05:53:12');
INSERT INTO `persistences` VALUES ('1658', '1', 'vgQf7a9XMJ1InuHNGyIBUUNKvZmwNu34', '2018-04-03 06:11:24', '2018-04-03 06:11:24');
INSERT INTO `persistences` VALUES ('1659', '1', 'cSl6kPLJeJSD1lEwVSjoVm27rCKIz1ZV', '2018-04-03 06:11:38', '2018-04-03 06:11:38');
INSERT INTO `persistences` VALUES ('1660', '1', 'A7ZR52EkuUkNTEmlrjJhaielhDgKRBsn', '2018-04-03 06:12:41', '2018-04-03 06:12:41');
INSERT INTO `persistences` VALUES ('1662', '1', 'CgCSTzhMykpisw4GpvuvZu6pozGRVgW6', '2018-04-03 06:35:47', '2018-04-03 06:35:47');
INSERT INTO `persistences` VALUES ('1663', '1', 'B5du5PNZHkPHIqTShQwfGgp6JA8ufX1B', '2018-04-03 06:36:08', '2018-04-03 06:36:08');
INSERT INTO `persistences` VALUES ('1664', '1', 'dC5auwOE65nZnSgETaiaSmvDZGrsqZ5L', '2018-04-03 06:46:53', '2018-04-03 06:46:53');
INSERT INTO `persistences` VALUES ('1665', '1', 'dITepcH7lJDL55SLrN334tGJ9nyiwyWv', '2018-04-03 06:47:15', '2018-04-03 06:47:15');
INSERT INTO `persistences` VALUES ('1666', '1', 'njkd0iNqgsU4FOfSt68YAf1zgWyDkZ6T', '2018-04-03 06:53:57', '2018-04-03 06:53:57');
INSERT INTO `persistences` VALUES ('1667', '1', 'pfy2ksFXsJwCYgqayKGiKLvujrGClzcJ', '2018-04-03 06:55:01', '2018-04-03 06:55:01');
INSERT INTO `persistences` VALUES ('1668', '1', '1m5Fn6IcDxY7IxuyRWU42KS09mslOHla', '2018-04-03 06:55:34', '2018-04-03 06:55:34');
INSERT INTO `persistences` VALUES ('1669', '1', 'aaZZ2lMDRrbRQ8T9wGzf7BTc59CpZYEi', '2018-04-03 06:55:52', '2018-04-03 06:55:52');
INSERT INTO `persistences` VALUES ('1670', '1', '7CGekvGCG7mObzyzrmjMsyM6vMpw19VO', '2018-04-03 06:57:42', '2018-04-03 06:57:42');
INSERT INTO `persistences` VALUES ('1671', '1', 'mPJkIUW6bD8rxTGErN95kvEzeb6lyHx1', '2018-04-03 06:58:28', '2018-04-03 06:58:28');
INSERT INTO `persistences` VALUES ('1672', '1', '5BJo9DCc5XChheFQtTieGnM0DFao1aUa', '2018-04-03 06:58:44', '2018-04-03 06:58:44');
INSERT INTO `persistences` VALUES ('1673', '1', 'P1SgktXqsoAeogT4aUll3ZBsBaWD7gV5', '2018-04-03 06:59:14', '2018-04-03 06:59:14');
INSERT INTO `persistences` VALUES ('1674', '1', 'GLpF2LNcZTj9yqLTurflITkoAurTYhcN', '2018-04-03 07:00:14', '2018-04-03 07:00:14');
INSERT INTO `persistences` VALUES ('1675', '1', 'ELtiICndV6LbQDwOcvVAFMoEXXrY3AkD', '2018-04-03 07:01:56', '2018-04-03 07:01:56');
INSERT INTO `persistences` VALUES ('1676', '1', 'sRcRgOI4IGzE5Kt1dNOnF3i6drjfkspz', '2018-04-03 07:02:17', '2018-04-03 07:02:17');
INSERT INTO `persistences` VALUES ('1677', '1', 'DxoovfSIWyYrgb2ki8wKQEDnK7qSGAYd', '2018-04-03 07:02:26', '2018-04-03 07:02:26');
INSERT INTO `persistences` VALUES ('1678', '1', '8OG1dVlC0sPI8fXArIxDiSDLgghqIP3G', '2018-04-03 07:02:31', '2018-04-03 07:02:31');
INSERT INTO `persistences` VALUES ('1679', '1', 'YlxLIHnzMs647KMw4xujUXP75mzNaLfV', '2018-04-03 07:07:27', '2018-04-03 07:07:27');
INSERT INTO `persistences` VALUES ('1680', '1', 'WFrGWfj8e6og1TqoxfAzi2f0tlpVJOYs', '2018-04-03 07:07:36', '2018-04-03 07:07:36');
INSERT INTO `persistences` VALUES ('1681', '1', '49AS28fDbnRO55n0D2MSCSRF9eiKULJt', '2018-04-03 07:14:43', '2018-04-03 07:14:43');
INSERT INTO `persistences` VALUES ('1682', '1', '3L9D0p14pLch3XQTgbAFGc2sE9fvJUUX', '2018-04-03 07:14:57', '2018-04-03 07:14:57');
INSERT INTO `persistences` VALUES ('1683', '1', 'I535MAULOl7YYme3mltOa76u3uSR07HS', '2018-04-03 07:14:58', '2018-04-03 07:14:58');
INSERT INTO `persistences` VALUES ('1684', '1', 'HSGtiyIspr1Xy9vP0R76jyND84AWkgFb', '2018-04-03 07:22:26', '2018-04-03 07:22:26');
INSERT INTO `persistences` VALUES ('1685', '1', 'T4xr6YSJk52nxCb0xpoH1a3Nft0yCLiz', '2018-04-03 07:23:46', '2018-04-03 07:23:46');
INSERT INTO `persistences` VALUES ('1686', '1', 'OO3hq4iTz64gqW4nTJQOR8pqYM2ZELX1', '2018-04-03 07:27:04', '2018-04-03 07:27:04');
INSERT INTO `persistences` VALUES ('1687', '1', 'S2swc8bzndTA14XdC0NCVJywzFtE0B2S', '2018-04-03 07:27:06', '2018-04-03 07:27:06');
INSERT INTO `persistences` VALUES ('1688', '1', 'WatJdDVulVtQFYzPFn325pNEZMptTlsf', '2018-04-03 07:30:54', '2018-04-03 07:30:54');
INSERT INTO `persistences` VALUES ('1689', '1', 'pjc0ZwX0LC9DoIlKbWuoUOiBJ3OuMU7K', '2018-04-03 07:30:57', '2018-04-03 07:30:57');
INSERT INTO `persistences` VALUES ('1690', '1', 'GjSrdIXkuwx4YuLLksb3LuUUJTWC8hYe', '2018-04-03 07:31:14', '2018-04-03 07:31:14');
INSERT INTO `persistences` VALUES ('1691', '1', 'eo5AWObUJs8HVtuXL4zcXarh97WmuUrQ', '2018-04-03 07:31:15', '2018-04-03 07:31:15');
INSERT INTO `persistences` VALUES ('1692', '1', 'hTt6utkxxNuQwZMzNSVakyfobA5gV0Vj', '2018-04-03 07:31:43', '2018-04-03 07:31:43');
INSERT INTO `persistences` VALUES ('1693', '1', 'K5GkyCgxmZix0qqtG6nKsT3whVtpz5Zx', '2018-04-03 07:31:44', '2018-04-03 07:31:44');
INSERT INTO `persistences` VALUES ('1695', '1', 'tX3ygkWJRNx2turmQWU4KBV7JomFrCHz', '2018-04-03 08:36:42', '2018-04-03 08:36:42');
INSERT INTO `persistences` VALUES ('1696', '1', '0Viebiz2TlKGjkWxezkvxYJzh2VUpXYA', '2018-04-03 09:11:58', '2018-04-03 09:11:58');
INSERT INTO `persistences` VALUES ('1697', '1', 'XjwZyDSPI4zkT5ttPbCRiBmnSj8Vd3ya', '2018-04-03 09:12:04', '2018-04-03 09:12:04');
INSERT INTO `persistences` VALUES ('1698', '1', 'epAsQwLnxLfQXKk7dj6jxtcLPWEUIUQi', '2018-04-03 09:12:04', '2018-04-03 09:12:04');
INSERT INTO `persistences` VALUES ('1699', '1', 'XtmVh4AeuyTT1kdNj1sGTlSdGtsvlRkM', '2018-04-03 09:13:27', '2018-04-03 09:13:27');
INSERT INTO `persistences` VALUES ('1700', '1', 'xACsWcYEOLW8Xuhtpo1yT1uwF3x83SGH', '2018-04-03 09:13:27', '2018-04-03 09:13:27');
INSERT INTO `persistences` VALUES ('1701', '1', 'cnjvMsLwJxWhkkLzEDeXzIoqlVukU32M', '2018-04-03 09:14:50', '2018-04-03 09:14:50');
INSERT INTO `persistences` VALUES ('1702', '1', 'LBp4QyhJCEvwJnRpOehhSh1J9oTsu4KI', '2018-04-03 09:14:53', '2018-04-03 09:14:53');
INSERT INTO `persistences` VALUES ('1707', '1', 'f3ZUf9H8kRtiJeHpsYkocpS8plu8oAt1', '2018-04-04 02:04:39', '2018-04-04 02:04:39');
INSERT INTO `persistences` VALUES ('1708', '1', 'zQIyuPGyP5kDZ4CUCYKG2RIJAvAGcHX9', '2018-04-04 02:04:44', '2018-04-04 02:04:44');
INSERT INTO `persistences` VALUES ('1709', '1', 'baSRysoNgwRtoBwf6uOWZT1eq2tfqc3l', '2018-04-04 03:45:21', '2018-04-04 03:45:21');
INSERT INTO `persistences` VALUES ('1710', '1', '9C6WBvs02xPQcD4HvskHBJB07xhd2xoZ', '2018-04-04 05:56:36', '2018-04-04 05:56:36');
INSERT INTO `persistences` VALUES ('1714', '1', 'HWUZVyXjOjIhasSN4C1Mx922UI5awsXV', '2018-04-17 12:30:45', '2018-04-17 12:30:45');
INSERT INTO `persistences` VALUES ('1715', '1', 'vxeh3hnLpbFL5YmzwLtBBn5BUkdbFgZO', '2018-04-17 12:30:50', '2018-04-17 12:30:50');
INSERT INTO `persistences` VALUES ('1716', '1', 'hz8yTtL5M2wS3YJU3CKjL5E69Hossmza', '2018-04-17 12:31:17', '2018-04-17 12:31:17');
INSERT INTO `persistences` VALUES ('1717', '1', 'peMhH3kJJ8jzbQrqP0sKIG62yvtBQ3iS', '2018-04-17 12:31:32', '2018-04-17 12:31:32');
INSERT INTO `persistences` VALUES ('1718', '1', 'jCRKeYCYXan7yOm3WMPNX0d4CMPQErja', '2018-04-17 12:31:39', '2018-04-17 12:31:39');
INSERT INTO `persistences` VALUES ('1719', '1', '8a94x67iVMwSatqtFty7d0pQIbMAezco', '2018-04-17 12:31:52', '2018-04-17 12:31:52');
INSERT INTO `persistences` VALUES ('1720', '1', 'Pr7zMArrclIVtmtkEubIg3GZS92KFVZ5', '2018-04-17 12:31:53', '2018-04-17 12:31:53');
INSERT INTO `persistences` VALUES ('1721', '1', 'aZO6pqrGfFdBNvMpdCZ8gSLEc6SnnFAl', '2018-04-17 12:31:55', '2018-04-17 12:31:55');
INSERT INTO `persistences` VALUES ('1722', '1', 'yJ5s4qHbSy1cmrnfhmTP9mKObOPBgcLv', '2018-04-17 12:32:11', '2018-04-17 12:32:11');
INSERT INTO `persistences` VALUES ('1723', '1', 'CDnmQcIWtjWTBmn0oMwExyyvYS3vCoqu', '2018-04-17 12:35:04', '2018-04-17 12:35:04');
INSERT INTO `persistences` VALUES ('1724', '1', 'EJct2F0dOfwV1dFHMj2FTcXwBJ0rvMye', '2018-04-17 12:35:09', '2018-04-17 12:35:09');
INSERT INTO `persistences` VALUES ('1725', '1', 'ISK01WtGzv5jOdUbjI8XutGnfJNBFFbe', '2018-04-17 12:35:18', '2018-04-17 12:35:18');
INSERT INTO `persistences` VALUES ('1726', '1', '6X5nR0clhfBKNjH3okkwZNHRUIrJwH8I', '2018-04-17 12:35:27', '2018-04-17 12:35:27');
INSERT INTO `persistences` VALUES ('1727', '1', '9OaZ5M5KGcqAVYID7TqsEZ3TcTqhte29', '2018-04-17 12:36:17', '2018-04-17 12:36:17');
INSERT INTO `persistences` VALUES ('1728', '1', 'vRjElFhrSf1tK4WOIPqB9nB1j7m6FNz9', '2018-04-17 12:38:11', '2018-04-17 12:38:11');
INSERT INTO `persistences` VALUES ('1729', '1', 'zr0WvelA3fFoljoCbLL0QmcjsgOB72PK', '2018-04-17 12:38:13', '2018-04-17 12:38:13');
INSERT INTO `persistences` VALUES ('1730', '1', 'jLQeyh2Ezmp81lEdSJwrLtgSOA2U1vfY', '2018-04-17 12:38:53', '2018-04-17 12:38:53');
INSERT INTO `persistences` VALUES ('1731', '1', 'YDSexYlaLzmSKZt5fUxl8TwDaWBTsUvI', '2018-04-17 12:39:39', '2018-04-17 12:39:39');
INSERT INTO `persistences` VALUES ('1732', '1', 'jfPVuEhc8VJdfkMsVA1YqtYzq2f0XNyl', '2018-04-17 12:40:08', '2018-04-17 12:40:08');
INSERT INTO `persistences` VALUES ('1733', '1', 'GW531reNkrnLlEBr8qq5GERcpBkkrWvx', '2018-04-17 12:40:11', '2018-04-17 12:40:11');
INSERT INTO `persistences` VALUES ('1734', '1', '1E8QvDK2169TXRT4lOfmb9OLtCKsAkwv', '2018-04-17 13:11:35', '2018-04-17 13:11:35');
INSERT INTO `persistences` VALUES ('1735', '1', '0xLGt0kUBHwqMOKgtaKEFE8dRNIMpAzR', '2018-04-17 13:11:41', '2018-04-17 13:11:41');
INSERT INTO `persistences` VALUES ('1736', '1', 'll6CN35WSeVbOONyJ7EO4F4coZgr7T3n', '2018-04-17 13:11:48', '2018-04-17 13:11:48');
INSERT INTO `persistences` VALUES ('1737', '1', '9BtLyqhvoLAv4TpC2kEBklo170fUA3EW', '2018-04-17 13:12:22', '2018-04-17 13:12:22');
INSERT INTO `persistences` VALUES ('1738', '1', 'sVTv56B6t6J8ybEO2s7glgZXbbSXRmoO', '2018-04-28 06:15:12', '2018-04-28 06:15:12');
INSERT INTO `persistences` VALUES ('1739', '1', 'IaVrPIPG1SOsLENLH9caFteCJpAL0gfy', '2018-04-28 07:10:45', '2018-04-28 07:10:45');
INSERT INTO `persistences` VALUES ('1740', '1', 'y0BoznQt7v5tC1JLJcFxZ00ZiwBvLHn8', '2018-04-28 07:10:57', '2018-04-28 07:10:57');
INSERT INTO `persistences` VALUES ('1741', '1', 'SaXz4w7cdmMvPj6iI8SYkL2xU2FJ71MP', '2018-04-28 07:11:01', '2018-04-28 07:11:01');
INSERT INTO `persistences` VALUES ('1742', '1', 'wnS8PHnF5c18RXP8LgdMQd2b3FRcDGH7', '2018-04-28 07:11:02', '2018-04-28 07:11:02');
INSERT INTO `persistences` VALUES ('1743', '1', 'xynJ0sKtib6kWconnr0loTuaQfEZigef', '2018-04-28 07:11:04', '2018-04-28 07:11:04');
INSERT INTO `persistences` VALUES ('1744', '1', '94g4BNWezdIlpjfEbZh72GrdaDkP0DEk', '2018-04-28 07:11:07', '2018-04-28 07:11:07');
INSERT INTO `persistences` VALUES ('1745', '1', 'pCmnviOIfguueFK508tYw5TVqoCo9uYx', '2018-04-28 07:11:09', '2018-04-28 07:11:09');
INSERT INTO `persistences` VALUES ('1746', '1', '741Oak94iHPbur3lMsbqbrLBndGpB1Cx', '2018-04-28 07:11:11', '2018-04-28 07:11:11');
INSERT INTO `persistences` VALUES ('1747', '1', '4mFXKjX2ljzbLfz0xHZg0DGEWX42Ze6L', '2018-04-28 07:11:12', '2018-04-28 07:11:12');
INSERT INTO `persistences` VALUES ('1748', '1', 'qjeuyNJEETJ4xPFmZhf4o2ozcWnHZ157', '2018-04-28 07:11:15', '2018-04-28 07:11:15');
INSERT INTO `persistences` VALUES ('1749', '1', 'GOvFInZCgJ1XBS6yP3h2091l2i4JDmOn', '2018-04-28 07:11:26', '2018-04-28 07:11:26');
INSERT INTO `persistences` VALUES ('1750', '1', 'vVGH3ptvu95SSU5UJt5mOVd5NC2rih87', '2018-04-28 07:11:31', '2018-04-28 07:11:31');
INSERT INTO `persistences` VALUES ('1751', '1', '8dEJql2NWyfTCfDZrigHRxtyf4IUnZem', '2018-04-28 07:12:17', '2018-04-28 07:12:17');
INSERT INTO `persistences` VALUES ('1752', '1', 'KnGZii60syDQ6b5chcPCr9uh7Y2yL6TF', '2018-04-28 07:12:21', '2018-04-28 07:12:21');
INSERT INTO `persistences` VALUES ('1753', '1', 'ITUL0Lm3pWzjPdWQFhDb9jijLSTvbAgQ', '2018-04-28 07:12:25', '2018-04-28 07:12:25');
INSERT INTO `persistences` VALUES ('1754', '1', 'CC5CY4w35DRGirO9Lwm8oMRpY5Xm4CRc', '2018-04-28 07:12:27', '2018-04-28 07:12:27');
INSERT INTO `persistences` VALUES ('1755', '1', 'lGqYWs6t2FVsEI7fe4A1paMJ9pQbI95h', '2018-04-28 07:12:32', '2018-04-28 07:12:32');
INSERT INTO `persistences` VALUES ('1756', '1', 'DBpdREmGE6yvZXw2VWXPZtfDtavRYxuV', '2018-04-28 07:18:20', '2018-04-28 07:18:20');
INSERT INTO `persistences` VALUES ('1757', '1', 'pUMJcOWPrxtYIou6pNnxfWdLj9c4vDck', '2018-04-28 08:18:38', '2018-04-28 08:18:38');
INSERT INTO `persistences` VALUES ('1758', '1', 'iNQiGK8H7bM0Amn1jZJ1ZXD6Yfosy2rY', '2018-04-28 08:18:50', '2018-04-28 08:18:50');
INSERT INTO `persistences` VALUES ('1759', '1', 'bJjCIFrNDQWgu5RQ0h3U5ppi4LS6EHlj', '2018-04-28 08:18:52', '2018-04-28 08:18:52');
INSERT INTO `persistences` VALUES ('1760', '1', 'v979wQ2nP4b2nfq5QOe2MB11khXJQ5eq', '2018-04-28 08:18:53', '2018-04-28 08:18:53');
INSERT INTO `persistences` VALUES ('1761', '1', 'TNC9QV7hULdjtYp0EVggk1TiWMdaYaKL', '2018-04-28 08:18:53', '2018-04-28 08:18:53');
INSERT INTO `persistences` VALUES ('1762', '1', 'bY0yCQ8yelRAmyS4Oqss0SIWtaDwRL01', '2018-04-28 08:19:26', '2018-04-28 08:19:26');
INSERT INTO `persistences` VALUES ('1763', '1', 'gjM7Bg7OuIskAvtlQeLOiP6UB0pfciI1', '2018-04-28 08:19:26', '2018-04-28 08:19:26');
INSERT INTO `persistences` VALUES ('1764', '1', 'e18aDawSvQ9ALhnUP8FX0xPIh0BcT775', '2018-04-28 08:19:49', '2018-04-28 08:19:49');
INSERT INTO `persistences` VALUES ('1765', '1', 'MVBBoK8ztRGfcchWFwr4ym3B6FqhIVgR', '2018-04-28 08:23:14', '2018-04-28 08:23:14');
INSERT INTO `persistences` VALUES ('1766', '1', 'd1Wh3dA3gvGVa3UF7TmeA2Jnd0YZ8ZfA', '2018-05-07 03:31:48', '2018-05-07 03:31:48');
INSERT INTO `persistences` VALUES ('1767', '1', 'G7XQaRtTcjbF1PjOzUAPP41pLVJ9e6ku', '2018-05-07 03:32:07', '2018-05-07 03:32:07');
INSERT INTO `persistences` VALUES ('1768', '1', 'uiHpA0gtjIbMaxvLqIUpS8ZT5ZfWJ12o', '2018-05-07 03:32:40', '2018-05-07 03:32:40');
INSERT INTO `persistences` VALUES ('1769', '1', '8ZcShosAN2bgVeugj53RI8jynbtRmtDt', '2018-05-07 03:32:41', '2018-05-07 03:32:41');
INSERT INTO `persistences` VALUES ('1770', '1', 'OIZFvam0U5MGdVkUimIpVD2fromO7KfE', '2018-05-07 03:33:03', '2018-05-07 03:33:03');
INSERT INTO `persistences` VALUES ('1771', '1', 'CY49PNNCtwD0PYLS2Q4tkoMEIDfw63bM', '2018-05-07 03:33:04', '2018-05-07 03:33:04');
INSERT INTO `persistences` VALUES ('1772', '1', 'noXocH5qCtIKwHJVQrWdL9G5hVnYgfLy', '2018-05-07 03:51:12', '2018-05-07 03:51:12');
INSERT INTO `persistences` VALUES ('1773', '1', 'w0WchwSsBW7MKo8h4E6YcJK8h8vjZlFS', '2018-05-07 03:51:13', '2018-05-07 03:51:13');
INSERT INTO `persistences` VALUES ('1774', '1', 'R8z2mIv4woWFz93c20eHUCXuyd9eaa81', '2018-05-07 03:51:32', '2018-05-07 03:51:32');
INSERT INTO `persistences` VALUES ('1775', '1', 'nt7jVLNC84aypg6E6TSNE8DNBcVIh7Bf', '2018-05-07 03:51:32', '2018-05-07 03:51:32');
INSERT INTO `persistences` VALUES ('1776', '1', 'eI6BUgVfnZlSibbsNybidj71v7LGgbjG', '2018-05-07 03:52:00', '2018-05-07 03:52:00');
INSERT INTO `persistences` VALUES ('1777', '1', '6kHcfVZ6Y7Qj7kzMk50YxWQSKqUZFVpg', '2018-05-07 03:52:39', '2018-05-07 03:52:39');
INSERT INTO `persistences` VALUES ('1778', '1', 'ZciHCT86Tn7FBY8150gxs2SEJ6cbbs3H', '2018-05-07 03:52:42', '2018-05-07 03:52:42');
INSERT INTO `persistences` VALUES ('1779', '1', '1971dvDowAjgNSU33myaw4WEO4XRGXER', '2018-05-07 03:53:03', '2018-05-07 03:53:03');
INSERT INTO `persistences` VALUES ('1780', '1', 'WxxDhHwyxY2ByUHV2PYNZnishc5kNZPX', '2018-05-07 03:53:04', '2018-05-07 03:53:04');
INSERT INTO `persistences` VALUES ('1781', '1', 'JJNbVLpNxvsoYpMggEus9rGpZ2H5x5kG', '2018-05-07 03:53:32', '2018-05-07 03:53:32');
INSERT INTO `persistences` VALUES ('1782', '1', 'e5ILn4ytyTa8pL1FG02JGK4CyKJRvzkm', '2018-05-07 03:53:33', '2018-05-07 03:53:33');
INSERT INTO `persistences` VALUES ('1783', '1', 'ghdzJtzKdTmIxAg3nCJAaNWfNeKLhs3E', '2018-05-07 03:55:13', '2018-05-07 03:55:13');
INSERT INTO `persistences` VALUES ('1784', '1', 'vTgN3wN9gI4tt0eYyXs8MrvAQRFHmFjp', '2018-05-07 03:55:13', '2018-05-07 03:55:13');
INSERT INTO `persistences` VALUES ('1785', '1', 'oTOpN4sktbthIETCOqCmDdm84wOHxhIf', '2018-05-07 05:23:10', '2018-05-07 05:23:10');
INSERT INTO `persistences` VALUES ('1786', '1', 'VpIGEE3mlEf0t48p787uuorn4tGRITrB', '2018-05-07 05:23:11', '2018-05-07 05:23:11');
INSERT INTO `persistences` VALUES ('1787', '1', 'SR3GnvFe7BVwo59GDKxQg2hESRy1ADk7', '2018-05-07 05:24:40', '2018-05-07 05:24:40');
INSERT INTO `persistences` VALUES ('1788', '1', 'yx1d5sEpIN09X9adEh90UDu9nCT6KWrV', '2018-05-07 05:24:40', '2018-05-07 05:24:40');
INSERT INTO `persistences` VALUES ('1789', '1', '9ILCtD9pY0ptUrhthM2cBp65zSMMBVTV', '2018-05-07 05:26:32', '2018-05-07 05:26:32');
INSERT INTO `persistences` VALUES ('1790', '1', 'luqsAuSHudDSOlmhQtaD82HDlzC5tGNh', '2018-05-07 05:26:32', '2018-05-07 05:26:32');
INSERT INTO `persistences` VALUES ('1791', '1', 'mB7s9osc5N4F8ygfy82O2svf8oF5cE7i', '2018-05-07 05:27:57', '2018-05-07 05:27:57');
INSERT INTO `persistences` VALUES ('1792', '1', '5hCv8wXaozn6NTVFcX756wBWCDYb6SbN', '2018-05-07 05:27:57', '2018-05-07 05:27:57');
INSERT INTO `persistences` VALUES ('1793', '1', 'gDXMkmop7JJmRUvzMzCJ678Wd8gtyh64', '2018-05-07 05:28:52', '2018-05-07 05:28:52');
INSERT INTO `persistences` VALUES ('1794', '1', 'Kx6yZ0q6xCruDUKVy0UGjAGCgeh8iXdP', '2018-05-07 05:28:52', '2018-05-07 05:28:52');
INSERT INTO `persistences` VALUES ('1795', '1', '1mXzOckB3Vxy0VsOrwh2rg42oHFj2sVD', '2018-05-07 05:29:14', '2018-05-07 05:29:14');
INSERT INTO `persistences` VALUES ('1796', '1', 'SFPXuetHiML7wQBtZFjFlynCPF37EFdD', '2018-05-07 05:29:18', '2018-05-07 05:29:18');
INSERT INTO `persistences` VALUES ('1797', '1', 'YTgzDDJjCLwWvxGhWi1yTSpV0T0aRJ99', '2018-05-07 05:30:08', '2018-05-07 05:30:08');
INSERT INTO `persistences` VALUES ('1798', '1', 'UFXuacNzwJN8D4fpLAzBJMZJSBxDUgRT', '2018-05-07 05:30:08', '2018-05-07 05:30:08');
INSERT INTO `persistences` VALUES ('1799', '1', 'f6awXgUVO3YYHAmNNxOJ7lcOgoR0zQRd', '2018-05-07 05:35:25', '2018-05-07 05:35:25');
INSERT INTO `persistences` VALUES ('1800', '1', 'xzbHo9Ir94xMKEItoYBctIbrZxYEVsFC', '2018-05-07 05:35:25', '2018-05-07 05:35:25');
INSERT INTO `persistences` VALUES ('1801', '1', 'QQJbVCYJwpYxpUw4huvAfVbVUXukn4Zg', '2018-05-07 06:57:27', '2018-05-07 06:57:27');
INSERT INTO `persistences` VALUES ('1802', '1', 'bxCYXssDlMDrUBKhFLVxBzFac78WUuap', '2018-05-08 01:05:56', '2018-05-08 01:05:56');
INSERT INTO `persistences` VALUES ('1804', '1', 'uOzgOiNfBwk7SZt0rBQoNkCfUsUx9f4M', '2018-05-08 01:23:16', '2018-05-08 01:23:16');
INSERT INTO `persistences` VALUES ('1805', '1', 'wK79y6DnjUJ3XTSpTOEinhMv0rBWUtFe', '2018-05-08 05:36:18', '2018-05-08 05:36:18');

-- ----------------------------
-- Table structure for product__attrs
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product__attrs
-- ----------------------------
INSERT INTO `product__attrs` VALUES ('9', '4', 'material', '[\"leather\"]', '1', '2018-05-07 05:36:01', '2018-05-07 05:36:01');
INSERT INTO `product__attrs` VALUES ('10', '4', 'brand', '[\"zara\"]', '1', '2018-05-07 05:36:01', '2018-05-07 05:36:01');
INSERT INTO `product__attrs` VALUES ('11', '4', 'color', '[\"blue\",\"red\"]', '1', '2018-05-07 05:36:01', '2018-05-07 05:36:01');
INSERT INTO `product__attrs` VALUES ('12', '4', 'size', '[\"m\"]', '1', '2018-05-07 05:36:01', '2018-05-07 05:36:01');

-- ----------------------------
-- Table structure for product__attrsets
-- ----------------------------
DROP TABLE IF EXISTS `product__attrsets`;
CREATE TABLE `product__attrsets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product__attrsets
-- ----------------------------
INSERT INTO `product__attrsets` VALUES ('2', 'electronic', '0', '1', '2018-02-12 05:48:54', '2018-02-12 05:48:54');
INSERT INTO `product__attrsets` VALUES ('3', 'clothes', '0', '0', '2018-02-12 08:33:57', '2018-02-12 08:33:57');
INSERT INTO `product__attrsets` VALUES ('4', 'coat', '3', '3', '2018-02-22 03:48:18', '2018-02-22 03:48:18');

-- ----------------------------
-- Table structure for product__attrset_translations
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product__attrset_translations
-- ----------------------------
INSERT INTO `product__attrset_translations` VALUES ('3', 'electronic', '2', 'en');
INSERT INTO `product__attrset_translations` VALUES ('4', '电子产品', '2', 'zh');
INSERT INTO `product__attrset_translations` VALUES ('5', 'clothes', '3', 'en');
INSERT INTO `product__attrset_translations` VALUES ('6', '衣服', '3', 'zh');
INSERT INTO `product__attrset_translations` VALUES ('7', 'coat', '4', 'en');
INSERT INTO `product__attrset_translations` VALUES ('8', '外套', '4', 'zh');

-- ----------------------------
-- Table structure for product__attr_translations
-- ----------------------------
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

-- ----------------------------
-- Records of product__attr_translations
-- ----------------------------

-- ----------------------------
-- Table structure for product__categories
-- ----------------------------
DROP TABLE IF EXISTS `product__categories`;
CREATE TABLE `product__categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL,
  `pid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product__categories
-- ----------------------------
INSERT INTO `product__categories` VALUES ('1', '1', '0', '2018-02-22 05:48:03', '2018-02-22 05:48:03', null);
INSERT INTO `product__categories` VALUES ('2', '1', '0', '2018-02-22 05:55:46', '2018-02-22 05:55:46', null);

-- ----------------------------
-- Table structure for product__category_translations
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product__category_translations
-- ----------------------------
INSERT INTO `product__category_translations` VALUES ('1', 'shoes', 'high quality shoes', 'shoes', 'shoes', '<p>shoes</p>', '1', 'en', 'high-quality-shoes');
INSERT INTO `product__category_translations` VALUES ('2', '鞋子', '鞋子', '鞋子', '鞋子', '<p>shoes</p>', '1', 'zh', 'shoes');
INSERT INTO `product__category_translations` VALUES ('3', 'wedding dress', 'cheap wedding dress 2018', 'wedding dress', 'wedding dress', '<p>wedding dress</p>', '2', 'en', 'cheap-wedding-dress-2018');
INSERT INTO `product__category_translations` VALUES ('4', '婚纱', '婚纱', '婚纱', '婚纱', '<p>婚纱</p>', '2', 'zh', 'cheap-wedding-dress');

-- ----------------------------
-- Table structure for product__images
-- ----------------------------
DROP TABLE IF EXISTS `product__images`;
CREATE TABLE `product__images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product__images
-- ----------------------------

-- ----------------------------
-- Table structure for product__products
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product__products
-- ----------------------------
INSERT INTO `product__products` VALUES ('4', '3', '0', '0', '10.00', '57', '2018-05-07 03:52:55', '2018-05-07 05:36:01', '{}');

-- ----------------------------
-- Table structure for product__products_cats
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product__products_cats
-- ----------------------------
INSERT INTO `product__products_cats` VALUES ('2', '13', '2', null, null);
INSERT INTO `product__products_cats` VALUES ('3', '14', '2', null, null);
INSERT INTO `product__products_cats` VALUES ('4', '15', '1', null, null);
INSERT INTO `product__products_cats` VALUES ('6', '16', '2', null, null);
INSERT INTO `product__products_cats` VALUES ('11', '21', '1', null, null);
INSERT INTO `product__products_cats` VALUES ('12', '22', '1', null, null);
INSERT INTO `product__products_cats` VALUES ('14', '24', '0', null, null);
INSERT INTO `product__products_cats` VALUES ('15', '20', '1', null, null);
INSERT INTO `product__products_cats` VALUES ('16', '25', '1', null, null);
INSERT INTO `product__products_cats` VALUES ('18', '26', '2', null, null);
INSERT INTO `product__products_cats` VALUES ('38', '46', '0', null, null);
INSERT INTO `product__products_cats` VALUES ('39', '47', '1', null, null);
INSERT INTO `product__products_cats` VALUES ('43', '51', '2', null, null);
INSERT INTO `product__products_cats` VALUES ('45', '53', '1', null, null);
INSERT INTO `product__products_cats` VALUES ('46', '3', '2', null, null);
INSERT INTO `product__products_cats` VALUES ('48', '4', '2', null, null);

-- ----------------------------
-- Table structure for product__product_translations
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product__product_translations
-- ----------------------------
INSERT INTO `product__product_translations` VALUES ('3', 'test', 'test', 'test', '<p>test</p>', '4', 'en', 'test');
INSERT INTO `product__product_translations` VALUES ('4', '测试产品1', 'test', 'test', '<p>test</p>', '4', 'zh', '1');

-- ----------------------------
-- Table structure for product__skus
-- ----------------------------
DROP TABLE IF EXISTS `product__skus`;
CREATE TABLE `product__skus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `seller_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of product__skus
-- ----------------------------
INSERT INTO `product__skus` VALUES ('5', '4', '{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"red\",\"size\":\"m\",\"price\":\"10\",\"stock\":\"34\"}', null, '2018-05-07 05:36:01', '2018-05-07 05:36:01');
INSERT INTO `product__skus` VALUES ('6', '4', '{\"material\":\"leather\",\"brand\":\"zara\",\"color\":\"blue\",\"size\":\"m\",\"price\":\"12\",\"stock\":\"23\"}', null, '2018-05-07 05:36:01', '2018-05-07 05:36:01');

-- ----------------------------
-- Table structure for product__sku_translations
-- ----------------------------
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

-- ----------------------------
-- Records of product__sku_translations
-- ----------------------------

-- ----------------------------
-- Table structure for reminders
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of reminders
-- ----------------------------
INSERT INTO `reminders` VALUES ('1', '8', 'EhBfXMHHz8OUy7y5l2kKXVuS7vztNB1E', '1', '2018-02-22 09:45:14', '2018-02-22 09:42:14', '2018-02-22 09:45:14');

-- ----------------------------
-- Table structure for revisions
-- ----------------------------
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

-- ----------------------------
-- Records of revisions
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'admin', 'Admin', '{\"attribute.attributes.index\":true,\"attribute.attributes.create\":true,\"attribute.attributes.edit\":true,\"attribute.attributes.destroy\":true,\"blog.posts.index\":true,\"blog.posts.create\":true,\"blog.posts.edit\":true,\"blog.posts.destroy\":true,\"blog.categories.index\":true,\"blog.categories.create\":true,\"blog.categories.edit\":true,\"blog.categories.destroy\":true,\"core.sidebar.group\":true,\"dashboard.index\":true,\"dashboard.update\":true,\"dashboard.reset\":true,\"media.medias.index\":true,\"media.medias.create\":true,\"media.medias.edit\":true,\"media.medias.destroy\":true,\"media.folders.index\":true,\"media.folders.create\":true,\"media.folders.edit\":true,\"media.folders.destroy\":true,\"medialinkexample.authors.index\":true,\"medialinkexample.authors.create\":true,\"medialinkexample.authors.edit\":true,\"medialinkexample.authors.destroy\":true,\"menu.menus.index\":true,\"menu.menus.create\":true,\"menu.menus.edit\":true,\"menu.menus.destroy\":true,\"menu.menuitems.index\":true,\"menu.menuitems.create\":true,\"menu.menuitems.edit\":true,\"menu.menuitems.destroy\":true,\"page.pages.index\":true,\"page.pages.create\":true,\"page.pages.edit\":true,\"page.pages.destroy\":true,\"product.attrsets.index\":true,\"product.attrsets.create\":true,\"product.attrsets.edit\":true,\"product.attrsets.destroy\":true,\"product.products.index\":true,\"product.products.create\":true,\"product.products.edit\":true,\"product.products.destroy\":true,\"product.categories.index\":true,\"product.categories.create\":true,\"product.categories.edit\":true,\"product.categories.destroy\":true,\"product.images.index\":true,\"product.images.create\":true,\"product.images.edit\":true,\"product.images.destroy\":true,\"product.skus.index\":true,\"product.skus.create\":true,\"product.skus.edit\":true,\"product.skus.destroy\":true,\"product.attrs.index\":true,\"product.attrs.create\":true,\"product.attrs.edit\":true,\"product.attrs.destroy\":true,\"setting.settings.index\":true,\"setting.settings.edit\":true,\"tag.tags.index\":true,\"tag.tags.create\":true,\"tag.tags.edit\":true,\"tag.tags.destroy\":true,\"translation.translations.index\":true,\"translation.translations.edit\":true,\"translation.translations.import\":true,\"translation.translations.export\":true,\"user.users.index\":true,\"user.users.create\":true,\"user.users.edit\":true,\"user.users.destroy\":true,\"user.roles.index\":true,\"user.roles.create\":true,\"user.roles.edit\":true,\"user.roles.destroy\":true,\"account.api-keys.index\":true,\"account.api-keys.create\":true,\"account.api-keys.destroy\":true,\"workshop.sidebar.group\":true,\"workshop.modules.index\":true,\"workshop.modules.show\":true,\"workshop.modules.update\":true,\"workshop.modules.disable\":true,\"workshop.modules.enable\":true,\"workshop.modules.publish\":true,\"workshop.themes.index\":true,\"workshop.themes.show\":true,\"workshop.themes.publish\":true}', '2018-02-05 10:07:57', '2018-02-12 01:51:13');
INSERT INTO `roles` VALUES ('2', 'user', 'User', null, '2018-02-05 10:07:57', '2018-02-05 10:07:57');

-- ----------------------------
-- Table structure for role_users
-- ----------------------------
DROP TABLE IF EXISTS `role_users`;
CREATE TABLE `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_users
-- ----------------------------
INSERT INTO `role_users` VALUES ('1', '1', '2018-02-05 10:08:17', '2018-02-05 10:08:17');
INSERT INTO `role_users` VALUES ('8', '2', '2018-02-22 09:39:33', '2018-02-22 09:39:33');

-- ----------------------------
-- Table structure for setting__settings
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of setting__settings
-- ----------------------------
INSERT INTO `setting__settings` VALUES ('1', 'core::template', 'Flatly', '0', '2018-02-05 10:08:18', '2018-02-05 10:08:18');
INSERT INTO `setting__settings` VALUES ('2', 'core::locales', '[\"en\",\"zh\"]', '0', '2018-02-05 10:08:18', '2018-02-05 10:16:40');
INSERT INTO `setting__settings` VALUES ('3', 'core::site-name', null, '1', '2018-02-05 10:16:40', '2018-02-05 10:16:40');
INSERT INTO `setting__settings` VALUES ('4', 'core::site-name-mini', null, '1', '2018-02-05 10:16:40', '2018-02-05 10:16:40');
INSERT INTO `setting__settings` VALUES ('5', 'core::site-description', null, '1', '2018-02-05 10:16:40', '2018-02-05 10:16:40');
INSERT INTO `setting__settings` VALUES ('6', 'core::analytics-script', null, '0', '2018-02-05 10:16:40', '2018-02-05 10:16:40');

-- ----------------------------
-- Table structure for setting__setting_translations
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of setting__setting_translations
-- ----------------------------
INSERT INTO `setting__setting_translations` VALUES ('1', '3', 'en', null, null);
INSERT INTO `setting__setting_translations` VALUES ('2', '4', 'en', null, null);
INSERT INTO `setting__setting_translations` VALUES ('3', '5', 'en', null, null);

-- ----------------------------
-- Table structure for shoppingcart
-- ----------------------------
DROP TABLE IF EXISTS `shoppingcart`;
CREATE TABLE `shoppingcart` (
  `identifier` varchar(50) NOT NULL,
  `instance` varchar(50) NOT NULL,
  `content` longtext,
  `total` decimal(18,0) DEFAULT NULL,
  `selected_total` decimal(18,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`instance`,`identifier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shoppingcart
-- ----------------------------
INSERT INTO `shoppingcart` VALUES ('1', 'cart', 'O:29:\"Illuminate\\Support\\Collection\":1:{s:8:\"\0*\0items\";a:1:{s:32:\"865267894e277478e07c8876495e9adf\";O:32:\"Gloudemans\\Shoppingcart\\CartItem\":9:{s:5:\"rowId\";s:32:\"865267894e277478e07c8876495e9adf\";s:2:\"id\";i:4;s:3:\"qty\";i:6;s:4:\"name\";s:13:\"测试产品1\";s:5:\"price\";d:12;s:7:\"options\";O:39:\"Gloudemans\\Shoppingcart\\CartItemOptions\":1:{s:8:\"\0*\0items\";a:6:{s:11:\"sku_options\";a:4:{s:8:\"material\";s:7:\"leather\";s:5:\"brand\";s:4:\"zara\";s:5:\"color\";s:4:\"blue\";s:4:\"size\";s:1:\"m\";}s:18:\"selectedItemLocale\";a:4:{s:6:\"材质\";s:6:\"皮革\";s:6:\"品牌\";s:4:\"ZARA\";s:6:\"颜色\";s:6:\"蓝色\";s:6:\"尺码\";s:6:\"中码\";}s:8:\"selected\";b:1;s:5:\"image\";s:83:\"http://localhost:8000/assets/media/2018-05-07-03-33-03-5aefc8ef3e7c3_smallThumb.jpg\";s:4:\"slug\";s:10:\"/product/1\";s:6:\"userId\";i:1;}}s:49:\"\0Gloudemans\\Shoppingcart\\CartItem\0associatedModel\";N;s:41:\"\0Gloudemans\\Shoppingcart\\CartItem\0taxRate\";i:0;s:8:\"priceTax\";d:12;}}}', null, '72', null, '2018-05-08 06:31:19');

-- ----------------------------
-- Table structure for tag__tagged
-- ----------------------------
DROP TABLE IF EXISTS `tag__tagged`;
CREATE TABLE `tag__tagged` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` int(10) unsigned NOT NULL,
  `tag_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag__tagged_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tag__tagged
-- ----------------------------
INSERT INTO `tag__tagged` VALUES ('1', 'Modules\\Blog\\Entities\\Post', '1', '1');
INSERT INTO `tag__tagged` VALUES ('2', 'Modules\\Blog\\Entities\\Post', '2', '2');

-- ----------------------------
-- Table structure for tag__tags
-- ----------------------------
DROP TABLE IF EXISTS `tag__tags`;
CREATE TABLE `tag__tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tag__tags
-- ----------------------------
INSERT INTO `tag__tags` VALUES ('1', 'asgardcms/post', '2018-02-06 07:31:14', '2018-02-06 07:31:14');
INSERT INTO `tag__tags` VALUES ('2', 'asgardcms/post', '2018-02-11 06:21:57', '2018-02-11 06:21:57');
INSERT INTO `tag__tags` VALUES ('3', 'asgardcms/page', '2018-02-22 08:14:54', '2018-02-22 08:14:54');

-- ----------------------------
-- Table structure for tag__tag_translations
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tag__tag_translations
-- ----------------------------
INSERT INTO `tag__tag_translations` VALUES ('1', 'a', 'a', '1', 'en');
INSERT INTO `tag__tag_translations` VALUES ('2', 'sdf', 'sdf', '2', 'zh');
INSERT INTO `tag__tag_translations` VALUES ('3', 'cat', 'cat', '3', 'zh');

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of test
-- ----------------------------

-- ----------------------------
-- Table structure for throttle
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of throttle
-- ----------------------------
INSERT INTO `throttle` VALUES ('1', null, 'global', null, '2018-03-12 01:33:47', '2018-03-12 01:33:47');
INSERT INTO `throttle` VALUES ('2', null, 'ip', '127.0.0.1', '2018-03-12 01:33:47', '2018-03-12 01:33:47');
INSERT INTO `throttle` VALUES ('3', '1', 'user', null, '2018-03-12 01:33:47', '2018-03-12 01:33:47');

-- ----------------------------
-- Table structure for translation__translations
-- ----------------------------
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

-- ----------------------------
-- Records of translation__translations
-- ----------------------------

-- ----------------------------
-- Table structure for translation__translation_translations
-- ----------------------------
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

-- ----------------------------
-- Records of translation__translation_translations
-- ----------------------------

-- ----------------------------
-- Table structure for travel_location
-- ----------------------------
DROP TABLE IF EXISTS `travel_location`;
CREATE TABLE `travel_location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pid` int(11) unsigned DEFAULT '0' COMMENT '父ID',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `level` int(11) unsigned DEFAULT NULL COMMENT '层级',
  `name` varchar(255) DEFAULT NULL COMMENT '中文名称',
  `name_en` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `name_pinyin` varchar(255) DEFAULT NULL COMMENT '中文拼音',
  `code` varchar(50) DEFAULT NULL COMMENT '代码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4170 DEFAULT CHARSET=utf8 COMMENT='全球地区库，采集自腾讯QQ国内+国际版.ADD.JENA.20141221';

-- ----------------------------
-- Records of travel_location
-- ----------------------------
INSERT INTO `travel_location` VALUES ('1', '0', ',1,', '1', '亚洲', 'Asia', 'yazhou', null);
INSERT INTO `travel_location` VALUES ('2', '0', ',2,', '1', '欧洲', 'Europe', 'ouzhou', null);
INSERT INTO `travel_location` VALUES ('3', '0', ',3,', '1', '非洲', 'Africa', 'feizhou', null);
INSERT INTO `travel_location` VALUES ('4', '0', ',4,', '1', '北美', 'North America', 'beimei', null);
INSERT INTO `travel_location` VALUES ('5', '0', ',5,', '1', '南美', 'South America', 'nanmei', null);
INSERT INTO `travel_location` VALUES ('6', '0', ',6,', '1', '大洋洲', 'Oceania', 'dayangzhou', null);
INSERT INTO `travel_location` VALUES ('7', '1', ',1,7,', '2', '中国', 'China', 'zhongguo', 'CN');
INSERT INTO `travel_location` VALUES ('8', '2', ',2,8,', '2', '阿尔巴尼亚', 'Albania', 'aerbaniya', 'ALB');
INSERT INTO `travel_location` VALUES ('9', '3', ',3,9,', '2', '阿尔及利亚', 'Algeria', 'aerjiliya', 'DZA');
INSERT INTO `travel_location` VALUES ('10', '1', ',1,10,', '2', '阿富汗', 'Afghanistan', 'afuhan', 'AFG');
INSERT INTO `travel_location` VALUES ('11', '5', ',5,11,', '2', '阿根廷', 'Argentina', 'agenting', 'ARG');
INSERT INTO `travel_location` VALUES ('12', '1', ',1,12,', '2', '阿拉伯联合酋长国', 'United Arab Emirates', 'alabolianheqiuchangguo', 'ARE');
INSERT INTO `travel_location` VALUES ('13', '5', ',5,13,', '2', '阿鲁巴', 'Aruba', 'aluba', 'ABW');
INSERT INTO `travel_location` VALUES ('14', '1', ',1,14,', '2', '阿曼', 'Oman', 'aman', 'OMN');
INSERT INTO `travel_location` VALUES ('15', '1', ',1,15,', '2', '阿塞拜疆', 'Azerbaijan', 'asaibaijiang', 'AZE');
INSERT INTO `travel_location` VALUES ('16', '3', ',3,16,', '2', '阿森松岛', 'Ascension Island', 'asensongdao', 'ASC');
INSERT INTO `travel_location` VALUES ('17', '3', ',3,17,', '2', '埃及', 'Egypt', 'aiji', 'EGY');
INSERT INTO `travel_location` VALUES ('18', '3', ',3,18,', '2', '埃塞俄比亚', 'Ethiopia', 'aisaiebiya', 'ETH');
INSERT INTO `travel_location` VALUES ('19', '2', ',2,19,', '2', '爱尔兰', 'Ireland', 'aierlan', 'IRL');
INSERT INTO `travel_location` VALUES ('20', '2', ',2,20,', '2', '爱沙尼亚', 'Estonia', 'aishaniya', 'EST');
INSERT INTO `travel_location` VALUES ('21', '2', ',2,21,', '2', '安道尔', 'Andorra', 'andaoer', 'AND');
INSERT INTO `travel_location` VALUES ('22', '3', ',3,22,', '2', '安哥拉', 'Angola', 'angela', 'AGO');
INSERT INTO `travel_location` VALUES ('23', '5', ',5,23,', '2', '安圭拉', 'Anguilla', 'anguila', 'AIA');
INSERT INTO `travel_location` VALUES ('24', '4', ',4,24,', '2', '安提瓜岛和巴布达', 'Antigua and Barbuda', 'antiguadaohebabuda', 'ATG');
INSERT INTO `travel_location` VALUES ('25', '6', ',6,25,', '2', '澳大利亚', 'Australia', 'aodaliya', 'AUS');
INSERT INTO `travel_location` VALUES ('26', '2', ',2,26,', '2', '奥地利', 'Austria', 'aodili', 'AUT');
INSERT INTO `travel_location` VALUES ('27', '2', ',2,27,', '2', '奥兰群岛', 'Aland lslands', 'aolanqundao', 'ALA');
INSERT INTO `travel_location` VALUES ('28', '5', ',5,28,', '2', '巴巴多斯岛', 'Barbados', 'babaduosidao', 'BRB');
INSERT INTO `travel_location` VALUES ('29', '6', ',6,29,', '2', '巴布亚新几内亚', 'Papua New Guinea', 'babuyaxinjineiya', 'PNG');
INSERT INTO `travel_location` VALUES ('30', '4', ',4,30,', '2', '巴哈马', 'Bahamas', 'bahama', 'BHS');
INSERT INTO `travel_location` VALUES ('31', '1', ',1,31,', '2', '巴基斯坦', 'Pakistan', 'bajisitan', 'PAK');
INSERT INTO `travel_location` VALUES ('32', '5', ',5,32,', '2', '巴拉圭', 'Paraguay', 'balagui', 'PRY');
INSERT INTO `travel_location` VALUES ('33', '1', ',1,33,', '2', '巴勒斯坦', 'Palestinian Authority', 'balesitan', 'PSE');
INSERT INTO `travel_location` VALUES ('34', '1', ',1,34,', '2', '巴林', 'Bahrain', 'balin', 'BHR');
INSERT INTO `travel_location` VALUES ('35', '4', ',4,35,', '2', '巴拿马', 'Panama', 'banama', 'PAN');
INSERT INTO `travel_location` VALUES ('36', '5', ',5,36,', '2', '巴西', 'Brazil', 'baxi', 'BRA');
INSERT INTO `travel_location` VALUES ('37', '2', ',2,37,', '2', '白俄罗斯', 'White Russia', 'baieluosi', 'BLR');
INSERT INTO `travel_location` VALUES ('38', '4', ',4,38,', '2', '百慕大', 'Bermuda', 'baimuda', 'BMU');
INSERT INTO `travel_location` VALUES ('39', '2', ',2,39,', '2', '保加利亚', 'Bulgaria', 'baojialiya', 'BGR');
INSERT INTO `travel_location` VALUES ('40', '4', ',4,40,', '2', '北马里亚纳群岛', 'Northern Mariana Islands', 'beimaliyanaqundao', 'MNP');
INSERT INTO `travel_location` VALUES ('41', '3', ',3,41,', '2', '贝宁', 'Benin', 'beining', 'BEN');
INSERT INTO `travel_location` VALUES ('42', '2', ',2,42,', '2', '比利时', 'Belgium', 'bilishi', 'BEL');
INSERT INTO `travel_location` VALUES ('43', '2', ',2,43,', '2', '冰岛', 'Iceland', 'bingdao', 'ISL');
INSERT INTO `travel_location` VALUES ('44', '4', ',4,44,', '2', '波多黎各', 'Puerto Rico', 'boduolige', 'PRI');
INSERT INTO `travel_location` VALUES ('45', '2', ',2,45,', '2', '波兰', 'Poland', 'bolan', 'POL');
INSERT INTO `travel_location` VALUES ('46', '5', ',5,46,', '2', '玻利维亚', 'Bolivia', 'boliweiya', 'BOL');
INSERT INTO `travel_location` VALUES ('47', '2', ',2,47,', '2', '波斯尼亚和黑塞哥维那', 'Bosnia and Herzegovina', 'bosiniyaheheisaigeweina', 'BIH');
INSERT INTO `travel_location` VALUES ('48', '3', ',3,48,', '2', '博茨瓦纳', 'Botswana', 'bociwana', 'BWA');
INSERT INTO `travel_location` VALUES ('49', '4', ',4,49,', '2', '伯利兹', 'Belize', 'bolizi', 'BLZ');
INSERT INTO `travel_location` VALUES ('50', '1', ',1,50,', '2', '不丹', 'Bhutan', 'budan', 'BTN');
INSERT INTO `travel_location` VALUES ('51', '3', ',3,51,', '2', '布基纳法索', 'Burkina Faso', 'bujinafasuo', 'BFA');
INSERT INTO `travel_location` VALUES ('52', '3', ',3,52,', '2', '布隆迪', 'Burundi', 'bulongdi', 'BDI');
INSERT INTO `travel_location` VALUES ('53', '2', ',2,53,', '2', '布韦岛', 'Bouvet Island', 'buweidao', 'BVT');
INSERT INTO `travel_location` VALUES ('54', '1', ',1,54,', '2', '朝鲜', 'North Korea', 'chaoxian', 'PRK');
INSERT INTO `travel_location` VALUES ('55', '2', ',2,55,', '2', '丹麦', 'Denmark', 'danmai', 'DNK');
INSERT INTO `travel_location` VALUES ('56', '2', ',2,56,', '2', '德国', 'Germany', 'deguo', 'DEU');
INSERT INTO `travel_location` VALUES ('57', '1', ',1,57,', '2', '东帝汶', 'Timor-Leste', 'dongdi', 'TLS');
INSERT INTO `travel_location` VALUES ('58', '3', ',3,58,', '2', '多哥', 'Togo', 'duoge', 'TGO');
INSERT INTO `travel_location` VALUES ('59', '4', ',4,59,', '2', '多米尼加', 'Dominica', 'duominijia', 'DMA');
INSERT INTO `travel_location` VALUES ('60', '4', ',4,60,', '2', '多米尼加共和国', 'Dominican Republic', 'duominijiagongheguo', 'DOM');
INSERT INTO `travel_location` VALUES ('61', '2', ',2,61,', '2', '俄罗斯', 'Russia', 'eluosi', 'RUS');
INSERT INTO `travel_location` VALUES ('62', '5', ',5,62,', '2', '厄瓜多尔', 'Ecuador', 'eguaduoer', 'ECU');
INSERT INTO `travel_location` VALUES ('63', '3', ',3,63,', '2', '厄立特里亚', 'Eritrea', 'eliteliya', 'ERI');
INSERT INTO `travel_location` VALUES ('64', '2', ',2,64,', '2', '法国', 'France', 'faguo', 'FRA');
INSERT INTO `travel_location` VALUES ('65', '2', ',2,65,', '2', '法罗群岛', 'Faroe Islands', 'faluoqundao', 'FRO');
INSERT INTO `travel_location` VALUES ('66', '6', ',6,66,', '2', '法属波利尼西亚', 'Frech Polynesia', 'fashubolinixiya', 'PYF');
INSERT INTO `travel_location` VALUES ('67', '5', ',5,67,', '2', '法属圭亚那', 'French Guiana', 'fashuguiyana', 'GUF');
INSERT INTO `travel_location` VALUES ('68', '2', ',2,68,', '2', '法属南部领地', 'French Southern and Antarctic Lands', 'fashunanbulingdi', 'ATF');
INSERT INTO `travel_location` VALUES ('69', '2', ',2,69,', '2', '梵蒂冈', 'Vatican City', 'digang', 'VAT');
INSERT INTO `travel_location` VALUES ('70', '1', ',1,70,', '2', '菲律宾', 'Philippines', 'feilvbin', 'PHL');
INSERT INTO `travel_location` VALUES ('71', '6', ',6,71,', '2', '斐济', 'Fiji Islands', 'ji', 'FJI');
INSERT INTO `travel_location` VALUES ('72', '2', ',2,72,', '2', '芬兰', 'Finland', 'fenlan', 'FIN');
INSERT INTO `travel_location` VALUES ('73', '3', ',3,73,', '2', '佛得角', 'Cape Verde', 'fodejiao', 'CPV');
INSERT INTO `travel_location` VALUES ('74', '2', ',2,74,', '2', '弗兰克群岛', 'Falkland Islands', 'fulankequndao', 'FLK');
INSERT INTO `travel_location` VALUES ('75', '3', ',3,75,', '2', '冈比亚', 'Gambia', 'gangbiya', 'GMB');
INSERT INTO `travel_location` VALUES ('76', '3', ',3,76,', '2', '刚果', 'Congo', 'gangguo', 'COG');
INSERT INTO `travel_location` VALUES ('77', '3', ',3,77,', '2', '刚果民主共和国', 'Congo(DRC)', 'gangguominzhugongheguo', 'COD');
INSERT INTO `travel_location` VALUES ('78', '5', ',5,78,', '2', '哥伦比亚', 'Colombia', 'gelunbiya', 'COL');
INSERT INTO `travel_location` VALUES ('79', '4', ',4,79,', '2', '哥斯达黎加', 'Costa Rica', 'gesidalijia', 'CRI');
INSERT INTO `travel_location` VALUES ('80', '2', ',2,80,', '2', '格恩西岛', 'Guernsey', 'geenxidao', 'GGY');
INSERT INTO `travel_location` VALUES ('81', '4', ',4,81,', '2', '格林纳达', 'Grenada', 'gelinnada', 'GRD');
INSERT INTO `travel_location` VALUES ('82', '4', ',4,82,', '2', '格陵兰', 'Greenland', 'gelinglan', 'GRL');
INSERT INTO `travel_location` VALUES ('83', '4', ',4,83,', '2', '古巴', 'Cuba', 'guba', 'CUB');
INSERT INTO `travel_location` VALUES ('84', '4', ',4,84,', '2', '瓜德罗普', 'Guadeloupe', 'guadeluopu', 'GLP');
INSERT INTO `travel_location` VALUES ('85', '6', ',6,85,', '2', '关岛', 'Guam', 'guandao', 'GUM');
INSERT INTO `travel_location` VALUES ('86', '5', ',5,86,', '2', '圭亚那', 'Guyana', 'guiyana', 'GUY');
INSERT INTO `travel_location` VALUES ('87', '1', ',1,87,', '2', '哈萨克斯坦', 'Kazakhstan', 'hasakesitan', 'KAZ');
INSERT INTO `travel_location` VALUES ('88', '4', ',4,88,', '2', '海地', 'Haiti', 'haidi', 'HTI');
INSERT INTO `travel_location` VALUES ('89', '1', ',1,89,', '2', '韩国', 'Korea', 'hanguo', 'KOR');
INSERT INTO `travel_location` VALUES ('90', '2', ',2,90,', '2', '荷兰', 'Netherlands', 'helan', 'NLD');
INSERT INTO `travel_location` VALUES ('91', '5', ',5,91,', '2', '荷属安地列斯', 'Netherlands Antilles', 'heshuandiliesi', 'ANT');
INSERT INTO `travel_location` VALUES ('92', '6', ',6,92,', '2', '赫德和麦克唐纳群岛', 'Heard Island and McDonald Islands', 'hedehemaiketangnaqundao', 'HMD');
INSERT INTO `travel_location` VALUES ('93', '4', ',4,93,', '2', '洪都拉斯', 'Honduras', 'hongdulasi', 'HND');
INSERT INTO `travel_location` VALUES ('94', '6', ',6,94,', '2', '基里巴斯', 'Kiribati', 'jilibasi', 'KIR');
INSERT INTO `travel_location` VALUES ('95', '3', ',3,95,', '2', '吉布提', 'Djibouti', 'jibuti', 'DJI');
INSERT INTO `travel_location` VALUES ('96', '1', ',1,96,', '2', '吉尔吉斯斯坦', 'Kyrgyzstan', 'jierjisisitan', 'KGZ');
INSERT INTO `travel_location` VALUES ('97', '3', ',3,97,', '2', '几内亚', 'Guinea', 'jineiya', 'GIN');
INSERT INTO `travel_location` VALUES ('98', '3', ',3,98,', '2', '几内亚比绍', 'Guinea-Bissau', 'jineiyabishao', 'GNB');
INSERT INTO `travel_location` VALUES ('99', '4', ',4,99,', '2', '加拿大', 'Canada', 'jianada', 'CAN');
INSERT INTO `travel_location` VALUES ('100', '3', ',3,100,', '2', '加纳', 'Ghana', 'jiana', 'GHA');
INSERT INTO `travel_location` VALUES ('101', '3', ',3,101,', '2', '加蓬', 'Gabon', 'jiapeng', 'GAB');
INSERT INTO `travel_location` VALUES ('102', '1', ',1,102,', '2', '柬埔寨', 'Cambodia', 'jianpuzhai', 'KHM');
INSERT INTO `travel_location` VALUES ('103', '2', ',2,103,', '2', '捷克共和国', 'Czech Republic', 'jiekegongheguo', 'CZE');
INSERT INTO `travel_location` VALUES ('104', '3', ',3,104,', '2', '津巴布韦', 'Zimbabwe', 'jinbabuwei', 'ZWE');
INSERT INTO `travel_location` VALUES ('105', '3', ',3,105,', '2', '喀麦隆', 'Cameroon', 'kamailong', 'CMR');
INSERT INTO `travel_location` VALUES ('106', '1', ',1,106,', '2', '卡塔尔', 'Qatar', 'kataer', 'QAT');
INSERT INTO `travel_location` VALUES ('107', '4', ',4,107,', '2', '开曼群岛', 'Cayman Islands', 'kaimanqundao', 'CYM');
INSERT INTO `travel_location` VALUES ('108', '6', ',6,108,', '2', '科科斯群岛', 'Cocos(Keeling)Islands', 'kekesiqundao', 'CCK');
INSERT INTO `travel_location` VALUES ('109', '3', ',3,109,', '2', '科摩罗', 'Comoros', 'kemoluo', 'COM');
INSERT INTO `travel_location` VALUES ('110', '3', ',3,110,', '2', '科特迪瓦', 'Cote d\'Ivoire', 'ketediwa', 'CIV');
INSERT INTO `travel_location` VALUES ('111', '1', ',1,111,', '2', '科威特', 'Kuwait', 'keweite', 'KWT');
INSERT INTO `travel_location` VALUES ('112', '2', ',2,112,', '2', '克罗地亚', 'Croatia', 'keluodiya', 'HRV');
INSERT INTO `travel_location` VALUES ('113', '3', ',3,113,', '2', '肯尼亚', 'Kenya', 'kenniya', 'KEN');
INSERT INTO `travel_location` VALUES ('114', '6', ',6,114,', '2', '库克群岛', 'Cook Islands', 'kukequndao', 'COK');
INSERT INTO `travel_location` VALUES ('115', '2', ',2,115,', '2', '拉脱维亚', 'Latvia', 'latuoweiya', 'LVA');
INSERT INTO `travel_location` VALUES ('116', '3', ',3,116,', '2', '莱索托', 'Lesotho', 'laisuotuo', 'LSO');
INSERT INTO `travel_location` VALUES ('117', '1', ',1,117,', '2', '老挝', 'Laos', 'laowo', 'LAO');
INSERT INTO `travel_location` VALUES ('118', '1', ',1,118,', '2', '黎巴嫩', 'Lebanon', 'libanen', 'LBN');
INSERT INTO `travel_location` VALUES ('119', '3', ',3,119,', '2', '利比里亚', 'Liberia', 'libiliya', 'LBR');
INSERT INTO `travel_location` VALUES ('120', '3', ',3,120,', '2', '利比亚', 'Libya', 'libiya', 'LBY');
INSERT INTO `travel_location` VALUES ('121', '2', ',2,121,', '2', '立陶宛', 'Lithuania', 'litaowan', 'LTU');
INSERT INTO `travel_location` VALUES ('122', '2', ',2,122,', '2', '列支敦士登', 'Liechtenstein', 'liezhidunshideng', 'LIE');
INSERT INTO `travel_location` VALUES ('123', '2', ',2,123,', '2', '留尼旺岛', 'Reunion', 'liuniwangdao', 'REU');
INSERT INTO `travel_location` VALUES ('124', '2', ',2,124,', '2', '卢森堡', 'Luxembourg', 'lusenbao', 'LUX');
INSERT INTO `travel_location` VALUES ('125', '3', ',3,125,', '2', '卢旺达', 'Rwanda', 'luwangda', 'RWA');
INSERT INTO `travel_location` VALUES ('126', '2', ',2,126,', '2', '罗马尼亚', 'Romania', 'luomaniya', 'ROU');
INSERT INTO `travel_location` VALUES ('127', '3', ',3,127,', '2', '马达加斯加', 'Madagascar', 'madajiasijia', 'MDG');
INSERT INTO `travel_location` VALUES ('128', '1', ',1,128,', '2', '马尔代夫', 'Maldives', 'maerdaifu', 'MDV');
INSERT INTO `travel_location` VALUES ('129', '2', ',2,129,', '2', '马耳他', 'Malta', 'maerta', 'MLT');
INSERT INTO `travel_location` VALUES ('130', '3', ',3,130,', '2', '马拉维', 'Malawi', 'malawei', 'MWI');
INSERT INTO `travel_location` VALUES ('131', '1', ',1,131,', '2', '马来西亚', 'Malaysia', 'malaixiya', 'MYS');
INSERT INTO `travel_location` VALUES ('132', '3', ',3,132,', '2', '马里', 'Mali', 'mali', 'MLI');
INSERT INTO `travel_location` VALUES ('133', '2', ',2,133,', '2', '马其顿', 'Macedonia,Former Yugoslav Republic of', 'maqidun', 'MKD');
INSERT INTO `travel_location` VALUES ('134', '6', ',6,134,', '2', '马绍尔群岛', 'Marshall Islands', 'mashaoerqundao', 'MHL');
INSERT INTO `travel_location` VALUES ('135', '4', ',4,135,', '2', '马提尼克', 'Martinique', 'matinike', 'MTQ');
INSERT INTO `travel_location` VALUES ('136', '3', ',3,136,', '2', '马约特岛', 'Mayotte', 'mayuetedao', 'MYT');
INSERT INTO `travel_location` VALUES ('137', '2', ',2,137,', '2', '曼岛', 'Isle of Man', 'mandao', 'IMN');
INSERT INTO `travel_location` VALUES ('138', '3', ',3,138,', '2', '毛里求斯', 'Mauritius', 'maoliqiusi', 'MUS');
INSERT INTO `travel_location` VALUES ('139', '3', ',3,139,', '2', '毛里塔尼亚', 'Mauritania', 'maolitaniya', 'MRT');
INSERT INTO `travel_location` VALUES ('140', '4', ',4,140,', '2', '美国', 'United States', 'meiguo', 'USA');
INSERT INTO `travel_location` VALUES ('141', '6', ',6,141,', '2', '美属萨摩亚', 'American Samoa', 'meishusamoya', 'ASM');
INSERT INTO `travel_location` VALUES ('142', '4', ',4,142,', '2', '美属外岛', 'United States Minor Outlying Islands', 'meishuwaidao', 'UMI');
INSERT INTO `travel_location` VALUES ('143', '1', ',1,143,', '2', '蒙古', 'Mongolia', 'menggu', 'MNG');
INSERT INTO `travel_location` VALUES ('144', '4', ',4,144,', '2', '蒙特塞拉特', 'Montserrat', 'mengtesailate', 'MSR');
INSERT INTO `travel_location` VALUES ('145', '1', ',1,145,', '2', '孟加拉', 'Bangladesh', 'mengjiala', 'BGD');
INSERT INTO `travel_location` VALUES ('146', '6', ',6,146,', '2', '密克罗尼西亚', 'Micronesia', 'mikeluonixiya', 'FSM');
INSERT INTO `travel_location` VALUES ('147', '5', ',5,147,', '2', '秘鲁', 'Peru', 'milu', 'PER');
INSERT INTO `travel_location` VALUES ('148', '1', ',1,148,', '2', '缅甸', 'Myanmar', 'miandian', 'MMR');
INSERT INTO `travel_location` VALUES ('149', '2', ',2,149,', '2', '摩尔多瓦', 'Moldova', 'moerduowa', 'MDA');
INSERT INTO `travel_location` VALUES ('150', '3', ',3,150,', '2', '摩洛哥', 'Morocco', 'moluoge', 'MAR');
INSERT INTO `travel_location` VALUES ('151', '2', ',2,151,', '2', '摩纳哥', 'Monaco', 'monage', 'MCO');
INSERT INTO `travel_location` VALUES ('152', '3', ',3,152,', '2', '莫桑比克', 'Mozambique', 'mosangbike', 'MOZ');
INSERT INTO `travel_location` VALUES ('153', '4', ',4,153,', '2', '墨西哥', 'Mexico', 'moxige', 'MEX');
INSERT INTO `travel_location` VALUES ('154', '3', ',3,154,', '2', '纳米比亚', 'Namibia', 'namibiya', 'NAM');
INSERT INTO `travel_location` VALUES ('155', '3', ',3,155,', '2', '南非', 'South Africa', 'nanfei', 'ZAF');
INSERT INTO `travel_location` VALUES ('156', '0', ',156,', '1', '南极洲', 'Antarctica', 'nanjizhou', 'ATA');
INSERT INTO `travel_location` VALUES ('157', '156', ',156,157,', '2', '南乔治亚和南桑德威奇群岛', 'South Georgia and South Sandwich Islands', 'nanqiaozhiyahenansangdeweiqiqundao', 'SGS');
INSERT INTO `travel_location` VALUES ('158', '6', ',6,158,', '2', '瑙鲁', 'Nauru', 'lu', 'NRU');
INSERT INTO `travel_location` VALUES ('159', '1', ',1,159,', '2', '尼泊尔', 'Nepal', 'niboer', 'NPL');
INSERT INTO `travel_location` VALUES ('160', '4', ',4,160,', '2', '尼加拉瓜', 'Nicaragua', 'nijialagua', 'NIC');
INSERT INTO `travel_location` VALUES ('161', '3', ',3,161,', '2', '尼日尔', 'Niger', 'nirier', 'NER');
INSERT INTO `travel_location` VALUES ('162', '3', ',3,162,', '2', '尼日利亚', 'Nigeria', 'niriliya', 'NGA');
INSERT INTO `travel_location` VALUES ('163', '6', ',6,163,', '2', '纽埃', 'Niue', 'niuai', 'NIU');
INSERT INTO `travel_location` VALUES ('164', '2', ',2,164,', '2', '挪威', 'Norway', 'nuowei', 'NOR');
INSERT INTO `travel_location` VALUES ('165', '4', ',4,165,', '2', '诺福克', 'Norfolk Island', 'nuofuke', 'NFK');
INSERT INTO `travel_location` VALUES ('166', '6', ',6,166,', '2', '帕劳群岛', 'Palau', 'palaoqundao', 'PLW');
INSERT INTO `travel_location` VALUES ('167', '6', ',6,167,', '2', '皮特凯恩', 'Pitcairn Islands', 'pitekaien', 'PCN');
INSERT INTO `travel_location` VALUES ('168', '2', ',2,168,', '2', '葡萄牙', 'Portugal', 'putaoya', 'PRT');
INSERT INTO `travel_location` VALUES ('169', '156', ',156,169,', '2', '乔治亚', 'Georgia', 'qiaozhiya', 'GEO');
INSERT INTO `travel_location` VALUES ('170', '1', ',1,170,', '2', '日本', 'Japan', 'riben', 'JPN');
INSERT INTO `travel_location` VALUES ('171', '2', ',2,171,', '2', '瑞典', 'Sweden', 'ruidian', 'SWE');
INSERT INTO `travel_location` VALUES ('172', '2', ',2,172,', '2', '瑞士', 'Switzerland', 'ruishi', 'CHE');
INSERT INTO `travel_location` VALUES ('173', '4', ',4,173,', '2', '萨尔瓦多', 'El Salvador', 'saerwaduo', 'SLV');
INSERT INTO `travel_location` VALUES ('174', '6', ',6,174,', '2', '萨摩亚', 'Samoa', 'samoya', 'WSM');
INSERT INTO `travel_location` VALUES ('175', '2', ',2,175,', '2', '塞尔维亚,黑山', 'Serbia,Montenegro', 'saierweiyaheishan', 'SCG');
INSERT INTO `travel_location` VALUES ('176', '3', ',3,176,', '2', '塞拉利昂', 'Sierra Leone', 'sailaliang', 'SLE');
INSERT INTO `travel_location` VALUES ('177', '3', ',3,177,', '2', '塞内加尔', 'Senegal', 'saineijiaer', 'SEN');
INSERT INTO `travel_location` VALUES ('178', '1', ',1,178,', '2', '塞浦路斯', 'Cyprus', 'saipulusi', 'CYP');
INSERT INTO `travel_location` VALUES ('179', '3', ',3,179,', '2', '塞舌尔', 'Seychelles', 'saisheer', 'SYC');
INSERT INTO `travel_location` VALUES ('180', '1', ',1,180,', '2', '沙特阿拉伯', 'Saudi Arabia', 'shatealabo', 'SAU');
INSERT INTO `travel_location` VALUES ('181', '6', ',6,181,', '2', '圣诞岛', 'Christmas Island', 'shengdandao', 'CXR');
INSERT INTO `travel_location` VALUES ('182', '3', ',3,182,', '2', '圣多美和普林西比', 'Sao Tome and Principe', 'shengduomeihepulinxibi', 'STP');
INSERT INTO `travel_location` VALUES ('183', '3', ',3,183,', '2', '圣赫勒拿', 'St.Helena', 'shenghelena', 'SHN');
INSERT INTO `travel_location` VALUES ('184', '4', ',4,184,', '2', '圣基茨和尼维斯', 'St.Kitts and Nevis', 'shengjiciheniweisi', 'KNA');
INSERT INTO `travel_location` VALUES ('185', '4', ',4,185,', '2', '圣卢西亚', 'St.Lucia', 'shengluxiya', 'LCA');
INSERT INTO `travel_location` VALUES ('186', '2', ',2,186,', '2', '圣马力诺', 'San Marino', 'shengmalinuo', 'SMR');
INSERT INTO `travel_location` VALUES ('187', '4', ',4,187,', '2', '圣皮埃尔和米克隆群岛', 'St.Pierre and Miquelon', 'shengpiaierhemikelongqundao', 'SPM');
INSERT INTO `travel_location` VALUES ('188', '4', ',4,188,', '2', '圣文森特和格林纳丁斯', 'St.Vincent and the Grenadines', 'shengwensentehegelinnadingsi', 'VCT');
INSERT INTO `travel_location` VALUES ('189', '1', ',1,189,', '2', '斯里兰卡', 'Sri Lanka', 'sililanka', 'LKA');
INSERT INTO `travel_location` VALUES ('190', '2', ',2,190,', '2', '斯洛伐克', 'Slovakia', 'siluofake', 'SVK');
INSERT INTO `travel_location` VALUES ('191', '2', ',2,191,', '2', '斯洛文尼亚', 'Slovenia', 'siluowenniya', 'SVN');
INSERT INTO `travel_location` VALUES ('192', '2', ',2,192,', '2', '斯瓦尔巴和扬马廷', 'Svalbard and Jan Mayen', 'siwaerbaheyangmating', 'SJM');
INSERT INTO `travel_location` VALUES ('193', '3', ',3,193,', '2', '斯威士兰', 'Swaziland', 'siweishilan', 'SWZ');
INSERT INTO `travel_location` VALUES ('194', '3', ',3,194,', '2', '苏丹', 'Sudan', 'sudan', 'SDN');
INSERT INTO `travel_location` VALUES ('195', '5', ',5,195,', '2', '苏里南', 'Suriname', 'sulinan', 'SUR');
INSERT INTO `travel_location` VALUES ('196', '6', ',6,196,', '2', '所罗门群岛', 'Solomon Islands', 'suoluomenqundao', 'SLB');
INSERT INTO `travel_location` VALUES ('197', '3', ',3,197,', '2', '索马里', 'Somalia', 'suomali', 'SOM');
INSERT INTO `travel_location` VALUES ('198', '1', ',1,198,', '2', '塔吉克斯坦', 'Tajikistan', 'tajikesitan', 'TJK');
INSERT INTO `travel_location` VALUES ('199', '1', ',1,199,', '2', '泰国', 'Thailand', 'taiguo', 'THA');
INSERT INTO `travel_location` VALUES ('200', '3', ',3,200,', '2', '坦桑尼亚', 'Tanzania', 'tansangniya', 'TZA');
INSERT INTO `travel_location` VALUES ('201', '6', ',6,201,', '2', '汤加', 'Tonga', 'tangjia', 'TON');
INSERT INTO `travel_location` VALUES ('202', '4', ',4,202,', '2', '特克斯和凯克特斯群岛', 'Turks and Caicos Islands', 'tekesihekaiketesiqundao', 'TCA');
INSERT INTO `travel_location` VALUES ('203', '5', ',5,203,', '2', '特里斯坦达昆哈', 'Tristan da Cunha', 'telisitandakunha', 'TAA');
INSERT INTO `travel_location` VALUES ('204', '4', ',4,204,', '2', '特立尼达和多巴哥', 'Trinidad and Tobago', 'telinidaheduobage', 'TTO');
INSERT INTO `travel_location` VALUES ('205', '3', ',3,205,', '2', '突尼斯', 'Tunisia', 'tunisi', 'TUN');
INSERT INTO `travel_location` VALUES ('206', '6', ',6,206,', '2', '图瓦卢', 'Tuvalu', 'tuwalu', 'TUV');
INSERT INTO `travel_location` VALUES ('207', '1', ',1,207,', '2', '土耳其', 'Turkey', 'tuerqi', 'TUR');
INSERT INTO `travel_location` VALUES ('208', '1', ',1,208,', '2', '土库曼斯坦', 'Turkmenistan', 'tukumansitan', 'TKM');
INSERT INTO `travel_location` VALUES ('209', '6', ',6,209,', '2', '托克劳', 'Tokelau', 'tuokelao', 'TKL');
INSERT INTO `travel_location` VALUES ('210', '6', ',6,210,', '2', '瓦利斯和福图纳', 'Wallis and Futuna', 'walisihefutuna', 'WLF');
INSERT INTO `travel_location` VALUES ('211', '6', ',6,211,', '2', '瓦努阿图', 'Vanuatu', 'wanuatu', 'VUT');
INSERT INTO `travel_location` VALUES ('212', '4', ',4,212,', '2', '危地马拉', 'Guatemala', 'weidimala', 'GTM');
INSERT INTO `travel_location` VALUES ('213', '4', ',4,213,', '2', '维尔京群岛，美属', 'Virgin Islands', 'weierjingqundaomeishu', 'VIR');
INSERT INTO `travel_location` VALUES ('214', '4', ',4,214,', '2', '维尔京群岛，英属', 'Virgin Islands,British', 'weierjingqundaoyingshu', 'VGB');
INSERT INTO `travel_location` VALUES ('215', '5', ',5,215,', '2', '委内瑞拉', 'Venezuela', 'weineiruila', 'VEN');
INSERT INTO `travel_location` VALUES ('216', '1', ',1,216,', '2', '文莱', 'Brunei', 'wenlai', 'BRN');
INSERT INTO `travel_location` VALUES ('217', '3', ',3,217,', '2', '乌干达', 'Uganda', 'wuganda', 'UGA');
INSERT INTO `travel_location` VALUES ('218', '2', ',2,218,', '2', '乌克兰', 'Ukraine', 'wukelan', 'UKR');
INSERT INTO `travel_location` VALUES ('219', '5', ',5,219,', '2', '乌拉圭', 'Uruguay', 'wulagui', 'URY');
INSERT INTO `travel_location` VALUES ('220', '1', ',1,220,', '2', '乌兹别克斯坦', 'Uzbekistan', 'wuzibiekesitan', 'UZB');
INSERT INTO `travel_location` VALUES ('221', '2', ',2,221,', '2', '西班牙', 'Spain', 'xibanya', 'ESP');
INSERT INTO `travel_location` VALUES ('222', '2', ',2,222,', '2', '希腊', 'Greece', 'xila', 'GRC');
INSERT INTO `travel_location` VALUES ('223', '1', ',1,223,', '2', '新加坡', 'Singapore', 'xinjiapo', 'SGP');
INSERT INTO `travel_location` VALUES ('224', '6', ',6,224,', '2', '新喀里多尼亚', 'New Caledonia', 'xinkaliduoniya', 'NCL');
INSERT INTO `travel_location` VALUES ('225', '6', ',6,225,', '2', '新西兰', 'New Zealand', 'xinxilan', 'NZL');
INSERT INTO `travel_location` VALUES ('226', '2', ',2,226,', '2', '匈牙利', 'Hungary', 'xiongyali', 'HUN');
INSERT INTO `travel_location` VALUES ('227', '1', ',1,227,', '2', '叙利亚', 'Syria', 'xuliya', 'SYR');
INSERT INTO `travel_location` VALUES ('228', '4', ',4,228,', '2', '牙买加', 'Jamaica', 'yamaijia', 'JAM');
INSERT INTO `travel_location` VALUES ('229', '1', ',1,229,', '2', '亚美尼亚', 'Armenia', 'yameiniya', 'ARM');
INSERT INTO `travel_location` VALUES ('230', '1', ',1,230,', '2', '也门', 'Yemen', 'yemen', 'YEM');
INSERT INTO `travel_location` VALUES ('231', '1', ',1,231,', '2', '伊拉克', 'Iraq', 'yilake', 'IRQ');
INSERT INTO `travel_location` VALUES ('232', '1', ',1,232,', '2', '伊朗', 'Iran', 'yilang', 'IRN');
INSERT INTO `travel_location` VALUES ('233', '1', ',1,233,', '2', '以色列', 'Israel', 'yiselie', 'ISR');
INSERT INTO `travel_location` VALUES ('234', '2', ',2,234,', '2', '意大利', 'Italy', 'yidali', 'ITA');
INSERT INTO `travel_location` VALUES ('235', '1', ',1,235,', '2', '印度', 'India', 'yindu', 'IND');
INSERT INTO `travel_location` VALUES ('236', '1', ',1,236,', '2', '印度尼西亚', 'Indonesia', 'yindunixiya', 'IDN');
INSERT INTO `travel_location` VALUES ('237', '2', ',2,237,', '2', '英国', 'United Kingdom', 'yingguo', 'GBR');
INSERT INTO `travel_location` VALUES ('238', '3', ',3,238,', '2', '英属印度洋领地', 'British Indian Ocean Territory', 'yingshuyinduyanglingdi', 'IOT');
INSERT INTO `travel_location` VALUES ('239', '1', ',1,239,', '2', '约旦', 'Jordan', 'yuedan', 'JOR');
INSERT INTO `travel_location` VALUES ('240', '1', ',1,240,', '2', '越南', 'Vietnam', 'yuenan', 'VNM');
INSERT INTO `travel_location` VALUES ('241', '3', ',3,241,', '2', '赞比亚', 'Zambia', 'zanbiya', 'ZMB');
INSERT INTO `travel_location` VALUES ('242', '2', ',2,242,', '2', '泽西岛', 'Jersey', 'zexidao', 'JEY');
INSERT INTO `travel_location` VALUES ('243', '3', ',3,243,', '2', '乍得', 'Chad', 'zhade', 'TCD');
INSERT INTO `travel_location` VALUES ('244', '3', ',3,244,', '2', '直布罗陀', 'Gibraltar', 'zhibuluotuo', 'GIB');
INSERT INTO `travel_location` VALUES ('245', '5', ',5,245,', '2', '智利', 'Chile', 'zhili', 'CHL');
INSERT INTO `travel_location` VALUES ('246', '3', ',3,246,', '2', '中非共和国', 'Central African Republic', 'zhongfeigongheguo', 'CAF');
INSERT INTO `travel_location` VALUES ('247', '7', ',1,7,247,', '3', '北京', 'Beijing', 'beijing', '11');
INSERT INTO `travel_location` VALUES ('248', '7', ',1,7,248,', '3', '天津', 'Tianjin', 'tianjin', '12');
INSERT INTO `travel_location` VALUES ('249', '7', ',1,7,249,', '3', '河北', 'Hebei', 'hebei', '13');
INSERT INTO `travel_location` VALUES ('250', '7', ',1,7,250,', '3', '山西', 'Shanxi', 'shanxi', '14');
INSERT INTO `travel_location` VALUES ('251', '7', ',1,7,251,', '3', '内蒙古', 'Inner Mongolia', 'neimenggu', '15');
INSERT INTO `travel_location` VALUES ('252', '7', ',1,7,252,', '3', '辽宁', 'Liaoning', 'liaoning', '21');
INSERT INTO `travel_location` VALUES ('253', '7', ',1,7,253,', '3', '吉林', 'Jilin', 'jilin', '22');
INSERT INTO `travel_location` VALUES ('254', '7', ',1,7,254,', '3', '黑龙江', 'Heilongjiang', 'heilongjiang', '23');
INSERT INTO `travel_location` VALUES ('255', '7', ',1,7,255,', '3', '上海', 'Shanghai', 'shanghai', '31');
INSERT INTO `travel_location` VALUES ('256', '7', ',1,7,256,', '3', '江苏', 'Jiangsu', 'jiangsu', '32');
INSERT INTO `travel_location` VALUES ('257', '7', ',1,7,257,', '3', '浙江', 'Zhejiang', 'zhejiang', '33');
INSERT INTO `travel_location` VALUES ('258', '7', ',1,7,258,', '3', '安徽', 'Anhui', 'anhui', '34');
INSERT INTO `travel_location` VALUES ('259', '7', ',1,7,259,', '3', '福建', 'Fujian', 'fujian', '35');
INSERT INTO `travel_location` VALUES ('260', '7', ',1,7,260,', '3', '江西', 'Jiangxi', 'jiangxi', '36');
INSERT INTO `travel_location` VALUES ('261', '7', ',1,7,261,', '3', '山东', 'Shandong', 'shandong', '37');
INSERT INTO `travel_location` VALUES ('262', '7', ',1,7,262,', '3', '河南', 'Henan', 'henan', '41');
INSERT INTO `travel_location` VALUES ('263', '7', ',1,7,263,', '3', '湖北', 'Hubei', 'hubei', '42');
INSERT INTO `travel_location` VALUES ('264', '7', ',1,7,264,', '3', '湖南', 'Hunan', 'hunan', '43');
INSERT INTO `travel_location` VALUES ('265', '7', ',1,7,265,', '3', '广东', 'Guangdong', 'guangdong', '44');
INSERT INTO `travel_location` VALUES ('266', '7', ',1,7,266,', '3', '广西', 'Guangxi', 'guangxi', '45');
INSERT INTO `travel_location` VALUES ('267', '7', ',1,7,267,', '3', '海南', 'Hainan', 'hainan', '46');
INSERT INTO `travel_location` VALUES ('268', '7', ',1,7,268,', '3', '重庆', 'Chongqing', 'zhongqing', '50');
INSERT INTO `travel_location` VALUES ('269', '7', ',1,7,269,', '3', '四川', 'Sichuan', 'sichuan', '51');
INSERT INTO `travel_location` VALUES ('270', '7', ',1,7,270,', '3', '贵州', 'Guizhou', 'guizhou', '52');
INSERT INTO `travel_location` VALUES ('271', '7', ',1,7,271,', '3', '云南', 'Yunnan', 'yunnan', '53');
INSERT INTO `travel_location` VALUES ('272', '7', ',1,7,272,', '3', '西藏', 'Tibet', 'xicang', '54');
INSERT INTO `travel_location` VALUES ('273', '7', ',1,7,273,', '3', '陕西', 'Shaanxi', 'shanxi', '61');
INSERT INTO `travel_location` VALUES ('274', '7', ',1,7,274,', '3', '甘肃', 'Gansu', 'gansu', '62');
INSERT INTO `travel_location` VALUES ('275', '7', ',1,7,275,', '3', '青海', 'Qinghai', 'qinghai', '63');
INSERT INTO `travel_location` VALUES ('276', '7', ',1,7,276,', '3', '宁夏', 'Ningxia', 'ningxia', '64');
INSERT INTO `travel_location` VALUES ('277', '7', ',1,7,277,', '3', '新疆', 'Xinjiang', 'xinjiang', '65');
INSERT INTO `travel_location` VALUES ('278', '7', ',1,7,278,', '3', '台湾', 'Taiwan', 'taiwan', '71');
INSERT INTO `travel_location` VALUES ('279', '7', ',1,7,279,', '3', '香港', 'Hongkong SAR', 'xianggang', '81');
INSERT INTO `travel_location` VALUES ('280', '7', ',1,7,280,', '3', '澳门', 'Macao SAR', 'aomen', '82');
INSERT INTO `travel_location` VALUES ('281', '25', ',6,25,281,', '3', '北部地区', 'Northern Territory', 'beibudiqu', 'NT');
INSERT INTO `travel_location` VALUES ('282', '25', ',6,25,282,', '3', '堪培拉', 'Canberra', 'kanpeila', 'ACT');
INSERT INTO `travel_location` VALUES ('283', '25', ',6,25,283,', '3', '昆士兰', 'Queensland', 'kunshilan', 'QLD');
INSERT INTO `travel_location` VALUES ('284', '25', ',6,25,284,', '3', '南澳大利亚', 'South Australia', 'nanaodaliya', 'SA');
INSERT INTO `travel_location` VALUES ('285', '25', ',6,25,285,', '3', '塔斯马尼亚', 'Tasmania', 'tasimaniya', 'TAS');
INSERT INTO `travel_location` VALUES ('286', '25', ',6,25,286,', '3', '维多利亚', 'Victoria', 'weiduoliya', 'VIC');
INSERT INTO `travel_location` VALUES ('287', '25', ',6,25,287,', '3', '西澳大利亚', 'Western Australia', 'xiaodaliya', 'WA');
INSERT INTO `travel_location` VALUES ('288', '25', ',6,25,288,', '3', '新南威尔士', 'New South Wales', 'xinnanweiershi', 'NSW');
INSERT INTO `travel_location` VALUES ('289', '89', ',1,89,289,', '3', '大邱', 'Daegu', 'daqiu', '27');
INSERT INTO `travel_location` VALUES ('290', '89', ',1,89,290,', '3', '大田', 'Daejeon', 'datian', '30');
INSERT INTO `travel_location` VALUES ('291', '89', ',1,89,291,', '3', '釜山', 'Busan', 'fushan', '26');
INSERT INTO `travel_location` VALUES ('292', '89', ',1,89,292,', '3', '光州', 'Gwangju', 'guangzhou', '29');
INSERT INTO `travel_location` VALUES ('293', '89', ',1,89,293,', '3', '济州特别自治道', 'Jeju-do', 'jizhoutebiezizhidao', '41');
INSERT INTO `travel_location` VALUES ('294', '89', ',1,89,294,', '3', '江原道', 'Gangwon-do', 'jiangyuandao', '42');
INSERT INTO `travel_location` VALUES ('295', '89', ',1,89,295,', '3', '京畿道', 'Gyeonggi-do', 'jingdao', '49');
INSERT INTO `travel_location` VALUES ('296', '89', ',1,89,296,', '3', '庆尚北道', 'Chungcheongbuk-do', 'qingshangbeidao', '43');
INSERT INTO `travel_location` VALUES ('297', '89', ',1,89,297,', '3', '庆尚南道', 'Chungcheongnam-do', 'qingshangnandao', '44');
INSERT INTO `travel_location` VALUES ('298', '89', ',1,89,298,', '3', '全罗北道', 'Gyeongsangbuk-do', 'quanluobeidao', '47');
INSERT INTO `travel_location` VALUES ('299', '89', ',1,89,299,', '3', '全罗南道', 'Gyeongsangnam-do', 'quanluonandao', '48');
INSERT INTO `travel_location` VALUES ('300', '89', ',1,89,300,', '3', '仁川', 'Incheon', 'renchuan', '28');
INSERT INTO `travel_location` VALUES ('301', '89', ',1,89,301,', '3', '首尔', 'Seoul', 'shouer', '11');
INSERT INTO `travel_location` VALUES ('302', '89', ',1,89,302,', '3', '蔚山', 'Ulsan', 'weishan', '31');
INSERT INTO `travel_location` VALUES ('303', '89', ',1,89,303,', '3', '忠清北道', 'Jeollabuk-do', 'zhongqingbeidao', '45');
INSERT INTO `travel_location` VALUES ('304', '89', ',1,89,304,', '3', '忠清南道', 'Jeollanam-do', 'zhongqingnandao', '46');
INSERT INTO `travel_location` VALUES ('305', '131', ',1,131,305,', '3', '槟榔屿', 'Pulau Pinang', 'langyu', 'PH');
INSERT INTO `travel_location` VALUES ('306', '131', ',1,131,306,', '3', '玻璃市', 'Perlis', 'bolishi', 'PS');
INSERT INTO `travel_location` VALUES ('307', '131', ',1,131,307,', '3', '丁加奴', 'Terengganu', 'dingjianu', 'TR');
INSERT INTO `travel_location` VALUES ('308', '131', ',1,131,308,', '3', '吉打', 'Kedah', 'jida', 'KD');
INSERT INTO `travel_location` VALUES ('309', '131', ',1,131,309,', '3', '吉兰丹', 'Kelantan', 'jilandan', 'KN');
INSERT INTO `travel_location` VALUES ('310', '131', ',1,131,310,', '3', '吉隆坡', 'Kuala Lumpur', 'jilongpo', 'KL');
INSERT INTO `travel_location` VALUES ('311', '131', ',1,131,311,', '3', '马六甲', 'Malacca', 'maliujia', 'ML');
INSERT INTO `travel_location` VALUES ('312', '131', ',1,131,312,', '3', '纳闽', 'Labuan', 'namin', 'LB');
INSERT INTO `travel_location` VALUES ('313', '131', ',1,131,313,', '3', '彭亨', 'Pahang', 'pengheng', 'PG');
INSERT INTO `travel_location` VALUES ('314', '131', ',1,131,314,', '3', '霹雳', 'Perak', 'pi', 'PK');
INSERT INTO `travel_location` VALUES ('315', '131', ',1,131,315,', '3', '柔佛', 'Johor', 'roufo', 'JH');
INSERT INTO `travel_location` VALUES ('316', '131', ',1,131,316,', '3', '森美兰', 'Negeri Sembilan', 'senmeilan', 'NS');
INSERT INTO `travel_location` VALUES ('317', '131', ',1,131,317,', '3', '沙巴', 'Sabah', 'shaba', 'SB');
INSERT INTO `travel_location` VALUES ('318', '131', ',1,131,318,', '3', '沙捞越', 'Sarawak', 'shalaoyue', 'SR');
INSERT INTO `travel_location` VALUES ('319', '131', ',1,131,319,', '3', '雪兰莪', 'Selangor', 'xuelan', 'SL');
INSERT INTO `travel_location` VALUES ('320', '140', ',4,140,320,', '3', '阿肯色', 'Arkansas', 'akense', 'AR');
INSERT INTO `travel_location` VALUES ('321', '140', ',4,140,321,', '3', '阿拉巴马', 'Alabama', 'alabama', 'AL');
INSERT INTO `travel_location` VALUES ('322', '140', ',4,140,322,', '3', '阿拉斯加', 'Alaska', 'alasijia', 'AK');
INSERT INTO `travel_location` VALUES ('323', '140', ',4,140,323,', '3', '爱达荷', 'Idaho', 'aidahe', 'ID');
INSERT INTO `travel_location` VALUES ('324', '140', ',4,140,324,', '3', '爱荷华', 'Iowa', 'aihehua', 'IA');
INSERT INTO `travel_location` VALUES ('325', '140', ',4,140,325,', '3', '北达科他', 'North Dakota', 'beidaketa', 'ND');
INSERT INTO `travel_location` VALUES ('326', '140', ',4,140,326,', '3', '北卡罗来纳', 'North Carolina', 'beikaluolaina', 'NC');
INSERT INTO `travel_location` VALUES ('327', '140', ',4,140,327,', '3', '宾夕法尼亚', 'Pennsylvania', 'binxifaniya', 'PA');
INSERT INTO `travel_location` VALUES ('328', '140', ',4,140,328,', '3', '德克萨斯', 'Texas', 'dekesasi', 'TX');
INSERT INTO `travel_location` VALUES ('329', '140', ',4,140,329,', '3', '俄亥俄', 'Ohio', 'ehaie', 'OH');
INSERT INTO `travel_location` VALUES ('330', '140', ',4,140,330,', '3', '俄克拉荷马', 'Oklahoma', 'ekelahema', 'OK');
INSERT INTO `travel_location` VALUES ('331', '140', ',4,140,331,', '3', '俄勒冈', 'Oregon', 'elegang', 'OR');
INSERT INTO `travel_location` VALUES ('332', '140', ',4,140,332,', '3', '佛罗里达', 'Florida', 'foluolida', 'FL');
INSERT INTO `travel_location` VALUES ('333', '140', ',4,140,333,', '3', '佛蒙特', 'Vermont', 'fomengte', 'VT');
INSERT INTO `travel_location` VALUES ('334', '140', ',4,140,334,', '3', '哥伦比亚特区', 'District of Columbia', 'gelunbiyatequ', 'DC');
INSERT INTO `travel_location` VALUES ('335', '140', ',4,140,335,', '3', '华盛顿', 'Washington', 'huashengdun', 'WA');
INSERT INTO `travel_location` VALUES ('336', '140', ',4,140,336,', '3', '怀俄明', 'Wyoming', 'huaieming', 'WY');
INSERT INTO `travel_location` VALUES ('337', '140', ',4,140,337,', '3', '加利福尼亚', 'California', 'jialifuniya', 'CA');
INSERT INTO `travel_location` VALUES ('338', '140', ',4,140,338,', '3', '堪萨斯', 'Kansas', 'kansasi', 'KS');
INSERT INTO `travel_location` VALUES ('339', '140', ',4,140,339,', '3', '康涅狄格', 'Connecticut', 'kangniedige', 'CT');
INSERT INTO `travel_location` VALUES ('340', '140', ',4,140,340,', '3', '科罗拉多', 'Colorado', 'keluoladuo', 'CO');
INSERT INTO `travel_location` VALUES ('341', '140', ',4,140,341,', '3', '肯塔基', 'Kentucky', 'kentaji', 'KY');
INSERT INTO `travel_location` VALUES ('342', '140', ',4,140,342,', '3', '路易斯安那', 'Louisiana', 'luyisianna', 'LA');
INSERT INTO `travel_location` VALUES ('343', '140', ',4,140,343,', '3', '罗德岛', 'Rhode Island', 'luodedao', 'RI');
INSERT INTO `travel_location` VALUES ('344', '140', ',4,140,344,', '3', '马里兰', 'Maryland', 'malilan', 'MD');
INSERT INTO `travel_location` VALUES ('345', '140', ',4,140,345,', '3', '马萨诸塞', 'Massachusetts', 'masazhusai', 'MA');
INSERT INTO `travel_location` VALUES ('346', '140', ',4,140,346,', '3', '蒙大拿', 'Montana', 'mengdana', 'MT');
INSERT INTO `travel_location` VALUES ('347', '140', ',4,140,347,', '3', '密苏里', 'Missouri', 'misuli', 'MO');
INSERT INTO `travel_location` VALUES ('348', '140', ',4,140,348,', '3', '密西西比', 'Mississippi', 'mixixibi', 'MS');
INSERT INTO `travel_location` VALUES ('349', '140', ',4,140,349,', '3', '密歇根', 'Michigan', 'mixiegen', 'MI');
INSERT INTO `travel_location` VALUES ('350', '140', ',4,140,350,', '3', '缅因', 'Maine', 'mianyin', 'ME');
INSERT INTO `travel_location` VALUES ('351', '140', ',4,140,351,', '3', '明尼苏达', 'Minnesota', 'mingnisuda', 'MN');
INSERT INTO `travel_location` VALUES ('352', '140', ',4,140,352,', '3', '南达科他', 'South Dakota', 'nandaketa', 'SD');
INSERT INTO `travel_location` VALUES ('353', '140', ',4,140,353,', '3', '南卡罗来纳', 'South Carolina', 'nankaluolaina', 'SC');
INSERT INTO `travel_location` VALUES ('354', '140', ',4,140,354,', '3', '内布拉斯加', 'Nebraska', 'neibulasijia', 'NE');
INSERT INTO `travel_location` VALUES ('355', '140', ',4,140,355,', '3', '内华达', 'Nevada', 'neihuada', 'NV');
INSERT INTO `travel_location` VALUES ('356', '140', ',4,140,356,', '3', '纽约', 'New York', 'niuyue', 'NY');
INSERT INTO `travel_location` VALUES ('357', '140', ',4,140,357,', '3', '特拉华', 'Delaware', 'telahua', 'DE');
INSERT INTO `travel_location` VALUES ('358', '140', ',4,140,358,', '3', '田纳西', 'Tennessee', 'tiannaxi', 'TN');
INSERT INTO `travel_location` VALUES ('359', '140', ',4,140,359,', '3', '威斯康星', 'Wisconsin', 'weisikangxing', 'WI');
INSERT INTO `travel_location` VALUES ('360', '140', ',4,140,360,', '3', '维吉尼亚', 'Virginia', 'weijiniya', 'VA');
INSERT INTO `travel_location` VALUES ('361', '140', ',4,140,361,', '3', '西佛吉尼亚', 'West Virginia', 'xifojiniya', 'WV');
INSERT INTO `travel_location` VALUES ('362', '140', ',4,140,362,', '3', '夏威夷', 'Hawaii', 'xiaweiyi', 'HI');
INSERT INTO `travel_location` VALUES ('363', '140', ',4,140,363,', '3', '新罕布什尔', 'New Hampshire', 'xinhanbushier', 'NH');
INSERT INTO `travel_location` VALUES ('364', '140', ',4,140,364,', '3', '新墨西哥', 'New Mexico', 'xinmoxige', 'NM');
INSERT INTO `travel_location` VALUES ('365', '140', ',4,140,365,', '3', '新泽西', 'New Jersey', 'xinzexi', 'NJ');
INSERT INTO `travel_location` VALUES ('366', '140', ',4,140,366,', '3', '亚利桑那', 'Arizona', 'yalisangna', 'AZ');
INSERT INTO `travel_location` VALUES ('367', '140', ',4,140,367,', '3', '伊利诺斯', 'Illinois', 'yilinuosi', 'IL');
INSERT INTO `travel_location` VALUES ('368', '140', ',4,140,368,', '3', '印第安那', 'Indiana', 'yindianna', 'IN');
INSERT INTO `travel_location` VALUES ('369', '140', ',4,140,369,', '3', '犹他', 'Utah', 'youta', 'UT');
INSERT INTO `travel_location` VALUES ('370', '140', ',4,140,370,', '3', '佐治亚', 'Georgia', 'zuozhiya', 'GA');
INSERT INTO `travel_location` VALUES ('371', '237', ',2,237,371,', '3', '北爱尔兰', 'Northern Ireland', 'beiaierlan', 'NIR');
INSERT INTO `travel_location` VALUES ('372', '237', ',2,237,372,', '3', '苏格兰', 'Scotland', 'sugelan', 'SCT');
INSERT INTO `travel_location` VALUES ('373', '237', ',2,237,373,', '3', '威尔士', 'Wales', 'weiershi', 'WLS');
INSERT INTO `travel_location` VALUES ('374', '237', ',2,237,374,', '3', '英格兰', 'England', 'yinggelan', 'ENG');
INSERT INTO `travel_location` VALUES ('375', '8', ',2,8,375,', '3', '爱尔巴桑', 'Elbasan', 'aierbasang', 'EL');
INSERT INTO `travel_location` VALUES ('376', '8', ',2,8,376,', '3', '迪勃拉', 'Diber', 'dibola', 'DI');
INSERT INTO `travel_location` VALUES ('377', '8', ',2,8,377,', '3', '地拉那', 'Tirane', 'dilana', 'TR');
INSERT INTO `travel_location` VALUES ('378', '8', ',2,8,378,', '3', '都拉斯', 'Durres', 'dulasi', 'DR');
INSERT INTO `travel_location` VALUES ('379', '8', ',2,8,379,', '3', '发罗拉', 'Vlore', 'faluola', 'VL');
INSERT INTO `travel_location` VALUES ('380', '8', ',2,8,380,', '3', '费里', 'Fier', 'feili', 'FR');
INSERT INTO `travel_location` VALUES ('381', '8', ',2,8,381,', '3', '吉诺卡斯特', 'Gjirokaster', 'jinuokasite', 'GJ');
INSERT INTO `travel_location` VALUES ('382', '8', ',2,8,382,', '3', '科尔察', 'Korce', 'keercha', 'KO');
INSERT INTO `travel_location` VALUES ('383', '8', ',2,8,383,', '3', '库克斯', 'Kukes', 'kukesi', 'KU');
INSERT INTO `travel_location` VALUES ('384', '8', ',2,8,384,', '3', '莱什', 'Lezhe', 'laishi', 'LE');
INSERT INTO `travel_location` VALUES ('385', '8', ',2,8,385,', '3', '培拉特', 'Berat', 'peilate', 'BR');
INSERT INTO `travel_location` VALUES ('386', '8', ',2,8,386,', '3', '斯库台', 'Shkoder', 'sikutai', 'SH');
INSERT INTO `travel_location` VALUES ('387', '9', ',3,9,387,', '3', '阿德拉尔', 'Adrar', 'adelaer', 'ADR');
INSERT INTO `travel_location` VALUES ('388', '9', ',3,9,388,', '3', '阿尔及尔', 'Alger', 'aerjier', 'ALG');
INSERT INTO `travel_location` VALUES ('389', '9', ',3,9,389,', '3', '艾因·德夫拉', 'Ain Defla', 'aiyin', 'ADE');
INSERT INTO `travel_location` VALUES ('390', '9', ',3,9,390,', '3', '艾因·蒂姆尚特', 'Ain Temouchent', 'aiyin', 'ATE');
INSERT INTO `travel_location` VALUES ('391', '9', ',3,9,391,', '3', '安纳巴', 'Annaba', 'annaba', 'AAE');
INSERT INTO `travel_location` VALUES ('392', '9', ',3,9,392,', '3', '奥兰', 'Oran', 'aolan', 'ORA');
INSERT INTO `travel_location` VALUES ('393', '9', ',3,9,393,', '3', '巴特纳', 'Batna', 'batena', 'BAT');
INSERT INTO `travel_location` VALUES ('394', '9', ',3,9,394,', '3', '贝贾亚', 'Bejaia', 'beijiaya', 'BJA');
INSERT INTO `travel_location` VALUES ('395', '9', ',3,9,395,', '3', '贝沙尔', 'Bechar', 'beishaer', 'BEC');
INSERT INTO `travel_location` VALUES ('396', '9', ',3,9,396,', '3', '贝伊德', 'El Bayadh', 'beiyide', 'EBA');
INSERT INTO `travel_location` VALUES ('397', '9', ',3,9,397,', '3', '比斯克拉', 'Biskra', 'bisikela', 'BIS');
INSERT INTO `travel_location` VALUES ('398', '9', ',3,9,398,', '3', '布尔吉·布阿雷里吉', 'Bordj Bou Arreridj', 'buerji', 'BOR');
INSERT INTO `travel_location` VALUES ('399', '9', ',3,9,399,', '3', '布利达', 'Blida', 'bulida', 'BLI');
INSERT INTO `travel_location` VALUES ('400', '9', ',3,9,400,', '3', '布迈德斯', 'Boumerdes', 'bumaidesi', 'BOU');
INSERT INTO `travel_location` VALUES ('401', '9', ',3,9,401,', '3', '布依拉', 'Bouira', 'buyila', 'BOA');
INSERT INTO `travel_location` VALUES ('402', '9', ',3,9,402,', '3', '蒂巴扎', 'Tipaza', 'dibazha', 'TIP');
INSERT INTO `travel_location` VALUES ('403', '9', ',3,9,403,', '3', '蒂斯姆西勒特', 'Tissemsilt', 'disimuxilete', 'TIS');
INSERT INTO `travel_location` VALUES ('404', '9', ',3,9,404,', '3', '盖尔达耶', 'Ghardaia', 'gaierdaye', 'GHA');
INSERT INTO `travel_location` VALUES ('405', '9', ',3,9,405,', '3', '盖尔马', 'Guelma', 'gaierma', 'GUE');
INSERT INTO `travel_location` VALUES ('406', '9', ',3,9,406,', '3', '罕西拉', 'Khenchela', 'hanxila', 'KHE');
INSERT INTO `travel_location` VALUES ('407', '9', ',3,9,407,', '3', '赫利赞', 'Relizane', 'helizan', 'REL');
INSERT INTO `travel_location` VALUES ('408', '9', ',3,9,408,', '3', '吉杰尔', 'Jijel', 'jijieer', 'JIJ');
INSERT INTO `travel_location` VALUES ('409', '9', ',3,9,409,', '3', '杰勒法', 'Djelfa', 'jielefa', 'DJE');
INSERT INTO `travel_location` VALUES ('410', '9', ',3,9,410,', '3', '君士坦丁', 'Constantine', 'junshitanding', 'CZL');
INSERT INTO `travel_location` VALUES ('411', '9', ',3,9,411,', '3', '拉格瓦特', 'Laghouat', 'lagewate', 'LAG');
INSERT INTO `travel_location` VALUES ('412', '9', ',3,9,412,', '3', '马斯卡拉', 'Mascara', 'masikala', 'MUA');
INSERT INTO `travel_location` VALUES ('413', '9', ',3,9,413,', '3', '麦迪亚', 'Medea', 'maidiya', 'MED');
INSERT INTO `travel_location` VALUES ('414', '9', ',3,9,414,', '3', '密拉', 'Mila', 'mila', 'MIL');
INSERT INTO `travel_location` VALUES ('415', '9', ',3,9,415,', '3', '莫斯塔加纳姆', 'Mostaganem', 'mositajianamu', 'MOS');
INSERT INTO `travel_location` VALUES ('416', '9', ',3,9,416,', '3', '姆西拉', 'Msila', 'muxila', 'MSI');
INSERT INTO `travel_location` VALUES ('417', '9', ',3,9,417,', '3', '纳阿马', 'Naama', 'naama', 'NAA');
INSERT INTO `travel_location` VALUES ('418', '9', ',3,9,418,', '3', '塞蒂夫', 'Setif', 'saidifu', 'SET');
INSERT INTO `travel_location` VALUES ('419', '9', ',3,9,419,', '3', '赛伊达', 'Saida', 'saiyida', 'SAI');
INSERT INTO `travel_location` VALUES ('420', '9', ',3,9,420,', '3', '斯基克达', 'Skikda', 'sijikeda', 'SKI');
INSERT INTO `travel_location` VALUES ('421', '9', ',3,9,421,', '3', '苏克·阿赫拉斯', 'Souk Ahras', 'suke', 'SAH');
INSERT INTO `travel_location` VALUES ('422', '9', ',3,9,422,', '3', '塔里夫', 'El Tarf', 'talifu', 'ETA');
INSERT INTO `travel_location` VALUES ('423', '9', ',3,9,423,', '3', '塔曼拉塞特', 'Tamanghasset', 'tamanlasaite', 'TAM');
INSERT INTO `travel_location` VALUES ('424', '9', ',3,9,424,', '3', '特贝萨', 'Tebessa', 'tebeisa', 'TEB');
INSERT INTO `travel_location` VALUES ('425', '9', ',3,9,425,', '3', '特莱姆森', 'Tlemcen', 'telaimusen', 'TLE');
INSERT INTO `travel_location` VALUES ('426', '9', ',3,9,426,', '3', '提济乌祖', 'Tizi Ouzou', 'tijiwuzu', 'IOU');
INSERT INTO `travel_location` VALUES ('427', '9', ',3,9,427,', '3', '提亚雷特', 'Tiaret', 'tiyaleite', 'TIA');
INSERT INTO `travel_location` VALUES ('428', '9', ',3,9,428,', '3', '廷杜夫', 'Tindouf', 'tingdufu', 'TIN');
INSERT INTO `travel_location` VALUES ('429', '9', ',3,9,429,', '3', '瓦德', 'El Oued', 'wade', 'EOU');
INSERT INTO `travel_location` VALUES ('430', '9', ',3,9,430,', '3', '瓦尔格拉', 'Ouargla', 'waergela', 'OUA');
INSERT INTO `travel_location` VALUES ('431', '9', ',3,9,431,', '3', '乌姆布阿基', 'Oum el Bouaghi', 'wumubuaji', 'OEB');
INSERT INTO `travel_location` VALUES ('432', '9', ',3,9,432,', '3', '西迪贝勒阿贝斯', 'Sidi Bel Abbes', 'xidibeileabeisi', 'SBA');
INSERT INTO `travel_location` VALUES ('433', '9', ',3,9,433,', '3', '谢里夫', 'Chlef', 'xielifu', 'CHL');
INSERT INTO `travel_location` VALUES ('434', '9', ',3,9,434,', '3', '伊利齐', 'Illizi', 'yiliqi', 'ILL');
INSERT INTO `travel_location` VALUES ('435', '10', ',1,10,435,', '3', '赫拉特', 'Herat', 'helate', 'HEA');
INSERT INTO `travel_location` VALUES ('436', '10', ',1,10,436,', '3', '喀布尔', 'Kabul', 'kabuer', 'KBL');
INSERT INTO `travel_location` VALUES ('437', '10', ',1,10,437,', '3', '坎大哈', 'Kandahar', 'kandaha', 'KDH');
INSERT INTO `travel_location` VALUES ('438', '10', ',1,10,438,', '3', '马扎里沙里夫', 'Mazar-i Sharif', 'mazhalishalifu', 'MZR');
INSERT INTO `travel_location` VALUES ('439', '11', ',5,11,439,', '3', '巴拉那', 'Parana', 'balana', 'PRA');
INSERT INTO `travel_location` VALUES ('440', '11', ',5,11,440,', '3', '别德马', 'Viedma', 'biedema', 'VDM');
INSERT INTO `travel_location` VALUES ('441', '11', ',5,11,441,', '3', '波萨达斯', 'Posadas', 'bosadasi', 'PSS');
INSERT INTO `travel_location` VALUES ('442', '11', ',5,11,442,', '3', '布兰卡港', 'Bahia Blanca', 'bulankagang', 'BHI');
INSERT INTO `travel_location` VALUES ('443', '11', ',5,11,443,', '3', '布宜诺斯艾利斯', 'Buenos Aires', 'buyinuosiailisi', 'BUE');
INSERT INTO `travel_location` VALUES ('444', '11', ',5,11,444,', '3', '福莫萨', 'Formosa', 'fumosa', 'FMA');
INSERT INTO `travel_location` VALUES ('445', '11', ',5,11,445,', '3', '胡胡伊', 'Jujuy', 'huhuyi', 'JUJ');
INSERT INTO `travel_location` VALUES ('446', '11', ',5,11,446,', '3', '卡塔马卡', 'Catamarca', 'katamaka', 'CTC');
INSERT INTO `travel_location` VALUES ('447', '11', ',5,11,447,', '3', '科尔多瓦', 'Cordoba', 'keerduowa', 'COR');
INSERT INTO `travel_location` VALUES ('448', '11', ',5,11,448,', '3', '科连特斯', 'Corrientes', 'keliantesi', 'CNQ');
INSERT INTO `travel_location` VALUES ('449', '11', ',5,11,449,', '3', '克劳斯城', 'Villa Krause', 'kelaosicheng', 'VLK');
INSERT INTO `travel_location` VALUES ('450', '11', ',5,11,450,', '3', '肯考迪娅', 'Concordia', 'kenkaodi', 'COC');
INSERT INTO `travel_location` VALUES ('451', '11', ',5,11,451,', '3', '拉里奥哈', 'La Rioja', 'laliaoha', 'IRJ');
INSERT INTO `travel_location` VALUES ('452', '11', ',5,11,452,', '3', '拉普拉塔', 'La Plata', 'lapulata', 'LPG');
INSERT INTO `travel_location` VALUES ('453', '11', ',5,11,453,', '3', '雷西斯滕匹亚', 'Resistencia', 'leixisipiya', 'RES');
INSERT INTO `travel_location` VALUES ('454', '11', ',5,11,454,', '3', '里奥加耶戈斯', 'Rio Gallegos', 'liaojiayegesi', 'RGL');
INSERT INTO `travel_location` VALUES ('455', '11', ',5,11,455,', '3', '里奥夸尔托', 'Rio Cuarto', 'liaokuaertuo', 'RCU');
INSERT INTO `travel_location` VALUES ('456', '11', ',5,11,456,', '3', '里瓦达维亚海军准将城', 'Comodoro Rivadavia', 'liwadaweiyahaijunzhunjiangcheng', 'CRD');
INSERT INTO `travel_location` VALUES ('457', '11', ',5,11,457,', '3', '罗萨里奥', 'Rosario', 'luosaliao', 'ROS');
INSERT INTO `travel_location` VALUES ('458', '11', ',5,11,458,', '3', '罗森', 'Rawson', 'luosen', 'RWO');
INSERT INTO `travel_location` VALUES ('459', '11', ',5,11,459,', '3', '马德普拉塔', 'Mar del Plata', 'madepulata', 'MDQ');
INSERT INTO `travel_location` VALUES ('460', '11', ',5,11,460,', '3', '门多萨', 'Mendoza', 'menduosa', 'MDZ');
INSERT INTO `travel_location` VALUES ('461', '11', ',5,11,461,', '3', '内乌肯', 'Neuquen', 'neiwuken', 'NQN');
INSERT INTO `travel_location` VALUES ('462', '11', ',5,11,462,', '3', '萨尔塔', 'Salta', 'saerta', 'SLA');
INSERT INTO `travel_location` VALUES ('463', '11', ',5,11,463,', '3', '圣地亚哥-德尔埃斯特罗', 'Santiago del Estero', 'shengdiyagedeeraisiteluo', 'SDE');
INSERT INTO `travel_location` VALUES ('464', '11', ',5,11,464,', '3', '圣菲', 'Santa Fe', 'shengfei', 'SFN');
INSERT INTO `travel_location` VALUES ('465', '11', ',5,11,465,', '3', '圣胡安', 'San Juan', 'shenghuan', 'UAQ');
INSERT INTO `travel_location` VALUES ('466', '11', ',5,11,466,', '3', '圣拉斐尔', 'San Rafael', 'shenglaer', 'AFA');
INSERT INTO `travel_location` VALUES ('467', '11', ',5,11,467,', '3', '圣路易斯', 'San Luis', 'shengluyisi', 'LUQ');
INSERT INTO `travel_location` VALUES ('468', '11', ',5,11,468,', '3', '圣罗莎', 'Santa Rosa', 'shengluosha', 'RSA');
INSERT INTO `travel_location` VALUES ('469', '11', ',5,11,469,', '3', '圣米格尔-德图库曼', 'San Miguel de Tucuman', 'shengmigeerdetukuman', 'SMC');
INSERT INTO `travel_location` VALUES ('470', '11', ',5,11,470,', '3', '圣尼古拉斯', 'San Nicolas', 'shengnigulasi', 'SNS');
INSERT INTO `travel_location` VALUES ('471', '11', ',5,11,471,', '3', '特雷利乌', 'Trelew', 'teleiliwu', 'REL');
INSERT INTO `travel_location` VALUES ('472', '11', ',5,11,472,', '3', '乌斯怀亚', 'Ushuaia', 'wusihuaiya', 'USH');
INSERT INTO `travel_location` VALUES ('473', '12', ',1,12,473,', '3', '阿布扎比', 'Abu Dhabi', 'abuzhabi', 'AZ');
INSERT INTO `travel_location` VALUES ('474', '12', ',1,12,474,', '3', '艾因', 'Al l\'Ayn', 'aiyin', 'AL');
INSERT INTO `travel_location` VALUES ('475', '12', ',1,12,475,', '3', '迪拜', 'Dubai', 'dibai', 'DU');
INSERT INTO `travel_location` VALUES ('476', '12', ',1,12,476,', '3', '沙迦', 'Ash Shariqah', 'sha', 'SH');
INSERT INTO `travel_location` VALUES ('477', '14', ',1,14,477,', '3', '巴提奈地区', 'Al-Batinah', 'batinaidiqu', 'BA');
INSERT INTO `travel_location` VALUES ('478', '14', ',1,14,478,', '3', '达希莱地区', 'Az-Zahirah', 'daxilaidiqu', 'ZA');
INSERT INTO `travel_location` VALUES ('479', '14', ',1,14,479,', '3', '东部地区', 'Ash-Sharqiyah', 'dongbudiqu', 'SH');
INSERT INTO `travel_location` VALUES ('480', '14', ',1,14,480,', '3', '马斯喀特省', 'Masqat', 'masikatesheng', 'MA');
INSERT INTO `travel_location` VALUES ('481', '14', ',1,14,481,', '3', '穆桑达姆省', 'Musandam', 'musangdamusheng', 'MU');
INSERT INTO `travel_location` VALUES ('482', '14', ',1,14,482,', '3', '内地地区', 'Ad-Dakhiliyah', 'neididiqu', 'DA');
INSERT INTO `travel_location` VALUES ('483', '14', ',1,14,483,', '3', '中部地区', 'Al-Wusta', 'zhongbudiqu', 'WU');
INSERT INTO `travel_location` VALUES ('484', '14', ',1,14,484,', '3', '佐法尔省', 'Zufar', 'zuofaersheng', 'ZU');
INSERT INTO `travel_location` VALUES ('485', '15', ',1,15,485,', '3', '阿布歇隆', 'Abseron', 'abuxielong', 'ABS');
INSERT INTO `travel_location` VALUES ('486', '15', ',1,15,486,', '3', '哈奇马斯', 'Xacmaz', 'haqimasi', 'XAC');
INSERT INTO `travel_location` VALUES ('487', '15', ',1,15,487,', '3', '卡尔巴卡尔', 'Kalbacar', 'kaerbakaer', 'KAL');
INSERT INTO `travel_location` VALUES ('488', '15', ',1,15,488,', '3', '卡扎赫', 'Qazax', 'kazhahe', 'QAZ');
INSERT INTO `travel_location` VALUES ('489', '15', ',1,15,489,', '3', '连科兰', 'Lankaran', 'liankelan', 'LAN');
INSERT INTO `travel_location` VALUES ('490', '15', ',1,15,490,', '3', '密尔-卡拉巴赫', 'Mil-Qarabax', 'mierkalabahe', 'MQA');
INSERT INTO `travel_location` VALUES ('491', '15', ',1,15,491,', '3', '穆甘-萨连', 'Mugan-Salyan', 'mugansalian', 'MSA');
INSERT INTO `travel_location` VALUES ('492', '15', ',1,15,492,', '3', '纳戈尔诺－卡拉巴赫', 'Nagorni-Qarabax', 'nageernuokalabahe', 'NQA');
INSERT INTO `travel_location` VALUES ('493', '15', ',1,15,493,', '3', '纳希切万', 'Naxcivan', 'naxiqiewan', 'NX');
INSERT INTO `travel_location` VALUES ('494', '15', ',1,15,494,', '3', '普利亚拉克斯', 'Priaraks', 'puliyalakesi', 'PRI');
INSERT INTO `travel_location` VALUES ('495', '15', ',1,15,495,', '3', '舍基', 'Saki', 'sheji', 'SA');
INSERT INTO `travel_location` VALUES ('496', '15', ',1,15,496,', '3', '苏姆盖特', 'Sumqayit', 'sumugaite', 'SMC');
INSERT INTO `travel_location` VALUES ('497', '15', ',1,15,497,', '3', '锡尔万', 'Sirvan', 'xierwan', 'SIR');
INSERT INTO `travel_location` VALUES ('498', '15', ',1,15,498,', '3', '占贾', 'Ganca', 'zhanjia', 'GA');
INSERT INTO `travel_location` VALUES ('499', '17', ',3,17,499,', '3', '阿斯旺', 'Aswan', 'asiwang', 'ASW');
INSERT INTO `travel_location` VALUES ('500', '17', ',3,17,500,', '3', '古尔代盖', 'Al Ghurdaqah', 'guerdaigai', 'GBY');
INSERT INTO `travel_location` VALUES ('501', '17', ',3,17,501,', '3', '开罗', 'Cairo', 'kailuo', 'CAI');
INSERT INTO `travel_location` VALUES ('502', '17', ',3,17,502,', '3', '苏布拉开马', 'Shubra al Khaymah', 'subulakaima', 'SKH');
INSERT INTO `travel_location` VALUES ('503', '17', ',3,17,503,', '3', '亚历山大', 'Alexandria', 'yalishanda', 'ALY');
INSERT INTO `travel_location` VALUES ('504', '18', ',3,18,504,', '3', '阿法尔', 'Afar', 'afaer', 'AF');
INSERT INTO `travel_location` VALUES ('505', '18', ',3,18,505,', '3', '阿姆哈拉', 'Amara', 'amuhala', 'AH');
INSERT INTO `travel_location` VALUES ('506', '18', ',3,18,506,', '3', '奥罗米亚', 'Oromiya', 'aoluomiya', 'OR');
INSERT INTO `travel_location` VALUES ('507', '18', ',3,18,507,', '3', '宾香古尔', 'Binshangul Gumuz', 'binxiangguer', 'BG');
INSERT INTO `travel_location` VALUES ('508', '18', ',3,18,508,', '3', '德雷达瓦', 'Dire Dawa', 'deleidawa', 'DD');
INSERT INTO `travel_location` VALUES ('509', '18', ',3,18,509,', '3', '甘贝拉各族', 'Gambela Hizboch', 'ganbeilagezu', 'GB');
INSERT INTO `travel_location` VALUES ('510', '18', ',3,18,510,', '3', '哈勒里民族', 'Hareri  Hizb', 'haleliminzu', 'HR');
INSERT INTO `travel_location` VALUES ('511', '18', ',3,18,511,', '3', '南方各族', 'YeDebub Biheroch', 'nanfanggezu', 'SN');
INSERT INTO `travel_location` VALUES ('512', '18', ',3,18,512,', '3', '索马里', 'Sumale', 'suomali', 'SM');
INSERT INTO `travel_location` VALUES ('513', '18', ',3,18,513,', '3', '提格雷', 'Tigray', 'tigelei', 'TG');
INSERT INTO `travel_location` VALUES ('514', '18', ',3,18,514,', '3', '亚的斯亚贝巴', 'Adis abeba', 'yadesiyabeiba', 'AA');
INSERT INTO `travel_location` VALUES ('515', '19', ',2,19,515,', '3', '奥法利', 'Offaly', 'aofali', 'OF');
INSERT INTO `travel_location` VALUES ('516', '19', ',2,19,516,', '3', '蒂珀雷里', 'Tipperary', 'dileili', 'TP');
INSERT INTO `travel_location` VALUES ('517', '19', ',2,19,517,', '3', '都柏林', 'Dublin', 'dubailin', 'DB');
INSERT INTO `travel_location` VALUES ('518', '19', ',2,19,518,', '3', '多内加尔', 'Donegal', 'duoneijiaer', 'DG');
INSERT INTO `travel_location` VALUES ('519', '19', ',2,19,519,', '3', '戈尔韦', 'Galway', 'geerwei', 'GW');
INSERT INTO `travel_location` VALUES ('520', '19', ',2,19,520,', '3', '基尔代尔', 'Kildare', 'jierdaier', 'KD');
INSERT INTO `travel_location` VALUES ('521', '19', ',2,19,521,', '3', '基尔肯尼', 'Kilkenny', 'jierkenni', 'KK');
INSERT INTO `travel_location` VALUES ('522', '19', ',2,19,522,', '3', '卡范', 'Cavan', 'kafan', 'CV');
INSERT INTO `travel_location` VALUES ('523', '19', ',2,19,523,', '3', '卡洛', 'Carlow', 'kaluo', 'CW');
INSERT INTO `travel_location` VALUES ('524', '19', ',2,19,524,', '3', '凯里', 'Kerry', 'kaili', 'KR');
INSERT INTO `travel_location` VALUES ('525', '19', ',2,19,525,', '3', '科克', 'Cork', 'keke', 'CK');
INSERT INTO `travel_location` VALUES ('526', '19', ',2,19,526,', '3', '克莱尔', 'Clare', 'kelaier', 'CL');
INSERT INTO `travel_location` VALUES ('527', '19', ',2,19,527,', '3', '朗福德', 'Longford', 'langfude', 'LF');
INSERT INTO `travel_location` VALUES ('528', '19', ',2,19,528,', '3', '劳斯', 'Louth', 'laosi', 'LT');
INSERT INTO `travel_location` VALUES ('529', '19', ',2,19,529,', '3', '崂斯', 'Laois', 'si', 'LA');
INSERT INTO `travel_location` VALUES ('530', '19', ',2,19,530,', '3', '利默里克', 'Limerick', 'limolike', 'LM');
INSERT INTO `travel_location` VALUES ('531', '19', ',2,19,531,', '3', '利特里姆', 'Leitrim', 'litelimu', 'LR');
INSERT INTO `travel_location` VALUES ('532', '19', ',2,19,532,', '3', '罗斯康芒', 'Roscommon', 'luosikangmang', 'RC');
INSERT INTO `travel_location` VALUES ('533', '19', ',2,19,533,', '3', '梅奥', 'Mayo', 'meiao', 'MY');
INSERT INTO `travel_location` VALUES ('534', '19', ',2,19,534,', '3', '米斯', 'Meath', 'misi', 'MT');
INSERT INTO `travel_location` VALUES ('535', '19', ',2,19,535,', '3', '莫内根', 'Monaghan', 'moneigen', 'MG');
INSERT INTO `travel_location` VALUES ('536', '19', ',2,19,536,', '3', '斯莱戈', 'Sligo', 'silaige', 'SL');
INSERT INTO `travel_location` VALUES ('537', '19', ',2,19,537,', '3', '威克洛', 'Wicklow', 'weikeluo', 'WK');
INSERT INTO `travel_location` VALUES ('538', '19', ',2,19,538,', '3', '韦克斯福德', 'Wexford', 'weikesifude', 'WX');
INSERT INTO `travel_location` VALUES ('539', '19', ',2,19,539,', '3', '沃特福德', 'Waterford', 'wotefude', 'WF');
INSERT INTO `travel_location` VALUES ('540', '19', ',2,19,540,', '3', '西米斯', 'Westmeath', 'ximisi', 'WM');
INSERT INTO `travel_location` VALUES ('541', '20', ',2,20,541,', '3', '贝尔瓦', 'Polva', 'beierwa', '65');
INSERT INTO `travel_location` VALUES ('542', '20', ',2,20,542,', '3', '哈留', 'Harju', 'haliu', '37');
INSERT INTO `travel_location` VALUES ('543', '20', ',2,20,543,', '3', '拉普拉', 'Rapla', 'lapula', '70');
INSERT INTO `travel_location` VALUES ('544', '20', ',2,20,544,', '3', '里亚内', 'Laane', 'liyanei', '57');
INSERT INTO `travel_location` VALUES ('545', '20', ',2,20,545,', '3', '帕尔努', 'Parnu', 'paernu', '67');
INSERT INTO `travel_location` VALUES ('546', '20', ',2,20,546,', '3', '萨雷', 'Saare', 'salei', '74');
INSERT INTO `travel_location` VALUES ('547', '20', ',2,20,547,', '3', '塔尔图', 'Tartu', 'taertu', '78');
INSERT INTO `travel_location` VALUES ('548', '20', ',2,20,548,', '3', '瓦尔加', 'Valga', 'waerjia', '82');
INSERT INTO `travel_location` VALUES ('549', '20', ',2,20,549,', '3', '维良地', 'Viljandi', 'weiliangdi', '84');
INSERT INTO `travel_location` VALUES ('550', '20', ',2,20,550,', '3', '维鲁', 'Laane-Viru', 'weilu', '59');
INSERT INTO `travel_location` VALUES ('551', '20', ',2,20,551,', '3', '沃鲁', 'Voru', 'wolu', '86');
INSERT INTO `travel_location` VALUES ('552', '20', ',2,20,552,', '3', '希尤', 'Hiiu', 'xiyou', '39');
INSERT INTO `travel_location` VALUES ('553', '20', ',2,20,553,', '3', '耶尔韦', 'Jarva', 'yeerwei', '51');
INSERT INTO `travel_location` VALUES ('554', '20', ',2,20,554,', '3', '耶盖瓦', 'Jogeva', 'yegaiwa', '49');
INSERT INTO `travel_location` VALUES ('555', '20', ',2,20,555,', '3', '依达－维鲁', 'Ida-Viru', 'yidaweilu', '44');
INSERT INTO `travel_location` VALUES ('556', '21', ',2,21,556,', '3', '安道尔城', 'Andorra la Vella', 'andaoercheng', '7');
INSERT INTO `travel_location` VALUES ('557', '21', ',2,21,557,', '3', '奥尔迪诺', 'Ordino', 'aoerdinuo', '5');
INSERT INTO `travel_location` VALUES ('558', '21', ',2,21,558,', '3', '恩坎普', 'Encamp', 'enkanpu', '3');
INSERT INTO `travel_location` VALUES ('559', '21', ',2,21,559,', '3', '卡尼略', 'Canillo', 'kanilue', '2');
INSERT INTO `travel_location` VALUES ('560', '21', ',2,21,560,', '3', '莱塞斯卡尔德－恩戈尔达', 'Escaldes-Engordany', 'laisaisikaerdeengeerda', '8');
INSERT INTO `travel_location` VALUES ('561', '21', ',2,21,561,', '3', '马萨纳', 'La Massana', 'masana', '4');
INSERT INTO `travel_location` VALUES ('562', '21', ',2,21,562,', '3', '圣胡利娅－德洛里亚', 'Sant Julia de Laria', 'shenghulideluoliya', '6');
INSERT INTO `travel_location` VALUES ('563', '22', ',3,22,563,', '3', '北宽扎', 'Cuanza Norte', 'beikuanzha', 'CNO');
INSERT INTO `travel_location` VALUES ('564', '22', ',3,22,564,', '3', '北隆达', 'Lunda Norte', 'beilongda', 'LNO');
INSERT INTO `travel_location` VALUES ('565', '22', ',3,22,565,', '3', '本戈', 'Bengo', 'benge', 'BGO');
INSERT INTO `travel_location` VALUES ('566', '22', ',3,22,566,', '3', '本格拉', 'Benguela', 'bengela', 'BGU');
INSERT INTO `travel_location` VALUES ('567', '22', ',3,22,567,', '3', '比耶', 'Bie', 'biye', 'BIE');
INSERT INTO `travel_location` VALUES ('568', '22', ',3,22,568,', '3', '卡宾达', 'Cabinda', 'kabinda', 'CAB');
INSERT INTO `travel_location` VALUES ('569', '22', ',3,22,569,', '3', '库内内', 'Cunene', 'kuneinei', 'CNN');
INSERT INTO `travel_location` VALUES ('570', '22', ',3,22,570,', '3', '宽多库邦戈', 'Cuando Cubango', 'kuanduokubangge', 'CCU');
INSERT INTO `travel_location` VALUES ('571', '22', ',3,22,571,', '3', '罗安达', 'Luanda', 'luoanda', 'LUA');
INSERT INTO `travel_location` VALUES ('572', '22', ',3,22,572,', '3', '马兰热', 'Malanje', 'malanre', 'MAL');
INSERT INTO `travel_location` VALUES ('573', '22', ',3,22,573,', '3', '莫希科', 'Moxico', 'moxike', 'MOX');
INSERT INTO `travel_location` VALUES ('574', '22', ',3,22,574,', '3', '纳米贝', 'Namibe', 'namibei', 'NAM');
INSERT INTO `travel_location` VALUES ('575', '22', ',3,22,575,', '3', '南宽扎', 'Cuanza Sul', 'nankuanzha', 'CUS');
INSERT INTO `travel_location` VALUES ('576', '22', ',3,22,576,', '3', '南隆达', 'Lunda Sul', 'nanlongda', 'LSU');
INSERT INTO `travel_location` VALUES ('577', '22', ',3,22,577,', '3', '万博', 'Huambo', 'wanbo', 'HUA');
INSERT INTO `travel_location` VALUES ('578', '22', ',3,22,578,', '3', '威拉', 'Huila', 'weila', 'HUI');
INSERT INTO `travel_location` VALUES ('579', '22', ',3,22,579,', '3', '威热', 'Uige', 'weire', 'UIG');
INSERT INTO `travel_location` VALUES ('580', '22', ',3,22,580,', '3', '扎伊尔', 'Zaire', 'zhayier', 'ZAI');
INSERT INTO `travel_location` VALUES ('581', '26', ',2,26,581,', '3', '布尔根兰', 'Burgenland', 'buergenlan', 'BUR');
INSERT INTO `travel_location` VALUES ('582', '26', ',2,26,582,', '3', '蒂罗尔', 'Tyrol', 'diluoer', 'TYR');
INSERT INTO `travel_location` VALUES ('583', '26', ',2,26,583,', '3', '福拉尔贝格', 'Vorarlberg', 'fulaerbeige', 'VOR');
INSERT INTO `travel_location` VALUES ('584', '26', ',2,26,584,', '3', '克恩顿', 'Carinthia', 'keendun', 'CAT');
INSERT INTO `travel_location` VALUES ('585', '26', ',2,26,585,', '3', '萨尔茨堡', 'Salzburg', 'saercibao', 'SZG');
INSERT INTO `travel_location` VALUES ('586', '26', ',2,26,586,', '3', '上奥地利', 'Upper Austria', 'shangaodili', 'UAU');
INSERT INTO `travel_location` VALUES ('587', '26', ',2,26,587,', '3', '施蒂利亚', 'Styria', 'shidiliya', 'STY');
INSERT INTO `travel_location` VALUES ('588', '26', ',2,26,588,', '3', '维也纳', 'Vienna', 'weiyena', 'VDD');
INSERT INTO `travel_location` VALUES ('589', '26', ',2,26,589,', '3', '下奥地利', 'Lower Austria', 'xiaaodili', 'LAU');
INSERT INTO `travel_location` VALUES ('590', '29', ',6,29,590,', '3', '北部', 'Northern', 'beibu', 'NO');
INSERT INTO `travel_location` VALUES ('591', '29', ',6,29,591,', '3', '布干维尔', 'Bougainville', 'buganweier', 'BV');
INSERT INTO `travel_location` VALUES ('592', '29', ',6,29,592,', '3', '东部高地', 'Eastern Highlands', 'dongbugaodi', 'EH');
INSERT INTO `travel_location` VALUES ('593', '29', ',6,29,593,', '3', '东塞皮克', 'East Sepik', 'dongsaipike', 'ES');
INSERT INTO `travel_location` VALUES ('594', '29', ',6,29,594,', '3', '东新不列颠', 'East New Britain', 'dongxinbuliedian', 'EB');
INSERT INTO `travel_location` VALUES ('595', '29', ',6,29,595,', '3', '恩加', 'Enga', 'enjia', 'EN');
INSERT INTO `travel_location` VALUES ('596', '29', ',6,29,596,', '3', '海湾', 'Gulf', 'haiwan', 'GU');
INSERT INTO `travel_location` VALUES ('597', '29', ',6,29,597,', '3', '马当', 'Madang', 'madang', 'MD');
INSERT INTO `travel_location` VALUES ('598', '29', ',6,29,598,', '3', '马努斯', 'Manus', 'manusi', 'MN');
INSERT INTO `travel_location` VALUES ('599', '29', ',6,29,599,', '3', '米尔恩湾', 'Milne Bay', 'mierenwan', 'MB');
INSERT INTO `travel_location` VALUES ('600', '29', ',6,29,600,', '3', '莫尔兹比港', 'Port Moresby', 'moerzibigang', 'NC');
INSERT INTO `travel_location` VALUES ('601', '29', ',6,29,601,', '3', '莫罗贝', 'Morobe', 'moluobei', 'MR');
INSERT INTO `travel_location` VALUES ('602', '29', ',6,29,602,', '3', '南部高地', 'Southern Highlands', 'nanbugaodi', 'SH');
INSERT INTO `travel_location` VALUES ('603', '29', ',6,29,603,', '3', '钦布', 'Simbu', 'qinbu', 'SI');
INSERT INTO `travel_location` VALUES ('604', '29', ',6,29,604,', '3', '桑道恩', 'Sandaun', 'sangdaoen', 'SA');
INSERT INTO `travel_location` VALUES ('605', '29', ',6,29,605,', '3', '西部', 'Western', 'xibu', 'WE');
INSERT INTO `travel_location` VALUES ('606', '29', ',6,29,606,', '3', '西部高地', 'Western Highlands', 'xibugaodi', 'WH');
INSERT INTO `travel_location` VALUES ('607', '29', ',6,29,607,', '3', '西新不列颠', 'West New Britain', 'xixinbuliedian', 'WB');
INSERT INTO `travel_location` VALUES ('608', '29', ',6,29,608,', '3', '新爱尔兰', 'New Ireland', 'xinaierlan', 'NI');
INSERT INTO `travel_location` VALUES ('609', '31', ',1,31,609,', '3', '白沙瓦', 'Peshawar', 'baishawa', 'PEW');
INSERT INTO `travel_location` VALUES ('610', '31', ',1,31,610,', '3', '费萨拉巴德', 'Faisalabad', 'feisalabade', 'LYP');
INSERT INTO `travel_location` VALUES ('611', '31', ',1,31,611,', '3', '故吉软瓦拉', 'Gujranwala', 'gujiruanwala', 'GUJ');
INSERT INTO `travel_location` VALUES ('612', '31', ',1,31,612,', '3', '海德拉巴', 'Hyderabad', 'haidelaba', 'HDD');
INSERT INTO `travel_location` VALUES ('613', '31', ',1,31,613,', '3', '卡拉奇', 'Karachi', 'kalaqi', 'KCT');
INSERT INTO `travel_location` VALUES ('614', '31', ',1,31,614,', '3', '拉合尔', 'Lahore', 'laheer', 'LHE');
INSERT INTO `travel_location` VALUES ('615', '31', ',1,31,615,', '3', '拉瓦尔品第', 'Rawalpindi', 'lawaerpindi', 'RWP');
INSERT INTO `travel_location` VALUES ('616', '31', ',1,31,616,', '3', '木尔坦', 'Multan', 'muertan', 'MUX');
INSERT INTO `travel_location` VALUES ('617', '31', ',1,31,617,', '3', '伊斯兰堡', 'Islamabad', 'yisilanbao', 'ISB');
INSERT INTO `travel_location` VALUES ('618', '32', ',5,32,618,', '3', '阿曼拜', 'Amambay', 'amanbai', 'AM');
INSERT INTO `travel_location` VALUES ('619', '32', ',5,32,619,', '3', '阿耶斯总统省', 'Presidente Hayes', 'ayesizongtongsheng', 'PH');
INSERT INTO `travel_location` VALUES ('620', '32', ',5,32,620,', '3', '巴拉瓜里', 'Paraguari', 'balaguali', 'PA');
INSERT INTO `travel_location` VALUES ('621', '32', ',5,32,621,', '3', '博克龙', 'Boqueron', 'bokelong', 'BO');
INSERT INTO `travel_location` VALUES ('622', '32', ',5,32,622,', '3', '瓜伊拉', 'Guaira', 'guayila', 'GU');
INSERT INTO `travel_location` VALUES ('623', '32', ',5,32,623,', '3', '卡瓜苏', 'Caaguazu', 'kaguasu', 'CG');
INSERT INTO `travel_location` VALUES ('624', '32', ',5,32,624,', '3', '卡嫩迪尤', 'Canindeyu', 'kanendiyou', 'CN');
INSERT INTO `travel_location` VALUES ('625', '32', ',5,32,625,', '3', '卡萨帕', 'Caazapa', 'kasapa', 'CZ');
INSERT INTO `travel_location` VALUES ('626', '32', ',5,32,626,', '3', '康塞普西翁', 'Concepcion', 'kangsaipuxiweng', 'CC');
INSERT INTO `travel_location` VALUES ('627', '32', ',5,32,627,', '3', '科迪勒拉', 'Cordillera', 'kedilela', 'CD');
INSERT INTO `travel_location` VALUES ('628', '32', ',5,32,628,', '3', '米西奥内斯', 'Misiones', 'mixiaoneisi', 'MI');
INSERT INTO `travel_location` VALUES ('629', '32', ',5,32,629,', '3', '涅恩布库', 'Neembucu', 'nieenbuku', 'NE');
INSERT INTO `travel_location` VALUES ('630', '32', ',5,32,630,', '3', '上巴拉圭', 'Alto Paraguay', 'shangbalagui', 'AG');
INSERT INTO `travel_location` VALUES ('631', '32', ',5,32,631,', '3', '上巴拉那', 'Alto Parana', 'shangbalana', 'AN');
INSERT INTO `travel_location` VALUES ('632', '32', ',5,32,632,', '3', '圣佩德罗', 'San Pedro', 'shengpeideluo', 'SP');
INSERT INTO `travel_location` VALUES ('633', '32', ',5,32,633,', '3', '亚松森特别区', 'Asuncion', 'yasongsentebiequ', 'AS');
INSERT INTO `travel_location` VALUES ('634', '32', ',5,32,634,', '3', '伊塔普亚', 'Itapua', 'yitapuya', 'IT');
INSERT INTO `travel_location` VALUES ('635', '32', ',5,32,635,', '3', '中央', 'Central', 'zhongyang', 'CE');
INSERT INTO `travel_location` VALUES ('636', '33', ',1,33,636,', '3', '加沙地带', 'Gaza Strip', 'jiashadidai', 'GZ');
INSERT INTO `travel_location` VALUES ('637', '33', ',1,33,637,', '3', '西岸', 'West Bank', 'xian', 'WE');
INSERT INTO `travel_location` VALUES ('638', '34', ',1,34,638,', '3', '北部', 'Ash-Shamaliyah', 'beibu', '5');
INSERT INTO `travel_location` VALUES ('639', '34', ',1,34,639,', '3', '哈德', 'Al-Hadd', 'hade', '1');
INSERT INTO `travel_location` VALUES ('640', '34', ',1,34,640,', '3', '哈马德', 'Hammad', 'hamade', '12');
INSERT INTO `travel_location` VALUES ('641', '34', ',1,34,641,', '3', '里法', 'Ar-Rifa', 'lifa', '9');
INSERT INTO `travel_location` VALUES ('642', '34', ',1,34,642,', '3', '麦纳麦', 'Al-Manamah', 'mainamai', '3');
INSERT INTO `travel_location` VALUES ('643', '34', ',1,34,643,', '3', '穆哈拉格', 'Al-Muharraq', 'muhalage', '2');
INSERT INTO `travel_location` VALUES ('644', '34', ',1,34,644,', '3', '西部', 'Al-Gharbiyah', 'xibu', '10');
INSERT INTO `travel_location` VALUES ('645', '34', ',1,34,645,', '3', '伊萨城', 'Isa', 'yisacheng', '8');
INSERT INTO `travel_location` VALUES ('646', '34', ',1,34,646,', '3', '中部', 'Al-Wusta', 'zhongbu', '7');
INSERT INTO `travel_location` VALUES ('647', '36', ',5,36,647,', '3', '阿克里', 'Acre', 'akeli', 'AC');
INSERT INTO `travel_location` VALUES ('648', '36', ',5,36,648,', '3', '阿拉戈斯', 'Alagoas', 'alagesi', 'AL');
INSERT INTO `travel_location` VALUES ('649', '36', ',5,36,649,', '3', '阿马帕', 'Amapa', 'amapa', 'AP');
INSERT INTO `travel_location` VALUES ('650', '36', ',5,36,650,', '3', '巴拉那', 'Parana', 'balana', 'PR');
INSERT INTO `travel_location` VALUES ('651', '36', ',5,36,651,', '3', '巴西利亚', 'Brasilia', 'baxiliya', 'BSB');
INSERT INTO `travel_location` VALUES ('652', '36', ',5,36,652,', '3', '巴伊亚', 'Bahia', 'bayiya', 'BA');
INSERT INTO `travel_location` VALUES ('653', '36', ',5,36,653,', '3', '北里奥格兰德', 'Rio Grande do Norte', 'beiliaogelande', 'RN');
INSERT INTO `travel_location` VALUES ('654', '36', ',5,36,654,', '3', '伯南布哥', 'Pernambuco', 'bonanbuge', 'PE');
INSERT INTO `travel_location` VALUES ('655', '36', ',5,36,655,', '3', '戈亚斯', 'Goias', 'geyasi', 'GO');
INSERT INTO `travel_location` VALUES ('656', '36', ',5,36,656,', '3', '朗多尼亚', 'Rondonia', 'langduoniya', 'RO');
INSERT INTO `travel_location` VALUES ('657', '36', ',5,36,657,', '3', '里约热内卢', 'Rio de Janeiro', 'liyuereneilu', 'RJ');
INSERT INTO `travel_location` VALUES ('658', '36', ',5,36,658,', '3', '罗赖马', 'Roraima', 'luolaima', 'RR');
INSERT INTO `travel_location` VALUES ('659', '36', ',5,36,659,', '3', '马拉尼昂', 'Maranhao', 'malaniang', 'MA');
INSERT INTO `travel_location` VALUES ('660', '36', ',5,36,660,', '3', '马托格罗索', 'Mato Grosso', 'matuogeluosuo', 'MT');
INSERT INTO `travel_location` VALUES ('661', '36', ',5,36,661,', '3', '米纳斯吉拉斯', 'Minas Gerais', 'minasijilasi', 'MG');
INSERT INTO `travel_location` VALUES ('662', '36', ',5,36,662,', '3', '南里奥格兰德', 'Rio Grande do Sul', 'nanliaogelande', 'RS');
INSERT INTO `travel_location` VALUES ('663', '36', ',5,36,663,', '3', '南马托格罗索', 'Mato Grosso do Sul', 'nanmatuogeluosuo', 'MS');
INSERT INTO `travel_location` VALUES ('664', '36', ',5,36,664,', '3', '帕拉', 'Para', 'pala', 'PA');
INSERT INTO `travel_location` VALUES ('665', '36', ',5,36,665,', '3', '帕拉伊巴', 'Paraiba', 'palayiba', 'PB');
INSERT INTO `travel_location` VALUES ('666', '36', ',5,36,666,', '3', '皮奥伊', 'Piaui', 'piaoyi', 'PI');
INSERT INTO `travel_location` VALUES ('667', '36', ',5,36,667,', '3', '塞阿拉', 'Ceara', 'saiala', 'CE');
INSERT INTO `travel_location` VALUES ('668', '36', ',5,36,668,', '3', '塞尔希培', 'Sergipe', 'saierxipei', 'SE');
INSERT INTO `travel_location` VALUES ('669', '36', ',5,36,669,', '3', '圣埃斯皮里图', 'Espirito Santo', 'shengaisipilitu', 'ES');
INSERT INTO `travel_location` VALUES ('670', '36', ',5,36,670,', '3', '圣保罗', 'Sao Paulo', 'shengbaoluo', 'SP');
INSERT INTO `travel_location` VALUES ('671', '36', ',5,36,671,', '3', '圣卡塔琳娜', 'Santa Catarina', 'shengkatalinna', 'SC');
INSERT INTO `travel_location` VALUES ('672', '36', ',5,36,672,', '3', '托坎廷斯', 'Tocantins', 'tuokantingsi', 'TO');
INSERT INTO `travel_location` VALUES ('673', '36', ',5,36,673,', '3', '亚马孙', 'Amazonas', 'yamasun', 'AM');
INSERT INTO `travel_location` VALUES ('674', '37', ',2,37,674,', '3', '布列斯特', 'Bresckaja', 'buliesite', 'BR');
INSERT INTO `travel_location` VALUES ('675', '37', ',2,37,675,', '3', '戈梅利', 'Homelskaja', 'gemeili', 'HO');
INSERT INTO `travel_location` VALUES ('676', '37', ',2,37,676,', '3', '格罗德诺', 'Hrodzenskaja', 'geluodenuo', 'HR');
INSERT INTO `travel_location` VALUES ('677', '37', ',2,37,677,', '3', '明斯克市', 'Minsk', 'mingsikeshi', 'MI');
INSERT INTO `travel_location` VALUES ('678', '37', ',2,37,678,', '3', '莫吉廖夫', 'Mahileuskaja', 'mojiliaofu', 'MA');
INSERT INTO `travel_location` VALUES ('679', '37', ',2,37,679,', '3', '维捷布斯克', 'Vicebskaja', 'weijiebusike', 'VI');
INSERT INTO `travel_location` VALUES ('680', '39', ',2,39,680,', '3', '布尔加斯', 'Burgas', 'buerjiasi', 'BOJ');
INSERT INTO `travel_location` VALUES ('681', '39', ',2,39,681,', '3', '卡斯科伏', 'Khaskovo', 'kasikefu', 'KHO');
INSERT INTO `travel_location` VALUES ('682', '39', ',2,39,682,', '3', '鲁塞', 'Ruse', 'lusai', 'ROU');
INSERT INTO `travel_location` VALUES ('683', '39', ',2,39,683,', '3', '洛维奇', 'Lovech', 'luoweiqi', 'LVP');
INSERT INTO `travel_location` VALUES ('684', '39', ',2,39,684,', '3', '蒙塔纳', 'Montana', 'mengtana', 'OZA');
INSERT INTO `travel_location` VALUES ('685', '39', ',2,39,685,', '3', '普罗夫迪夫', 'Plovdiv', 'puluofudifu', 'PDV');
INSERT INTO `travel_location` VALUES ('686', '39', ',2,39,686,', '3', '索非亚', 'Sofiya', 'suofeiya', 'SOF');
INSERT INTO `travel_location` VALUES ('687', '39', ',2,39,687,', '3', '索非亚市', 'Grad Sofiya', 'suofeiyashi', 'GSO');
INSERT INTO `travel_location` VALUES ('688', '39', ',2,39,688,', '3', '瓦尔纳', 'Varna', 'waerna', 'VAR');
INSERT INTO `travel_location` VALUES ('689', '41', ',3,41,689,', '3', '阿黎博里', 'Alibori', 'aliboli', 'AL');
INSERT INTO `travel_location` VALUES ('690', '41', ',3,41,690,', '3', '阿塔科拉', 'Atakora', 'atakela', 'AK');
INSERT INTO `travel_location` VALUES ('691', '41', ',3,41,691,', '3', '滨海', 'Littoral', 'binhai', 'LI');
INSERT INTO `travel_location` VALUES ('692', '41', ',3,41,692,', '3', '波希康市', 'Bohicon', 'boxikangshi', 'BOH');
INSERT INTO `travel_location` VALUES ('693', '41', ',3,41,693,', '3', '博尔古', 'Borgou', 'boergu', 'BO');
INSERT INTO `travel_location` VALUES ('694', '41', ',3,41,694,', '3', '大西洋', 'Atlantique', 'daxiyang', 'AQ');
INSERT INTO `travel_location` VALUES ('695', '41', ',3,41,695,', '3', '高原', 'Plateau', 'gaoyuan', 'PL');
INSERT INTO `travel_location` VALUES ('696', '41', ',3,41,696,', '3', '库福', 'Kouffo', 'kufu', 'KO');
INSERT INTO `travel_location` VALUES ('697', '41', ',3,41,697,', '3', '莫诺', 'Mono', 'monuo', 'MO');
INSERT INTO `travel_location` VALUES ('698', '41', ',3,41,698,', '3', '丘陵', 'Collines', 'qiuling', 'CO');
INSERT INTO `travel_location` VALUES ('699', '41', ',3,41,699,', '3', '韦梅', 'Oueme', 'weimei', 'OU');
INSERT INTO `travel_location` VALUES ('700', '41', ',3,41,700,', '3', '峡谷', 'Donga', 'xiagu', 'DO');
INSERT INTO `travel_location` VALUES ('701', '41', ',3,41,701,', '3', '祖', 'Zou', 'zu', 'ZO');
INSERT INTO `travel_location` VALUES ('702', '42', ',2,42,702,', '3', '埃诺', 'Hainaut', 'ainuo', 'WHT');
INSERT INTO `travel_location` VALUES ('703', '42', ',2,42,703,', '3', '安特卫普', 'Antwerpen', 'anteweipu', 'VAN');
INSERT INTO `travel_location` VALUES ('704', '42', ',2,42,704,', '3', '布拉班特-瓦隆', 'Brabant-Wallone', 'bulabantewalong', 'WBR');
INSERT INTO `travel_location` VALUES ('705', '42', ',2,42,705,', '3', '布鲁塞尔', 'Brussels', 'bulusaier', 'BRU');
INSERT INTO `travel_location` VALUES ('706', '42', ',2,42,706,', '3', '东佛兰德', 'Oost-Vlaanderen', 'dongfolande', 'VOV');
INSERT INTO `travel_location` VALUES ('707', '42', ',2,42,707,', '3', '佛兰芒-布拉班特', 'Vlaams-Brabant', 'folanmangbulabante', 'VBR');
INSERT INTO `travel_location` VALUES ('708', '42', ',2,42,708,', '3', '列日', 'Liege', 'lieri', 'WLG');
INSERT INTO `travel_location` VALUES ('709', '42', ',2,42,709,', '3', '林堡', 'Limburg', 'linbao', 'VLI');
INSERT INTO `travel_location` VALUES ('710', '42', ',2,42,710,', '3', '卢森堡', 'Luxembourg', 'lusenbao', 'WLX');
INSERT INTO `travel_location` VALUES ('711', '42', ',2,42,711,', '3', '那慕尔', 'Namur', 'namuer', 'WNA');
INSERT INTO `travel_location` VALUES ('712', '42', ',2,42,712,', '3', '西佛兰德', 'West-Vlaanderen', 'xifolande', 'VWV');
INSERT INTO `travel_location` VALUES ('713', '45', ',2,45,713,', '3', '埃尔布隆格', 'Elbląg', 'aierbulongge', 'ELB');
INSERT INTO `travel_location` VALUES ('714', '45', ',2,45,714,', '3', '奥尔什丁', 'Olsztyn', 'aoershiding', 'OLS');
INSERT INTO `travel_location` VALUES ('715', '45', ',2,45,715,', '3', '奥斯特罗文卡', 'Ostrołeka', 'aositeluowenka', 'OSS');
INSERT INTO `travel_location` VALUES ('716', '45', ',2,45,716,', '3', '比得哥什', 'Bydgoszcz', 'bidegeshi', 'BZG');
INSERT INTO `travel_location` VALUES ('717', '45', ',2,45,717,', '3', '彼得库夫', 'Piotrkow', 'bidekufu', 'PIO');
INSERT INTO `travel_location` VALUES ('718', '45', ',2,45,718,', '3', '比托姆', 'Bytom', 'bituomu', 'BYT');
INSERT INTO `travel_location` VALUES ('719', '45', ',2,45,719,', '3', '比亚瓦波德拉斯卡', 'Biała Podlaska', 'biyawabodelasika', 'BAP');
INSERT INTO `travel_location` VALUES ('720', '45', ',2,45,720,', '3', '比亚维斯托克', 'Białystok', 'biyaweisituoke', 'BIA');
INSERT INTO `travel_location` VALUES ('721', '45', ',2,45,721,', '3', '波莱', 'Opole', 'bolai', 'OPO');
INSERT INTO `travel_location` VALUES ('722', '45', ',2,45,722,', '3', '波兹南', 'Poznan', 'bozinan', 'POZ');
INSERT INTO `travel_location` VALUES ('723', '45', ',2,45,723,', '3', '达布罗瓦戈尼察', 'Dabrowa Gornicza', 'dabuluowagenicha', 'DAB');
INSERT INTO `travel_location` VALUES ('724', '45', ',2,45,724,', '3', '大波兰地区戈茹夫', 'Gorzow Wlkp', 'dabolandiqugerufu', 'GOW');
INSERT INTO `travel_location` VALUES ('725', '45', ',2,45,725,', '3', '弗罗茨瓦夫', 'Wroclaw', 'fuluociwafu', 'WRO');
INSERT INTO `travel_location` VALUES ('726', '45', ',2,45,726,', '3', '弗沃茨瓦韦克', 'Wlocławek', 'fuwociwaweike', 'WLO');
INSERT INTO `travel_location` VALUES ('727', '45', ',2,45,727,', '3', '格但斯克', 'Gdansk', 'gedansike', 'GDN');
INSERT INTO `travel_location` VALUES ('728', '45', ',2,45,728,', '3', '格丁尼亚', 'Gdynia', 'gedingniya', 'GDY');
INSERT INTO `travel_location` VALUES ('729', '45', ',2,45,729,', '3', '格利维采', 'Gliwice', 'geliweicai', 'GWC');
INSERT INTO `travel_location` VALUES ('730', '45', ',2,45,730,', '3', '格鲁琼兹', 'Grudziadz', 'geluqiongzi', 'GRU');
INSERT INTO `travel_location` VALUES ('731', '45', ',2,45,731,', '3', '海乌姆', 'Chełm', 'haiwumu', 'CHO');
INSERT INTO `travel_location` VALUES ('732', '45', ',2,45,732,', '3', '华沙', 'Warszawa', 'huasha', 'WAW');
INSERT INTO `travel_location` VALUES ('733', '45', ',2,45,733,', '3', '霍茹夫', 'Chorzow', 'huorufu', 'CHZ');
INSERT INTO `travel_location` VALUES ('734', '45', ',2,45,734,', '3', '卡利什', 'Kalisz', 'kalishi', 'KAL');
INSERT INTO `travel_location` VALUES ('735', '45', ',2,45,735,', '3', '卡托维兹', 'Katowice', 'katuoweizi', 'KTW');
INSERT INTO `travel_location` VALUES ('736', '45', ',2,45,736,', '3', '凯尔采', 'Kielce', 'kaiercai', 'KLC');
INSERT INTO `travel_location` VALUES ('737', '45', ',2,45,737,', '3', '科宁', 'Konin', 'kening', 'KON');
INSERT INTO `travel_location` VALUES ('738', '45', ',2,45,738,', '3', '科沙林', 'Koszalin', 'keshalin', 'OSZ');
INSERT INTO `travel_location` VALUES ('739', '45', ',2,45,739,', '3', '克拉科夫', 'Krakow', 'kelakefu', 'KRK');
INSERT INTO `travel_location` VALUES ('740', '45', ',2,45,740,', '3', '克罗斯诺', 'Krosno', 'keluosinuo', 'KRO');
INSERT INTO `travel_location` VALUES ('741', '45', ',2,45,741,', '3', '拉多姆', 'Radom', 'laduomu', 'RDM');
INSERT INTO `travel_location` VALUES ('742', '45', ',2,45,742,', '3', '莱格尼察', 'Legnica', 'laigenicha', 'LEG');
INSERT INTO `travel_location` VALUES ('743', '45', ',2,45,743,', '3', '莱什诺', 'Leszno', 'laishinuo', 'LEZ');
INSERT INTO `travel_location` VALUES ('744', '45', ',2,45,744,', '3', '卢布林', 'Lublin', 'lubulin', 'LUL');
INSERT INTO `travel_location` VALUES ('745', '45', ',2,45,745,', '3', '鲁达', 'Ruda Sl', 'luda', 'RDS');
INSERT INTO `travel_location` VALUES ('746', '45', ',2,45,746,', '3', '罗兹', 'Lodz', 'luozi', 'LOD');
INSERT INTO `travel_location` VALUES ('747', '45', ',2,45,747,', '3', '绿山城', 'Zielona Gora', 'lvshancheng', 'IEG');
INSERT INTO `travel_location` VALUES ('748', '45', ',2,45,748,', '3', '米什洛维采', 'Mysłowice', 'mishiluoweicai', 'MYL');
INSERT INTO `travel_location` VALUES ('749', '45', ',2,45,749,', '3', '皮瓦', 'Piła', 'piwa', 'PIL');
INSERT INTO `travel_location` VALUES ('750', '45', ',2,45,750,', '3', '普热梅希尔', 'Przemysl', 'puremeixier', 'PRZ');
INSERT INTO `travel_location` VALUES ('751', '45', ',2,45,751,', '3', '普沃茨克', 'Plock', 'puwocike', 'PLO');
INSERT INTO `travel_location` VALUES ('752', '45', ',2,45,752,', '3', '切哈努夫', 'Ciechanow', 'qiehanufu', 'CIE');
INSERT INTO `travel_location` VALUES ('753', '45', ',2,45,753,', '3', '热舒夫', 'Rzeszow', 'reshufu', 'RZE');
INSERT INTO `travel_location` VALUES ('754', '45', ',2,45,754,', '3', '什切青', 'Szczecin', 'shiqieqing', 'SZZ');
INSERT INTO `travel_location` VALUES ('755', '45', ',2,45,755,', '3', '斯凯尔涅维采', 'Skierniewice', 'sikaiernieweicai', 'SKI');
INSERT INTO `travel_location` VALUES ('756', '45', ',2,45,756,', '3', '斯武普斯克', 'Slupsk', 'siwupusike', 'SLP');
INSERT INTO `travel_location` VALUES ('757', '45', ',2,45,757,', '3', '苏瓦乌基', 'Suwałki', 'suwawuji', 'SWL');
INSERT INTO `travel_location` VALUES ('758', '45', ',2,45,758,', '3', '索波特', 'Sopot', 'suobote', 'SOP');
INSERT INTO `travel_location` VALUES ('759', '45', ',2,45,759,', '3', '索斯诺维茨', 'Sosnowiec', 'suosinuoweici', 'SWC');
INSERT INTO `travel_location` VALUES ('760', '45', ',2,45,760,', '3', '塔尔努夫', 'Tarnow', 'taernufu', 'TAR');
INSERT INTO `travel_location` VALUES ('761', '45', ',2,45,761,', '3', '塔尔诺布热格', 'Tarnobrzeg', 'taernuoburege', 'QEP');
INSERT INTO `travel_location` VALUES ('762', '45', ',2,45,762,', '3', '特切', 'Tychy', 'teqie', 'TYY');
INSERT INTO `travel_location` VALUES ('763', '45', ',2,45,763,', '3', '托伦', 'Torun', 'tuolun', 'TOR');
INSERT INTO `travel_location` VALUES ('764', '45', ',2,45,764,', '3', '瓦乌布日赫', 'Walbrzych', 'wawuburihe', 'WZH');
INSERT INTO `travel_location` VALUES ('765', '45', ',2,45,765,', '3', '沃姆扎', 'Lomza', 'womuzha', 'QOY');
INSERT INTO `travel_location` VALUES ('766', '45', ',2,45,766,', '3', '希米亚诺维采', 'Siemianowice Sl', 'ximiyanuoweicai', 'SOW');
INSERT INTO `travel_location` VALUES ('767', '45', ',2,45,767,', '3', '希维诺乌伊希切', 'Swinoujscie', 'xiweinuowuyixiqie', 'SWI');
INSERT INTO `travel_location` VALUES ('768', '45', ',2,45,768,', '3', '希维托赫洛维采', 'Swietochłowice', 'xiweituoheluoweicai', 'SWT');
INSERT INTO `travel_location` VALUES ('769', '45', ',2,45,769,', '3', '谢德尔采', 'Siedlce', 'xiedeercai', 'SDC');
INSERT INTO `travel_location` VALUES ('770', '45', ',2,45,770,', '3', '谢拉兹', 'Sieradz', 'xielazi', 'SIR');
INSERT INTO `travel_location` VALUES ('771', '45', ',2,45,771,', '3', '新松奇', 'Nowy Sacz', 'xinsongqi', 'NOW');
INSERT INTO `travel_location` VALUES ('772', '45', ',2,45,772,', '3', '雅沃兹诺', 'Jaworzno', 'yawozinuo', 'JAW');
INSERT INTO `travel_location` VALUES ('773', '45', ',2,45,773,', '3', '耶莱尼亚古拉', 'Jelenia Gora', 'yelainiyagula', 'JEG');
INSERT INTO `travel_location` VALUES ('774', '45', ',2,45,774,', '3', '扎布热', 'Zabrze', 'zhabure', 'ZAB');
INSERT INTO `travel_location` VALUES ('775', '45', ',2,45,775,', '3', '扎莫希奇', 'Zamosc', 'zhamoxiqi', 'ZAM');
INSERT INTO `travel_location` VALUES ('776', '46', ',5,46,776,', '3', '奥尔托', 'El Alto', 'aoertuo', 'ALT');
INSERT INTO `travel_location` VALUES ('777', '46', ',5,46,777,', '3', '奥鲁罗', 'Oruro', 'aoluluo', 'ORU');
INSERT INTO `travel_location` VALUES ('778', '46', ',5,46,778,', '3', '贝尼', 'El Beni', 'beini', 'BEN');
INSERT INTO `travel_location` VALUES ('779', '46', ',5,46,779,', '3', '波多西', 'Potosi', 'boduoxi', 'POI');
INSERT INTO `travel_location` VALUES ('780', '46', ',5,46,780,', '3', '基拉科洛', 'Quillacollo', 'jilakeluo', 'QUI');
INSERT INTO `travel_location` VALUES ('781', '46', ',5,46,781,', '3', '科恰班巴', 'Cochabamba', 'keqiabanba', 'CBB');
INSERT INTO `travel_location` VALUES ('782', '46', ',5,46,782,', '3', '拉巴斯', 'La Paz', 'labasi', 'LPB');
INSERT INTO `travel_location` VALUES ('783', '46', ',5,46,783,', '3', '潘多', 'Pando', 'panduo', 'PAN');
INSERT INTO `travel_location` VALUES ('784', '46', ',5,46,784,', '3', '丘基萨卡', 'Chuquisaca', 'qiujisaka', 'CHU');
INSERT INTO `travel_location` VALUES ('785', '46', ',5,46,785,', '3', '萨卡巴', 'Sacaba', 'sakaba', 'SAC');
INSERT INTO `travel_location` VALUES ('786', '46', ',5,46,786,', '3', '圣克鲁斯', 'Santa Cruz', 'shengkelusi', 'SRZ');
INSERT INTO `travel_location` VALUES ('787', '46', ',5,46,787,', '3', '塔里哈', 'Tarija', 'taliha', 'TJA');
INSERT INTO `travel_location` VALUES ('788', '47', ',2,47,788,', '3', '波萨维纳', 'Posavski', 'bosaweina', 'FPO');
INSERT INTO `travel_location` VALUES ('789', '47', ',2,47,789,', '3', '波斯尼亚－波德里涅', 'Bosansko-Podrinjski', 'bosiniyabodelinie', 'FBP');
INSERT INTO `travel_location` VALUES ('790', '47', ',2,47,790,', '3', '多米斯拉夫格勒', 'Tomislavgrad', 'duomisilafugele', 'FTO');
INSERT INTO `travel_location` VALUES ('791', '47', ',2,47,791,', '3', '黑塞哥维那－涅雷特瓦', 'Hercegovacko-Neretvanski', 'heisaigeweinanieleitewa', 'FHN');
INSERT INTO `travel_location` VALUES ('792', '47', ',2,47,792,', '3', '萨拉热窝', 'Sarajevo', 'salarewo', 'FSA');
INSERT INTO `travel_location` VALUES ('793', '47', ',2,47,793,', '3', '图兹拉－波德里涅', 'Tuzlanski-Podrinjski', 'tuzilabodelinie', 'FTU');
INSERT INTO `travel_location` VALUES ('794', '47', ',2,47,794,', '3', '乌纳－萨纳', 'Unsko-Sanski', 'wunasana', 'FUS');
INSERT INTO `travel_location` VALUES ('795', '47', ',2,47,795,', '3', '西波斯尼亚', 'Hercegovacko-Bosanski', 'xibosiniya', 'FHB');
INSERT INTO `travel_location` VALUES ('796', '47', ',2,47,796,', '3', '西黑塞哥维那', 'Zapadno-Hercegovaki', 'xiheisaigeweina', 'FZH');
INSERT INTO `travel_location` VALUES ('797', '47', ',2,47,797,', '3', '泽尼察－多博伊', 'Zenicko-Dobojski', 'zenichaduoboyi', 'FZE');
INSERT INTO `travel_location` VALUES ('798', '47', ',2,47,798,', '3', '中波斯尼亚', 'Srednjo-Bosanski', 'zhongbosiniya', 'FSB');
INSERT INTO `travel_location` VALUES ('799', '49', ',4,49,799,', '3', '伯利兹', 'Belize', 'bolizi', 'BZ');
INSERT INTO `travel_location` VALUES ('800', '49', ',4,49,800,', '3', '橘园', 'Orange Walk', 'yuan', 'OW');
INSERT INTO `travel_location` VALUES ('801', '49', ',4,49,801,', '3', '卡约', 'Cayo', 'kayue', 'CY');
INSERT INTO `travel_location` VALUES ('802', '49', ',4,49,802,', '3', '科罗萨尔', 'Corozal', 'keluosaer', 'CR');
INSERT INTO `travel_location` VALUES ('803', '49', ',4,49,803,', '3', '斯坦港', 'Stann Creek', 'sitangang', 'SC');
INSERT INTO `travel_location` VALUES ('804', '49', ',4,49,804,', '3', '托莱多', 'Toledo', 'tuolaiduo', 'TO');
INSERT INTO `travel_location` VALUES ('805', '51', ',3,51,805,', '3', '巴雷', 'Bale', 'balei', 'BAL');
INSERT INTO `travel_location` VALUES ('806', '51', ',3,51,806,', '3', '巴姆', 'Bam', 'bamu', 'BAM');
INSERT INTO `travel_location` VALUES ('807', '51', ',3,51,807,', '3', '巴瓦', 'Banwa', 'bawa', 'BAN');
INSERT INTO `travel_location` VALUES ('808', '51', ',3,51,808,', '3', '巴泽加', 'Bazega', 'bazejia', 'BAZ');
INSERT INTO `travel_location` VALUES ('809', '51', ',3,51,809,', '3', '波尼', 'Poni', 'boni', 'PON');
INSERT INTO `travel_location` VALUES ('810', '51', ',3,51,810,', '3', '布尔古', 'Boulgou', 'buergu', 'BLG');
INSERT INTO `travel_location` VALUES ('811', '51', ',3,51,811,', '3', '布尔基恩德', 'Boulkiemde', 'buerjiende', 'BOK');
INSERT INTO `travel_location` VALUES ('812', '51', ',3,51,812,', '3', '布古里巴', 'Bougouriba', 'buguliba', 'BOR');
INSERT INTO `travel_location` VALUES ('813', '51', ',3,51,813,', '3', '冈祖尔古', 'Ganzourgou', 'gangzuergu', 'GAN');
INSERT INTO `travel_location` VALUES ('814', '51', ',3,51,814,', '3', '古尔马', 'Gourma', 'guerma', 'GOU');
INSERT INTO `travel_location` VALUES ('815', '51', ',3,51,815,', '3', '济罗', 'Ziro', 'jiluo', 'ZIR');
INSERT INTO `travel_location` VALUES ('816', '51', ',3,51,816,', '3', '卡焦戈', 'Kadiogo', 'kajiaoge', 'KAD');
INSERT INTO `travel_location` VALUES ('817', '51', ',3,51,817,', '3', '凯内杜古', 'Kenedougou', 'kaineidugu', 'KEN');
INSERT INTO `travel_location` VALUES ('818', '51', ',3,51,818,', '3', '科蒙加里', 'Komondjari', 'kemengjiali', 'KOO');
INSERT INTO `travel_location` VALUES ('819', '51', ',3,51,819,', '3', '科莫埃', 'Comoe', 'kemoai', 'COM');
INSERT INTO `travel_location` VALUES ('820', '51', ',3,51,820,', '3', '孔皮恩加', 'Kompienga', 'kongpienjia', 'KOP');
INSERT INTO `travel_location` VALUES ('821', '51', ',3,51,821,', '3', '孔西', 'Kossi', 'kongxi', 'KOS');
INSERT INTO `travel_location` VALUES ('822', '51', ',3,51,822,', '3', '库尔佩罗戈', 'Koulpelogo', 'kuerpeiluoge', 'KOL');
INSERT INTO `travel_location` VALUES ('823', '51', ',3,51,823,', '3', '库尔维奥戈', 'Kourweogo', 'kuerweiaoge', 'KOW');
INSERT INTO `travel_location` VALUES ('824', '51', ',3,51,824,', '3', '库里滕加', 'Kouritenga', 'kulijia', 'KOT');
INSERT INTO `travel_location` VALUES ('825', '51', ',3,51,825,', '3', '雷拉巴', 'Leraba', 'leilaba', 'LER');
INSERT INTO `travel_location` VALUES ('826', '51', ',3,51,826,', '3', '罗卢姆', 'Loroum', 'luolumu', 'LOR');
INSERT INTO `travel_location` VALUES ('827', '51', ',3,51,827,', '3', '穆翁', 'Mouhoun', 'muweng', 'MOU');
INSERT INTO `travel_location` VALUES ('828', '51', ',3,51,828,', '3', '纳门滕加', 'Namentenga', 'namenjia', 'NAM');
INSERT INTO `travel_location` VALUES ('829', '51', ',3,51,829,', '3', '纳乌里', 'Nahouri', 'nawuli', 'NAH');
INSERT INTO `travel_location` VALUES ('830', '51', ',3,51,830,', '3', '纳亚拉', 'Nayala', 'nayala', 'NAY');
INSERT INTO `travel_location` VALUES ('831', '51', ',3,51,831,', '3', '尼亚尼亚', 'Gnagna', 'niyaniya', 'GNA');
INSERT INTO `travel_location` VALUES ('832', '51', ',3,51,832,', '3', '努姆比埃尔', 'Noumbiel', 'numubiaier', 'NOU');
INSERT INTO `travel_location` VALUES ('833', '51', ',3,51,833,', '3', '帕索雷', 'Passore', 'pasuolei', 'PAS');
INSERT INTO `travel_location` VALUES ('834', '51', ',3,51,834,', '3', '塞诺', 'Seno', 'sainuo', 'SEN');
INSERT INTO `travel_location` VALUES ('835', '51', ',3,51,835,', '3', '桑吉', 'Sanguie', 'sangji', 'SAG');
INSERT INTO `travel_location` VALUES ('836', '51', ',3,51,836,', '3', '桑马滕加', 'Sanmatenga', 'sangmajia', 'SAM');
INSERT INTO `travel_location` VALUES ('837', '51', ',3,51,837,', '3', '苏鲁', 'Sourou', 'sulu', 'SOR');
INSERT INTO `travel_location` VALUES ('838', '51', ',3,51,838,', '3', '苏姆', 'Soum', 'sumu', 'SOM');
INSERT INTO `travel_location` VALUES ('839', '51', ',3,51,839,', '3', '塔波阿', 'Tapoa', 'taboa', 'TAP');
INSERT INTO `travel_location` VALUES ('840', '51', ',3,51,840,', '3', '图伊', 'Tuy', 'tuyi', 'TUY');
INSERT INTO `travel_location` VALUES ('841', '51', ',3,51,841,', '3', '乌埃', 'Houet', 'wuai', 'HOU');
INSERT INTO `travel_location` VALUES ('842', '51', ',3,51,842,', '3', '乌布里滕加', 'Oubritenga', 'wubulijia', 'OUB');
INSERT INTO `travel_location` VALUES ('843', '51', ',3,51,843,', '3', '乌达兰', 'Oudalan', 'wudalan', 'OUD');
INSERT INTO `travel_location` VALUES ('844', '51', ',3,51,844,', '3', '锡西里', 'Sissili', 'xixili', 'SIS');
INSERT INTO `travel_location` VALUES ('845', '51', ',3,51,845,', '3', '亚加', 'Yagha', 'yajia', 'YAG');
INSERT INTO `travel_location` VALUES ('846', '51', ',3,51,846,', '3', '亚滕加', 'Yatenga', 'yajia', 'YAT');
INSERT INTO `travel_location` VALUES ('847', '51', ',3,51,847,', '3', '伊奥巴', 'Ioba', 'yiaoba', 'IOA');
INSERT INTO `travel_location` VALUES ('848', '51', ',3,51,848,', '3', '宗德韦奥戈', 'Zoundweogo', 'zongdeweiaoge', 'ZOW');
INSERT INTO `travel_location` VALUES ('849', '51', ',3,51,849,', '3', '宗多马', 'Zondoma', 'zongduoma', 'ZOD');
INSERT INTO `travel_location` VALUES ('850', '52', ',3,52,850,', '3', '布班扎', 'Bubanza', 'bubanzha', 'BB');
INSERT INTO `travel_location` VALUES ('851', '52', ',3,52,851,', '3', '布鲁里', 'Bururi', 'bululi', 'BR');
INSERT INTO `travel_location` VALUES ('852', '52', ',3,52,852,', '3', '布琼布拉城市', 'Bujumbura Mairie', 'buqiongbulachengshi', 'BM');
INSERT INTO `travel_location` VALUES ('853', '52', ',3,52,853,', '3', '布琼布拉乡村', 'Bujumbura Rural', 'buqiongbulaxiangcun', 'BU');
INSERT INTO `travel_location` VALUES ('854', '52', ',3,52,854,', '3', '恩戈齐', 'Ngozi', 'engeqi', 'NG');
INSERT INTO `travel_location` VALUES ('855', '52', ',3,52,855,', '3', '基龙多', 'Kirundo', 'jilongduo', 'KI');
INSERT INTO `travel_location` VALUES ('856', '52', ',3,52,856,', '3', '基特加', 'Gitega', 'jitejia', 'GI');
INSERT INTO `travel_location` VALUES ('857', '52', ',3,52,857,', '3', '卡鲁济', 'Karuzi', 'kaluji', 'KR');
INSERT INTO `travel_location` VALUES ('858', '52', ',3,52,858,', '3', '卡扬扎', 'Kayanza', 'kayangzha', 'KY');
INSERT INTO `travel_location` VALUES ('859', '52', ',3,52,859,', '3', '坎库佐', 'Cankuzo', 'kankuzuo', 'CA');
INSERT INTO `travel_location` VALUES ('860', '52', ',3,52,860,', '3', '鲁塔纳', 'Rutana', 'lutana', 'RT');
INSERT INTO `travel_location` VALUES ('861', '52', ',3,52,861,', '3', '鲁伊吉', 'Ruyigi', 'luyiji', 'RY');
INSERT INTO `travel_location` VALUES ('862', '52', ',3,52,862,', '3', '马坎巴', 'Makamba', 'makanba', 'MA');
INSERT INTO `travel_location` VALUES ('863', '52', ',3,52,863,', '3', '穆拉姆维亚', 'Muramvya', 'mulamuweiya', 'MU');
INSERT INTO `travel_location` VALUES ('864', '52', ',3,52,864,', '3', '穆瓦洛', 'Mwaro', 'muwaluo', 'MW');
INSERT INTO `travel_location` VALUES ('865', '52', ',3,52,865,', '3', '穆因加', 'Muyinga', 'muyinjia', 'MY');
INSERT INTO `travel_location` VALUES ('866', '52', ',3,52,866,', '3', '锡比托凯', 'Cibitoke', 'xibituokai', 'CI');
INSERT INTO `travel_location` VALUES ('867', '54', ',1,54,867,', '3', '海州', 'Haeju', 'haizhou', 'HAE');
INSERT INTO `travel_location` VALUES ('868', '54', ',1,54,868,', '3', '惠山', 'Hyesan', 'huishan', 'HYE');
INSERT INTO `travel_location` VALUES ('869', '54', ',1,54,869,', '3', '江界', 'Kanggye', 'jiangjie', 'KAN');
INSERT INTO `travel_location` VALUES ('870', '54', ',1,54,870,', '3', '开城', 'Kaesong', 'kaicheng', 'KSN');
INSERT INTO `travel_location` VALUES ('871', '54', ',1,54,871,', '3', '罗先', 'Naseon', 'luoxian', 'NAS');
INSERT INTO `travel_location` VALUES ('872', '54', ',1,54,872,', '3', '南浦', 'Namp\'o', 'nanpu', 'NAM');
INSERT INTO `travel_location` VALUES ('873', '54', ',1,54,873,', '3', '平壤', 'Pyongyang', 'pingrang', 'FNJ');
INSERT INTO `travel_location` VALUES ('874', '54', ',1,54,874,', '3', '清津', 'Ch\'ongjin', 'qingjin', 'CHO');
INSERT INTO `travel_location` VALUES ('875', '54', ',1,54,875,', '3', '沙里院', 'Sariwon', 'shaliyuan', 'SAR');
INSERT INTO `travel_location` VALUES ('876', '54', ',1,54,876,', '3', '咸兴', 'Hamhung', 'xianxing', 'HAM');
INSERT INTO `travel_location` VALUES ('877', '54', ',1,54,877,', '3', '新义州', 'Sinuiju', 'xinyizhou', 'SII');
INSERT INTO `travel_location` VALUES ('878', '54', ',1,54,878,', '3', '元山', 'Wonsan', 'yuanshan', 'WON');
INSERT INTO `travel_location` VALUES ('879', '55', ',2,55,879,', '3', '奥胡斯', 'Aarhus', 'aohusi', 'AR');
INSERT INTO `travel_location` VALUES ('880', '55', ',2,55,880,', '3', '北日德兰', 'Nordjylland', 'beiridelan', 'VSV');
INSERT INTO `travel_location` VALUES ('881', '55', ',2,55,881,', '3', '博恩霍尔姆', 'Bornholm', 'boenhuoermu', 'BO');
INSERT INTO `travel_location` VALUES ('882', '55', ',2,55,882,', '3', '菲特烈堡', 'Frederiksborg', 'feiteliebao', 'FRE');
INSERT INTO `travel_location` VALUES ('883', '55', ',2,55,883,', '3', '菲茵', 'Fyn', 'feiyin', 'FY');
INSERT INTO `travel_location` VALUES ('884', '55', ',2,55,884,', '3', '哥本哈根', 'Copenhagen', 'gebenhagen', 'CPH');
INSERT INTO `travel_location` VALUES ('885', '55', ',2,55,885,', '3', '里伯', 'Ribe', 'libo', 'RIB');
INSERT INTO `travel_location` VALUES ('886', '55', ',2,55,886,', '3', '灵克宾', 'Ringkoebing', 'lingkebin', 'RKG');
INSERT INTO `travel_location` VALUES ('887', '55', ',2,55,887,', '3', '罗斯基勒', 'Roskilde', 'luosijile', 'RKE');
INSERT INTO `travel_location` VALUES ('888', '55', ',2,55,888,', '3', '南日德兰', 'Soenderjylland', 'nanridelan', 'VBI');
INSERT INTO `travel_location` VALUES ('889', '55', ',2,55,889,', '3', '斯多斯特姆', 'Storstroem', 'siduositemu', 'ST');
INSERT INTO `travel_location` VALUES ('890', '55', ',2,55,890,', '3', '维堡', 'Viborg', 'weibao', 'VIB');
INSERT INTO `travel_location` VALUES ('891', '55', ',2,55,891,', '3', '维厄勒', 'Vejle', 'weiele', 'VEJ');
INSERT INTO `travel_location` VALUES ('892', '55', ',2,55,892,', '3', '西希兰', 'Vestsjaelland', 'xixilan', 'VS');
INSERT INTO `travel_location` VALUES ('893', '56', ',2,56,893,', '3', '阿恩斯贝格', 'Arnsberg', 'aensibeige', 'ARN');
INSERT INTO `travel_location` VALUES ('894', '56', ',2,56,894,', '3', '爱尔福特', 'Erfurt', 'aierfute', 'ERF');
INSERT INTO `travel_location` VALUES ('895', '56', ',2,56,895,', '3', '安斯巴格', 'Ansbach', 'ansibage', 'ANS');
INSERT INTO `travel_location` VALUES ('896', '56', ',2,56,896,', '3', '奥格斯堡', 'Augsburg', 'aogesibao', 'AGB');
INSERT INTO `travel_location` VALUES ('897', '56', ',2,56,897,', '3', '柏林', 'Berlin', 'bailin', 'BE');
INSERT INTO `travel_location` VALUES ('898', '56', ',2,56,898,', '3', '拜伊罗特', 'Bayreuth', 'baiyiluote', 'BYU');
INSERT INTO `travel_location` VALUES ('899', '56', ',2,56,899,', '3', '比勒费尔德', 'Bielefeld', 'bilefeierde', 'BFE');
INSERT INTO `travel_location` VALUES ('900', '56', ',2,56,900,', '3', '波茨坦', 'Potsdam', 'bocitan', 'POT');
INSERT INTO `travel_location` VALUES ('901', '56', ',2,56,901,', '3', '波鸿', 'Bochum', 'bohong', 'BOM');
INSERT INTO `travel_location` VALUES ('902', '56', ',2,56,902,', '3', '不来梅', 'Bremen', 'bulaimei', 'HB');
INSERT INTO `travel_location` VALUES ('903', '56', ',2,56,903,', '3', '不伦瑞克', 'Brunswick', 'bulunruike', 'BRW');
INSERT INTO `travel_location` VALUES ('904', '56', ',2,56,904,', '3', '达姆施塔特', 'Darmstadt', 'damushitate', 'DAR');
INSERT INTO `travel_location` VALUES ('905', '56', ',2,56,905,', '3', '代特莫尔特', 'Detmold', 'daitemoerte', 'DET');
INSERT INTO `travel_location` VALUES ('906', '56', ',2,56,906,', '3', '德累斯顿', 'Dresden', 'deleisidun', 'DRS');
INSERT INTO `travel_location` VALUES ('907', '56', ',2,56,907,', '3', '德绍', 'Dessau', 'deshao', 'DES');
INSERT INTO `travel_location` VALUES ('908', '56', ',2,56,908,', '3', '杜塞尔多夫', 'Dusseldorf', 'dusaierduofu', 'DUS');
INSERT INTO `travel_location` VALUES ('909', '56', ',2,56,909,', '3', '法兰克福', 'Frankfurt', 'falankefu', 'FFO');
INSERT INTO `travel_location` VALUES ('910', '56', ',2,56,910,', '3', '弗赖堡', 'Freiburg', 'fulaibao', 'FBG');
INSERT INTO `travel_location` VALUES ('911', '56', ',2,56,911,', '3', '哈雷', 'Halle', 'halei', 'HAE');
INSERT INTO `travel_location` VALUES ('912', '56', ',2,56,912,', '3', '汉堡', 'Hamburg', 'hanbao', 'HH');
INSERT INTO `travel_location` VALUES ('913', '56', ',2,56,913,', '3', '汉诺威', 'Hannover', 'hannuowei', 'HAJ');
INSERT INTO `travel_location` VALUES ('914', '56', ',2,56,914,', '3', '基尔', 'Kiel', 'jier', 'KEL');
INSERT INTO `travel_location` VALUES ('915', '56', ',2,56,915,', '3', '吉森', 'GieBen', 'jisen', 'GBN');
INSERT INTO `travel_location` VALUES ('916', '56', ',2,56,916,', '3', '卡尔斯鲁厄', 'Karlsruhe', 'kaersilue', 'KAE');
INSERT INTO `travel_location` VALUES ('917', '56', ',2,56,917,', '3', '卡塞尔', 'Kassel', 'kasaier', 'KAS');
INSERT INTO `travel_location` VALUES ('918', '56', ',2,56,918,', '3', '开姆尼斯', 'Chemnitz', 'kaimunisi', 'CHE');
INSERT INTO `travel_location` VALUES ('919', '56', ',2,56,919,', '3', '科布伦次', 'Koblenz', 'kebulunci', 'KOB');
INSERT INTO `travel_location` VALUES ('920', '56', ',2,56,920,', '3', '科隆', 'Cologne', 'kelong', 'CGN');
INSERT INTO `travel_location` VALUES ('921', '56', ',2,56,921,', '3', '莱比锡', 'Leipzig', 'laibixi', 'LEJ');
INSERT INTO `travel_location` VALUES ('922', '56', ',2,56,922,', '3', '兰茨胡特', 'Landshut', 'lancihute', 'LDH');
INSERT INTO `travel_location` VALUES ('923', '56', ',2,56,923,', '3', '吕讷堡', 'Luneburg', 'lvbao', 'LBG');
INSERT INTO `travel_location` VALUES ('924', '56', ',2,56,924,', '3', '马格德堡', 'Magdeburg', 'magedebao', 'MAG');
INSERT INTO `travel_location` VALUES ('925', '56', ',2,56,925,', '3', '曼海姆', 'Mannheim', 'manhaimu', 'MHG');
INSERT INTO `travel_location` VALUES ('926', '56', ',2,56,926,', '3', '美因兹', 'Mainz', 'meiyinzi', 'MAI');
INSERT INTO `travel_location` VALUES ('927', '56', ',2,56,927,', '3', '明斯特', 'Muenster', 'mingsite', 'MUN');
INSERT INTO `travel_location` VALUES ('928', '56', ',2,56,928,', '3', '慕尼黑', 'Munich', 'munihei', 'MUC');
INSERT INTO `travel_location` VALUES ('929', '56', ',2,56,929,', '3', '纽伦堡', 'Nuremberg', 'niulunbao', 'NUE');
INSERT INTO `travel_location` VALUES ('930', '56', ',2,56,930,', '3', '什未林', 'Schwerin', 'shiweilin', 'SWH');
INSERT INTO `travel_location` VALUES ('931', '56', ',2,56,931,', '3', '斯图加特', 'Stuttgart', 'situjiate', 'STR');
INSERT INTO `travel_location` VALUES ('932', '56', ',2,56,932,', '3', '特里尔', 'Trier', 'telier', 'TRI');
INSERT INTO `travel_location` VALUES ('933', '56', ',2,56,933,', '3', '威斯巴登', 'Wiesbaden', 'weisibadeng', 'WIB');
INSERT INTO `travel_location` VALUES ('934', '56', ',2,56,934,', '3', '维尔茨堡', 'Wuerzburg', 'weiercibao', 'WUG');
INSERT INTO `travel_location` VALUES ('935', '57', ',1,57,935,', '3', '阿伊莱乌', 'Aileu', 'ayilaiwu', 'AL');
INSERT INTO `travel_location` VALUES ('936', '57', ',1,57,936,', '3', '阿伊纳罗', 'Ainaro', 'ayinaluo', 'AN');
INSERT INTO `travel_location` VALUES ('937', '57', ',1,57,937,', '3', '埃尔梅拉', 'Ermera', 'aiermeila', 'ER');
INSERT INTO `travel_location` VALUES ('938', '57', ',1,57,938,', '3', '安贝诺', 'Ambeno', 'anbeinuo', 'AM');
INSERT INTO `travel_location` VALUES ('939', '57', ',1,57,939,', '3', '包考', 'Baucau', 'baokao', 'BA');
INSERT INTO `travel_location` VALUES ('940', '57', ',1,57,940,', '3', '博博纳罗', 'Bobonaro', 'bobonaluo', 'BO');
INSERT INTO `travel_location` VALUES ('941', '57', ',1,57,941,', '3', '帝力', 'Dili', 'dili', 'DI');
INSERT INTO `travel_location` VALUES ('942', '57', ',1,57,942,', '3', '科瓦利马', 'Kovalima', 'kewalima', 'KO');
INSERT INTO `travel_location` VALUES ('943', '57', ',1,57,943,', '3', '劳滕', 'Lautem', 'lao', 'LA');
INSERT INTO `travel_location` VALUES ('944', '57', ',1,57,944,', '3', '利基卡', 'Liquica', 'lijika', 'LI');
INSERT INTO `travel_location` VALUES ('945', '57', ',1,57,945,', '3', '马纳图托', 'Manatuto', 'manatutuo', 'MT');
INSERT INTO `travel_location` VALUES ('946', '57', ',1,57,946,', '3', '马努法伊', 'Manofahi', 'manufayi', 'MF');
INSERT INTO `travel_location` VALUES ('947', '57', ',1,57,947,', '3', '维克克', 'Viqueque', 'weikeke', 'VI');
INSERT INTO `travel_location` VALUES ('948', '58', ',3,58,948,', '3', '滨海区', 'Maritime', 'binhaiqu', 'M');
INSERT INTO `travel_location` VALUES ('949', '58', ',3,58,949,', '3', '草原区', 'Savanes', 'caoyuanqu', 'S');
INSERT INTO `travel_location` VALUES ('950', '58', ',3,58,950,', '3', '高原区', 'Plateaux', 'gaoyuanqu', 'P');
INSERT INTO `travel_location` VALUES ('951', '58', ',3,58,951,', '3', '卡拉区', 'Kara', 'kalaqu', 'K');
INSERT INTO `travel_location` VALUES ('952', '58', ',3,58,952,', '3', '中部区', 'Centre', 'zhongbuqu', 'C');
INSERT INTO `travel_location` VALUES ('953', '61', ',2,61,953,', '3', '阿巴坎', 'Abakan', 'abakan', 'ABA');
INSERT INTO `travel_location` VALUES ('954', '61', ',2,61,954,', '3', '阿尔汉格尔斯克', 'Arkhangelsk', 'aerhangeersike', 'ARK');
INSERT INTO `travel_location` VALUES ('955', '61', ',2,61,955,', '3', '阿金斯科耶', 'Aginskoye', 'ajinsikeye', 'AGI');
INSERT INTO `travel_location` VALUES ('956', '61', ',2,61,956,', '3', '阿纳德尔', 'Anadyr', 'anadeer', 'DYR');
INSERT INTO `travel_location` VALUES ('957', '61', ',2,61,957,', '3', '阿斯特拉罕', 'Astrakhan', 'asitelahan', 'AST');
INSERT INTO `travel_location` VALUES ('958', '61', ',2,61,958,', '3', '埃利斯塔', 'Elista', 'ailisita', 'ESL');
INSERT INTO `travel_location` VALUES ('959', '61', ',2,61,959,', '3', '奥廖尔', 'Orel', 'aoliaoer', 'ORL');
INSERT INTO `travel_location` VALUES ('960', '61', ',2,61,960,', '3', '奥伦堡', 'Orenburg', 'aolunbao', 'ORE');
INSERT INTO `travel_location` VALUES ('961', '61', ',2,61,961,', '3', '巴尔瑙尔', 'Barnaul', 'baerer', 'BAX');
INSERT INTO `travel_location` VALUES ('962', '61', ',2,61,962,', '3', '奔萨', 'Penza', 'bensa', 'PNZ');
INSERT INTO `travel_location` VALUES ('963', '61', ',2,61,963,', '3', '彼得罗巴甫洛夫斯克', 'Petropavlovsk-Kamchatskiy', 'bideluobafuluofusike', 'PKC');
INSERT INTO `travel_location` VALUES ('964', '61', ',2,61,964,', '3', '彼得罗扎沃茨克', 'Petrozavodsk', 'bideluozhawocike', 'PES');
INSERT INTO `travel_location` VALUES ('965', '61', ',2,61,965,', '3', '彼尔姆', 'Perm', 'biermu', 'PER');
INSERT INTO `travel_location` VALUES ('966', '61', ',2,61,966,', '3', '比罗比詹', 'Birobidzan', 'biluobizhan', 'BBZ');
INSERT INTO `travel_location` VALUES ('967', '61', ',2,61,967,', '3', '别尔哥罗德', 'Belgorod', 'bieergeluode', 'BEL');
INSERT INTO `travel_location` VALUES ('968', '61', ',2,61,968,', '3', '伯力', 'Chabarovsk', 'boli', 'COK');
INSERT INTO `travel_location` VALUES ('969', '61', ',2,61,969,', '3', '布拉戈维申斯克', 'Blagoveshchensk', 'bulageweishensike', 'BQS');
INSERT INTO `travel_location` VALUES ('970', '61', ',2,61,970,', '3', '布良斯克', 'Bryansk', 'buliangsike', 'BRY');
INSERT INTO `travel_location` VALUES ('971', '61', ',2,61,971,', '3', '车里雅宾斯克', 'Chelyabinsk', 'cheliyabinsike', 'CHE');
INSERT INTO `travel_location` VALUES ('972', '61', ',2,61,972,', '3', '赤塔', 'Chita', 'chita', 'CHI');
INSERT INTO `travel_location` VALUES ('973', '61', ',2,61,973,', '3', '顿河畔罗斯托夫', 'Rostov-na-Donu', 'dunhepanluosituofu', 'ROS');
INSERT INTO `travel_location` VALUES ('974', '61', ',2,61,974,', '3', '鄂木斯克', 'Omsk', 'emusike', 'OMS');
INSERT INTO `travel_location` VALUES ('975', '61', ',2,61,975,', '3', '伏尔加格勒', 'Volgograd', 'fuerjiagele', 'VOG');
INSERT INTO `travel_location` VALUES ('976', '61', ',2,61,976,', '3', '弗拉基米尔', 'Vladimir', 'fulajimier', 'VMR');
INSERT INTO `travel_location` VALUES ('977', '61', ',2,61,977,', '3', '弗拉季高加索', 'Vladikavkaz', 'fulajigaojiasuo', 'VLA');
INSERT INTO `travel_location` VALUES ('978', '61', ',2,61,978,', '3', '戈尔诺－阿尔泰斯克', 'Gorno-Altajsk', 'geernuoaertaisike', 'GOA');
INSERT INTO `travel_location` VALUES ('979', '61', ',2,61,979,', '3', '格罗兹尼', 'Grozny', 'geluozini', 'GRV');
INSERT INTO `travel_location` VALUES ('980', '61', ',2,61,980,', '3', '海参崴', 'Vladivostok', 'haican', 'VVO');
INSERT INTO `travel_location` VALUES ('981', '61', ',2,61,981,', '3', '汉特－曼西斯克', 'Khanty-Mansiysk', 'hantemanxisike', 'KHM');
INSERT INTO `travel_location` VALUES ('982', '61', ',2,61,982,', '3', '基洛夫', 'Kirov', 'jiluofu', 'KIR');
INSERT INTO `travel_location` VALUES ('983', '61', ',2,61,983,', '3', '加里宁格勒', 'Kaliningrad', 'jialininggele', 'KGD');
INSERT INTO `travel_location` VALUES ('984', '61', ',2,61,984,', '3', '喀山', 'Kazan', 'kashan', 'KZN');
INSERT INTO `travel_location` VALUES ('985', '61', ',2,61,985,', '3', '卡卢加', 'Kaluga', 'kalujia', 'KLF');
INSERT INTO `travel_location` VALUES ('986', '61', ',2,61,986,', '3', '科斯特罗马', 'Kostroma', 'kesiteluoma', 'KOS');
INSERT INTO `travel_location` VALUES ('987', '61', ',2,61,987,', '3', '克拉斯诺达尔', 'Krasnodar', 'kelasinuodaer', 'KRR');
INSERT INTO `travel_location` VALUES ('988', '61', ',2,61,988,', '3', '克拉斯诺亚尔斯克', 'Krasnojarsk', 'kelasinuoyaersike', 'KYA');
INSERT INTO `travel_location` VALUES ('989', '61', ',2,61,989,', '3', '克麦罗沃', 'Kemerovo', 'kemailuowo', 'KEM');
INSERT INTO `travel_location` VALUES ('990', '61', ',2,61,990,', '3', '克孜勒', 'Kyzyl', 'kezile', 'KYZ');
INSERT INTO `travel_location` VALUES ('991', '61', ',2,61,991,', '3', '库德姆卡尔', 'Kudymkar', 'kudemukaer', 'KUD');
INSERT INTO `travel_location` VALUES ('992', '61', ',2,61,992,', '3', '库尔干', 'Kurgan', 'kuergan', 'KRO');
INSERT INTO `travel_location` VALUES ('993', '61', ',2,61,993,', '3', '库尔斯克', 'Kursk', 'kuersike', 'URS');
INSERT INTO `travel_location` VALUES ('994', '61', ',2,61,994,', '3', '利佩茨克', 'Lipeck', 'lipeicike', 'LIP');
INSERT INTO `travel_location` VALUES ('995', '61', ',2,61,995,', '3', '梁赞', 'Ryazan', 'liangzan', 'RYA');
INSERT INTO `travel_location` VALUES ('996', '61', ',2,61,996,', '3', '马哈奇卡拉', 'Makhachkala', 'mahaqikala', 'MCX');
INSERT INTO `travel_location` VALUES ('997', '61', ',2,61,997,', '3', '马加丹', 'Magadan', 'majiadan', 'MAG');
INSERT INTO `travel_location` VALUES ('998', '61', ',2,61,998,', '3', '马加斯', 'Magas', 'majiasi', 'IN');
INSERT INTO `travel_location` VALUES ('999', '61', ',2,61,999,', '3', '迈科普', 'Maykop', 'maikepu', 'MAY');
INSERT INTO `travel_location` VALUES ('1000', '61', ',2,61,1000,', '3', '摩尔曼斯克', 'Murmansk', 'moermansike', 'MMK');
INSERT INTO `travel_location` VALUES ('1001', '61', ',2,61,1001,', '3', '莫斯科', 'Moscow', 'mosike', 'MOW');
INSERT INTO `travel_location` VALUES ('1002', '61', ',2,61,1002,', '3', '纳尔奇克', 'Nalchik', 'naerqike', 'NAL');
INSERT INTO `travel_location` VALUES ('1003', '61', ',2,61,1003,', '3', '纳里扬马尔', 'Naryan-Mar', 'naliyangmaer', 'NNM');
INSERT INTO `travel_location` VALUES ('1004', '61', ',2,61,1004,', '3', '南萨哈林斯克', 'Juzno-Sachalinsk', 'nansahalinsike', 'JSA');
INSERT INTO `travel_location` VALUES ('1005', '61', ',2,61,1005,', '3', '诺夫哥罗德', 'Velikij Novgorod', 'nuofugeluode', 'VUS');
INSERT INTO `travel_location` VALUES ('1006', '61', ',2,61,1006,', '3', '帕拉纳', 'Palana', 'palana', 'PAL');
INSERT INTO `travel_location` VALUES ('1007', '61', ',2,61,1007,', '3', '普斯科夫', 'Pskov', 'pusikefu', 'PSK');
INSERT INTO `travel_location` VALUES ('1008', '61', ',2,61,1008,', '3', '切博克萨雷', 'Cheboksary', 'qiebokesalei', 'CSY');
INSERT INTO `travel_location` VALUES ('1009', '61', ',2,61,1009,', '3', '切尔克斯克', 'Cherkessk', 'qieerkesike', 'CKS');
INSERT INTO `travel_location` VALUES ('1010', '61', ',2,61,1010,', '3', '秋明', 'Tyumen', 'qiuming', 'TYU');
INSERT INTO `travel_location` VALUES ('1011', '61', ',2,61,1011,', '3', '萨拉托夫', 'Saratov', 'salatuofu', 'SAR');
INSERT INTO `travel_location` VALUES ('1012', '61', ',2,61,1012,', '3', '萨兰斯克', 'Saransk', 'salansike', 'SKX');
INSERT INTO `travel_location` VALUES ('1013', '61', ',2,61,1013,', '3', '萨列哈尔德', 'Salekhard', 'saliehaerde', 'SLY');
INSERT INTO `travel_location` VALUES ('1014', '61', ',2,61,1014,', '3', '萨马拉', 'Samara', 'samala', 'SAM');
INSERT INTO `travel_location` VALUES ('1015', '61', ',2,61,1015,', '3', '瑟克特夫卡尔', 'Syktyvkar', 'seketefukaer', 'SCW');
INSERT INTO `travel_location` VALUES ('1016', '61', ',2,61,1016,', '3', '圣彼得堡', 'St. Peterburg', 'shengbidebao', 'SPE');
INSERT INTO `travel_location` VALUES ('1017', '61', ',2,61,1017,', '3', '斯摩棱斯克', 'Smolensk', 'simolengsike', 'LNX');
INSERT INTO `travel_location` VALUES ('1018', '61', ',2,61,1018,', '3', '斯塔夫罗波尔', 'Stavropol', 'sitafuluoboer', 'STA');
INSERT INTO `travel_location` VALUES ('1019', '61', ',2,61,1019,', '3', '坦波夫', 'Tambov', 'tanbofu', 'TAM');
INSERT INTO `travel_location` VALUES ('1020', '61', ',2,61,1020,', '3', '特维尔', 'Tver', 'teweier', 'TVE');
INSERT INTO `travel_location` VALUES ('1021', '61', ',2,61,1021,', '3', '图拉', 'Tula', 'tula', 'TUL');
INSERT INTO `travel_location` VALUES ('1022', '61', ',2,61,1022,', '3', '托木斯克', 'Tomsk', 'tuomusike', 'TOM');
INSERT INTO `travel_location` VALUES ('1023', '61', ',2,61,1023,', '3', '沃罗涅什', 'Voronezh', 'woluonieshi', 'VOR');
INSERT INTO `travel_location` VALUES ('1024', '61', ',2,61,1024,', '3', '沃洛格达', 'Vologda', 'woluogeda', 'VLG');
INSERT INTO `travel_location` VALUES ('1025', '61', ',2,61,1025,', '3', '乌法', 'Ufa', 'wufa', 'UFA');
INSERT INTO `travel_location` VALUES ('1026', '61', ',2,61,1026,', '3', '乌兰乌德', 'Ulan-Ude', 'wulanwude', 'UUD');
INSERT INTO `travel_location` VALUES ('1027', '61', ',2,61,1027,', '3', '乌里扬诺夫斯克', 'Uljanovsk', 'wuliyangnuofusike', 'ULY');
INSERT INTO `travel_location` VALUES ('1028', '61', ',2,61,1028,', '3', '乌斯季奥尔登斯基', 'Ust-Ordynsky', 'wusijiaoerdengsiji', 'UOB');
INSERT INTO `travel_location` VALUES ('1029', '61', ',2,61,1029,', '3', '下诺夫哥罗德', 'Niznij Novgorod', 'xianuofugeluode', 'GOJ');
INSERT INTO `travel_location` VALUES ('1030', '61', ',2,61,1030,', '3', '新西伯利亚', 'Novosibirsk', 'xinxiboliya', 'NVS');
INSERT INTO `travel_location` VALUES ('1031', '61', ',2,61,1031,', '3', '雅库茨克', 'Jakutsk', 'yakucike', 'JAK');
INSERT INTO `travel_location` VALUES ('1032', '61', ',2,61,1032,', '3', '雅罗斯拉夫尔', 'Jaroslavl', 'yaluosilafuer', 'JAR');
INSERT INTO `travel_location` VALUES ('1033', '61', ',2,61,1033,', '3', '叶卡捷林堡', 'Jekaterinburg', 'yekajielinbao', 'JEK');
INSERT INTO `travel_location` VALUES ('1034', '61', ',2,61,1034,', '3', '伊尔库茨克', 'Irkutsk', 'yierkucike', 'IKT');
INSERT INTO `travel_location` VALUES ('1035', '61', ',2,61,1035,', '3', '伊热夫斯克', 'Izhevsk', 'yirefusike', 'IJK');
INSERT INTO `travel_location` VALUES ('1036', '61', ',2,61,1036,', '3', '伊万诺沃', 'Ivanovo', 'yiwannuowo', 'IVO');
INSERT INTO `travel_location` VALUES ('1037', '61', ',2,61,1037,', '3', '约什卡尔奥拉', 'Yoshkar-Ola', 'yueshikaeraola', 'YOL');
INSERT INTO `travel_location` VALUES ('1038', '62', ',5,62,1038,', '3', '阿苏艾', 'Azuay', 'asuai', 'A');
INSERT INTO `travel_location` VALUES ('1039', '62', ',5,62,1039,', '3', '埃尔奥罗', 'El Oro', 'aieraoluo', 'O');
INSERT INTO `travel_location` VALUES ('1040', '62', ',5,62,1040,', '3', '埃斯梅拉尔达斯', 'Esmeraldas', 'aisimeilaerdasi', 'E');
INSERT INTO `travel_location` VALUES ('1041', '62', ',5,62,1041,', '3', '玻利瓦尔', 'Bolivar', 'boliwaer', 'B');
INSERT INTO `travel_location` VALUES ('1042', '62', ',5,62,1042,', '3', '瓜亚斯', 'Guayas', 'guayasi', 'G');
INSERT INTO `travel_location` VALUES ('1043', '62', ',5,62,1043,', '3', '加拉帕戈斯', 'Galapagos', 'jialapagesi', 'W');
INSERT INTO `travel_location` VALUES ('1044', '62', ',5,62,1044,', '3', '卡尔奇', 'Carchi', 'kaerqi', 'C');
INSERT INTO `travel_location` VALUES ('1045', '62', ',5,62,1045,', '3', '卡尼亚尔', 'Canar', 'kaniyaer', 'F');
INSERT INTO `travel_location` VALUES ('1046', '62', ',5,62,1046,', '3', '科托帕希', 'Cotopaxi', 'ketuopaxi', 'X');
INSERT INTO `travel_location` VALUES ('1047', '62', ',5,62,1047,', '3', '洛哈', 'Loja', 'luoha', 'L');
INSERT INTO `travel_location` VALUES ('1048', '62', ',5,62,1048,', '3', '洛斯里奥斯', 'Los Rios', 'luosiliaosi', 'R');
INSERT INTO `travel_location` VALUES ('1049', '62', ',5,62,1049,', '3', '马纳比', 'Manabi', 'manabi', 'M');
INSERT INTO `travel_location` VALUES ('1050', '62', ',5,62,1050,', '3', '莫罗纳－圣地亚哥', 'Morona-Santiago', 'moluonashengdiyage', 'S');
INSERT INTO `travel_location` VALUES ('1051', '62', ',5,62,1051,', '3', '纳波，奥雷利亚纳', 'Napo, Orellana', 'naboaoleiliyana', 'D');
INSERT INTO `travel_location` VALUES ('1052', '62', ',5,62,1052,', '3', '帕斯塔萨', 'Pastaza', 'pasitasa', 'Y');
INSERT INTO `travel_location` VALUES ('1053', '62', ',5,62,1053,', '3', '皮钦查', 'Pichincha', 'piqincha', 'P');
INSERT INTO `travel_location` VALUES ('1054', '62', ',5,62,1054,', '3', '钦博拉索', 'Chimborazo', 'qinbolasuo', 'H');
INSERT INTO `travel_location` VALUES ('1055', '62', ',5,62,1055,', '3', '萨莫拉－钦奇佩', 'Zamora-Chinchipe', 'samolaqinqipei', 'Z');
INSERT INTO `travel_location` VALUES ('1056', '62', ',5,62,1056,', '3', '苏昆毕奥斯', 'Sucumbios', 'sukunbiaosi', 'U');
INSERT INTO `travel_location` VALUES ('1057', '62', ',5,62,1057,', '3', '通古拉瓦', 'Tungurahua', 'tonggulawa', 'T');
INSERT INTO `travel_location` VALUES ('1058', '62', ',5,62,1058,', '3', '因巴布拉', 'Imbabura', 'yinbabula', 'I');
INSERT INTO `travel_location` VALUES ('1059', '63', ',3,63,1059,', '3', '安塞巴', 'Anseba', 'ansaiba', 'KE');
INSERT INTO `travel_location` VALUES ('1060', '63', ',3,63,1060,', '3', '北红海', 'Semenawi Keyih Bahri', 'beihonghai', 'SK');
INSERT INTO `travel_location` VALUES ('1061', '63', ',3,63,1061,', '3', '加什·巴尔卡', 'Gash Barka', 'jiashi', 'BR');
INSERT INTO `travel_location` VALUES ('1062', '63', ',3,63,1062,', '3', '南部', 'Debub', 'nanbu', 'DE');
INSERT INTO `travel_location` VALUES ('1063', '63', ',3,63,1063,', '3', '南红海', 'Debubawi Keyih Bahri', 'nanhonghai', 'DK');
INSERT INTO `travel_location` VALUES ('1064', '63', ',3,63,1064,', '3', '中部', 'Maekel', 'zhongbu', 'MA');
INSERT INTO `travel_location` VALUES ('1065', '64', ',2,64,1065,', '3', '阿尔勒', 'Arles', 'aerle', 'ARL');
INSERT INTO `travel_location` VALUES ('1066', '64', ',2,64,1066,', '3', '阿雅克修', 'Ajaccio', 'ayakexiu', 'AJA');
INSERT INTO `travel_location` VALUES ('1067', '64', ',2,64,1067,', '3', '艾克斯', 'Aix-en-Provence', 'aikesi', 'QXB');
INSERT INTO `travel_location` VALUES ('1068', '64', ',2,64,1068,', '3', '奥尔良', 'Orleans', 'aoerliang', 'ORR');
INSERT INTO `travel_location` VALUES ('1069', '64', ',2,64,1069,', '3', '巴黎', 'Paris', 'bali', 'PAR');
INSERT INTO `travel_location` VALUES ('1070', '64', ',2,64,1070,', '3', '贝桑松', 'Besancon', 'beisangsong', 'BSN');
INSERT INTO `travel_location` VALUES ('1071', '64', ',2,64,1071,', '3', '第戎', 'Dijon', 'dirong', 'DIJ');
INSERT INTO `travel_location` VALUES ('1072', '64', ',2,64,1072,', '3', '弗雷瑞斯', 'Frejus', 'fuleiruisi', 'FRJ');
INSERT INTO `travel_location` VALUES ('1073', '64', ',2,64,1073,', '3', '卡昂', 'Caen', 'kaang', 'CFR');
INSERT INTO `travel_location` VALUES ('1074', '64', ',2,64,1074,', '3', '雷恩', 'Rennes', 'leien', 'RNS');
INSERT INTO `travel_location` VALUES ('1075', '64', ',2,64,1075,', '3', '里昂', 'Lyon', 'liang', 'LIO');
INSERT INTO `travel_location` VALUES ('1076', '64', ',2,64,1076,', '3', '里尔', 'Lille', 'lier', 'LLE');
INSERT INTO `travel_location` VALUES ('1077', '64', ',2,64,1077,', '3', '利摩日', 'Limoges', 'limori', 'LIG');
INSERT INTO `travel_location` VALUES ('1078', '64', ',2,64,1078,', '3', '鲁昂', 'Rouen', 'luang', 'URO');
INSERT INTO `travel_location` VALUES ('1079', '64', ',2,64,1079,', '3', '马赛', 'Marseille', 'masai', 'MRS');
INSERT INTO `travel_location` VALUES ('1080', '64', ',2,64,1080,', '3', '梅斯', 'Metz', 'meisi', 'MZM');
INSERT INTO `travel_location` VALUES ('1081', '64', ',2,64,1081,', '3', '蒙彼利埃', 'Montpellier', 'mengbiliai', 'MPL');
INSERT INTO `travel_location` VALUES ('1082', '64', ',2,64,1082,', '3', '南特', 'Nantes', 'nante', 'NTE');
INSERT INTO `travel_location` VALUES ('1083', '64', ',2,64,1083,', '3', '尼斯', 'Nice', 'nisi', 'NCE');
INSERT INTO `travel_location` VALUES ('1084', '64', ',2,64,1084,', '3', '沙隆', 'Chalons-en-Champagne', 'shalong', 'CSM');
INSERT INTO `travel_location` VALUES ('1085', '64', ',2,64,1085,', '3', '图卢兹', 'Toulouse', 'tuluzi', 'TLS');
INSERT INTO `travel_location` VALUES ('1086', '64', ',2,64,1086,', '3', '瓦朗斯', 'Valence', 'walangsi', 'VAA');
INSERT INTO `travel_location` VALUES ('1087', '64', ',2,64,1087,', '3', '亚眠', 'Amiens', 'yamian', 'AMI');
INSERT INTO `travel_location` VALUES ('1088', '70', ',1,70,1088,', '3', '达沃', 'Davao', 'dawo', 'DOR');
INSERT INTO `travel_location` VALUES ('1089', '70', ',1,70,1089,', '3', '卡卢坎', 'Caloocan', 'kalukan', 'CAO');
INSERT INTO `travel_location` VALUES ('1090', '70', ',1,70,1090,', '3', '马尼拉', 'Manila', 'manila', 'MNL');
INSERT INTO `travel_location` VALUES ('1091', '70', ',1,70,1091,', '3', '宿务', 'Cebu', 'suwu', 'CEB');
INSERT INTO `travel_location` VALUES ('1092', '72', ',2,72,1092,', '3', '埃斯波', 'Espoo', 'aisibo', 'ESP');
INSERT INTO `travel_location` VALUES ('1093', '72', ',2,72,1093,', '3', '奥卢', 'Oulu', 'aolu', 'OLU');
INSERT INTO `travel_location` VALUES ('1094', '72', ',2,72,1094,', '3', '波里', 'Pori', 'boli', 'POR');
INSERT INTO `travel_location` VALUES ('1095', '72', ',2,72,1095,', '3', '博尔沃', 'Porvoo', 'boerwo', 'PRV');
INSERT INTO `travel_location` VALUES ('1096', '72', ',2,72,1096,', '3', '海门林纳', 'Hameenlinna', 'haimenlinna', 'HMY');
INSERT INTO `travel_location` VALUES ('1097', '72', ',2,72,1097,', '3', '赫尔辛基', 'Helsinki', 'heerxinji', 'HEL');
INSERT INTO `travel_location` VALUES ('1098', '72', ',2,72,1098,', '3', '卡亚尼', 'Kajaani', 'kayani', 'KAJ');
INSERT INTO `travel_location` VALUES ('1099', '72', ',2,72,1099,', '3', '科科拉', 'Kokkola', 'kekela', 'KOK');
INSERT INTO `travel_location` VALUES ('1100', '72', ',2,72,1100,', '3', '科特卡', 'Kotka', 'keteka', 'KTK');
INSERT INTO `travel_location` VALUES ('1101', '72', ',2,72,1101,', '3', '库奥皮奥', 'Kuopio', 'kuaopiao', 'KUO');
INSERT INTO `travel_location` VALUES ('1102', '72', ',2,72,1102,', '3', '拉赫蒂', 'Lahti', 'lahedi', 'LHI');
INSERT INTO `travel_location` VALUES ('1103', '72', ',2,72,1103,', '3', '拉彭兰塔', 'Lappeenranta', 'lapenglanta', 'LPP');
INSERT INTO `travel_location` VALUES ('1104', '72', ',2,72,1104,', '3', '罗瓦涅米', 'Rovaniemi', 'luowaniemi', 'RVN');
INSERT INTO `travel_location` VALUES ('1105', '72', ',2,72,1105,', '3', '玛丽港', 'Mariehamn', 'maligang', 'MHQ');
INSERT INTO `travel_location` VALUES ('1106', '72', ',2,72,1106,', '3', '米凯利', 'Mikkeli', 'mikaili', 'MIK');
INSERT INTO `travel_location` VALUES ('1107', '72', ',2,72,1107,', '3', '坦佩雷', 'Tampere', 'tanpeilei', 'TMP');
INSERT INTO `travel_location` VALUES ('1108', '72', ',2,72,1108,', '3', '图尔库', 'Turku', 'tuerku', 'TKU');
INSERT INTO `travel_location` VALUES ('1109', '72', ',2,72,1109,', '3', '瓦萨', 'Vaasa', 'wasa', 'VAA');
INSERT INTO `travel_location` VALUES ('1110', '72', ',2,72,1110,', '3', '万塔', 'Vantaa', 'wanta', 'VAT');
INSERT INTO `travel_location` VALUES ('1111', '72', ',2,72,1111,', '3', '约恩苏', 'Joensuu', 'yueensu', 'JOE');
INSERT INTO `travel_location` VALUES ('1112', '73', ',3,73,1112,', '3', '保尔', 'Paul', 'baoer', 'PA');
INSERT INTO `travel_location` VALUES ('1113', '73', ',3,73,1113,', '3', '波多诺伏', 'Porto Novo', 'boduonuofu', 'PN');
INSERT INTO `travel_location` VALUES ('1114', '73', ',3,73,1114,', '3', '博阿维斯塔岛', 'Boa Vista', 'boaweisitadao', 'BV');
INSERT INTO `travel_location` VALUES ('1115', '73', ',3,73,1115,', '3', '布拉瓦岛', 'Brava', 'bulawadao', 'BR');
INSERT INTO `travel_location` VALUES ('1116', '73', ',3,73,1116,', '3', '大里贝拉', 'Ribeira Grande', 'dalibeila', 'RG');
INSERT INTO `travel_location` VALUES ('1117', '73', ',3,73,1117,', '3', '福古岛', 'Fogo', 'fugudao', 'FO');
INSERT INTO `travel_location` VALUES ('1118', '73', ',3,73,1118,', '3', '马尤岛', 'Maio', 'mayoudao', 'MA');
INSERT INTO `travel_location` VALUES ('1119', '73', ',3,73,1119,', '3', '莫斯特罗', 'Mosteiros', 'mositeluo', 'MO');
INSERT INTO `travel_location` VALUES ('1120', '73', ',3,73,1120,', '3', '普拉亚', 'Praia', 'pulaya', 'PR');
INSERT INTO `travel_location` VALUES ('1121', '73', ',3,73,1121,', '3', '萨尔岛', 'Sal', 'saerdao', 'SL');
INSERT INTO `travel_location` VALUES ('1122', '73', ',3,73,1122,', '3', '圣安唐岛', 'Santo Antao', 'shengantangdao', 'SA');
INSERT INTO `travel_location` VALUES ('1123', '73', ',3,73,1123,', '3', '圣地亚哥岛', 'Santiago', 'shengdiyagedao', 'IA');
INSERT INTO `travel_location` VALUES ('1124', '73', ',3,73,1124,', '3', '圣多明戈', 'Sao Domingos', 'shengduomingge', 'SD');
INSERT INTO `travel_location` VALUES ('1125', '73', ',3,73,1125,', '3', '圣菲利普', 'Sao Filipe', 'shengfeilipu', 'SF');
INSERT INTO `travel_location` VALUES ('1126', '73', ',3,73,1126,', '3', '圣卡塔琳娜', 'Santa Catarina', 'shengkatalinna', 'CA');
INSERT INTO `travel_location` VALUES ('1127', '73', ',3,73,1127,', '3', '圣克鲁斯', 'Santa Cruz', 'shengkelusi', 'CR');
INSERT INTO `travel_location` VALUES ('1128', '73', ',3,73,1128,', '3', '圣米戈尔', 'Sao Miguel', 'shengmigeer', 'SM');
INSERT INTO `travel_location` VALUES ('1129', '73', ',3,73,1129,', '3', '圣尼古拉岛', 'Sao Nicolau', 'shengniguladao', 'SN');
INSERT INTO `travel_location` VALUES ('1130', '73', ',3,73,1130,', '3', '圣维森特岛', 'Sao Vicente', 'shengweisentedao', 'SV');
INSERT INTO `travel_location` VALUES ('1131', '73', ',3,73,1131,', '3', '塔拉法尔', 'Tarrafal', 'talafaer', 'TA');
INSERT INTO `travel_location` VALUES ('1132', '78', ',5,78,1132,', '3', '阿劳卡', 'Arauca', 'alaoka', 'ARA');
INSERT INTO `travel_location` VALUES ('1133', '78', ',5,78,1133,', '3', '安提奥基亚', 'Antioquia', 'antiaojiya', 'ANT');
INSERT INTO `travel_location` VALUES ('1134', '78', ',5,78,1134,', '3', '北桑坦德', 'Norte de Santander', 'beisangtande', 'NDS');
INSERT INTO `travel_location` VALUES ('1135', '78', ',5,78,1135,', '3', '波哥大首都区', 'Bogota', 'bogedashouduqu', 'BDC');
INSERT INTO `travel_location` VALUES ('1136', '78', ',5,78,1136,', '3', '博利瓦尔', 'Bolivar', 'boliwaer', 'BOL');
INSERT INTO `travel_location` VALUES ('1137', '78', ',5,78,1137,', '3', '博亚卡', 'Boyaca', 'boyaka', 'BOY');
INSERT INTO `travel_location` VALUES ('1138', '78', ',5,78,1138,', '3', '大西洋', 'Atlantico', 'daxiyang', 'ATL');
INSERT INTO `travel_location` VALUES ('1139', '78', ',5,78,1139,', '3', '瓜维亚雷', 'Guaviare', 'guaweiyalei', 'GVR');
INSERT INTO `travel_location` VALUES ('1140', '78', ',5,78,1140,', '3', '瓜希拉', 'La Guajira', 'guaxila', 'GJR');
INSERT INTO `travel_location` VALUES ('1141', '78', ',5,78,1141,', '3', '瓜伊尼亚', 'Guainia', 'guayiniya', 'GNA');
INSERT INTO `travel_location` VALUES ('1142', '78', ',5,78,1142,', '3', '金迪奥', 'Quindio', 'jindiao', 'QUI');
INSERT INTO `travel_location` VALUES ('1143', '78', ',5,78,1143,', '3', '卡尔达斯', 'Caldas', 'kaerdasi', 'CAL');
INSERT INTO `travel_location` VALUES ('1144', '78', ',5,78,1144,', '3', '卡克塔', 'Caqueta', 'kaketa', 'CAQ');
INSERT INTO `travel_location` VALUES ('1145', '78', ',5,78,1145,', '3', '卡萨纳雷', 'Casanare', 'kasanalei', 'CAS');
INSERT INTO `travel_location` VALUES ('1146', '78', ',5,78,1146,', '3', '考卡', 'Cauca', 'kaoka', 'CAU');
INSERT INTO `travel_location` VALUES ('1147', '78', ',5,78,1147,', '3', '考卡山谷', 'Valle del Cauca', 'kaokashangu', 'VDC');
INSERT INTO `travel_location` VALUES ('1148', '78', ',5,78,1148,', '3', '科尔多巴', 'Cordoba', 'keerduoba', 'COR');
INSERT INTO `travel_location` VALUES ('1149', '78', ',5,78,1149,', '3', '昆迪纳马卡', 'Cundinamarca', 'kundinamaka', 'CAM');
INSERT INTO `travel_location` VALUES ('1150', '78', ',5,78,1150,', '3', '利萨拉尔达', 'Risaralda', 'lisalaerda', 'RIS');
INSERT INTO `travel_location` VALUES ('1151', '78', ',5,78,1151,', '3', '马格达雷那', 'Magdalena', 'magedaleina', 'MAG');
INSERT INTO `travel_location` VALUES ('1152', '78', ',5,78,1152,', '3', '梅塔', 'Meta', 'meita', 'MET');
INSERT INTO `travel_location` VALUES ('1153', '78', ',5,78,1153,', '3', '纳里尼奥', 'Narino', 'naliniao', 'NAR');
INSERT INTO `travel_location` VALUES ('1154', '78', ',5,78,1154,', '3', '普图马约', 'Putumayo', 'putumayue', 'PUT');
INSERT INTO `travel_location` VALUES ('1155', '78', ',5,78,1155,', '3', '乔科', 'Choco', 'qiaoke', 'CHO');
INSERT INTO `travel_location` VALUES ('1156', '78', ',5,78,1156,', '3', '塞萨尔', 'Cesar', 'saisaer', 'CES');
INSERT INTO `travel_location` VALUES ('1157', '78', ',5,78,1157,', '3', '桑坦德', 'Santander', 'sangtande', 'SAN');
INSERT INTO `travel_location` VALUES ('1158', '78', ',5,78,1158,', '3', '圣安德烈斯-普罗维登西亚', 'San Andres y Providencia', 'shengandeliesipuluoweidengxiya', 'SAP');
INSERT INTO `travel_location` VALUES ('1159', '78', ',5,78,1159,', '3', '苏克雷', 'Sucre', 'sukelei', 'SUC');
INSERT INTO `travel_location` VALUES ('1160', '78', ',5,78,1160,', '3', '托利马', 'Tolima', 'tuolima', 'TOL');
INSERT INTO `travel_location` VALUES ('1161', '78', ',5,78,1161,', '3', '维查达', 'Vichada', 'weichada', 'VIC');
INSERT INTO `travel_location` VALUES ('1162', '78', ',5,78,1162,', '3', '沃佩斯', 'Vaupes', 'wopeisi', 'VAU');
INSERT INTO `travel_location` VALUES ('1163', '78', ',5,78,1163,', '3', '乌伊拉', 'Huila', 'wuyila', 'HUI');
INSERT INTO `travel_location` VALUES ('1164', '78', ',5,78,1164,', '3', '亚马孙', 'Amazonas', 'yamasun', 'AMZ');
INSERT INTO `travel_location` VALUES ('1165', '79', ',4,79,1165,', '3', '阿拉胡埃拉', 'Alajuela', 'alahuaila', 'A');
INSERT INTO `travel_location` VALUES ('1166', '79', ',4,79,1166,', '3', '埃雷迪亚', 'Heredia', 'aileidiya', 'H');
INSERT INTO `travel_location` VALUES ('1167', '79', ',4,79,1167,', '3', '瓜纳卡斯特', 'Guanacaste', 'guanakasite', 'G');
INSERT INTO `travel_location` VALUES ('1168', '79', ',4,79,1168,', '3', '卡塔戈', 'Cartago', 'katage', 'C');
INSERT INTO `travel_location` VALUES ('1169', '79', ',4,79,1169,', '3', '利蒙', 'Limon', 'limeng', 'L');
INSERT INTO `travel_location` VALUES ('1170', '79', ',4,79,1170,', '3', '蓬塔雷纳斯', 'Puntarenas', 'pengtaleinasi', 'P');
INSERT INTO `travel_location` VALUES ('1171', '79', ',4,79,1171,', '3', '圣何塞', 'San Jose', 'shenghesai', 'SJ');
INSERT INTO `travel_location` VALUES ('1172', '83', ',4,83,1172,', '3', '奥尔金', 'Holguin', 'aoerjin', '11');
INSERT INTO `travel_location` VALUES ('1173', '83', ',4,83,1173,', '3', '比那尔德里奥', 'Pinar del Rio', 'binaerdeliao', '1');
INSERT INTO `travel_location` VALUES ('1174', '83', ',4,83,1174,', '3', '比亚克拉拉', 'Villa Clara', 'biyakelala', '5');
INSERT INTO `travel_location` VALUES ('1175', '83', ',4,83,1175,', '3', '格拉玛', 'Granma', 'gelama', '12');
INSERT INTO `travel_location` VALUES ('1176', '83', ',4,83,1176,', '3', '关塔那摩', 'Guantanamo', 'guantanamo', '14');
INSERT INTO `travel_location` VALUES ('1177', '83', ',4,83,1177,', '3', '哈瓦那', 'La Habana', 'hawana', '2');
INSERT INTO `travel_location` VALUES ('1178', '83', ',4,83,1178,', '3', '哈瓦那城', 'Ciudad de la Habana', 'hawanacheng', '3');
INSERT INTO `travel_location` VALUES ('1179', '83', ',4,83,1179,', '3', '卡马圭', 'Camaguey', 'kamagui', '9');
INSERT INTO `travel_location` VALUES ('1180', '83', ',4,83,1180,', '3', '拉斯图纳斯', 'Las Tunas', 'lasitunasi', '10');
INSERT INTO `travel_location` VALUES ('1181', '83', ',4,83,1181,', '3', '马坦萨斯', 'Matanzas', 'matansasi', '4');
INSERT INTO `travel_location` VALUES ('1182', '83', ',4,83,1182,', '3', '马亚里', 'Mayari', 'mayali', 'MAY');
INSERT INTO `travel_location` VALUES ('1183', '83', ',4,83,1183,', '3', '曼萨尼罗', 'Manzanillo', 'mansaniluo', 'MZO');
INSERT INTO `travel_location` VALUES ('1184', '83', ',4,83,1184,', '3', '青年岛特区', 'Isla de la Juventud', 'qingniandaotequ', '99');
INSERT INTO `travel_location` VALUES ('1185', '83', ',4,83,1185,', '3', '圣地亚哥', 'Santiago de Cuba', 'shengdiyage', '13');
INSERT INTO `travel_location` VALUES ('1186', '83', ',4,83,1186,', '3', '圣斯皮里图斯', 'Sancti Spiritus', 'shengsipilitusi', '7');
INSERT INTO `travel_location` VALUES ('1187', '83', ',4,83,1187,', '3', '西恩富戈斯', 'Cienfuegos', 'xienfugesi', '6');
INSERT INTO `travel_location` VALUES ('1188', '83', ',4,83,1188,', '3', '谢戈德阿维拉', 'Ciego de Avila', 'xiegedeaweila', '8');
INSERT INTO `travel_location` VALUES ('1189', '86', ',5,86,1189,', '3', '埃塞奎博群岛-西德梅拉拉', 'Essequibo Islands-West Demerara', 'aisaikuiboqundaoxidemeilala', 'EW');
INSERT INTO `travel_location` VALUES ('1190', '86', ',5,86,1190,', '3', '巴里马-瓦伊尼', 'Barima-Waini', 'balimawayini', 'BW');
INSERT INTO `travel_location` VALUES ('1191', '86', ',5,86,1191,', '3', '波默伦-苏佩纳姆', 'Pomeroon-Supenaam', 'bomolunsupeinamu', 'PM');
INSERT INTO `travel_location` VALUES ('1192', '86', ',5,86,1192,', '3', '波塔罗-锡帕鲁尼', 'Potaro-Siparuni', 'botaluoxipaluni', 'PI');
INSERT INTO `travel_location` VALUES ('1193', '86', ',5,86,1193,', '3', '德梅拉拉-马海卡', 'Demerara-Mahaica', 'demeilalamahaika', 'DM');
INSERT INTO `travel_location` VALUES ('1194', '86', ',5,86,1194,', '3', '东伯比斯-科兰太因', 'East Berbice-Corentyne', 'dongbobisikelantaiyin', 'EC');
INSERT INTO `travel_location` VALUES ('1195', '86', ',5,86,1195,', '3', '库尤尼-马扎鲁尼', 'Cuyuni-Mazaruni', 'kuyounimazhaluni', 'CM');
INSERT INTO `travel_location` VALUES ('1196', '86', ',5,86,1196,', '3', '马海卡-伯比斯', 'Mahaica-Berbice', 'mahaikabobisi', 'MB');
INSERT INTO `travel_location` VALUES ('1197', '86', ',5,86,1197,', '3', '上德梅拉拉-伯比斯', 'Upper Demerara-Berbice', 'shangdemeilalabobisi', 'UD');
INSERT INTO `travel_location` VALUES ('1198', '86', ',5,86,1198,', '3', '上塔库图-上埃塞奎博', 'Upper Takutu-Upper Essequibo', 'shangtakutushangaisaikuibo', 'UT');
INSERT INTO `travel_location` VALUES ('1199', '87', ',1,87,1199,', '3', '阿尔卡累克', 'Arkalyk', 'aerkaleike', 'AYK');
INSERT INTO `travel_location` VALUES ('1200', '87', ',1,87,1200,', '3', '阿克莫拉', 'Aqmola', 'akemola', 'AKM');
INSERT INTO `travel_location` VALUES ('1201', '87', ',1,87,1201,', '3', '阿克苏', 'Aksu', 'akesu', 'AKS');
INSERT INTO `travel_location` VALUES ('1202', '87', ',1,87,1202,', '3', '阿克托别', 'Aqtobe', 'aketuobie', 'AKT');
INSERT INTO `travel_location` VALUES ('1203', '87', ',1,87,1203,', '3', '阿拉木图', 'Almaty', 'alamutu', 'ALA');
INSERT INTO `travel_location` VALUES ('1204', '87', ',1,87,1204,', '3', '阿雷斯', 'Arys', 'aleisi', 'ARY');
INSERT INTO `travel_location` VALUES ('1205', '87', ',1,87,1205,', '3', '阿斯塔纳市', 'Astana', 'asitanashi', 'AST');
INSERT INTO `travel_location` VALUES ('1206', '87', ',1,87,1206,', '3', '阿特劳', 'Atyrau', 'atelao', 'ATY');
INSERT INTO `travel_location` VALUES ('1207', '87', ',1,87,1207,', '3', '埃基巴斯图兹', 'Ekibastuz', 'aijibasituzi', 'EKB');
INSERT INTO `travel_location` VALUES ('1208', '87', ',1,87,1208,', '3', '巴尔喀什', 'Balkhash', 'baerkashi', 'BXH');
INSERT INTO `travel_location` VALUES ('1209', '87', ',1,87,1209,', '3', '巴甫洛达尔', 'Pavlodar', 'bafuluodaer', 'PAV');
INSERT INTO `travel_location` VALUES ('1210', '87', ',1,87,1210,', '3', '北哈萨克斯坦', 'Soltustik Qazaqstan', 'beihasakesitan', 'SEV');
INSERT INTO `travel_location` VALUES ('1211', '87', ',1,87,1211,', '3', '东哈萨克斯坦', 'Shyghys Qazaqstan', 'donghasakesitan', 'VOS');
INSERT INTO `travel_location` VALUES ('1212', '87', ',1,87,1212,', '3', '济良诺夫斯克', 'Zyryanovsk', 'jiliangnuofusike', 'ZYR');
INSERT INTO `travel_location` VALUES ('1213', '87', ',1,87,1213,', '3', '江布尔', 'Zhambyl', 'jiangbuer', 'DMB');
INSERT INTO `travel_location` VALUES ('1214', '87', ',1,87,1214,', '3', '杰兹卡兹甘', 'Zhezkazgan', 'jiezikazigan', 'DZH');
INSERT INTO `travel_location` VALUES ('1215', '87', ',1,87,1215,', '3', '卡拉干达', 'Qaraghandy', 'kalaganda', 'KAR');
INSERT INTO `travel_location` VALUES ('1216', '87', ',1,87,1216,', '3', '卡拉扎尔', 'Karazhal', 'kalazhaer', 'KZO');
INSERT INTO `travel_location` VALUES ('1217', '87', ',1,87,1217,', '3', '卡普恰盖', 'Kapchagay', 'kapuqiagai', 'KAP');
INSERT INTO `travel_location` VALUES ('1218', '87', ',1,87,1218,', '3', '科斯塔奈', 'Qostanay', 'kesitanai', 'KST');
INSERT INTO `travel_location` VALUES ('1219', '87', ',1,87,1219,', '3', '克孜勒奥尔达', 'Qyzylorda', 'kezileaoerda', 'KZY');
INSERT INTO `travel_location` VALUES ('1220', '87', ',1,87,1220,', '3', '肯套', 'Kentau', 'kentao', 'KEN');
INSERT INTO `travel_location` VALUES ('1221', '87', ',1,87,1221,', '3', '库尔恰托夫', 'Kurchatov', 'kuerqiatuofu', 'KUR');
INSERT INTO `travel_location` VALUES ('1222', '87', ',1,87,1222,', '3', '利萨科夫斯克', 'Lisakovsk', 'lisakefusike', 'LKK');
INSERT INTO `travel_location` VALUES ('1223', '87', ',1,87,1223,', '3', '列宁诺戈尔斯克', 'Leninogorsk', 'lieningnuogeersike', 'LEN');
INSERT INTO `travel_location` VALUES ('1224', '87', ',1,87,1224,', '3', '鲁德内', 'Rudny', 'ludenei', 'RUD');
INSERT INTO `travel_location` VALUES ('1225', '87', ',1,87,1225,', '3', '曼格斯套', 'Mangghystau', 'mangesitao', 'MAN');
INSERT INTO `travel_location` VALUES ('1226', '87', ',1,87,1226,', '3', '南哈萨克斯坦', 'Ongtustik Qazaqstan', 'nanhasakesitan', 'KGT');
INSERT INTO `travel_location` VALUES ('1227', '87', ',1,87,1227,', '3', '萨兰', 'Saran', 'salan', 'SAR');
INSERT INTO `travel_location` VALUES ('1228', '87', ',1,87,1228,', '3', '塞梅伊', 'Semey', 'saimeiyi', 'SEM');
INSERT INTO `travel_location` VALUES ('1229', '87', ',1,87,1229,', '3', '沙赫京斯克', 'Shakhtinsk', 'shahejingsike', 'SAK');
INSERT INTO `travel_location` VALUES ('1230', '87', ',1,87,1230,', '3', '斯捷普诺戈尔斯克', 'Stepnogorsk', 'sijiepunuogeersike', 'STE');
INSERT INTO `travel_location` VALUES ('1231', '87', ',1,87,1231,', '3', '铁克利', 'Tekeli', 'tiekeli', 'TEK');
INSERT INTO `travel_location` VALUES ('1232', '87', ',1,87,1232,', '3', '铁米尔套', 'Temirtau', 'tiemiertao', 'TEM');
INSERT INTO `travel_location` VALUES ('1233', '87', ',1,87,1233,', '3', '突厥斯坦', 'Turkestan', 'tusitan', 'TUR');
INSERT INTO `travel_location` VALUES ('1234', '87', ',1,87,1234,', '3', '西哈萨克斯坦', 'Batys Qazaqstan', 'xihasakesitan', 'ZAP');
INSERT INTO `travel_location` VALUES ('1235', '87', ',1,87,1235,', '3', '扎纳奥津', 'Zhanaozen', 'zhanaaojin', 'ZHA');
INSERT INTO `travel_location` VALUES ('1236', '90', ',2,90,1236,', '3', '阿尔梅勒', 'Almere', 'aermeile', 'AER');
INSERT INTO `travel_location` VALUES ('1237', '90', ',2,90,1237,', '3', '阿默斯福特', 'Amersfoort', 'amosifute', 'AME');
INSERT INTO `travel_location` VALUES ('1238', '90', ',2,90,1238,', '3', '阿姆斯特丹', 'Amsterdam', 'amusitedan', 'AMS');
INSERT INTO `travel_location` VALUES ('1239', '90', ',2,90,1239,', '3', '阿纳姆', 'Arnhem', 'anamu', 'ARN');
INSERT INTO `travel_location` VALUES ('1240', '90', ',2,90,1240,', '3', '阿珀尔多伦', 'Apeldoorn', 'aerduolun', 'APE');
INSERT INTO `travel_location` VALUES ('1241', '90', ',2,90,1241,', '3', '阿森', 'Assen', 'asen', 'ASS');
INSERT INTO `travel_location` VALUES ('1242', '90', ',2,90,1242,', '3', '埃德', 'Ede', 'aide', 'EDE');
INSERT INTO `travel_location` VALUES ('1243', '90', ',2,90,1243,', '3', '埃门', 'Emmen', 'aimen', 'EMM');
INSERT INTO `travel_location` VALUES ('1244', '90', ',2,90,1244,', '3', '埃因霍芬', 'Eindhoven', 'aiyinhuofen', 'EIN');
INSERT INTO `travel_location` VALUES ('1245', '90', ',2,90,1245,', '3', '布雷达', 'Breda', 'buleida', 'BRD');
INSERT INTO `travel_location` VALUES ('1246', '90', ',2,90,1246,', '3', '蒂尔堡', 'Tilburg', 'dierbao', 'TLB');
INSERT INTO `travel_location` VALUES ('1247', '90', ',2,90,1247,', '3', '多德雷赫特', 'Dordrecht', 'duodeleihete', 'DOR');
INSERT INTO `travel_location` VALUES ('1248', '90', ',2,90,1248,', '3', '恩斯赫德', 'Enschede', 'ensihede', 'ENS');
INSERT INTO `travel_location` VALUES ('1249', '90', ',2,90,1249,', '3', '格罗宁根', 'Groningen', 'geluoninggen', 'GRQ');
INSERT INTO `travel_location` VALUES ('1250', '90', ',2,90,1250,', '3', '哈勒姆', 'Haarlem', 'halemu', 'HRA');
INSERT INTO `travel_location` VALUES ('1251', '90', ',2,90,1251,', '3', '海牙', 'Hague', 'haiya', 'HAG');
INSERT INTO `travel_location` VALUES ('1252', '90', ',2,90,1252,', '3', '霍夫多尔普', 'Hoofddorp', 'huofuduoerpu', 'HFD');
INSERT INTO `travel_location` VALUES ('1253', '90', ',2,90,1253,', '3', '莱顿', 'Leiden', 'laidun', 'LID');
INSERT INTO `travel_location` VALUES ('1254', '90', ',2,90,1254,', '3', '莱利斯塔德', 'Lelystad', 'lailisitade', 'LEY');
INSERT INTO `travel_location` VALUES ('1255', '90', ',2,90,1255,', '3', '鹿特丹', 'Rotterdam', 'lutedan', 'RTM');
INSERT INTO `travel_location` VALUES ('1256', '90', ',2,90,1256,', '3', '吕伐登', 'Leeuwarden', 'lvfadeng', 'LWR');
INSERT INTO `travel_location` VALUES ('1257', '90', ',2,90,1257,', '3', '马斯特里赫特', 'Maastricht', 'masitelihete', 'MST');
INSERT INTO `travel_location` VALUES ('1258', '90', ',2,90,1258,', '3', '米德尔堡', 'Middelburg', 'mideerbao', 'MDL');
INSERT INTO `travel_location` VALUES ('1259', '90', ',2,90,1259,', '3', '奈梅亨', 'Nijmegen', 'naimeiheng', 'NIJ');
INSERT INTO `travel_location` VALUES ('1260', '90', ',2,90,1260,', '3', '斯海尔托亨博思', '\'s-Hertogenbosch', 'sihaiertuohengbosi', 'HTB');
INSERT INTO `travel_location` VALUES ('1261', '90', ',2,90,1261,', '3', '乌得勒支', 'Utrecht', 'wudelezhi', 'UTC');
INSERT INTO `travel_location` VALUES ('1262', '90', ',2,90,1262,', '3', '兹沃勒', 'Zwolle', 'ziwole', 'ZWO');
INSERT INTO `travel_location` VALUES ('1263', '90', ',2,90,1263,', '3', '佐特尔梅', 'Zoetermeer', 'zuoteermei', 'ZTM');
INSERT INTO `travel_location` VALUES ('1264', '93', ',4,93,1264,', '3', '阿特兰蒂达', 'Atlantida', 'atelandida', 'AT');
INSERT INTO `travel_location` VALUES ('1265', '93', ',4,93,1265,', '3', '埃尔帕拉伊索', 'El Paraiso', 'aierpalayisuo', 'PA');
INSERT INTO `travel_location` VALUES ('1266', '93', ',4,93,1266,', '3', '奥科特佩克', 'Ocotepeque', 'aoketepeike', 'OC');
INSERT INTO `travel_location` VALUES ('1267', '93', ',4,93,1267,', '3', '奥兰乔', 'Olancho', 'aolanqiao', 'OL');
INSERT INTO `travel_location` VALUES ('1268', '93', ',4,93,1268,', '3', '弗朗西斯科-莫拉桑', 'Francisco Morazan', 'fulangxisikemolasang', 'FM');
INSERT INTO `travel_location` VALUES ('1269', '93', ',4,93,1269,', '3', '格拉西亚斯-阿迪奥斯', 'Gracias a Dios', 'gelaxiyasiadiaosi', 'GD');
INSERT INTO `travel_location` VALUES ('1270', '93', ',4,93,1270,', '3', '海湾群岛', 'Islas de la Bahia', 'haiwanqundao', 'IB');
INSERT INTO `travel_location` VALUES ('1271', '93', ',4,93,1271,', '3', '科尔特斯', 'Cortes', 'keertesi', 'CR');
INSERT INTO `travel_location` VALUES ('1272', '93', ',4,93,1272,', '3', '科隆', 'Colon', 'kelong', 'CL');
INSERT INTO `travel_location` VALUES ('1273', '93', ',4,93,1273,', '3', '科马亚瓜', 'Comayagua', 'kemayagua', 'CM');
INSERT INTO `travel_location` VALUES ('1274', '93', ',4,93,1274,', '3', '科潘', 'Copan', 'kepan', 'CP');
INSERT INTO `travel_location` VALUES ('1275', '93', ',4,93,1275,', '3', '拉巴斯', 'La Paz', 'labasi', 'PZ');
INSERT INTO `travel_location` VALUES ('1276', '93', ',4,93,1276,', '3', '伦皮拉', 'Lempira', 'lunpila', 'LE');
INSERT INTO `travel_location` VALUES ('1277', '93', ',4,93,1277,', '3', '乔卢特卡', 'Choluteca', 'qiaoluteka', 'CH');
INSERT INTO `travel_location` VALUES ('1278', '93', ',4,93,1278,', '3', '乔罗马', 'Choloma', 'qiaoluoma', 'CHO');
INSERT INTO `travel_location` VALUES ('1279', '93', ',4,93,1279,', '3', '山谷', 'Valle', 'shangu', 'VA');
INSERT INTO `travel_location` VALUES ('1280', '93', ',4,93,1280,', '3', '圣巴巴拉', 'Santa Barbara', 'shengbabala', 'SB');
INSERT INTO `travel_location` VALUES ('1281', '93', ',4,93,1281,', '3', '因蒂布卡', 'Intibuca', 'yindibuka', 'IN');
INSERT INTO `travel_location` VALUES ('1282', '93', ',4,93,1282,', '3', '约罗', 'Yoro', 'yueluo', 'YO');
INSERT INTO `travel_location` VALUES ('1283', '94', ',6,94,1283,', '3', '菲尼克斯群岛', 'Phoenix Islands', 'feinikesiqundao', 'PHO');
INSERT INTO `travel_location` VALUES ('1284', '94', ',6,94,1284,', '3', '吉尔伯特群岛', 'Gilberts Islands', 'jierbotequndao', 'GIL');
INSERT INTO `travel_location` VALUES ('1285', '94', ',6,94,1285,', '3', '莱恩群岛', 'Line Islands', 'laienqundao', 'LIN');
INSERT INTO `travel_location` VALUES ('1286', '95', ',3,95,1286,', '3', '阿里萨比赫区', 'Ali Sabih', 'alisabihequ', 'S');
INSERT INTO `travel_location` VALUES ('1287', '95', ',3,95,1287,', '3', '奥博克区', 'Obock', 'aobokequ', 'O');
INSERT INTO `travel_location` VALUES ('1288', '95', ',3,95,1288,', '3', '迪基勒区', 'Dikhil', 'dijilequ', 'K');
INSERT INTO `travel_location` VALUES ('1289', '95', ',3,95,1289,', '3', '塔朱拉区', 'Tadjoura', 'tazhulaqu', 'T');
INSERT INTO `travel_location` VALUES ('1290', '96', ',1,96,1290,', '3', '奥什', 'Osh', 'aoshi', 'O');
INSERT INTO `travel_location` VALUES ('1291', '96', ',1,96,1291,', '3', '巴特肯', 'Batken', 'bateken', 'B');
INSERT INTO `travel_location` VALUES ('1292', '96', ',1,96,1292,', '3', '比什凯克市', 'Bishkek', 'bishikaikeshi', 'GB');
INSERT INTO `travel_location` VALUES ('1293', '96', ',1,96,1293,', '3', '楚河', 'Chuy', 'chuhe', 'C');
INSERT INTO `travel_location` VALUES ('1294', '96', ',1,96,1294,', '3', '贾拉拉巴德', 'Jalal-Abad', 'jialalabade', 'J');
INSERT INTO `travel_location` VALUES ('1295', '96', ',1,96,1295,', '3', '卡拉巴尔塔', 'Karabalta', 'kalabaerta', 'KBA');
INSERT INTO `travel_location` VALUES ('1296', '96', ',1,96,1296,', '3', '卡拉库尔', 'Kara-Kol', 'kalakuer', 'KKO');
INSERT INTO `travel_location` VALUES ('1297', '96', ',1,96,1297,', '3', '坎特', 'Kant', 'kante', 'KAN');
INSERT INTO `travel_location` VALUES ('1298', '96', ',1,96,1298,', '3', '科克扬加克', 'Kok-Jangak', 'kekeyangjiake', 'KJ');
INSERT INTO `travel_location` VALUES ('1299', '96', ',1,96,1299,', '3', '迈利赛', 'Mailuu-Suu', 'mailisai', 'MS');
INSERT INTO `travel_location` VALUES ('1300', '96', ',1,96,1300,', '3', '纳伦', 'Naryn', 'nalun', 'N');
INSERT INTO `travel_location` VALUES ('1301', '96', ',1,96,1301,', '3', '苏卢克图', 'Suluktu', 'suluketu', 'SU');
INSERT INTO `travel_location` VALUES ('1302', '96', ',1,96,1302,', '3', '塔拉斯', 'Talas', 'talasi', 'T');
INSERT INTO `travel_location` VALUES ('1303', '96', ',1,96,1303,', '3', '塔什库梅尔', 'Tash-Kumyr', 'tashikumeier', 'TK');
INSERT INTO `travel_location` VALUES ('1304', '96', ',1,96,1304,', '3', '乌兹根', 'Uzgen', 'wuzigen', 'UG');
INSERT INTO `travel_location` VALUES ('1305', '96', ',1,96,1305,', '3', '伊塞克湖', 'Ysyk-Kol', 'yisaikehu', 'Y');
INSERT INTO `travel_location` VALUES ('1306', '97', ',3,97,1306,', '3', '博凯', 'Boke', 'bokai', 'BOK');
INSERT INTO `travel_location` VALUES ('1307', '97', ',3,97,1307,', '3', '恩泽雷科雷', 'Nzerekore', 'enzeleikelei', 'NZR');
INSERT INTO `travel_location` VALUES ('1308', '97', ',3,97,1308,', '3', '法拉纳', 'Faranah', 'falana', 'FRN');
INSERT INTO `travel_location` VALUES ('1309', '97', ',3,97,1309,', '3', '金迪亚', 'Kindia', 'jindiya', 'KND');
INSERT INTO `travel_location` VALUES ('1310', '97', ',3,97,1310,', '3', '康康', 'Kankan', 'kangkang', 'KNK');
INSERT INTO `travel_location` VALUES ('1311', '97', ',3,97,1311,', '3', '科纳克里', 'Conakry', 'kenakeli', 'CNK');
INSERT INTO `travel_location` VALUES ('1312', '97', ',3,97,1312,', '3', '拉贝', 'Labe', 'labei', 'LAB');
INSERT INTO `travel_location` VALUES ('1313', '97', ',3,97,1313,', '3', '玛木', 'Mamou', 'mamu', 'MAM');
INSERT INTO `travel_location` VALUES ('1314', '99', ',4,99,1314,', '3', '阿伯茨福', 'Abbotsford', 'abocifu', 'ABB');
INSERT INTO `travel_location` VALUES ('1315', '99', ',4,99,1315,', '3', '埃德蒙顿', 'Edmonton', 'aidemengdun', 'EDM');
INSERT INTO `travel_location` VALUES ('1316', '99', ',4,99,1316,', '3', '奥沙瓦', 'Oshawa', 'aoshawa', 'OSH');
INSERT INTO `travel_location` VALUES ('1317', '99', ',4,99,1317,', '3', '巴里', 'Barrie', 'bali', 'BAR');
INSERT INTO `travel_location` VALUES ('1318', '99', ',4,99,1318,', '3', '布列塔尼角', 'Cape Breton', 'bulietanijiao', 'CBR');
INSERT INTO `travel_location` VALUES ('1319', '99', ',4,99,1319,', '3', '多伦多', 'Toronto', 'duolunduo', 'TOR');
INSERT INTO `travel_location` VALUES ('1320', '99', ',4,99,1320,', '3', '弗雷德里顿', 'Fredericton', 'fuleidelidun', 'FRE');
INSERT INTO `travel_location` VALUES ('1321', '99', ',4,99,1321,', '3', '圭尔夫', 'Guelph', 'guierfu', 'GLP');
INSERT INTO `travel_location` VALUES ('1322', '99', ',4,99,1322,', '3', '哈利法克斯', 'Halifax', 'halifakesi', 'HAL');
INSERT INTO `travel_location` VALUES ('1323', '99', ',4,99,1323,', '3', '哈密尔顿', 'Hamilton', 'hamierdun', 'HAM');
INSERT INTO `travel_location` VALUES ('1324', '99', ',4,99,1324,', '3', '怀特霍斯', 'Whitehorse', 'huaitehuosi', 'YXY');
INSERT INTO `travel_location` VALUES ('1325', '99', ',4,99,1325,', '3', '基劳纳', 'Kelowna', 'jilaona', 'KWL');
INSERT INTO `travel_location` VALUES ('1326', '99', ',4,99,1326,', '3', '基奇纳', 'Brampton', 'jiqina', 'BRP');
INSERT INTO `travel_location` VALUES ('1327', '99', ',4,99,1327,', '3', '金斯敦', 'Kingston', 'jinsidun', 'KGN');
INSERT INTO `travel_location` VALUES ('1328', '99', ',4,99,1328,', '3', '卡里加里', 'Calgary', 'kalijiali', 'CAL');
INSERT INTO `travel_location` VALUES ('1329', '99', ',4,99,1329,', '3', '魁北克', 'Quebec', 'kuibeike', 'QUE');
INSERT INTO `travel_location` VALUES ('1330', '99', ',4,99,1330,', '3', '里贾纳', 'Regina', 'lijiana', 'REG');
INSERT INTO `travel_location` VALUES ('1331', '99', ',4,99,1331,', '3', '伦敦', 'London', 'lundun', 'LOD');
INSERT INTO `travel_location` VALUES ('1332', '99', ',4,99,1332,', '3', '蒙特利尔', 'Montreal', 'mengtelier', 'MTR');
INSERT INTO `travel_location` VALUES ('1333', '99', ',4,99,1333,', '3', '萨德伯里', 'Sudbury', 'sadeboli', 'SUD');
INSERT INTO `travel_location` VALUES ('1334', '99', ',4,99,1334,', '3', '萨斯卡通', 'Saskatoon', 'sasikatong', 'SAK');
INSERT INTO `travel_location` VALUES ('1335', '99', ',4,99,1335,', '3', '三河城', 'Trois-Rivieres', 'sanhecheng', 'TRR');
INSERT INTO `travel_location` VALUES ('1336', '99', ',4,99,1336,', '3', '桑德贝', 'Thunder Bay', 'sangdebei', 'THU');
INSERT INTO `travel_location` VALUES ('1337', '99', ',4,99,1337,', '3', '舍布鲁克', 'Sherbrooke', 'shebuluke', 'SBE');
INSERT INTO `travel_location` VALUES ('1338', '99', ',4,99,1338,', '3', '圣卡塔琳娜', 'St. Catharines', 'shengkatalinna', 'SCA');
INSERT INTO `travel_location` VALUES ('1339', '99', ',4,99,1339,', '3', '圣约翰斯', 'Saint-John\'s', 'shengyuehansi', 'SJB');
INSERT INTO `travel_location` VALUES ('1340', '99', ',4,99,1340,', '3', '维多利亚', 'Victoria', 'weiduoliya', 'VIC');
INSERT INTO `travel_location` VALUES ('1341', '99', ',4,99,1341,', '3', '温哥华', 'Vancouver', 'wengehua', 'VAN');
INSERT INTO `travel_location` VALUES ('1342', '99', ',4,99,1342,', '3', '温尼伯', 'Winnipeg', 'wennibo', 'WNP');
INSERT INTO `travel_location` VALUES ('1343', '99', ',4,99,1343,', '3', '温莎', 'Windsor', 'wensha', 'WDR');
INSERT INTO `travel_location` VALUES ('1344', '99', ',4,99,1344,', '3', '渥太华', 'Ottawa', 'taihua', 'OTT');
INSERT INTO `travel_location` VALUES ('1345', '99', ',4,99,1345,', '3', '夏洛特敦', 'Charlottetown', 'xialuotedun', 'CHA');
INSERT INTO `travel_location` VALUES ('1346', '99', ',4,99,1346,', '3', '耶洛奈夫', 'Yellowknife', 'yeluonaifu', 'YZF');
INSERT INTO `travel_location` VALUES ('1347', '99', ',4,99,1347,', '3', '伊魁特', 'Iqaluit', 'yikuite', 'IQL');
INSERT INTO `travel_location` VALUES ('1348', '100', ',3,100,1348,', '3', '阿散蒂', 'Ashanti', 'asandi', 'AS');
INSERT INTO `travel_location` VALUES ('1349', '100', ',3,100,1349,', '3', '奥布阿西', 'Obuasi', 'aobuaxi', 'OBU');
INSERT INTO `travel_location` VALUES ('1350', '100', ',3,100,1350,', '3', '北部', 'Northern', 'beibu', 'NO');
INSERT INTO `travel_location` VALUES ('1351', '100', ',3,100,1351,', '3', '布朗阿哈福', 'Brong Ahafo', 'bulangahafu', 'BA');
INSERT INTO `travel_location` VALUES ('1352', '100', ',3,100,1352,', '3', '大阿克拉', 'Greater Accra', 'daakela', 'GA');
INSERT INTO `travel_location` VALUES ('1353', '100', ',3,100,1353,', '3', '东部', 'Eastern', 'dongbu', 'EA');
INSERT INTO `travel_location` VALUES ('1354', '100', ',3,100,1354,', '3', '上东部', 'Upper East', 'shangdongbu', 'UE');
INSERT INTO `travel_location` VALUES ('1355', '100', ',3,100,1355,', '3', '上西部', 'Upper West', 'shangxibu', 'UW');
INSERT INTO `travel_location` VALUES ('1356', '100', ',3,100,1356,', '3', '沃尔特', 'Volta', 'woerte', 'VO');
INSERT INTO `travel_location` VALUES ('1357', '100', ',3,100,1357,', '3', '西部', 'Western', 'xibu', 'WE');
INSERT INTO `travel_location` VALUES ('1358', '100', ',3,100,1358,', '3', '中部', 'Central', 'zhongbu', 'CE');
INSERT INTO `travel_location` VALUES ('1359', '101', ',3,101,1359,', '3', '奥果韦-洛洛', 'Ogooue-Lolo', 'aoguoweiluoluo', 'OL');
INSERT INTO `travel_location` VALUES ('1360', '101', ',3,101,1360,', '3', '奥果韦-伊温多', 'Ogooue-Ivindo', 'aoguoweiyiwenduo', 'OI');
INSERT INTO `travel_location` VALUES ('1361', '101', ',3,101,1361,', '3', '滨海奥果韦', 'Ogooue-Maritime', 'binhaiaoguowei', 'OM');
INSERT INTO `travel_location` VALUES ('1362', '101', ',3,101,1362,', '3', '恩古涅', 'Ngounie', 'engunie', 'NG');
INSERT INTO `travel_location` VALUES ('1363', '101', ',3,101,1363,', '3', '河口', 'Estuaire', 'hekou', 'ES');
INSERT INTO `travel_location` VALUES ('1364', '101', ',3,101,1364,', '3', '尼扬加', 'Nyanga', 'niyangjia', 'NY');
INSERT INTO `travel_location` VALUES ('1365', '101', ',3,101,1365,', '3', '上奥果韦', 'Haut-Ogooue', 'shangaoguowei', 'HO');
INSERT INTO `travel_location` VALUES ('1366', '101', ',3,101,1366,', '3', '沃勒-恩特姆', 'Woleu-Ntem', 'woleentemu', 'WN');
INSERT INTO `travel_location` VALUES ('1367', '101', ',3,101,1367,', '3', '中奥果韦', 'Moyen-Ogooue', 'zhongaoguowei', 'MO');
INSERT INTO `travel_location` VALUES ('1368', '102', ',1,102,1368,', '3', '奥多棉吉', 'Otdar Mean Chey', 'aoduomianji', 'OC');
INSERT INTO `travel_location` VALUES ('1369', '102', ',1,102,1369,', '3', '白马市', 'Krong Keb', 'baimashi', 'KB');
INSERT INTO `travel_location` VALUES ('1370', '102', ',1,102,1370,', '3', '柏威夏', 'Preah Vihear', 'baiweixia', 'PR');
INSERT INTO `travel_location` VALUES ('1371', '102', ',1,102,1371,', '3', '拜林市', 'Krong Pailin', 'bailinshi', 'PL');
INSERT INTO `travel_location` VALUES ('1372', '102', ',1,102,1372,', '3', '班迭棉吉', 'Banteay Mean Chey', 'bandiemianji', 'BM');
INSERT INTO `travel_location` VALUES ('1373', '102', ',1,102,1373,', '3', '磅清扬', 'Kampong Chhnang', 'bangqingyang', 'KZC');
INSERT INTO `travel_location` VALUES ('1374', '102', ',1,102,1374,', '3', '磅士卑', 'Kampong Spoe', 'bangshibei', 'KO');
INSERT INTO `travel_location` VALUES ('1375', '102', ',1,102,1375,', '3', '磅同', 'Kampong Thum', 'bangtong', 'KZK');
INSERT INTO `travel_location` VALUES ('1376', '102', ',1,102,1376,', '3', '磅湛', 'Kampong Cham', 'bangzhan', 'KM');
INSERT INTO `travel_location` VALUES ('1377', '102', ',1,102,1377,', '3', '波罗勉', 'Prey Veng', 'boluomian', 'PG');
INSERT INTO `travel_location` VALUES ('1378', '102', ',1,102,1378,', '3', '茶胶', 'Takev', 'chajiao', 'TK');
INSERT INTO `travel_location` VALUES ('1379', '102', ',1,102,1379,', '3', '柴桢', 'Svay Rieng', 'chai', 'SVR');
INSERT INTO `travel_location` VALUES ('1380', '102', ',1,102,1380,', '3', '干丹', 'Kandal', 'gandan', 'KL');
INSERT INTO `travel_location` VALUES ('1381', '102', ',1,102,1381,', '3', '戈公', 'Kaoh Kong', 'gegong', 'KKZ');
INSERT INTO `travel_location` VALUES ('1382', '102', ',1,102,1382,', '3', '贡布', 'Kampot', 'gongbu', 'KMT');
INSERT INTO `travel_location` VALUES ('1383', '102', ',1,102,1383,', '3', '金边市', 'Phnum Penh', 'jinbianshi', 'PNH');
INSERT INTO `travel_location` VALUES ('1384', '102', ',1,102,1384,', '3', '桔井', 'Kracheh', 'jiejing', 'KH');
INSERT INTO `travel_location` VALUES ('1385', '102', ',1,102,1385,', '3', '腊塔纳基里', 'Rotanak Kiri', 'latanajili', 'RBE');
INSERT INTO `travel_location` VALUES ('1386', '102', ',1,102,1386,', '3', '马德望', 'Bat Dambang', 'madewang', 'BA');
INSERT INTO `travel_location` VALUES ('1387', '102', ',1,102,1387,', '3', '蒙多基里', 'Mondol Kiri', 'mengduojili', 'MWV');
INSERT INTO `travel_location` VALUES ('1388', '102', ',1,102,1388,', '3', '菩萨', 'Pouthĭsat', 'pusa', 'PO');
INSERT INTO `travel_location` VALUES ('1389', '102', ',1,102,1389,', '3', '上丁', 'Stoeng Treng', 'shangding', 'TNX');
INSERT INTO `travel_location` VALUES ('1390', '102', ',1,102,1390,', '3', '西哈努克市', 'Krong Preah', 'xihanukeshi', 'KA');
INSERT INTO `travel_location` VALUES ('1391', '102', ',1,102,1391,', '3', '暹粒', 'Siem Reab', 'li', 'REP');
INSERT INTO `travel_location` VALUES ('1392', '103', ',2,103,1392,', '3', '奥洛穆茨', 'Olomoucky', 'aoluomuci', 'OL');
INSERT INTO `travel_location` VALUES ('1393', '103', ',2,103,1393,', '3', '比尔森', 'Plzensky', 'biersen', 'PL');
INSERT INTO `travel_location` VALUES ('1394', '103', ',2,103,1394,', '3', '布拉格直辖市', 'Prague', 'bulagezhixiashi', 'PR');
INSERT INTO `travel_location` VALUES ('1395', '103', ',2,103,1395,', '3', '赫拉德茨-克拉洛韦', 'Kralovehradecky', 'heladecikelaluowei', 'KR');
INSERT INTO `travel_location` VALUES ('1396', '103', ',2,103,1396,', '3', '卡罗维发利', 'Karlovarsky', 'kaluoweifali', 'KA');
INSERT INTO `travel_location` VALUES ('1397', '103', ',2,103,1397,', '3', '利贝雷克', 'Liberecky', 'libeileike', 'LI');
INSERT INTO `travel_location` VALUES ('1398', '103', ',2,103,1398,', '3', '摩拉维亚-西里西亚', 'Moravskoslezsky', 'molaweiyaxilixiya', 'MO');
INSERT INTO `travel_location` VALUES ('1399', '103', ',2,103,1399,', '3', '南摩拉维亚', 'Jihomoravsky', 'nanmolaweiya', 'JC');
INSERT INTO `travel_location` VALUES ('1400', '103', ',2,103,1400,', '3', '帕尔杜比采', 'Pardubicky', 'paerdubicai', 'PA');
INSERT INTO `travel_location` VALUES ('1401', '103', ',2,103,1401,', '3', '维索基纳', 'Vysocina', 'weisuojina', 'VY');
INSERT INTO `travel_location` VALUES ('1402', '103', ',2,103,1402,', '3', '乌斯季', 'Ustecky', 'wusiji', 'US');
INSERT INTO `travel_location` VALUES ('1403', '103', ',2,103,1403,', '3', '中捷克', 'Stredocesky', 'zhongjieke', 'ST');
INSERT INTO `travel_location` VALUES ('1404', '103', ',2,103,1404,', '3', '兹林', 'Zlinsky', 'zilin', 'ZL');
INSERT INTO `travel_location` VALUES ('1405', '104', ',3,104,1405,', '3', '北马塔贝莱兰', 'Matabeleland North', 'beimatabeilailan', 'MN');
INSERT INTO `travel_location` VALUES ('1406', '104', ',3,104,1406,', '3', '布拉瓦约', 'Bulawayo', 'bulawayue', 'BU');
INSERT INTO `travel_location` VALUES ('1407', '104', ',3,104,1407,', '3', '东马绍纳兰', 'Mashonaland East', 'dongmashaonalan', 'ME');
INSERT INTO `travel_location` VALUES ('1408', '104', ',3,104,1408,', '3', '哈拉雷', 'Harare', 'halalei', 'HA');
INSERT INTO `travel_location` VALUES ('1409', '104', ',3,104,1409,', '3', '马尼卡兰', 'Manicaland', 'manikalan', 'ML');
INSERT INTO `travel_location` VALUES ('1410', '104', ',3,104,1410,', '3', '马斯温戈', 'Masvingo', 'masiwenge', 'MV');
INSERT INTO `travel_location` VALUES ('1411', '104', ',3,104,1411,', '3', '南马塔贝莱兰', 'Matabeleland South', 'nanmatabeilailan', 'MS');
INSERT INTO `travel_location` VALUES ('1412', '104', ',3,104,1412,', '3', '西马绍纳兰', 'Mashonaland West', 'ximashaonalan', 'MW');
INSERT INTO `travel_location` VALUES ('1413', '104', ',3,104,1413,', '3', '中部', 'Midlands', 'zhongbu', 'MD');
INSERT INTO `travel_location` VALUES ('1414', '104', ',3,104,1414,', '3', '中马绍纳兰', 'Mashonaland Central', 'zhongmashaonalan', 'MC');
INSERT INTO `travel_location` VALUES ('1415', '105', ',3,105,1415,', '3', '阿达马瓦', 'Adamaoua', 'adamawa', 'ADA');
INSERT INTO `travel_location` VALUES ('1416', '105', ',3,105,1416,', '3', '北部', 'Nord', 'beibu', 'NOR');
INSERT INTO `travel_location` VALUES ('1417', '105', ',3,105,1417,', '3', '北端', 'Extreme-Nord', 'beiduan', 'EXN');
INSERT INTO `travel_location` VALUES ('1418', '105', ',3,105,1418,', '3', '滨海', 'Littoral', 'binhai', 'LIT');
INSERT INTO `travel_location` VALUES ('1419', '105', ',3,105,1419,', '3', '东部', 'Est', 'dongbu', 'EST');
INSERT INTO `travel_location` VALUES ('1420', '105', ',3,105,1420,', '3', '南部', 'Sud', 'nanbu', 'SUD');
INSERT INTO `travel_location` VALUES ('1421', '105', ',3,105,1421,', '3', '西北', 'Nord-Oueste', 'xibei', 'NOT');
INSERT INTO `travel_location` VALUES ('1422', '105', ',3,105,1422,', '3', '西部', 'Ouest', 'xibu', 'OUE');
INSERT INTO `travel_location` VALUES ('1423', '105', ',3,105,1423,', '3', '西南', 'Sud-Oueste', 'xinan', 'SOU');
INSERT INTO `travel_location` VALUES ('1424', '105', ',3,105,1424,', '3', '中央', 'Centre', 'zhongyang', 'CEN');
INSERT INTO `travel_location` VALUES ('1425', '106', ',1,106,1425,', '3', '北部', 'Madinat ach Shamal', 'beibu', 'MS');
INSERT INTO `travel_location` VALUES ('1426', '106', ',1,106,1426,', '3', '多哈', 'Ad Dawhah', 'duoha', 'DW');
INSERT INTO `travel_location` VALUES ('1427', '106', ',1,106,1427,', '3', '古韦里耶', 'Al Ghuwariyah', 'guweiliye', 'GW');
INSERT INTO `travel_location` VALUES ('1428', '106', ',1,106,1428,', '3', '豪尔', 'Al Khawr', 'haoer', 'KR');
INSERT INTO `travel_location` VALUES ('1429', '106', ',1,106,1429,', '3', '杰里扬拜特奈', 'Jariyan al Batnah', 'jieliyangbaitenai', 'JB');
INSERT INTO `travel_location` VALUES ('1430', '106', ',1,106,1430,', '3', '赖扬', 'Ar Rayyan', 'laiyang', 'RN');
INSERT INTO `travel_location` VALUES ('1431', '106', ',1,106,1431,', '3', '沃克拉', 'Al Wakrah', 'wokela', 'WK');
INSERT INTO `travel_location` VALUES ('1432', '106', ',1,106,1432,', '3', '乌姆锡拉勒', 'Umm Salal', 'wumuxilale', 'UL');
INSERT INTO `travel_location` VALUES ('1433', '106', ',1,106,1433,', '3', '朱迈利耶', 'Al Jumaliyah', 'zhumailiye', 'JM');
INSERT INTO `travel_location` VALUES ('1434', '110', ',3,110,1434,', '3', '阿涅比', 'Agnebi', 'aniebi', 'AG');
INSERT INTO `travel_location` VALUES ('1435', '110', ',3,110,1435,', '3', '巴芬', 'Bafing', 'bafen', 'BF');
INSERT INTO `travel_location` VALUES ('1436', '110', ',3,110,1436,', '3', '邦达马河谷', 'Vallee du Bandama', 'bangdamahegu', 'VB');
INSERT INTO `travel_location` VALUES ('1437', '110', ',3,110,1437,', '3', '登盖莱', 'Denguele', 'denggailai', 'DE');
INSERT INTO `travel_location` VALUES ('1438', '110', ',3,110,1438,', '3', '恩济－科莫埃', 'Nzi-Comoe', 'enjikemoai', 'NC');
INSERT INTO `travel_location` VALUES ('1439', '110', ',3,110,1439,', '3', '弗罗马格尔', 'Fromager', 'fuluomageer', 'FR');
INSERT INTO `travel_location` VALUES ('1440', '110', ',3,110,1440,', '3', '湖泊', 'Lacs', 'hubo', 'LC');
INSERT INTO `travel_location` VALUES ('1441', '110', ',3,110,1441,', '3', '马拉韦', 'Marahoue', 'malawei', 'MR');
INSERT INTO `travel_location` VALUES ('1442', '110', ',3,110,1442,', '3', '南邦达马', 'Sud-Bandama', 'nanbangdama', 'SB');
INSERT INTO `travel_location` VALUES ('1443', '110', ',3,110,1443,', '3', '南科莫埃', 'Sud-Comoe', 'nankemoai', 'SC');
INSERT INTO `travel_location` VALUES ('1444', '110', ',3,110,1444,', '3', '萨桑德拉', 'Haut-Sassandra', 'sasangdela', 'HT');
INSERT INTO `travel_location` VALUES ('1445', '110', ',3,110,1445,', '3', '萨瓦纳', 'Savanes', 'sawana', 'SV');
INSERT INTO `travel_location` VALUES ('1446', '110', ',3,110,1446,', '3', '山地', 'Montagnes', 'shandi', 'DH');
INSERT INTO `travel_location` VALUES ('1447', '110', ',3,110,1447,', '3', '沃罗杜古', 'Worodougou', 'woluodugu', 'WR');
INSERT INTO `travel_location` VALUES ('1448', '110', ',3,110,1448,', '3', '下萨桑德拉', 'Bas-Sassandra', 'xiasasangdela', 'BS');
INSERT INTO `travel_location` VALUES ('1449', '110', ',3,110,1449,', '3', '泻湖', 'Lagunes', 'xiehu', 'LG');
INSERT INTO `travel_location` VALUES ('1450', '110', ',3,110,1450,', '3', '赞赞', 'Zanzan', 'zanzan', 'ZA');
INSERT INTO `travel_location` VALUES ('1451', '110', ',3,110,1451,', '3', '中卡瓦利', 'Moyen-Cavally', 'zhongkawali', 'MV');
INSERT INTO `travel_location` VALUES ('1452', '110', ',3,110,1452,', '3', '中科莫埃', 'Moyen-Comoe', 'zhongkemoai', 'MC');
INSERT INTO `travel_location` VALUES ('1453', '112', ',2,112,1453,', '3', '奥西耶克-巴拉尼亚', 'Osjecko-Baranjska', 'aoxiyekebalaniya', '14');
INSERT INTO `travel_location` VALUES ('1454', '112', ',2,112,1454,', '3', '别洛瓦尔-比洛戈拉', 'Bjelovarsko-Bilogorska', 'bieluowaerbiluogela', '7');
INSERT INTO `travel_location` VALUES ('1455', '112', ',2,112,1455,', '3', '滨海和山区', 'Primorsko-Goranska', 'binhaiheshanqu', '8');
INSERT INTO `travel_location` VALUES ('1456', '112', ',2,112,1456,', '3', '波热加-斯拉沃尼亚', 'Pozega-Slavonia', 'borejiasilawoniya', '11');
INSERT INTO `travel_location` VALUES ('1457', '112', ',2,112,1457,', '3', '布罗德-波萨维纳', 'Brodsko-Posavska', 'buluodebosaweina', '12');
INSERT INTO `travel_location` VALUES ('1458', '112', ',2,112,1458,', '3', '杜布罗夫斯克-内雷特瓦', 'Dubrovacko-Neretvanska', 'dubuluofusikeneileitewa', '19');
INSERT INTO `travel_location` VALUES ('1459', '112', ',2,112,1459,', '3', '卡尔洛瓦茨', 'Karlovacka', 'kaerluowaci', '4');
INSERT INTO `travel_location` VALUES ('1460', '112', ',2,112,1460,', '3', '科普里夫尼察-克里热夫齐', 'Koprivnicko-Krizevacka', 'kepulifunichakelirefuqi', '6');
INSERT INTO `travel_location` VALUES ('1461', '112', ',2,112,1461,', '3', '克拉皮纳-扎戈列', 'Krapinsko-Zagorska', 'kelapinazhagelie', '2');
INSERT INTO `travel_location` VALUES ('1462', '112', ',2,112,1462,', '3', '利卡-塞尼', 'Licko-Senjska', 'likasaini', '9');
INSERT INTO `travel_location` VALUES ('1463', '112', ',2,112,1463,', '3', '梅吉穆列', 'Medimurska', 'meijimulie', '20');
INSERT INTO `travel_location` VALUES ('1464', '112', ',2,112,1464,', '3', '萨格勒布', 'Zagrebacka', 'sagelebu', '1');
INSERT INTO `travel_location` VALUES ('1465', '112', ',2,112,1465,', '3', '萨格勒布市', 'Grad Zagreb', 'sagelebushi', '21');
INSERT INTO `travel_location` VALUES ('1466', '112', ',2,112,1466,', '3', '斯普利特-达尔马提亚', 'Splitsko-Dalmatinska', 'sipulitedaermatiya', '17');
INSERT INTO `travel_location` VALUES ('1467', '112', ',2,112,1467,', '3', '瓦拉日丁', 'Varazdinska', 'walariding', '5');
INSERT INTO `travel_location` VALUES ('1468', '112', ',2,112,1468,', '3', '维罗维蒂察-波德拉维纳', 'Viroviticko-Podravska', 'weiluoweidichabodelaweina', '10');
INSERT INTO `travel_location` VALUES ('1469', '112', ',2,112,1469,', '3', '武科瓦尔-斯里耶姆', 'Vukovarsko-Srijemska', 'wukewaersiliyemu', '16');
INSERT INTO `travel_location` VALUES ('1470', '112', ',2,112,1470,', '3', '希贝尼克-克宁', 'Sibensko-Kninska', 'xibeinikekening', '15');
INSERT INTO `travel_location` VALUES ('1471', '112', ',2,112,1471,', '3', '锡萨克-莫斯拉维纳', 'Sisacko-Moslavacka', 'xisakemosilaweina', '3');
INSERT INTO `travel_location` VALUES ('1472', '112', ',2,112,1472,', '3', '伊斯特拉', 'Istarska', 'yisitela', '18');
INSERT INTO `travel_location` VALUES ('1473', '112', ',2,112,1473,', '3', '扎达尔', 'Zadarska', 'zhadaer', '13');
INSERT INTO `travel_location` VALUES ('1474', '113', ',3,113,1474,', '3', '埃尔格约-马拉奎特', 'Elgeyo-Marakwet', 'aiergeyuemalakuite', 'EMA');
INSERT INTO `travel_location` VALUES ('1475', '113', ',3,113,1475,', '3', '巴林戈', 'Baringo', 'balinge', 'BAR');
INSERT INTO `travel_location` VALUES ('1476', '113', ',3,113,1476,', '3', '邦戈马', 'Bungoma', 'banggema', 'BUN');
INSERT INTO `travel_location` VALUES ('1477', '113', ',3,113,1477,', '3', '博美特', 'Bomet', 'bomeite', 'BOM');
INSERT INTO `travel_location` VALUES ('1478', '113', ',3,113,1478,', '3', '布希亚', 'Busia', 'buxiya', 'BUS');
INSERT INTO `travel_location` VALUES ('1479', '113', ',3,113,1479,', '3', '恩布', 'Embu', 'enbu', 'EMB');
INSERT INTO `travel_location` VALUES ('1480', '113', ',3,113,1480,', '3', '霍马湾', 'Homa Bay', 'huomawan', 'HOB');
INSERT INTO `travel_location` VALUES ('1481', '113', ',3,113,1481,', '3', '基安布', 'Kiambu', 'jianbu', 'KIA');
INSERT INTO `travel_location` VALUES ('1482', '113', ',3,113,1482,', '3', '基里菲', 'Kilifi', 'jilifei', 'KIL');
INSERT INTO `travel_location` VALUES ('1483', '113', ',3,113,1483,', '3', '基里尼亚加', 'Kirinyaga', 'jiliniyajia', 'KIR');
INSERT INTO `travel_location` VALUES ('1484', '113', ',3,113,1484,', '3', '基苏木', 'Kisumu', 'jisumu', 'KIS');
INSERT INTO `travel_location` VALUES ('1485', '113', ',3,113,1485,', '3', '基图伊', 'Kitui', 'jituyi', 'KIT');
INSERT INTO `travel_location` VALUES ('1486', '113', ',3,113,1486,', '3', '基西', 'Kisii', 'jixi', 'KII');
INSERT INTO `travel_location` VALUES ('1487', '113', ',3,113,1487,', '3', '加里萨', 'Garissa', 'jialisa', 'GAS');
INSERT INTO `travel_location` VALUES ('1488', '113', ',3,113,1488,', '3', '卡卡梅加', 'Kakamega', 'kakameijia', 'KAK');
INSERT INTO `travel_location` VALUES ('1489', '113', ',3,113,1489,', '3', '卡耶亚多', 'Kajiado', 'kayeyaduo', 'KAJ');
INSERT INTO `travel_location` VALUES ('1490', '113', ',3,113,1490,', '3', '凯里乔', 'Kericho', 'kailiqiao', 'KEY');
INSERT INTO `travel_location` VALUES ('1491', '113', ',3,113,1491,', '3', '夸勒', 'Kwale', 'kuale', 'KWA');
INSERT INTO `travel_location` VALUES ('1492', '113', ',3,113,1492,', '3', '拉木', 'Lamu', 'lamu', 'LAU');
INSERT INTO `travel_location` VALUES ('1493', '113', ',3,113,1493,', '3', '莱基皮亚', 'Laikipia', 'laijipiya', 'LAI');
INSERT INTO `travel_location` VALUES ('1494', '113', ',3,113,1494,', '3', '马查科斯', 'Machakos', 'machakesi', 'MAC');
INSERT INTO `travel_location` VALUES ('1495', '113', ',3,113,1495,', '3', '马瓜尼', 'Makueni', 'maguani', 'MAK');
INSERT INTO `travel_location` VALUES ('1496', '113', ',3,113,1496,', '3', '马萨布布', 'Marsabit', 'masabubu', 'RBT');
INSERT INTO `travel_location` VALUES ('1497', '113', ',3,113,1497,', '3', '曼德拉', 'Mandera', 'mandela', 'MAN');
INSERT INTO `travel_location` VALUES ('1498', '113', ',3,113,1498,', '3', '梅鲁', 'Meru', 'meilu', 'MER');
INSERT INTO `travel_location` VALUES ('1499', '113', ',3,113,1499,', '3', '蒙巴萨', 'Mombasa', 'mengbasa', 'MOM');
INSERT INTO `travel_location` VALUES ('1500', '113', ',3,113,1500,', '3', '米戈利', 'Migori', 'migeli', 'MIG');
INSERT INTO `travel_location` VALUES ('1501', '113', ',3,113,1501,', '3', '穆兰卡', 'Muranga', 'mulanka', 'MUR');
INSERT INTO `travel_location` VALUES ('1502', '113', ',3,113,1502,', '3', '纳库鲁', 'Nakuru', 'nakulu', 'NUU');
INSERT INTO `travel_location` VALUES ('1503', '113', ',3,113,1503,', '3', '纳罗克', 'Narok', 'naluoke', 'NAR');
INSERT INTO `travel_location` VALUES ('1504', '113', ',3,113,1504,', '3', '南迪', 'Nandi', 'nandi', 'NAN');
INSERT INTO `travel_location` VALUES ('1505', '113', ',3,113,1505,', '3', '内罗毕', 'Nairobi', 'neiluobi', 'NA');
INSERT INTO `travel_location` VALUES ('1506', '113', ',3,113,1506,', '3', '尼蒂', 'Nithi', 'nidi', 'NIT');
INSERT INTO `travel_location` VALUES ('1507', '113', ',3,113,1507,', '3', '尼亚米拉', 'Nyamira', 'niyamila', 'NYM');
INSERT INTO `travel_location` VALUES ('1508', '113', ',3,113,1508,', '3', '年达鲁阿', 'Nyandarua', 'niandalua', 'NYN');
INSERT INTO `travel_location` VALUES ('1509', '113', ',3,113,1509,', '3', '涅里', 'Nyeri', 'nieli', 'NYE');
INSERT INTO `travel_location` VALUES ('1510', '113', ',3,113,1510,', '3', '桑布卢', 'Samburu', 'sangbulu', 'UAS');
INSERT INTO `travel_location` VALUES ('1511', '113', ',3,113,1511,', '3', '塔纳河', 'Tana River', 'tanahe', 'TRI');
INSERT INTO `travel_location` VALUES ('1512', '113', ',3,113,1512,', '3', '泰塔塔维塔', 'Taita-Taveta', 'taitataweita', 'TTA');
INSERT INTO `travel_location` VALUES ('1513', '113', ',3,113,1513,', '3', '特兰斯-恩佐亚', 'Trans-Nzoia', 'telansienzuoya', 'TNZ');
INSERT INTO `travel_location` VALUES ('1514', '113', ',3,113,1514,', '3', '图尔卡纳', 'Turkana', 'tuerkana', 'TUR');
INSERT INTO `travel_location` VALUES ('1515', '113', ',3,113,1515,', '3', '瓦吉尔', 'Wajir', 'wajier', 'WJR');
INSERT INTO `travel_location` VALUES ('1516', '113', ',3,113,1516,', '3', '瓦辛基苏', 'Uasin Gishu', 'waxinjisu', 'UGI');
INSERT INTO `travel_location` VALUES ('1517', '113', ',3,113,1517,', '3', '韦希加', 'Vihiga', 'weixijia', 'VIH');
INSERT INTO `travel_location` VALUES ('1518', '113', ',3,113,1518,', '3', '西波克特', 'West Pokot', 'xibokete', 'WPO');
INSERT INTO `travel_location` VALUES ('1519', '113', ',3,113,1519,', '3', '夏亚', 'Siaya', 'xiaya', 'SIA');
INSERT INTO `travel_location` VALUES ('1520', '113', ',3,113,1520,', '3', '伊希约洛', 'Isiolo', 'yixiyueluo', 'ISI');
INSERT INTO `travel_location` VALUES ('1521', '113', ',3,113,1521,', '3', '中央', 'Central', 'zhongyang', 'CE');
INSERT INTO `travel_location` VALUES ('1522', '115', ',2,115,1522,', '3', '阿卢克斯内', 'Aluksnes', 'alukesinei', 'ALU');
INSERT INTO `travel_location` VALUES ('1523', '115', ',2,115,1523,', '3', '爱兹克劳克雷', 'Aizkraukles', 'aizikelaokelei', 'AIZ');
INSERT INTO `travel_location` VALUES ('1524', '115', ',2,115,1524,', '3', '奥格雷', 'Ogres', 'aogelei', 'OGR');
INSERT INTO `travel_location` VALUES ('1525', '115', ',2,115,1525,', '3', '巴尔维', 'Balvu', 'baerwei', 'BAL');
INSERT INTO `travel_location` VALUES ('1526', '115', ',2,115,1526,', '3', '包斯卡', 'Bauskas', 'baosika', 'BAU');
INSERT INTO `travel_location` VALUES ('1527', '115', ',2,115,1527,', '3', '采西斯', 'Cesu', 'caixisi', 'CES');
INSERT INTO `travel_location` VALUES ('1528', '115', ',2,115,1528,', '3', '多贝莱', 'Dobeles', 'duobeilai', 'DOB');
INSERT INTO `travel_location` VALUES ('1529', '115', ',2,115,1529,', '3', '古尔贝内', 'Gulbenes', 'guerbeinei', 'GUL');
INSERT INTO `travel_location` VALUES ('1530', '115', ',2,115,1530,', '3', '杰卡布皮尔斯', 'Jekabpils', 'jiekabupiersi', 'JEK');
INSERT INTO `travel_location` VALUES ('1531', '115', ',2,115,1531,', '3', '克拉斯拉瓦', 'Kraslavas', 'kelasilawa', 'KRA');
INSERT INTO `travel_location` VALUES ('1532', '115', ',2,115,1532,', '3', '库尔迪加', 'Kuldigas', 'kuerdijia', 'KUL');
INSERT INTO `travel_location` VALUES ('1533', '115', ',2,115,1533,', '3', '雷泽克内', 'Rezeknes', 'leizekenei', 'RZR');
INSERT INTO `travel_location` VALUES ('1534', '115', ',2,115,1534,', '3', '里加', 'Rigas', 'lijia', 'RGA');
INSERT INTO `travel_location` VALUES ('1535', '115', ',2,115,1535,', '3', '利耶帕亚', 'Liepajas', 'liyepaya', 'LPK');
INSERT INTO `travel_location` VALUES ('1536', '115', ',2,115,1536,', '3', '林巴济', 'Limbazu', 'linbaji', 'LIM');
INSERT INTO `travel_location` VALUES ('1537', '115', ',2,115,1537,', '3', '卢扎', 'Ludzas', 'luzha', 'LUD');
INSERT INTO `travel_location` VALUES ('1538', '115', ',2,115,1538,', '3', '马多纳', 'Madonas', 'maduona', 'MAD');
INSERT INTO `travel_location` VALUES ('1539', '115', ',2,115,1539,', '3', '普雷利', 'Preilu', 'puleili', 'PRE');
INSERT INTO `travel_location` VALUES ('1540', '115', ',2,115,1540,', '3', '萨尔杜斯', 'Saldus', 'saerdusi', 'SAL');
INSERT INTO `travel_location` VALUES ('1541', '115', ',2,115,1541,', '3', '塔尔西', 'Talsu', 'taerxi', 'TAL');
INSERT INTO `travel_location` VALUES ('1542', '115', ',2,115,1542,', '3', '陶格夫皮尔斯', 'Daugavpils', 'taogefupiersi', 'DGR');
INSERT INTO `travel_location` VALUES ('1543', '115', ',2,115,1543,', '3', '图库马', 'Tukuma', 'tukuma', 'TUK');
INSERT INTO `travel_location` VALUES ('1544', '115', ',2,115,1544,', '3', '瓦尔加', 'Valkas', 'waerjia', 'VLK');
INSERT INTO `travel_location` VALUES ('1545', '115', ',2,115,1545,', '3', '瓦尔米耶拉', 'Valmieras', 'waermiyela', 'VLM');
INSERT INTO `travel_location` VALUES ('1546', '115', ',2,115,1546,', '3', '文茨皮尔斯', 'Ventspils', 'wencipiersi', 'VSL');
INSERT INTO `travel_location` VALUES ('1547', '115', ',2,115,1547,', '3', '叶尔加瓦', 'Jelgavas', 'yeerjiawa', 'JGR');
INSERT INTO `travel_location` VALUES ('1548', '116', ',3,116,1548,', '3', '伯里亚', 'Berea', 'boliya', 'D');
INSERT INTO `travel_location` VALUES ('1549', '116', ',3,116,1549,', '3', '布塔布泰', 'Butha-Buthe', 'butabutai', 'B');
INSERT INTO `travel_location` VALUES ('1550', '116', ',3,116,1550,', '3', '古廷', 'Quthing', 'guting', 'G');
INSERT INTO `travel_location` VALUES ('1551', '116', ',3,116,1551,', '3', '加查斯内克', 'Qachas Nek', 'jiachasineike', 'H');
INSERT INTO `travel_location` VALUES ('1552', '116', ',3,116,1552,', '3', '莱里贝', 'Leribe', 'lailibei', 'C');
INSERT INTO `travel_location` VALUES ('1553', '116', ',3,116,1553,', '3', '马费滕', 'Mafeteng', 'mafei', 'E');
INSERT INTO `travel_location` VALUES ('1554', '116', ',3,116,1554,', '3', '马塞卢', 'Maseru', 'masailu', 'A');
INSERT INTO `travel_location` VALUES ('1555', '116', ',3,116,1555,', '3', '莫哈莱斯胡克', 'Mohales Hoek', 'mohalaisihuke', 'F');
INSERT INTO `travel_location` VALUES ('1556', '116', ',3,116,1556,', '3', '莫霍特隆', 'Mokhotlong', 'mohuotelong', 'J');
INSERT INTO `travel_location` VALUES ('1557', '116', ',3,116,1557,', '3', '塔巴采卡', 'Thaba-Tseka', 'tabacaika', 'K');
INSERT INTO `travel_location` VALUES ('1558', '117', ',1,117,1558,', '3', '阿速坡', 'Attapu', 'asupo', 'AT');
INSERT INTO `travel_location` VALUES ('1559', '117', ',1,117,1559,', '3', '波里坎赛', 'Bolikhamxai', 'bolikansai', 'BL');
INSERT INTO `travel_location` VALUES ('1560', '117', ',1,117,1560,', '3', '博乔', 'Bokeo', 'boqiao', 'BK');
INSERT INTO `travel_location` VALUES ('1561', '117', ',1,117,1561,', '3', '川圹', 'Xiangkhoang', 'chuan', 'XI');
INSERT INTO `travel_location` VALUES ('1562', '117', ',1,117,1562,', '3', '丰沙里', 'Phongsali', 'fengshali', 'PH');
INSERT INTO `travel_location` VALUES ('1563', '117', ',1,117,1563,', '3', '甘蒙', 'Khammouan', 'ganmeng', 'KH');
INSERT INTO `travel_location` VALUES ('1564', '117', ',1,117,1564,', '3', '华潘', 'Houaphan', 'huapan', 'HO');
INSERT INTO `travel_location` VALUES ('1565', '117', ',1,117,1565,', '3', '琅勃拉邦', 'Louangphrabang', 'langbolabang', 'LP');
INSERT INTO `travel_location` VALUES ('1566', '117', ',1,117,1566,', '3', '琅南塔', 'Louang Namtha', 'langnanta', 'LM');
INSERT INTO `travel_location` VALUES ('1567', '117', ',1,117,1567,', '3', '赛宋本行政特区', 'Xaisomboun', 'saisongbenxingzhengtequ', 'XN');
INSERT INTO `travel_location` VALUES ('1568', '117', ',1,117,1568,', '3', '色贡', 'Xekong', 'segong', 'XE');
INSERT INTO `travel_location` VALUES ('1569', '117', ',1,117,1569,', '3', '沙拉湾', 'Saravan', 'shalawan', 'SL');
INSERT INTO `travel_location` VALUES ('1570', '117', ',1,117,1570,', '3', '沙湾拿吉', 'Savannakhet', 'shawannaji', 'SV');
INSERT INTO `travel_location` VALUES ('1571', '117', ',1,117,1571,', '3', '沙耶武里', 'Xaignabouri', 'shayewuli', 'XA');
INSERT INTO `travel_location` VALUES ('1572', '117', ',1,117,1572,', '3', '万象', 'Vientiane', 'wanxiang', 'VI');
INSERT INTO `travel_location` VALUES ('1573', '117', ',1,117,1573,', '3', '乌多姆赛', 'Oudomxai', 'wuduomusai', 'OU');
INSERT INTO `travel_location` VALUES ('1574', '117', ',1,117,1574,', '3', '占巴塞', 'Champasak', 'zhanbasai', 'CH');
INSERT INTO `travel_location` VALUES ('1575', '118', ',1,118,1575,', '3', '北部', 'Ash-Shamal', 'beibu', 'AS');
INSERT INTO `travel_location` VALUES ('1576', '118', ',1,118,1576,', '3', '贝卡', 'Al-Biqa', 'beika', 'BI');
INSERT INTO `travel_location` VALUES ('1577', '118', ',1,118,1577,', '3', '贝鲁特', 'Bayrut', 'beilute', 'BA');
INSERT INTO `travel_location` VALUES ('1578', '118', ',1,118,1578,', '3', '黎巴嫩山', 'Jabal Lubnan', 'libanenshan', 'JL');
INSERT INTO `travel_location` VALUES ('1579', '118', ',1,118,1579,', '3', '奈拜提耶市', 'An-Nabatiyah', 'naibaitiyeshi', 'NA');
INSERT INTO `travel_location` VALUES ('1580', '118', ',1,118,1580,', '3', '南部', 'Al-Janub', 'nanbu', 'JA');
INSERT INTO `travel_location` VALUES ('1581', '119', ',3,119,1581,', '3', '巴波卢', 'Gbarpolu', 'babolu', 'GBA');
INSERT INTO `travel_location` VALUES ('1582', '119', ',3,119,1582,', '3', '邦', 'Bong', 'bang', 'BG');
INSERT INTO `travel_location` VALUES ('1583', '119', ',3,119,1583,', '3', '博波卢', 'Bopolu', 'bobolu', 'BOP');
INSERT INTO `travel_location` VALUES ('1584', '119', ',3,119,1584,', '3', '博米', 'Bomi', 'bomi', 'BM');
INSERT INTO `travel_location` VALUES ('1585', '119', ',3,119,1585,', '3', '大巴萨', 'Grand Bassa', 'dabasa', 'GB');
INSERT INTO `travel_location` VALUES ('1586', '119', ',3,119,1586,', '3', '大吉德', 'Grand Gedeh', 'dajide', 'GG');
INSERT INTO `travel_location` VALUES ('1587', '119', ',3,119,1587,', '3', '大角山', 'Grand Cape Mount', 'dajiaoshan', 'CM');
INSERT INTO `travel_location` VALUES ('1588', '119', ',3,119,1588,', '3', '大克鲁', 'Grand Kru', 'dakelu', 'GK');
INSERT INTO `travel_location` VALUES ('1589', '119', ',3,119,1589,', '3', '菲什敦', 'Fish Town', 'feishidun', 'FT');
INSERT INTO `travel_location` VALUES ('1590', '119', ',3,119,1590,', '3', '吉河', 'River Gee', 'jihe', 'RG');
INSERT INTO `travel_location` VALUES ('1591', '119', ',3,119,1591,', '3', '里弗塞斯', 'River Cess', 'lifusaisi', 'RI');
INSERT INTO `travel_location` VALUES ('1592', '119', ',3,119,1592,', '3', '洛法', 'Lofa', 'luofa', 'LO');
INSERT INTO `travel_location` VALUES ('1593', '119', ',3,119,1593,', '3', '马吉比', 'Margibi', 'majibi', 'MG');
INSERT INTO `travel_location` VALUES ('1594', '119', ',3,119,1594,', '3', '马里兰', 'Maryland', 'malilan', 'MY');
INSERT INTO `travel_location` VALUES ('1595', '119', ',3,119,1595,', '3', '蒙特塞拉多', 'Montserrado', 'mengtesailaduo', 'MO');
INSERT INTO `travel_location` VALUES ('1596', '119', ',3,119,1596,', '3', '宁巴', 'Nimba', 'ningba', 'NI');
INSERT INTO `travel_location` VALUES ('1597', '119', ',3,119,1597,', '3', '锡诺', 'Sinoe', 'xinuo', 'SI');
INSERT INTO `travel_location` VALUES ('1598', '121', ',2,121,1598,', '3', '阿利图斯', 'Alytus', 'alitusi', 'AL');
INSERT INTO `travel_location` VALUES ('1599', '121', ',2,121,1599,', '3', '考纳斯', 'Kaunas', 'kaonasi', 'KA');
INSERT INTO `travel_location` VALUES ('1600', '121', ',2,121,1600,', '3', '克莱佩达', 'Klaipeda', 'kelaipeida', 'KL');
INSERT INTO `travel_location` VALUES ('1601', '121', ',2,121,1601,', '3', '马里扬泊列', 'Marijampole', 'maliyangbolie', 'MA');
INSERT INTO `travel_location` VALUES ('1602', '121', ',2,121,1602,', '3', '帕涅韦日斯', 'Panevezys', 'panieweirisi', 'PA');
INSERT INTO `travel_location` VALUES ('1603', '121', ',2,121,1603,', '3', '陶拉格', 'Taurages', 'taolage', 'TA');
INSERT INTO `travel_location` VALUES ('1604', '121', ',2,121,1604,', '3', '特尔希艾', 'Telsiu', 'teerxiai', 'TE');
INSERT INTO `travel_location` VALUES ('1605', '121', ',2,121,1605,', '3', '维尔纽斯', 'Vilnius', 'weierniusi', 'VI');
INSERT INTO `travel_location` VALUES ('1606', '121', ',2,121,1606,', '3', '乌田纳', 'Utenos', 'wutianna', 'UT');
INSERT INTO `travel_location` VALUES ('1607', '121', ',2,121,1607,', '3', '希奥利艾', 'Siauliai', 'xiaoliai', 'SI');
INSERT INTO `travel_location` VALUES ('1608', '121', ',2,121,1608,', '3', '亚克曼', 'Akmenes', 'yakeman', 'AKM');
INSERT INTO `travel_location` VALUES ('1609', '124', ',2,124,1609,', '3', '迪基希', 'Diekirch', 'dijixi', 'DD');
INSERT INTO `travel_location` VALUES ('1610', '124', ',2,124,1610,', '3', '格雷文马赫', 'Grevenmacher', 'geleiwenmahe', 'GG');
INSERT INTO `travel_location` VALUES ('1611', '124', ',2,124,1611,', '3', '卢森堡', 'Luxembourg', 'lusenbao', 'LL');
INSERT INTO `travel_location` VALUES ('1612', '125', ',3,125,1612,', '3', '比温巴', 'Byumba', 'biwenba', 'BY');
INSERT INTO `travel_location` VALUES ('1613', '125', ',3,125,1613,', '3', '布塔雷', 'Butare', 'butalei', 'BU');
INSERT INTO `travel_location` VALUES ('1614', '125', ',3,125,1614,', '3', '恩延扎', 'Nyanza', 'enyanzha', 'NY');
INSERT INTO `travel_location` VALUES ('1615', '125', ',3,125,1615,', '3', '基本古', 'Kibungo', 'jibengu', 'KG');
INSERT INTO `travel_location` VALUES ('1616', '125', ',3,125,1616,', '3', '基布耶', 'Kibuye', 'jibuye', 'KY');
INSERT INTO `travel_location` VALUES ('1617', '125', ',3,125,1617,', '3', '基加利-恩加利', 'Kigali-Ngali', 'jijialienjiali', 'KR');
INSERT INTO `travel_location` VALUES ('1618', '125', ',3,125,1618,', '3', '基加利市', 'Kigali-Ville', 'jijialishi', 'KV');
INSERT INTO `travel_location` VALUES ('1619', '125', ',3,125,1619,', '3', '吉孔戈罗', 'Gikongoro', 'jikonggeluo', 'GK');
INSERT INTO `travel_location` VALUES ('1620', '125', ',3,125,1620,', '3', '吉塞尼', 'Gisenyi', 'jisaini', 'GS');
INSERT INTO `travel_location` VALUES ('1621', '125', ',3,125,1621,', '3', '吉塔拉马', 'Gitarama', 'jitalama', 'GT');
INSERT INTO `travel_location` VALUES ('1622', '125', ',3,125,1622,', '3', '卡布加', 'Kabuga', 'kabujia', 'KA');
INSERT INTO `travel_location` VALUES ('1623', '125', ',3,125,1623,', '3', '卢瓦马加纳', 'Rwamagana', 'luwamajiana', 'RW');
INSERT INTO `travel_location` VALUES ('1624', '125', ',3,125,1624,', '3', '鲁汉戈', 'Ruhango', 'luhange', 'RH');
INSERT INTO `travel_location` VALUES ('1625', '125', ',3,125,1625,', '3', '鲁亨盖里', 'Ruhengeri', 'luhenggaili', 'RU');
INSERT INTO `travel_location` VALUES ('1626', '125', ',3,125,1626,', '3', '尚古古', 'Cyangugu', 'shanggugu', 'CY');
INSERT INTO `travel_location` VALUES ('1627', '125', ',3,125,1627,', '3', '乌姆塔拉', 'Umutara', 'wumutala', 'UM');
INSERT INTO `travel_location` VALUES ('1628', '126', ',2,126,1628,', '3', '阿尔巴尤利亚', 'Alba Iulia', 'aerbayouliya', 'AL');
INSERT INTO `travel_location` VALUES ('1629', '126', ',2,126,1629,', '3', '阿拉德', 'Arad', 'alade', 'AR');
INSERT INTO `travel_location` VALUES ('1630', '126', ',2,126,1630,', '3', '奥拉迪亚', 'Oradea', 'aoladiya', 'OR');
INSERT INTO `travel_location` VALUES ('1631', '126', ',2,126,1631,', '3', '巴克乌', 'Bacau', 'bakewu', 'BA');
INSERT INTO `travel_location` VALUES ('1632', '126', ',2,126,1632,', '3', '巴亚马雷', 'Baia Mare', 'bayamalei', 'BM');
INSERT INTO `travel_location` VALUES ('1633', '126', ',2,126,1633,', '3', '比斯特里察', 'Bistrita', 'bisitelicha', 'BN');
INSERT INTO `travel_location` VALUES ('1634', '126', ',2,126,1634,', '3', '博托沙尼', 'Botosani', 'botuoshani', 'BO');
INSERT INTO `travel_location` VALUES ('1635', '126', ',2,126,1635,', '3', '布加勒斯特', 'Bucuresti', 'bujialesite', 'BC');
INSERT INTO `travel_location` VALUES ('1636', '126', ',2,126,1636,', '3', '布拉索夫', 'Brasov', 'bulasuofu', 'BS');
INSERT INTO `travel_location` VALUES ('1637', '126', ',2,126,1637,', '3', '布勒伊拉', 'Braila', 'buleyila', 'BL');
INSERT INTO `travel_location` VALUES ('1638', '126', ',2,126,1638,', '3', '布泽乌', 'Buzau', 'buzewu', 'BZ');
INSERT INTO `travel_location` VALUES ('1639', '126', ',2,126,1639,', '3', '德罗贝塔-塞维林堡', 'Drobeta-Turnu Severin', 'deluobeitasaiweilinbao', 'DT');
INSERT INTO `travel_location` VALUES ('1640', '126', ',2,126,1640,', '3', '德瓦', 'Deva', 'dewa', 'DE');
INSERT INTO `travel_location` VALUES ('1641', '126', ',2,126,1641,', '3', '蒂米什瓦拉', 'Timisoara', 'dimishiwala', 'TI');
INSERT INTO `travel_location` VALUES ('1642', '126', ',2,126,1642,', '3', '福克沙尼', 'Focsani', 'fukeshani', 'FO');
INSERT INTO `travel_location` VALUES ('1643', '126', ',2,126,1643,', '3', '加拉茨', 'Galati', 'jialaci', 'GL');
INSERT INTO `travel_location` VALUES ('1644', '126', ',2,126,1644,', '3', '久尔久', 'Giurgiu', 'jiuerjiu', 'GG');
INSERT INTO `travel_location` VALUES ('1645', '126', ',2,126,1645,', '3', '康斯坦察', 'Constanta', 'kangsitancha', 'CT');
INSERT INTO `travel_location` VALUES ('1646', '126', ',2,126,1646,', '3', '克拉约瓦', 'Craiova', 'kelayuewa', 'DO');
INSERT INTO `travel_location` VALUES ('1647', '126', ',2,126,1647,', '3', '克勒拉希', 'Calarasi', 'kelelaxi', 'CR');
INSERT INTO `travel_location` VALUES ('1648', '126', ',2,126,1648,', '3', '克卢日纳波卡', 'Cluj-Napoca', 'kelurinaboka', 'CN');
INSERT INTO `travel_location` VALUES ('1649', '126', ',2,126,1649,', '3', '勒姆尼库沃尔恰', 'XRimnicu Vilcea', 'lemunikuwoerqia', 'VI');
INSERT INTO `travel_location` VALUES ('1650', '126', ',2,126,1650,', '3', '雷希察', 'Resita', 'leixicha', 'RE');
INSERT INTO `travel_location` VALUES ('1651', '126', ',2,126,1651,', '3', '梅尔库里亚丘克', 'Miercurea-Ciuc', 'meierkuliyaqiuke', 'MC');
INSERT INTO `travel_location` VALUES ('1652', '126', ',2,126,1652,', '3', '皮特什蒂', 'Pitesti', 'piteshidi', 'PI');
INSERT INTO `travel_location` VALUES ('1653', '126', ',2,126,1653,', '3', '皮亚特拉尼亚姆茨', 'Piatra Neamt', 'piyatelaniyamuci', 'PN');
INSERT INTO `travel_location` VALUES ('1654', '126', ',2,126,1654,', '3', '普洛耶什蒂', 'Ploiesti', 'puluoyeshidi', 'PL');
INSERT INTO `travel_location` VALUES ('1655', '126', ',2,126,1655,', '3', '萨图·马雷', 'Satu Mare', 'satu', 'SM');
INSERT INTO `travel_location` VALUES ('1656', '126', ',2,126,1656,', '3', '圣格奥尔基', 'Sfantu-Gheorghe', 'shenggeaoerji', 'SG');
INSERT INTO `travel_location` VALUES ('1657', '126', ',2,126,1657,', '3', '斯拉蒂纳', 'Slatina', 'siladina', 'ST');
INSERT INTO `travel_location` VALUES ('1658', '126', ',2,126,1658,', '3', '斯洛博齐亚', 'Slobozia', 'siluoboqiya', 'SB');
INSERT INTO `travel_location` VALUES ('1659', '126', ',2,126,1659,', '3', '苏恰瓦', 'Suceava', 'suqiawa', 'SU');
INSERT INTO `travel_location` VALUES ('1660', '126', ',2,126,1660,', '3', '特尔戈维什泰', 'Targovişte', 'teergeweishitai', 'TA');
INSERT INTO `travel_location` VALUES ('1661', '126', ',2,126,1661,', '3', '特尔古穆列什', 'Tirgu Mures', 'teergumulieshi', 'TM');
INSERT INTO `travel_location` VALUES ('1662', '126', ',2,126,1662,', '3', '特尔古日乌', 'Tirgu-Jiu', 'teerguriwu', 'TJ');
INSERT INTO `travel_location` VALUES ('1663', '126', ',2,126,1663,', '3', '图尔恰', 'Tulcea', 'tuerqia', 'TU');
INSERT INTO `travel_location` VALUES ('1664', '126', ',2,126,1664,', '3', '瓦斯卢伊', 'Vaslui', 'wasiluyi', 'VA');
INSERT INTO `travel_location` VALUES ('1665', '126', ',2,126,1665,', '3', '锡比乌', 'Sibiu', 'xibiwu', 'SO');
INSERT INTO `travel_location` VALUES ('1666', '126', ',2,126,1666,', '3', '雅西', 'Iasi', 'yaxi', 'IS');
INSERT INTO `travel_location` VALUES ('1667', '126', ',2,126,1667,', '3', '亚厉山德里亚', 'Alexandria', 'yalishandeliya', 'AD');
INSERT INTO `travel_location` VALUES ('1668', '126', ',2,126,1668,', '3', '扎勒乌', 'Zalau', 'zhalewu', 'ZA');
INSERT INTO `travel_location` VALUES ('1669', '127', ',3,127,1669,', '3', '安齐拉纳纳', 'Antsiranana', 'anqilanana', 'AS');
INSERT INTO `travel_location` VALUES ('1670', '127', ',3,127,1670,', '3', '菲亚纳兰楚阿', 'Fianarantsoa', 'feiyanalanchua', 'FN');
INSERT INTO `travel_location` VALUES ('1671', '127', ',3,127,1671,', '3', '马哈赞加', 'Mahajanga', 'mahazanjia', 'MJ');
INSERT INTO `travel_location` VALUES ('1672', '127', ',3,127,1672,', '3', '塔那那利佛', 'Antananarivo', 'tananalifo', 'AN');
INSERT INTO `travel_location` VALUES ('1673', '127', ',3,127,1673,', '3', '图阿马西拉', 'Toamasina', 'tuamaxila', 'TM');
INSERT INTO `travel_location` VALUES ('1674', '127', ',3,127,1674,', '3', '图利亚拉', 'Toliary', 'tuliyala', 'TL');
INSERT INTO `travel_location` VALUES ('1675', '128', ',1,128,1675,', '3', '阿杜', 'Addu Atoll', 'adu', 'ADD');
INSERT INTO `travel_location` VALUES ('1676', '128', ',1,128,1676,', '3', '北阿里', 'North Ari Atoll', 'beiali', 'AAD');
INSERT INTO `travel_location` VALUES ('1677', '128', ',1,128,1677,', '3', '北蒂拉杜马蒂', 'North Thiladhunmathi', 'beidiladumadi', 'THD');
INSERT INTO `travel_location` VALUES ('1678', '128', ',1,128,1678,', '3', '北马洛斯马杜卢', 'North Maalhosmadhulu', 'beimaluosimadulu', 'MAD');
INSERT INTO `travel_location` VALUES ('1679', '128', ',1,128,1679,', '3', '北米拉杜马杜卢', 'North Miladhunmadhulu', 'beimiladumadulu', 'MLD');
INSERT INTO `travel_location` VALUES ('1680', '128', ',1,128,1680,', '3', '北尼兰杜', 'North Nilandhe Atoll', 'beinilandu', 'NAD');
INSERT INTO `travel_location` VALUES ('1681', '128', ',1,128,1681,', '3', '北苏瓦迪瓦', 'North Huvadhu Atoll', 'beisuwadiwa', 'HAD');
INSERT INTO `travel_location` VALUES ('1682', '128', ',1,128,1682,', '3', '法迪福卢', 'Faadhippolhu', 'fadifulu', 'FAA');
INSERT INTO `travel_location` VALUES ('1683', '128', ',1,128,1683,', '3', '费利杜', 'Felidhu Atoll', 'feilidu', 'FEA');
INSERT INTO `travel_location` VALUES ('1684', '128', ',1,128,1684,', '3', '福阿穆拉库', 'Foammulah', 'fuamulaku', 'FMU');
INSERT INTO `travel_location` VALUES ('1685', '128', ',1,128,1685,', '3', '哈杜马蒂', 'Hadhdhunmathi', 'hadumadi', 'HDH');
INSERT INTO `travel_location` VALUES ('1686', '128', ',1,128,1686,', '3', '科卢马杜卢', 'Kolhumadulu', 'kelumadulu', 'KLH');
INSERT INTO `travel_location` VALUES ('1687', '128', ',1,128,1687,', '3', '马累', 'Male', 'malei', 'MAL');
INSERT INTO `travel_location` VALUES ('1688', '128', ',1,128,1688,', '3', '马累岛', 'Male Atoll', 'maleidao', 'MAA');
INSERT INTO `travel_location` VALUES ('1689', '128', ',1,128,1689,', '3', '穆拉库', 'Mulakatholhu', 'mulaku', 'MUA');
INSERT INTO `travel_location` VALUES ('1690', '128', ',1,128,1690,', '3', '南阿里', 'South Ari Atoll', 'nanali', 'AAU');
INSERT INTO `travel_location` VALUES ('1691', '128', ',1,128,1691,', '3', '南蒂拉杜马蒂', 'South Thiladhunmathi', 'nandiladumadi', 'THU');
INSERT INTO `travel_location` VALUES ('1692', '128', ',1,128,1692,', '3', '南马洛斯马杜卢', 'South Maalhosmadulu', 'nanmaluosimadulu', 'MAU');
INSERT INTO `travel_location` VALUES ('1693', '128', ',1,128,1693,', '3', '南米拉杜马杜卢', 'South Miladhunmadhulu', 'nanmiladumadulu', 'MLU');
INSERT INTO `travel_location` VALUES ('1694', '128', ',1,128,1694,', '3', '南尼兰杜', 'South Nilandhe Atoll', 'nannilandu', 'NAU');
INSERT INTO `travel_location` VALUES ('1695', '128', ',1,128,1695,', '3', '南苏瓦迪瓦', 'South Huvadhu Atoll', 'nansuwadiwa', 'HAU');
INSERT INTO `travel_location` VALUES ('1696', '130', ',3,130,1696,', '3', '北部区', 'Northern', 'beibuqu', 'N');
INSERT INTO `travel_location` VALUES ('1697', '130', ',3,130,1697,', '3', '南部区', 'Southern', 'nanbuqu', 'S');
INSERT INTO `travel_location` VALUES ('1698', '130', ',3,130,1698,', '3', '中央区', 'Central', 'zhongyangqu', 'C');
INSERT INTO `travel_location` VALUES ('1699', '132', ',3,132,1699,', '3', '巴马科首都区', 'Bamako', 'bamakeshouduqu', 'CD');
INSERT INTO `travel_location` VALUES ('1700', '132', ',3,132,1700,', '3', '基达尔', 'Kidal', 'jidaer', 'KD');
INSERT INTO `travel_location` VALUES ('1701', '132', ',3,132,1701,', '3', '加奥', 'Gao', 'jiaao', 'GA');
INSERT INTO `travel_location` VALUES ('1702', '132', ',3,132,1702,', '3', '卡伊', 'Kayes', 'kayi', 'KY');
INSERT INTO `travel_location` VALUES ('1703', '132', ',3,132,1703,', '3', '库利科罗', 'Koulikoro', 'kulikeluo', 'KL');
INSERT INTO `travel_location` VALUES ('1704', '132', ',3,132,1704,', '3', '莫普提', 'Mopti', 'moputi', 'MP');
INSERT INTO `travel_location` VALUES ('1705', '132', ',3,132,1705,', '3', '塞古', 'Segou', 'saigu', 'SG');
INSERT INTO `travel_location` VALUES ('1706', '132', ',3,132,1706,', '3', '通布图', 'Tombouctou', 'tongbutu', 'TB');
INSERT INTO `travel_location` VALUES ('1707', '132', ',3,132,1707,', '3', '锡卡索', 'Sikasso', 'xikasuo', 'SK');
INSERT INTO `travel_location` VALUES ('1708', '139', ',3,139,1708,', '3', '阿德拉尔', 'Adrar', 'adelaer', 'AD');
INSERT INTO `travel_location` VALUES ('1709', '139', ',3,139,1709,', '3', '阿萨巴', 'El-Acaba', 'asaba', 'AS');
INSERT INTO `travel_location` VALUES ('1710', '139', ',3,139,1710,', '3', '卜拉克纳', 'Brakna', 'bolakena', 'BR');
INSERT INTO `travel_location` VALUES ('1711', '139', ',3,139,1711,', '3', '东胡德', 'Hodh el-Gharbi', 'donghude', 'HG');
INSERT INTO `travel_location` VALUES ('1712', '139', ',3,139,1712,', '3', '戈尔戈勒', 'Gorgol', 'geergele', 'GO');
INSERT INTO `travel_location` VALUES ('1713', '139', ',3,139,1713,', '3', '吉迪马卡', 'Guidimaka', 'jidimaka', 'GM');
INSERT INTO `travel_location` VALUES ('1714', '139', ',3,139,1714,', '3', '努瓦迪布湾', 'Dakhlet Nouadhibou', 'nuwadibuwan', 'DN');
INSERT INTO `travel_location` VALUES ('1715', '139', ',3,139,1715,', '3', '努瓦克肖特特区', 'Nouakchott', 'nuwakexiaotetequ', 'NO');
INSERT INTO `travel_location` VALUES ('1716', '139', ',3,139,1716,', '3', '塔甘特', 'Tagant', 'tagante', 'TA');
INSERT INTO `travel_location` VALUES ('1717', '139', ',3,139,1717,', '3', '特拉扎', 'Trarza', 'telazha', 'TR');
INSERT INTO `travel_location` VALUES ('1718', '139', ',3,139,1718,', '3', '提里斯-宰穆尔', 'Tiris Zemmour', 'tilisizaimuer', 'TZ');
INSERT INTO `travel_location` VALUES ('1719', '139', ',3,139,1719,', '3', '西胡德', 'Hodh ech-Chargui', 'xihude', 'HC');
INSERT INTO `travel_location` VALUES ('1720', '139', ',3,139,1720,', '3', '因希里', 'Inchiri', 'yinxili', 'IN');
INSERT INTO `travel_location` VALUES ('1721', '141', ',6,141,1721,', '3', '阿纳', 'Aana', 'ana', 'AAN');
INSERT INTO `travel_location` VALUES ('1722', '141', ',6,141,1722,', '3', '阿图阿', 'Atua', 'atua', 'ATU');
INSERT INTO `travel_location` VALUES ('1723', '141', ',6,141,1723,', '3', '艾加伊勒泰', 'Aigaile Tai', 'aijiayiletai', 'AIT');
INSERT INTO `travel_location` VALUES ('1724', '141', ',6,141,1724,', '3', '法塞莱莱阿加', 'Faasaleleaga', 'fasailailaiajia', 'FAA');
INSERT INTO `travel_location` VALUES ('1725', '141', ',6,141,1725,', '3', '加盖福毛加', 'Gagaifomauga', 'jiagaifumaojia', 'GFG');
INSERT INTO `travel_location` VALUES ('1726', '141', ',6,141,1726,', '3', '加加埃毛加', 'Gagaemauga', 'jiajiaaimaojia', 'GMG');
INSERT INTO `travel_location` VALUES ('1727', '141', ',6,141,1727,', '3', '帕劳利', 'Palauli', 'palaoli', 'PAL');
INSERT INTO `travel_location` VALUES ('1728', '141', ',6,141,1728,', '3', '萨图帕伊泰阿', 'Satupaitea', 'satupayitaia', 'SAT');
INSERT INTO `travel_location` VALUES ('1729', '141', ',6,141,1729,', '3', '萨瓦伊岛', 'Savaii', 'sawayidao', 'SAV');
INSERT INTO `travel_location` VALUES ('1730', '141', ',6,141,1730,', '3', '图阿马萨加', 'Tuamasaga', 'tuamasajia', 'TUA');
INSERT INTO `travel_location` VALUES ('1731', '141', ',6,141,1731,', '3', '瓦奥福诺蒂', 'Vaao Fonoti', 'waaofunuodi', 'VAF');
INSERT INTO `travel_location` VALUES ('1732', '141', ',6,141,1732,', '3', '韦西加诺', 'Vaisigano', 'weixijianuo', 'VAI');
INSERT INTO `travel_location` VALUES ('1733', '141', ',6,141,1733,', '3', '乌波卢岛', 'Upolu', 'wuboludao', 'UPO');
INSERT INTO `travel_location` VALUES ('1734', '143', ',1,143,1734,', '3', '巴彦洪格尔', 'Bayanhongor', 'bayanhonggeer', '69');
INSERT INTO `travel_location` VALUES ('1735', '143', ',1,143,1735,', '3', '巴彦乌勒盖', 'Bayan-Ulgiy', 'bayanwulegai', '71');
INSERT INTO `travel_location` VALUES ('1736', '143', ',1,143,1736,', '3', '布尔干', 'Bulgan', 'buergan', '67');
INSERT INTO `travel_location` VALUES ('1737', '143', ',1,143,1737,', '3', '达尔汗乌勒', 'Darhan-Uul', 'daerhanwule', '37');
INSERT INTO `travel_location` VALUES ('1738', '143', ',1,143,1738,', '3', '东方', 'Dornod', 'dongfang', '61');
INSERT INTO `travel_location` VALUES ('1739', '143', ',1,143,1739,', '3', '东戈壁', 'Dornogovi', 'donggebi', '63');
INSERT INTO `travel_location` VALUES ('1740', '143', ',1,143,1740,', '3', '鄂尔浑', 'Orhon', 'eerhun', '35');
INSERT INTO `travel_location` VALUES ('1741', '143', ',1,143,1741,', '3', '戈壁阿尔泰', 'Govi-Altay', 'gebiaertai', '65');
INSERT INTO `travel_location` VALUES ('1742', '143', ',1,143,1742,', '3', '戈壁苏木贝尔', 'Govisumber', 'gebisumubeier', '64');
INSERT INTO `travel_location` VALUES ('1743', '143', ',1,143,1743,', '3', '后杭爱', 'Arhangay', 'houhangai', '73');
INSERT INTO `travel_location` VALUES ('1744', '143', ',1,143,1744,', '3', '科布多', 'Hovd', 'kebuduo', '43');
INSERT INTO `travel_location` VALUES ('1745', '143', ',1,143,1745,', '3', '肯特', 'Hentiy', 'kente', '39');
INSERT INTO `travel_location` VALUES ('1746', '143', ',1,143,1746,', '3', '库苏古尔', 'Hovsgol', 'kusuguer', '41');
INSERT INTO `travel_location` VALUES ('1747', '143', ',1,143,1747,', '3', '南戈壁', 'Umnogovi', 'nangebi', 'UMN');
INSERT INTO `travel_location` VALUES ('1748', '143', ',1,143,1748,', '3', '前杭爱', 'Uvorhangay', 'qianhangai', 'UVO');
INSERT INTO `travel_location` VALUES ('1749', '143', ',1,143,1749,', '3', '色楞格', 'Selenge', 'selengge', '49');
INSERT INTO `travel_location` VALUES ('1750', '143', ',1,143,1750,', '3', '苏赫巴托尔', 'Suhbaatar', 'suhebatuoer', '51');
INSERT INTO `travel_location` VALUES ('1751', '143', ',1,143,1751,', '3', '乌布苏', 'Uvs', 'wubusu', '46');
INSERT INTO `travel_location` VALUES ('1752', '143', ',1,143,1752,', '3', '乌兰巴托市', 'Ulaanbaatar hot', 'wulanbatuoshi', '1');
INSERT INTO `travel_location` VALUES ('1753', '143', ',1,143,1753,', '3', '扎布汗', 'Dzavhan', 'zhabuhan', '57');
INSERT INTO `travel_location` VALUES ('1754', '143', ',1,143,1754,', '3', '中戈壁', 'Dundgovi', 'zhonggebi', '59');
INSERT INTO `travel_location` VALUES ('1755', '143', ',1,143,1755,', '3', '中央', 'Tov', 'zhongyang', '47');
INSERT INTO `travel_location` VALUES ('1756', '145', ',1,145,1756,', '3', '达卡', 'Dhaka', 'daka', 'DAC');
INSERT INTO `travel_location` VALUES ('1757', '145', ',1,145,1757,', '3', '吉大港', 'Chittagong', 'jidagang', 'CGP');
INSERT INTO `travel_location` VALUES ('1758', '145', ',1,145,1758,', '3', '库尔纳', 'Khulna', 'kuerna', 'KHL');
INSERT INTO `travel_location` VALUES ('1759', '147', ',5,147,1759,', '3', '阿雷基帕', 'Arequipa', 'aleijipa', 'AR');
INSERT INTO `travel_location` VALUES ('1760', '147', ',5,147,1760,', '3', '阿普里马克', 'Apurimac', 'apulimake', 'AP');
INSERT INTO `travel_location` VALUES ('1761', '147', ',5,147,1761,', '3', '阿亚库乔', 'Ayacucho', 'ayakuqiao', 'AY');
INSERT INTO `travel_location` VALUES ('1762', '147', ',5,147,1762,', '3', '安卡什', 'Ancash', 'ankashi', 'AN');
INSERT INTO `travel_location` VALUES ('1763', '147', ',5,147,1763,', '3', '胡利亚卡', 'Juliaca', 'huliyaka', 'JUL');
INSERT INTO `travel_location` VALUES ('1764', '147', ',5,147,1764,', '3', '胡宁', 'Junin', 'huning', 'JU');
INSERT INTO `travel_location` VALUES ('1765', '147', ',5,147,1765,', '3', '卡哈马卡', 'Cajamarca', 'kahamaka', 'CJ');
INSERT INTO `travel_location` VALUES ('1766', '147', ',5,147,1766,', '3', '卡亚俄', 'Callao', 'kayae', 'CL');
INSERT INTO `travel_location` VALUES ('1767', '147', ',5,147,1767,', '3', '库斯科', 'Cusco', 'kusike', 'CU');
INSERT INTO `travel_location` VALUES ('1768', '147', ',5,147,1768,', '3', '拉利伯塔德', 'La Libertad', 'lalibotade', 'LD');
INSERT INTO `travel_location` VALUES ('1769', '147', ',5,147,1769,', '3', '兰巴耶克', 'Lambayeque', 'lanbayeke', 'LY');
INSERT INTO `travel_location` VALUES ('1770', '147', ',5,147,1770,', '3', '利马', 'Lima', 'lima', 'LI');
INSERT INTO `travel_location` VALUES ('1771', '147', ',5,147,1771,', '3', '洛雷托', 'Loreto', 'luoleituo', 'LO');
INSERT INTO `travel_location` VALUES ('1772', '147', ',5,147,1772,', '3', '马德雷德迪奥斯', 'Madre de Dios', 'madeleidediaosi', 'MD');
INSERT INTO `travel_location` VALUES ('1773', '147', ',5,147,1773,', '3', '莫克瓜', 'Moquegua', 'mokegua', 'MO');
INSERT INTO `travel_location` VALUES ('1774', '147', ',5,147,1774,', '3', '帕斯科', 'Pasco', 'pasike', 'PA');
INSERT INTO `travel_location` VALUES ('1775', '147', ',5,147,1775,', '3', '皮乌拉', 'Piura', 'piwula', 'PI');
INSERT INTO `travel_location` VALUES ('1776', '147', ',5,147,1776,', '3', '普诺', 'Puno', 'punuo', 'PU');
INSERT INTO `travel_location` VALUES ('1777', '147', ',5,147,1777,', '3', '钦博特', 'Chimbote', 'qinbote', 'CHM');
INSERT INTO `travel_location` VALUES ('1778', '147', ',5,147,1778,', '3', '钦查阿尔塔', 'Chincha Alta', 'qinchaaerta', 'CHI');
INSERT INTO `travel_location` VALUES ('1779', '147', ',5,147,1779,', '3', '圣马丁', 'San Martin', 'shengmading', 'SM');
INSERT INTO `travel_location` VALUES ('1780', '147', ',5,147,1780,', '3', '苏拉纳', 'Sullana', 'sulana', 'SUL');
INSERT INTO `travel_location` VALUES ('1781', '147', ',5,147,1781,', '3', '塔克纳', 'Tacna', 'takena', 'TA');
INSERT INTO `travel_location` VALUES ('1782', '147', ',5,147,1782,', '3', '通贝斯', 'Tumbes', 'tongbeisi', 'TU');
INSERT INTO `travel_location` VALUES ('1783', '147', ',5,147,1783,', '3', '瓦努科', 'Huanuco', 'wanuke', 'HO');
INSERT INTO `travel_location` VALUES ('1784', '147', ',5,147,1784,', '3', '万卡维利卡', 'Huancavelica', 'wankaweilika', 'HV');
INSERT INTO `travel_location` VALUES ('1785', '147', ',5,147,1785,', '3', '乌卡亚利', 'Ucayali', 'wukayali', 'UC');
INSERT INTO `travel_location` VALUES ('1786', '147', ',5,147,1786,', '3', '亚马孙', 'Amazonas', 'yamasun', 'AM');
INSERT INTO `travel_location` VALUES ('1787', '147', ',5,147,1787,', '3', '伊卡', 'Ica', 'yika', 'IC');
INSERT INTO `travel_location` VALUES ('1788', '148', ',1,148,1788,', '3', '勃固省', 'Bago', 'bogusheng', 'BG');
INSERT INTO `travel_location` VALUES ('1789', '148', ',1,148,1789,', '3', '掸邦', 'Shan', 'danbang', 'SH');
INSERT INTO `travel_location` VALUES ('1790', '148', ',1,148,1790,', '3', '德林达依省', 'Tanintharyi', 'delindayisheng', 'TN');
INSERT INTO `travel_location` VALUES ('1791', '148', ',1,148,1791,', '3', '克伦邦', 'Kayin', 'kelunbang', 'KN');
INSERT INTO `travel_location` VALUES ('1792', '148', ',1,148,1792,', '3', '克钦邦', 'Kachin', 'keqinbang', 'KC');
INSERT INTO `travel_location` VALUES ('1793', '148', ',1,148,1793,', '3', '克耶邦', 'Kayah', 'keyebang', 'KH');
INSERT INTO `travel_location` VALUES ('1794', '148', ',1,148,1794,', '3', '马圭省', 'Magway', 'maguisheng', 'MG');
INSERT INTO `travel_location` VALUES ('1795', '148', ',1,148,1795,', '3', '曼德勒省', 'Mandalay', 'mandelesheng', 'MD');
INSERT INTO `travel_location` VALUES ('1796', '148', ',1,148,1796,', '3', '孟邦', 'Mon', 'mengbang', 'MN');
INSERT INTO `travel_location` VALUES ('1797', '148', ',1,148,1797,', '3', '钦邦', 'Chin', 'qinbang', 'CH');
INSERT INTO `travel_location` VALUES ('1798', '148', ',1,148,1798,', '3', '若开邦', 'Rakhine', 'ruokaibang', 'RK');
INSERT INTO `travel_location` VALUES ('1799', '148', ',1,148,1799,', '3', '实皆省', 'Sagaing', 'shijiesheng', 'SG');
INSERT INTO `travel_location` VALUES ('1800', '148', ',1,148,1800,', '3', '仰光省', 'Yangon', 'yangguangsheng', 'YG');
INSERT INTO `travel_location` VALUES ('1801', '148', ',1,148,1801,', '3', '伊洛瓦底省', 'Ayeyarwady', 'yiluowadisheng', 'AY');
INSERT INTO `travel_location` VALUES ('1802', '150', ',3,150,1802,', '3', '丹吉尔', 'Tangier', 'danjier', 'TGR');
INSERT INTO `travel_location` VALUES ('1803', '150', ',3,150,1803,', '3', '得土安', 'Tetouan', 'detuan', 'TET');
INSERT INTO `travel_location` VALUES ('1804', '150', ',3,150,1804,', '3', '非斯', 'Fes', 'feisi', 'FES');
INSERT INTO `travel_location` VALUES ('1805', '150', ',3,150,1805,', '3', '卡萨布兰卡', 'Casablanca', 'kasabulanka', 'CBL');
INSERT INTO `travel_location` VALUES ('1806', '150', ',3,150,1806,', '3', '拉巴特', 'Rabat', 'labate', 'RSA');
INSERT INTO `travel_location` VALUES ('1807', '150', ',3,150,1807,', '3', '马拉喀什', 'Marrakech', 'malakashi', 'MRK');
INSERT INTO `travel_location` VALUES ('1808', '150', ',3,150,1808,', '3', '梅克内斯', 'Meknes', 'meikeneisi', 'MKN');
INSERT INTO `travel_location` VALUES ('1809', '150', ',3,150,1809,', '3', '乌季达', 'Oujda', 'wujida', 'OUJ');
INSERT INTO `travel_location` VALUES ('1810', '150', ',3,150,1810,', '3', '西撒哈拉', 'Western Sahara', 'xisahala', 'WSH');
INSERT INTO `travel_location` VALUES ('1811', '153', ',4,153,1811,', '3', '阿瓜斯卡连斯特', 'Aguascalientes', 'aguasikaliansite', 'AGU');
INSERT INTO `travel_location` VALUES ('1812', '153', ',4,153,1812,', '3', '阿卡普尔科', 'Acapulco', 'akapuerke', 'ACA');
INSERT INTO `travel_location` VALUES ('1813', '153', ',4,153,1813,', '3', '埃莫西约', 'Hermosillo', 'aimoxiyue', 'HMO');
INSERT INTO `travel_location` VALUES ('1814', '153', ',4,153,1814,', '3', '埃佩切', 'Campeche', 'aipeiqie', 'CAM');
INSERT INTO `travel_location` VALUES ('1815', '153', ',4,153,1815,', '3', '奥夫雷贡城', 'Obregon', 'aofuleigongcheng', 'OBR');
INSERT INTO `travel_location` VALUES ('1816', '153', ',4,153,1816,', '3', '奥里萨巴', 'Orizaba', 'aolisaba', 'ORI');
INSERT INTO `travel_location` VALUES ('1817', '153', ',4,153,1817,', '3', '巴利城', 'Valles', 'balicheng', 'VHM');
INSERT INTO `travel_location` VALUES ('1818', '153', ',4,153,1818,', '3', '巴亚尔塔港', 'Puerto Vallarta', 'bayaertagang', 'PVR');
INSERT INTO `travel_location` VALUES ('1819', '153', ',4,153,1819,', '3', '比利亚埃尔莫萨', 'Villahermosa', 'biliyaaiermosa', 'VSA');
INSERT INTO `travel_location` VALUES ('1820', '153', ',4,153,1820,', '3', '波萨里卡', 'Poza Rica de Hidalgo', 'bosalika', 'PRH');
INSERT INTO `travel_location` VALUES ('1821', '153', ',4,153,1821,', '3', '蒂华纳', 'Tijuana', 'dihuana', 'TIJ');
INSERT INTO `travel_location` VALUES ('1822', '153', ',4,153,1822,', '3', '杜兰戈', 'Durango', 'dulange', 'DUR');
INSERT INTO `travel_location` VALUES ('1823', '153', ',4,153,1823,', '3', '恩塞纳达', 'Ensenada', 'ensainada', 'ESE');
INSERT INTO `travel_location` VALUES ('1824', '153', ',4,153,1824,', '3', '瓜达拉哈拉', 'Guadalajara', 'guadalahala', 'GDL');
INSERT INTO `travel_location` VALUES ('1825', '153', ',4,153,1825,', '3', '瓜纳华托', 'Guanajuato', 'guanahuatuo', 'GUA');
INSERT INTO `travel_location` VALUES ('1826', '153', ',4,153,1826,', '3', '哈拉帕', 'Jalapa', 'halapa', 'JAL');
INSERT INTO `travel_location` VALUES ('1827', '153', ',4,153,1827,', '3', '华雷斯', 'Juarez', 'hualeisi', 'JUZ');
INSERT INTO `travel_location` VALUES ('1828', '153', ',4,153,1828,', '3', '华雷斯港', 'Benito Juare', 'hualeisigang', 'BJU');
INSERT INTO `travel_location` VALUES ('1829', '153', ',4,153,1829,', '3', '卡门', 'Carmen', 'kamen', 'CAR');
INSERT INTO `travel_location` VALUES ('1830', '153', ',4,153,1830,', '3', '科利马', 'Colima', 'kelima', 'COL');
INSERT INTO `travel_location` VALUES ('1831', '153', ',4,153,1831,', '3', '克雷塔罗', 'Queretaro', 'keleitaluo', 'QUE');
INSERT INTO `travel_location` VALUES ('1832', '153', ',4,153,1832,', '3', '库埃纳瓦卡', 'Cuernavaca', 'kuainawaka', 'CVC');
INSERT INTO `travel_location` VALUES ('1833', '153', ',4,153,1833,', '3', '库利阿坎', 'Culiacan', 'kuliakan', 'CUL');
INSERT INTO `travel_location` VALUES ('1834', '153', ',4,153,1834,', '3', '夸察夸拉克斯', 'Coatzacoalcos', 'kuachakualakesi', 'COA');
INSERT INTO `travel_location` VALUES ('1835', '153', ',4,153,1835,', '3', '拉巴斯', 'La Paz', 'labasi', 'LAP');
INSERT INTO `travel_location` VALUES ('1836', '153', ',4,153,1836,', '3', '莱昂', 'Leon', 'laiang', 'LEN');
INSERT INTO `travel_location` VALUES ('1837', '153', ',4,153,1837,', '3', '雷诺萨', 'Reynosa', 'leinuosa', 'REX');
INSERT INTO `travel_location` VALUES ('1838', '153', ',4,153,1838,', '3', '洛斯莫奇斯', 'Los Mochis', 'luosimoqisi', 'LMM');
INSERT INTO `travel_location` VALUES ('1839', '153', ',4,153,1839,', '3', '马萨特兰', 'Mazatlan', 'masatelan', 'MZT');
INSERT INTO `travel_location` VALUES ('1840', '153', ',4,153,1840,', '3', '马塔莫罗斯', 'Matamoros', 'matamoluosi', 'MAM');
INSERT INTO `travel_location` VALUES ('1841', '153', ',4,153,1841,', '3', '梅里达', 'Merida', 'meilida', 'MID');
INSERT INTO `travel_location` VALUES ('1842', '153', ',4,153,1842,', '3', '蒙克洛瓦', 'Monclova', 'mengkeluowa', 'LOV');
INSERT INTO `travel_location` VALUES ('1843', '153', ',4,153,1843,', '3', '蒙特雷', 'Monterrey', 'mengtelei', 'MTY');
INSERT INTO `travel_location` VALUES ('1844', '153', ',4,153,1844,', '3', '莫雷利亚', 'Morelia', 'moleiliya', 'MLM');
INSERT INTO `travel_location` VALUES ('1845', '153', ',4,153,1845,', '3', '墨西哥城', 'Mexico City', 'moxigecheng', 'MEX');
INSERT INTO `travel_location` VALUES ('1846', '153', ',4,153,1846,', '3', '墨西卡利', 'Mexicali', 'moxikali', 'MXL');
INSERT INTO `travel_location` VALUES ('1847', '153', ',4,153,1847,', '3', '诺加莱斯', 'Nogales', 'nuojialaisi', 'NOG');
INSERT INTO `travel_location` VALUES ('1848', '153', ',4,153,1848,', '3', '帕丘卡', 'Pachuca', 'paqiuka', 'PAC');
INSERT INTO `travel_location` VALUES ('1849', '153', ',4,153,1849,', '3', '普埃布拉', 'Puebla', 'puaibula', 'PUE');
INSERT INTO `travel_location` VALUES ('1850', '153', ',4,153,1850,', '3', '奇尔潘辛戈', 'Chilpancingo', 'qierpanxinge', 'CHI');
INSERT INTO `travel_location` VALUES ('1851', '153', ',4,153,1851,', '3', '奇瓦瓦', 'Chihuahua', 'qiwawa', 'CHH');
INSERT INTO `travel_location` VALUES ('1852', '153', ',4,153,1852,', '3', '切图马尔', 'Cheturnal', 'qietumaer', 'CTM');
INSERT INTO `travel_location` VALUES ('1853', '153', ',4,153,1853,', '3', '萨尔蒂约', 'Saltillo', 'saerdiyue', 'SLW');
INSERT INTO `travel_location` VALUES ('1854', '153', ',4,153,1854,', '3', '萨卡特卡斯', 'Zacatecas', 'sakatekasi', 'ZAC');
INSERT INTO `travel_location` VALUES ('1855', '153', ',4,153,1855,', '3', '塞拉亚', 'Celaya', 'sailaya', 'CLY');
INSERT INTO `travel_location` VALUES ('1856', '153', ',4,153,1856,', '3', '圣路易斯波托亚', 'San Luis Potosi', 'shengluyisibotuoya', 'SLP');
INSERT INTO `travel_location` VALUES ('1857', '153', ',4,153,1857,', '3', '塔帕丘拉', 'Tapachula', 'tapaqiula', 'TAP');
INSERT INTO `travel_location` VALUES ('1858', '153', ',4,153,1858,', '3', '坦皮科', 'Tampico', 'tanpike', 'TAM');
INSERT INTO `travel_location` VALUES ('1859', '153', ',4,153,1859,', '3', '特拉斯卡拉', 'Tlaxcala', 'telasikala', 'TLA');
INSERT INTO `travel_location` VALUES ('1860', '153', ',4,153,1860,', '3', '特皮克', 'Tepic', 'tepike', 'TPQ');
INSERT INTO `travel_location` VALUES ('1861', '153', ',4,153,1861,', '3', '特瓦坎', 'Tehuacan', 'tewakan', 'TCN');
INSERT INTO `travel_location` VALUES ('1862', '153', ',4,153,1862,', '3', '图斯特拉-古铁雷斯', 'Tuxtla Gutierrez', 'tusitelagutieleisi', 'TGZ');
INSERT INTO `travel_location` VALUES ('1863', '153', ',4,153,1863,', '3', '托雷翁', 'Torreon', 'tuoleiweng', 'TRC');
INSERT INTO `travel_location` VALUES ('1864', '153', ',4,153,1864,', '3', '托卢卡', 'Toluca', 'tuoluka', 'TLC');
INSERT INTO `travel_location` VALUES ('1865', '153', ',4,153,1865,', '3', '瓦哈卡', 'Oaxaca', 'wahaka', 'OAX');
INSERT INTO `travel_location` VALUES ('1866', '153', ',4,153,1866,', '3', '维多利亚城', 'Victoria', 'weiduoliyacheng', 'VIC');
INSERT INTO `travel_location` VALUES ('1867', '153', ',4,153,1867,', '3', '韦拉克鲁斯', 'Veracruz', 'weilakelusi', 'VER');
INSERT INTO `travel_location` VALUES ('1868', '153', ',4,153,1868,', '3', '乌鲁阿潘', 'Uruapan', 'wuluapan', 'UPN');
INSERT INTO `travel_location` VALUES ('1869', '153', ',4,153,1869,', '3', '新拉雷多', 'Nuevo Laredo', 'xinlaleiduo', 'NLE');
INSERT INTO `travel_location` VALUES ('1870', '153', ',4,153,1870,', '3', '伊拉普阿托', 'Irapuato', 'yilapuatuo', 'IRP');
INSERT INTO `travel_location` VALUES ('1871', '154', ',3,154,1871,', '3', '埃龙戈', 'Erongo', 'ailongge', 'ER');
INSERT INTO `travel_location` VALUES ('1872', '154', ',3,154,1872,', '3', '奥汉圭纳', 'Ohangwena', 'aohanguina', 'OW');
INSERT INTO `travel_location` VALUES ('1873', '154', ',3,154,1873,', '3', '奥卡万戈', 'Okavango', 'aokawange', 'KV');
INSERT INTO `travel_location` VALUES ('1874', '154', ',3,154,1874,', '3', '奥马赫科', 'Omaheke', 'aomaheke', 'OK');
INSERT INTO `travel_location` VALUES ('1875', '154', ',3,154,1875,', '3', '奥姆沙蒂', 'Omusati', 'aomushadi', 'OT');
INSERT INTO `travel_location` VALUES ('1876', '154', ',3,154,1876,', '3', '奥乔宗蒂约巴', 'Otjozondjupa', 'aoqiaozongdiyueba', 'OJ');
INSERT INTO `travel_location` VALUES ('1877', '154', ',3,154,1877,', '3', '奥沙纳', 'Oshana', 'aoshana', 'ON');
INSERT INTO `travel_location` VALUES ('1878', '154', ',3,154,1878,', '3', '奥希科托', 'Oshikoto', 'aoxiketuo', 'OO');
INSERT INTO `travel_location` VALUES ('1879', '154', ',3,154,1879,', '3', '哈达普', 'Hardap', 'hadapu', 'HA');
INSERT INTO `travel_location` VALUES ('1880', '154', ',3,154,1880,', '3', '霍马斯', 'Khomas', 'huomasi', 'KH');
INSERT INTO `travel_location` VALUES ('1881', '154', ',3,154,1881,', '3', '卡拉斯', 'Karas', 'kalasi', 'KR');
INSERT INTO `travel_location` VALUES ('1882', '154', ',3,154,1882,', '3', '卡普里维', 'Caprivi', 'kapuliwei', 'CA');
INSERT INTO `travel_location` VALUES ('1883', '154', ',3,154,1883,', '3', '库内内', 'Kunene', 'kuneinei', 'KU');
INSERT INTO `travel_location` VALUES ('1884', '155', ',3,155,1884,', '3', '阿平顿', 'Upington', 'apingdun', 'UTN');
INSERT INTO `travel_location` VALUES ('1885', '155', ',3,155,1885,', '3', '艾利弗山', 'Mount Ayliff', 'ailifushan', 'MAY');
INSERT INTO `travel_location` VALUES ('1886', '155', ',3,155,1886,', '3', '彼德马里茨堡', 'Pietermaritzburg', 'bidemalicibao', 'PZB');
INSERT INTO `travel_location` VALUES ('1887', '155', ',3,155,1887,', '3', '彼德斯堡', 'Pietersburg', 'bidesibao', 'PTG');
INSERT INTO `travel_location` VALUES ('1888', '155', ',3,155,1888,', '3', '比勒陀利亚', 'Pretoria', 'biletuoliya', 'PRY');
INSERT INTO `travel_location` VALUES ('1889', '155', ',3,155,1889,', '3', '比索', 'Bisho', 'bisuo', 'BIY');
INSERT INTO `travel_location` VALUES ('1890', '155', ',3,155,1890,', '3', '布雷达斯多普', 'Bredasdorp', 'buleidasiduopu', 'BDD');
INSERT INTO `travel_location` VALUES ('1891', '155', ',3,155,1891,', '3', '布隆方丹', 'Bloemfontein', 'bulongfangdan', 'BFN');
INSERT INTO `travel_location` VALUES ('1892', '155', ',3,155,1892,', '3', '布隆克斯特斯普利特', 'Bronkhorstspruit', 'bulongkesitesipulite', 'BHT');
INSERT INTO `travel_location` VALUES ('1893', '155', ',3,155,1893,', '3', '德阿尔', 'De Aar', 'deaer', 'DAA');
INSERT INTO `travel_location` VALUES ('1894', '155', ',3,155,1894,', '3', '德班', 'Durban', 'deban', 'DUR');
INSERT INTO `travel_location` VALUES ('1895', '155', ',3,155,1895,', '3', '邓迪', 'Dundee', 'dengdi', 'DUN');
INSERT INTO `travel_location` VALUES ('1896', '155', ',3,155,1896,', '3', '东巴克利', 'Barkley East', 'dongbakeli', 'BAE');
INSERT INTO `travel_location` VALUES ('1897', '155', ',3,155,1897,', '3', '东伦敦', 'East London', 'donglundun', 'ELS');
INSERT INTO `travel_location` VALUES ('1898', '155', ',3,155,1898,', '3', '弗雷堡', 'Vryburg', 'fuleibao', 'VRU');
INSERT INTO `travel_location` VALUES ('1899', '155', ',3,155,1899,', '3', '弗里尼欣', 'Vereeniging', 'fulinixin', 'VGG');
INSERT INTO `travel_location` VALUES ('1900', '155', ',3,155,1900,', '3', '格罗布莱斯达尔', 'Groblersdal', 'geluobulaisidaer', 'GBD');
INSERT INTO `travel_location` VALUES ('1901', '155', ',3,155,1901,', '3', '基雅尼', 'Giyani', 'jiyani', 'GIY');
INSERT INTO `travel_location` VALUES ('1902', '155', ',3,155,1902,', '3', '金伯利', 'Kimberley', 'jinboli', 'KIM');
INSERT INTO `travel_location` VALUES ('1903', '155', ',3,155,1903,', '3', '开普敦', 'Cape Town', 'kaipudun', 'CPT');
INSERT INTO `travel_location` VALUES ('1904', '155', ',3,155,1904,', '3', '克莱克斯多普', 'Klerksdorp', 'kelaikesiduopu', 'KXE');
INSERT INTO `travel_location` VALUES ('1905', '155', ',3,155,1905,', '3', '库鲁曼', 'Kuruman', 'kuluman', 'KMH');
INSERT INTO `travel_location` VALUES ('1906', '155', ',3,155,1906,', '3', '昆士敦', 'Queenstown', 'kunshidun', 'UTW');
INSERT INTO `travel_location` VALUES ('1907', '155', ',3,155,1907,', '3', '莱迪史密斯', 'Ladysmith', 'laidishimisi', 'LAY');
INSERT INTO `travel_location` VALUES ('1908', '155', ',3,155,1908,', '3', '兰德方丹', 'Randfontein', 'landefangdan', 'RFT');
INSERT INTO `travel_location` VALUES ('1909', '155', ',3,155,1909,', '3', '理查兹湾', 'Richards Bay', 'lichaziwan', 'RCB');
INSERT INTO `travel_location` VALUES ('1910', '155', ',3,155,1910,', '3', '利斯滕堡', 'Rustenburg', 'lisibao', 'RSB');
INSERT INTO `travel_location` VALUES ('1911', '155', ',3,155,1911,', '3', '米德尔堡', 'Middelburg', 'mideerbao', 'MDB');
INSERT INTO `travel_location` VALUES ('1912', '155', ',3,155,1912,', '3', '姆库泽', 'Mkuze', 'mukuze', 'MZQ');
INSERT INTO `travel_location` VALUES ('1913', '155', ',3,155,1913,', '3', '穆里斯堡', 'Moorreesburg', 'mulisibao', 'MOO');
INSERT INTO `travel_location` VALUES ('1914', '155', ',3,155,1914,', '3', '内尔斯普雷特', 'Nelspruit', 'neiersipuleite', 'NLP');
INSERT INTO `travel_location` VALUES ('1915', '155', ',3,155,1915,', '3', '尼尔斯特隆', 'Nylstroom', 'niersitelong', 'NYL');
INSERT INTO `travel_location` VALUES ('1916', '155', ',3,155,1916,', '3', '纽卡斯尔', 'Newcastle', 'niukasier', 'NCS');
INSERT INTO `travel_location` VALUES ('1917', '155', ',3,155,1917,', '3', '乔治', 'George', 'qiaozhi', 'GRJ');
INSERT INTO `travel_location` VALUES ('1918', '155', ',3,155,1918,', '3', '萨索尔堡', 'Sasolburg', 'sasuoerbao', 'SAS');
INSERT INTO `travel_location` VALUES ('1919', '155', ',3,155,1919,', '3', '瑟孔达', 'Secunda', 'sekongda', 'ZEC');
INSERT INTO `travel_location` VALUES ('1920', '155', ',3,155,1920,', '3', '特克索波', 'Ixopo', 'tekesuobo', 'IXO');
INSERT INTO `travel_location` VALUES ('1921', '155', ',3,155,1921,', '3', '特隆普斯堡', 'Trompsburg', 'telongpusibao', 'TPB');
INSERT INTO `travel_location` VALUES ('1922', '155', ',3,155,1922,', '3', '跳羚', 'Springbok', 'tiaoling', 'SBU');
INSERT INTO `travel_location` VALUES ('1923', '155', ',3,155,1923,', '3', '图拉马哈谢', 'Thulamahashe', 'tulamahaxie', 'TLH');
INSERT INTO `travel_location` VALUES ('1924', '155', ',3,155,1924,', '3', '托霍延杜', 'Thohoyandou', 'tuohuoyandu', 'THY');
INSERT INTO `travel_location` VALUES ('1925', '155', ',3,155,1925,', '3', '韦茨肖克', 'Witsieshoek', 'weicixiaoke', 'WSH');
INSERT INTO `travel_location` VALUES ('1926', '155', ',3,155,1926,', '3', '韦尔科姆', 'Welkom', 'weierkemu', 'WEL');
INSERT INTO `travel_location` VALUES ('1927', '155', ',3,155,1927,', '3', '乌伦迪', 'Ulundi', 'wulundi', 'ULD');
INSERT INTO `travel_location` VALUES ('1928', '155', ',3,155,1928,', '3', '乌姆塔塔', 'Umtata', 'wumutata', 'UTT');
INSERT INTO `travel_location` VALUES ('1929', '155', ',3,155,1929,', '3', '伍斯特', 'Worcester', 'wusite', 'WOR');
INSERT INTO `travel_location` VALUES ('1930', '155', ',3,155,1930,', '3', '西博福特', 'Beaufort West', 'xibofute', 'BEW');
INSERT INTO `travel_location` VALUES ('1931', '155', ',3,155,1931,', '3', '谢普斯通港', 'Port Shepstone', 'xiepusitonggang', 'PSS');
INSERT INTO `travel_location` VALUES ('1932', '155', ',3,155,1932,', '3', '伊丽莎白港', 'Port Elizabeth', 'yilishabaigang', 'PLZ');
INSERT INTO `travel_location` VALUES ('1933', '155', ',3,155,1933,', '3', '约翰内斯堡', 'Johannesburg', 'yuehanneisibao', 'JNB');
INSERT INTO `travel_location` VALUES ('1934', '159', ',1,159,1934,', '3', '巴格马蒂', 'Bagmati', 'bagemadi', 'BA');
INSERT INTO `travel_location` VALUES ('1935', '159', ',1,159,1935,', '3', '道拉吉里', 'Dhawalagiri', 'daolajili', 'DH');
INSERT INTO `travel_location` VALUES ('1936', '159', ',1,159,1936,', '3', '甘达基', 'Gandaki', 'gandaji', 'GA');
INSERT INTO `travel_location` VALUES ('1937', '159', ',1,159,1937,', '3', '戈西', 'Kosi', 'gexi', 'KO');
INSERT INTO `travel_location` VALUES ('1938', '159', ',1,159,1938,', '3', '格尔纳利', 'Karnali', 'geernali', 'KA');
INSERT INTO `travel_location` VALUES ('1939', '159', ',1,159,1939,', '3', '贾纳克布尔', 'Janakpur', 'jianakebuer', 'JA');
INSERT INTO `travel_location` VALUES ('1940', '159', ',1,159,1940,', '3', '拉布蒂', 'Rapti', 'labudi', 'RA');
INSERT INTO `travel_location` VALUES ('1941', '159', ',1,159,1941,', '3', '蓝毗尼', 'Lumbini', 'lanpini', 'LU');
INSERT INTO `travel_location` VALUES ('1942', '159', ',1,159,1942,', '3', '马哈卡利', 'Mahakali', 'mahakali', 'MA');
INSERT INTO `travel_location` VALUES ('1943', '159', ',1,159,1943,', '3', '梅吉', 'Mechi', 'meiji', 'ME');
INSERT INTO `travel_location` VALUES ('1944', '159', ',1,159,1944,', '3', '纳拉亚尼', 'Narayani', 'nalayani', 'NA');
INSERT INTO `travel_location` VALUES ('1945', '159', ',1,159,1945,', '3', '佩里', 'Bheri', 'peili', 'BH');
INSERT INTO `travel_location` VALUES ('1946', '159', ',1,159,1946,', '3', '萨加玛塔', 'Sogarmatha', 'sajiamata', 'SA');
INSERT INTO `travel_location` VALUES ('1947', '159', ',1,159,1947,', '3', '塞蒂', 'Seti', 'saidi', 'SE');
INSERT INTO `travel_location` VALUES ('1948', '160', ',4,160,1948,', '3', '埃斯特利', 'Esteli', 'aisiteli', 'ES');
INSERT INTO `travel_location` VALUES ('1949', '160', ',4,160,1949,', '3', '北大西洋', 'Atlantico Norte', 'beidaxiyang', 'AN');
INSERT INTO `travel_location` VALUES ('1950', '160', ',4,160,1950,', '3', '博阿科', 'Boaco', 'boake', 'BO');
INSERT INTO `travel_location` VALUES ('1951', '160', ',4,160,1951,', '3', '格拉纳达', 'Granada', 'gelanada', 'GR');
INSERT INTO `travel_location` VALUES ('1952', '160', ',4,160,1952,', '3', '卡拉索', 'Carazo', 'kalasuo', 'CA');
INSERT INTO `travel_location` VALUES ('1953', '160', ',4,160,1953,', '3', '莱昂', 'Leon', 'laiang', 'LE');
INSERT INTO `travel_location` VALUES ('1954', '160', ',4,160,1954,', '3', '里瓦斯', 'Rivas', 'liwasi', 'RV');
INSERT INTO `travel_location` VALUES ('1955', '160', ',4,160,1955,', '3', '马德里斯', 'Madriz', 'madelisi', 'MD');
INSERT INTO `travel_location` VALUES ('1956', '160', ',4,160,1956,', '3', '马那瓜', 'Managua', 'managua', 'MN');
INSERT INTO `travel_location` VALUES ('1957', '160', ',4,160,1957,', '3', '马萨亚', 'Masaya', 'masaya', 'MS');
INSERT INTO `travel_location` VALUES ('1958', '160', ',4,160,1958,', '3', '马塔加尔帕', 'Matagalpa', 'matajiaerpa', 'MT');
INSERT INTO `travel_location` VALUES ('1959', '160', ',4,160,1959,', '3', '南大西洋', 'Atlantico Sur', 'nandaxiyang', 'AS');
INSERT INTO `travel_location` VALUES ('1960', '160', ',4,160,1960,', '3', '奇南德加', 'Chinandega', 'qinandejia', 'CD');
INSERT INTO `travel_location` VALUES ('1961', '160', ',4,160,1961,', '3', '琼塔莱斯', 'Chontales', 'qiongtalaisi', 'CT');
INSERT INTO `travel_location` VALUES ('1962', '160', ',4,160,1962,', '3', '圣胡安河', 'Rio San Juan', 'shenghuanhe', 'SJ');
INSERT INTO `travel_location` VALUES ('1963', '160', ',4,160,1963,', '3', '希诺特加', 'Jinotega', 'xinuotejia', 'JI');
INSERT INTO `travel_location` VALUES ('1964', '160', ',4,160,1964,', '3', '新塞哥维亚', 'Nueva Segovia', 'xinsaigeweiya', 'NS');
INSERT INTO `travel_location` VALUES ('1965', '161', ',3,161,1965,', '3', '阿加德兹', 'Agadez', 'ajiadezi', 'AJY');
INSERT INTO `travel_location` VALUES ('1966', '161', ',3,161,1966,', '3', '迪法', 'Diffa', 'difa', 'DIF');
INSERT INTO `travel_location` VALUES ('1967', '161', ',3,161,1967,', '3', '蒂拉贝里', 'Tillaberi', 'dilabeili', 'TIL');
INSERT INTO `travel_location` VALUES ('1968', '161', ',3,161,1968,', '3', '多索', 'Dosso', 'duosuo', 'DSS');
INSERT INTO `travel_location` VALUES ('1969', '161', ',3,161,1969,', '3', '津德尔', 'Zinder', 'jindeer', 'ZND');
INSERT INTO `travel_location` VALUES ('1970', '161', ',3,161,1970,', '3', '马拉迪', 'Maradi', 'maladi', 'MFQ');
INSERT INTO `travel_location` VALUES ('1971', '161', ',3,161,1971,', '3', '尼亚美市', 'Niamey C.U.', 'niyameishi', 'NIM');
INSERT INTO `travel_location` VALUES ('1972', '161', ',3,161,1972,', '3', '塔瓦', 'Tahoua', 'tawa', 'THZ');
INSERT INTO `travel_location` VALUES ('1973', '162', ',3,162,1973,', '3', '阿比亚', 'Abuja', 'abiya', 'ABV');
INSERT INTO `travel_location` VALUES ('1974', '162', ',3,162,1974,', '3', '奥博莫绍', 'Ogbomosho', 'aobomoshao', 'OGB');
INSERT INTO `travel_location` VALUES ('1975', '162', ',3,162,1975,', '3', '卡诺', 'Kano', 'kanuo', 'KAN');
INSERT INTO `travel_location` VALUES ('1976', '162', ',3,162,1976,', '3', '拉各斯', 'Lagos', 'lagesi', 'LOS');
INSERT INTO `travel_location` VALUES ('1977', '162', ',3,162,1977,', '3', '伊巴丹', 'Ibadan', 'yibadan', 'IBA');
INSERT INTO `travel_location` VALUES ('1978', '164', ',2,164,1978,', '3', '阿克什胡斯', 'Akershus', 'akeshihusi', '2');
INSERT INTO `travel_location` VALUES ('1979', '164', ',2,164,1979,', '3', '奥普兰', 'Oppland', 'aopulan', '5');
INSERT INTO `travel_location` VALUES ('1980', '164', ',2,164,1980,', '3', '奥斯陆市', 'Oslo', 'aosilushi', '3');
INSERT INTO `travel_location` VALUES ('1981', '164', ',2,164,1981,', '3', '北特伦德拉格', 'Nord-Trondelag', 'beitelundelage', '17');
INSERT INTO `travel_location` VALUES ('1982', '164', ',2,164,1982,', '3', '布斯克吕', 'Buskerud', 'busikelv', '6');
INSERT INTO `travel_location` VALUES ('1983', '164', ',2,164,1983,', '3', '东阿格德尔', 'Aust-Agder', 'dongagedeer', '9');
INSERT INTO `travel_location` VALUES ('1984', '164', ',2,164,1984,', '3', '东福尔', 'Ostfold', 'dongfuer', '1');
INSERT INTO `travel_location` VALUES ('1985', '164', ',2,164,1985,', '3', '芬马克', 'Finnmark', 'fenmake', '20');
INSERT INTO `travel_location` VALUES ('1986', '164', ',2,164,1986,', '3', '海德马克', 'Hedmark', 'haidemake', '4');
INSERT INTO `travel_location` VALUES ('1987', '164', ',2,164,1987,', '3', '霍达兰', 'Hordaland', 'huodalan', '12');
INSERT INTO `travel_location` VALUES ('1988', '164', ',2,164,1988,', '3', '罗加兰', 'Rogaland', 'luojialan', '11');
INSERT INTO `travel_location` VALUES ('1989', '164', ',2,164,1989,', '3', '默勒－鲁姆斯达尔', 'More og Romsdal', 'molelumusidaer', '15');
INSERT INTO `travel_location` VALUES ('1990', '164', ',2,164,1990,', '3', '南特伦德拉格', 'Sor-Trondelag', 'nantelundelage', '16');
INSERT INTO `travel_location` VALUES ('1991', '164', ',2,164,1991,', '3', '诺尔兰', 'Nordland', 'nuoerlan', '18');
INSERT INTO `travel_location` VALUES ('1992', '164', ',2,164,1992,', '3', '松恩－菲尤拉讷', 'Sogn og Fjordane', 'songenfeiyoula', '14');
INSERT INTO `travel_location` VALUES ('1993', '164', ',2,164,1993,', '3', '泰勒马克', 'Telemark', 'tailemake', '8');
INSERT INTO `travel_location` VALUES ('1994', '164', ',2,164,1994,', '3', '特罗姆斯', 'Troms', 'teluomusi', '19');
INSERT INTO `travel_location` VALUES ('1995', '164', ',2,164,1995,', '3', '西阿格德尔', 'Vest-Agder', 'xiagedeer', '10');
INSERT INTO `travel_location` VALUES ('1996', '164', ',2,164,1996,', '3', '西福尔', 'Vestfold', 'xifuer', '7');
INSERT INTO `travel_location` VALUES ('1997', '168', ',2,168,1997,', '3', '滨海阿连特茹', 'Alentejo Litoral', 'binhaialianteru', 'ALL');
INSERT INTO `travel_location` VALUES ('1998', '168', ',2,168,1998,', '3', '滨海皮尼亚尔', 'Pinhal Litoral', 'binhaipiniyaer', 'PLT');
INSERT INTO `travel_location` VALUES ('1999', '168', ',2,168,1999,', '3', '波尔图', 'Porto', 'boertu', 'VDP');
INSERT INTO `travel_location` VALUES ('2000', '168', ',2,168,2000,', '3', '杜罗', 'Douro', 'duluo', 'MDR');
INSERT INTO `travel_location` VALUES ('2001', '168', ',2,168,2001,', '3', '恩特拉杜罗伏日', 'Entre Douro e Vouga', 'enteladuluofuri', 'EDV');
INSERT INTO `travel_location` VALUES ('2002', '168', ',2,168,2002,', '3', '法鲁', 'Faro', 'falu', 'FAO');
INSERT INTO `travel_location` VALUES ('2003', '168', ',2,168,2003,', '3', '丰沙尔', 'Funchal', 'fengshaer', 'FUN');
INSERT INTO `travel_location` VALUES ('2004', '168', ',2,168,2004,', '3', '卡瓦多', 'Cavado', 'kawaduo', 'CAV');
INSERT INTO `travel_location` VALUES ('2005', '168', ',2,168,2005,', '3', '科瓦贝拉', 'Cova da Beira', 'kewabeila', 'CLB');
INSERT INTO `travel_location` VALUES ('2006', '168', ',2,168,2006,', '3', '里斯本', 'Lisboa', 'lisiben', 'LIS');
INSERT INTO `travel_location` VALUES ('2007', '168', ',2,168,2007,', '3', '利巴特茹', 'Leziria do Tejo', 'libateru', 'LTE');
INSERT INTO `travel_location` VALUES ('2008', '168', ',2,168,2008,', '3', '梅地奥特茹', 'Medio Tejo', 'meidiaoteru', 'MTE');
INSERT INTO `travel_location` VALUES ('2009', '168', ',2,168,2009,', '3', '米尼奥-利马', 'Minho-Lima', 'miniaolima', 'MLI');
INSERT INTO `travel_location` VALUES ('2010', '168', ',2,168,2010,', '3', '内贝拉北', 'Beira Interior Norte', 'neibeilabei', 'BIN');
INSERT INTO `travel_location` VALUES ('2011', '168', ',2,168,2011,', '3', '内贝拉南', 'Beira Interior Sul', 'neibeilanan', 'BIS');
INSERT INTO `travel_location` VALUES ('2012', '168', ',2,168,2012,', '3', '内皮尼亚尔北', 'Pinhal Interior Norte', 'neipiniyaerbei', 'PIN');
INSERT INTO `travel_location` VALUES ('2013', '168', ',2,168,2013,', '3', '内皮尼亚尔南', 'Pinhal Interior Sul', 'neipiniyaernan', 'PIS');
INSERT INTO `travel_location` VALUES ('2014', '168', ',2,168,2014,', '3', '蓬塔德尔加达', 'Ponta Delgada', 'pengtadeerjiada', 'PDL');
INSERT INTO `travel_location` VALUES ('2015', '168', ',2,168,2015,', '3', '塞图巴尔半岛', 'Peninsula de Setubal', 'saitubaerbandao', 'PSE');
INSERT INTO `travel_location` VALUES ('2016', '168', ',2,168,2016,', '3', '山后', 'Serra da Estrela', 'shanhou', 'SES');
INSERT INTO `travel_location` VALUES ('2017', '168', ',2,168,2017,', '3', '上阿连特茹', 'Alto Alentejo', 'shangalianteru', 'AAT');
INSERT INTO `travel_location` VALUES ('2018', '168', ',2,168,2018,', '3', '上特拉斯山', 'Alto Tros-os-Montes', 'shangtelasishan', 'ATM');
INSERT INTO `travel_location` VALUES ('2019', '168', ',2,168,2019,', '3', '塔梅加', 'Tamega', 'tameijia', 'TAM');
INSERT INTO `travel_location` VALUES ('2020', '168', ',2,168,2020,', '3', '万福', 'Ave', 'wanfu', 'AES');
INSERT INTO `travel_location` VALUES ('2021', '168', ',2,168,2021,', '3', '西部', 'Oeste', 'xibu', 'OES');
INSERT INTO `travel_location` VALUES ('2022', '168', ',2,168,2022,', '3', '下阿连特茹', 'Baixo Alentejo', 'xiaalianteru', 'BAL');
INSERT INTO `travel_location` VALUES ('2023', '168', ',2,168,2023,', '3', '下伏日', 'Baixo Vouga', 'xiafuri', 'BVO');
INSERT INTO `travel_location` VALUES ('2024', '168', ',2,168,2024,', '3', '下蒙德古', 'Baixo Mondego', 'xiamengdegu', 'BMO');
INSERT INTO `travel_location` VALUES ('2025', '168', ',2,168,2025,', '3', '中阿连特茹', 'Alentejo Central', 'zhongalianteru', 'ALC');
INSERT INTO `travel_location` VALUES ('2026', '170', ',1,170,2026,', '3', '爱媛', 'Ehime', 'ai', '38');
INSERT INTO `travel_location` VALUES ('2027', '170', ',1,170,2027,', '3', '爱知', 'Aichi', 'aizhi', '23');
INSERT INTO `travel_location` VALUES ('2028', '170', ',1,170,2028,', '3', '北海道', 'Hokkaido', 'beihaidao', '1');
INSERT INTO `travel_location` VALUES ('2029', '170', ',1,170,2029,', '3', '兵库', 'Hyogo', 'bingku', '28');
INSERT INTO `travel_location` VALUES ('2030', '170', ',1,170,2030,', '3', '冲绳', 'Okinawa', 'chongsheng', '47');
INSERT INTO `travel_location` VALUES ('2031', '170', ',1,170,2031,', '3', '茨城', 'Ibaraki', 'cicheng', '8');
INSERT INTO `travel_location` VALUES ('2032', '170', ',1,170,2032,', '3', '大阪', 'Osaka', 'da', '27');
INSERT INTO `travel_location` VALUES ('2033', '170', ',1,170,2033,', '3', '大分', 'Oita', 'dafen', '44');
INSERT INTO `travel_location` VALUES ('2034', '170', ',1,170,2034,', '3', '岛根', 'Shimane', 'daogen', '32');
INSERT INTO `travel_location` VALUES ('2035', '170', ',1,170,2035,', '3', '徳岛', 'Tokushima', '', '36');
INSERT INTO `travel_location` VALUES ('2036', '170', ',1,170,2036,', '3', '东京', 'Tokyo', 'dongjing', '13');
INSERT INTO `travel_location` VALUES ('2037', '170', ',1,170,2037,', '3', '福岛', 'Fukushima', 'fudao', '7');
INSERT INTO `travel_location` VALUES ('2038', '170', ',1,170,2038,', '3', '福冈', 'Fukuoka', 'fugang', '40');
INSERT INTO `travel_location` VALUES ('2039', '170', ',1,170,2039,', '3', '福井', 'Fukui', 'fujing', '18');
INSERT INTO `travel_location` VALUES ('2040', '170', ',1,170,2040,', '3', '富山', 'Toyama', 'fushan', '16');
INSERT INTO `travel_location` VALUES ('2041', '170', ',1,170,2041,', '3', '冈山', 'Okayama', 'gangshan', '33');
INSERT INTO `travel_location` VALUES ('2042', '170', ',1,170,2042,', '3', '高知', 'Kochi', 'gaozhi', '39');
INSERT INTO `travel_location` VALUES ('2043', '170', ',1,170,2043,', '3', '宮城', 'Miyagi', '', '4');
INSERT INTO `travel_location` VALUES ('2044', '170', ',1,170,2044,', '3', '宫崎', 'Miyazaki', 'gongqi', '45');
INSERT INTO `travel_location` VALUES ('2045', '170', ',1,170,2045,', '3', '广岛', 'Hiroshima', 'guangdao', '34');
INSERT INTO `travel_location` VALUES ('2046', '170', ',1,170,2046,', '3', '和歌山', 'Wakayama', 'hegeshan', '30');
INSERT INTO `travel_location` VALUES ('2047', '170', ',1,170,2047,', '3', '京都', 'Kyoto', 'jingdu', '26');
INSERT INTO `travel_location` VALUES ('2048', '170', ',1,170,2048,', '3', '静冈', 'Shizuoka', 'jinggang', '22');
INSERT INTO `travel_location` VALUES ('2049', '170', ',1,170,2049,', '3', '枥木', 'Tochigi', 'mu', '9');
INSERT INTO `travel_location` VALUES ('2050', '170', ',1,170,2050,', '3', '鹿儿岛', 'Kagoshima', 'luerdao', '46');
INSERT INTO `travel_location` VALUES ('2051', '170', ',1,170,2051,', '3', '奈良', 'Nara', 'nailiang', '29');
INSERT INTO `travel_location` VALUES ('2052', '170', ',1,170,2052,', '3', '鸟取', 'Tottori', 'niaoqu', '31');
INSERT INTO `travel_location` VALUES ('2053', '170', ',1,170,2053,', '3', '岐阜', 'Gifu', 'fu', '21');
INSERT INTO `travel_location` VALUES ('2054', '170', ',1,170,2054,', '3', '埼玉', 'Saitama', '', '11');
INSERT INTO `travel_location` VALUES ('2055', '170', ',1,170,2055,', '3', '千叶', 'Chiba', 'qianye', '12');
INSERT INTO `travel_location` VALUES ('2056', '170', ',1,170,2056,', '3', '青森', 'Aomori', 'qingsen', '2');
INSERT INTO `travel_location` VALUES ('2057', '170', ',1,170,2057,', '3', '秋田', 'Akita', 'qiutian', '5');
INSERT INTO `travel_location` VALUES ('2058', '170', ',1,170,2058,', '3', '群马', 'Gunma', 'qunma', '10');
INSERT INTO `travel_location` VALUES ('2059', '170', ',1,170,2059,', '3', '三重', 'Mie', 'sanzhong', '24');
INSERT INTO `travel_location` VALUES ('2060', '170', ',1,170,2060,', '3', '山口', 'Yamaguchi', 'shankou', '35');
INSERT INTO `travel_location` VALUES ('2061', '170', ',1,170,2061,', '3', '山梨', 'Yamanashi', 'shanli', '19');
INSERT INTO `travel_location` VALUES ('2062', '170', ',1,170,2062,', '3', '山形', 'Yamagata', 'shanxing', '6');
INSERT INTO `travel_location` VALUES ('2063', '170', ',1,170,2063,', '3', '神奈川', 'Kanagawa', 'shennaichuan', '14');
INSERT INTO `travel_location` VALUES ('2064', '170', ',1,170,2064,', '3', '石川', 'Ishikawa', 'shichuan', '17');
INSERT INTO `travel_location` VALUES ('2065', '170', ',1,170,2065,', '3', '香川', 'Kagawa', 'xiangchuan', '37');
INSERT INTO `travel_location` VALUES ('2066', '170', ',1,170,2066,', '3', '新潟', 'Niigata', 'xin', '15');
INSERT INTO `travel_location` VALUES ('2067', '170', ',1,170,2067,', '3', '熊本', 'Kumamoto', 'xiongben', '43');
INSERT INTO `travel_location` VALUES ('2068', '170', ',1,170,2068,', '3', '岩手', 'Iwate', 'yanshou', '3');
INSERT INTO `travel_location` VALUES ('2069', '170', ',1,170,2069,', '3', '长崎', 'Nagasaki', 'changqi', '42');
INSERT INTO `travel_location` VALUES ('2070', '170', ',1,170,2070,', '3', '长野', 'Nagano', 'changye', '20');
INSERT INTO `travel_location` VALUES ('2071', '170', ',1,170,2071,', '3', '滋贺', 'Shiga', 'zihe', '25');
INSERT INTO `travel_location` VALUES ('2072', '170', ',1,170,2072,', '3', '佐贺', 'Saga', 'zuohe', '41');
INSERT INTO `travel_location` VALUES ('2073', '171', ',2,171,2073,', '3', '北博滕', 'Norrbottens', 'beibo', 'BD');
INSERT INTO `travel_location` VALUES ('2074', '171', ',2,171,2074,', '3', '布莱金厄', 'Blekinge', 'bulaijine', 'K');
INSERT INTO `travel_location` VALUES ('2075', '171', ',2,171,2075,', '3', '达拉纳', 'Dalarnas', 'dalana', 'DLN');
INSERT INTO `travel_location` VALUES ('2076', '171', ',2,171,2076,', '3', '东约特兰', 'Ustergotland', 'dongyuetelan', 'UGL');
INSERT INTO `travel_location` VALUES ('2077', '171', ',2,171,2077,', '3', '厄勒布鲁', 'Orebro', 'elebulu', 'T');
INSERT INTO `travel_location` VALUES ('2078', '171', ',2,171,2078,', '3', '哥得兰', 'Gotlands', 'gedelan', 'I');
INSERT INTO `travel_location` VALUES ('2079', '171', ',2,171,2079,', '3', '哈兰', 'Hallands', 'halan', 'N');
INSERT INTO `travel_location` VALUES ('2080', '171', ',2,171,2080,', '3', '卡尔马', 'Kalmar', 'kaerma', 'H');
INSERT INTO `travel_location` VALUES ('2081', '171', ',2,171,2081,', '3', '克鲁努贝里', 'Kronobergs', 'kelunubeili', 'G');
INSERT INTO `travel_location` VALUES ('2082', '171', ',2,171,2082,', '3', '南曼兰', 'Sodermanlands', 'nanmanlan', 'D');
INSERT INTO `travel_location` VALUES ('2083', '171', ',2,171,2083,', '3', '斯德哥尔摩', 'Stockholms', 'sidegeermo', 'AB');
INSERT INTO `travel_location` VALUES ('2084', '171', ',2,171,2084,', '3', '斯科耐', 'Skane', 'sikenai', 'M');
INSERT INTO `travel_location` VALUES ('2085', '171', ',2,171,2085,', '3', '韦姆兰', 'Varmlands', 'weimulan', 'S');
INSERT INTO `travel_location` VALUES ('2086', '171', ',2,171,2086,', '3', '乌普萨拉', 'Uppsala', 'wupusala', 'C');
INSERT INTO `travel_location` VALUES ('2087', '171', ',2,171,2087,', '3', '西博滕', 'Vasterbottens', 'xibo', 'AC');
INSERT INTO `travel_location` VALUES ('2088', '171', ',2,171,2088,', '3', '西曼兰', 'Vastmanlands', 'ximanlan', 'U');
INSERT INTO `travel_location` VALUES ('2089', '171', ',2,171,2089,', '3', '西诺尔兰', 'Vasternorrlands', 'xinuoerlan', 'Y');
INSERT INTO `travel_location` VALUES ('2090', '171', ',2,171,2090,', '3', '西约特兰', 'Vastra Gotalands', 'xiyuetelan', 'O');
INSERT INTO `travel_location` VALUES ('2091', '171', ',2,171,2091,', '3', '延雪平', 'Jonkopings', 'yanxueping', 'F');
INSERT INTO `travel_location` VALUES ('2092', '171', ',2,171,2092,', '3', '耶夫勒堡', 'Gavleborgs', 'yefulebao', 'X');
INSERT INTO `travel_location` VALUES ('2093', '171', ',2,171,2093,', '3', '耶姆特兰', 'Jamtlands', 'yemutelan', 'Z');
INSERT INTO `travel_location` VALUES ('2094', '172', ',2,172,2094,', '3', '阿尔高', 'Aargau', 'aergao', 'AG');
INSERT INTO `travel_location` VALUES ('2095', '172', ',2,172,2095,', '3', '巴塞尔城市', 'Basel－Sstadt', 'basaierchengshi', 'BS');
INSERT INTO `travel_location` VALUES ('2096', '172', ',2,172,2096,', '3', '巴塞尔乡村', 'Basel Landschaft', 'basaierxiangcun', 'BL');
INSERT INTO `travel_location` VALUES ('2097', '172', ',2,172,2097,', '3', '伯尔尼', 'Bern', 'boerni', 'BE');
INSERT INTO `travel_location` VALUES ('2098', '172', ',2,172,2098,', '3', '楚格', 'Zug', 'chuge', 'ZG');
INSERT INTO `travel_location` VALUES ('2099', '172', ',2,172,2099,', '3', '弗里堡', 'Freiburg', 'fulibao', 'FR');
INSERT INTO `travel_location` VALUES ('2100', '172', ',2,172,2100,', '3', '格拉鲁斯', 'Glarus', 'gelalusi', 'GL');
INSERT INTO `travel_location` VALUES ('2101', '172', ',2,172,2101,', '3', '格劳宾登', 'Graubünden', 'gelaobindeng', 'GR');
INSERT INTO `travel_location` VALUES ('2102', '172', ',2,172,2102,', '3', '卢塞恩', 'Luzern', 'lusaien', 'LU');
INSERT INTO `travel_location` VALUES ('2103', '172', ',2,172,2103,', '3', '洛桑', 'Lausanne', 'luosang', 'LA');
INSERT INTO `travel_location` VALUES ('2104', '172', ',2,172,2104,', '3', '纳沙泰尔', 'Neuchatel', 'nashataier', 'NE');
INSERT INTO `travel_location` VALUES ('2105', '172', ',2,172,2105,', '3', '内阿彭策尔', 'Appenzell Innerrhodn', 'neiapengceer', 'AI');
INSERT INTO `travel_location` VALUES ('2106', '172', ',2,172,2106,', '3', '日内瓦', 'Geneve', 'rineiwa', 'GE');
INSERT INTO `travel_location` VALUES ('2107', '172', ',2,172,2107,', '3', '汝拉', 'Jura', 'rula', 'JU');
INSERT INTO `travel_location` VALUES ('2108', '172', ',2,172,2108,', '3', '沙夫豪森', 'Schaffhausen', 'shafuhaosen', 'SH');
INSERT INTO `travel_location` VALUES ('2109', '172', ',2,172,2109,', '3', '上瓦尔登', 'Obwalden', 'shangwaerdeng', 'OW');
INSERT INTO `travel_location` VALUES ('2110', '172', ',2,172,2110,', '3', '圣加仑', 'St.Gallen', 'shengjialun', 'SG');
INSERT INTO `travel_location` VALUES ('2111', '172', ',2,172,2111,', '3', '施维茨', 'Schwyz', 'shiweici', 'SZ');
INSERT INTO `travel_location` VALUES ('2112', '172', ',2,172,2112,', '3', '苏黎世', 'Zurich', 'sulishi', 'ZH');
INSERT INTO `travel_location` VALUES ('2113', '172', ',2,172,2113,', '3', '索洛图恩', 'Solothurn', 'suoluotuen', 'SO');
INSERT INTO `travel_location` VALUES ('2114', '172', ',2,172,2114,', '3', '提契诺', 'Ticino', 'tiqinuo', 'TI');
INSERT INTO `travel_location` VALUES ('2115', '172', ',2,172,2115,', '3', '图尔高', 'Thurgau', 'tuergao', 'TG');
INSERT INTO `travel_location` VALUES ('2116', '172', ',2,172,2116,', '3', '瓦莱', 'Wallis', 'walai', 'VS');
INSERT INTO `travel_location` VALUES ('2117', '172', ',2,172,2117,', '3', '外阿彭策尔', 'Appenzell Ausserrhon', 'waiapengceer', 'AR');
INSERT INTO `travel_location` VALUES ('2118', '172', ',2,172,2118,', '3', '沃', 'Vaud', 'wo', 'VD');
INSERT INTO `travel_location` VALUES ('2119', '172', ',2,172,2119,', '3', '乌里', 'Uri', 'wuli', 'UR');
INSERT INTO `travel_location` VALUES ('2120', '172', ',2,172,2120,', '3', '下瓦尔登', 'Nidwalden', 'xiawaerdeng', 'NW');
INSERT INTO `travel_location` VALUES ('2121', '173', ',4,173,2121,', '3', '阿波帕', 'Apopa', 'abopa', 'APO');
INSERT INTO `travel_location` VALUES ('2122', '173', ',4,173,2122,', '3', '阿瓦查潘', 'Ahuachapan', 'awachapan', 'AH');
INSERT INTO `travel_location` VALUES ('2123', '173', ',4,173,2123,', '3', '滨海', 'Litoral', 'binhai', 'LI');
INSERT INTO `travel_location` VALUES ('2124', '173', ',4,173,2124,', '3', '查拉特南戈', 'Chalatenango', 'chalatenange', 'CH');
INSERT INTO `travel_location` VALUES ('2125', '173', ',4,173,2125,', '3', '德尔加多', 'Delgado', 'deerjiaduo', 'DE');
INSERT INTO `travel_location` VALUES ('2126', '173', ',4,173,2126,', '3', '基埃-恩特姆', 'Kie-Ntem', 'jiaientemu', 'KN');
INSERT INTO `travel_location` VALUES ('2127', '173', ',4,173,2127,', '3', '卡瓦尼亚斯', 'Cabanas', 'kawaniyasi', 'CA');
INSERT INTO `travel_location` VALUES ('2128', '173', ',4,173,2128,', '3', '库斯卡特兰', 'Cuscatlan', 'kusikatelan', 'CU');
INSERT INTO `travel_location` VALUES ('2129', '173', ',4,173,2129,', '3', '拉巴斯', 'La Paz', 'labasi', 'PZ');
INSERT INTO `travel_location` VALUES ('2130', '173', ',4,173,2130,', '3', '拉利伯塔德', 'La Libertad', 'lalibotade', 'LB');
INSERT INTO `travel_location` VALUES ('2131', '173', ',4,173,2131,', '3', '拉乌尼翁', 'La Union', 'lawuniweng', 'UN');
INSERT INTO `travel_location` VALUES ('2132', '173', ',4,173,2132,', '3', '梅基卡诺斯', 'Mejicanos', 'meijikanuosi', 'MEJ');
INSERT INTO `travel_location` VALUES ('2133', '173', ',4,173,2133,', '3', '莫拉桑', 'Morazan', 'molasang', 'MO');
INSERT INTO `travel_location` VALUES ('2134', '173', ',4,173,2134,', '3', '圣安娜', 'Santa Ana', 'shenganna', 'SA');
INSERT INTO `travel_location` VALUES ('2135', '173', ',4,173,2135,', '3', '圣米格尔', 'San Miguel', 'shengmigeer', 'SM');
INSERT INTO `travel_location` VALUES ('2136', '173', ',4,173,2136,', '3', '圣萨尔瓦多', 'San Salvador', 'shengsaerwaduo', 'SS');
INSERT INTO `travel_location` VALUES ('2137', '173', ',4,173,2137,', '3', '圣维森特', 'San Vicente', 'shengweisente', 'SV');
INSERT INTO `travel_location` VALUES ('2138', '173', ',4,173,2138,', '3', '松索纳特', 'Sonsonate', 'songsuonate', 'SO');
INSERT INTO `travel_location` VALUES ('2139', '173', ',4,173,2139,', '3', '索亚潘戈', 'Soyapango', 'suoyapange', 'SOY');
INSERT INTO `travel_location` VALUES ('2140', '173', ',4,173,2140,', '3', '韦莱-恩萨斯', 'Wele-Nzas', 'weilaiensasi', 'WN');
INSERT INTO `travel_location` VALUES ('2141', '173', ',4,173,2141,', '3', '乌苏卢坦', 'Usulutan', 'wusulutan', 'US');
INSERT INTO `travel_location` VALUES ('2142', '173', ',4,173,2142,', '3', '伊洛潘戈', 'Ilopango', 'yiluopange', 'IL');
INSERT INTO `travel_location` VALUES ('2143', '173', ',4,173,2143,', '3', '中南', 'Centro Sur', 'zhongnan', 'CS');
INSERT INTO `travel_location` VALUES ('2144', '175', ',2,175,2144,', '3', '贝尔格莱德', 'Beograd', 'beiergelaide', 'BEG');
INSERT INTO `travel_location` VALUES ('2145', '175', ',2,175,2145,', '3', '波德戈里察', 'Podgorica', 'bodegelicha', 'POD');
INSERT INTO `travel_location` VALUES ('2146', '175', ',2,175,2146,', '3', '克拉古涅瓦茨', 'Kragujevac', 'kelaguniewaci', 'KGV');
INSERT INTO `travel_location` VALUES ('2147', '175', ',2,175,2147,', '3', '尼什', 'Nis', 'nishi', 'INI');
INSERT INTO `travel_location` VALUES ('2148', '175', ',2,175,2148,', '3', '诺维萨德', 'Novi Sad', 'nuoweisade', 'NVS');
INSERT INTO `travel_location` VALUES ('2149', '175', ',2,175,2149,', '3', '普里什蒂纳', 'Pristina', 'pulishidina', 'PRN');
INSERT INTO `travel_location` VALUES ('2150', '175', ',2,175,2150,', '3', '苏博蒂察', 'Subotica', 'subodicha', 'SUB');
INSERT INTO `travel_location` VALUES ('2151', '175', ',2,175,2151,', '3', '泽蒙', 'Zemun', 'zemeng', 'ZEM');
INSERT INTO `travel_location` VALUES ('2152', '176', ',3,176,2152,', '3', '北部', 'Northern', 'beibu', 'N');
INSERT INTO `travel_location` VALUES ('2153', '176', ',3,176,2153,', '3', '东部', 'Eastern', 'dongbu', 'E');
INSERT INTO `travel_location` VALUES ('2154', '176', ',3,176,2154,', '3', '南部', 'Southern', 'nanbu', 'S');
INSERT INTO `travel_location` VALUES ('2155', '176', ',3,176,2155,', '3', '西部区', 'Western', 'xibuqu', 'W');
INSERT INTO `travel_location` VALUES ('2156', '177', ',3,177,2156,', '3', '达喀尔', 'Dakar', 'dakaer', 'DA');
INSERT INTO `travel_location` VALUES ('2157', '177', ',3,177,2157,', '3', '法蒂克', 'Fatick', 'fadike', 'FA');
INSERT INTO `travel_location` VALUES ('2158', '177', ',3,177,2158,', '3', '济金绍尔', 'Ziguinchor', 'jijinshaoer', 'ZI');
INSERT INTO `travel_location` VALUES ('2159', '177', ',3,177,2159,', '3', '捷斯', 'Thies', 'jiesi', 'TH');
INSERT INTO `travel_location` VALUES ('2160', '177', ',3,177,2160,', '3', '久尔贝勒', 'Diourbel', 'jiuerbeile', 'DI');
INSERT INTO `travel_location` VALUES ('2161', '177', ',3,177,2161,', '3', '考拉克', 'Kaolack', 'kaolake', 'KA');
INSERT INTO `travel_location` VALUES ('2162', '177', ',3,177,2162,', '3', '科尔达', 'Kolda', 'keerda', 'KO');
INSERT INTO `travel_location` VALUES ('2163', '177', ',3,177,2163,', '3', '卢加', 'Louga', 'lujia', 'LO');
INSERT INTO `travel_location` VALUES ('2164', '177', ',3,177,2164,', '3', '马塔姆', 'Matam', 'matamu', 'MA');
INSERT INTO `travel_location` VALUES ('2165', '177', ',3,177,2165,', '3', '圣路易', 'Saint-Louis', 'shengluyi', 'SL');
INSERT INTO `travel_location` VALUES ('2166', '177', ',3,177,2166,', '3', '坦巴昆达', 'Tambacounda', 'tanbakunda', 'TA');
INSERT INTO `travel_location` VALUES ('2167', '178', ',1,178,2167,', '3', '法马古斯塔', 'Famagusta', 'famagusita', '4');
INSERT INTO `travel_location` VALUES ('2168', '178', ',1,178,2168,', '3', '凯里尼亚', 'Kyrenia', 'kailiniya', '6');
INSERT INTO `travel_location` VALUES ('2169', '178', ',1,178,2169,', '3', '拉纳卡', 'Larnaca', 'lanaka', '3');
INSERT INTO `travel_location` VALUES ('2170', '178', ',1,178,2170,', '3', '利马索尔', 'Limassol', 'limasuoer', '2');
INSERT INTO `travel_location` VALUES ('2171', '178', ',1,178,2171,', '3', '尼科西亚', 'Nicosia', 'nikexiya', '1');
INSERT INTO `travel_location` VALUES ('2172', '178', ',1,178,2172,', '3', '帕福斯', 'Pafos', 'pafusi', '5');
INSERT INTO `travel_location` VALUES ('2173', '180', ',1,180,2173,', '3', '阿尔阿尔', 'Arar', 'aeraer', 'ARA');
INSERT INTO `travel_location` VALUES ('2174', '180', ',1,180,2174,', '3', '艾卜哈', 'Abha', 'aiboha', 'AHB');
INSERT INTO `travel_location` VALUES ('2175', '180', ',1,180,2175,', '3', '巴哈', 'Al Bahah', 'baha', 'BH');
INSERT INTO `travel_location` VALUES ('2176', '180', ',1,180,2176,', '3', '布赖代', 'Buraydah', 'bulaidai', 'BUR');
INSERT INTO `travel_location` VALUES ('2177', '180', ',1,180,2177,', '3', '达曼', 'Dammam', 'daman', 'DAM');
INSERT INTO `travel_location` VALUES ('2178', '180', ',1,180,2178,', '3', '哈费尔巴廷', 'Hafar al-Batin', 'hafeierbating', 'HBT');
INSERT INTO `travel_location` VALUES ('2179', '180', ',1,180,2179,', '3', '哈伊勒', 'Hail', 'hayile', 'HL');
INSERT INTO `travel_location` VALUES ('2180', '180', ',1,180,2180,', '3', '海米斯穆谢特', 'Khamis Mushayt', 'haimisimuxiete', 'KMX');
INSERT INTO `travel_location` VALUES ('2181', '180', ',1,180,2181,', '3', '海耶', 'Al-Kharj', 'haiye', 'AKH');
INSERT INTO `travel_location` VALUES ('2182', '180', ',1,180,2182,', '3', '胡富夫', 'Al-Hufuf', 'hufufu', 'HFF');
INSERT INTO `travel_location` VALUES ('2183', '180', ',1,180,2183,', '3', '吉达', 'Jiddah', 'jida', 'JED');
INSERT INTO `travel_location` VALUES ('2184', '180', ',1,180,2184,', '3', '吉赞', 'Jizan', 'jizan', 'JZ');
INSERT INTO `travel_location` VALUES ('2185', '180', ',1,180,2185,', '3', '利雅得', 'Riyad', 'liyade', 'RD');
INSERT INTO `travel_location` VALUES ('2186', '180', ',1,180,2186,', '3', '麦地那', 'Medina', 'maidina', 'MED');
INSERT INTO `travel_location` VALUES ('2187', '180', ',1,180,2187,', '3', '麦加', 'Makkah', 'maijia', 'ML');
INSERT INTO `travel_location` VALUES ('2188', '180', ',1,180,2188,', '3', '姆巴拉兹', 'Al-Mubarraz', 'mubalazi', 'MBR');
INSERT INTO `travel_location` VALUES ('2189', '180', ',1,180,2189,', '3', '纳季兰', 'Najran', 'najilan', 'NR');
INSERT INTO `travel_location` VALUES ('2190', '180', ',1,180,2190,', '3', '塞卡卡', 'Sakaka', 'saikaka', 'SAK');
INSERT INTO `travel_location` VALUES ('2191', '180', ',1,180,2191,', '3', '塔布克', 'Tabuk', 'tabuke', 'TB');
INSERT INTO `travel_location` VALUES ('2192', '180', ',1,180,2192,', '3', '塔伊夫', 'At Tarif', 'tayifu', 'TAR');
INSERT INTO `travel_location` VALUES ('2193', '180', ',1,180,2193,', '3', '延布', 'Yanbu al-Bahr', 'yanbu', 'YNB');
INSERT INTO `travel_location` VALUES ('2194', '180', ',1,180,2194,', '3', '朱拜勒', 'Al-Jubayl', 'zhubaile', 'JBI');
INSERT INTO `travel_location` VALUES ('2195', '189', ',1,189,2195,', '3', '阿努拉德普勒', 'Anuradhapura', 'anuladepule', 'ADP');
INSERT INTO `travel_location` VALUES ('2196', '189', ',1,189,2196,', '3', '安帕赖', 'Ampara', 'anpalai', 'AMP');
INSERT INTO `travel_location` VALUES ('2197', '189', ',1,189,2197,', '3', '巴杜勒', 'Badulla', 'badule', 'BAD');
INSERT INTO `travel_location` VALUES ('2198', '189', ',1,189,2198,', '3', '拜蒂克洛', 'Batticaloa', 'baidikeluo', 'BTC');
INSERT INTO `travel_location` VALUES ('2199', '189', ',1,189,2199,', '3', '波隆纳鲁沃', 'Polonnaruwa', 'bolongnaluwo', 'POL');
INSERT INTO `travel_location` VALUES ('2200', '189', ',1,189,2200,', '3', '汉班托特', 'Hambantota', 'hanbantuote', 'HBA');
INSERT INTO `travel_location` VALUES ('2201', '189', ',1,189,2201,', '3', '基里诺奇', 'Kilinochchi', 'jilinuoqi', 'KIL');
INSERT INTO `travel_location` VALUES ('2202', '189', ',1,189,2202,', '3', '加勒', 'Galle', 'jiale', 'GAL');
INSERT INTO `travel_location` VALUES ('2203', '189', ',1,189,2203,', '3', '加姆珀哈', 'Gampaha', 'jiamuha', 'GAM');
INSERT INTO `travel_location` VALUES ('2204', '189', ',1,189,2204,', '3', '贾夫纳', 'Jaffna', 'jiafuna', 'JAF');
INSERT INTO `travel_location` VALUES ('2205', '189', ',1,189,2205,', '3', '卡卢特勒', 'Kalutara', 'kalutele', 'KLT');
INSERT INTO `travel_location` VALUES ('2206', '189', ',1,189,2206,', '3', '凯格勒', 'Kegalle', 'kaigele', 'KEG');
INSERT INTO `travel_location` VALUES ('2207', '189', ',1,189,2207,', '3', '康提', 'Kandy', 'kangti', 'KAN');
INSERT INTO `travel_location` VALUES ('2208', '189', ',1,189,2208,', '3', '科伦坡', 'Colombo', 'kelunpo', 'CMB');
INSERT INTO `travel_location` VALUES ('2209', '189', ',1,189,2209,', '3', '库鲁内格勒', 'Kurunegala', 'kuluneigele', 'KUR');
INSERT INTO `travel_location` VALUES ('2210', '189', ',1,189,2210,', '3', '拉特纳普勒', 'Ratnapura', 'latenapule', 'RAT');
INSERT INTO `travel_location` VALUES ('2211', '189', ',1,189,2211,', '3', '马纳尔', 'Mannar', 'manaer', 'MAN');
INSERT INTO `travel_location` VALUES ('2212', '189', ',1,189,2212,', '3', '马特莱', 'Matale', 'matelai', 'MAT');
INSERT INTO `travel_location` VALUES ('2213', '189', ',1,189,2213,', '3', '马特勒', 'Matara', 'matele', 'MAA');
INSERT INTO `travel_location` VALUES ('2214', '189', ',1,189,2214,', '3', '莫讷勒格勒', 'Monaragala', 'molegele', 'MON');
INSERT INTO `travel_location` VALUES ('2215', '189', ',1,189,2215,', '3', '穆莱蒂武', 'Mullathivu', 'mulaidiwu', 'MUL');
INSERT INTO `travel_location` VALUES ('2216', '189', ',1,189,2216,', '3', '努沃勒埃利耶', 'Nuwara Eliya', 'nuwoleailiye', 'NUE');
INSERT INTO `travel_location` VALUES ('2217', '189', ',1,189,2217,', '3', '普塔勒姆', 'Puttalam', 'putalemu', 'PUT');
INSERT INTO `travel_location` VALUES ('2218', '189', ',1,189,2218,', '3', '亭可马里', 'Trincomalee', 'tingkemali', 'TRR');
INSERT INTO `travel_location` VALUES ('2219', '189', ',1,189,2219,', '3', '瓦武尼亚', 'Vavuniya', 'wawuniya', 'VAV');
INSERT INTO `travel_location` VALUES ('2220', '190', ',2,190,2220,', '3', '班斯卡-比斯特里察', 'Banskobystricky', 'bansikabisitelicha', 'BBY');
INSERT INTO `travel_location` VALUES ('2221', '190', ',2,190,2221,', '3', '布拉迪斯拉发', 'Bratislavsky', 'buladisilafa', 'BTS');
INSERT INTO `travel_location` VALUES ('2222', '190', ',2,190,2222,', '3', '科希策', 'Koricky', 'kexice', 'KOR');
INSERT INTO `travel_location` VALUES ('2223', '190', ',2,190,2223,', '3', '尼特拉', 'Nitriansky', 'nitela', 'NRA');
INSERT INTO `travel_location` VALUES ('2224', '190', ',2,190,2224,', '3', '普雷绍夫', 'Prerovsky', 'puleishaofu', 'POV');
INSERT INTO `travel_location` VALUES ('2225', '190', ',2,190,2225,', '3', '日利纳', 'Rilinsky', 'rilina', 'RIL');
INSERT INTO `travel_location` VALUES ('2226', '190', ',2,190,2226,', '3', '特尔纳瓦', 'Trnavsky', 'teernawa', 'TNA');
INSERT INTO `travel_location` VALUES ('2227', '190', ',2,190,2227,', '3', '特伦钦', 'Trenriansky', 'telunqin', 'TRE');
INSERT INTO `travel_location` VALUES ('2228', '191', ',2,191,2228,', '3', '奥巴尔诺-克拉', 'Obalno-kraska', 'aobaernuokela', 'OKR');
INSERT INTO `travel_location` VALUES ('2229', '191', ',2,191,2229,', '3', '奥斯雷德涅斯洛文', 'Osrednjeslovenska', 'aosileideniesiluowen', 'OSR');
INSERT INTO `travel_location` VALUES ('2230', '191', ',2,191,2230,', '3', '波德拉夫', 'Podravska', 'bodelafu', 'POD');
INSERT INTO `travel_location` VALUES ('2231', '191', ',2,191,2231,', '3', '波穆尔', 'Pomurska', 'bomuer', 'POM');
INSERT INTO `travel_location` VALUES ('2232', '191', ',2,191,2232,', '3', '多雷尼', 'Dolenjska', 'duoleini', 'DLJ');
INSERT INTO `travel_location` VALUES ('2233', '191', ',2,191,2233,', '3', '戈雷尼', 'Gorenjska', 'geleini', 'GSZ');
INSERT INTO `travel_location` VALUES ('2234', '191', ',2,191,2234,', '3', '戈里', 'Goriska', 'geli', 'GSK');
INSERT INTO `travel_location` VALUES ('2235', '191', ',2,191,2235,', '3', '科洛', 'Koroska', 'keluo', 'KOR');
INSERT INTO `travel_location` VALUES ('2236', '191', ',2,191,2236,', '3', '诺特拉尼', 'Notranjsko-kraska', 'nuotelani', 'NKR');
INSERT INTO `travel_location` VALUES ('2237', '191', ',2,191,2237,', '3', '萨维尼', 'Savinjska', 'saweini', 'SAV');
INSERT INTO `travel_location` VALUES ('2238', '191', ',2,191,2238,', '3', '斯波德涅波萨夫', 'Spodnjeposavska', 'sibodeniebosafu', 'SPO');
INSERT INTO `travel_location` VALUES ('2239', '191', ',2,191,2239,', '3', '扎萨夫', 'Zasavska', 'zhasafu', 'ZAS');
INSERT INTO `travel_location` VALUES ('2240', '194', ',3,194,2240,', '3', '北部', 'Ash-Shamaliyah', 'beibu', 'ASH');
INSERT INTO `travel_location` VALUES ('2241', '194', ',3,194,2241,', '3', '赤道', 'Al-Istiwaiyah', 'chidao', 'SIS');
INSERT INTO `travel_location` VALUES ('2242', '194', ',3,194,2242,', '3', '达尔富尔', 'Darfur', 'daerfuer', 'SDA');
INSERT INTO `travel_location` VALUES ('2243', '194', ',3,194,2243,', '3', '东部', 'Ash-Sharqiyah', 'dongbu', 'SHA');
INSERT INTO `travel_location` VALUES ('2244', '194', ',3,194,2244,', '3', '加扎勒河', 'Bahr al-Ghazal', 'jiazhalehe', 'SBG');
INSERT INTO `travel_location` VALUES ('2245', '194', ',3,194,2245,', '3', '喀土穆', 'Al-Khartum', 'katumu', 'KRT');
INSERT INTO `travel_location` VALUES ('2246', '194', ',3,194,2246,', '3', '科尔多凡', 'Kurdufan', 'keerduofan', 'GKU');
INSERT INTO `travel_location` VALUES ('2247', '194', ',3,194,2247,', '3', '上尼罗', 'Aali an-Nil', 'shangniluo', 'ANB');
INSERT INTO `travel_location` VALUES ('2248', '194', ',3,194,2248,', '3', '中部', 'Al Wasta', 'zhongbu', 'WDH');
INSERT INTO `travel_location` VALUES ('2249', '195', ',5,195,2249,', '3', '布罗科蓬多', 'Brokopondo', 'buluokepengduo', 'BR');
INSERT INTO `travel_location` VALUES ('2250', '195', ',5,195,2250,', '3', '科罗尼', 'Coronie', 'keluoni', 'CR');
INSERT INTO `travel_location` VALUES ('2251', '195', ',5,195,2251,', '3', '科默韦讷', 'Commewijne', 'kemowei', 'CM');
INSERT INTO `travel_location` VALUES ('2252', '195', ',5,195,2252,', '3', '马罗韦讷', 'Marowijne', 'maluowei', 'MA');
INSERT INTO `travel_location` VALUES ('2253', '195', ',5,195,2253,', '3', '尼克里', 'Nickerie', 'nikeli', 'NI');
INSERT INTO `travel_location` VALUES ('2254', '195', ',5,195,2254,', '3', '帕拉', 'Para', 'pala', 'PA');
INSERT INTO `travel_location` VALUES ('2255', '195', ',5,195,2255,', '3', '帕拉马里博', 'Paramaribo', 'palamalibo', 'PM');
INSERT INTO `travel_location` VALUES ('2256', '195', ',5,195,2256,', '3', '萨拉马卡', 'Saramacca', 'salamaka', 'SA');
INSERT INTO `travel_location` VALUES ('2257', '195', ',5,195,2257,', '3', '瓦尼卡', 'Wanica', 'wanika', 'WA');
INSERT INTO `travel_location` VALUES ('2258', '195', ',5,195,2258,', '3', '西帕里韦尼', 'Sipaliwini', 'xipaliweini', 'SI');
INSERT INTO `travel_location` VALUES ('2259', '196', ',6,196,2259,', '3', '瓜达尔卡纳尔', 'Guadalcanal', 'guadaerkanaer', 'GC');
INSERT INTO `travel_location` VALUES ('2260', '196', ',6,196,2260,', '3', '霍尼亚拉', 'Honiara', 'huoniyala', 'HO');
INSERT INTO `travel_location` VALUES ('2261', '196', ',6,196,2261,', '3', '拉纳尔和贝罗纳', 'Rennell and Bellona', 'lanaerhebeiluona', 'RB');
INSERT INTO `travel_location` VALUES ('2262', '196', ',6,196,2262,', '3', '马基拉', 'Makira', 'majila', 'MK');
INSERT INTO `travel_location` VALUES ('2263', '196', ',6,196,2263,', '3', '马莱塔', 'Malaita', 'malaita', 'ML');
INSERT INTO `travel_location` VALUES ('2264', '196', ',6,196,2264,', '3', '乔伊索', 'Choiseul', 'qiaoyisuo', 'CH');
INSERT INTO `travel_location` VALUES ('2265', '196', ',6,196,2265,', '3', '泰莫图', 'Temotu', 'taimotu', 'TM');
INSERT INTO `travel_location` VALUES ('2266', '196', ',6,196,2266,', '3', '西部', 'Western', 'xibu', 'WE');
INSERT INTO `travel_location` VALUES ('2267', '196', ',6,196,2267,', '3', '伊萨贝尔', 'Isabel', 'yisabeier', 'IS');
INSERT INTO `travel_location` VALUES ('2268', '196', ',6,196,2268,', '3', '中部群岛', 'Central Islands', 'zhongbuqundao', 'CE');
INSERT INTO `travel_location` VALUES ('2269', '198', ',1,198,2269,', '3', '杜尚别', 'Dushanbe', 'dushangbie', 'DYU');
INSERT INTO `travel_location` VALUES ('2270', '198', ',1,198,2270,', '3', '霍罗格', 'Khorugh', 'huoluoge', 'KHO');
INSERT INTO `travel_location` VALUES ('2271', '198', ',1,198,2271,', '3', '卡尼巴达姆', 'Kanibadam', 'kanibadamu', 'KAN');
INSERT INTO `travel_location` VALUES ('2272', '198', ',1,198,2272,', '3', '科法尔尼洪', 'Kofarnihon', 'kefaernihong', 'KOF');
INSERT INTO `travel_location` VALUES ('2273', '198', ',1,198,2273,', '3', '苦盏', 'Khujand', 'kuzhan', 'KHU');
INSERT INTO `travel_location` VALUES ('2274', '198', ',1,198,2274,', '3', '库尔干-秋别', 'Kurgan-Tjube', 'kuerganqiubie', 'KTJ');
INSERT INTO `travel_location` VALUES ('2275', '198', ',1,198,2275,', '3', '库洛布', 'Kulob', 'kuluobu', 'KLB');
INSERT INTO `travel_location` VALUES ('2276', '198', ',1,198,2276,', '3', '洛贡', 'Rogun', 'luogong', 'RGU');
INSERT INTO `travel_location` VALUES ('2277', '198', ',1,198,2277,', '3', '努雷克', 'Nurek', 'nuleike', 'NUR');
INSERT INTO `travel_location` VALUES ('2278', '198', ',1,198,2278,', '3', '彭吉肯特', 'Pendzhikent', 'pengjikente', 'PJK');
INSERT INTO `travel_location` VALUES ('2279', '198', ',1,198,2279,', '3', '萨班特', 'Sarband', 'sabante', 'SBA');
INSERT INTO `travel_location` VALUES ('2280', '198', ',1,198,2280,', '3', '塔博沙尔', 'Taboshar', 'taboshaer', 'TBS');
INSERT INTO `travel_location` VALUES ('2281', '198', ',1,198,2281,', '3', '图尔孙扎德', 'Tursunzade', 'tuersunzhade', 'TSZ');
INSERT INTO `travel_location` VALUES ('2282', '198', ',1,198,2282,', '3', '乌拉秋别', 'Ura-Tjube', 'wulaqiubie', 'UTJ');
INSERT INTO `travel_location` VALUES ('2283', '198', ',1,198,2283,', '3', '伊斯法拉', 'Isfara', 'yisifala', 'ISF');
INSERT INTO `travel_location` VALUES ('2284', '199', ',1,199,2284,', '3', '安纳乍能', 'Amnat Charoen', 'annazhaneng', '37');
INSERT INTO `travel_location` VALUES ('2285', '199', ',1,199,2285,', '3', '巴蜀', 'Prachuap Khiri Khan', 'bashu', '77');
INSERT INTO `travel_location` VALUES ('2286', '199', ',1,199,2286,', '3', '巴吞他尼', 'Pathum Thani', 'batuntani', '13');
INSERT INTO `travel_location` VALUES ('2287', '199', ',1,199,2287,', '3', '巴真', 'Prachin Buri', 'bazhen', '25');
INSERT INTO `travel_location` VALUES ('2288', '199', ',1,199,2288,', '3', '北碧', 'Kanchanaburi', 'beibi', '71');
INSERT INTO `travel_location` VALUES ('2289', '199', ',1,199,2289,', '3', '北标', 'Saraburi', 'beibiao', '19');
INSERT INTO `travel_location` VALUES ('2290', '199', ',1,199,2290,', '3', '北大年', 'Pattani', 'beidanian', '94');
INSERT INTO `travel_location` VALUES ('2291', '199', ',1,199,2291,', '3', '北揽', 'Samut Prakan', 'beilan', '11');
INSERT INTO `travel_location` VALUES ('2292', '199', ',1,199,2292,', '3', '北榄坡', 'Nakhon Sawan', 'beipo', '60');
INSERT INTO `travel_location` VALUES ('2293', '199', ',1,199,2293,', '3', '北柳', 'Chachoengsao', 'beiliu', '24');
INSERT INTO `travel_location` VALUES ('2294', '199', ',1,199,2294,', '3', '碧差汶', 'Phetchabun', 'bicha', '76');
INSERT INTO `travel_location` VALUES ('2295', '199', ',1,199,2295,', '3', '博达伦', 'Phatthalung', 'bodalun', '93');
INSERT INTO `travel_location` VALUES ('2296', '199', ',1,199,2296,', '3', '猜那', 'Chai Nat', 'caina', '18');
INSERT INTO `travel_location` VALUES ('2297', '199', ',1,199,2297,', '3', '猜也奔', 'Chaiyaphum', 'caiyeben', '36');
INSERT INTO `travel_location` VALUES ('2298', '199', ',1,199,2298,', '3', '程逸', 'Uttaradit', 'chengyi', '53');
INSERT INTO `travel_location` VALUES ('2299', '199', ',1,199,2299,', '3', '春蓬', 'Chumphon', 'chunpeng', '86');
INSERT INTO `travel_location` VALUES ('2300', '199', ',1,199,2300,', '3', '春武里', 'Chon Buri', 'chunwuli', '20');
INSERT INTO `travel_location` VALUES ('2301', '199', ',1,199,2301,', '3', '达', 'Tak', 'da', '63');
INSERT INTO `travel_location` VALUES ('2302', '199', ',1,199,2302,', '3', '达叻', 'Trat', 'da', '23');
INSERT INTO `travel_location` VALUES ('2303', '199', ',1,199,2303,', '3', '大城', 'Phra Nakhon Si Ayutthaya', 'dacheng', '14');
INSERT INTO `travel_location` VALUES ('2304', '199', ',1,199,2304,', '3', '董里', 'Trang', 'dongli', '92');
INSERT INTO `travel_location` VALUES ('2305', '199', ',1,199,2305,', '3', '佛丕', 'Phetchaburi', 'fo', '78');
INSERT INTO `travel_location` VALUES ('2306', '199', ',1,199,2306,', '3', '佛统', 'Nakhon Pathom', 'fotong', '73');
INSERT INTO `travel_location` VALUES ('2307', '199', ',1,199,2307,', '3', '甘烹碧', 'Kamphaeng Phet', 'ganpengbi', '62');
INSERT INTO `travel_location` VALUES ('2308', '199', ',1,199,2308,', '3', '红统', 'Ang Thong', 'hongtong', '15');
INSERT INTO `travel_location` VALUES ('2309', '199', ',1,199,2309,', '3', '华富里', 'Lop Buri', 'huafuli', '16');
INSERT INTO `travel_location` VALUES ('2310', '199', ',1,199,2310,', '3', '加拉信', 'Kalasin', 'jialaxin', '46');
INSERT INTO `travel_location` VALUES ('2311', '199', ',1,199,2311,', '3', '甲米', 'Krabi', 'jiami', '81');
INSERT INTO `travel_location` VALUES ('2312', '199', ',1,199,2312,', '3', '尖竹汶', 'Chanthaburi', 'jianzhu', '22');
INSERT INTO `travel_location` VALUES ('2313', '199', ',1,199,2313,', '3', '孔敬', 'Khon Kaen', 'kongjing', '40');
INSERT INTO `travel_location` VALUES ('2314', '199', ',1,199,2314,', '3', '拉农', 'Rayong', 'lanong', '21');
INSERT INTO `travel_location` VALUES ('2315', '199', ',1,199,2315,', '3', '廊开', 'Nong Khai', 'langkai', '43');
INSERT INTO `travel_location` VALUES ('2316', '199', ',1,199,2316,', '3', '廊莫那浦', 'Nong Bua Lamphu', 'langmonapu', '39');
INSERT INTO `travel_location` VALUES ('2317', '199', ',1,199,2317,', '3', '叻丕', 'Ratchaburi', '', '70');
INSERT INTO `travel_location` VALUES ('2318', '199', ',1,199,2318,', '3', '黎', 'Loei', 'li', '42');
INSERT INTO `travel_location` VALUES ('2319', '199', ',1,199,2319,', '3', '黎逸', 'Roi Et', 'liyi', '45');
INSERT INTO `travel_location` VALUES ('2320', '199', ',1,199,2320,', '3', '龙仔厝', 'Samut Sakhon', 'longzi', '74');
INSERT INTO `travel_location` VALUES ('2321', '199', ',1,199,2321,', '3', '罗勇', 'Ranong', 'luoyong', '85');
INSERT INTO `travel_location` VALUES ('2322', '199', ',1,199,2322,', '3', '洛坤', 'Nakhon Si Thammarat', 'luokun', '80');
INSERT INTO `travel_location` VALUES ('2323', '199', ',1,199,2323,', '3', '玛哈沙拉堪', 'Maha Sarakham', 'mahashalakan', '44');
INSERT INTO `travel_location` VALUES ('2324', '199', ',1,199,2324,', '3', '曼谷', 'Bangkok', 'mangu', '10');
INSERT INTO `travel_location` VALUES ('2325', '199', ',1,199,2325,', '3', '莫达汉', 'Mukdahan', 'modahan', '49');
INSERT INTO `travel_location` VALUES ('2326', '199', ',1,199,2326,', '3', '那空那育', 'Nakhon Nayok', 'nakongnayu', '26');
INSERT INTO `travel_location` VALUES ('2327', '199', ',1,199,2327,', '3', '那空帕农', 'Nakhon Phanom', 'nakongpanong', '48');
INSERT INTO `travel_location` VALUES ('2328', '199', ',1,199,2328,', '3', '难', 'Nan', 'nan', '55');
INSERT INTO `travel_location` VALUES ('2329', '199', ',1,199,2329,', '3', '南奔', 'Lamphun', 'nanben', '51');
INSERT INTO `travel_location` VALUES ('2330', '199', ',1,199,2330,', '3', '暖武里', 'Nonthaburi', 'nuanwuli', '12');
INSERT INTO `travel_location` VALUES ('2331', '199', ',1,199,2331,', '3', '帕', 'Phrae', 'pa', '54');
INSERT INTO `travel_location` VALUES ('2332', '199', ',1,199,2332,', '3', '帕尧', 'Phayao', 'payao', '56');
INSERT INTO `travel_location` VALUES ('2333', '199', ',1,199,2333,', '3', '攀牙', 'Phangnga', 'panya', '82');
INSERT INTO `travel_location` VALUES ('2334', '199', ',1,199,2334,', '3', '彭世洛', 'Phitsanulok', 'pengshiluo', '65');
INSERT INTO `travel_location` VALUES ('2335', '199', ',1,199,2335,', '3', '披集', 'Phichit', 'piji', '66');
INSERT INTO `travel_location` VALUES ('2336', '199', ',1,199,2336,', '3', '普吉', 'Phuket', 'puji', '83');
INSERT INTO `travel_location` VALUES ('2337', '199', ',1,199,2337,', '3', '清莱', 'Chiang Rai', 'qinglai', '57');
INSERT INTO `travel_location` VALUES ('2338', '199', ',1,199,2338,', '3', '清迈', 'Chiang Mai', 'qingmai', '50');
INSERT INTO `travel_location` VALUES ('2339', '199', ',1,199,2339,', '3', '色军', 'Sakon Nakhon', 'sejun', '47');
INSERT INTO `travel_location` VALUES ('2340', '199', ',1,199,2340,', '3', '沙敦', 'Satun', 'shadun', '91');
INSERT INTO `travel_location` VALUES ('2341', '199', ',1,199,2341,', '3', '沙缴', 'Sa Kaeo', 'shajiao', '27');
INSERT INTO `travel_location` VALUES ('2342', '199', ',1,199,2342,', '3', '四色菊', 'Si sa ket', 'siseju', '33');
INSERT INTO `travel_location` VALUES ('2343', '199', ',1,199,2343,', '3', '宋卡', 'Songkhla', 'songka', '90');
INSERT INTO `travel_location` VALUES ('2344', '199', ',1,199,2344,', '3', '素可泰', 'Sukhothai', 'suketai', '64');
INSERT INTO `travel_location` VALUES ('2345', '199', ',1,199,2345,', '3', '素叻', 'Surat Thani', 'su', '84');
INSERT INTO `travel_location` VALUES ('2346', '199', ',1,199,2346,', '3', '素林', 'Surin', 'sulin', '32');
INSERT INTO `travel_location` VALUES ('2347', '199', ',1,199,2347,', '3', '素攀武里', 'Suphan Buri', 'supanwuli', '72');
INSERT INTO `travel_location` VALUES ('2348', '199', ',1,199,2348,', '3', '陶公', 'Narathiwat', 'taogong', '96');
INSERT INTO `travel_location` VALUES ('2349', '199', ',1,199,2349,', '3', '乌隆', 'Udon Thani', 'wulong', '41');
INSERT INTO `travel_location` VALUES ('2350', '199', ',1,199,2350,', '3', '乌泰他尼', 'Uthai Thani', 'wutaitani', '61');
INSERT INTO `travel_location` VALUES ('2351', '199', ',1,199,2351,', '3', '乌汶', 'Ubon Ratchathani', 'wu', '34');
INSERT INTO `travel_location` VALUES ('2352', '199', ',1,199,2352,', '3', '武里南', 'Buri Ram', 'wulinan', '31');
INSERT INTO `travel_location` VALUES ('2353', '199', ',1,199,2353,', '3', '信武里', 'Sing Buri', 'xinwuli', '17');
INSERT INTO `travel_location` VALUES ('2354', '199', ',1,199,2354,', '3', '耶梭通', 'Yasothon', 'yesuotong', '35');
INSERT INTO `travel_location` VALUES ('2355', '199', ',1,199,2355,', '3', '也拉', 'Yala', 'yela', '95');
INSERT INTO `travel_location` VALUES ('2356', '199', ',1,199,2356,', '3', '夜丰颂', 'Mae Hong Son', 'yefengsong', '58');
INSERT INTO `travel_location` VALUES ('2357', '199', ',1,199,2357,', '3', '夜功', 'Samut Songkhram', 'yegong', '75');
INSERT INTO `travel_location` VALUES ('2358', '200', ',3,200,2358,', '3', '阿鲁沙', 'Arusha', 'alusha', 'AR');
INSERT INTO `travel_location` VALUES ('2359', '200', ',3,200,2359,', '3', '奔巴北', 'Kaskazini Pemba', 'benbabei', 'PN');
INSERT INTO `travel_location` VALUES ('2360', '200', ',3,200,2360,', '3', '奔巴南', 'Kusini Pemba', 'benbanan', 'PS');
INSERT INTO `travel_location` VALUES ('2361', '200', ',3,200,2361,', '3', '滨海', 'Pwani', 'binhai', 'PW');
INSERT INTO `travel_location` VALUES ('2362', '200', ',3,200,2362,', '3', '达累斯萨拉姆', 'Dar es Salaam', 'daleisisalamu', 'DS');
INSERT INTO `travel_location` VALUES ('2363', '200', ',3,200,2363,', '3', '多多马', 'Dodoma', 'duoduoma', 'DO');
INSERT INTO `travel_location` VALUES ('2364', '200', ',3,200,2364,', '3', '基戈马', 'Kigoma', 'jigema', 'KI');
INSERT INTO `travel_location` VALUES ('2365', '200', ',3,200,2365,', '3', '卡盖拉', 'Kagera', 'kagaila', 'KA');
INSERT INTO `travel_location` VALUES ('2366', '200', ',3,200,2366,', '3', '林迪', 'Lindi', 'lindi', 'LN');
INSERT INTO `travel_location` VALUES ('2367', '200', ',3,200,2367,', '3', '鲁夸', 'Rukwa', 'lukua', 'RK');
INSERT INTO `travel_location` VALUES ('2368', '200', ',3,200,2368,', '3', '鲁伍马', 'Ruvuma', 'luwuma', 'RV');
INSERT INTO `travel_location` VALUES ('2369', '200', ',3,200,2369,', '3', '马腊', 'Mara', 'mala', 'MR');
INSERT INTO `travel_location` VALUES ('2370', '200', ',3,200,2370,', '3', '曼亚拉', 'Manyara', 'manyala', 'MY');
INSERT INTO `travel_location` VALUES ('2371', '200', ',3,200,2371,', '3', '莫洛戈罗', 'Morogoro', 'moluogeluo', 'MO');
INSERT INTO `travel_location` VALUES ('2372', '200', ',3,200,2372,', '3', '姆贝亚', 'Mbeya', 'mubeiya', 'MB');
INSERT INTO `travel_location` VALUES ('2373', '200', ',3,200,2373,', '3', '姆特瓦拉', 'Mtwara', 'mutewala', 'MT');
INSERT INTO `travel_location` VALUES ('2374', '200', ',3,200,2374,', '3', '姆万扎', 'Mwanza', 'muwanzha', 'MW');
INSERT INTO `travel_location` VALUES ('2375', '200', ',3,200,2375,', '3', '乞力马扎罗', 'Kilimanjaro', 'qilimazhaluo', 'KJ');
INSERT INTO `travel_location` VALUES ('2376', '200', ',3,200,2376,', '3', '桑给巴尔', 'Zanzibar', 'sanggeibaer', 'ZN');
INSERT INTO `travel_location` VALUES ('2377', '200', ',3,200,2377,', '3', '桑给巴尔北', 'Kaskazini Unguja', 'sanggeibaerbei', 'UN');
INSERT INTO `travel_location` VALUES ('2378', '200', ',3,200,2378,', '3', '桑给巴尔南', 'Kusini Unguja', 'sanggeibaernan', 'US');
INSERT INTO `travel_location` VALUES ('2379', '200', ',3,200,2379,', '3', '桑给巴尔市和西', 'Mjini Magharibi', 'sanggeibaershihexi', 'MM');
INSERT INTO `travel_location` VALUES ('2380', '200', ',3,200,2380,', '3', '塔波拉', 'Tabora', 'tabola', 'TB');
INSERT INTO `travel_location` VALUES ('2381', '200', ',3,200,2381,', '3', '坦噶', 'Tanga', 'tanga', 'TN');
INSERT INTO `travel_location` VALUES ('2382', '200', ',3,200,2382,', '3', '辛吉达', 'Singida', 'xinjida', 'SI');
INSERT INTO `travel_location` VALUES ('2383', '200', ',3,200,2383,', '3', '欣延加', 'Shinyanga', 'xinyanjia', 'SH');
INSERT INTO `travel_location` VALUES ('2384', '200', ',3,200,2384,', '3', '伊林加', 'Iringa', 'yilinjia', 'IR');
INSERT INTO `travel_location` VALUES ('2385', '201', ',6,201,2385,', '3', '埃瓦', 'Eua', 'aiwa', 'E');
INSERT INTO `travel_location` VALUES ('2386', '201', ',6,201,2386,', '3', '哈派', 'Haapai', 'hapai', 'H');
INSERT INTO `travel_location` VALUES ('2387', '201', ',6,201,2387,', '3', '纽阿斯', 'Niuas', 'niuasi', 'N');
INSERT INTO `travel_location` VALUES ('2388', '201', ',6,201,2388,', '3', '汤加塔布', 'Tongatapu', 'tangjiatabu', 'T');
INSERT INTO `travel_location` VALUES ('2389', '201', ',6,201,2389,', '3', '瓦瓦乌', 'Vavau', 'wawawu', 'V');
INSERT INTO `travel_location` VALUES ('2390', '205', ',3,205,2390,', '3', '艾尔亚奈', 'Ariana', 'aieryanai', 'AR');
INSERT INTO `travel_location` VALUES ('2391', '205', ',3,205,2391,', '3', '巴杰', 'Beja', 'bajie', 'BJ');
INSERT INTO `travel_location` VALUES ('2392', '205', ',3,205,2392,', '3', '本阿鲁斯', 'Ben Arous', 'benalusi', 'BA');
INSERT INTO `travel_location` VALUES ('2393', '205', ',3,205,2393,', '3', '比塞大', 'Bizerte', 'bisaida', 'BI');
INSERT INTO `travel_location` VALUES ('2394', '205', ',3,205,2394,', '3', '吉比利', 'Kebili', 'jibili', 'KB');
INSERT INTO `travel_location` VALUES ('2395', '205', ',3,205,2395,', '3', '加贝斯', 'Gabes', 'jiabeisi', 'GB');
INSERT INTO `travel_location` VALUES ('2396', '205', ',3,205,2396,', '3', '加夫萨', 'Gafsa', 'jiafusa', 'GF');
INSERT INTO `travel_location` VALUES ('2397', '205', ',3,205,2397,', '3', '坚杜拜', 'Jendouba', 'jiandubai', 'JE');
INSERT INTO `travel_location` VALUES ('2398', '205', ',3,205,2398,', '3', '卡夫', 'Le Kef', 'kafu', 'LK');
INSERT INTO `travel_location` VALUES ('2399', '205', ',3,205,2399,', '3', '卡塞林', 'Kasserine', 'kasailin', 'KS');
INSERT INTO `travel_location` VALUES ('2400', '205', ',3,205,2400,', '3', '凯鲁万', 'Kairouan', 'kailuwan', 'KR');
INSERT INTO `travel_location` VALUES ('2401', '205', ',3,205,2401,', '3', '马赫迪耶', 'Mahdia', 'mahediye', 'MH');
INSERT INTO `travel_location` VALUES ('2402', '205', ',3,205,2402,', '3', '马努巴', 'Manouba', 'manuba', 'MN');
INSERT INTO `travel_location` VALUES ('2403', '205', ',3,205,2403,', '3', '梅德宁', 'Medenine', 'meidening', 'ME');
INSERT INTO `travel_location` VALUES ('2404', '205', ',3,205,2404,', '3', '莫纳斯提尔', 'Monastir', 'monasitier', 'MO');
INSERT INTO `travel_location` VALUES ('2405', '205', ',3,205,2405,', '3', '纳布勒', 'Nabeul', 'nabule', 'NA');
INSERT INTO `travel_location` VALUES ('2406', '205', ',3,205,2406,', '3', '斯法克斯', 'Sfax', 'sifakesi', 'SF');
INSERT INTO `travel_location` VALUES ('2407', '205', ',3,205,2407,', '3', '苏塞', 'Sousse', 'susai', 'SO');
INSERT INTO `travel_location` VALUES ('2408', '205', ',3,205,2408,', '3', '泰塔温', 'Tataouine', 'taitawen', 'TA');
INSERT INTO `travel_location` VALUES ('2409', '205', ',3,205,2409,', '3', '突尼斯', 'Tunis', 'tunisi', 'TU');
INSERT INTO `travel_location` VALUES ('2410', '205', ',3,205,2410,', '3', '托泽尔', 'Tozeur', 'tuozeer', 'TO');
INSERT INTO `travel_location` VALUES ('2411', '205', ',3,205,2411,', '3', '西迪布济德', 'Sidi Bouzid', 'xidibujide', 'SD');
INSERT INTO `travel_location` VALUES ('2412', '205', ',3,205,2412,', '3', '锡勒亚奈', 'Siliana', 'xileyanai', 'SL');
INSERT INTO `travel_location` VALUES ('2413', '205', ',3,205,2413,', '3', '宰格万', 'Zaghouan', 'zaigewan', 'ZA');
INSERT INTO `travel_location` VALUES ('2414', '207', ',1,207,2414,', '3', '阿达纳', 'Adana', 'adana', 'ADA');
INSERT INTO `travel_location` VALUES ('2415', '207', ',1,207,2415,', '3', '阿德亚曼', 'Adiyaman', 'adeyaman', 'ADI');
INSERT INTO `travel_location` VALUES ('2416', '207', ',1,207,2416,', '3', '阿尔达罕', 'Ardahan', 'aerdahan', 'ARD');
INSERT INTO `travel_location` VALUES ('2417', '207', ',1,207,2417,', '3', '阿尔特温', 'Artvin', 'aertewen', 'ART');
INSERT INTO `travel_location` VALUES ('2418', '207', ',1,207,2418,', '3', '阿菲永', 'Afyon', 'afeiyong', 'AFY');
INSERT INTO `travel_location` VALUES ('2419', '207', ',1,207,2419,', '3', '阿克萨赖', 'Aksaray', 'akesalai', 'AKS');
INSERT INTO `travel_location` VALUES ('2420', '207', ',1,207,2420,', '3', '阿勒', 'Agri', 'ale', 'AGR');
INSERT INTO `travel_location` VALUES ('2421', '207', ',1,207,2421,', '3', '阿马西亚', 'Amasya', 'amaxiya', 'AMA');
INSERT INTO `travel_location` VALUES ('2422', '207', ',1,207,2422,', '3', '埃迪尔内', 'Edirne', 'aidiernei', 'EDI');
INSERT INTO `travel_location` VALUES ('2423', '207', ',1,207,2423,', '3', '埃尔津詹', 'Erzincan', 'aierjinzhan', 'EZC');
INSERT INTO `travel_location` VALUES ('2424', '207', ',1,207,2424,', '3', '埃尔祖鲁姆', 'Erzurum', 'aierzulumu', 'EZR');
INSERT INTO `travel_location` VALUES ('2425', '207', ',1,207,2425,', '3', '埃拉泽', 'Elazig', 'ailaze', 'ELA');
INSERT INTO `travel_location` VALUES ('2426', '207', ',1,207,2426,', '3', '埃斯基谢希尔', 'Eskisehir', 'aisijixiexier', 'ESK');
INSERT INTO `travel_location` VALUES ('2427', '207', ',1,207,2427,', '3', '艾登', 'Aydin', 'aideng', 'AYI');
INSERT INTO `travel_location` VALUES ('2428', '207', ',1,207,2428,', '3', '安卡拉', 'Ankara', 'ankala', 'ANK');
INSERT INTO `travel_location` VALUES ('2429', '207', ',1,207,2429,', '3', '安塔利亚', 'Antalya', 'antaliya', 'ANT');
INSERT INTO `travel_location` VALUES ('2430', '207', ',1,207,2430,', '3', '奥尔杜', 'Ordu', 'aoerdu', 'ORD');
INSERT INTO `travel_location` VALUES ('2431', '207', ',1,207,2431,', '3', '巴尔腾', 'Bartin', 'baerteng', 'BAR');
INSERT INTO `travel_location` VALUES ('2432', '207', ',1,207,2432,', '3', '巴勒克埃西尔', 'Balikesir', 'balekeaixier', 'BAL');
INSERT INTO `travel_location` VALUES ('2433', '207', ',1,207,2433,', '3', '巴特曼', 'Batman', 'bateman', 'BAT');
INSERT INTO `travel_location` VALUES ('2434', '207', ',1,207,2434,', '3', '巴伊布尔特', 'Bayburt', 'bayibuerte', 'BAY');
INSERT INTO `travel_location` VALUES ('2435', '207', ',1,207,2435,', '3', '比莱吉克', 'Bilecik', 'bilaijike', 'BIL');
INSERT INTO `travel_location` VALUES ('2436', '207', ',1,207,2436,', '3', '比特利斯', 'Bitlis', 'bitelisi', 'BIT');
INSERT INTO `travel_location` VALUES ('2437', '207', ',1,207,2437,', '3', '宾格尔', 'Bingol', 'bingeer', 'BIN');
INSERT INTO `travel_location` VALUES ('2438', '207', ',1,207,2438,', '3', '博卢', 'Bolu', 'bolu', 'BOL');
INSERT INTO `travel_location` VALUES ('2439', '207', ',1,207,2439,', '3', '布尔杜尔', 'Burdur', 'buerduer', 'BRD');
INSERT INTO `travel_location` VALUES ('2440', '207', ',1,207,2440,', '3', '布尔萨', 'Bursa', 'buersa', 'BRS');
INSERT INTO `travel_location` VALUES ('2441', '207', ',1,207,2441,', '3', '昌克勒', 'Cankiri', 'changkele', 'CKR');
INSERT INTO `travel_location` VALUES ('2442', '207', ',1,207,2442,', '3', '代尼兹利', 'Denizli', 'dainizili', 'DEN');
INSERT INTO `travel_location` VALUES ('2443', '207', ',1,207,2443,', '3', '迪亚巴克尔', 'Diyarbakir', 'diyabakeer', 'DIY');
INSERT INTO `travel_location` VALUES ('2444', '207', ',1,207,2444,', '3', '凡', 'Van', 'fan', 'VAN');
INSERT INTO `travel_location` VALUES ('2445', '207', ',1,207,2445,', '3', '哈卡里', 'Hakkari', 'hakali', 'HKR');
INSERT INTO `travel_location` VALUES ('2446', '207', ',1,207,2446,', '3', '哈塔伊', 'Hatay', 'hatayi', 'HTY');
INSERT INTO `travel_location` VALUES ('2447', '207', ',1,207,2447,', '3', '基利斯', 'Kilis', 'jilisi', 'KLS');
INSERT INTO `travel_location` VALUES ('2448', '207', ',1,207,2448,', '3', '吉雷松', 'Giresun', 'jileisong', 'GIR');
INSERT INTO `travel_location` VALUES ('2449', '207', ',1,207,2449,', '3', '加济安泰普', 'Gaziantep', 'jiajiantaipu', 'GAZ');
INSERT INTO `travel_location` VALUES ('2450', '207', ',1,207,2450,', '3', '居米什哈内', 'Gumushane', 'jumishihanei', 'GMS');
INSERT INTO `travel_location` VALUES ('2451', '207', ',1,207,2451,', '3', '卡尔斯', 'Kars', 'kaersi', 'KRS');
INSERT INTO `travel_location` VALUES ('2452', '207', ',1,207,2452,', '3', '卡赫拉曼马拉什', 'Kahraman Maras', 'kahelamanmalashi', 'KAH');
INSERT INTO `travel_location` VALUES ('2453', '207', ',1,207,2453,', '3', '卡拉比克', 'Karabuk', 'kalabike', 'KRB');
INSERT INTO `travel_location` VALUES ('2454', '207', ',1,207,2454,', '3', '卡拉曼', 'Karaman', 'kalaman', 'KRM');
INSERT INTO `travel_location` VALUES ('2455', '207', ',1,207,2455,', '3', '卡斯塔莫努', 'Kastamonu', 'kasitamonu', 'KAS');
INSERT INTO `travel_location` VALUES ('2456', '207', ',1,207,2456,', '3', '开塞利', 'Kayseri', 'kaisaili', 'KAY');
INSERT INTO `travel_location` VALUES ('2457', '207', ',1,207,2457,', '3', '科贾埃利', 'Kocaeli', 'kejiaaili', 'KOC');
INSERT INTO `travel_location` VALUES ('2458', '207', ',1,207,2458,', '3', '柯克拉雷利', 'Kirklareli', 'kekelaleili', 'KLR');
INSERT INTO `travel_location` VALUES ('2459', '207', ',1,207,2459,', '3', '科尼亚', 'Konya', 'keniya', 'KON');
INSERT INTO `travel_location` VALUES ('2460', '207', ',1,207,2460,', '3', '克尔谢希尔', 'Kirsehir', 'keerxiexier', 'KRH');
INSERT INTO `travel_location` VALUES ('2461', '207', ',1,207,2461,', '3', '克勒克卡莱', 'Kirikkale', 'kelekekalai', 'KRK');
INSERT INTO `travel_location` VALUES ('2462', '207', ',1,207,2462,', '3', '拉飞', 'Urfa', 'lafei', 'URF');
INSERT INTO `travel_location` VALUES ('2463', '207', ',1,207,2463,', '3', '里泽', 'Rize', 'lize', 'RIZ');
INSERT INTO `travel_location` VALUES ('2464', '207', ',1,207,2464,', '3', '马尔丁', 'Mardin', 'maerding', 'MAR');
INSERT INTO `travel_location` VALUES ('2465', '207', ',1,207,2465,', '3', '马拉蒂亚', 'Malatya', 'maladiya', 'MAL');
INSERT INTO `travel_location` VALUES ('2466', '207', ',1,207,2466,', '3', '马尼萨', 'Manisa', 'manisa', 'MAN');
INSERT INTO `travel_location` VALUES ('2467', '207', ',1,207,2467,', '3', '穆拉', 'Mugla', 'mula', 'MUG');
INSERT INTO `travel_location` VALUES ('2468', '207', ',1,207,2468,', '3', '穆什', 'Mus', 'mushi', 'MUS');
INSERT INTO `travel_location` VALUES ('2469', '207', ',1,207,2469,', '3', '内夫谢希尔', 'Nevsehir', 'neifuxiexier', 'NEV');
INSERT INTO `travel_location` VALUES ('2470', '207', ',1,207,2470,', '3', '尼代', 'Nigde', 'nidai', 'NIG');
INSERT INTO `travel_location` VALUES ('2471', '207', ',1,207,2471,', '3', '恰纳卡莱', 'Canakkale', 'qianakalai', 'CKL');
INSERT INTO `travel_location` VALUES ('2472', '207', ',1,207,2472,', '3', '乔鲁姆', 'Corum', 'qiaolumu', 'COR');
INSERT INTO `travel_location` VALUES ('2473', '207', ',1,207,2473,', '3', '屈塔希亚', 'Kutahya', 'qutaxiya', 'KUT');
INSERT INTO `travel_location` VALUES ('2474', '207', ',1,207,2474,', '3', '萨卡里亚', 'Sakarya', 'sakaliya', 'SAK');
INSERT INTO `travel_location` VALUES ('2475', '207', ',1,207,2475,', '3', '萨姆松', 'Samsun', 'samusong', 'SAM');
INSERT INTO `travel_location` VALUES ('2476', '207', ',1,207,2476,', '3', '泰基尔达', 'Tekirdag', 'taijierda', 'TEL');
INSERT INTO `travel_location` VALUES ('2477', '207', ',1,207,2477,', '3', '特拉布宗', 'Trabzon', 'telabuzong', 'TRA');
INSERT INTO `travel_location` VALUES ('2478', '207', ',1,207,2478,', '3', '通杰利', 'Tunceli', 'tongjieli', 'TUN');
INSERT INTO `travel_location` VALUES ('2479', '207', ',1,207,2479,', '3', '托卡特', 'Tokat', 'tuokate', 'TOK');
INSERT INTO `travel_location` VALUES ('2480', '207', ',1,207,2480,', '3', '乌萨克', 'Usak', 'wusake', 'USK');
INSERT INTO `travel_location` VALUES ('2481', '207', ',1,207,2481,', '3', '锡尔纳克', 'Sirnak', 'xiernake', 'SIR');
INSERT INTO `travel_location` VALUES ('2482', '207', ',1,207,2482,', '3', '锡尔特', 'Siirt', 'xierte', 'SII');
INSERT INTO `travel_location` VALUES ('2483', '207', ',1,207,2483,', '3', '锡诺普', 'Sinop', 'xinuopu', 'SIN');
INSERT INTO `travel_location` VALUES ('2484', '207', ',1,207,2484,', '3', '锡瓦斯', 'Sivas', 'xiwasi', 'SIV');
INSERT INTO `travel_location` VALUES ('2485', '207', ',1,207,2485,', '3', '伊迪尔', 'Igdir', 'yidier', 'IGD');
INSERT INTO `travel_location` VALUES ('2486', '207', ',1,207,2486,', '3', '伊切尔', 'Icel', 'yiqieer', 'ICE');
INSERT INTO `travel_location` VALUES ('2487', '207', ',1,207,2487,', '3', '伊斯帕尔塔', 'Isparta', 'yisipaerta', 'ISP');
INSERT INTO `travel_location` VALUES ('2488', '207', ',1,207,2488,', '3', '伊斯坦布尔', 'Istanbul', 'yisitanbuer', 'IST');
INSERT INTO `travel_location` VALUES ('2489', '207', ',1,207,2489,', '3', '伊兹密尔', 'Izmir', 'yizimier', 'IZM');
INSERT INTO `travel_location` VALUES ('2490', '207', ',1,207,2490,', '3', '约兹加特', 'Yozgat', 'yuezijiate', 'YOZ');
INSERT INTO `travel_location` VALUES ('2491', '207', ',1,207,2491,', '3', '宗古尔达克', 'Zonguldak', 'zongguerdake', 'ZON');
INSERT INTO `travel_location` VALUES ('2492', '208', ',1,208,2492,', '3', '阿哈尔', 'Ahal', 'ahaer', 'A');
INSERT INTO `travel_location` VALUES ('2493', '208', ',1,208,2493,', '3', '阿什哈巴德市', 'Ashgabat', 'ashihabadeshi', 'ASB');
INSERT INTO `travel_location` VALUES ('2494', '208', ',1,208,2494,', '3', '巴尔坎', 'Balkan', 'baerkan', 'B');
INSERT INTO `travel_location` VALUES ('2495', '208', ',1,208,2495,', '3', '达沙古兹', 'Dashoguz', 'dashaguzi', 'D');
INSERT INTO `travel_location` VALUES ('2496', '208', ',1,208,2496,', '3', '列巴普', 'Lebap', 'liebapu', 'L');
INSERT INTO `travel_location` VALUES ('2497', '208', ',1,208,2497,', '3', '马雷', 'Mary', 'malei', 'M');
INSERT INTO `travel_location` VALUES ('2498', '208', ',1,208,2498,', '3', '涅比特达格', 'Nebitdag', 'niebitedage', 'NEB');
INSERT INTO `travel_location` VALUES ('2499', '211', ',6,211,2499,', '3', '马朗帕', 'Malampa', 'malangpa', 'MA');
INSERT INTO `travel_location` VALUES ('2500', '211', ',6,211,2500,', '3', '彭纳马', 'Penama', 'pengnama', 'PE');
INSERT INTO `travel_location` VALUES ('2501', '211', ',6,211,2501,', '3', '桑马', 'Sanma', 'sangma', 'SA');
INSERT INTO `travel_location` VALUES ('2502', '211', ',6,211,2502,', '3', '塔菲阿', 'Tafea', 'tafeia', 'TA');
INSERT INTO `travel_location` VALUES ('2503', '211', ',6,211,2503,', '3', '托尔巴', 'Torba', 'tuoerba', 'TO');
INSERT INTO `travel_location` VALUES ('2504', '211', ',6,211,2504,', '3', '谢法', 'Shefa', 'xiefa', 'SH');
INSERT INTO `travel_location` VALUES ('2505', '212', ',4,212,2505,', '3', '埃尔普罗格雷索', 'El Progreso', 'aierpuluogeleisuo', 'PR');
INSERT INTO `travel_location` VALUES ('2506', '212', ',4,212,2506,', '3', '埃斯昆特拉', 'Escuintla', 'aisikuntela', 'ES');
INSERT INTO `travel_location` VALUES ('2507', '212', ',4,212,2507,', '3', '哈拉帕', 'Jalapa', 'halapa', 'JA');
INSERT INTO `travel_location` VALUES ('2508', '212', ',4,212,2508,', '3', '胡蒂亚帕', 'Jutiapa', 'hudiyapa', 'JU');
INSERT INTO `travel_location` VALUES ('2509', '212', ',4,212,2509,', '3', '基切', 'Quiche', 'jiqie', 'QC');
INSERT INTO `travel_location` VALUES ('2510', '212', ',4,212,2510,', '3', '克萨尔特南戈', 'Quetzaltenango', 'kesaertenange', 'QZ');
INSERT INTO `travel_location` VALUES ('2511', '212', ',4,212,2511,', '3', '雷塔卢莱乌', 'Retalhuleu', 'leitalulaiwu', 'RE');
INSERT INTO `travel_location` VALUES ('2512', '212', ',4,212,2512,', '3', '米克斯科', 'Mixco', 'mikesike', 'MIX');
INSERT INTO `travel_location` VALUES ('2513', '212', ',4,212,2513,', '3', '佩滕', 'Peten', 'pei', 'PE');
INSERT INTO `travel_location` VALUES ('2514', '212', ',4,212,2514,', '3', '奇基穆拉', 'Chiquimula', 'qijimula', 'CQ');
INSERT INTO `travel_location` VALUES ('2515', '212', ',4,212,2515,', '3', '奇马尔特南戈', 'Chimaltenango', 'qimaertenange', 'CM');
INSERT INTO `travel_location` VALUES ('2516', '212', ',4,212,2516,', '3', '萨卡帕', 'Zacapa', 'sakapa', 'ZA');
INSERT INTO `travel_location` VALUES ('2517', '212', ',4,212,2517,', '3', '萨卡特佩克斯', 'Sacatepequez', 'sakatepeikesi', 'ST');
INSERT INTO `travel_location` VALUES ('2518', '212', ',4,212,2518,', '3', '上韦拉帕斯', 'Alta Verapaz', 'shangweilapasi', 'AV');
INSERT INTO `travel_location` VALUES ('2519', '212', ',4,212,2519,', '3', '圣罗莎', 'Santa Rosa', 'shengluosha', 'SR');
INSERT INTO `travel_location` VALUES ('2520', '212', ',4,212,2520,', '3', '圣马科斯', 'San Marcos', 'shengmakesi', 'SM');
INSERT INTO `travel_location` VALUES ('2521', '212', ',4,212,2521,', '3', '苏奇特佩克斯', 'Suchitepequez', 'suqitepeikesi', 'SU');
INSERT INTO `travel_location` VALUES ('2522', '212', ',4,212,2522,', '3', '索洛拉', 'Solola', 'suoluola', 'SO');
INSERT INTO `travel_location` VALUES ('2523', '212', ',4,212,2523,', '3', '托托尼卡潘', 'Totonicapan', 'tuotuonikapan', 'TO');
INSERT INTO `travel_location` VALUES ('2524', '212', ',4,212,2524,', '3', '危地马拉', 'Guatemala', 'weidimala', 'GU');
INSERT INTO `travel_location` VALUES ('2525', '212', ',4,212,2525,', '3', '韦韦特南戈', 'Huehuetenango', 'weiweitenange', 'HU');
INSERT INTO `travel_location` VALUES ('2526', '212', ',4,212,2526,', '3', '下韦拉帕斯', 'Baja Verapaz', 'xiaweilapasi', 'BV');
INSERT INTO `travel_location` VALUES ('2527', '212', ',4,212,2527,', '3', '新城', 'Villa Nueva', 'xincheng', 'VIN');
INSERT INTO `travel_location` VALUES ('2528', '212', ',4,212,2528,', '3', '伊萨瓦尔', 'Izabal', 'yisawaer', 'IZ');
INSERT INTO `travel_location` VALUES ('2529', '215', ',5,215,2529,', '3', '阿拉瓜', 'Aragua', 'alagua', 'D');
INSERT INTO `travel_location` VALUES ('2530', '215', ',5,215,2530,', '3', '阿马库罗三角洲', 'Delta Amacuro', 'amakuluosanjiaozhou', 'Y');
INSERT INTO `travel_location` VALUES ('2531', '215', ',5,215,2531,', '3', '阿普雷', 'Apure', 'apulei', 'C');
INSERT INTO `travel_location` VALUES ('2532', '215', ',5,215,2532,', '3', '安索阿特吉', 'Anzoategui', 'ansuoateji', 'B');
INSERT INTO `travel_location` VALUES ('2533', '215', ',5,215,2533,', '3', '巴里纳斯', 'Barinas', 'balinasi', 'E');
INSERT INTO `travel_location` VALUES ('2534', '215', ',5,215,2534,', '3', '玻利瓦尔', 'Bolivar', 'boliwaer', 'F');
INSERT INTO `travel_location` VALUES ('2535', '215', ',5,215,2535,', '3', '波图格萨', 'Portuguesa', 'botugesa', 'P');
INSERT INTO `travel_location` VALUES ('2536', '215', ',5,215,2536,', '3', '法尔孔', 'Falcon', 'faerkong', 'I');
INSERT INTO `travel_location` VALUES ('2537', '215', ',5,215,2537,', '3', '瓜里科', 'Guarico', 'gualike', 'J');
INSERT INTO `travel_location` VALUES ('2538', '215', ',5,215,2538,', '3', '加拉加斯', 'Caracas', 'jialajiasi', 'A');
INSERT INTO `travel_location` VALUES ('2539', '215', ',5,215,2539,', '3', '卡拉沃沃', 'Carabobo', 'kalawowo', 'G');
INSERT INTO `travel_location` VALUES ('2540', '215', ',5,215,2540,', '3', '科赫德斯', 'Cojedes', 'kehedesi', 'H');
INSERT INTO `travel_location` VALUES ('2541', '215', ',5,215,2541,', '3', '拉腊', 'Lara', 'lala', 'K');
INSERT INTO `travel_location` VALUES ('2542', '215', ',5,215,2542,', '3', '联邦属地', 'Dependencias Federales', 'lianbangshudi', 'W');
INSERT INTO `travel_location` VALUES ('2543', '215', ',5,215,2543,', '3', '梅里达', 'Merida', 'meilida', 'L');
INSERT INTO `travel_location` VALUES ('2544', '215', ',5,215,2544,', '3', '米兰达', 'Miranda', 'milanda', 'M');
INSERT INTO `travel_location` VALUES ('2545', '215', ',5,215,2545,', '3', '莫纳加斯', 'Monagas', 'monajiasi', 'N');
INSERT INTO `travel_location` VALUES ('2546', '215', ',5,215,2546,', '3', '苏克雷', 'Sucre', 'sukelei', 'R');
INSERT INTO `travel_location` VALUES ('2547', '215', ',5,215,2547,', '3', '苏利亚', 'Zulia', 'suliya', 'V');
INSERT INTO `travel_location` VALUES ('2548', '215', ',5,215,2548,', '3', '塔奇拉', 'Tachira', 'taqila', 'S');
INSERT INTO `travel_location` VALUES ('2549', '215', ',5,215,2549,', '3', '特鲁希略', 'Trujillo', 'teluxilue', 'T');
INSERT INTO `travel_location` VALUES ('2550', '215', ',5,215,2550,', '3', '新埃斯帕塔', 'Estado Nueva Esparta', 'xinaisipata', 'O');
INSERT INTO `travel_location` VALUES ('2551', '215', ',5,215,2551,', '3', '亚拉奎', 'Yaracuy', 'yalakui', 'U');
INSERT INTO `travel_location` VALUES ('2552', '215', ',5,215,2552,', '3', '亚马孙', 'Amazonas', 'yamasun', 'Z');
INSERT INTO `travel_location` VALUES ('2553', '217', ',3,217,2553,', '3', '阿鲁阿', 'Arua', 'alua', 'ARU');
INSERT INTO `travel_location` VALUES ('2554', '217', ',3,217,2554,', '3', '阿帕克', 'Apac', 'apake', 'APC');
INSERT INTO `travel_location` VALUES ('2555', '217', ',3,217,2555,', '3', '阿朱马尼', 'Adjumani', 'azhumani', 'ADJ');
INSERT INTO `travel_location` VALUES ('2556', '217', ',3,217,2556,', '3', '本迪布焦', 'Bundibugyo', 'bendibujiao', 'BUN');
INSERT INTO `travel_location` VALUES ('2557', '217', ',3,217,2557,', '3', '布吉里', 'Bugiri', 'bujili', 'BUG');
INSERT INTO `travel_location` VALUES ('2558', '217', ',3,217,2558,', '3', '布西亚', 'Busia', 'buxiya', 'BUS');
INSERT INTO `travel_location` VALUES ('2559', '217', ',3,217,2559,', '3', '布谢尼', 'Bushenyi', 'buxieni', 'BSH');
INSERT INTO `travel_location` VALUES ('2560', '217', ',3,217,2560,', '3', '恩通加莫', 'Ntungamo', 'entongjiamo', 'NTU');
INSERT INTO `travel_location` VALUES ('2561', '217', ',3,217,2561,', '3', '古卢', 'Gulu', 'gulu', 'GUL');
INSERT INTO `travel_location` VALUES ('2562', '217', ',3,217,2562,', '3', '霍伊马', 'Hoima', 'huoyima', 'HOI');
INSERT INTO `travel_location` VALUES ('2563', '217', ',3,217,2563,', '3', '基巴莱', 'Kibaale', 'jibalai', 'KBA');
INSERT INTO `travel_location` VALUES ('2564', '217', ',3,217,2564,', '3', '基博加', 'Kiboga', 'jibojia', 'KIB');
INSERT INTO `travel_location` VALUES ('2565', '217', ',3,217,2565,', '3', '基恩乔乔', 'Kyenjojo', 'jienqiaoqiao', 'KYE');
INSERT INTO `travel_location` VALUES ('2566', '217', ',3,217,2566,', '3', '基索罗', 'Kisoro', 'jisuoluo', 'KIS');
INSERT INTO `travel_location` VALUES ('2567', '217', ',3,217,2567,', '3', '基特古姆', 'Kitgum', 'jitegumu', 'KIT');
INSERT INTO `travel_location` VALUES ('2568', '217', ',3,217,2568,', '3', '金贾', 'Jinja', 'jinjia', 'JIN');
INSERT INTO `travel_location` VALUES ('2569', '217', ',3,217,2569,', '3', '卡巴莱', 'Kabale', 'kabalai', 'KBL');
INSERT INTO `travel_location` VALUES ('2570', '217', ',3,217,2570,', '3', '卡巴罗莱', 'Kabarole', 'kabaluolai', 'KAR');
INSERT INTO `travel_location` VALUES ('2571', '217', ',3,217,2571,', '3', '卡贝拉马伊多', 'Kaberamaido', 'kabeilamayiduo', 'KAB');
INSERT INTO `travel_location` VALUES ('2572', '217', ',3,217,2572,', '3', '卡兰加拉', 'Kalangala', 'kalanjiala', 'KAL');
INSERT INTO `travel_location` VALUES ('2573', '217', ',3,217,2573,', '3', '卡姆文盖', 'Kamwenge', 'kamuwengai', 'KAM');
INSERT INTO `travel_location` VALUES ('2574', '217', ',3,217,2574,', '3', '卡穆利', 'Kamuli', 'kamuli', 'KML');
INSERT INTO `travel_location` VALUES ('2575', '217', ',3,217,2575,', '3', '卡农古', 'Kanungu', 'kanonggu', 'KAN');
INSERT INTO `travel_location` VALUES ('2576', '217', ',3,217,2576,', '3', '卡普乔鲁瓦', 'Kapchorwa', 'kapuqiaoluwa', 'KPC');
INSERT INTO `travel_location` VALUES ('2577', '217', ',3,217,2577,', '3', '卡塞塞', 'Kasese', 'kasaisai', 'KAS');
INSERT INTO `travel_location` VALUES ('2578', '217', ',3,217,2578,', '3', '卡塔奎', 'Katakwi', 'katakui', 'KTK');
INSERT INTO `travel_location` VALUES ('2579', '217', ',3,217,2579,', '3', '卡永加', 'Kayunga', 'kayongjia', 'KAY');
INSERT INTO `travel_location` VALUES ('2580', '217', ',3,217,2580,', '3', '坎帕拉', 'Kampala', 'kanpala', 'KMP');
INSERT INTO `travel_location` VALUES ('2581', '217', ',3,217,2581,', '3', '科蒂多', 'Kotido', 'kediduo', 'KOT');
INSERT INTO `travel_location` VALUES ('2582', '217', ',3,217,2582,', '3', '库米', 'Kumi', 'kumi', 'KUM');
INSERT INTO `travel_location` VALUES ('2583', '217', ',3,217,2583,', '3', '拉卡伊', 'Rakai', 'lakayi', 'RAK');
INSERT INTO `travel_location` VALUES ('2584', '217', ',3,217,2584,', '3', '利拉', 'Lira', 'lila', 'LIR');
INSERT INTO `travel_location` VALUES ('2585', '217', ',3,217,2585,', '3', '卢韦罗', 'Luwero', 'luweiluo', 'LUW');
INSERT INTO `travel_location` VALUES ('2586', '217', ',3,217,2586,', '3', '鲁昆吉里', 'Rukungiri', 'lukunjili', 'RUK');
INSERT INTO `travel_location` VALUES ('2587', '217', ',3,217,2587,', '3', '马萨卡', 'Masaka', 'masaka', 'MAS');
INSERT INTO `travel_location` VALUES ('2588', '217', ',3,217,2588,', '3', '马辛迪', 'Masindi', 'maxindi', 'MSN');
INSERT INTO `travel_location` VALUES ('2589', '217', ',3,217,2589,', '3', '马尤盖', 'Mayuge', 'mayougai', 'MAY');
INSERT INTO `travel_location` VALUES ('2590', '217', ',3,217,2590,', '3', '莫罗托', 'Moroto', 'moluotuo', 'MRT');
INSERT INTO `travel_location` VALUES ('2591', '217', ',3,217,2591,', '3', '莫约', 'Moyo', 'moyue', 'MOY');
INSERT INTO `travel_location` VALUES ('2592', '217', ',3,217,2592,', '3', '姆巴拉拉', 'Mbarara', 'mubalala', 'MBR');
INSERT INTO `travel_location` VALUES ('2593', '217', ',3,217,2593,', '3', '姆巴莱', 'Mbale', 'mubalai', 'MBA');
INSERT INTO `travel_location` VALUES ('2594', '217', ',3,217,2594,', '3', '姆皮吉', 'Mpigi', 'mupiji', 'MPI');
INSERT INTO `travel_location` VALUES ('2595', '217', ',3,217,2595,', '3', '穆本德', 'Mubende', 'mubende', 'MUB');
INSERT INTO `travel_location` VALUES ('2596', '217', ',3,217,2596,', '3', '穆科诺', 'Mukono', 'mukenuo', 'MUK');
INSERT INTO `travel_location` VALUES ('2597', '217', ',3,217,2597,', '3', '纳卡皮里皮里特', 'Nakapiripirit', 'nakapilipilite', 'NAK');
INSERT INTO `travel_location` VALUES ('2598', '217', ',3,217,2598,', '3', '纳卡松戈拉', 'Nakasongola', 'nakasonggela', 'NKS');
INSERT INTO `travel_location` VALUES ('2599', '217', ',3,217,2599,', '3', '内比', 'Nebbi', 'neibi', 'NEB');
INSERT INTO `travel_location` VALUES ('2600', '217', ',3,217,2600,', '3', '帕德尔', 'Pader', 'padeer', 'PAD');
INSERT INTO `travel_location` VALUES ('2601', '217', ',3,217,2601,', '3', '帕利萨', 'Pallisa', 'palisa', 'PAL');
INSERT INTO `travel_location` VALUES ('2602', '217', ',3,217,2602,', '3', '森巴布莱', 'Sembabule', 'senbabulai', 'SEM');
INSERT INTO `travel_location` VALUES ('2603', '217', ',3,217,2603,', '3', '索罗提', 'Soroti', 'suoluoti', 'SOR');
INSERT INTO `travel_location` VALUES ('2604', '217', ',3,217,2604,', '3', '托罗罗', 'Tororo', 'tuoluoluo', 'TOR');
INSERT INTO `travel_location` VALUES ('2605', '217', ',3,217,2605,', '3', '瓦基索', 'Wakiso', 'wajisuo', 'WAK');
INSERT INTO `travel_location` VALUES ('2606', '217', ',3,217,2606,', '3', '锡龙科', 'Sironko', 'xilongke', 'SIR');
INSERT INTO `travel_location` VALUES ('2607', '217', ',3,217,2607,', '3', '伊甘加', 'Iganga', 'yiganjia', 'IGA');
INSERT INTO `travel_location` VALUES ('2608', '217', ',3,217,2608,', '3', '永贝', 'Yumbe', 'yongbei', 'YUM');
INSERT INTO `travel_location` VALUES ('2609', '218', ',2,218,2609,', '3', '敖德萨', 'Odessa', 'aodesa', '51');
INSERT INTO `travel_location` VALUES ('2610', '218', ',2,218,2610,', '3', '波尔塔瓦', 'Poltava', 'boertawa', '53');
INSERT INTO `travel_location` VALUES ('2611', '218', ',2,218,2611,', '3', '第聂伯罗波得罗夫斯克', 'Dnipropetrovsk', 'dinieboluobodeluofusike', '12');
INSERT INTO `travel_location` VALUES ('2612', '218', ',2,218,2612,', '3', '顿涅茨克', 'Donetsk', 'dunniecike', '14');
INSERT INTO `travel_location` VALUES ('2613', '218', ',2,218,2613,', '3', '哈尔科夫', 'Kharkiv', 'haerkefu', '63');
INSERT INTO `travel_location` VALUES ('2614', '218', ',2,218,2614,', '3', '赫尔松州', 'Khersonsrka', 'heersongzhou', '65');
INSERT INTO `travel_location` VALUES ('2615', '218', ',2,218,2615,', '3', '赫梅利尼茨基', 'Khmelnytsky', 'hemeiliniciji', '68');
INSERT INTO `travel_location` VALUES ('2616', '218', ',2,218,2616,', '3', '基辅', 'Kyiv', 'jifu', '30');
INSERT INTO `travel_location` VALUES ('2617', '218', ',2,218,2617,', '3', '基洛夫格勒', 'Kirovohrad', 'jiluofugele', '35');
INSERT INTO `travel_location` VALUES ('2618', '218', ',2,218,2618,', '3', '捷尔诺波尔', 'Ternopil', 'jieernuoboer', '61');
INSERT INTO `travel_location` VALUES ('2619', '218', ',2,218,2619,', '3', '克里米亚自治共和国', 'Respublika Krym', 'kelimiyazizhigongheguo', '43');
INSERT INTO `travel_location` VALUES ('2620', '218', ',2,218,2620,', '3', '利沃夫', 'Lviv', 'liwofu', '46');
INSERT INTO `travel_location` VALUES ('2621', '218', ',2,218,2621,', '3', '卢甘斯克', 'Luhansk', 'lugansike', '9');
INSERT INTO `travel_location` VALUES ('2622', '218', ',2,218,2622,', '3', '罗夫诺', 'Rivne', 'luofunuo', '56');
INSERT INTO `travel_location` VALUES ('2623', '218', ',2,218,2623,', '3', '尼古拉耶夫', 'Mykolayiv', 'nigulayefu', '48');
INSERT INTO `travel_location` VALUES ('2624', '218', ',2,218,2624,', '3', '切尔卡瑟', 'Cherkasy', 'qieerkase', '71');
INSERT INTO `travel_location` VALUES ('2625', '218', ',2,218,2625,', '3', '切尔尼戈夫', 'Chernihiv', 'qieernigefu', '74');
INSERT INTO `travel_location` VALUES ('2626', '218', ',2,218,2626,', '3', '切尔诺夫策', 'Chernivtsi', 'qieernuofuce', '77');
INSERT INTO `travel_location` VALUES ('2627', '218', ',2,218,2627,', '3', '日托米尔', 'Zhytomyr', 'rituomier', '18');
INSERT INTO `travel_location` VALUES ('2628', '218', ',2,218,2628,', '3', '苏梅', 'Sumy', 'sumei', '59');
INSERT INTO `travel_location` VALUES ('2629', '218', ',2,218,2629,', '3', '外喀尔巴阡', 'Zakarpatska', 'waikaerba', '21');
INSERT INTO `travel_location` VALUES ('2630', '218', ',2,218,2630,', '3', '文尼察', 'Vinnytsya', 'wennicha', '5');
INSERT INTO `travel_location` VALUES ('2631', '218', ',2,218,2631,', '3', '沃伦', 'Volyn', 'wolun', '7');
INSERT INTO `travel_location` VALUES ('2632', '218', ',2,218,2632,', '3', '伊万－弗兰科夫州', 'Ivano-Frankivsk', 'yiwanfulankefuzhou', '26');
INSERT INTO `travel_location` VALUES ('2633', '218', ',2,218,2633,', '3', '扎波罗热', 'Zaporizhzhya', 'zhaboluore', '23');
INSERT INTO `travel_location` VALUES ('2634', '219', ',5,219,2634,', '3', '阿蒂加斯', 'Artigas', 'adijiasi', 'AR');
INSERT INTO `travel_location` VALUES ('2635', '219', ',5,219,2635,', '3', '杜拉斯诺', 'Durazno', 'dulasinuo', 'DU');
INSERT INTO `travel_location` VALUES ('2636', '219', ',5,219,2636,', '3', '佛罗里达', 'Florida', 'foluolida', 'FA');
INSERT INTO `travel_location` VALUES ('2637', '219', ',5,219,2637,', '3', '弗洛雷斯', 'Flores', 'fuluoleisi', 'FS');
INSERT INTO `travel_location` VALUES ('2638', '219', ',5,219,2638,', '3', '卡内洛内斯', 'Canelones', 'kaneiluoneisi', 'CA');
INSERT INTO `travel_location` VALUES ('2639', '219', ',5,219,2639,', '3', '科洛尼亚', 'Colonia', 'keluoniya', 'CO');
INSERT INTO `travel_location` VALUES ('2640', '219', ',5,219,2640,', '3', '拉瓦耶哈', 'Lavalleja', 'lawayeha', 'LA');
INSERT INTO `travel_location` VALUES ('2641', '219', ',5,219,2641,', '3', '里韦拉', 'Rivera', 'liweila', 'RV');
INSERT INTO `travel_location` VALUES ('2642', '219', ',5,219,2642,', '3', '罗恰', 'Rocha', 'luoqia', 'RO');
INSERT INTO `travel_location` VALUES ('2643', '219', ',5,219,2643,', '3', '马尔多纳多', 'Maldonado', 'maerduonaduo', 'MA');
INSERT INTO `travel_location` VALUES ('2644', '219', ',5,219,2644,', '3', '蒙得维的亚', 'Montevideo', 'mengdeweideya', 'MO');
INSERT INTO `travel_location` VALUES ('2645', '219', ',5,219,2645,', '3', '内格罗河', 'Rio Negro', 'neigeluohe', 'RN');
INSERT INTO `travel_location` VALUES ('2646', '219', ',5,219,2646,', '3', '派桑杜', 'Paysandu', 'paisangdu', 'PA');
INSERT INTO `travel_location` VALUES ('2647', '219', ',5,219,2647,', '3', '萨尔托', 'Salto', 'saertuo', 'SL');
INSERT INTO `travel_location` VALUES ('2648', '219', ',5,219,2648,', '3', '塞罗拉尔戈', 'Cerro Largo', 'sailuolaerge', 'CL');
INSERT INTO `travel_location` VALUES ('2649', '219', ',5,219,2649,', '3', '三十三人', 'Treinta y Tres', 'sanshisanren', 'TT');
INSERT INTO `travel_location` VALUES ('2650', '219', ',5,219,2650,', '3', '圣何塞', 'San Jose', 'shenghesai', 'SJ');
INSERT INTO `travel_location` VALUES ('2651', '219', ',5,219,2651,', '3', '索里亚诺', 'Soriano', 'suoliyanuo', 'SO');
INSERT INTO `travel_location` VALUES ('2652', '219', ',5,219,2652,', '3', '塔夸伦博', 'Tacuarembo', 'takualunbo', 'TAW');
INSERT INTO `travel_location` VALUES ('2653', '220', ',1,220,2653,', '3', '安集延', 'Andijon', 'anjiyan', 'AN');
INSERT INTO `travel_location` VALUES ('2654', '220', ',1,220,2654,', '3', '布哈拉', 'Buxoro', 'buhala', 'BU');
INSERT INTO `travel_location` VALUES ('2655', '220', ',1,220,2655,', '3', '费尔干纳', 'Fargona', 'feierganna', 'FA');
INSERT INTO `travel_location` VALUES ('2656', '220', ',1,220,2656,', '3', '花拉子模', 'Xorazm', 'hualazimo', 'XO');
INSERT INTO `travel_location` VALUES ('2657', '220', ',1,220,2657,', '3', '吉扎克', 'Jizzax', 'jizhake', 'JI');
INSERT INTO `travel_location` VALUES ('2658', '220', ',1,220,2658,', '3', '卡拉卡尔帕克斯坦共和国', 'Qoraqalpogiston', 'kalakaerpakesitangongheguo', 'QR');
INSERT INTO `travel_location` VALUES ('2659', '220', ',1,220,2659,', '3', '卡什卡达里亚', 'Qasqadaryo', 'kashikadaliya', 'QA');
INSERT INTO `travel_location` VALUES ('2660', '220', ',1,220,2660,', '3', '纳曼干', 'Namangan', 'namangan', 'NG');
INSERT INTO `travel_location` VALUES ('2661', '220', ',1,220,2661,', '3', '纳沃伊', 'Navoiy', 'nawoyi', 'NW');
INSERT INTO `travel_location` VALUES ('2662', '220', ',1,220,2662,', '3', '撒马尔罕', 'Samarqand', 'samaerhan', 'SA');
INSERT INTO `travel_location` VALUES ('2663', '220', ',1,220,2663,', '3', '苏尔汉河', 'Surxondaryo', 'suerhanhe', 'SU');
INSERT INTO `travel_location` VALUES ('2664', '220', ',1,220,2664,', '3', '塔什干', 'Toshkent', 'tashigan', 'TK');
INSERT INTO `travel_location` VALUES ('2665', '220', ',1,220,2665,', '3', '塔什干市', 'Toshkent Shahri', 'tashiganshi', 'TO');
INSERT INTO `travel_location` VALUES ('2666', '220', ',1,220,2666,', '3', '锡尔河', 'Sirdaryo', 'xierhe', 'SI');
INSERT INTO `travel_location` VALUES ('2667', '221', ',2,221,2667,', '3', '阿尔梅里亚', 'Almeria', 'aermeiliya', 'LEI');
INSERT INTO `travel_location` VALUES ('2668', '221', ',2,221,2668,', '3', '阿尔瓦塞特', 'Albacete', 'aerwasaite', 'ALB');
INSERT INTO `travel_location` VALUES ('2669', '221', ',2,221,2669,', '3', '阿拉瓦', 'Alava', 'alawa', 'ALA');
INSERT INTO `travel_location` VALUES ('2670', '221', ',2,221,2670,', '3', '阿利坎特', 'Alicante', 'alikante', 'ALC');
INSERT INTO `travel_location` VALUES ('2671', '221', ',2,221,2671,', '3', '阿斯图利亚斯', 'Asturias', 'asituliyasi', 'AST');
INSERT INTO `travel_location` VALUES ('2672', '221', ',2,221,2672,', '3', '阿维拉', 'Avila', 'aweila', 'AVI');
INSERT INTO `travel_location` VALUES ('2673', '221', ',2,221,2673,', '3', '奥伦塞', 'Orense', 'aolunsai', 'ORE');
INSERT INTO `travel_location` VALUES ('2674', '221', ',2,221,2674,', '3', '巴达霍斯', 'Badajoz', 'badahuosi', 'BJZ');
INSERT INTO `travel_location` VALUES ('2675', '221', ',2,221,2675,', '3', '巴利阿里', 'Baleares', 'baliali', 'BLR');
INSERT INTO `travel_location` VALUES ('2676', '221', ',2,221,2676,', '3', '巴利亚多利德', 'Valladolid', 'baliyaduolide', 'VLL');
INSERT INTO `travel_location` VALUES ('2677', '221', ',2,221,2677,', '3', '巴伦西亚', 'Valencia', 'balunxiya', 'VLC');
INSERT INTO `travel_location` VALUES ('2678', '221', ',2,221,2678,', '3', '巴塞罗那', 'Barcelona', 'basailuona', 'BCN');
INSERT INTO `travel_location` VALUES ('2679', '221', ',2,221,2679,', '3', '比斯开', 'Vizcaya', 'bisikai', 'VSE');
INSERT INTO `travel_location` VALUES ('2680', '221', ',2,221,2680,', '3', '布尔戈斯', 'Burgos', 'buergesi', 'BUR');
INSERT INTO `travel_location` VALUES ('2681', '221', ',2,221,2681,', '3', '格拉纳达', 'Granada', 'gelanada', 'GRX');
INSERT INTO `travel_location` VALUES ('2682', '221', ',2,221,2682,', '3', '瓜达拉哈拉', 'Guadalajara', 'guadalahala', 'GUA');
INSERT INTO `travel_location` VALUES ('2683', '221', ',2,221,2683,', '3', '哈恩', 'Jaen', 'haen', 'JAE');
INSERT INTO `travel_location` VALUES ('2684', '221', ',2,221,2684,', '3', '赫罗纳', 'Gerona', 'heluona', 'GRO');
INSERT INTO `travel_location` VALUES ('2685', '221', ',2,221,2685,', '3', '吉普斯夸', 'Guipuzcoa', 'jipusikua', 'GUI');
INSERT INTO `travel_location` VALUES ('2686', '221', ',2,221,2686,', '3', '加的斯', 'Cadiz', 'jiadesi', 'CAD');
INSERT INTO `travel_location` VALUES ('2687', '221', ',2,221,2687,', '3', '卡塞雷斯', 'Caceres', 'kasaileisi', 'CCS');
INSERT INTO `travel_location` VALUES ('2688', '221', ',2,221,2688,', '3', '卡斯蒂利亚', 'Cludad Real', 'kasidiliya', 'CIR');
INSERT INTO `travel_location` VALUES ('2689', '221', ',2,221,2689,', '3', '卡斯特利翁', 'Castellon', 'kasiteliweng', 'CAS');
INSERT INTO `travel_location` VALUES ('2690', '221', ',2,221,2690,', '3', '科尔多瓦', 'Cordoba', 'keerduowa', 'ODB');
INSERT INTO `travel_location` VALUES ('2691', '221', ',2,221,2691,', '3', '昆卡', 'Cuenca', 'kunka', 'CUE');
INSERT INTO `travel_location` VALUES ('2692', '221', ',2,221,2692,', '3', '拉科鲁尼亚', 'La Coruna', 'lakeluniya', 'LCG');
INSERT INTO `travel_location` VALUES ('2693', '221', ',2,221,2693,', '3', '拉里奥哈', 'La Rioja', 'laliaoha', 'ARL');
INSERT INTO `travel_location` VALUES ('2694', '221', ',2,221,2694,', '3', '拉斯帕尔马斯', 'Las Palmas', 'lasipaermasi', 'LPA');
INSERT INTO `travel_location` VALUES ('2695', '221', ',2,221,2695,', '3', '莱昂', 'Leon', 'laiang', 'LEN');
INSERT INTO `travel_location` VALUES ('2696', '221', ',2,221,2696,', '3', '莱里达', 'Lleida', 'lailida', 'LLE');
INSERT INTO `travel_location` VALUES ('2697', '221', ',2,221,2697,', '3', '卢戈', 'Provincia de Lugo', 'luge', 'LGO');
INSERT INTO `travel_location` VALUES ('2698', '221', ',2,221,2698,', '3', '马德里', 'Madrid', 'madeli', 'MAD');
INSERT INTO `travel_location` VALUES ('2699', '221', ',2,221,2699,', '3', '马拉加', 'Malaga', 'malajia', 'AGP');
INSERT INTO `travel_location` VALUES ('2700', '221', ',2,221,2700,', '3', '穆尔西亚', 'Murcia', 'muerxiya', 'MJV');
INSERT INTO `travel_location` VALUES ('2701', '221', ',2,221,2701,', '3', '纳瓦拉', 'Navarra', 'nawala', 'NVV');
INSERT INTO `travel_location` VALUES ('2702', '221', ',2,221,2702,', '3', '帕伦西亚', 'Palencia', 'palunxiya', 'PAC');
INSERT INTO `travel_location` VALUES ('2703', '221', ',2,221,2703,', '3', '蓬特韦德拉', 'Provincia de Pontevedra', 'pengteweidela', 'PEV');
INSERT INTO `travel_location` VALUES ('2704', '221', ',2,221,2704,', '3', '萨拉戈萨', 'Zaragoza', 'salagesa', 'ZAZ');
INSERT INTO `travel_location` VALUES ('2705', '221', ',2,221,2705,', '3', '萨拉曼卡', 'Salamanca', 'salamanka', 'SLM');
INSERT INTO `travel_location` VALUES ('2706', '221', ',2,221,2706,', '3', '萨莫拉', 'Zamora', 'samola', 'ZMR');
INSERT INTO `travel_location` VALUES ('2707', '221', ',2,221,2707,', '3', '塞哥维亚', 'Segovia', 'saigeweiya', 'SEG');
INSERT INTO `travel_location` VALUES ('2708', '221', ',2,221,2708,', '3', '塞维利亚', 'Sevilla', 'saiweiliya', 'SVQ');
INSERT INTO `travel_location` VALUES ('2709', '221', ',2,221,2709,', '3', '桑坦德', 'Santander', 'sangtande', 'SDR');
INSERT INTO `travel_location` VALUES ('2710', '221', ',2,221,2710,', '3', '圣克鲁斯-德特内里费', 'Santa Cruz de Tenerife', 'shengkelusideteneilifei', 'SCT');
INSERT INTO `travel_location` VALUES ('2711', '221', ',2,221,2711,', '3', '索里亚', 'Soria', 'suoliya', 'SOR');
INSERT INTO `travel_location` VALUES ('2712', '221', ',2,221,2712,', '3', '塔拉戈纳', 'Tarragona', 'talagena', 'TAR');
INSERT INTO `travel_location` VALUES ('2713', '221', ',2,221,2713,', '3', '特鲁埃尔', 'Teruel', 'teluaier', 'TER');
INSERT INTO `travel_location` VALUES ('2714', '221', ',2,221,2714,', '3', '托莱多', 'Toledo', 'tuolaiduo', 'TOL');
INSERT INTO `travel_location` VALUES ('2715', '221', ',2,221,2715,', '3', '韦尔瓦', 'Huelva', 'weierwa', 'HUV');
INSERT INTO `travel_location` VALUES ('2716', '221', ',2,221,2716,', '3', '韦斯卡', 'Huesca', 'weisika', 'HUC');
INSERT INTO `travel_location` VALUES ('2717', '222', ',2,222,2717,', '3', '比雷埃夫斯', 'Peiraievs', 'bileiaifusi', 'PRI');
INSERT INTO `travel_location` VALUES ('2718', '222', ',2,222,2718,', '3', '多德卡尼斯', 'Dodecanese', 'duodekanisi', 'DO');
INSERT INTO `travel_location` VALUES ('2719', '222', ',2,222,2719,', '3', '干尼亚', 'Chanion', 'ganniya', 'CHQ');
INSERT INTO `travel_location` VALUES ('2720', '222', ',2,222,2720,', '3', '基克拉迪', 'Cyclades', 'jikeladi', 'CY');
INSERT INTO `travel_location` VALUES ('2721', '222', ',2,222,2721,', '3', '拉西锡', 'Lasithiou', 'laxixi', 'LST');
INSERT INTO `travel_location` VALUES ('2722', '222', ',2,222,2722,', '3', '莱斯博斯', 'Lesbos', 'laisibosi', 'LES');
INSERT INTO `travel_location` VALUES ('2723', '222', ',2,222,2723,', '3', '雷西姆农', 'Rethymnis', 'leiximunong', 'RET');
INSERT INTO `travel_location` VALUES ('2724', '222', ',2,222,2724,', '3', '萨摩斯', 'Samos', 'samosi', 'SMI');
INSERT INTO `travel_location` VALUES ('2725', '222', ',2,222,2725,', '3', '雅典', 'Athens', 'yadian', 'ATH');
INSERT INTO `travel_location` VALUES ('2726', '222', ',2,222,2726,', '3', '伊拉克里翁', 'Irakleiou', 'yilakeliweng', 'HER');
INSERT INTO `travel_location` VALUES ('2727', '225', ',6,225,2727,', '3', '奥克兰', 'Auckland', 'aokelan', 'AUK');
INSERT INTO `travel_location` VALUES ('2728', '225', ',6,225,2728,', '3', '北岸', 'North Shore', 'beian', 'NSH');
INSERT INTO `travel_location` VALUES ('2729', '225', ',6,225,2729,', '3', '北帕默斯顿', 'Palmerston North', 'beipamosidun', 'PMR');
INSERT INTO `travel_location` VALUES ('2730', '225', ',6,225,2730,', '3', '北远', 'Far North', 'beiyuan', 'FNR');
INSERT INTO `travel_location` VALUES ('2731', '225', ',6,225,2731,', '3', '布莱尼姆', 'Blenheim', 'bulainimu', 'BHE');
INSERT INTO `travel_location` VALUES ('2732', '225', ',6,225,2732,', '3', '达尼丁', 'Dunedin', 'daniding', 'DUD');
INSERT INTO `travel_location` VALUES ('2733', '225', ',6,225,2733,', '3', '格雷茅斯', 'Greymouth', 'geleimaosi', 'GMN');
INSERT INTO `travel_location` VALUES ('2734', '225', ',6,225,2734,', '3', '哈密尔顿', 'Hamilton', 'hamierdun', 'HLZ');
INSERT INTO `travel_location` VALUES ('2735', '225', ',6,225,2735,', '3', '黑斯廷斯', 'Hastings', 'heisitingsi', 'HAS');
INSERT INTO `travel_location` VALUES ('2736', '225', ',6,225,2736,', '3', '怀塔科拉', 'Waitakere', 'huaitakela', 'WAE');
INSERT INTO `travel_location` VALUES ('2737', '225', ',6,225,2737,', '3', '吉斯伯恩', 'Gisborne', 'jisiboen', 'GIS');
INSERT INTO `travel_location` VALUES ('2738', '225', ',6,225,2738,', '3', '凯帕拉', 'Kaipara', 'kaipala', 'KAI');
INSERT INTO `travel_location` VALUES ('2739', '225', ',6,225,2739,', '3', '克赖斯特彻奇', 'Christchurch', 'kelaisitecheqi', 'CHC');
INSERT INTO `travel_location` VALUES ('2740', '225', ',6,225,2740,', '3', '里士满', 'Richmond', 'lishiman', 'RMD');
INSERT INTO `travel_location` VALUES ('2741', '225', ',6,225,2741,', '3', '马努考', 'Manukau', 'manukao', 'MNK');
INSERT INTO `travel_location` VALUES ('2742', '225', ',6,225,2742,', '3', '纳尔逊', 'Nelson', 'naerxun', 'NSN');
INSERT INTO `travel_location` VALUES ('2743', '225', ',6,225,2743,', '3', '内皮尔', 'Napier', 'neipier', 'NPE');
INSERT INTO `travel_location` VALUES ('2744', '225', ',6,225,2744,', '3', '斯特拉特福德', 'Stratford', 'sitelatefude', 'STR');
INSERT INTO `travel_location` VALUES ('2745', '225', ',6,225,2745,', '3', '陶马鲁努伊', 'Taumarunui', 'taomalunuyi', 'TAU');
INSERT INTO `travel_location` VALUES ('2746', '225', ',6,225,2746,', '3', '瓦卡塔尼', 'Whakatane', 'wakatani', 'WHK');
INSERT INTO `travel_location` VALUES ('2747', '225', ',6,225,2747,', '3', '旺阿雷', 'Whangarei', 'wangalei', 'WRE');
INSERT INTO `travel_location` VALUES ('2748', '225', ',6,225,2748,', '3', '旺格努伊', 'Wanganui', 'wanggenuyi', 'WAG');
INSERT INTO `travel_location` VALUES ('2749', '225', ',6,225,2749,', '3', '新普利茅斯', 'New Plymouth', 'xinpulimaosi', 'NPL');
INSERT INTO `travel_location` VALUES ('2750', '225', ',6,225,2750,', '3', '因弗卡吉尔', 'Invercargill', 'yinfukajier', 'IVC');
INSERT INTO `travel_location` VALUES ('2751', '226', ',2,226,2751,', '3', '巴兰尼亚', 'Baranya', 'balanniya', 'BA');
INSERT INTO `travel_location` VALUES ('2752', '226', ',2,226,2752,', '3', '巴奇-基什孔', 'Bacs-Kiskun', 'baqijishikong', 'BK');
INSERT INTO `travel_location` VALUES ('2753', '226', ',2,226,2753,', '3', '包尔绍德-奥包乌伊-曾普伦', 'Borsod-Abauj-Zemplen', 'baoershaodeaobaowuyizengpulun', 'BZ');
INSERT INTO `travel_location` VALUES ('2754', '226', ',2,226,2754,', '3', '贝凯什', 'Bekes', 'beikaishi', 'BE');
INSERT INTO `travel_location` VALUES ('2755', '226', ',2,226,2755,', '3', '布达佩斯', 'Budapest', 'budapeisi', 'BU');
INSERT INTO `travel_location` VALUES ('2756', '226', ',2,226,2756,', '3', '费耶尔', 'Fejer', 'feiyeer', 'FE');
INSERT INTO `travel_location` VALUES ('2757', '226', ',2,226,2757,', '3', '豪伊杜-比豪尔', 'Hajdu-Bihar', 'haoyidubihaoer', 'HB');
INSERT INTO `travel_location` VALUES ('2758', '226', ',2,226,2758,', '3', '赫维什', 'Heves', 'heweishi', 'HE');
INSERT INTO `travel_location` VALUES ('2759', '226', ',2,226,2759,', '3', '加兹-纳杰孔-索尔诺克', 'Jasz-Nagykun-Szolnok', 'jiazinajiekongsuoernuoke', 'JN');
INSERT INTO `travel_location` VALUES ('2760', '226', ',2,226,2760,', '3', '杰尔-莫松-肖普朗', 'Gyor-Moson-Sopron', 'jieermosongxiaopulang', 'GS');
INSERT INTO `travel_location` VALUES ('2761', '226', ',2,226,2761,', '3', '科马罗姆', 'Komarom-Esztergom', 'kemaluomu', 'KE');
INSERT INTO `travel_location` VALUES ('2762', '226', ',2,226,2762,', '3', '诺格拉德', 'Nograd', 'nuogelade', 'NO');
INSERT INTO `travel_location` VALUES ('2763', '226', ',2,226,2763,', '3', '佩斯', 'Pest', 'peisi', 'PE');
INSERT INTO `travel_location` VALUES ('2764', '226', ',2,226,2764,', '3', '琼格拉德', 'Csongrad', 'qionggelade', 'CS');
INSERT INTO `travel_location` VALUES ('2765', '226', ',2,226,2765,', '3', '绍莫吉', 'Somogy', 'shaomoji', 'SO');
INSERT INTO `travel_location` VALUES ('2766', '226', ',2,226,2766,', '3', '索博尔奇-索特马尔-贝拉格', 'Szabolcs-Szatmar-Bereg', 'suoboerqisuotemaerbeilage', 'SZ');
INSERT INTO `travel_location` VALUES ('2767', '226', ',2,226,2767,', '3', '托尔瑙', 'Tolna', 'tuoer', 'TO');
INSERT INTO `travel_location` VALUES ('2768', '226', ',2,226,2768,', '3', '维斯普雷姆', 'Veszprem', 'weisipuleimu', 'VE');
INSERT INTO `travel_location` VALUES ('2769', '226', ',2,226,2769,', '3', '沃什', 'Vas', 'woshi', 'VA');
INSERT INTO `travel_location` VALUES ('2770', '226', ',2,226,2770,', '3', '佐洛', 'Zala', 'zuoluo', 'ZA');
INSERT INTO `travel_location` VALUES ('2771', '227', ',1,227,2771,', '3', '阿勒颇', 'Halab', 'alepo', 'HL');
INSERT INTO `travel_location` VALUES ('2772', '227', ',1,227,2772,', '3', '大马士革', 'Rif Dimashq', 'damashige', 'RD');
INSERT INTO `travel_location` VALUES ('2773', '227', ',1,227,2773,', '3', '大马士革市', 'Madinat Dimashq', 'damashigeshi', 'DI');
INSERT INTO `travel_location` VALUES ('2774', '227', ',1,227,2774,', '3', '代尔祖尔', 'Dayr az Zawr', 'daierzuer', 'DZ');
INSERT INTO `travel_location` VALUES ('2775', '227', ',1,227,2775,', '3', '德拉', 'Dara', 'dela', 'DA');
INSERT INTO `travel_location` VALUES ('2776', '227', ',1,227,2776,', '3', '哈马', 'Hamah', 'hama', 'HM');
INSERT INTO `travel_location` VALUES ('2777', '227', ',1,227,2777,', '3', '哈塞克', 'Al Hasakah', 'hasaike', 'HA');
INSERT INTO `travel_location` VALUES ('2778', '227', ',1,227,2778,', '3', '霍姆斯', 'Hims', 'huomusi', 'HI');
INSERT INTO `travel_location` VALUES ('2779', '227', ',1,227,2779,', '3', '加布', 'Al Ghab', 'jiabu', 'GH');
INSERT INTO `travel_location` VALUES ('2780', '227', ',1,227,2780,', '3', '卡米什利', 'Al-Qamishli', 'kamishili', 'QA');
INSERT INTO `travel_location` VALUES ('2781', '227', ',1,227,2781,', '3', '库奈特拉', 'Al Qunaytirah', 'kunaitela', 'QU');
INSERT INTO `travel_location` VALUES ('2782', '227', ',1,227,2782,', '3', '拉卡', 'Ar Raqqah', 'laka', 'RQ');
INSERT INTO `travel_location` VALUES ('2783', '227', ',1,227,2783,', '3', '拉塔基亚', 'Al Ladhiqiyah', 'latajiya', 'LA');
INSERT INTO `travel_location` VALUES ('2784', '227', ',1,227,2784,', '3', '苏韦达', 'As Suwayda', 'suweida', 'SU');
INSERT INTO `travel_location` VALUES ('2785', '227', ',1,227,2785,', '3', '塔尔图斯', 'Tartus', 'taertusi', 'TA');
INSERT INTO `travel_location` VALUES ('2786', '227', ',1,227,2786,', '3', '伊德利卜', 'Idlib', 'yidelibo', 'ID');
INSERT INTO `travel_location` VALUES ('2787', '228', ',4,228,2787,', '3', '波特兰', 'Portland', 'botelan', 'POR');
INSERT INTO `travel_location` VALUES ('2788', '228', ',4,228,2788,', '3', '汉诺威', 'Hanover', 'hannuowei', 'HAN');
INSERT INTO `travel_location` VALUES ('2789', '228', ',4,228,2789,', '3', '金斯敦', 'Kingston', 'jinsidun', 'KIN');
INSERT INTO `travel_location` VALUES ('2790', '228', ',4,228,2790,', '3', '克拉伦登', 'Clarendon', 'kelalundeng', 'CLA');
INSERT INTO `travel_location` VALUES ('2791', '228', ',4,228,2791,', '3', '曼彻斯特', 'Manchester', 'manchesite', 'MAN');
INSERT INTO `travel_location` VALUES ('2792', '228', ',4,228,2792,', '3', '圣安德鲁斯', 'St. Andrews', 'shengandelusi', 'AND');
INSERT INTO `travel_location` VALUES ('2793', '228', ',4,228,2793,', '3', '圣安娜', 'St. Ann', 'shenganna', 'ANN');
INSERT INTO `travel_location` VALUES ('2794', '228', ',4,228,2794,', '3', '圣凯瑟琳', 'St. Catherine', 'shengkaiselin', 'CAT');
INSERT INTO `travel_location` VALUES ('2795', '228', ',4,228,2795,', '3', '圣玛丽', 'St. Mary', 'shengmali', 'MAR');
INSERT INTO `travel_location` VALUES ('2796', '228', ',4,228,2796,', '3', '圣托马斯', 'St. Thomas', 'shengtuomasi', 'THO');
INSERT INTO `travel_location` VALUES ('2797', '228', ',4,228,2797,', '3', '圣伊丽莎白', 'St. Elizabeth', 'shengyilishabai', 'ELI');
INSERT INTO `travel_location` VALUES ('2798', '228', ',4,228,2798,', '3', '圣詹姆斯', 'St. James', 'shengzhanmusi', 'JAM');
INSERT INTO `travel_location` VALUES ('2799', '228', ',4,228,2799,', '3', '特里洛尼', 'Trelawny', 'teliluoni', 'TRL');
INSERT INTO `travel_location` VALUES ('2800', '228', ',4,228,2800,', '3', '西摩兰', 'Westmoreland', 'ximolan', 'WML');
INSERT INTO `travel_location` VALUES ('2801', '229', ',1,229,2801,', '3', '阿尔马维尔', 'Armavir', 'aermaweier', 'ARM');
INSERT INTO `travel_location` VALUES ('2802', '229', ',1,229,2802,', '3', '阿拉加措特恩', 'Aragacotn', 'alajiacuoteen', 'AGT');
INSERT INTO `travel_location` VALUES ('2803', '229', ',1,229,2803,', '3', '阿拉拉特', 'Ararat', 'alalate', 'ARA');
INSERT INTO `travel_location` VALUES ('2804', '229', ',1,229,2804,', '3', '埃里温市', 'Yerevan', 'ailiwenshi', 'EVN');
INSERT INTO `travel_location` VALUES ('2805', '229', ',1,229,2805,', '3', '格加尔库尼克', 'Gelarkunik', 'gejiaerkunike', 'GEG');
INSERT INTO `travel_location` VALUES ('2806', '229', ',1,229,2806,', '3', '科泰克', 'Kotayk', 'ketaike', 'KOT');
INSERT INTO `travel_location` VALUES ('2807', '229', ',1,229,2807,', '3', '洛里', 'Lorri', 'luoli', 'LOR');
INSERT INTO `travel_location` VALUES ('2808', '229', ',1,229,2808,', '3', '塔武什', 'Tavus', 'tawushi', 'TAV');
INSERT INTO `travel_location` VALUES ('2809', '229', ',1,229,2809,', '3', '瓦约茨·佐尔', 'VayocJor', 'wayueci', 'VAY');
INSERT INTO `travel_location` VALUES ('2810', '229', ',1,229,2810,', '3', '希拉克', 'Shirak', 'xilake', 'SHI');
INSERT INTO `travel_location` VALUES ('2811', '229', ',1,229,2811,', '3', '休尼克', 'Syunik', 'xiunike', 'SYU');
INSERT INTO `travel_location` VALUES ('2812', '230', ',1,230,2812,', '3', '阿比扬', 'Abyan', 'abiyang', 'AB');
INSERT INTO `travel_location` VALUES ('2813', '230', ',1,230,2813,', '3', '阿姆兰', 'Amran Sana', 'amulan', 'AM');
INSERT INTO `travel_location` VALUES ('2814', '230', ',1,230,2814,', '3', '贝达', 'Al-Bayda', 'beida', 'BA');
INSERT INTO `travel_location` VALUES ('2815', '230', ',1,230,2815,', '3', '达利', 'Ad-Dali', 'dali', 'DA');
INSERT INTO `travel_location` VALUES ('2816', '230', ',1,230,2816,', '3', '哈德拉毛', 'Hadramawt', 'hadelamao', 'HD');
INSERT INTO `travel_location` VALUES ('2817', '230', ',1,230,2817,', '3', '哈杰', 'Hajjah', 'hajie', 'HJ');
INSERT INTO `travel_location` VALUES ('2818', '230', ',1,230,2818,', '3', '荷台达', 'Al-Hudaydah', 'hetaida', 'HU');
INSERT INTO `travel_location` VALUES ('2819', '230', ',1,230,2819,', '3', '焦夫', 'Al-Jawf', 'jiaofu', 'JA');
INSERT INTO `travel_location` VALUES ('2820', '230', ',1,230,2820,', '3', '拉赫季', 'Lahij', 'laheji', 'LA');
INSERT INTO `travel_location` VALUES ('2821', '230', ',1,230,2821,', '3', '马里卜', 'Marib', 'malibo', 'MA');
INSERT INTO `travel_location` VALUES ('2822', '230', ',1,230,2822,', '3', '迈赫拉', 'Al-Mahrah', 'maihela', 'MR');
INSERT INTO `travel_location` VALUES ('2823', '230', ',1,230,2823,', '3', '迈赫维特', 'Al-Mahwit', 'maiheweite', 'MW');
INSERT INTO `travel_location` VALUES ('2824', '230', ',1,230,2824,', '3', '萨达', 'Sadah', 'sada', 'SD');
INSERT INTO `travel_location` VALUES ('2825', '230', ',1,230,2825,', '3', '萨那', 'Sana', 'sana', 'SN');
INSERT INTO `travel_location` VALUES ('2826', '230', ',1,230,2826,', '3', '赛文', 'Seiyun', 'saiwen', 'GXF');
INSERT INTO `travel_location` VALUES ('2827', '230', ',1,230,2827,', '3', '舍卜沃', 'Shabwah', 'shebowo', 'SH');
INSERT INTO `travel_location` VALUES ('2828', '230', ',1,230,2828,', '3', '塔伊兹', 'Taizz', 'tayizi', 'TA');
INSERT INTO `travel_location` VALUES ('2829', '230', ',1,230,2829,', '3', '希赫尔', 'Ash-Shihr', 'xiheer', 'ASR');
INSERT INTO `travel_location` VALUES ('2830', '230', ',1,230,2830,', '3', '亚丁', 'Adan', 'yading', 'AD');
INSERT INTO `travel_location` VALUES ('2831', '230', ',1,230,2831,', '3', '伊卜', 'Ibb', 'yibo', 'IB');
INSERT INTO `travel_location` VALUES ('2832', '230', ',1,230,2832,', '3', '扎玛尔', 'Dhamar', 'zhamaer', 'DH');
INSERT INTO `travel_location` VALUES ('2833', '233', ',1,233,2833,', '3', '阿什杜德', 'Ashdod', 'ashidude', 'ASH');
INSERT INTO `travel_location` VALUES ('2834', '233', ',1,233,2834,', '3', '贝尔谢巴', 'Beersheba', 'beierxieba', 'BEV');
INSERT INTO `travel_location` VALUES ('2835', '233', ',1,233,2835,', '3', '贝特雁', 'Bat Yam', 'beiteyan', 'BAT');
INSERT INTO `travel_location` VALUES ('2836', '233', ',1,233,2836,', '3', '海法', 'Haifa', 'haifa', 'HFA');
INSERT INTO `travel_location` VALUES ('2837', '233', ',1,233,2837,', '3', '霍隆', 'Holon', 'huolong', 'HOL');
INSERT INTO `travel_location` VALUES ('2838', '233', ',1,233,2838,', '3', '内坦亚', 'Netanya', 'neitanya', 'NAT');
INSERT INTO `travel_location` VALUES ('2839', '233', ',1,233,2839,', '3', '特拉维夫', 'Tel Aviv-Yafo', 'telaweifu', 'TLV');
INSERT INTO `travel_location` VALUES ('2840', '233', ',1,233,2840,', '3', '耶路撒冷', 'Jerusalem', 'yelusaleng', 'J');
INSERT INTO `travel_location` VALUES ('2841', '234', ',2,234,2841,', '3', '阿斯蒂', 'Asti', 'asidi', 'AST');
INSERT INTO `travel_location` VALUES ('2842', '234', ',2,234,2842,', '3', '阿斯科利皮切诺', 'Ascoli Piceno', 'asikelipiqienuo', 'ASP');
INSERT INTO `travel_location` VALUES ('2843', '234', ',2,234,2843,', '3', '安科纳', 'Ancona', 'ankena', 'AOI');
INSERT INTO `travel_location` VALUES ('2844', '234', ',2,234,2844,', '3', '奥尔比亚', 'Olbia-Tempio', 'aoerbiya', 'OLB');
INSERT INTO `travel_location` VALUES ('2845', '234', ',2,234,2845,', '3', '奥里斯塔诺', 'Oristano', 'aolisitanuo', 'QOS');
INSERT INTO `travel_location` VALUES ('2846', '234', ',2,234,2846,', '3', '奥斯塔', 'Aosta', 'aosita', 'AOT');
INSERT INTO `travel_location` VALUES ('2847', '234', ',2,234,2847,', '3', '巴勒莫', 'Palermo', 'balemo', 'PMO');
INSERT INTO `travel_location` VALUES ('2848', '234', ',2,234,2848,', '3', '巴里', 'Bari', 'bali', 'BRI');
INSERT INTO `travel_location` VALUES ('2849', '234', ',2,234,2849,', '3', '贝加莫', 'Bergamo', 'beijiamo', 'BGO');
INSERT INTO `travel_location` VALUES ('2850', '234', ',2,234,2850,', '3', '贝内文托', 'Benevento', 'beineiwentuo', 'BEN');
INSERT INTO `travel_location` VALUES ('2851', '234', ',2,234,2851,', '3', '比萨', 'Pisa', 'bisa', 'PSA');
INSERT INTO `travel_location` VALUES ('2852', '234', ',2,234,2852,', '3', '波代诺内', 'Pordenone', 'bodainuonei', 'PRD');
INSERT INTO `travel_location` VALUES ('2853', '234', ',2,234,2853,', '3', '波坦察', 'Potenza', 'botancha', 'QPO');
INSERT INTO `travel_location` VALUES ('2854', '234', ',2,234,2854,', '3', '博洛尼亚', 'Bologna', 'boluoniya', 'BLQ');
INSERT INTO `travel_location` VALUES ('2855', '234', ',2,234,2855,', '3', '布拉', 'Biella', 'bula', 'BIE');
INSERT INTO `travel_location` VALUES ('2856', '234', ',2,234,2856,', '3', '布雷西亚', 'Brescia', 'buleixiya', 'BRC');
INSERT INTO `travel_location` VALUES ('2857', '234', ',2,234,2857,', '3', '布林迪西', 'Brindisi', 'bulindixi', 'BDS');
INSERT INTO `travel_location` VALUES ('2858', '234', ',2,234,2858,', '3', '的里雅斯特', 'Trieste', 'deliyasite', 'TRS');
INSERT INTO `travel_location` VALUES ('2859', '234', ',2,234,2859,', '3', '都灵', 'Turin', 'duling', 'TRN');
INSERT INTO `travel_location` VALUES ('2860', '234', ',2,234,2860,', '3', '费拉拉', 'Ferrara', 'feilala', 'FRR');
INSERT INTO `travel_location` VALUES ('2861', '234', ',2,234,2861,', '3', '佛罗伦萨', 'Firenze', 'foluolunsa', 'FLR');
INSERT INTO `travel_location` VALUES ('2862', '234', ',2,234,2862,', '3', '福贾', 'Foggia', 'fujia', 'FOG');
INSERT INTO `travel_location` VALUES ('2863', '234', ',2,234,2863,', '3', '卡利亚里', 'Cagliari', 'kaliyali', 'CAG');
INSERT INTO `travel_location` VALUES ('2864', '234', ',2,234,2864,', '3', '卡塞塔', 'Caserta', 'kasaita', 'CST');
INSERT INTO `travel_location` VALUES ('2865', '234', ',2,234,2865,', '3', '卡塔尼亚', 'Catania', 'kataniya', 'CTA');
INSERT INTO `travel_location` VALUES ('2866', '234', ',2,234,2866,', '3', '卡坦扎罗', 'Catanzaro', 'katanzhaluo', 'QCZ');
INSERT INTO `travel_location` VALUES ('2867', '234', ',2,234,2867,', '3', '坎波巴索', 'Campobasso', 'kanbobasuo', 'COB');
INSERT INTO `travel_location` VALUES ('2868', '234', ',2,234,2868,', '3', '科摩', 'Como', 'kemo', 'CIY');
INSERT INTO `travel_location` VALUES ('2869', '234', ',2,234,2869,', '3', '科森扎', 'Cosenza', 'kesenzha', 'QCS');
INSERT INTO `travel_location` VALUES ('2870', '234', ',2,234,2870,', '3', '克罗托内', 'Crotone', 'keluotuonei', 'CRV');
INSERT INTO `travel_location` VALUES ('2871', '234', ',2,234,2871,', '3', '库内奥', 'Cuneo', 'kuneiao', 'CUN');
INSERT INTO `travel_location` VALUES ('2872', '234', ',2,234,2872,', '3', '拉奎拉', 'L\'Aquila', 'lakuila', 'LAQ');
INSERT INTO `travel_location` VALUES ('2873', '234', ',2,234,2873,', '3', '拉斯佩齐亚', 'La Spezia', 'lasipeiqiya', 'SPE');
INSERT INTO `travel_location` VALUES ('2874', '234', ',2,234,2874,', '3', '莱科', 'Lecco', 'laike', 'LCO');
INSERT INTO `travel_location` VALUES ('2875', '234', ',2,234,2875,', '3', '莱切', 'Lecce', 'laiqie', 'LCC');
INSERT INTO `travel_location` VALUES ('2876', '234', ',2,234,2876,', '3', '雷焦艾米利亚', 'Reggio Emilia', 'leijiaoaimiliya', 'RNE');
INSERT INTO `travel_location` VALUES ('2877', '234', ',2,234,2877,', '3', '雷焦卡拉布里亚', 'Reggio Calabria', 'leijiaokalabuliya', 'REG');
INSERT INTO `travel_location` VALUES ('2878', '234', ',2,234,2878,', '3', '里窝那', 'Livorno', 'liwona', 'LIV');
INSERT INTO `travel_location` VALUES ('2879', '234', ',2,234,2879,', '3', '罗马', 'Roma', 'luoma', 'ROM');
INSERT INTO `travel_location` VALUES ('2880', '234', ',2,234,2880,', '3', '马萨', 'Massa-Carrara', 'masa', 'MCR');
INSERT INTO `travel_location` VALUES ('2881', '234', ',2,234,2881,', '3', '马泰拉', 'Matera', 'mataila', 'MTR');
INSERT INTO `travel_location` VALUES ('2882', '234', ',2,234,2882,', '3', '蒙扎', 'Monza e Brianza', 'mengzha', 'MZA');
INSERT INTO `travel_location` VALUES ('2883', '234', ',2,234,2883,', '3', '米兰', 'Milano', 'milan', 'MIL');
INSERT INTO `travel_location` VALUES ('2884', '234', ',2,234,2884,', '3', '摩德纳', 'Modena', 'modena', 'MOD');
INSERT INTO `travel_location` VALUES ('2885', '234', ',2,234,2885,', '3', '墨西拿', 'Messina', 'moxina', 'MSN');
INSERT INTO `travel_location` VALUES ('2886', '234', ',2,234,2886,', '3', '那不勒斯', 'Naples', 'nabulesi', 'NAP');
INSERT INTO `travel_location` VALUES ('2887', '234', ',2,234,2887,', '3', '努奥罗', 'Nuoro', 'nuaoluo', 'QNU');
INSERT INTO `travel_location` VALUES ('2888', '234', ',2,234,2888,', '3', '诺瓦拉', 'Novara', 'nuowala', 'NVR');
INSERT INTO `travel_location` VALUES ('2889', '234', ',2,234,2889,', '3', '帕尔马', 'Parma', 'paerma', 'PMF');
INSERT INTO `travel_location` VALUES ('2890', '234', ',2,234,2890,', '3', '帕维亚', 'Pavia', 'paweiya', 'PAV');
INSERT INTO `travel_location` VALUES ('2891', '234', ',2,234,2891,', '3', '佩鲁贾', 'Perugia', 'peilujia', 'PEG');
INSERT INTO `travel_location` VALUES ('2892', '234', ',2,234,2892,', '3', '热那亚', 'Genova', 'renaya', 'CAX');
INSERT INTO `travel_location` VALUES ('2893', '234', ',2,234,2893,', '3', '萨莱诺', 'Salerno', 'salainuo', 'SAL');
INSERT INTO `travel_location` VALUES ('2894', '234', ',2,234,2894,', '3', '萨萨里', 'Sassari', 'sasali', 'QSS');
INSERT INTO `travel_location` VALUES ('2895', '234', ',2,234,2895,', '3', '萨沃纳', 'Savona', 'sawona', 'SVN');
INSERT INTO `travel_location` VALUES ('2896', '234', ',2,234,2896,', '3', '塔兰托', 'Taranto', 'talantuo', 'TAR');
INSERT INTO `travel_location` VALUES ('2897', '234', ',2,234,2897,', '3', '特拉帕尼', 'Trapani', 'telapani', 'TPS');
INSERT INTO `travel_location` VALUES ('2898', '234', ',2,234,2898,', '3', '特伦托', 'Trento', 'teluntuo', 'TRT');
INSERT INTO `travel_location` VALUES ('2899', '234', ',2,234,2899,', '3', '威尼斯', 'Venice', 'weinisi', 'VCE');
INSERT INTO `travel_location` VALUES ('2900', '234', ',2,234,2900,', '3', '韦尔切利', 'Vercelli', 'weierqieli', 'VRL');
INSERT INTO `travel_location` VALUES ('2901', '234', ',2,234,2901,', '3', '维泰博', 'Viterbo', 'weitaibo', 'VIT');
INSERT INTO `travel_location` VALUES ('2902', '234', ',2,234,2902,', '3', '乌迪内', 'Udine', 'wudinei', 'UDN');
INSERT INTO `travel_location` VALUES ('2903', '234', ',2,234,2903,', '3', '锡拉库扎', 'Syracuse', 'xilakuzha', 'SYR');
INSERT INTO `travel_location` VALUES ('2904', '234', ',2,234,2904,', '3', '锡耶纳', 'Siena', 'xiyena', 'SNA');
INSERT INTO `travel_location` VALUES ('2905', '234', ',2,234,2905,', '3', '亚历山德里亚', 'Alessandria', 'yalishandeliya', 'ALE');
INSERT INTO `travel_location` VALUES ('2906', '234', ',2,234,2906,', '3', '伊塞尔尼亚', 'Isernia', 'yisaierniya', 'ISE');
INSERT INTO `travel_location` VALUES ('2907', '235', ',1,235,2907,', '3', '艾藻尔', 'Aizawl', 'aizaoer', 'AJL');
INSERT INTO `travel_location` VALUES ('2908', '235', ',1,235,2908,', '3', '班加罗尔', 'Bangalore', 'banjialuoer', 'BLR');
INSERT INTO `travel_location` VALUES ('2909', '235', ',1,235,2909,', '3', '本地治里', 'Pondicherry', 'bendizhili', 'PNY');
INSERT INTO `travel_location` VALUES ('2910', '235', ',1,235,2910,', '3', '博帕尔', 'Bhopal', 'bopaer', 'BHO');
INSERT INTO `travel_location` VALUES ('2911', '235', ',1,235,2911,', '3', '布巴内斯瓦尔', 'Bhubaneswar', 'bubaneisiwaer', 'BBI');
INSERT INTO `travel_location` VALUES ('2912', '235', ',1,235,2912,', '3', '昌迪加尔', 'Chandigarh', 'changdijiaer', 'IXC');
INSERT INTO `travel_location` VALUES ('2913', '235', ',1,235,2913,', '3', '达曼', 'Daman', 'daman', 'DAM');
INSERT INTO `travel_location` VALUES ('2914', '235', ',1,235,2914,', '3', '第乌', 'Diu', 'diwu', 'DIU');
INSERT INTO `travel_location` VALUES ('2915', '235', ',1,235,2915,', '3', '甘托克', 'Gangtok', 'gantuoke', 'GTO');
INSERT INTO `travel_location` VALUES ('2916', '235', ',1,235,2916,', '3', '哥印拜陀', 'Coimbatore', 'geyinbaituo', 'CJB');
INSERT INTO `travel_location` VALUES ('2917', '235', ',1,235,2917,', '3', '加尔各答', 'Calcutta', 'jiaergeda', 'CCU');
INSERT INTO `travel_location` VALUES ('2918', '235', ',1,235,2918,', '3', '加里加尔', 'Karaikal', 'jialijiaer', 'KRK');
INSERT INTO `travel_location` VALUES ('2919', '235', ',1,235,2919,', '3', '贾巴尔普尔', 'Jabalpur', 'jiabaerpuer', 'JLR');
INSERT INTO `travel_location` VALUES ('2920', '235', ',1,235,2920,', '3', '贾朗达尔', 'Jalandhar', 'jialangdaer', 'JUC');
INSERT INTO `travel_location` VALUES ('2921', '235', ',1,235,2921,', '3', '焦特布尔', 'Jodhpur', 'jiaotebuer', 'JDH');
INSERT INTO `travel_location` VALUES ('2922', '235', ',1,235,2922,', '3', '金奈', 'Chennai', 'jinnai', 'MAA');
INSERT INTO `travel_location` VALUES ('2923', '235', ',1,235,2923,', '3', '卡瓦拉蒂', 'Kavaratti', 'kawaladi', 'KVA');
INSERT INTO `travel_location` VALUES ('2924', '235', ',1,235,2924,', '3', '科希马', 'Kohima', 'kexima', 'KOM');
INSERT INTO `travel_location` VALUES ('2925', '235', ',1,235,2925,', '3', '马埃', 'Mahe', 'maai', 'MAH');
INSERT INTO `travel_location` VALUES ('2926', '235', ',1,235,2926,', '3', '马杜赖', 'Madurai', 'madulai', 'IXM');
INSERT INTO `travel_location` VALUES ('2927', '235', ',1,235,2927,', '3', '森伯尔布尔', 'Sambalpur', 'senboerbuer', 'SLR');
INSERT INTO `travel_location` VALUES ('2928', '235', ',1,235,2928,', '3', '特里凡得琅', 'Trivandrum', 'telifandelang', 'TRV');
INSERT INTO `travel_location` VALUES ('2929', '235', ',1,235,2929,', '3', '乌代布尔', 'Udaipur', 'wudaibuer', 'UDR');
INSERT INTO `travel_location` VALUES ('2930', '235', ',1,235,2930,', '3', '西隆', 'Shillong', 'xilong', 'SHL');
INSERT INTO `travel_location` VALUES ('2931', '235', ',1,235,2931,', '3', '锡尔萨瓦', 'Silvassa', 'xiersawa', 'SIL');
INSERT INTO `travel_location` VALUES ('2932', '235', ',1,235,2932,', '3', '新德里', 'New Delhi', 'xindeli', 'ICD');
INSERT INTO `travel_location` VALUES ('2933', '235', ',1,235,2933,', '3', '亚南', 'Yanam', 'yanan', 'SRV');
INSERT INTO `travel_location` VALUES ('2934', '235', ',1,235,2934,', '3', '因帕尔', 'Imphal', 'yinpaer', 'IMF');
INSERT INTO `travel_location` VALUES ('2935', '235', ',1,235,2935,', '3', '印多尔', 'Indore', 'yinduoer', 'IDR');
INSERT INTO `travel_location` VALUES ('2936', '235', ',1,235,2936,', '3', '斋普尔', 'Jaipur', 'zhaipuer', 'JAI');
INSERT INTO `travel_location` VALUES ('2937', '236', ',1,236,2937,', '3', '巴厘', 'Bali', 'bali', 'BA');
INSERT INTO `travel_location` VALUES ('2938', '236', ',1,236,2938,', '3', '邦加－勿里洞群岛', 'Kepulauan Bangka Belitung', 'bangjiawulidongqundao', 'BB');
INSERT INTO `travel_location` VALUES ('2939', '236', ',1,236,2939,', '3', '北苏拉威西', 'Sulawesi Utara', 'beisulaweixi', 'SA');
INSERT INTO `travel_location` VALUES ('2940', '236', ',1,236,2940,', '3', '北苏门答腊', 'Sumatera Utara', 'beisumendala', 'SU');
INSERT INTO `travel_location` VALUES ('2941', '236', ',1,236,2941,', '3', '大雅加达首都特区', 'Daerah Tingkat I Kalimantan Barat', 'dayajiadashoudutequ', 'KB');
INSERT INTO `travel_location` VALUES ('2942', '236', ',1,236,2942,', '3', '东加里曼丹', 'Kalimantan Timur', 'dongjialimandan', 'KI');
INSERT INTO `travel_location` VALUES ('2943', '236', ',1,236,2943,', '3', '东南苏拉威西', 'Sulawesi Tenggara', 'dongnansulaweixi', 'SG');
INSERT INTO `travel_location` VALUES ('2944', '236', ',1,236,2944,', '3', '东努沙登加拉', 'Nusa Tenggara Timur', 'dongnushadengjiala', 'NT');
INSERT INTO `travel_location` VALUES ('2945', '236', ',1,236,2945,', '3', '东爪哇', 'Java Timur', 'dongzhuawa', 'JI');
INSERT INTO `travel_location` VALUES ('2946', '236', ',1,236,2946,', '3', '廖内', 'Riau', 'liaonei', 'RI');
INSERT INTO `travel_location` VALUES ('2947', '236', ',1,236,2947,', '3', '马鲁古', 'Maluku', 'malugu', 'MA');
INSERT INTO `travel_location` VALUES ('2948', '236', ',1,236,2948,', '3', '明古鲁', 'Bengkulu', 'minggulu', 'BE');
INSERT INTO `travel_location` VALUES ('2949', '236', ',1,236,2949,', '3', '楠榜', 'Lampung', 'bang', 'LA');
INSERT INTO `travel_location` VALUES ('2950', '236', ',1,236,2950,', '3', '南加里曼丹', 'Kalimantan Selatan', 'nanjialimandan', 'KS');
INSERT INTO `travel_location` VALUES ('2951', '236', ',1,236,2951,', '3', '南苏拉威西', 'Sulawesi Selatan', 'nansulaweixi', 'SN');
INSERT INTO `travel_location` VALUES ('2952', '236', ',1,236,2952,', '3', '南苏门答腊', 'Sumatera Selatan', 'nansumendala', 'SS');
INSERT INTO `travel_location` VALUES ('2953', '236', ',1,236,2953,', '3', '日惹特区', 'Daerah Istimewa Yogyakarta', 'riretequ', 'YO');
INSERT INTO `travel_location` VALUES ('2954', '236', ',1,236,2954,', '3', '万丹', 'Banten', 'wandan', 'BT');
INSERT INTO `travel_location` VALUES ('2955', '236', ',1,236,2955,', '3', '西努沙登加拉', 'Nusa Tenggara Barat', 'xinushadengjiala', 'NB');
INSERT INTO `travel_location` VALUES ('2956', '236', ',1,236,2956,', '3', '西苏门答腊', 'Sumatera Barat', 'xisumendala', 'SR');
INSERT INTO `travel_location` VALUES ('2957', '236', ',1,236,2957,', '3', '西爪哇', 'Java Barat', 'xizhuawa', 'JB');
INSERT INTO `travel_location` VALUES ('2958', '236', ',1,236,2958,', '3', '雅加达', 'Jakarta Raya', 'yajiada', 'JK');
INSERT INTO `travel_location` VALUES ('2959', '236', ',1,236,2959,', '3', '亚齐', 'Aceh', 'yaqi', 'AC');
INSERT INTO `travel_location` VALUES ('2960', '236', ',1,236,2960,', '3', '伊里安查亚', 'Irian Jaya', 'yilianchaya', 'IJ');
INSERT INTO `travel_location` VALUES ('2961', '236', ',1,236,2961,', '3', '占碑', 'Jambi', 'zhanbei', 'JA');
INSERT INTO `travel_location` VALUES ('2962', '236', ',1,236,2962,', '3', '中加里曼丹', 'Kalimantan Tengah', 'zhongjialimandan', 'KT');
INSERT INTO `travel_location` VALUES ('2963', '236', ',1,236,2963,', '3', '中苏拉威西', 'Sulawesi Tengah', 'zhongsulaweixi', 'ST');
INSERT INTO `travel_location` VALUES ('2964', '236', ',1,236,2964,', '3', '中爪哇', 'Java Tengah', 'zhongzhuawa', 'JT');
INSERT INTO `travel_location` VALUES ('2965', '239', ',1,239,2965,', '3', '阿吉隆', 'Allun', 'ajilong', 'AJ');
INSERT INTO `travel_location` VALUES ('2966', '239', ',1,239,2966,', '3', '安曼', 'Amman', 'anman', 'AM');
INSERT INTO `travel_location` VALUES ('2967', '239', ',1,239,2967,', '3', '拜勒加', 'Balqa', 'bailejia', 'BA');
INSERT INTO `travel_location` VALUES ('2968', '239', ',1,239,2968,', '3', '杰拉什', 'Jarash', 'jielashi', 'JA');
INSERT INTO `travel_location` VALUES ('2969', '239', ',1,239,2969,', '3', '卡拉克', 'Karak', 'kalake', 'KA');
INSERT INTO `travel_location` VALUES ('2970', '239', ',1,239,2970,', '3', '鲁赛法', 'Rusayfah', 'lusaifa', 'RU');
INSERT INTO `travel_location` VALUES ('2971', '239', ',1,239,2971,', '3', '马安', 'Maan', 'maan', 'MN');
INSERT INTO `travel_location` VALUES ('2972', '239', ',1,239,2972,', '3', '马德巴', 'Madaba', 'madeba', 'MD');
INSERT INTO `travel_location` VALUES ('2973', '239', ',1,239,2973,', '3', '马夫拉克', 'Mafraq', 'mafulake', 'MF');
INSERT INTO `travel_location` VALUES ('2974', '239', ',1,239,2974,', '3', '塔菲拉', 'Tafiela', 'tafeila', 'TA');
INSERT INTO `travel_location` VALUES ('2975', '239', ',1,239,2975,', '3', '亚喀巴', 'Aqaba', 'yakaba', 'AQ');
INSERT INTO `travel_location` VALUES ('2976', '239', ',1,239,2976,', '3', '伊尔比德', 'Irbid', 'yierbide', 'IR');
INSERT INTO `travel_location` VALUES ('2977', '239', ',1,239,2977,', '3', '扎尔卡', 'Zarqa', 'zhaerka', 'ZA');
INSERT INTO `travel_location` VALUES ('2978', '240', ',1,240,2978,', '3', '海防', 'Haiphong', 'haifang', 'HP');
INSERT INTO `travel_location` VALUES ('2979', '240', ',1,240,2979,', '3', '河内', 'Hanoi', 'henei', 'HI');
INSERT INTO `travel_location` VALUES ('2980', '240', ',1,240,2980,', '3', '胡志明市', 'Ho Chi Minh City', 'huzhimingshi', 'HC');
INSERT INTO `travel_location` VALUES ('2981', '241', ',3,241,2981,', '3', '北方', 'Northern', 'beifang', 'NO');
INSERT INTO `travel_location` VALUES ('2982', '241', ',3,241,2982,', '3', '东方', 'Eastern', 'dongfang', 'EA');
INSERT INTO `travel_location` VALUES ('2983', '241', ',3,241,2983,', '3', '卢阿普拉', 'Luapula', 'luapula', 'LP');
INSERT INTO `travel_location` VALUES ('2984', '241', ',3,241,2984,', '3', '卢萨卡', 'Lusaka', 'lusaka', 'LK');
INSERT INTO `travel_location` VALUES ('2985', '241', ',3,241,2985,', '3', '南方', 'Southern', 'nanfang', 'SO');
INSERT INTO `travel_location` VALUES ('2986', '241', ',3,241,2986,', '3', '铜带', 'Copperbelt', 'tongdai', 'CB');
INSERT INTO `travel_location` VALUES ('2987', '241', ',3,241,2987,', '3', '西北', 'North-Western', 'xibei', 'NW');
INSERT INTO `travel_location` VALUES ('2988', '241', ',3,241,2988,', '3', '西方', 'Western', 'xifang', 'WE');
INSERT INTO `travel_location` VALUES ('2989', '241', ',3,241,2989,', '3', '中央', 'Central', 'zhongyang', 'CE');
INSERT INTO `travel_location` VALUES ('2990', '245', ',5,245,2990,', '3', '阿劳卡尼亚大区', 'Region de la Araucania', 'alaokaniyadaqu', 'AR');
INSERT INTO `travel_location` VALUES ('2991', '245', ',5,245,2991,', '3', '阿塔卡马大区', 'Region de Atacama', 'atakamadaqu', 'AT');
INSERT INTO `travel_location` VALUES ('2992', '245', ',5,245,2992,', '3', '安托法加斯塔大区', 'Region de Antofagasta', 'antuofajiasitadaqu', 'AN');
INSERT INTO `travel_location` VALUES ('2993', '245', ',5,245,2993,', '3', '比奥比奥大区', 'Region del Biobio', 'biaobiaodaqu', 'BI');
INSERT INTO `travel_location` VALUES ('2994', '245', ',5,245,2994,', '3', '复活节岛', 'Libertador', 'fuhuojiedao', 'LI');
INSERT INTO `travel_location` VALUES ('2995', '245', ',5,245,2995,', '3', '湖大区', 'Region de los Lagos', 'hudaqu', 'LL');
INSERT INTO `travel_location` VALUES ('2996', '245', ',5,245,2996,', '3', '科金博大区', 'Region de Coquimbo', 'kejinbodaqu', 'CO');
INSERT INTO `travel_location` VALUES ('2997', '245', ',5,245,2997,', '3', '马乌莱大区', 'Region del Maule', 'mawulaidaqu', 'ML');
INSERT INTO `travel_location` VALUES ('2998', '245', ',5,245,2998,', '3', '麦哲伦-智利南极大区', 'Magallanes y Antartica Chilena', 'maizhelunzhilinanjidaqu', 'MA');
INSERT INTO `travel_location` VALUES ('2999', '245', ',5,245,2999,', '3', '圣地亚哥', 'Metropolitana de Santiago', 'shengdiyage', 'RM');
INSERT INTO `travel_location` VALUES ('3000', '245', ',5,245,3000,', '3', '塔拉帕卡大区', 'Region de Tarapaca', 'talapakadaqu', 'TA');
INSERT INTO `travel_location` VALUES ('3001', '245', ',5,245,3001,', '3', '瓦尔帕莱索大区', 'Region de Valparaiso', 'waerpalaisuodaqu', 'VS');
INSERT INTO `travel_location` VALUES ('3002', '245', ',5,245,3002,', '3', '伊瓦涅斯将军的艾森大区', 'Region de Alsen del General Carlos Ibanez del', 'yiwaniesijiangjundeaisendaqu', 'AI');
INSERT INTO `travel_location` VALUES ('3003', '246', ',3,246,3003,', '3', '巴明吉-班戈兰', 'Bamingui-Bangoran', 'bamingjibangelan', 'BB');
INSERT INTO `travel_location` VALUES ('3004', '246', ',3,246,3004,', '3', '班吉直辖市', 'Bangui', 'banjizhixiashi', 'BGF');
INSERT INTO `travel_location` VALUES ('3005', '246', ',3,246,3005,', '3', '宾博', 'Bimbo', 'binbo', 'BI');
INSERT INTO `travel_location` VALUES ('3006', '246', ',3,246,3006,', '3', '凯莫', 'Kemo', 'kaimo', 'KG');
INSERT INTO `travel_location` VALUES ('3007', '246', ',3,246,3007,', '3', '洛巴伊', 'Lobaye', 'luobayi', 'LB');
INSERT INTO `travel_location` VALUES ('3008', '246', ',3,246,3008,', '3', '曼贝雷-卡代', 'Mambere-Kadei', 'manbeileikadai', 'HS');
INSERT INTO `travel_location` VALUES ('3009', '246', ',3,246,3009,', '3', '姆博穆', 'Mbomou', 'mubomu', 'MB');
INSERT INTO `travel_location` VALUES ('3010', '246', ',3,246,3010,', '3', '纳纳-格里比齐', 'Nana-Gribizi', 'nanagelibiqi', 'KB');
INSERT INTO `travel_location` VALUES ('3011', '246', ',3,246,3011,', '3', '纳纳-曼贝雷', 'Nana-Mambere', 'nanamanbeilei', 'NM');
INSERT INTO `travel_location` VALUES ('3012', '246', ',3,246,3012,', '3', '桑加-姆巴埃雷', 'Sangha-Mbaere', 'sangjiamubaailei', 'SE');
INSERT INTO `travel_location` VALUES ('3013', '246', ',3,246,3013,', '3', '上科托', 'Haute-Kotto', 'shangketuo', 'HK');
INSERT INTO `travel_location` VALUES ('3014', '246', ',3,246,3014,', '3', '上姆博穆', 'Haut-Mbomou', 'shangmubomu', 'HM');
INSERT INTO `travel_location` VALUES ('3015', '246', ',3,246,3015,', '3', '瓦卡', 'Ouaka', 'waka', 'UK');
INSERT INTO `travel_location` VALUES ('3016', '246', ',3,246,3016,', '3', '瓦卡加', 'Vakaga', 'wakajia', 'VK');
INSERT INTO `travel_location` VALUES ('3017', '246', ',3,246,3017,', '3', '瓦姆', 'Ouham', 'wamu', 'AC');
INSERT INTO `travel_location` VALUES ('3018', '246', ',3,246,3018,', '3', '瓦姆-彭代', 'Ouham-Pende', 'wamupengdai', 'OP');
INSERT INTO `travel_location` VALUES ('3019', '246', ',3,246,3019,', '3', '翁贝拉-姆波科', 'Ombella-Mpoko', 'wengbeilamuboke', 'MP');
INSERT INTO `travel_location` VALUES ('3020', '246', ',3,246,3020,', '3', '下科托', 'Basse-Kotto', 'xiaketuo', 'BK');
INSERT INTO `travel_location` VALUES ('3021', '247', ',1,7,247,3021,', '4', '东城', 'Dongcheng', 'dongcheng', '1');
INSERT INTO `travel_location` VALUES ('3022', '247', ',1,7,247,3022,', '4', '西城', 'Xicheng', 'xicheng', '2');
INSERT INTO `travel_location` VALUES ('3023', '247', ',1,7,247,3023,', '4', '朝阳', 'Chaoyang', 'chaoyang', '5');
INSERT INTO `travel_location` VALUES ('3024', '247', ',1,7,247,3024,', '4', '丰台', 'Fengtai', 'fengtai', '6');
INSERT INTO `travel_location` VALUES ('3025', '247', ',1,7,247,3025,', '4', '石景山', 'Shijingshan', 'shijingshan', '7');
INSERT INTO `travel_location` VALUES ('3026', '247', ',1,7,247,3026,', '4', '海淀', 'Haidian', 'haidian', '8');
INSERT INTO `travel_location` VALUES ('3027', '247', ',1,7,247,3027,', '4', '门头沟', 'Mentougou', 'mentougou', '9');
INSERT INTO `travel_location` VALUES ('3028', '247', ',1,7,247,3028,', '4', '房山', 'Fangshan', 'fangshan', '11');
INSERT INTO `travel_location` VALUES ('3029', '247', ',1,7,247,3029,', '4', '通州', 'Tongzhou', 'tongzhou', '12');
INSERT INTO `travel_location` VALUES ('3030', '247', ',1,7,247,3030,', '4', '顺义', 'Shunyi', 'shunyi', '13');
INSERT INTO `travel_location` VALUES ('3031', '247', ',1,7,247,3031,', '4', '昌平', 'Changping', 'changping', '21');
INSERT INTO `travel_location` VALUES ('3032', '247', ',1,7,247,3032,', '4', '大兴', 'Daxing', 'daxing', '24');
INSERT INTO `travel_location` VALUES ('3033', '247', ',1,7,247,3033,', '4', '平谷', 'Pinggu', 'pinggu', '26');
INSERT INTO `travel_location` VALUES ('3034', '247', ',1,7,247,3034,', '4', '怀柔', 'Huairou', 'huairou', '27');
INSERT INTO `travel_location` VALUES ('3035', '247', ',1,7,247,3035,', '4', '密云', 'Miyun', 'miyun', '28');
INSERT INTO `travel_location` VALUES ('3036', '247', ',1,7,247,3036,', '4', '延庆', 'Yanqing', 'yanqing', '29');
INSERT INTO `travel_location` VALUES ('3037', '248', ',1,7,248,3037,', '4', '和平', 'Heping', 'heping', '1');
INSERT INTO `travel_location` VALUES ('3038', '248', ',1,7,248,3038,', '4', '河东', 'Hedong', 'hedong', '2');
INSERT INTO `travel_location` VALUES ('3039', '248', ',1,7,248,3039,', '4', '河西', 'Hexi', 'hexi', '3');
INSERT INTO `travel_location` VALUES ('3040', '248', ',1,7,248,3040,', '4', '南开', 'Nankai', 'nankai', '4');
INSERT INTO `travel_location` VALUES ('3041', '248', ',1,7,248,3041,', '4', '河北', 'Hebei', 'hebei', '5');
INSERT INTO `travel_location` VALUES ('3042', '248', ',1,7,248,3042,', '4', '红桥', 'Hongqiao', 'hongqiao', '6');
INSERT INTO `travel_location` VALUES ('3043', '248', ',1,7,248,3043,', '4', '滨海新区', 'Binghaixinqu', 'binhaixinqu', '26');
INSERT INTO `travel_location` VALUES ('3044', '248', ',1,7,248,3044,', '4', '东丽', 'Dongli', 'dongli', '10');
INSERT INTO `travel_location` VALUES ('3045', '248', ',1,7,248,3045,', '4', '西青', 'Xiqing', 'xiqing', '11');
INSERT INTO `travel_location` VALUES ('3046', '248', ',1,7,248,3046,', '4', '津南', 'Jinnan', 'jinnan', '12');
INSERT INTO `travel_location` VALUES ('3047', '248', ',1,7,248,3047,', '4', '北辰', 'Beichen', 'beichen', '13');
INSERT INTO `travel_location` VALUES ('3048', '248', ',1,7,248,3048,', '4', '宁河', 'Ninghe', 'ninghe', '21');
INSERT INTO `travel_location` VALUES ('3049', '248', ',1,7,248,3049,', '4', '武清', 'Wuqing', 'wuqing', '22');
INSERT INTO `travel_location` VALUES ('3050', '248', ',1,7,248,3050,', '4', '静海', 'Jinghai', 'jinghai', '23');
INSERT INTO `travel_location` VALUES ('3051', '248', ',1,7,248,3051,', '4', '宝坻', 'Baodi', 'bao', '24');
INSERT INTO `travel_location` VALUES ('3052', '248', ',1,7,248,3052,', '4', '蓟县', 'Jixian', 'jixian', '25');
INSERT INTO `travel_location` VALUES ('3053', '249', ',1,7,249,3053,', '4', '石家庄', 'Shijiazhuang', 'shijiazhuang', '1');
INSERT INTO `travel_location` VALUES ('3054', '249', ',1,7,249,3054,', '4', '唐山', 'Tangshan', 'tangshan', '2');
INSERT INTO `travel_location` VALUES ('3055', '249', ',1,7,249,3055,', '4', '秦皇岛', 'Qinhuangdao', 'qinhuangdao', '3');
INSERT INTO `travel_location` VALUES ('3056', '249', ',1,7,249,3056,', '4', '邯郸', 'Handan', 'handan', '4');
INSERT INTO `travel_location` VALUES ('3057', '249', ',1,7,249,3057,', '4', '邢台', 'Xingtai', 'xingtai', '5');
INSERT INTO `travel_location` VALUES ('3058', '249', ',1,7,249,3058,', '4', '保定', 'Baoding', 'baoding', '6');
INSERT INTO `travel_location` VALUES ('3059', '249', ',1,7,249,3059,', '4', '张家口', 'Zhangjiakou', 'zhangjiakou', '7');
INSERT INTO `travel_location` VALUES ('3060', '249', ',1,7,249,3060,', '4', '承德', 'Chengde', 'chengde', '8');
INSERT INTO `travel_location` VALUES ('3061', '249', ',1,7,249,3061,', '4', '沧州', 'Cangzhou', 'cangzhou', '9');
INSERT INTO `travel_location` VALUES ('3062', '249', ',1,7,249,3062,', '4', '廊坊', 'Langfang', 'langfang', '10');
INSERT INTO `travel_location` VALUES ('3063', '249', ',1,7,249,3063,', '4', '衡水', 'Hengshui', 'hengshui', '11');
INSERT INTO `travel_location` VALUES ('3064', '250', ',1,7,250,3064,', '4', '太原', 'Taiyuan', 'taiyuan', '1');
INSERT INTO `travel_location` VALUES ('3065', '250', ',1,7,250,3065,', '4', '大同', 'Datong', 'datong', '2');
INSERT INTO `travel_location` VALUES ('3066', '250', ',1,7,250,3066,', '4', '阳泉', 'Yangquan', 'yangquan', '3');
INSERT INTO `travel_location` VALUES ('3067', '250', ',1,7,250,3067,', '4', '长治', 'Changzhi', 'changzhi', '4');
INSERT INTO `travel_location` VALUES ('3068', '250', ',1,7,250,3068,', '4', '晋城', 'Jincheng', 'jincheng', '5');
INSERT INTO `travel_location` VALUES ('3069', '250', ',1,7,250,3069,', '4', '朔州', 'Shuozhou', 'shuozhou', '6');
INSERT INTO `travel_location` VALUES ('3070', '250', ',1,7,250,3070,', '4', '晋中', 'Jinzhong', 'jinzhong', '7');
INSERT INTO `travel_location` VALUES ('3071', '250', ',1,7,250,3071,', '4', '运城', 'Yuncheng', 'yuncheng', '8');
INSERT INTO `travel_location` VALUES ('3072', '250', ',1,7,250,3072,', '4', '忻州', 'Xinzhou', 'xinzhou', '9');
INSERT INTO `travel_location` VALUES ('3073', '250', ',1,7,250,3073,', '4', '临汾', 'Linfen', 'linfen', '10');
INSERT INTO `travel_location` VALUES ('3074', '250', ',1,7,250,3074,', '4', '吕梁', 'luliang', 'lvliang', '11');
INSERT INTO `travel_location` VALUES ('3075', '251', ',1,7,251,3075,', '4', '呼和浩特', 'Hohhot', 'huhehaote', '1');
INSERT INTO `travel_location` VALUES ('3076', '251', ',1,7,251,3076,', '4', '包头', 'Baotou', 'baotou', '2');
INSERT INTO `travel_location` VALUES ('3077', '251', ',1,7,251,3077,', '4', '乌海', 'Wuhai', 'wuhai', '3');
INSERT INTO `travel_location` VALUES ('3078', '251', ',1,7,251,3078,', '4', '赤峰', 'Chifeng', 'chifeng', '4');
INSERT INTO `travel_location` VALUES ('3079', '251', ',1,7,251,3079,', '4', '通辽', 'Tongliao', 'tongliao', '5');
INSERT INTO `travel_location` VALUES ('3080', '251', ',1,7,251,3080,', '4', '鄂尔多斯', 'Ordos', 'eerduosi', '6');
INSERT INTO `travel_location` VALUES ('3081', '251', ',1,7,251,3081,', '4', '呼伦贝尔', 'Hulun Buir', 'hulunbeier', '7');
INSERT INTO `travel_location` VALUES ('3082', '251', ',1,7,251,3082,', '4', '巴彦淖尔', 'Bayannur', 'bayannaoer', '8');
INSERT INTO `travel_location` VALUES ('3083', '251', ',1,7,251,3083,', '4', '乌兰察布', 'Ulan Qab', 'wulanchabu', '9');
INSERT INTO `travel_location` VALUES ('3084', '251', ',1,7,251,3084,', '4', '兴安', 'Xing\'an', 'xingan', '22');
INSERT INTO `travel_location` VALUES ('3085', '251', ',1,7,251,3085,', '4', '锡林郭勒', 'Xilin Gol', 'xilinguole', '25');
INSERT INTO `travel_location` VALUES ('3086', '251', ',1,7,251,3086,', '4', '阿拉善', 'Alxa', 'alashan', '29');
INSERT INTO `travel_location` VALUES ('3087', '252', ',1,7,252,3087,', '4', '沈阳', 'Shenyang', 'shenyang', '1');
INSERT INTO `travel_location` VALUES ('3088', '252', ',1,7,252,3088,', '4', '大连', 'Dalian', 'dalian', '2');
INSERT INTO `travel_location` VALUES ('3089', '252', ',1,7,252,3089,', '4', '鞍山', 'Anshan', 'anshan', '3');
INSERT INTO `travel_location` VALUES ('3090', '252', ',1,7,252,3090,', '4', '抚顺', 'Fushun', 'fushun', '4');
INSERT INTO `travel_location` VALUES ('3091', '252', ',1,7,252,3091,', '4', '本溪', 'Benxi', 'benxi', '5');
INSERT INTO `travel_location` VALUES ('3092', '252', ',1,7,252,3092,', '4', '丹东', 'Dandong', 'dandong', '6');
INSERT INTO `travel_location` VALUES ('3093', '252', ',1,7,252,3093,', '4', '锦州', 'Jinzhou', 'jinzhou', '7');
INSERT INTO `travel_location` VALUES ('3094', '252', ',1,7,252,3094,', '4', '营口', 'Yingkou', 'yingkou', '8');
INSERT INTO `travel_location` VALUES ('3095', '252', ',1,7,252,3095,', '4', '阜新', 'Fuxin', 'fuxin', '9');
INSERT INTO `travel_location` VALUES ('3096', '252', ',1,7,252,3096,', '4', '辽阳', 'Liaoyang', 'liaoyang', '10');
INSERT INTO `travel_location` VALUES ('3097', '252', ',1,7,252,3097,', '4', '盘锦', 'Panjin', 'panjin', '11');
INSERT INTO `travel_location` VALUES ('3098', '252', ',1,7,252,3098,', '4', '铁岭', 'Tieling', 'tieling', '12');
INSERT INTO `travel_location` VALUES ('3099', '252', ',1,7,252,3099,', '4', '朝阳', 'Chaoyang', 'chaoyang', '13');
INSERT INTO `travel_location` VALUES ('3100', '252', ',1,7,252,3100,', '4', '葫芦岛', 'Huludao', 'huludao', '14');
INSERT INTO `travel_location` VALUES ('3101', '253', ',1,7,253,3101,', '4', '长春', 'Changchun', 'changchun', '1');
INSERT INTO `travel_location` VALUES ('3102', '253', ',1,7,253,3102,', '4', '吉林', 'Jilin', 'jilin', '2');
INSERT INTO `travel_location` VALUES ('3103', '253', ',1,7,253,3103,', '4', '四平', 'Siping', 'siping', '3');
INSERT INTO `travel_location` VALUES ('3104', '253', ',1,7,253,3104,', '4', '辽源', 'Liaoyuan', 'liaoyuan', '4');
INSERT INTO `travel_location` VALUES ('3105', '253', ',1,7,253,3105,', '4', '通化', 'Tonghua', 'tonghua', '5');
INSERT INTO `travel_location` VALUES ('3106', '253', ',1,7,253,3106,', '4', '白山', 'Baishan', 'baishan', '6');
INSERT INTO `travel_location` VALUES ('3107', '253', ',1,7,253,3107,', '4', '松原', 'Songyuan', 'songyuan', '7');
INSERT INTO `travel_location` VALUES ('3108', '253', ',1,7,253,3108,', '4', '白城', 'Baicheng', 'baicheng', '8');
INSERT INTO `travel_location` VALUES ('3109', '253', ',1,7,253,3109,', '4', '延边', 'Yanbian Korean Autonomous Prefecture', 'yanbian', '24');
INSERT INTO `travel_location` VALUES ('3110', '254', ',1,7,254,3110,', '4', '哈尔滨', 'Harbin', 'haerbin', '1');
INSERT INTO `travel_location` VALUES ('3111', '254', ',1,7,254,3111,', '4', '齐齐哈尔', 'Qiqihar', 'qiqihaer', '2');
INSERT INTO `travel_location` VALUES ('3112', '254', ',1,7,254,3112,', '4', '鸡西', 'Jixi', 'jixi', '3');
INSERT INTO `travel_location` VALUES ('3113', '254', ',1,7,254,3113,', '4', '鹤岗', 'Hegang', 'hegang', '4');
INSERT INTO `travel_location` VALUES ('3114', '254', ',1,7,254,3114,', '4', '双鸭山', 'Shuangyashan', 'shuangyashan', '5');
INSERT INTO `travel_location` VALUES ('3115', '254', ',1,7,254,3115,', '4', '大庆', 'Daqing', 'daqing', '6');
INSERT INTO `travel_location` VALUES ('3116', '254', ',1,7,254,3116,', '4', '伊春', 'Yichun', 'yichun', '7');
INSERT INTO `travel_location` VALUES ('3117', '254', ',1,7,254,3117,', '4', '佳木斯', 'Jiamusi', 'jiamusi', '8');
INSERT INTO `travel_location` VALUES ('3118', '254', ',1,7,254,3118,', '4', '七台河', 'Qitaihe', 'qitaihe', '9');
INSERT INTO `travel_location` VALUES ('3119', '254', ',1,7,254,3119,', '4', '牡丹江', 'Mudanjiang', 'mudanjiang', '10');
INSERT INTO `travel_location` VALUES ('3120', '254', ',1,7,254,3120,', '4', '黑河', 'Heihe', 'heihe', '11');
INSERT INTO `travel_location` VALUES ('3121', '254', ',1,7,254,3121,', '4', '绥化', 'Suihua', 'suihua', '12');
INSERT INTO `travel_location` VALUES ('3122', '254', ',1,7,254,3122,', '4', '大兴安岭', 'Da Hinggan Ling', 'daxinganling', '27');
INSERT INTO `travel_location` VALUES ('3123', '255', ',1,7,255,3123,', '4', '黄浦', 'Huangpu', 'huangpu', '1');
INSERT INTO `travel_location` VALUES ('3124', '255', ',1,7,255,3124,', '4', '卢湾', 'Luwan', 'luwan', '3');
INSERT INTO `travel_location` VALUES ('3125', '255', ',1,7,255,3125,', '4', '徐汇', 'Xuhui', 'xuhui', '4');
INSERT INTO `travel_location` VALUES ('3126', '255', ',1,7,255,3126,', '4', '长宁', 'Changning', 'changning', '5');
INSERT INTO `travel_location` VALUES ('3127', '255', ',1,7,255,3127,', '4', '静安', 'Jing\'an', 'jingan', '6');
INSERT INTO `travel_location` VALUES ('3128', '255', ',1,7,255,3128,', '4', '普陀', 'Putuo', 'putuo', '7');
INSERT INTO `travel_location` VALUES ('3129', '255', ',1,7,255,3129,', '4', '闸北', 'Zhabei', 'zhabei', '8');
INSERT INTO `travel_location` VALUES ('3130', '255', ',1,7,255,3130,', '4', '虹口', 'Hongkou', 'hongkou', '9');
INSERT INTO `travel_location` VALUES ('3131', '255', ',1,7,255,3131,', '4', '杨浦', 'Yangpu', 'yangpu', '11');
INSERT INTO `travel_location` VALUES ('3132', '255', ',1,7,255,3132,', '4', '闵行', 'Minhang', 'xing', '12');
INSERT INTO `travel_location` VALUES ('3133', '255', ',1,7,255,3133,', '4', '宝山', 'Baoshan', 'baoshan', '13');
INSERT INTO `travel_location` VALUES ('3134', '255', ',1,7,255,3134,', '4', '嘉定', 'Jiading', 'jiading', '14');
INSERT INTO `travel_location` VALUES ('3135', '255', ',1,7,255,3135,', '4', '浦东新区', 'Pudong New Area', 'pudongxinqu', '15');
INSERT INTO `travel_location` VALUES ('3136', '255', ',1,7,255,3136,', '4', '金山', 'Jinshan', 'jinshan', '16');
INSERT INTO `travel_location` VALUES ('3137', '255', ',1,7,255,3137,', '4', '松江', 'Songjiang', 'songjiang', '17');
INSERT INTO `travel_location` VALUES ('3138', '255', ',1,7,255,3138,', '4', '奉贤', 'Fengxian', 'fengxian', '26');
INSERT INTO `travel_location` VALUES ('3139', '255', ',1,7,255,3139,', '4', '青浦', 'Qingpu', 'qingpu', '29');
INSERT INTO `travel_location` VALUES ('3140', '255', ',1,7,255,3140,', '4', '崇明', 'Chongming', 'chongming', '30');
INSERT INTO `travel_location` VALUES ('3141', '256', ',1,7,256,3141,', '4', '南京', 'Nanjing', 'nanjing', '1');
INSERT INTO `travel_location` VALUES ('3142', '256', ',1,7,256,3142,', '4', '无锡', 'Wuxi', 'wuxi', '2');
INSERT INTO `travel_location` VALUES ('3143', '256', ',1,7,256,3143,', '4', '徐州', 'Xuzhou', 'xuzhou', '3');
INSERT INTO `travel_location` VALUES ('3144', '256', ',1,7,256,3144,', '4', '常州', 'Changzhou', 'changzhou', '4');
INSERT INTO `travel_location` VALUES ('3145', '256', ',1,7,256,3145,', '4', '苏州', 'Suzhou', 'suzhou', '5');
INSERT INTO `travel_location` VALUES ('3146', '256', ',1,7,256,3146,', '4', '南通', 'Nantong', 'nantong', '6');
INSERT INTO `travel_location` VALUES ('3147', '256', ',1,7,256,3147,', '4', '连云港', 'Lianyungang', 'lianyungang', '7');
INSERT INTO `travel_location` VALUES ('3148', '256', ',1,7,256,3148,', '4', '淮安', 'Huai\'an', 'huaian', '8');
INSERT INTO `travel_location` VALUES ('3149', '256', ',1,7,256,3149,', '4', '盐城', 'Yancheng', 'yancheng', '9');
INSERT INTO `travel_location` VALUES ('3150', '256', ',1,7,256,3150,', '4', '扬州', 'Yangzhou', 'yangzhou', '10');
INSERT INTO `travel_location` VALUES ('3151', '256', ',1,7,256,3151,', '4', '镇江', 'Zhenjiang', 'zhenjiang', '11');
INSERT INTO `travel_location` VALUES ('3152', '256', ',1,7,256,3152,', '4', '泰州', 'Taizhou', 'taizhou', '12');
INSERT INTO `travel_location` VALUES ('3153', '256', ',1,7,256,3153,', '4', '宿迁', 'Suqian', 'suqian', '13');
INSERT INTO `travel_location` VALUES ('3154', '257', ',1,7,257,3154,', '4', '杭州', 'Hangzhou', 'hangzhou', '1');
INSERT INTO `travel_location` VALUES ('3155', '257', ',1,7,257,3155,', '4', '宁波', 'Ningbo', 'ningbo', '2');
INSERT INTO `travel_location` VALUES ('3156', '257', ',1,7,257,3156,', '4', '温州', 'Wenzhou', 'wenzhou', '3');
INSERT INTO `travel_location` VALUES ('3157', '257', ',1,7,257,3157,', '4', '嘉兴', 'Jiaxing', 'jiaxing', '4');
INSERT INTO `travel_location` VALUES ('3158', '257', ',1,7,257,3158,', '4', '湖州', 'Huzhou', 'huzhou', '5');
INSERT INTO `travel_location` VALUES ('3159', '257', ',1,7,257,3159,', '4', '绍兴', 'Shaoxing', 'shaoxing', '6');
INSERT INTO `travel_location` VALUES ('3160', '257', ',1,7,257,3160,', '4', '金华', 'Jinhua', 'jinhua', '7');
INSERT INTO `travel_location` VALUES ('3161', '257', ',1,7,257,3161,', '4', '衢州', 'Quzhou', 'zhou', '8');
INSERT INTO `travel_location` VALUES ('3162', '257', ',1,7,257,3162,', '4', '舟山', 'Zhoushan', 'zhoushan', '9');
INSERT INTO `travel_location` VALUES ('3163', '257', ',1,7,257,3163,', '4', '台州', 'Taizhou', 'taizhou', '10');
INSERT INTO `travel_location` VALUES ('3164', '257', ',1,7,257,3164,', '4', '丽水', 'Lishui', 'lishui', '11');
INSERT INTO `travel_location` VALUES ('3165', '258', ',1,7,258,3165,', '4', '合肥', 'Hefei', 'hefei', '1');
INSERT INTO `travel_location` VALUES ('3166', '258', ',1,7,258,3166,', '4', '芜湖', 'Wuhu', 'wuhu', '2');
INSERT INTO `travel_location` VALUES ('3167', '258', ',1,7,258,3167,', '4', '蚌埠', 'Bengbu', 'bangbu', '3');
INSERT INTO `travel_location` VALUES ('3168', '258', ',1,7,258,3168,', '4', '淮南', 'Huainan', 'huainan', '4');
INSERT INTO `travel_location` VALUES ('3169', '258', ',1,7,258,3169,', '4', '马鞍山', 'Ma\'anshan', 'maanshan', '5');
INSERT INTO `travel_location` VALUES ('3170', '258', ',1,7,258,3170,', '4', '淮北', 'Huaibei', 'huaibei', '6');
INSERT INTO `travel_location` VALUES ('3171', '258', ',1,7,258,3171,', '4', '铜陵', 'Tongling', 'tongling', '7');
INSERT INTO `travel_location` VALUES ('3172', '258', ',1,7,258,3172,', '4', '安庆', 'Anqing', 'anqing', '8');
INSERT INTO `travel_location` VALUES ('3173', '258', ',1,7,258,3173,', '4', '黄山', 'Huangshan', 'huangshan', '10');
INSERT INTO `travel_location` VALUES ('3174', '258', ',1,7,258,3174,', '4', '滁州', 'Chuzhou', 'chuzhou', '11');
INSERT INTO `travel_location` VALUES ('3175', '258', ',1,7,258,3175,', '4', '阜阳', 'Fuyang', 'fuyang', '12');
INSERT INTO `travel_location` VALUES ('3176', '258', ',1,7,258,3176,', '4', '宿州', 'Suzhou', 'suzhou', '13');
INSERT INTO `travel_location` VALUES ('3177', '258', ',1,7,258,3177,', '4', '六安', 'Lu\'an', 'liuan', '15');
INSERT INTO `travel_location` VALUES ('3178', '258', ',1,7,258,3178,', '4', '亳州', 'Bozhou', 'zhou', '16');
INSERT INTO `travel_location` VALUES ('3179', '258', ',1,7,258,3179,', '4', '池州', 'Chizhou', 'chizhou', '17');
INSERT INTO `travel_location` VALUES ('3180', '258', ',1,7,258,3180,', '4', '宣城', 'Xuancheng', 'xuancheng', '18');
INSERT INTO `travel_location` VALUES ('3181', '259', ',1,7,259,3181,', '4', '福州', 'Fuzhou', 'fuzhou', '1');
INSERT INTO `travel_location` VALUES ('3182', '259', ',1,7,259,3182,', '4', '厦门', 'Xiamen', 'xiamen', '2');
INSERT INTO `travel_location` VALUES ('3183', '259', ',1,7,259,3183,', '4', '莆田', 'Putian', 'putian', '3');
INSERT INTO `travel_location` VALUES ('3184', '259', ',1,7,259,3184,', '4', '三明', 'Sanming', 'sanming', '4');
INSERT INTO `travel_location` VALUES ('3185', '259', ',1,7,259,3185,', '4', '泉州', 'Quanzhou', 'quanzhou', '5');
INSERT INTO `travel_location` VALUES ('3186', '259', ',1,7,259,3186,', '4', '漳州', 'Zhangzhou', 'zhangzhou', '6');
INSERT INTO `travel_location` VALUES ('3187', '259', ',1,7,259,3187,', '4', '南平', 'Nanping', 'nanping', '7');
INSERT INTO `travel_location` VALUES ('3188', '259', ',1,7,259,3188,', '4', '龙岩', 'Longyan', 'longyan', '8');
INSERT INTO `travel_location` VALUES ('3189', '259', ',1,7,259,3189,', '4', '宁德', 'Ningde', 'ningde', '9');
INSERT INTO `travel_location` VALUES ('3190', '260', ',1,7,260,3190,', '4', '南昌', 'Nanchang', 'nanchang', '1');
INSERT INTO `travel_location` VALUES ('3191', '260', ',1,7,260,3191,', '4', '景德镇', 'Jingdezhen', 'jingdezhen', '2');
INSERT INTO `travel_location` VALUES ('3192', '260', ',1,7,260,3192,', '4', '萍乡', 'Pingxiang', 'pingxiang', '3');
INSERT INTO `travel_location` VALUES ('3193', '260', ',1,7,260,3193,', '4', '九江', 'Jiujiang', 'jiujiang', '4');
INSERT INTO `travel_location` VALUES ('3194', '260', ',1,7,260,3194,', '4', '新余', 'Xinyu', 'xinyu', '5');
INSERT INTO `travel_location` VALUES ('3195', '260', ',1,7,260,3195,', '4', '鹰潭', 'Yingtan', 'yingtan', '6');
INSERT INTO `travel_location` VALUES ('3196', '260', ',1,7,260,3196,', '4', '赣州', 'Ganzhou', 'ganzhou', '7');
INSERT INTO `travel_location` VALUES ('3197', '260', ',1,7,260,3197,', '4', '吉安', 'Ji\'an', 'jian', '8');
INSERT INTO `travel_location` VALUES ('3198', '260', ',1,7,260,3198,', '4', '宜春', 'Yichun', 'yichun', '9');
INSERT INTO `travel_location` VALUES ('3199', '260', ',1,7,260,3199,', '4', '抚州', 'Fuzhou', 'fuzhou', '10');
INSERT INTO `travel_location` VALUES ('3200', '260', ',1,7,260,3200,', '4', '上饶', 'Shangrao', 'shangrao', '11');
INSERT INTO `travel_location` VALUES ('3201', '261', ',1,7,261,3201,', '4', '济南', 'Jinan', 'jinan', '1');
INSERT INTO `travel_location` VALUES ('3202', '261', ',1,7,261,3202,', '4', '青岛', 'Qingdao', 'qingdao', '2');
INSERT INTO `travel_location` VALUES ('3203', '261', ',1,7,261,3203,', '4', '淄博', 'Zibo', 'zibo', '3');
INSERT INTO `travel_location` VALUES ('3204', '261', ',1,7,261,3204,', '4', '枣庄', 'Zaozhuang', 'zaozhuang', '4');
INSERT INTO `travel_location` VALUES ('3205', '261', ',1,7,261,3205,', '4', '东营', 'Dongying', 'dongying', '5');
INSERT INTO `travel_location` VALUES ('3206', '261', ',1,7,261,3206,', '4', '烟台', 'Yantai', 'yantai', '6');
INSERT INTO `travel_location` VALUES ('3207', '261', ',1,7,261,3207,', '4', '潍坊', 'Weifang', 'weifang', '7');
INSERT INTO `travel_location` VALUES ('3208', '261', ',1,7,261,3208,', '4', '济宁', 'Jining', 'jining', '8');
INSERT INTO `travel_location` VALUES ('3209', '261', ',1,7,261,3209,', '4', '泰安', 'Tai\'an', 'taian', '9');
INSERT INTO `travel_location` VALUES ('3210', '261', ',1,7,261,3210,', '4', '威海', 'Weihai', 'weihai', '10');
INSERT INTO `travel_location` VALUES ('3211', '261', ',1,7,261,3211,', '4', '日照', 'Rizhao', 'rizhao', '11');
INSERT INTO `travel_location` VALUES ('3212', '261', ',1,7,261,3212,', '4', '莱芜', 'Laiwu', 'laiwu', '12');
INSERT INTO `travel_location` VALUES ('3213', '261', ',1,7,261,3213,', '4', '临沂', 'Linyi', 'linyi', '13');
INSERT INTO `travel_location` VALUES ('3214', '261', ',1,7,261,3214,', '4', '德州', 'Dezhou', 'dezhou', '14');
INSERT INTO `travel_location` VALUES ('3215', '261', ',1,7,261,3215,', '4', '聊城', 'Liaocheng', 'liaocheng', '15');
INSERT INTO `travel_location` VALUES ('3216', '261', ',1,7,261,3216,', '4', '滨州', 'Binzhou', 'binzhou', '16');
INSERT INTO `travel_location` VALUES ('3217', '261', ',1,7,261,3217,', '4', '菏泽', 'Heze', 'heze', '17');
INSERT INTO `travel_location` VALUES ('3218', '262', ',1,7,262,3218,', '4', '郑州', 'Zhengzhou', 'zhengzhou', '1');
INSERT INTO `travel_location` VALUES ('3219', '262', ',1,7,262,3219,', '4', '开封', 'Kaifeng', 'kaifeng', '2');
INSERT INTO `travel_location` VALUES ('3220', '262', ',1,7,262,3220,', '4', '洛阳', 'Luoyang', 'luoyang', '3');
INSERT INTO `travel_location` VALUES ('3221', '262', ',1,7,262,3221,', '4', '平顶山', 'Pingdingshan', 'pingdingshan', '4');
INSERT INTO `travel_location` VALUES ('3222', '262', ',1,7,262,3222,', '4', '安阳', 'Anyang', 'anyang', '5');
INSERT INTO `travel_location` VALUES ('3223', '262', ',1,7,262,3223,', '4', '鹤壁', 'Hebi', 'hebi', '6');
INSERT INTO `travel_location` VALUES ('3224', '262', ',1,7,262,3224,', '4', '新乡', 'Xinxiang', 'xinxiang', '7');
INSERT INTO `travel_location` VALUES ('3225', '262', ',1,7,262,3225,', '4', '焦作', 'Jiaozuo', 'jiaozuo', '8');
INSERT INTO `travel_location` VALUES ('3226', '262', ',1,7,262,3226,', '4', '濮阳', 'Puyang', 'yang', '9');
INSERT INTO `travel_location` VALUES ('3227', '262', ',1,7,262,3227,', '4', '许昌', 'Xuchang', 'xuchang', '10');
INSERT INTO `travel_location` VALUES ('3228', '262', ',1,7,262,3228,', '4', '漯河', 'Luohe', 'he', '11');
INSERT INTO `travel_location` VALUES ('3229', '262', ',1,7,262,3229,', '4', '三门峡', 'Sanmenxia', 'sanmenxia', '12');
INSERT INTO `travel_location` VALUES ('3230', '262', ',1,7,262,3230,', '4', '南阳', 'Nanyang', 'nanyang', '13');
INSERT INTO `travel_location` VALUES ('3231', '262', ',1,7,262,3231,', '4', '商丘', 'Shangqiu', 'shangqiu', '14');
INSERT INTO `travel_location` VALUES ('3232', '262', ',1,7,262,3232,', '4', '信阳', 'Xinyang', 'xinyang', '15');
INSERT INTO `travel_location` VALUES ('3233', '262', ',1,7,262,3233,', '4', '周口', 'Zhoukou', 'zhoukou', '16');
INSERT INTO `travel_location` VALUES ('3234', '262', ',1,7,262,3234,', '4', '驻马店', 'Zhumadian', 'zhumadian', '17');
INSERT INTO `travel_location` VALUES ('3235', '262', ',1,7,262,3235,', '4', '济源', 'Jiyuan', 'jiyuan', '18');
INSERT INTO `travel_location` VALUES ('3236', '263', ',1,7,263,3236,', '4', '武汉', 'Wuhan', 'wuhan', '1');
INSERT INTO `travel_location` VALUES ('3237', '263', ',1,7,263,3237,', '4', '黄石', 'Huangshi', 'huangshi', '2');
INSERT INTO `travel_location` VALUES ('3238', '263', ',1,7,263,3238,', '4', '十堰', 'Shiyan', 'shiyan', '3');
INSERT INTO `travel_location` VALUES ('3239', '263', ',1,7,263,3239,', '4', '宜昌', 'Yichang', 'yichang', '5');
INSERT INTO `travel_location` VALUES ('3240', '263', ',1,7,263,3240,', '4', '襄阳', 'Xiangyang', 'xiangyang', '6');
INSERT INTO `travel_location` VALUES ('3241', '263', ',1,7,263,3241,', '4', '鄂州', 'Ezhou', 'ezhou', '7');
INSERT INTO `travel_location` VALUES ('3242', '263', ',1,7,263,3242,', '4', '荆门', 'Jingmen', 'jingmen', '8');
INSERT INTO `travel_location` VALUES ('3243', '263', ',1,7,263,3243,', '4', '孝感', 'Xiaogan', 'xiaogan', '9');
INSERT INTO `travel_location` VALUES ('3244', '263', ',1,7,263,3244,', '4', '荆州', 'Jingzhou', 'jingzhou', '10');
INSERT INTO `travel_location` VALUES ('3245', '263', ',1,7,263,3245,', '4', '黄冈', 'Huanggang', 'huanggang', '11');
INSERT INTO `travel_location` VALUES ('3246', '263', ',1,7,263,3246,', '4', '咸宁', 'Xianning', 'xianning', '12');
INSERT INTO `travel_location` VALUES ('3247', '263', ',1,7,263,3247,', '4', '随州', 'Suizhou', 'suizhou', '13');
INSERT INTO `travel_location` VALUES ('3248', '263', ',1,7,263,3248,', '4', '恩施', 'Enshi Tujia-Miao Autonomous Prefecture', 'enshi', '28');
INSERT INTO `travel_location` VALUES ('3249', '263', ',1,7,263,3249,', '4', '仙桃', 'Xiantao', 'xiantao', '94');
INSERT INTO `travel_location` VALUES ('3250', '263', ',1,7,263,3250,', '4', '潜江', 'Qianjiang', 'qianjiang', '95');
INSERT INTO `travel_location` VALUES ('3251', '263', ',1,7,263,3251,', '4', '天门', 'Tianmen', 'tianmen', '96');
INSERT INTO `travel_location` VALUES ('3252', '263', ',1,7,263,3252,', '4', '神农架', 'Shennongjia', 'shennongjia', 'A21');
INSERT INTO `travel_location` VALUES ('3253', '264', ',1,7,264,3253,', '4', '长沙', 'Changsha', 'changsha', '1');
INSERT INTO `travel_location` VALUES ('3254', '264', ',1,7,264,3254,', '4', '株洲', 'Zhuzhou', 'zhuzhou', '2');
INSERT INTO `travel_location` VALUES ('3255', '264', ',1,7,264,3255,', '4', '湘潭', 'Xiangtan', 'xiangtan', '3');
INSERT INTO `travel_location` VALUES ('3256', '264', ',1,7,264,3256,', '4', '衡阳', 'Hengyang', 'hengyang', '4');
INSERT INTO `travel_location` VALUES ('3257', '264', ',1,7,264,3257,', '4', '邵阳', 'Shaoyang', 'shaoyang', '5');
INSERT INTO `travel_location` VALUES ('3258', '264', ',1,7,264,3258,', '4', '岳阳', 'Yueyang', 'yueyang', '6');
INSERT INTO `travel_location` VALUES ('3259', '264', ',1,7,264,3259,', '4', '常德', 'Changde', 'changde', '7');
INSERT INTO `travel_location` VALUES ('3260', '264', ',1,7,264,3260,', '4', '张家界', 'Zhangjiajie', 'zhangjiajie', '8');
INSERT INTO `travel_location` VALUES ('3261', '264', ',1,7,264,3261,', '4', '益阳', 'Yiyang', 'yiyang', '9');
INSERT INTO `travel_location` VALUES ('3262', '264', ',1,7,264,3262,', '4', '郴州', 'Chenzhou', 'chenzhou', '10');
INSERT INTO `travel_location` VALUES ('3263', '264', ',1,7,264,3263,', '4', '永州', 'Yongzhou', 'yongzhou', '11');
INSERT INTO `travel_location` VALUES ('3264', '264', ',1,7,264,3264,', '4', '怀化', 'Huaihua', 'huaihua', '12');
INSERT INTO `travel_location` VALUES ('3265', '264', ',1,7,264,3265,', '4', '娄底', 'Loudi', 'loudi', '13');
INSERT INTO `travel_location` VALUES ('3266', '264', ',1,7,264,3266,', '4', '湘西', 'Xiangxi Tujia-Miao Autonomous Prefecture', 'xiangxi', '31');
INSERT INTO `travel_location` VALUES ('3267', '265', ',1,7,265,3267,', '4', '广州', 'Guangzhou', 'guangzhou', '1');
INSERT INTO `travel_location` VALUES ('3268', '265', ',1,7,265,3268,', '4', '韶关', 'Shaoguan', 'shaoguan', '2');
INSERT INTO `travel_location` VALUES ('3269', '265', ',1,7,265,3269,', '4', '深圳', 'Shenzhen', 'shen', '3');
INSERT INTO `travel_location` VALUES ('3270', '265', ',1,7,265,3270,', '4', '珠海', 'Zhuhai', 'zhuhai', '4');
INSERT INTO `travel_location` VALUES ('3271', '265', ',1,7,265,3271,', '4', '汕头', 'Shantou', 'shantou', '5');
INSERT INTO `travel_location` VALUES ('3272', '265', ',1,7,265,3272,', '4', '佛山', 'Foshan', 'foshan', '6');
INSERT INTO `travel_location` VALUES ('3273', '265', ',1,7,265,3273,', '4', '江门', 'Jiangmen', 'jiangmen', '7');
INSERT INTO `travel_location` VALUES ('3274', '265', ',1,7,265,3274,', '4', '湛江', 'Zhanjiang', 'zhanjiang', '8');
INSERT INTO `travel_location` VALUES ('3275', '265', ',1,7,265,3275,', '4', '茂名', 'Maoming', 'maoming', '9');
INSERT INTO `travel_location` VALUES ('3276', '265', ',1,7,265,3276,', '4', '肇庆', 'Zhaoqing', 'zhaoqing', '12');
INSERT INTO `travel_location` VALUES ('3277', '265', ',1,7,265,3277,', '4', '惠州', 'Huizhou', 'huizhou', '13');
INSERT INTO `travel_location` VALUES ('3278', '265', ',1,7,265,3278,', '4', '梅州', 'Meizhou', 'meizhou', '14');
INSERT INTO `travel_location` VALUES ('3279', '265', ',1,7,265,3279,', '4', '汕尾', 'Shanwei', 'shanwei', '15');
INSERT INTO `travel_location` VALUES ('3280', '265', ',1,7,265,3280,', '4', '河源', 'Heyuan', 'heyuan', '16');
INSERT INTO `travel_location` VALUES ('3281', '265', ',1,7,265,3281,', '4', '阳江', 'Yangjiang', 'yangjiang', '17');
INSERT INTO `travel_location` VALUES ('3282', '265', ',1,7,265,3282,', '4', '清远', 'Qingyuan', 'qingyuan', '18');
INSERT INTO `travel_location` VALUES ('3283', '265', ',1,7,265,3283,', '4', '东莞', 'Dongguan', 'dong', '19');
INSERT INTO `travel_location` VALUES ('3284', '265', ',1,7,265,3284,', '4', '中山', 'Zhongshan', 'zhongshan', '20');
INSERT INTO `travel_location` VALUES ('3285', '265', ',1,7,265,3285,', '4', '潮州', 'Chaozhou', 'chaozhou', '51');
INSERT INTO `travel_location` VALUES ('3286', '265', ',1,7,265,3286,', '4', '揭阳', 'Jieyang', 'jieyang', '52');
INSERT INTO `travel_location` VALUES ('3287', '265', ',1,7,265,3287,', '4', '云浮', 'Yunfu', 'yunfu', '53');
INSERT INTO `travel_location` VALUES ('3288', '266', ',1,7,266,3288,', '4', '南宁', 'Nanning', 'nanning', '1');
INSERT INTO `travel_location` VALUES ('3289', '266', ',1,7,266,3289,', '4', '柳州', 'Liuzhou', 'liuzhou', '2');
INSERT INTO `travel_location` VALUES ('3290', '266', ',1,7,266,3290,', '4', '桂林', 'Guilin', 'guilin', '3');
INSERT INTO `travel_location` VALUES ('3291', '266', ',1,7,266,3291,', '4', '梧州', 'Wuzhou', 'wuzhou', '4');
INSERT INTO `travel_location` VALUES ('3292', '266', ',1,7,266,3292,', '4', '北海', 'Beihai', 'beihai', '5');
INSERT INTO `travel_location` VALUES ('3293', '266', ',1,7,266,3293,', '4', '防城港', 'Fangchenggang', 'fangchenggang', '6');
INSERT INTO `travel_location` VALUES ('3294', '266', ',1,7,266,3294,', '4', '钦州', 'Qinzhou', 'qinzhou', '7');
INSERT INTO `travel_location` VALUES ('3295', '266', ',1,7,266,3295,', '4', '贵港', 'Guigang', 'guigang', '8');
INSERT INTO `travel_location` VALUES ('3296', '266', ',1,7,266,3296,', '4', '玉林', 'Yulin', 'yulin', '9');
INSERT INTO `travel_location` VALUES ('3297', '266', ',1,7,266,3297,', '4', '百色', 'Baise', 'baise', '10');
INSERT INTO `travel_location` VALUES ('3298', '266', ',1,7,266,3298,', '4', '贺州', 'Hezhou', 'hezhou', '11');
INSERT INTO `travel_location` VALUES ('3299', '266', ',1,7,266,3299,', '4', '河池', 'Hechi', 'hechi', '12');
INSERT INTO `travel_location` VALUES ('3300', '266', ',1,7,266,3300,', '4', '来宾', 'Laibin', 'laibin', '13');
INSERT INTO `travel_location` VALUES ('3301', '266', ',1,7,266,3301,', '4', '崇左', 'Chongzuo', 'chongzuo', '14');
INSERT INTO `travel_location` VALUES ('3302', '267', ',1,7,267,3302,', '4', '海口', 'Haikou', 'haikou', '1');
INSERT INTO `travel_location` VALUES ('3303', '267', ',1,7,267,3303,', '4', '三亚', 'Sanya', 'sanya', '2');
INSERT INTO `travel_location` VALUES ('3304', '267', ',1,7,267,3304,', '4', '三沙', 'Shansha', 'sansha', '3');
INSERT INTO `travel_location` VALUES ('3305', '267', ',1,7,267,3305,', '4', '五指山', 'Wuzhishan', 'wuzhishan', '91');
INSERT INTO `travel_location` VALUES ('3306', '267', ',1,7,267,3306,', '4', '琼海', 'Qionghai', 'qionghai', '92');
INSERT INTO `travel_location` VALUES ('3307', '267', ',1,7,267,3307,', '4', '儋州', 'Danzhou', 'zhou', '93');
INSERT INTO `travel_location` VALUES ('3308', '267', ',1,7,267,3308,', '4', '文昌', 'Wenchang', 'wenchang', '95');
INSERT INTO `travel_location` VALUES ('3309', '267', ',1,7,267,3309,', '4', '万宁', 'Wanning', 'wanning', '96');
INSERT INTO `travel_location` VALUES ('3310', '267', ',1,7,267,3310,', '4', '东方', 'Dongfang', 'dongfang', '97');
INSERT INTO `travel_location` VALUES ('3311', '267', ',1,7,267,3311,', '4', '定安', 'Ding\'an', 'dingan', 'A25');
INSERT INTO `travel_location` VALUES ('3312', '267', ',1,7,267,3312,', '4', '屯昌', 'Tunchang', 'tunchang', 'A26');
INSERT INTO `travel_location` VALUES ('3313', '267', ',1,7,267,3313,', '4', '澄迈', 'Cengmai', 'chengmai', 'A27');
INSERT INTO `travel_location` VALUES ('3314', '267', ',1,7,267,3314,', '4', '临高', 'Lingao', 'lingao', 'A28');
INSERT INTO `travel_location` VALUES ('3315', '267', ',1,7,267,3315,', '4', '白沙', 'Baisha Li Autonomous County', 'baisha', 'A30');
INSERT INTO `travel_location` VALUES ('3316', '267', ',1,7,267,3316,', '4', '昌江', 'Jiang Li Autonomous County', 'changjiang', 'A31');
INSERT INTO `travel_location` VALUES ('3317', '267', ',1,7,267,3317,', '4', '乐东', 'Ledong Li Autonomous County', 'ledong', 'A33');
INSERT INTO `travel_location` VALUES ('3318', '267', ',1,7,267,3318,', '4', '陵水', 'Lingshui Li Autonomous County', 'lingshui', 'A34');
INSERT INTO `travel_location` VALUES ('3319', '267', ',1,7,267,3319,', '4', '保亭', 'Baoting Li-Miao Autonomous County', 'baoting', 'A35');
INSERT INTO `travel_location` VALUES ('3320', '267', ',1,7,267,3320,', '4', '琼中', 'Qiongzhong Li-Miao Autonomous County', 'qiongzhong', 'A36');
INSERT INTO `travel_location` VALUES ('3321', '268', ',1,7,268,3321,', '4', '万州', 'Wanzhou', 'wanzhou', '1');
INSERT INTO `travel_location` VALUES ('3322', '268', ',1,7,268,3322,', '4', '涪陵', 'Fuling', 'fuling', '2');
INSERT INTO `travel_location` VALUES ('3323', '268', ',1,7,268,3323,', '4', '渝中', 'Yuzhong', 'yuzhong', '3');
INSERT INTO `travel_location` VALUES ('3324', '268', ',1,7,268,3324,', '4', '大渡口', 'Dadukou', 'dadukou', '4');
INSERT INTO `travel_location` VALUES ('3325', '268', ',1,7,268,3325,', '4', '江北', 'Jiangbei', 'jiangbei', '5');
INSERT INTO `travel_location` VALUES ('3326', '268', ',1,7,268,3326,', '4', '沙坪坝', 'Shapingba', 'shapingba', '6');
INSERT INTO `travel_location` VALUES ('3327', '268', ',1,7,268,3327,', '4', '九龙坡', 'Jiulongpo', 'jiulongpo', '7');
INSERT INTO `travel_location` VALUES ('3328', '268', ',1,7,268,3328,', '4', '南岸', 'Nan\'an', 'nanan', '8');
INSERT INTO `travel_location` VALUES ('3329', '268', ',1,7,268,3329,', '4', '北碚', 'Beibei', 'bei', '9');
INSERT INTO `travel_location` VALUES ('3330', '268', ',1,7,268,3330,', '4', '两江新区', 'Kaixian', 'liangjiangxinqu', '85');
INSERT INTO `travel_location` VALUES ('3331', '268', ',1,7,268,3331,', '4', '万盛', 'Wansheng', 'wansheng', '10');
INSERT INTO `travel_location` VALUES ('3332', '268', ',1,7,268,3332,', '4', '双桥', 'Shuangqiao', 'shuangqiao', '11');
INSERT INTO `travel_location` VALUES ('3333', '268', ',1,7,268,3333,', '4', '渝北', 'Yubei', 'yubei', '12');
INSERT INTO `travel_location` VALUES ('3334', '268', ',1,7,268,3334,', '4', '巴南', 'Ba\'nan', 'banan', '13');
INSERT INTO `travel_location` VALUES ('3335', '268', ',1,7,268,3335,', '4', '长寿', 'Changshou', 'changshou', '21');
INSERT INTO `travel_location` VALUES ('3336', '268', ',1,7,268,3336,', '4', '綦江', 'Qijiang', 'jiang', '22');
INSERT INTO `travel_location` VALUES ('3337', '268', ',1,7,268,3337,', '4', '潼南', 'Tongnan', 'nan', '23');
INSERT INTO `travel_location` VALUES ('3338', '268', ',1,7,268,3338,', '4', '铜梁', 'Tongliang', 'tongliang', '24');
INSERT INTO `travel_location` VALUES ('3339', '268', ',1,7,268,3339,', '4', '大足', 'Dazu', 'dazu', '25');
INSERT INTO `travel_location` VALUES ('3340', '268', ',1,7,268,3340,', '4', '荣昌', 'Rongchang', 'rongchang', '26');
INSERT INTO `travel_location` VALUES ('3341', '268', ',1,7,268,3341,', '4', '璧山', 'Bishan', 'shan', '27');
INSERT INTO `travel_location` VALUES ('3342', '268', ',1,7,268,3342,', '4', '梁平', 'Liangping', 'liangping', '28');
INSERT INTO `travel_location` VALUES ('3343', '268', ',1,7,268,3343,', '4', '城口', 'Chengkou', 'chengkou', '29');
INSERT INTO `travel_location` VALUES ('3344', '268', ',1,7,268,3344,', '4', '丰都', 'Fengdu', 'fengdu', '30');
INSERT INTO `travel_location` VALUES ('3345', '268', ',1,7,268,3345,', '4', '垫江', 'Dianjiang', 'dianjiang', '31');
INSERT INTO `travel_location` VALUES ('3346', '268', ',1,7,268,3346,', '4', '武隆', 'Wulong', 'wulong', '32');
INSERT INTO `travel_location` VALUES ('3347', '268', ',1,7,268,3347,', '4', '忠县', 'Zhongxian', 'zhongxian', '33');
INSERT INTO `travel_location` VALUES ('3348', '268', ',1,7,268,3348,', '4', '开县', 'Kaixian', 'kaixian', '34');
INSERT INTO `travel_location` VALUES ('3349', '268', ',1,7,268,3349,', '4', '云阳', 'Yunyang', 'yunyang', '35');
INSERT INTO `travel_location` VALUES ('3350', '268', ',1,7,268,3350,', '4', '奉节', 'Fengjie', 'fengjie', '36');
INSERT INTO `travel_location` VALUES ('3351', '268', ',1,7,268,3351,', '4', '巫山', 'Wushan', 'wushan', '37');
INSERT INTO `travel_location` VALUES ('3352', '268', ',1,7,268,3352,', '4', '巫溪', 'Wuxi', 'wuxi', '38');
INSERT INTO `travel_location` VALUES ('3353', '268', ',1,7,268,3353,', '4', '黔江', 'Qianjiang', 'qianjiang', '39');
INSERT INTO `travel_location` VALUES ('3354', '268', ',1,7,268,3354,', '4', '石柱', 'Shizhu Tujia Autonomous Country', 'shizhu', '40');
INSERT INTO `travel_location` VALUES ('3355', '268', ',1,7,268,3355,', '4', '秀山', 'Xiushan Tujia-Miao Autonomous Country', 'xiushan', '41');
INSERT INTO `travel_location` VALUES ('3356', '268', ',1,7,268,3356,', '4', '酉阳', 'Youyang Tujia-Miao Autonomous Country', 'youyang', '42');
INSERT INTO `travel_location` VALUES ('3357', '268', ',1,7,268,3357,', '4', '彭水', 'Pengshui Miao-Tujia Autonomous Country', 'pengshui', '43');
INSERT INTO `travel_location` VALUES ('3358', '268', ',1,7,268,3358,', '4', '江津', 'Jiangjin', 'jiangjin', '81');
INSERT INTO `travel_location` VALUES ('3359', '268', ',1,7,268,3359,', '4', '合川', 'Hechuan', 'hechuan', '82');
INSERT INTO `travel_location` VALUES ('3360', '268', ',1,7,268,3360,', '4', '永川', 'Yongchuan', 'yongchuan', '83');
INSERT INTO `travel_location` VALUES ('3361', '268', ',1,7,268,3361,', '4', '南川', 'Liangjiangxinqu', 'nanchuan', '84');
INSERT INTO `travel_location` VALUES ('3362', '269', ',1,7,269,3362,', '4', '成都', 'Chengdu', 'chengdu', '1');
INSERT INTO `travel_location` VALUES ('3363', '269', ',1,7,269,3363,', '4', '自贡', 'Zigong', 'zigong', '3');
INSERT INTO `travel_location` VALUES ('3364', '269', ',1,7,269,3364,', '4', '攀枝花', 'Panzhihua', 'panzhihua', '4');
INSERT INTO `travel_location` VALUES ('3365', '269', ',1,7,269,3365,', '4', '泸州', 'Luzhou', 'zhou', '5');
INSERT INTO `travel_location` VALUES ('3366', '269', ',1,7,269,3366,', '4', '德阳', 'Deyang', 'deyang', '6');
INSERT INTO `travel_location` VALUES ('3367', '269', ',1,7,269,3367,', '4', '绵阳', 'Mianyang', 'mianyang', '7');
INSERT INTO `travel_location` VALUES ('3368', '269', ',1,7,269,3368,', '4', '广元', 'Guangyuan', 'guangyuan', '8');
INSERT INTO `travel_location` VALUES ('3369', '269', ',1,7,269,3369,', '4', '遂宁', 'Suining', 'suining', '9');
INSERT INTO `travel_location` VALUES ('3370', '269', ',1,7,269,3370,', '4', '内江', 'Neijiang', 'neijiang', '10');
INSERT INTO `travel_location` VALUES ('3371', '269', ',1,7,269,3371,', '4', '乐山', 'Leshan', 'leshan', '11');
INSERT INTO `travel_location` VALUES ('3372', '269', ',1,7,269,3372,', '4', '南充', 'Nanchong', 'nanchong', '13');
INSERT INTO `travel_location` VALUES ('3373', '269', ',1,7,269,3373,', '4', '眉山', 'Meishan', 'meishan', '14');
INSERT INTO `travel_location` VALUES ('3374', '269', ',1,7,269,3374,', '4', '宜宾', 'Yibin', 'yibin', '15');
INSERT INTO `travel_location` VALUES ('3375', '269', ',1,7,269,3375,', '4', '广安', 'Guang\'an', 'guangan', '16');
INSERT INTO `travel_location` VALUES ('3376', '269', ',1,7,269,3376,', '4', '达州', 'Dazhou', 'dazhou', '17');
INSERT INTO `travel_location` VALUES ('3377', '269', ',1,7,269,3377,', '4', '雅安', 'Ya\'an', 'yaan', '18');
INSERT INTO `travel_location` VALUES ('3378', '269', ',1,7,269,3378,', '4', '巴中', 'Bazhong', 'bazhong', '19');
INSERT INTO `travel_location` VALUES ('3379', '269', ',1,7,269,3379,', '4', '资阳', 'Ziyang', 'ziyang', '20');
INSERT INTO `travel_location` VALUES ('3380', '269', ',1,7,269,3380,', '4', '阿坝', 'Aba Tibetan-Qiang Autonomous Prefecture', 'aba', '32');
INSERT INTO `travel_location` VALUES ('3381', '269', ',1,7,269,3381,', '4', '甘孜', 'Garze Tibetan Autonomous Prefecture', 'ganzi', '33');
INSERT INTO `travel_location` VALUES ('3382', '269', ',1,7,269,3382,', '4', '凉山', 'Liangshan Yi Autonomous Prefecture', 'liangshan', '34');
INSERT INTO `travel_location` VALUES ('3383', '270', ',1,7,270,3383,', '4', '贵阳', 'Guiyang', 'guiyang', '1');
INSERT INTO `travel_location` VALUES ('3384', '270', ',1,7,270,3384,', '4', '六盘水', 'Liupanshui', 'liupanshui', '2');
INSERT INTO `travel_location` VALUES ('3385', '270', ',1,7,270,3385,', '4', '遵义', 'Zunyi', 'zunyi', '3');
INSERT INTO `travel_location` VALUES ('3386', '270', ',1,7,270,3386,', '4', '安顺', 'Anshun', 'anshun', '4');
INSERT INTO `travel_location` VALUES ('3387', '270', ',1,7,270,3387,', '4', '铜仁', 'Tongren', 'tongren', '22');
INSERT INTO `travel_location` VALUES ('3388', '270', ',1,7,270,3388,', '4', '黔西南', 'Qianxinan Buyi-Miao Autonomous Prefecture', 'qianxinan', '23');
INSERT INTO `travel_location` VALUES ('3389', '270', ',1,7,270,3389,', '4', '毕节', 'Bijie', 'bijie', '24');
INSERT INTO `travel_location` VALUES ('3390', '270', ',1,7,270,3390,', '4', '黔东南', 'Qiandongnan Miao-Dong Autonomous Prefecture', 'qiandongnan', '26');
INSERT INTO `travel_location` VALUES ('3391', '270', ',1,7,270,3391,', '4', '黔南', 'Qiannan Buyi Autonomous Prefecture', 'qiannan', '27');
INSERT INTO `travel_location` VALUES ('3392', '271', ',1,7,271,3392,', '4', '昆明', 'Kunming', 'kunming', '1');
INSERT INTO `travel_location` VALUES ('3393', '271', ',1,7,271,3393,', '4', '曲靖', 'Qujing', 'qujing', '3');
INSERT INTO `travel_location` VALUES ('3394', '271', ',1,7,271,3394,', '4', '玉溪', 'Yuxi', 'yuxi', '4');
INSERT INTO `travel_location` VALUES ('3395', '271', ',1,7,271,3395,', '4', '保山', 'Baoshan', 'baoshan', '5');
INSERT INTO `travel_location` VALUES ('3396', '271', ',1,7,271,3396,', '4', '昭通', 'Zhaotong', 'zhaotong', '6');
INSERT INTO `travel_location` VALUES ('3397', '271', ',1,7,271,3397,', '4', '丽江', 'Lijiang', 'lijiang', '7');
INSERT INTO `travel_location` VALUES ('3398', '271', ',1,7,271,3398,', '4', '普洱', 'Pu\'er', 'puer', '8');
INSERT INTO `travel_location` VALUES ('3399', '271', ',1,7,271,3399,', '4', '临沧', 'Lincang', 'lincang', '9');
INSERT INTO `travel_location` VALUES ('3400', '271', ',1,7,271,3400,', '4', '楚雄', 'Chuxiong Yi Autonomous Prefecture', 'chuxiong', '23');
INSERT INTO `travel_location` VALUES ('3401', '271', ',1,7,271,3401,', '4', '红河', 'Honghe Hani-Yi Autonomous Prefecture', 'honghe', '25');
INSERT INTO `travel_location` VALUES ('3402', '271', ',1,7,271,3402,', '4', '文山', 'Wenshan Zhuang-Miao Autonomous Prefecture', 'wenshan', '26');
INSERT INTO `travel_location` VALUES ('3403', '271', ',1,7,271,3403,', '4', '西双版纳', 'Xishuangbanna Dai Autonomous Prefecture', 'xishuangbanna', '28');
INSERT INTO `travel_location` VALUES ('3404', '271', ',1,7,271,3404,', '4', '大理', 'Dali Bai Autonomous Prefecture', 'dali', '29');
INSERT INTO `travel_location` VALUES ('3405', '271', ',1,7,271,3405,', '4', '德宏', 'Dehong Dai-Jingpo Autonomous Prefecture', 'dehong', '31');
INSERT INTO `travel_location` VALUES ('3406', '271', ',1,7,271,3406,', '4', '怒江', 'Nujiang Lisu Autonomous Prefecture', 'nujiang', '33');
INSERT INTO `travel_location` VALUES ('3407', '271', ',1,7,271,3407,', '4', '迪庆', 'Diqing Tibetan Autonomous Prefecture', 'diqing', '34');
INSERT INTO `travel_location` VALUES ('3408', '272', ',1,7,272,3408,', '4', '拉萨', 'Lhasa', 'lasa', '1');
INSERT INTO `travel_location` VALUES ('3409', '272', ',1,7,272,3409,', '4', '昌都', 'Qamdo', 'changdu', '21');
INSERT INTO `travel_location` VALUES ('3410', '272', ',1,7,272,3410,', '4', '山南', 'Shannan', 'shannan', '22');
INSERT INTO `travel_location` VALUES ('3411', '272', ',1,7,272,3411,', '4', '日喀则', 'Xigaze', 'rikaze', '23');
INSERT INTO `travel_location` VALUES ('3412', '272', ',1,7,272,3412,', '4', '那曲', 'Nagqu', 'naqu', '24');
INSERT INTO `travel_location` VALUES ('3413', '272', ',1,7,272,3413,', '4', '阿里', 'Ngari', 'ali', '25');
INSERT INTO `travel_location` VALUES ('3414', '272', ',1,7,272,3414,', '4', '林芝', 'Nyingchi', 'linzhi', '26');
INSERT INTO `travel_location` VALUES ('3415', '273', ',1,7,273,3415,', '4', '西安', 'Xi\'an', 'xian', '1');
INSERT INTO `travel_location` VALUES ('3416', '273', ',1,7,273,3416,', '4', '铜川', 'Tongchuan', 'tongchuan', '2');
INSERT INTO `travel_location` VALUES ('3417', '273', ',1,7,273,3417,', '4', '宝鸡', 'Baoji', 'baoji', '3');
INSERT INTO `travel_location` VALUES ('3418', '273', ',1,7,273,3418,', '4', '咸阳', 'Xianyang', 'xianyang', '4');
INSERT INTO `travel_location` VALUES ('3419', '273', ',1,7,273,3419,', '4', '渭南', 'Weinan', 'weinan', '5');
INSERT INTO `travel_location` VALUES ('3420', '273', ',1,7,273,3420,', '4', '延安', 'Yan\'an', 'yanan', '6');
INSERT INTO `travel_location` VALUES ('3421', '273', ',1,7,273,3421,', '4', '汉中', 'Hanzhong', 'hanzhong', '7');
INSERT INTO `travel_location` VALUES ('3422', '273', ',1,7,273,3422,', '4', '榆林', 'Yulin', 'yulin', '8');
INSERT INTO `travel_location` VALUES ('3423', '273', ',1,7,273,3423,', '4', '安康', 'Ankang', 'ankang', '9');
INSERT INTO `travel_location` VALUES ('3424', '273', ',1,7,273,3424,', '4', '商洛', 'Shangluo', 'shangluo', '10');
INSERT INTO `travel_location` VALUES ('3425', '274', ',1,7,274,3425,', '4', '兰州市', 'Lanzhou', 'lanzhoushi', '1');
INSERT INTO `travel_location` VALUES ('3426', '274', ',1,7,274,3426,', '4', '嘉峪关', 'Jinchang', 'jiayuguan', '2');
INSERT INTO `travel_location` VALUES ('3427', '274', ',1,7,274,3427,', '4', '金昌', 'Baiyin', 'jinchang', '3');
INSERT INTO `travel_location` VALUES ('3428', '274', ',1,7,274,3428,', '4', '白银', 'Tianshui', 'baiyin', '4');
INSERT INTO `travel_location` VALUES ('3429', '274', ',1,7,274,3429,', '4', '天水', 'Jiayuguan', 'tianshui', '5');
INSERT INTO `travel_location` VALUES ('3430', '274', ',1,7,274,3430,', '4', '武威', 'Wuwei', 'wuwei', '6');
INSERT INTO `travel_location` VALUES ('3431', '274', ',1,7,274,3431,', '4', '张掖', 'Zhangye', 'zhangye', '7');
INSERT INTO `travel_location` VALUES ('3432', '274', ',1,7,274,3432,', '4', '平凉', 'Pingliang', 'pingliang', '8');
INSERT INTO `travel_location` VALUES ('3433', '274', ',1,7,274,3433,', '4', '酒泉', 'Jiuquan', 'jiuquan', '9');
INSERT INTO `travel_location` VALUES ('3434', '274', ',1,7,274,3434,', '4', '庆阳', 'Qingyang', 'qingyang', '10');
INSERT INTO `travel_location` VALUES ('3435', '274', ',1,7,274,3435,', '4', '定西', 'Dingxi', 'dingxi', '11');
INSERT INTO `travel_location` VALUES ('3436', '274', ',1,7,274,3436,', '4', '陇南', 'Longnan', 'longnan', '12');
INSERT INTO `travel_location` VALUES ('3437', '274', ',1,7,274,3437,', '4', '临夏', 'Linxia Hui Autonomous Prefecture', 'linxia', '29');
INSERT INTO `travel_location` VALUES ('3438', '274', ',1,7,274,3438,', '4', '甘南', 'Gannan Tibetan Autonomous Prefecture', 'gannan', '30');
INSERT INTO `travel_location` VALUES ('3439', '275', ',1,7,275,3439,', '4', '西宁', 'Xining', 'xining', '1');
INSERT INTO `travel_location` VALUES ('3440', '275', ',1,7,275,3440,', '4', '海东', 'Haidong', 'haidong', '21');
INSERT INTO `travel_location` VALUES ('3441', '275', ',1,7,275,3441,', '4', '海北', 'Haibei Tibetan Autonomous Prefecture', 'haibei', '22');
INSERT INTO `travel_location` VALUES ('3442', '275', ',1,7,275,3442,', '4', '黄南', 'Huangnan Tibetan Autonomous Prefecture', 'huangnan', '23');
INSERT INTO `travel_location` VALUES ('3443', '275', ',1,7,275,3443,', '4', '海南', 'Hainan Tibetan Autonomous Prefecture', 'hainan', '25');
INSERT INTO `travel_location` VALUES ('3444', '275', ',1,7,275,3444,', '4', '果洛', 'Guoluo Tibetan Autonomous Prefecture', 'guoluo', '26');
INSERT INTO `travel_location` VALUES ('3445', '275', ',1,7,275,3445,', '4', '玉树', 'Yushu Tibetan Autonomous Prefecture', 'yushu', '27');
INSERT INTO `travel_location` VALUES ('3446', '275', ',1,7,275,3446,', '4', '海西', 'Haixi Mongol-Tibetan Autonomous Prefecture', 'haixi', '28');
INSERT INTO `travel_location` VALUES ('3447', '276', ',1,7,276,3447,', '4', '银川', 'Yinchuan', 'yinchuan', '1');
INSERT INTO `travel_location` VALUES ('3448', '276', ',1,7,276,3448,', '4', '石嘴山', 'Shizuishan', 'shizuishan', '2');
INSERT INTO `travel_location` VALUES ('3449', '276', ',1,7,276,3449,', '4', '吴忠', 'Wuzhong', 'wuzhong', '3');
INSERT INTO `travel_location` VALUES ('3450', '276', ',1,7,276,3450,', '4', '固原', 'Guyuan', 'guyuan', '4');
INSERT INTO `travel_location` VALUES ('3451', '276', ',1,7,276,3451,', '4', '中卫', 'Zhongwei', 'zhongwei', '5');
INSERT INTO `travel_location` VALUES ('3452', '277', ',1,7,277,3452,', '4', '乌鲁木齐', 'Urumqi', 'wulumuqi', '1');
INSERT INTO `travel_location` VALUES ('3453', '277', ',1,7,277,3453,', '4', '克拉玛依', 'Karamay', 'kelamayi', '2');
INSERT INTO `travel_location` VALUES ('3454', '277', ',1,7,277,3454,', '4', '吐鲁番', 'Turpan', 'tulufan', '21');
INSERT INTO `travel_location` VALUES ('3455', '277', ',1,7,277,3455,', '4', '哈密', 'Hami', 'hami', '22');
INSERT INTO `travel_location` VALUES ('3456', '277', ',1,7,277,3456,', '4', '昌吉', 'Changji Hui Autonomous Prefecture', 'changji', '23');
INSERT INTO `travel_location` VALUES ('3457', '277', ',1,7,277,3457,', '4', '博尔塔拉', 'Bortala Mongol Autonomous Prefecture', 'boertala', '27');
INSERT INTO `travel_location` VALUES ('3458', '277', ',1,7,277,3458,', '4', '巴音郭楞', 'Bayingolin Mongol Autonomous Prefecture', 'bayinguoleng', '28');
INSERT INTO `travel_location` VALUES ('3459', '277', ',1,7,277,3459,', '4', '阿克苏', 'Aksu', 'akesu', '29');
INSERT INTO `travel_location` VALUES ('3460', '277', ',1,7,277,3460,', '4', '克孜勒苏', 'Kizilsu Kirgiz Autonomous Prefecture', 'kezilesu', '30');
INSERT INTO `travel_location` VALUES ('3461', '277', ',1,7,277,3461,', '4', '喀什', 'Kashi', 'kashi', '31');
INSERT INTO `travel_location` VALUES ('3462', '277', ',1,7,277,3462,', '4', '和田', 'Hotan', 'hetian', '32');
INSERT INTO `travel_location` VALUES ('3463', '277', ',1,7,277,3463,', '4', '伊犁', 'Ili Kazakh Autonomous Prefecture', 'yili', '40');
INSERT INTO `travel_location` VALUES ('3464', '277', ',1,7,277,3464,', '4', '塔城', 'Tacheng', 'tacheng', '42');
INSERT INTO `travel_location` VALUES ('3465', '277', ',1,7,277,3465,', '4', '阿勒泰', 'Altay', 'aletai', '43');
INSERT INTO `travel_location` VALUES ('3466', '277', ',1,7,277,3466,', '4', '石河子', 'Shihezi', 'shihezi', '91');
INSERT INTO `travel_location` VALUES ('3467', '277', ',1,7,277,3467,', '4', '阿拉尔', 'Alar', 'alaer', '92');
INSERT INTO `travel_location` VALUES ('3468', '277', ',1,7,277,3468,', '4', '图木舒克', 'Tumsuk', 'tumushuke', '93');
INSERT INTO `travel_location` VALUES ('3469', '277', ',1,7,277,3469,', '4', '五家渠', 'Wujiaqu', 'wujiaqu', '94');
INSERT INTO `travel_location` VALUES ('3470', '277', ',1,7,277,3470,', '4', '北屯', 'Beitun', 'beitun', '95');
INSERT INTO `travel_location` VALUES ('3471', '278', ',1,7,278,3471,', '4', '台北市', 'Taipei City', 'taibeishi', '1');
INSERT INTO `travel_location` VALUES ('3472', '278', ',1,7,278,3472,', '4', '高雄市', 'Kaohsiung City', 'gaoxiongshi', '2');
INSERT INTO `travel_location` VALUES ('3473', '278', ',1,7,278,3473,', '4', '基隆市', 'Keelung City', 'jilongshi', '3');
INSERT INTO `travel_location` VALUES ('3474', '278', ',1,7,278,3474,', '4', '台中市', 'Taichung City', 'taizhongshi', '4');
INSERT INTO `travel_location` VALUES ('3475', '278', ',1,7,278,3475,', '4', '台南市', 'Tainan City', 'tainanshi', '5');
INSERT INTO `travel_location` VALUES ('3476', '278', ',1,7,278,3476,', '4', '新竹市', 'Hsinchu City', 'xinzhushi', '6');
INSERT INTO `travel_location` VALUES ('3477', '278', ',1,7,278,3477,', '4', '嘉义市', 'Chiayi City', 'jiayishi', '7');
INSERT INTO `travel_location` VALUES ('3478', '278', ',1,7,278,3478,', '4', '台北县', 'Taipei County', 'taibeixian', '8');
INSERT INTO `travel_location` VALUES ('3479', '278', ',1,7,278,3479,', '4', '宜兰县', 'Ilan County', 'yilanxian', '9');
INSERT INTO `travel_location` VALUES ('3480', '278', ',1,7,278,3480,', '4', '桃园县', 'Taoyuan County', 'taoyuanxian', '10');
INSERT INTO `travel_location` VALUES ('3481', '278', ',1,7,278,3481,', '4', '新竹县', 'Hsinchu County', 'xinzhuxian', '11');
INSERT INTO `travel_location` VALUES ('3482', '278', ',1,7,278,3482,', '4', '苗栗县', 'Miaoli County', 'miaolixian', '12');
INSERT INTO `travel_location` VALUES ('3483', '278', ',1,7,278,3483,', '4', '台中县', 'Taichung County', 'taizhongxian', '13');
INSERT INTO `travel_location` VALUES ('3484', '278', ',1,7,278,3484,', '4', '彰化县', 'Changhwa County', 'zhanghuaxian', '14');
INSERT INTO `travel_location` VALUES ('3485', '278', ',1,7,278,3485,', '4', '南投县', 'Nantou County', 'nantouxian', '15');
INSERT INTO `travel_location` VALUES ('3486', '278', ',1,7,278,3486,', '4', '云林县', 'Yunnlin County', 'yunlinxian', '16');
INSERT INTO `travel_location` VALUES ('3487', '278', ',1,7,278,3487,', '4', '嘉义县', 'Chiayi County', 'jiayixian', '17');
INSERT INTO `travel_location` VALUES ('3488', '278', ',1,7,278,3488,', '4', '台南县', 'Tainan County', 'tainanxian', '18');
INSERT INTO `travel_location` VALUES ('3489', '278', ',1,7,278,3489,', '4', '高雄县', 'Kaohsiung County', 'gaoxiongxian', '19');
INSERT INTO `travel_location` VALUES ('3490', '278', ',1,7,278,3490,', '4', '屏东县', 'Pingtung County', 'pingdongxian', '20');
INSERT INTO `travel_location` VALUES ('3491', '278', ',1,7,278,3491,', '4', '台东县', 'Taitung County', 'taidongxian', '22');
INSERT INTO `travel_location` VALUES ('3492', '278', ',1,7,278,3492,', '4', '花莲县', 'Hualian County', 'hualianxian', '23');
INSERT INTO `travel_location` VALUES ('3493', '278', ',1,7,278,3493,', '4', '澎湖县', 'Penghu County', 'penghuxian', '21');
INSERT INTO `travel_location` VALUES ('3494', '279', ',1,7,279,3494,', '4', '中西区', 'NaN', 'zhongxiqu', 'HCW');
INSERT INTO `travel_location` VALUES ('3495', '279', ',1,7,279,3495,', '4', '东区', 'NaN', 'dongqu', 'HEA');
INSERT INTO `travel_location` VALUES ('3496', '279', ',1,7,279,3496,', '4', '九龙城区', 'NaN', 'jiulongchengqu', 'KKC');
INSERT INTO `travel_location` VALUES ('3497', '279', ',1,7,279,3497,', '4', '观塘区', 'NaN', 'guantangqu', 'KKT');
INSERT INTO `travel_location` VALUES ('3498', '279', ',1,7,279,3498,', '4', '南区', 'NaN', 'nanqu', 'HSO');
INSERT INTO `travel_location` VALUES ('3499', '279', ',1,7,279,3499,', '4', '深水埗区', 'NaN', 'shenshui', 'KSS');
INSERT INTO `travel_location` VALUES ('3500', '279', ',1,7,279,3500,', '4', '黄大仙区', 'NaN', 'huangdaxianqu', 'KWT');
INSERT INTO `travel_location` VALUES ('3501', '279', ',1,7,279,3501,', '4', '湾仔区', 'NaN', 'wanziqu', 'HWC');
INSERT INTO `travel_location` VALUES ('3502', '279', ',1,7,279,3502,', '4', '油尖旺区', 'NaN', 'youjianwangqu', 'KYT');
INSERT INTO `travel_location` VALUES ('3503', '279', ',1,7,279,3503,', '4', '离岛区', 'NaN', 'lidaoqu', 'NIS');
INSERT INTO `travel_location` VALUES ('3504', '279', ',1,7,279,3504,', '4', '葵青区', 'NaN', 'kuiqingqu', 'NKT');
INSERT INTO `travel_location` VALUES ('3505', '279', ',1,7,279,3505,', '4', '北区', 'NaN', 'beiqu', 'NNO');
INSERT INTO `travel_location` VALUES ('3506', '279', ',1,7,279,3506,', '4', '西贡区', 'NaN', 'xigongqu', 'NSK');
INSERT INTO `travel_location` VALUES ('3507', '279', ',1,7,279,3507,', '4', '沙田区', 'NaN', 'shatianqu', 'NST');
INSERT INTO `travel_location` VALUES ('3508', '279', ',1,7,279,3508,', '4', '屯门区', 'NaN', 'tunmenqu', 'NTM');
INSERT INTO `travel_location` VALUES ('3509', '279', ',1,7,279,3509,', '4', '大埔区', 'NaN', 'dapuqu', 'NTP');
INSERT INTO `travel_location` VALUES ('3510', '279', ',1,7,279,3510,', '4', '荃湾区', 'NaN', 'wanqu', 'NTW');
INSERT INTO `travel_location` VALUES ('3511', '279', ',1,7,279,3511,', '4', '元朗区', 'NaN', 'yuanlangqu', 'NYL');
INSERT INTO `travel_location` VALUES ('3512', '280', ',1,7,280,3512,', '4', '花地玛堂区', 'NaN', 'huadimatangqu', 'OLF');
INSERT INTO `travel_location` VALUES ('3513', '280', ',1,7,280,3513,', '4', '圣安多尼堂区', 'NaN', 'shenganduonitangqu', 'ANT');
INSERT INTO `travel_location` VALUES ('3514', '280', ',1,7,280,3514,', '4', '大堂区', 'NaN', 'datangqu', 'CAT');
INSERT INTO `travel_location` VALUES ('3515', '280', ',1,7,280,3515,', '4', '望德堂区', 'NaN', 'wangdetangqu', 'LAW');
INSERT INTO `travel_location` VALUES ('3516', '280', ',1,7,280,3516,', '4', '风顺堂区', 'NaN', 'fengshuntangqu', 'LAZ');
INSERT INTO `travel_location` VALUES ('3517', '280', ',1,7,280,3517,', '4', '氹仔', 'NaN', '', 'TPA');
INSERT INTO `travel_location` VALUES ('3518', '280', ',1,7,280,3518,', '4', '路环', 'NaN', 'luhuan', 'CLN');
INSERT INTO `travel_location` VALUES ('3519', '281', ',6,25,281,3519,', '4', '北帕默斯顿', 'Palmerston', 'beipamosidun', 'PAL');
INSERT INTO `travel_location` VALUES ('3520', '281', ',6,25,281,3520,', '4', '达尔文', 'Darwin', 'daerwen', 'DRW');
INSERT INTO `travel_location` VALUES ('3521', '282', ',6,25,282,3521,', '4', '堪培拉', 'Canberra', 'kanpeila', 'CBR');
INSERT INTO `travel_location` VALUES ('3522', '283', ',6,25,283,3522,', '4', '布里斯班', 'Brisbane', 'bulisiban', 'BNE');
INSERT INTO `travel_location` VALUES ('3523', '283', ',6,25,283,3523,', '4', '黄金海岸', 'Gold Coast', 'huangjinhaian', 'OOL');
INSERT INTO `travel_location` VALUES ('3524', '283', ',6,25,283,3524,', '4', '凯恩斯', 'Cairns', 'kaiensi', 'CNS');
INSERT INTO `travel_location` VALUES ('3525', '283', ',6,25,283,3525,', '4', '日光海岸', 'Caloundra', 'riguanghaian', 'CUD');
INSERT INTO `travel_location` VALUES ('3526', '283', ',6,25,283,3526,', '4', '汤斯维尔', 'Townsville', 'tangsiweier', 'TSV');
INSERT INTO `travel_location` VALUES ('3527', '283', ',6,25,283,3527,', '4', '图文巴', 'Toowoomba', 'tuwenba', 'TWB');
INSERT INTO `travel_location` VALUES ('3528', '284', ',6,25,284,3528,', '4', '阿德莱德', 'Adelaide', 'adelaide', 'ADL');
INSERT INTO `travel_location` VALUES ('3529', '284', ',6,25,284,3529,', '4', '奥古斯塔港', 'Port Augusta', 'aogusitagang', 'PUG');
INSERT INTO `travel_location` VALUES ('3530', '284', ',6,25,284,3530,', '4', '甘比亚山', 'Mount Gambier', 'ganbiyashan', 'MGB');
INSERT INTO `travel_location` VALUES ('3531', '284', ',6,25,284,3531,', '4', '怀阿拉', 'Whyalla', 'huaiala', 'WAY');
INSERT INTO `travel_location` VALUES ('3532', '284', ',6,25,284,3532,', '4', '林肯港', 'Port Lincoln', 'linkengang', 'PLO');
INSERT INTO `travel_location` VALUES ('3533', '284', ',6,25,284,3533,', '4', '默里布里奇', 'Murray Bridge', 'molibuliqi', 'MYB');
INSERT INTO `travel_location` VALUES ('3534', '284', ',6,25,284,3534,', '4', '皮里港', 'Port Pirie', 'piligang', 'PPI');
INSERT INTO `travel_location` VALUES ('3535', '284', ',6,25,284,3535,', '4', '维克托港', 'Victor Harbor', 'weiketuogang', 'VHA');
INSERT INTO `travel_location` VALUES ('3536', '285', ',6,25,285,3536,', '4', '伯尼港', 'Burnie', 'bonigang', 'BWT');
INSERT INTO `travel_location` VALUES ('3537', '285', ',6,25,285,3537,', '4', '德文波特', 'Devonport', 'dewenbote', 'DPO');
INSERT INTO `travel_location` VALUES ('3538', '285', ',6,25,285,3538,', '4', '霍巴特', 'Hobart', 'huobate', 'HBA');
INSERT INTO `travel_location` VALUES ('3539', '285', ',6,25,285,3539,', '4', '朗塞斯顿', 'Launceston', 'langsaisidun', 'LST');
INSERT INTO `travel_location` VALUES ('3540', '286', ',6,25,286,3540,', '4', '吉朗', 'Geelong', 'jilang', 'GEX');
INSERT INTO `travel_location` VALUES ('3541', '286', ',6,25,286,3541,', '4', '墨尔本', 'Melbourne', 'moerben', 'MEL');
INSERT INTO `travel_location` VALUES ('3542', '287', ',6,25,287,3542,', '4', '奥尔巴尼', 'Albany', 'aoerbani', 'ALH');
INSERT INTO `travel_location` VALUES ('3543', '287', ',6,25,287,3543,', '4', '班伯里', 'Bunbury', 'banboli', 'BUY');
INSERT INTO `travel_location` VALUES ('3544', '287', ',6,25,287,3544,', '4', '弗里曼特尔港', 'Fremantle', 'fulimanteergang', 'FRE');
INSERT INTO `travel_location` VALUES ('3545', '287', ',6,25,287,3545,', '4', '杰拉尔顿', 'Geraldton', 'jielaerdun', 'GET');
INSERT INTO `travel_location` VALUES ('3546', '287', ',6,25,287,3546,', '4', '卡尔古利', 'Kalgoorlie', 'kaerguli', 'KGI');
INSERT INTO `travel_location` VALUES ('3547', '287', ',6,25,287,3547,', '4', '曼哲拉', 'Mandurah', 'manzhela', 'MDU');
INSERT INTO `travel_location` VALUES ('3548', '287', ',6,25,287,3548,', '4', '珀斯', 'Perth', 'si', 'PER');
INSERT INTO `travel_location` VALUES ('3549', '288', ',6,25,288,3549,', '4', '纽卡斯尔', 'Newcastle', 'niukasier', 'NTL');
INSERT INTO `travel_location` VALUES ('3550', '288', ',6,25,288,3550,', '4', '伍伦贡', 'Wollongong', 'wulungong', 'WOL');
INSERT INTO `travel_location` VALUES ('3551', '288', ',6,25,288,3551,', '4', '悉尼', 'Sydney', 'xini', 'HBS');
INSERT INTO `travel_location` VALUES ('3552', '289', ',1,89,289,3552,', '4', '达城郡', 'Dalseong-gun', 'dachengjun', 'DSG');
INSERT INTO `travel_location` VALUES ('3553', '289', ',1,89,289,3553,', '4', '大邱', 'Daegu', 'daqiu', 'TAE');
INSERT INTO `travel_location` VALUES ('3554', '289', ',1,89,289,3554,', '4', '寿城区', 'Suseong-gu', 'shouchengqu', 'SUS');
INSERT INTO `travel_location` VALUES ('3555', '294', ',1,89,294,3555,', '4', '春川市', 'Chuncheon', 'chunchuanshi', 'CHC');
INSERT INTO `travel_location` VALUES ('3556', '294', ',1,89,294,3556,', '4', '东海市', 'Donghae', 'donghaishi', 'TGH');
INSERT INTO `travel_location` VALUES ('3557', '294', ',1,89,294,3557,', '4', '高城郡', 'Goseong County', 'gaochengjun', 'GSG');
INSERT INTO `travel_location` VALUES ('3558', '294', ',1,89,294,3558,', '4', '横城郡', 'Hoengseong County', 'hengchengjun', 'HSG');
INSERT INTO `travel_location` VALUES ('3559', '294', ',1,89,294,3559,', '4', '洪川郡', 'Hongcheon County', 'hongchuanjun', 'HCN');
INSERT INTO `travel_location` VALUES ('3560', '294', ',1,89,294,3560,', '4', '华川郡', 'Hwacheon County', 'huachuanjun', 'HCH');
INSERT INTO `travel_location` VALUES ('3561', '294', ',1,89,294,3561,', '4', '江陵市', 'Gangneung', 'jianglingshi', 'KAG');
INSERT INTO `travel_location` VALUES ('3562', '294', ',1,89,294,3562,', '4', '旌善郡', 'Jeongseon County', 'shanjun', 'JSE');
INSERT INTO `travel_location` VALUES ('3563', '294', ',1,89,294,3563,', '4', '麟蹄郡', 'Inje County', 'tijun', 'IJE');
INSERT INTO `travel_location` VALUES ('3564', '294', ',1,89,294,3564,', '4', '宁越郡', 'Yeongwol County', 'ningyuejun', 'YWL');
INSERT INTO `travel_location` VALUES ('3565', '294', ',1,89,294,3565,', '4', '平昌郡', 'Pyeongchang County', 'pingchangjun', 'POG');
INSERT INTO `travel_location` VALUES ('3566', '294', ',1,89,294,3566,', '4', '三陟市', 'Samcheok', 'sanshi', 'SUK');
INSERT INTO `travel_location` VALUES ('3567', '294', ',1,89,294,3567,', '4', '束草市', 'Sokcho', 'shucaoshi', 'SHO');
INSERT INTO `travel_location` VALUES ('3568', '294', ',1,89,294,3568,', '4', '太白市', 'Taebaek', 'taibaishi', 'TBK');
INSERT INTO `travel_location` VALUES ('3569', '294', ',1,89,294,3569,', '4', '铁原郡', 'Cheorwon County', 'tieyuanjun', 'CWN');
INSERT INTO `travel_location` VALUES ('3570', '294', ',1,89,294,3570,', '4', '襄阳郡', 'Yangyang County', 'xiangyangjun', 'YNY');
INSERT INTO `travel_location` VALUES ('3571', '294', ',1,89,294,3571,', '4', '杨口郡', 'Yanggu County', 'yangkoujun', 'YGU');
INSERT INTO `travel_location` VALUES ('3572', '294', ',1,89,294,3572,', '4', '原州市', 'Wonju', 'yuanzhoushi', 'WJU');
INSERT INTO `travel_location` VALUES ('3573', '295', ',1,89,295,3573,', '4', '安城市', 'Anseong', 'anchengshi', 'ASG');
INSERT INTO `travel_location` VALUES ('3574', '295', ',1,89,295,3574,', '4', '安山市', 'Ansan', 'anshanshi', 'ASN');
INSERT INTO `travel_location` VALUES ('3575', '295', ',1,89,295,3575,', '4', '安养市', 'Anyang', 'anyangshi', 'ANY');
INSERT INTO `travel_location` VALUES ('3576', '295', ',1,89,295,3576,', '4', '抱川市', 'Pocheon', 'baochuanshi', 'POC');
INSERT INTO `travel_location` VALUES ('3577', '295', ',1,89,295,3577,', '4', '城南市', 'Seongnam', 'chengnanshi', 'SEO');
INSERT INTO `travel_location` VALUES ('3578', '295', ',1,89,295,3578,', '4', '东豆川市', 'Dongducheon', 'dongdouchuanshi', 'DDC');
INSERT INTO `travel_location` VALUES ('3579', '295', ',1,89,295,3579,', '4', '富川市', 'Bucheon', 'fuchuanshi', 'BCN');
INSERT INTO `travel_location` VALUES ('3580', '295', ',1,89,295,3580,', '4', '高阳市', 'Goyang', 'gaoyangshi', 'GYG');
INSERT INTO `travel_location` VALUES ('3581', '295', ',1,89,295,3581,', '4', '光明市', 'Gwangmyeong', 'guangmingshi', 'GMG');
INSERT INTO `travel_location` VALUES ('3582', '295', ',1,89,295,3582,', '4', '广州市', 'Gwangju', 'guangzhoushi', 'KWU');
INSERT INTO `travel_location` VALUES ('3583', '295', ',1,89,295,3583,', '4', '果川市', 'Gwacheon', 'guochuanshi', 'GCN');
INSERT INTO `travel_location` VALUES ('3584', '295', ',1,89,295,3584,', '4', '河南市', 'Hanam', 'henanshi', 'HNM');
INSERT INTO `travel_location` VALUES ('3585', '295', ',1,89,295,3585,', '4', '华城市', 'Hwaseong', 'huachengshi', 'HCH');
INSERT INTO `travel_location` VALUES ('3586', '295', ',1,89,295,3586,', '4', '加平郡', 'Gapyeong County', 'jiapingjun', 'GPG');
INSERT INTO `travel_location` VALUES ('3587', '295', ',1,89,295,3587,', '4', '金浦市', 'Gimpo', 'jinpushi', 'GMP');
INSERT INTO `travel_location` VALUES ('3588', '295', ',1,89,295,3588,', '4', '九里市', 'Guri', 'jiulishi', 'GRI');
INSERT INTO `travel_location` VALUES ('3589', '295', ',1,89,295,3589,', '4', '军浦市', 'Gunpo', 'junpushi', 'GUN');
INSERT INTO `travel_location` VALUES ('3590', '295', ',1,89,295,3590,', '4', '骊州郡', 'Yeoju County', 'zhoujun', 'YJU');
INSERT INTO `travel_location` VALUES ('3591', '295', ',1,89,295,3591,', '4', '利川市', 'Icheon', 'lichuanshi', 'ICE');
INSERT INTO `travel_location` VALUES ('3592', '295', ',1,89,295,3592,', '4', '涟川郡', 'Yeoncheon County', 'lianchuanjun', 'YCN');
INSERT INTO `travel_location` VALUES ('3593', '295', ',1,89,295,3593,', '4', '龙仁市', 'Yongin', 'longrenshi', 'YNG');
INSERT INTO `travel_location` VALUES ('3594', '295', ',1,89,295,3594,', '4', '南杨州市', 'Namyangju', 'nanyangzhoushi', 'NYU');
INSERT INTO `travel_location` VALUES ('3595', '295', ',1,89,295,3595,', '4', '平泽市', 'Pyeongtaek', 'pingzeshi', 'PTK');
INSERT INTO `travel_location` VALUES ('3596', '295', ',1,89,295,3596,', '4', '坡州市', 'Paju', 'pozhoushi', 'PJU');
INSERT INTO `travel_location` VALUES ('3597', '295', ',1,89,295,3597,', '4', '始兴市', 'Siheung', 'shixingshi', 'SHE');
INSERT INTO `travel_location` VALUES ('3598', '295', ',1,89,295,3598,', '4', '水原市', 'Suwon', 'shuiyuanshi', 'SUO');
INSERT INTO `travel_location` VALUES ('3599', '295', ',1,89,295,3599,', '4', '乌山市', 'Osan', 'wushanshi', 'OSN');
INSERT INTO `travel_location` VALUES ('3600', '295', ',1,89,295,3600,', '4', '扬平郡', 'Yangpyeong County', 'yangpingjun', 'YPG');
INSERT INTO `travel_location` VALUES ('3601', '295', ',1,89,295,3601,', '4', '杨州市', 'Yangju', 'yangzhoushi', 'YYU');
INSERT INTO `travel_location` VALUES ('3602', '295', ',1,89,295,3602,', '4', '仪旺市', 'Uiwang', 'yiwangshi', 'UWN');
INSERT INTO `travel_location` VALUES ('3603', '295', ',1,89,295,3603,', '4', '议政府市', 'Uijeongbu', 'yizhengfushi', 'UIJ');
INSERT INTO `travel_location` VALUES ('3604', '296', ',1,89,296,3604,', '4', '安东市', 'Andong', 'andongshi', 'ADG');
INSERT INTO `travel_location` VALUES ('3605', '296', ',1,89,296,3605,', '4', '奉化郡', 'Bonghwa County', 'fenghuajun', 'BHA');
INSERT INTO `travel_location` VALUES ('3606', '296', ',1,89,296,3606,', '4', '高灵郡', 'Goryeong County', 'gaolingjun', 'GRG');
INSERT INTO `travel_location` VALUES ('3607', '296', ',1,89,296,3607,', '4', '龟尾市', 'Gumi', 'guiweishi', 'KUM');
INSERT INTO `travel_location` VALUES ('3608', '296', ',1,89,296,3608,', '4', '金泉市', 'Gimcheon', 'jinquanshi', 'KMC');
INSERT INTO `travel_location` VALUES ('3609', '296', ',1,89,296,3609,', '4', '军威郡', 'Gunwi County', 'junweijun', 'GWI');
INSERT INTO `travel_location` VALUES ('3610', '296', ',1,89,296,3610,', '4', '醴泉郡', 'Yecheon County', 'quanjun', 'YEC');
INSERT INTO `travel_location` VALUES ('3611', '296', ',1,89,296,3611,', '4', '浦项市', 'Pohang', 'puxiangshi', 'KPO');
INSERT INTO `travel_location` VALUES ('3612', '296', ',1,89,296,3612,', '4', '漆谷郡', 'Chilgok County', 'qigujun', 'CGK');
INSERT INTO `travel_location` VALUES ('3613', '296', ',1,89,296,3613,', '4', '淸道郡', 'Cheongdo County', '', 'CDO');
INSERT INTO `travel_location` VALUES ('3614', '296', ',1,89,296,3614,', '4', '靑松郡', 'Cheongsong County', '', 'CSG');
INSERT INTO `travel_location` VALUES ('3615', '296', ',1,89,296,3615,', '4', '庆山市', 'Gyeongsan', 'qingshanshi', 'GYS');
INSERT INTO `travel_location` VALUES ('3616', '296', ',1,89,296,3616,', '4', '庆州市', 'Gyeongju', 'qingzhoushi', 'GJU');
INSERT INTO `travel_location` VALUES ('3617', '296', ',1,89,296,3617,', '4', '荣州市', 'Yeongju', 'rongzhoushi', 'YEJ');
INSERT INTO `travel_location` VALUES ('3618', '296', ',1,89,296,3618,', '4', '尙州市', 'Sangju', '', 'SJU');
INSERT INTO `travel_location` VALUES ('3619', '296', ',1,89,296,3619,', '4', '蔚珍郡', 'Uljin County', 'weizhenjun', 'UJN');
INSERT INTO `travel_location` VALUES ('3620', '296', ',1,89,296,3620,', '4', '闻庆市', 'Mungyeong', 'wenqingshi', 'MGG');
INSERT INTO `travel_location` VALUES ('3621', '296', ',1,89,296,3621,', '4', '星州郡', 'Seongju County', 'xingzhoujun', 'SEJ');
INSERT INTO `travel_location` VALUES ('3622', '296', ',1,89,296,3622,', '4', '义城郡', 'Uiseong County', 'yichengjun', 'USG');
INSERT INTO `travel_location` VALUES ('3623', '296', ',1,89,296,3623,', '4', '英阳郡', 'Yeongyang County', 'yingyangjun', 'YYG');
INSERT INTO `travel_location` VALUES ('3624', '296', ',1,89,296,3624,', '4', '盈德郡', 'Yeongdeok County', 'yingdejun', 'YDK');
INSERT INTO `travel_location` VALUES ('3625', '296', ',1,89,296,3625,', '4', '永川市', 'Yeongcheon', 'yongchuanshi', 'YCH');
INSERT INTO `travel_location` VALUES ('3626', '296', ',1,89,296,3626,', '4', '郁陵郡', 'Ulleung County', 'yulingjun', 'ULG');
INSERT INTO `travel_location` VALUES ('3627', '297', ',1,89,297,3627,', '4', '昌宁郡', 'Changnyeong County', 'changningjun', 'CNG');
INSERT INTO `travel_location` VALUES ('3628', '297', ',1,89,297,3628,', '4', '昌原市', 'Changwon', 'changyuanshi', 'CHW');
INSERT INTO `travel_location` VALUES ('3629', '297', ',1,89,297,3629,', '4', '固城郡', 'Goseong County', 'guchengjun', 'GSO');
INSERT INTO `travel_location` VALUES ('3630', '297', ',1,89,297,3630,', '4', '河东郡', 'Hadong County', 'hedongjun', 'HDG');
INSERT INTO `travel_location` VALUES ('3631', '297', ',1,89,297,3631,', '4', '金海市', 'Gimhae', 'jinhaishi', 'KMH');
INSERT INTO `travel_location` VALUES ('3632', '297', ',1,89,297,3632,', '4', '晋州市', 'Jinju', 'jinzhoushi', 'HIN');
INSERT INTO `travel_location` VALUES ('3633', '297', ',1,89,297,3633,', '4', '居昌郡', 'Geochang County', 'juchangjun', 'GCH');
INSERT INTO `travel_location` VALUES ('3634', '297', ',1,89,297,3634,', '4', '巨济市', 'Geoje', 'jujishi', 'KJE');
INSERT INTO `travel_location` VALUES ('3635', '297', ',1,89,297,3635,', '4', '梁山市', 'Yangsan', 'liangshanshi', 'YSN');
INSERT INTO `travel_location` VALUES ('3636', '297', ',1,89,297,3636,', '4', '马山市', 'Masan', 'mashanshi', 'MAS');
INSERT INTO `travel_location` VALUES ('3637', '297', ',1,89,297,3637,', '4', '密阳市', 'Miryang', 'miyangshi', 'MIR');
INSERT INTO `travel_location` VALUES ('3638', '297', ',1,89,297,3638,', '4', '南海郡', 'Namhae County', 'nanhaijun', 'NHE');
INSERT INTO `travel_location` VALUES ('3639', '297', ',1,89,297,3639,', '4', '山淸郡', 'Sancheong County', 'shan', 'SCH');
INSERT INTO `travel_location` VALUES ('3640', '297', ',1,89,297,3640,', '4', '泗川市', 'Sacheon', 'chuanshi', 'SAH');
INSERT INTO `travel_location` VALUES ('3641', '297', ',1,89,297,3641,', '4', '统营市', 'Tongyeong', 'tongyingshi', 'TYG');
INSERT INTO `travel_location` VALUES ('3642', '297', ',1,89,297,3642,', '4', '陜川郡', 'Hapcheon County', '', 'HCE');
INSERT INTO `travel_location` VALUES ('3643', '297', ',1,89,297,3643,', '4', '咸安郡', 'Haman County', 'xiananjun', 'HAN');
INSERT INTO `travel_location` VALUES ('3644', '297', ',1,89,297,3644,', '4', '咸阳郡', 'Hamyang County', 'xianyangjun', 'HYG');
INSERT INTO `travel_location` VALUES ('3645', '297', ',1,89,297,3645,', '4', '宜宁郡', 'Uiryeong County', 'yiningjun', 'URG');
INSERT INTO `travel_location` VALUES ('3646', '297', ',1,89,297,3646,', '4', '鎭海市', 'Jinhae', '', 'CHF');
INSERT INTO `travel_location` VALUES ('3647', '298', ',1,89,298,3647,', '4', '淳昌郡', 'Sunchang County', 'chunchangjun', 'SCG');
INSERT INTO `travel_location` VALUES ('3648', '298', ',1,89,298,3648,', '4', '扶安郡', 'Buan County', 'fuanjun', 'PUS');
INSERT INTO `travel_location` VALUES ('3649', '298', ',1,89,298,3649,', '4', '高敞郡', 'Gochang County', 'gaochangjun', 'GCG');
INSERT INTO `travel_location` VALUES ('3650', '298', ',1,89,298,3650,', '4', '金堤市', 'Gimje', 'jindishi', 'GJE');
INSERT INTO `travel_location` VALUES ('3651', '298', ',1,89,298,3651,', '4', '井邑市', 'Jeongeup', 'jingyishi', 'JEO');
INSERT INTO `travel_location` VALUES ('3652', '298', ',1,89,298,3652,', '4', '茂朱郡', 'Muju County', 'maozhujun', 'MJU');
INSERT INTO `travel_location` VALUES ('3653', '298', ',1,89,298,3653,', '4', '南原市', 'Namwon', 'nanyuanshi', 'NWN');
INSERT INTO `travel_location` VALUES ('3654', '298', ',1,89,298,3654,', '4', '全州市', 'Jeonju', 'quanzhoushi', 'JNJ');
INSERT INTO `travel_location` VALUES ('3655', '298', ',1,89,298,3655,', '4', '群山市', 'Gunsan', 'qunshanshi', 'KUV');
INSERT INTO `travel_location` VALUES ('3656', '298', ',1,89,298,3656,', '4', '任实郡', 'Imsil County', 'renshijun', 'ISL');
INSERT INTO `travel_location` VALUES ('3657', '298', ',1,89,298,3657,', '4', '完州郡', 'Wanju County', 'wanzhoujun', 'WAJ');
INSERT INTO `travel_location` VALUES ('3658', '298', ',1,89,298,3658,', '4', '益山市', 'Iksan', 'yishanshi', 'IKS');
INSERT INTO `travel_location` VALUES ('3659', '298', ',1,89,298,3659,', '4', '长水郡', 'Jangsu County', 'changshuijun', 'JSU');
INSERT INTO `travel_location` VALUES ('3660', '298', ',1,89,298,3660,', '4', '鎭安郡', 'Jinan County', '', 'JAN');
INSERT INTO `travel_location` VALUES ('3661', '299', ',1,89,299,3661,', '4', '宝城郡', 'Boseong County', 'baochengjun', 'BSG');
INSERT INTO `travel_location` VALUES ('3662', '299', ',1,89,299,3662,', '4', '高兴郡', 'Goheung County', 'gaoxingjun', 'GHG');
INSERT INTO `travel_location` VALUES ('3663', '299', ',1,89,299,3663,', '4', '谷城郡', 'Gokseong County', 'guchengjun', 'GSE');
INSERT INTO `travel_location` VALUES ('3664', '299', ',1,89,299,3664,', '4', '莞岛郡', 'Wando County', 'daojun', 'WND');
INSERT INTO `travel_location` VALUES ('3665', '299', ',1,89,299,3665,', '4', '光阳市', 'Gwangyang', 'guangyangshi', 'KAN');
INSERT INTO `travel_location` VALUES ('3666', '299', ',1,89,299,3666,', '4', '海南郡', 'Haenam County', 'hainanjun', 'HAE');
INSERT INTO `travel_location` VALUES ('3667', '299', ',1,89,299,3667,', '4', '和顺郡', 'Hwasun County', 'heshunjun', 'HSN');
INSERT INTO `travel_location` VALUES ('3668', '299', ',1,89,299,3668,', '4', '康津郡', 'Gangjin County', 'kangjinjun', 'GJN');
INSERT INTO `travel_location` VALUES ('3669', '299', ',1,89,299,3669,', '4', '丽水市', 'Yeosu', 'lishuishi', 'YOS');
INSERT INTO `travel_location` VALUES ('3670', '299', ',1,89,299,3670,', '4', '灵光郡', 'Yeonggwang County', 'lingguangjun', 'YGG');
INSERT INTO `travel_location` VALUES ('3671', '299', ',1,89,299,3671,', '4', '灵岩郡', 'Yeongam County', 'lingyanjun', 'YAM');
INSERT INTO `travel_location` VALUES ('3672', '299', ',1,89,299,3672,', '4', '罗州市', 'Naju', 'luozhoushi', 'NJU');
INSERT INTO `travel_location` VALUES ('3673', '299', ',1,89,299,3673,', '4', '木浦市', 'Mokpo', 'mupushi', 'MOK');
INSERT INTO `travel_location` VALUES ('3674', '299', ',1,89,299,3674,', '4', '求礼郡', 'Gurye County', 'qiulijun', 'GRE');
INSERT INTO `travel_location` VALUES ('3675', '299', ',1,89,299,3675,', '4', '顺天市', 'Suncheon', 'shuntianshi', 'SYS');
INSERT INTO `travel_location` VALUES ('3676', '299', ',1,89,299,3676,', '4', '潭阳郡', 'Damyang County', 'tanyangjun', 'DYA');
INSERT INTO `travel_location` VALUES ('3677', '299', ',1,89,299,3677,', '4', '务安郡', 'Muan County', 'wuanjun', 'MAN');
INSERT INTO `travel_location` VALUES ('3678', '299', ',1,89,299,3678,', '4', '咸平郡', 'Hampyeong County', 'xianpingjun', 'HPG');
INSERT INTO `travel_location` VALUES ('3679', '299', ',1,89,299,3679,', '4', '新安郡', 'Sinan County', 'xinanjun', 'SAN');
INSERT INTO `travel_location` VALUES ('3680', '299', ',1,89,299,3680,', '4', '长城郡', 'Jangseong County', 'changchengjun', 'JSN');
INSERT INTO `travel_location` VALUES ('3681', '299', ',1,89,299,3681,', '4', '长兴郡', 'Jangheung County', 'changxingjun', 'JHG');
INSERT INTO `travel_location` VALUES ('3682', '299', ',1,89,299,3682,', '4', '珍岛郡', 'Jindo County', 'zhendaojun', 'JDO');
INSERT INTO `travel_location` VALUES ('3683', '303', ',1,89,303,3683,', '4', '报恩郡', 'Boeun County', 'baoenjun', 'BEN');
INSERT INTO `travel_location` VALUES ('3684', '303', ',1,89,303,3684,', '4', '曾坪郡', 'Jeungpyeong County', 'zengpingjun', 'JYG');
INSERT INTO `travel_location` VALUES ('3685', '303', ',1,89,303,3685,', '4', '丹阳郡', 'Danyang County', 'danyangjun', 'DYG');
INSERT INTO `travel_location` VALUES ('3686', '303', ',1,89,303,3686,', '4', '堤川市', 'Jecheon', 'dichuanshi', 'JCH');
INSERT INTO `travel_location` VALUES ('3687', '303', ',1,89,303,3687,', '4', '槐山郡', 'Goesan County', 'huaishanjun', 'GSN');
INSERT INTO `travel_location` VALUES ('3688', '303', ',1,89,303,3688,', '4', '淸原郡', 'Cheongwon County', '', 'CWO');
INSERT INTO `travel_location` VALUES ('3689', '303', ',1,89,303,3689,', '4', '淸州市', 'Cheongju', '', 'CJJ');
INSERT INTO `travel_location` VALUES ('3690', '303', ',1,89,303,3690,', '4', '沃川郡', 'Okcheon County', 'wochuanjun', 'OCN');
INSERT INTO `travel_location` VALUES ('3691', '303', ',1,89,303,3691,', '4', '阴城郡', 'Eumseong County', 'yinchengjun', 'ESG');
INSERT INTO `travel_location` VALUES ('3692', '303', ',1,89,303,3692,', '4', '永同郡', 'Yeongdong County', 'yongtongjun', 'YDG');
INSERT INTO `travel_location` VALUES ('3693', '303', ',1,89,303,3693,', '4', '鎭川郡', 'Jincheon County', '', 'JCN');
INSERT INTO `travel_location` VALUES ('3694', '303', ',1,89,303,3694,', '4', '忠州市', 'Chungju', 'zhongzhoushi', 'CHU');
INSERT INTO `travel_location` VALUES ('3695', '304', ',1,89,304,3695,', '4', '保宁市', 'Boryeong', 'baoningshi', 'BOR');
INSERT INTO `travel_location` VALUES ('3696', '304', ',1,89,304,3696,', '4', '扶余郡', 'Buyeo County', 'fuyujun', 'BYO');
INSERT INTO `travel_location` VALUES ('3697', '304', ',1,89,304,3697,', '4', '公州市', 'Gongju', 'gongzhoushi', 'GOJ');
INSERT INTO `travel_location` VALUES ('3698', '304', ',1,89,304,3698,', '4', '洪城郡', 'Hongseong County', 'hongchengjun', 'HSE');
INSERT INTO `travel_location` VALUES ('3699', '304', ',1,89,304,3699,', '4', '鸡龙市', 'Gyeryong', 'jilongshi', 'GYE');
INSERT INTO `travel_location` VALUES ('3700', '304', ',1,89,304,3700,', '4', '锦山郡', 'Geumsan County', 'jinshanjun', 'GSA');
INSERT INTO `travel_location` VALUES ('3701', '304', ',1,89,304,3701,', '4', '礼山郡', 'Yesan County', 'lishanjun', 'YOS');
INSERT INTO `travel_location` VALUES ('3702', '304', ',1,89,304,3702,', '4', '论山市', 'Nonsan', 'lunshanshi', 'NSN');
INSERT INTO `travel_location` VALUES ('3703', '304', ',1,89,304,3703,', '4', '青阳郡', 'Cheongyang County', 'qingyangjun', 'CYG');
INSERT INTO `travel_location` VALUES ('3704', '304', ',1,89,304,3704,', '4', '瑞山市', 'Seosan', 'ruishanshi', 'SSA');
INSERT INTO `travel_location` VALUES ('3705', '304', ',1,89,304,3705,', '4', '舒川郡', 'Seocheon County', 'shuchuanjun', 'SCE');
INSERT INTO `travel_location` VALUES ('3706', '304', ',1,89,304,3706,', '4', '泰安郡', 'Taean County', 'taianjun', 'TAN');
INSERT INTO `travel_location` VALUES ('3707', '304', ',1,89,304,3707,', '4', '唐津郡', 'Dangjin County', 'tangjinjun', 'TJI');
INSERT INTO `travel_location` VALUES ('3708', '304', ',1,89,304,3708,', '4', '天安市', 'Cheonan', 'tiananshi', 'CHO');
INSERT INTO `travel_location` VALUES ('3709', '304', ',1,89,304,3709,', '4', '牙山市', 'Asan', 'yashanshi', 'ASA');
INSERT INTO `travel_location` VALUES ('3710', '304', ',1,89,304,3710,', '4', '燕岐郡', 'Yeongi County', 'yanjun', 'YGI');
INSERT INTO `travel_location` VALUES ('3711', '305', ',1,131,305,3711,', '4', '北海', 'Butterworth', 'beihai', 'BWH');
INSERT INTO `travel_location` VALUES ('3712', '305', ',1,131,305,3712,', '4', '槟城', 'George Town', 'cheng', 'PEN');
INSERT INTO `travel_location` VALUES ('3713', '305', ',1,131,305,3713,', '4', '大山脚', 'Bukit Mertajam', 'dashanjiao', 'BMJ');
INSERT INTO `travel_location` VALUES ('3714', '305', ',1,131,305,3714,', '4', '高渊', 'Nibong Tebal', 'gaoyuan', 'NTE');
INSERT INTO `travel_location` VALUES ('3715', '306', ',1,131,306,3715,', '4', '加央', 'Kangar', 'jiayang', 'KGR');
INSERT INTO `travel_location` VALUES ('3716', '307', ',1,131,307,3716,', '4', '甘马挽', 'Kemaman', 'ganmawan', 'KEM');
INSERT INTO `travel_location` VALUES ('3717', '307', ',1,131,307,3717,', '4', '瓜拉丁加奴', 'Kuala Terengganu', 'gualadingjianu', 'TGG');
INSERT INTO `travel_location` VALUES ('3718', '307', ',1,131,307,3718,', '4', '龙运', 'Dungun', 'longyun', 'DGN');
INSERT INTO `travel_location` VALUES ('3719', '307', ',1,131,307,3719,', '4', '马江', 'Marang', 'majiang', 'MAR');
INSERT INTO `travel_location` VALUES ('3720', '307', ',1,131,307,3720,', '4', '实兆', 'Setiu', 'shizhao', 'SET');
INSERT INTO `travel_location` VALUES ('3721', '307', ',1,131,307,3721,', '4', '乌鲁', 'Hulu', 'wulu', 'HUL');
INSERT INTO `travel_location` VALUES ('3722', '307', ',1,131,307,3722,', '4', '勿述', 'Besut', 'wushu', 'BES');
INSERT INTO `travel_location` VALUES ('3723', '308', ',1,131,308,3723,', '4', '巴东得腊', 'Padang Terap', 'badongdela', 'PGT');
INSERT INTO `travel_location` VALUES ('3724', '308', ',1,131,308,3724,', '4', '笨筒', 'Pendang', 'bentong', 'PEN');
INSERT INTO `travel_location` VALUES ('3725', '308', ',1,131,308,3725,', '4', '浮罗交怡', 'Langkawi', 'fuluojiao', 'LGK');
INSERT INTO `travel_location` VALUES ('3726', '308', ',1,131,308,3726,', '4', '哥打士打', 'Kota Setar', 'gedashida', 'KOR');
INSERT INTO `travel_location` VALUES ('3727', '308', ',1,131,308,3727,', '4', '古邦巴素', 'Kubang Pasu', 'gubangbasu', 'KPA');
INSERT INTO `travel_location` VALUES ('3728', '308', ',1,131,308,3728,', '4', '瓜拉姆达', 'Kuala Muda', 'gualamuda', 'KMU');
INSERT INTO `travel_location` VALUES ('3729', '308', ',1,131,308,3729,', '4', '华玲', 'Baling', 'hualing', 'BLZ');
INSERT INTO `travel_location` VALUES ('3730', '308', ',1,131,308,3730,', '4', '居林', 'Kulim', 'julin', 'KLM');
INSERT INTO `travel_location` VALUES ('3731', '308', ',1,131,308,3731,', '4', '万拉峇鲁', 'Bandar Baharu', 'wanla', 'BMA');
INSERT INTO `travel_location` VALUES ('3732', '309', ',1,131,309,3732,', '4', '巴西富地', 'Pasir Putih', 'baxifudi', 'PPU');
INSERT INTO `travel_location` VALUES ('3733', '309', ',1,131,309,3733,', '4', '巴西马', 'Pasir Mas', 'baxima', 'PMA');
INSERT INTO `travel_location` VALUES ('3734', '309', ',1,131,309,3734,', '4', '丹那美拉', 'Tanah Merah', 'dannameila', 'TMR');
INSERT INTO `travel_location` VALUES ('3735', '309', ',1,131,309,3735,', '4', '道北', 'Tumpat', 'daobei', 'TUM');
INSERT INTO `travel_location` VALUES ('3736', '309', ',1,131,309,3736,', '4', '登卓', 'Bachok', 'dengzhuo', 'BAC');
INSERT INTO `travel_location` VALUES ('3737', '309', ',1,131,309,3737,', '4', '哥打巴鲁', 'Kota Bharu', 'gedabalu', 'KBR');
INSERT INTO `travel_location` VALUES ('3738', '309', ',1,131,309,3738,', '4', '瓜拉吉赖', 'Kuala Krai', 'gualajilai', 'KUG');
INSERT INTO `travel_location` VALUES ('3739', '309', ',1,131,309,3739,', '4', '话望生', 'Gua Musang', 'huawangsheng', 'GMU');
INSERT INTO `travel_location` VALUES ('3740', '309', ',1,131,309,3740,', '4', '马樟', 'Machang', 'mazhang', 'MAC');
INSERT INTO `travel_location` VALUES ('3741', '309', ',1,131,309,3741,', '4', '日里', 'Jeli', 'rili', 'JEL');
INSERT INTO `travel_location` VALUES ('3742', '310', ',1,131,310,3742,', '4', '吉隆坡', 'Kuala Lumpur', 'jilongpo', 'KUL');
INSERT INTO `travel_location` VALUES ('3743', '311', ',1,131,311,3743,', '4', '马六甲市', 'Melaka', 'maliujiashi', 'MEL');
INSERT INTO `travel_location` VALUES ('3744', '311', ',1,131,311,3744,', '4', '亚罗牙也', 'Alor Gajah', 'yaluoyaye', 'AOG');
INSERT INTO `travel_location` VALUES ('3745', '311', ',1,131,311,3745,', '4', '野新', 'Jasin', 'yexin', 'JAS');
INSERT INTO `travel_location` VALUES ('3746', '312', ',1,131,312,3746,', '4', '纳闽', 'Labuan', 'namin', 'LBU');
INSERT INTO `travel_location` VALUES ('3747', '312', ',1,131,312,3747,', '4', '维多利亚', 'Victoria', 'weiduoliya', 'VIC');
INSERT INTO `travel_location` VALUES ('3748', '313', ',1,131,313,3748,', '4', '百乐', 'Bera', 'baile', 'BER');
INSERT INTO `travel_location` VALUES ('3749', '313', ',1,131,313,3749,', '4', '北根', 'Pekan', 'beigen', 'PEK');
INSERT INTO `travel_location` VALUES ('3750', '313', ',1,131,313,3750,', '4', '淡马鲁', 'Temerloh', 'danmalu', 'TEM');
INSERT INTO `travel_location` VALUES ('3751', '313', ',1,131,313,3751,', '4', '而连突', 'Jerantut', 'erliantu', 'JER');
INSERT INTO `travel_location` VALUES ('3752', '313', ',1,131,313,3752,', '4', '关丹', 'Kuantan', 'guandan', 'KUA');
INSERT INTO `travel_location` VALUES ('3753', '313', ',1,131,313,3753,', '4', '金马仑高原', 'Cameron Highlands', 'jinmalungaoyuan', 'CAH');
INSERT INTO `travel_location` VALUES ('3754', '313', ',1,131,313,3754,', '4', '劳勿', 'Raub', 'laowu', 'RAU');
INSERT INTO `travel_location` VALUES ('3755', '313', ',1,131,313,3755,', '4', '立卑', 'Kuala Lipis', 'libei', 'KUL');
INSERT INTO `travel_location` VALUES ('3756', '313', ',1,131,313,3756,', '4', '马兰', 'Maran', 'malan', 'MAR');
INSERT INTO `travel_location` VALUES ('3757', '313', ',1,131,313,3757,', '4', '文冬', 'Bentong', 'wendong', 'BEN');
INSERT INTO `travel_location` VALUES ('3758', '313', ',1,131,313,3758,', '4', '云冰', 'Rompin', 'yunbing', 'TOM');
INSERT INTO `travel_location` VALUES ('3759', '314', ',1,131,314,3759,', '4', '安顺', 'Teluk Intan', 'anshun', 'TAS');
INSERT INTO `travel_location` VALUES ('3760', '314', ',1,131,314,3760,', '4', '丹绒马', 'Tanjung Malim', 'danrongma', 'TAM');
INSERT INTO `travel_location` VALUES ('3761', '314', ',1,131,314,3761,', '4', '和丰', 'Sungai Siput', 'hefeng', 'SSP');
INSERT INTO `travel_location` VALUES ('3762', '314', ',1,131,314,3762,', '4', '紅土坎', 'Lumut', '', 'LUM');
INSERT INTO `travel_location` VALUES ('3763', '314', ',1,131,314,3763,', '4', '华都牙也', 'Batu Gajah', 'huaduyaye', 'BGA');
INSERT INTO `travel_location` VALUES ('3764', '314', ',1,131,314,3764,', '4', '江沙', 'Kuala Kangsar', 'jiangsha', 'KAR');
INSERT INTO `travel_location` VALUES ('3765', '314', ',1,131,314,3765,', '4', '太平', 'Taiping', 'taiping', 'TPG');
INSERT INTO `travel_location` VALUES ('3766', '314', ',1,131,314,3766,', '4', '怡保', 'Ipoh', 'bao', 'IPH');
INSERT INTO `travel_location` VALUES ('3767', '315', ',1,131,315,3767,', '4', '笨珍', 'Pontian', 'benzhen', 'POW');
INSERT INTO `travel_location` VALUES ('3768', '315', ',1,131,315,3768,', '4', '丰盛港', 'Mersing', 'fengshenggang', 'MEP');
INSERT INTO `travel_location` VALUES ('3769', '315', ',1,131,315,3769,', '4', '哥打丁宜', 'Kota Tinggi', 'gedadingyi', 'KTI');
INSERT INTO `travel_location` VALUES ('3770', '315', ',1,131,315,3770,', '4', '居銮', 'Kluang', 'ju', 'KLA');
INSERT INTO `travel_location` VALUES ('3771', '315', ',1,131,315,3771,', '4', '峇株巴辖', 'Batu Pahat', '', 'BAT');
INSERT INTO `travel_location` VALUES ('3772', '315', ',1,131,315,3772,', '4', '麻坡', 'Muar', 'mapo', 'MUA');
INSERT INTO `travel_location` VALUES ('3773', '315', ',1,131,315,3773,', '4', '昔加末', 'Segamat', 'xijiamo', 'SGM');
INSERT INTO `travel_location` VALUES ('3774', '315', ',1,131,315,3774,', '4', '新山', 'Johor Bahru', 'xinshan', 'JHB');
INSERT INTO `travel_location` VALUES ('3775', '316', ',1,131,316,3775,', '4', '波德申', 'Port Dickson', 'bodeshen', 'PDI');
INSERT INTO `travel_location` VALUES ('3776', '316', ',1,131,316,3776,', '4', '淡边', 'Tampin', 'danbian', 'TAI');
INSERT INTO `travel_location` VALUES ('3777', '316', ',1,131,316,3777,', '4', '芙蓉', 'Seremban', 'rong', 'SRB');
INSERT INTO `travel_location` VALUES ('3778', '316', ',1,131,316,3778,', '4', '瓜拉庇劳', 'Kuala Pilah', 'gualabilao', 'KPI');
INSERT INTO `travel_location` VALUES ('3779', '316', ',1,131,316,3779,', '4', '林茂', 'Rembau', 'linmao', 'REM');
INSERT INTO `travel_location` VALUES ('3780', '316', ',1,131,316,3780,', '4', '仁保', 'Jempol', 'renbao', 'JEP');
INSERT INTO `travel_location` VALUES ('3781', '316', ',1,131,316,3781,', '4', '日叻务', 'Jelebu', 'riwu', 'JEL');
INSERT INTO `travel_location` VALUES ('3782', '317', ',1,131,317,3782,', '4', '吧巴', 'Papar', 'baba', 'PAP');
INSERT INTO `travel_location` VALUES ('3783', '317', ',1,131,317,3783,', '4', '保佛', 'Beaufort', 'baofo', 'BEF');
INSERT INTO `travel_location` VALUES ('3784', '317', ',1,131,317,3784,', '4', '比鲁兰', 'Beluran', 'bilulan', 'BEL');
INSERT INTO `travel_location` VALUES ('3785', '317', ',1,131,317,3785,', '4', '必达士', 'Pitas', 'bidashi', 'PIT');
INSERT INTO `travel_location` VALUES ('3786', '317', ',1,131,317,3786,', '4', '兵南邦', 'Penampang', 'bingnanbang', 'PMP');
INSERT INTO `travel_location` VALUES ('3787', '317', ',1,131,317,3787,', '4', '担布南', 'Tambunan', 'danbunan', 'TAB');
INSERT INTO `travel_location` VALUES ('3788', '317', ',1,131,317,3788,', '4', '丹南', 'Tenom', 'dannan', 'TEN');
INSERT INTO `travel_location` VALUES ('3789', '317', ',1,131,317,3789,', '4', '斗湖', 'Tawau', 'douhu', 'TAW');
INSERT INTO `travel_location` VALUES ('3790', '317', ',1,131,317,3790,', '4', '斗亚兰', 'Tuaran', 'douyalan', 'TUR');
INSERT INTO `travel_location` VALUES ('3791', '317', ',1,131,317,3791,', '4', '哥打基纳巴鲁', 'Kota Kinabalu', 'gedajinabalu', 'BKI');
INSERT INTO `travel_location` VALUES ('3792', '317', ',1,131,317,3792,', '4', '哥打马鲁都', 'Kota Marudu', 'gedamaludu', 'KMU');
INSERT INTO `travel_location` VALUES ('3793', '317', ',1,131,317,3793,', '4', '根地咬', 'Keningau', 'gendiyao', 'KEG');
INSERT INTO `travel_location` VALUES ('3794', '317', ',1,131,317,3794,', '4', '古达', 'Kudat', 'guda', 'KUD');
INSERT INTO `travel_location` VALUES ('3795', '317', ',1,131,317,3795,', '4', '古打毛律', 'Kota Belud', 'gudamaolv', 'KBD');
INSERT INTO `travel_location` VALUES ('3796', '317', ',1,131,317,3796,', '4', '古纳', 'Kunak', 'guna', 'KUN');
INSERT INTO `travel_location` VALUES ('3797', '317', ',1,131,317,3797,', '4', '瓜拉班尤', 'Kuala Penyu', 'gualabanyou', 'KPU');
INSERT INTO `travel_location` VALUES ('3798', '317', ',1,131,317,3798,', '4', '京那巴登岸', 'Kinabatangan', 'jingnabadengan', 'KBT');
INSERT INTO `travel_location` VALUES ('3799', '317', ',1,131,317,3799,', '4', '兰脑', 'Ranau', 'lannao', 'RNU');
INSERT INTO `travel_location` VALUES ('3800', '317', ',1,131,317,3800,', '4', '拿笃', 'Lahad Datu', 'na', 'LDU');
INSERT INTO `travel_location` VALUES ('3801', '317', ',1,131,317,3801,', '4', '纳巴湾', 'Nabawan', 'nabawan', 'NAB');
INSERT INTO `travel_location` VALUES ('3802', '317', ',1,131,317,3802,', '4', '山打根', 'Sandakan', 'shandagen', 'SDK');
INSERT INTO `travel_location` VALUES ('3803', '317', ',1,131,317,3803,', '4', '西比陶', 'Sipitang', 'xibitao', 'SPT');
INSERT INTO `travel_location` VALUES ('3804', '317', ',1,131,317,3804,', '4', '仙本那', 'Semporna', 'xianbenna', 'SMM');
INSERT INTO `travel_location` VALUES ('3805', '318', ',1,131,318,3805,', '4', '古晋', 'Kuching', 'gujin', 'KCH');
INSERT INTO `travel_location` VALUES ('3806', '318', ',1,131,318,3806,', '4', '加帛', 'Kapit', 'jiabo', 'KPI');
INSERT INTO `travel_location` VALUES ('3807', '318', ',1,131,318,3807,', '4', '林梦', 'Limbang', 'linmeng', 'LMN');
INSERT INTO `travel_location` VALUES ('3808', '318', ',1,131,318,3808,', '4', '美里', 'Miri', 'meili', 'MYY');
INSERT INTO `travel_location` VALUES ('3809', '318', ',1,131,318,3809,', '4', '民都鲁', 'Bintulu', 'mindulu', 'BTU');
INSERT INTO `travel_location` VALUES ('3810', '318', ',1,131,318,3810,', '4', '木胶', 'Mukah', 'mujiao', 'MKM');
INSERT INTO `travel_location` VALUES ('3811', '318', ',1,131,318,3811,', '4', '木中', 'Betong', 'muzhong', 'BTG');
INSERT INTO `travel_location` VALUES ('3812', '318', ',1,131,318,3812,', '4', '三马拉汉', 'Samarahan', 'sanmalahan', 'SMH');
INSERT INTO `travel_location` VALUES ('3813', '318', ',1,131,318,3813,', '4', '斯里阿曼', 'Sri Aman', 'siliaman', 'SAM');
INSERT INTO `travel_location` VALUES ('3814', '318', ',1,131,318,3814,', '4', '泗里街', 'Sarikei', 'lijie', 'SAR');
INSERT INTO `travel_location` VALUES ('3815', '318', ',1,131,318,3815,', '4', '泗务', 'Sibu', 'wu', 'SBW');
INSERT INTO `travel_location` VALUES ('3816', '319', ',1,131,319,3816,', '4', '八打灵', 'Petaling', 'badaling', 'PJA');
INSERT INTO `travel_location` VALUES ('3817', '319', ',1,131,319,3817,', '4', '鹅麦', 'Gombak', 'emai', 'GOM');
INSERT INTO `travel_location` VALUES ('3818', '319', ',1,131,319,3818,', '4', '瓜拉冷岳', 'Kuala Langat', 'gualalengyue', 'KLG');
INSERT INTO `travel_location` VALUES ('3819', '319', ',1,131,319,3819,', '4', '瓜拉雪兰莪', 'Kuala Selangor', 'gualaxuelan', 'KSL');
INSERT INTO `travel_location` VALUES ('3820', '319', ',1,131,319,3820,', '4', '沙白安南', 'Sabak Bernam', 'shabaiannan', 'SBM');
INSERT INTO `travel_location` VALUES ('3821', '319', ',1,131,319,3821,', '4', '乌鲁冷岳', 'Hulu Langat', 'wululengyue', 'HUL');
INSERT INTO `travel_location` VALUES ('3822', '319', ',1,131,319,3822,', '4', '乌鲁雪兰莪', 'Hulu Selangor', 'wuluxuelan', 'HUS');
INSERT INTO `travel_location` VALUES ('3823', '319', ',1,131,319,3823,', '4', '雪邦', 'Sepang', 'xuebang', 'SEP');
INSERT INTO `travel_location` VALUES ('3824', '320', ',4,140,320,3824,', '4', '费耶特维尔', 'Fayetteville', 'feiyeteweier', 'FYV');
INSERT INTO `travel_location` VALUES ('3825', '320', ',4,140,320,3825,', '4', '史密斯堡', 'Fort Smith', 'shimisibao', 'FSM');
INSERT INTO `travel_location` VALUES ('3826', '320', ',4,140,320,3826,', '4', '小石城', 'Little Rock', 'xiaoshicheng', 'LIT');
INSERT INTO `travel_location` VALUES ('3827', '321', ',4,140,321,3827,', '4', '伯明罕', 'Birmingham', 'bominghan', 'BHM');
INSERT INTO `travel_location` VALUES ('3828', '321', ',4,140,321,3828,', '4', '蒙哥马利', 'Montgomery', 'menggemali', 'MGM');
INSERT INTO `travel_location` VALUES ('3829', '321', ',4,140,321,3829,', '4', '莫比尔', 'Mobile', 'mobier', 'MOB');
INSERT INTO `travel_location` VALUES ('3830', '322', ',4,140,322,3830,', '4', '安克雷奇', 'Anchorage', 'ankeleiqi', 'ANC');
INSERT INTO `travel_location` VALUES ('3831', '322', ',4,140,322,3831,', '4', '费尔班克斯', 'Fairbanks', 'feierbankesi', 'FAI');
INSERT INTO `travel_location` VALUES ('3832', '322', ',4,140,322,3832,', '4', '朱诺', 'Juneau', 'zhunuo', 'JNU');
INSERT INTO `travel_location` VALUES ('3833', '323', ',4,140,323,3833,', '4', '爱达荷福尔斯', 'Idaho Falls', 'aidahefuersi', 'IDA');
INSERT INTO `travel_location` VALUES ('3834', '323', ',4,140,323,3834,', '4', '波卡特洛', 'Pocatello', 'bokateluo', 'PIH');
INSERT INTO `travel_location` VALUES ('3835', '323', ',4,140,323,3835,', '4', '博伊西', 'Boise', 'boyixi', 'BOI');
INSERT INTO `travel_location` VALUES ('3836', '323', ',4,140,323,3836,', '4', '布莱克富特', 'Blackfoot', 'bulaikefute', 'BLK');
INSERT INTO `travel_location` VALUES ('3837', '323', ',4,140,323,3837,', '4', '科达伦', 'Coeur d\'Alene', 'kedalun', 'COE');
INSERT INTO `travel_location` VALUES ('3838', '323', ',4,140,323,3838,', '4', '刘易斯顿', 'Lewiston', 'liuyisidun', 'LWS');
INSERT INTO `travel_location` VALUES ('3839', '323', ',4,140,323,3839,', '4', '莫斯科', 'Moscow', 'mosike', 'MJL');
INSERT INTO `travel_location` VALUES ('3840', '323', ',4,140,323,3840,', '4', '墨菲', 'Murphy', 'mofei', 'ZMU');
INSERT INTO `travel_location` VALUES ('3841', '323', ',4,140,323,3841,', '4', '楠帕', 'Nampa', 'pa', 'NPA');
INSERT INTO `travel_location` VALUES ('3842', '323', ',4,140,323,3842,', '4', '岂彻姆', 'Ketchum', 'qichemu', 'QKM');
INSERT INTO `travel_location` VALUES ('3843', '323', ',4,140,323,3843,', '4', '森瓦利', 'Sun Valley', 'senwali', 'SVY');
INSERT INTO `travel_location` VALUES ('3844', '323', ',4,140,323,3844,', '4', '亚美利加瀑布城', 'American Falls', 'yameilijiapubucheng', 'YAF');
INSERT INTO `travel_location` VALUES ('3845', '324', ',4,140,324,3845,', '4', '达文波特', 'Davenport', 'dawenbote', 'DVN');
INSERT INTO `travel_location` VALUES ('3846', '324', ',4,140,324,3846,', '4', '得梅因', 'Des Moines', 'demeiyin', 'DSM');
INSERT INTO `travel_location` VALUES ('3847', '324', ',4,140,324,3847,', '4', '锡达拉皮兹', 'Cedar Rapids', 'xidalapizi', 'CID');
INSERT INTO `travel_location` VALUES ('3848', '325', ',4,140,325,3848,', '4', '俾斯麦', 'Bismarck', 'simai', 'BIS');
INSERT INTO `travel_location` VALUES ('3849', '325', ',4,140,325,3849,', '4', '大福克斯', 'Grand Forks', 'dafukesi', 'GFK');
INSERT INTO `travel_location` VALUES ('3850', '325', ',4,140,325,3850,', '4', '法戈', 'Fargo', 'fage', 'FAR');
INSERT INTO `travel_location` VALUES ('3851', '325', ',4,140,325,3851,', '4', '迈诺特', 'Minot', 'mainuote', 'MOT');
INSERT INTO `travel_location` VALUES ('3852', '326', ',4,140,326,3852,', '4', '艾许维尔', 'Asheville', 'aixuweier', 'AEV');
INSERT INTO `travel_location` VALUES ('3853', '326', ',4,140,326,3853,', '4', '杜罕', 'Durham', 'duhan', 'DHH');
INSERT INTO `travel_location` VALUES ('3854', '326', ',4,140,326,3854,', '4', '格林斯伯勒', 'Greensboro', 'gelinsibole', 'GBO');
INSERT INTO `travel_location` VALUES ('3855', '326', ',4,140,326,3855,', '4', '教堂山', 'Chapel Hill', 'jiaotangshan', 'CHE');
INSERT INTO `travel_location` VALUES ('3856', '326', ',4,140,326,3856,', '4', '罗利', 'Raleigh', 'luoli', 'RAG');
INSERT INTO `travel_location` VALUES ('3857', '326', ',4,140,326,3857,', '4', '洛利杜罕都会区', 'Raleigh-Durham', 'luoliduhanduhuiqu', 'RDU');
INSERT INTO `travel_location` VALUES ('3858', '326', ',4,140,326,3858,', '4', '夏洛特', 'Charlotte', 'xialuote', 'CRQ');
INSERT INTO `travel_location` VALUES ('3859', '327', ',4,140,327,3859,', '4', '阿伦敦', 'Allentown', 'alundun', 'AEW');
INSERT INTO `travel_location` VALUES ('3860', '327', ',4,140,327,3860,', '4', '费城', 'Philadephia', 'feicheng', 'PHL');
INSERT INTO `travel_location` VALUES ('3861', '327', ',4,140,327,3861,', '4', '匹兹堡', 'Pittsburgh', 'pizibao', 'PIT');
INSERT INTO `travel_location` VALUES ('3862', '328', ',4,140,328,3862,', '4', '埃尔帕索', 'El Paso', 'aierpasuo', 'ELP');
INSERT INTO `travel_location` VALUES ('3863', '328', ',4,140,328,3863,', '4', '奥斯汀', 'Austin', 'aositing', 'AUS');
INSERT INTO `travel_location` VALUES ('3864', '328', ',4,140,328,3864,', '4', '达拉斯', 'Dallas', 'dalasi', 'DAL');
INSERT INTO `travel_location` VALUES ('3865', '328', ',4,140,328,3865,', '4', '哥帕斯基斯蒂', 'Corpus Christi', 'gepasijisidi', 'CRP');
INSERT INTO `travel_location` VALUES ('3866', '328', ',4,140,328,3866,', '4', '交维斯顿', 'Galveston', 'jiaoweisidun', 'GLS');
INSERT INTO `travel_location` VALUES ('3867', '328', ',4,140,328,3867,', '4', '拉雷多', 'Laredo', 'laleiduo', 'LRD');
INSERT INTO `travel_location` VALUES ('3868', '328', ',4,140,328,3868,', '4', '麦亚伦', 'McAllen', 'maiyalun', 'TXC');
INSERT INTO `travel_location` VALUES ('3869', '328', ',4,140,328,3869,', '4', '圣安东尼奥', 'San Antonio', 'shengandongniao', 'SAT');
INSERT INTO `travel_location` VALUES ('3870', '328', ',4,140,328,3870,', '4', '休斯敦', 'Houston', 'xiusidun', 'HOU');
INSERT INTO `travel_location` VALUES ('3871', '329', ',4,140,329,3871,', '4', '代顿', 'Dayton', 'daidun', 'DYT');
INSERT INTO `travel_location` VALUES ('3872', '329', ',4,140,329,3872,', '4', '哥伦布', 'Columbus', 'gelunbu', 'CZX');
INSERT INTO `travel_location` VALUES ('3873', '329', ',4,140,329,3873,', '4', '克利夫兰', 'Cleveland', 'kelifulan', 'CLE');
INSERT INTO `travel_location` VALUES ('3874', '329', ',4,140,329,3874,', '4', '托莱多', 'Toledo', 'tuolaiduo', 'TOL');
INSERT INTO `travel_location` VALUES ('3875', '329', ',4,140,329,3875,', '4', '辛辛那提', 'Cincinnati', 'xinxinnati', 'CVG');
INSERT INTO `travel_location` VALUES ('3876', '330', ',4,140,330,3876,', '4', '俄克拉荷马城', 'Oklahoma City', 'ekelahemacheng', 'OKC');
INSERT INTO `travel_location` VALUES ('3877', '330', ',4,140,330,3877,', '4', '诺曼', 'Norman', 'nuoman', 'OUN');
INSERT INTO `travel_location` VALUES ('3878', '330', ',4,140,330,3878,', '4', '塔尔萨', 'Tulsa', 'taersa', 'TUL');
INSERT INTO `travel_location` VALUES ('3879', '331', ',4,140,331,3879,', '4', '本德', 'Bend', 'bende', 'BZO');
INSERT INTO `travel_location` VALUES ('3880', '331', ',4,140,331,3880,', '4', '波特兰', 'Portland', 'botelan', 'PDX');
INSERT INTO `travel_location` VALUES ('3881', '331', ',4,140,331,3881,', '4', '达尔斯', 'The Dalles', 'daersi', 'DLS');
INSERT INTO `travel_location` VALUES ('3882', '331', ',4,140,331,3882,', '4', '达拉斯', 'Dallas', 'dalasi', 'DAC');
INSERT INTO `travel_location` VALUES ('3883', '331', ',4,140,331,3883,', '4', '蒂拉穆克', 'Tillamook', 'dilamuke', 'TLM');
INSERT INTO `travel_location` VALUES ('3884', '331', ',4,140,331,3884,', '4', '格兰茨帕斯', 'Grant\'s Pass', 'gelancipasi', 'XFX');
INSERT INTO `travel_location` VALUES ('3885', '331', ',4,140,331,3885,', '4', '胡德里弗', 'Hood River', 'hudelifu', 'HDX');
INSERT INTO `travel_location` VALUES ('3886', '331', ',4,140,331,3886,', '4', '火山口湖', 'Crater Lake', 'huoshankouhu', 'CTR');
INSERT INTO `travel_location` VALUES ('3887', '331', ',4,140,331,3887,', '4', '科瓦利斯', 'Corvallis', 'kewalisi', 'YCV');
INSERT INTO `travel_location` VALUES ('3888', '331', ',4,140,331,3888,', '4', '库斯贝', 'Coos Bay', 'kusibei', 'COB');
INSERT INTO `travel_location` VALUES ('3889', '331', ',4,140,331,3889,', '4', '梅德福', 'Medford', 'meidefu', 'MFR');
INSERT INTO `travel_location` VALUES ('3890', '331', ',4,140,331,3890,', '4', '塞勒姆', 'Salem', 'sailemu', 'SLE');
INSERT INTO `travel_location` VALUES ('3891', '331', ',4,140,331,3891,', '4', '圣海伦斯', 'St Helens', 'shenghailunsi', 'STH');
INSERT INTO `travel_location` VALUES ('3892', '331', ',4,140,331,3892,', '4', '斯普林菲尔德', 'Springfield', 'sipulinfeierde', 'SPY');
INSERT INTO `travel_location` VALUES ('3893', '331', ',4,140,331,3893,', '4', '尤金', 'Eugene', 'youjin', 'EUG');
INSERT INTO `travel_location` VALUES ('3894', '332', ',4,140,332,3894,', '4', '奥兰多', 'Orlando', 'aolanduo', 'ORL');
INSERT INTO `travel_location` VALUES ('3895', '332', ',4,140,332,3895,', '4', '基韦斯特', 'Key West', 'jiweisite', 'EYW');
INSERT INTO `travel_location` VALUES ('3896', '332', ',4,140,332,3896,', '4', '杰克逊维尔', 'Jacksonville', 'jiekexunweier', 'JAX');
INSERT INTO `travel_location` VALUES ('3897', '332', ',4,140,332,3897,', '4', '卡纳维尔角', 'Cape Canaveral', 'kanaweierjiao', 'CPV');
INSERT INTO `travel_location` VALUES ('3898', '332', ',4,140,332,3898,', '4', '罗德岱堡', 'Fort Lauderdale', 'luodebao', 'FLL');
INSERT INTO `travel_location` VALUES ('3899', '332', ',4,140,332,3899,', '4', '迈阿密', 'Miami', 'maiami', 'MIA');
INSERT INTO `travel_location` VALUES ('3900', '332', ',4,140,332,3900,', '4', '圣彼德斯堡市', 'St. Petersburg', 'shengbidesibaoshi', 'PIE');
INSERT INTO `travel_location` VALUES ('3901', '332', ',4,140,332,3901,', '4', '塔拉哈西', 'Tallahassee', 'talahaxi', 'TLH');
INSERT INTO `travel_location` VALUES ('3902', '332', ',4,140,332,3902,', '4', '坦帕', 'Tampa', 'tanpa', 'TPA');
INSERT INTO `travel_location` VALUES ('3903', '333', ',4,140,333,3903,', '4', '伯灵顿', 'Burlington', 'bolingdun', 'BTV');
INSERT INTO `travel_location` VALUES ('3904', '333', ',4,140,333,3904,', '4', '拉特兰', 'Rutland', 'latelan', 'RUT');
INSERT INTO `travel_location` VALUES ('3905', '333', ',4,140,333,3905,', '4', '南伯灵顿', 'South Burlington', 'nanbolingdun', 'ZBR');
INSERT INTO `travel_location` VALUES ('3906', '334', ',4,140,334,3906,', '4', '华盛顿哥伦比亚特区', 'Washington D.C.', 'huashengdungelunbiyatequ', 'WAS');
INSERT INTO `travel_location` VALUES ('3907', '335', ',4,140,335,3907,', '4', '斯波坎', 'Spokane', 'sibokan', 'GEG');
INSERT INTO `travel_location` VALUES ('3908', '335', ',4,140,335,3908,', '4', '塔科马', 'Tacoma', 'takema', 'TTW');
INSERT INTO `travel_location` VALUES ('3909', '335', ',4,140,335,3909,', '4', '西雅图', 'Seattle', 'xiyatu', 'SEA');
INSERT INTO `travel_location` VALUES ('3910', '336', ',4,140,336,3910,', '4', '埃文斯顿', 'Evanston', 'aiwensidun', 'EVD');
INSERT INTO `travel_location` VALUES ('3911', '336', ',4,140,336,3911,', '4', '卡斯珀', 'Casper', 'kasi', 'CPR');
INSERT INTO `travel_location` VALUES ('3912', '336', ',4,140,336,3912,', '4', '拉勒米', 'Laramie', 'lalemi', 'LAR');
INSERT INTO `travel_location` VALUES ('3913', '336', ',4,140,336,3913,', '4', '罗克斯普林斯', 'Rock Springs', 'luokesipulinsi', 'RKS');
INSERT INTO `travel_location` VALUES ('3914', '336', ',4,140,336,3914,', '4', '夏延', 'Cheyenne', 'xiayan', 'CYS');
INSERT INTO `travel_location` VALUES ('3915', '336', ',4,140,336,3915,', '4', '谢里登', 'Sheridan', 'xielideng', 'SHR');
INSERT INTO `travel_location` VALUES ('3916', '337', ',4,140,337,3916,', '4', '旧金山', 'San Francisco', 'jiujinshan', 'SFO');
INSERT INTO `travel_location` VALUES ('3917', '337', ',4,140,337,3917,', '4', '洛杉矶', 'Los Angeles', 'luoshan', 'LAX');
INSERT INTO `travel_location` VALUES ('3918', '337', ',4,140,337,3918,', '4', '圣迭戈', 'San Diego', 'shengdiege', 'SAN');
INSERT INTO `travel_location` VALUES ('3919', '337', ',4,140,337,3919,', '4', '圣何塞', 'San Jose', 'shenghesai', 'SJC');
INSERT INTO `travel_location` VALUES ('3920', '338', ',4,140,338,3920,', '4', '阿比林', 'Abilene', 'abilin', 'ABZ');
INSERT INTO `travel_location` VALUES ('3921', '338', ',4,140,338,3921,', '4', '奥弗兰公园', 'Overland Park', 'aofulangongyuan', 'OVL');
INSERT INTO `travel_location` VALUES ('3922', '338', ',4,140,338,3922,', '4', '哈钦森', 'Hutchinson', 'haqinsen', 'HCH');
INSERT INTO `travel_location` VALUES ('3923', '338', ',4,140,338,3923,', '4', '堪萨斯城', 'Kansas City', 'kansasicheng', 'KCK');
INSERT INTO `travel_location` VALUES ('3924', '338', ',4,140,338,3924,', '4', '莱文沃思', 'Leavenworth', 'laiwenwosi', 'XIA');
INSERT INTO `travel_location` VALUES ('3925', '338', ',4,140,338,3925,', '4', '劳伦斯', 'Lawrence', 'laolunsi', 'LWC');
INSERT INTO `travel_location` VALUES ('3926', '338', ',4,140,338,3926,', '4', '曼哈顿', 'Manhattan', 'manhadun', 'MHK');
INSERT INTO `travel_location` VALUES ('3927', '338', ',4,140,338,3927,', '4', '托皮卡', 'Topeka', 'tuopika', 'TOP');
INSERT INTO `travel_location` VALUES ('3928', '338', ',4,140,338,3928,', '4', '威奇托', 'Wichita', 'weiqituo', 'ICT');
INSERT INTO `travel_location` VALUES ('3929', '339', ',4,140,339,3929,', '4', '布里奇波特', 'Bridgeport', 'buliqibote', 'BDR');
INSERT INTO `travel_location` VALUES ('3930', '339', ',4,140,339,3930,', '4', '达里恩', 'Darien', 'dalien', 'DAQ');
INSERT INTO `travel_location` VALUES ('3931', '339', ',4,140,339,3931,', '4', '格林尼治', 'Greenwich', 'gelinnizhi', 'GRH');
INSERT INTO `travel_location` VALUES ('3932', '339', ',4,140,339,3932,', '4', '哈特福德', 'Hartford', 'hatefude', 'HFD');
INSERT INTO `travel_location` VALUES ('3933', '339', ',4,140,339,3933,', '4', '米德尔顿', 'Middletown', 'mideerdun', 'XIN');
INSERT INTO `travel_location` VALUES ('3934', '339', ',4,140,339,3934,', '4', '纽黑文', 'New Haven', 'niuheiwen', 'HVN');
INSERT INTO `travel_location` VALUES ('3935', '339', ',4,140,339,3935,', '4', '韦斯特波特', 'Westport', 'weisitebote', 'WPT');
INSERT INTO `travel_location` VALUES ('3936', '339', ',4,140,339,3936,', '4', '沃特伯里', 'Waterbury', 'woteboli', 'WAT');
INSERT INTO `travel_location` VALUES ('3937', '339', ',4,140,339,3937,', '4', '新不列颠', 'New Britain', 'xinbuliedian', 'NWT');
INSERT INTO `travel_location` VALUES ('3938', '340', ',4,140,340,3938,', '4', '阿斯彭', 'Aspen', 'asipeng', 'ASE');
INSERT INTO `travel_location` VALUES ('3939', '340', ',4,140,340,3939,', '4', '奥罗拉', 'Aurora', 'aoluola', 'AUX');
INSERT INTO `travel_location` VALUES ('3940', '340', ',4,140,340,3940,', '4', '博尔德', 'Boulder', 'boerde', 'WBU');
INSERT INTO `travel_location` VALUES ('3941', '340', ',4,140,340,3941,', '4', '大章克申', 'Grand Junction', 'dazhangkeshen', 'GJT');
INSERT INTO `travel_location` VALUES ('3942', '340', ',4,140,340,3942,', '4', '丹佛', 'Denver', 'danfo', 'DEN');
INSERT INTO `travel_location` VALUES ('3943', '340', ',4,140,340,3943,', '4', '柯林斯堡', 'Fort Collins', 'kelinsibao', 'FNL');
INSERT INTO `travel_location` VALUES ('3944', '340', ',4,140,340,3944,', '4', '科罗拉多斯普林斯', 'Colorado Springs', 'keluoladuosipulinsi', 'COS');
INSERT INTO `travel_location` VALUES ('3945', '340', ',4,140,340,3945,', '4', '韦尔', 'Vail', 'weier', 'VAC');
INSERT INTO `travel_location` VALUES ('3946', '341', ',4,140,341,3946,', '4', '列克星敦', 'Lexington', 'liekexingdun', 'LEX');
INSERT INTO `travel_location` VALUES ('3947', '341', ',4,140,341,3947,', '4', '路易斯维尔', 'Louisville', 'luyisiweier', 'LUI');
INSERT INTO `travel_location` VALUES ('3948', '341', ',4,140,341,3948,', '4', '欧文斯伯勒', 'Owensboro', 'ouwensibole', 'OWB');
INSERT INTO `travel_location` VALUES ('3949', '342', ',4,140,342,3949,', '4', '巴吞鲁日', 'Baton Rouge', 'batunluri', 'BTR');
INSERT INTO `travel_location` VALUES ('3950', '342', ',4,140,342,3950,', '4', '什里夫波特', 'Shreveport', 'shilifubote', 'SHV');
INSERT INTO `travel_location` VALUES ('3951', '342', ',4,140,342,3951,', '4', '新奥尔良', 'New Orleans', 'xinaoerliang', 'MSY');
INSERT INTO `travel_location` VALUES ('3952', '343', ',4,140,343,3952,', '4', '波塔基特', 'Pawtucket', 'botajite', 'PAW');
INSERT INTO `travel_location` VALUES ('3953', '343', ',4,140,343,3953,', '4', '克兰斯顿', 'Cranston', 'kelansidun', 'CQH');
INSERT INTO `travel_location` VALUES ('3954', '343', ',4,140,343,3954,', '4', '纽波特', 'Newport', 'niubote', 'NPO');
INSERT INTO `travel_location` VALUES ('3955', '343', ',4,140,343,3955,', '4', '普罗维登斯', 'Providence', 'puluoweidengsi', 'PVD');
INSERT INTO `travel_location` VALUES ('3956', '343', ',4,140,343,3956,', '4', '韦斯特利', 'Westerly', 'weisiteli', 'WST');
INSERT INTO `travel_location` VALUES ('3957', '343', ',4,140,343,3957,', '4', '文索基特', 'Woonsocket', 'wensuojite', 'SFN');
INSERT INTO `travel_location` VALUES ('3958', '343', ',4,140,343,3958,', '4', '沃威克', 'Warwick', 'woweike', 'UZO');
INSERT INTO `travel_location` VALUES ('3959', '344', ',4,140,344,3959,', '4', '巴尔的摩', 'Balitmore', 'baerdemo', 'BAL');
INSERT INTO `travel_location` VALUES ('3960', '344', ',4,140,344,3960,', '4', '盖瑟斯堡', 'Gaithersburg', 'gaisesibao', 'GAI');
INSERT INTO `travel_location` VALUES ('3961', '344', ',4,140,344,3961,', '4', '罗克维尔', 'Rockville', 'luokeweier', 'RKV');
INSERT INTO `travel_location` VALUES ('3962', '345', ',4,140,345,3962,', '4', '波士顿', 'Boston', 'boshidun', 'BZD');
INSERT INTO `travel_location` VALUES ('3963', '345', ',4,140,345,3963,', '4', '斯普林菲尔德', 'Springfield', 'sipulinfeierde', 'SFY');
INSERT INTO `travel_location` VALUES ('3964', '345', ',4,140,345,3964,', '4', '伍斯特', 'Worcester', 'wusite', 'ORH');
INSERT INTO `travel_location` VALUES ('3965', '346', ',4,140,346,3965,', '4', '比灵斯', 'Billings', 'bilingsi', 'BGS');
INSERT INTO `travel_location` VALUES ('3966', '346', ',4,140,346,3966,', '4', '大瀑布村', 'Great Falls', 'dapubucun', 'GTF');
INSERT INTO `travel_location` VALUES ('3967', '346', ',4,140,346,3967,', '4', '米苏拉', 'Missoula', 'misula', 'MSO');
INSERT INTO `travel_location` VALUES ('3968', '347', ',4,140,347,3968,', '4', '哥伦比亚', 'Columbia', 'gelunbiya', 'COV');
INSERT INTO `travel_location` VALUES ('3969', '347', ',4,140,347,3969,', '4', '杰佛逊市', 'Jefferson City', 'jiefoxunshi', 'JEF');
INSERT INTO `travel_location` VALUES ('3970', '347', ',4,140,347,3970,', '4', '堪萨斯城', 'Kansas City', 'kansasicheng', 'MKC');
INSERT INTO `travel_location` VALUES ('3971', '347', ',4,140,347,3971,', '4', '圣路易斯', 'Sanit Louis', 'shengluyisi', 'STL');
INSERT INTO `travel_location` VALUES ('3972', '347', ',4,140,347,3972,', '4', '斯普林菲尔德', 'Springfield', 'sipulinfeierde', 'SGF');
INSERT INTO `travel_location` VALUES ('3973', '348', ',4,140,348,3973,', '4', '比洛克西', 'Biloxi', 'biluokexi', 'BIX');
INSERT INTO `travel_location` VALUES ('3974', '348', ',4,140,348,3974,', '4', '格尔夫波特', 'Gulfport', 'geerfubote', 'GPT');
INSERT INTO `travel_location` VALUES ('3975', '348', ',4,140,348,3975,', '4', '格林维尔', 'Greenville', 'gelinweier', 'GLH');
INSERT INTO `travel_location` VALUES ('3976', '348', ',4,140,348,3976,', '4', '哈蒂斯堡', 'Hattiesburg', 'hadisibao', 'HBG');
INSERT INTO `travel_location` VALUES ('3977', '348', ',4,140,348,3977,', '4', '杰克逊', 'Jackson', 'jiekexun', 'JAN');
INSERT INTO `travel_location` VALUES ('3978', '348', ',4,140,348,3978,', '4', '默里迪恩', 'Meridian', 'molidien', 'MEI');
INSERT INTO `travel_location` VALUES ('3979', '348', ',4,140,348,3979,', '4', '维克斯堡', 'Vicksburg', 'weikesibao', 'VKS');
INSERT INTO `travel_location` VALUES ('3980', '349', ',4,140,349,3980,', '4', '安娜堡', 'Ann Arbor', 'annabao', 'ARB');
INSERT INTO `travel_location` VALUES ('3981', '349', ',4,140,349,3981,', '4', '巴特尔克里克', 'Battle Creek', 'bateerkelike', 'BTL');
INSERT INTO `travel_location` VALUES ('3982', '349', ',4,140,349,3982,', '4', '贝城', 'Bay City', 'beicheng', 'BCY');
INSERT INTO `travel_location` VALUES ('3983', '349', ',4,140,349,3983,', '4', '大急流城', 'Grand Rapids', 'dajiliucheng', 'GRR');
INSERT INTO `travel_location` VALUES ('3984', '349', ',4,140,349,3984,', '4', '迪尔伯恩', 'Dearborn', 'dierboen', 'DEO');
INSERT INTO `travel_location` VALUES ('3985', '349', ',4,140,349,3985,', '4', '底特律', 'Detroit', 'ditelv', 'DET');
INSERT INTO `travel_location` VALUES ('3986', '349', ',4,140,349,3986,', '4', '弗林特', 'Flint', 'fulinte', 'FNT');
INSERT INTO `travel_location` VALUES ('3987', '349', ',4,140,349,3987,', '4', '怀恩多特', 'Wyandotte', 'huaienduote', 'WYD');
INSERT INTO `travel_location` VALUES ('3988', '349', ',4,140,349,3988,', '4', '卡拉马袓', 'Kalamazoo', 'kalama', 'AZO');
INSERT INTO `travel_location` VALUES ('3989', '349', ',4,140,349,3989,', '4', '兰辛', 'Lansing', 'lanxin', 'LAN');
INSERT INTO `travel_location` VALUES ('3990', '349', ',4,140,349,3990,', '4', '马斯基根', 'Muskegon', 'masijigen', 'MKG');
INSERT INTO `travel_location` VALUES ('3991', '349', ',4,140,349,3991,', '4', '庞菷亚克', 'Pontiac', 'pang', 'PTK');
INSERT INTO `travel_location` VALUES ('3992', '349', ',4,140,349,3992,', '4', '萨吉诺', 'Saginaw', 'sajinuo', 'SGM');
INSERT INTO `travel_location` VALUES ('3993', '349', ',4,140,349,3993,', '4', '苏圣玛丽', 'Sault Ste Marie', 'sushengmali', 'SSM');
INSERT INTO `travel_location` VALUES ('3994', '349', ',4,140,349,3994,', '4', '沃伦', 'Warren', 'wolun', 'WAM');
INSERT INTO `travel_location` VALUES ('3995', '349', ',4,140,349,3995,', '4', '休伦港', 'Port Huron', 'xiulungang', 'PHN');
INSERT INTO `travel_location` VALUES ('3996', '350', ',4,140,350,3996,', '4', '班戈', 'Bangor', 'bange', 'BNQ');
INSERT INTO `travel_location` VALUES ('3997', '350', ',4,140,350,3997,', '4', '波特兰', 'Portland', 'botelan', 'POL');
INSERT INTO `travel_location` VALUES ('3998', '350', ',4,140,350,3998,', '4', '刘易斯顿', 'Lewiston', 'liuyisidun', 'QLW');
INSERT INTO `travel_location` VALUES ('3999', '351', ',4,140,351,3999,', '4', '罗切斯特', 'Rochester', 'luoqiesite', 'RST');
INSERT INTO `travel_location` VALUES ('4000', '351', ',4,140,351,4000,', '4', '明尼阿波利斯', 'Minneapolis', 'mingniabolisi', 'MES');
INSERT INTO `travel_location` VALUES ('4001', '351', ',4,140,351,4001,', '4', '圣保罗', 'Saint Paul', 'shengbaoluo', 'STP');
INSERT INTO `travel_location` VALUES ('4002', '352', ',4,140,352,4002,', '4', '阿伯丁', 'Aberdeen', 'aboding', 'ABK');
INSERT INTO `travel_location` VALUES ('4003', '352', ',4,140,352,4003,', '4', '拉皮德城', 'Rapid City', 'lapidecheng', 'RAP');
INSERT INTO `travel_location` VALUES ('4004', '352', ',4,140,352,4004,', '4', '苏福尔斯', 'Sioux Falls', 'sufuersi', 'FSD');
INSERT INTO `travel_location` VALUES ('4005', '353', ',4,140,353,4005,', '4', '北查尔斯顿', 'North Charleston', 'beichaersidun', 'NTS');
INSERT INTO `travel_location` VALUES ('4006', '353', ',4,140,353,4006,', '4', '查尔斯顿', 'Charleston', 'chaersidun', 'CHS');
INSERT INTO `travel_location` VALUES ('4007', '353', ',4,140,353,4007,', '4', '哥伦比亚', 'Columbia', 'gelunbiya', 'COV');
INSERT INTO `travel_location` VALUES ('4008', '354', ',4,140,354,4008,', '4', '奥马哈', 'Omaha', 'aomaha', 'OMA');
INSERT INTO `travel_location` VALUES ('4009', '354', ',4,140,354,4009,', '4', '贝尔维尤', 'Bellevue', 'beierweiyou', 'XDE');
INSERT INTO `travel_location` VALUES ('4010', '354', ',4,140,354,4010,', '4', '林肯', 'Lincoln', 'linken', 'LNK');
INSERT INTO `travel_location` VALUES ('4011', '355', ',4,140,355,4011,', '4', '埃尔科', 'Elko', 'aierke', 'EKO');
INSERT INTO `travel_location` VALUES ('4012', '355', ',4,140,355,4012,', '4', '北拉斯维加斯', 'North Las Vegas', 'beilasiweijiasi', 'NVS');
INSERT INTO `travel_location` VALUES ('4013', '355', ',4,140,355,4013,', '4', '弗吉尼亚城', 'Virginia City', 'fujiniyacheng', 'VGI');
INSERT INTO `travel_location` VALUES ('4014', '355', ',4,140,355,4014,', '4', '亨德森', 'Henderson', 'hengdesen', 'HNZ');
INSERT INTO `travel_location` VALUES ('4015', '355', ',4,140,355,4015,', '4', '卡森城', 'Carson City', 'kasencheng', 'CSN');
INSERT INTO `travel_location` VALUES ('4016', '355', ',4,140,355,4016,', '4', '拉斯维加斯', 'Las Vegas', 'lasiweijiasi', 'LAS');
INSERT INTO `travel_location` VALUES ('4017', '355', ',4,140,355,4017,', '4', '里诺', 'Reno', 'linuo', 'RNO');
INSERT INTO `travel_location` VALUES ('4018', '355', ',4,140,355,4018,', '4', '斯帕克斯', 'Sparks', 'sipakesi', 'SPK');
INSERT INTO `travel_location` VALUES ('4019', '356', ',4,140,356,4019,', '4', '布法罗', 'Buffalo', 'bufaluo', 'FFO');
INSERT INTO `travel_location` VALUES ('4020', '356', ',4,140,356,4020,', '4', '罗切斯特', 'Rochester', 'luoqiesite', 'ROC');
INSERT INTO `travel_location` VALUES ('4021', '356', ',4,140,356,4021,', '4', '纽约市', 'New York', 'niuyueshi', 'QEE');
INSERT INTO `travel_location` VALUES ('4022', '357', ',4,140,357,4022,', '4', '多佛', 'Dover', 'duofo', 'DOR');
INSERT INTO `travel_location` VALUES ('4023', '357', ',4,140,357,4023,', '4', '纽瓦克', 'Newark', 'niuwake', 'NWK');
INSERT INTO `travel_location` VALUES ('4024', '357', ',4,140,357,4024,', '4', '威明顿', 'Wilmington', 'weimingdun', 'ILG');
INSERT INTO `travel_location` VALUES ('4025', '358', ',4,140,358,4025,', '4', '布利斯托', 'Bristol', 'bulisituo', 'BSJ');
INSERT INTO `travel_location` VALUES ('4026', '358', ',4,140,358,4026,', '4', '查塔努加', 'Chattanooga', 'chatanujia', 'CHA');
INSERT INTO `travel_location` VALUES ('4027', '358', ',4,140,358,4027,', '4', '金斯波特', 'Kingsport', 'jinsibote', 'TRI');
INSERT INTO `travel_location` VALUES ('4028', '358', ',4,140,358,4028,', '4', '孟菲斯', 'Memphis', 'mengfeisi', 'MEM');
INSERT INTO `travel_location` VALUES ('4029', '358', ',4,140,358,4029,', '4', '纳什维尔', 'Nashville', 'nashiweier', 'BNA');
INSERT INTO `travel_location` VALUES ('4030', '358', ',4,140,358,4030,', '4', '诺克斯维尔', 'Knoxville', 'nuokesiweier', 'TYS');
INSERT INTO `travel_location` VALUES ('4031', '358', ',4,140,358,4031,', '4', '三城区', 'Tri-City Area', 'sanchengqu', 'YTC');
INSERT INTO `travel_location` VALUES ('4032', '358', ',4,140,358,4032,', '4', '士麦那', 'Smyrna', 'shimaina', 'MQY');
INSERT INTO `travel_location` VALUES ('4033', '358', ',4,140,358,4033,', '4', '斯普林希尔', 'Spring Hill', 'sipulinxier', 'RGI');
INSERT INTO `travel_location` VALUES ('4034', '358', ',4,140,358,4034,', '4', '约翰逊城', 'Johnson City', 'yuehanxuncheng', 'JCY');
INSERT INTO `travel_location` VALUES ('4035', '359', ',4,140,359,4035,', '4', '阿普尓顿', 'Appleton', 'apu', 'ATW');
INSERT INTO `travel_location` VALUES ('4036', '359', ',4,140,359,4036,', '4', '奥什科什', 'Oshkosh', 'aoshikeshi', 'OSH');
INSERT INTO `travel_location` VALUES ('4037', '359', ',4,140,359,4037,', '4', '格林贝', 'Green Bay', 'gelinbei', 'GBK');
INSERT INTO `travel_location` VALUES ('4038', '359', ',4,140,359,4038,', '4', '基诺沙', 'Kenosha', 'jinuosha', 'ENW');
INSERT INTO `travel_location` VALUES ('4039', '359', ',4,140,359,4039,', '4', '拉克罗斯', 'LaCrosse', 'lakeluosi', 'LSE');
INSERT INTO `travel_location` VALUES ('4040', '359', ',4,140,359,4040,', '4', '拉辛', 'Racine', 'laxin', 'RAC');
INSERT INTO `travel_location` VALUES ('4041', '359', ',4,140,359,4041,', '4', '马尼托沃克', 'Manitowoc', 'manituowoke', 'MTW');
INSERT INTO `travel_location` VALUES ('4042', '359', ',4,140,359,4042,', '4', '迈迪逊', 'Madison', 'maidixun', 'QMD');
INSERT INTO `travel_location` VALUES ('4043', '359', ',4,140,359,4043,', '4', '密尔沃基', 'Milwaukee', 'mierwoji', 'MKE');
INSERT INTO `travel_location` VALUES ('4044', '359', ',4,140,359,4044,', '4', '欧克莱尓', 'Eau Claire', 'oukelai', 'EAU');
INSERT INTO `travel_location` VALUES ('4045', '359', ',4,140,359,4045,', '4', '沃索', 'Wausau', 'wosuo', 'AUW');
INSERT INTO `travel_location` VALUES ('4046', '359', ',4,140,359,4046,', '4', '希博伊根', 'Sheboygan', 'xiboyigen', 'SBM');
INSERT INTO `travel_location` VALUES ('4047', '360', ',4,140,360,4047,', '4', '弗吉尼亚比奇', 'Virginia Beach', 'fujiniyabiqi', 'VAB');
INSERT INTO `travel_location` VALUES ('4048', '360', ',4,140,360,4048,', '4', '诺福克', 'Norfolk', 'nuofuke', 'ORF');
INSERT INTO `travel_location` VALUES ('4049', '360', ',4,140,360,4049,', '4', '切萨皮克', 'Chesapeake', 'qiesapike', 'HTW');
INSERT INTO `travel_location` VALUES ('4050', '361', ',4,140,361,4050,', '4', '查尔斯顿', 'Charleston', 'chaersidun', 'CRW');
INSERT INTO `travel_location` VALUES ('4051', '361', ',4,140,361,4051,', '4', '亨廷顿', 'Huntington', 'hengtingdun', 'HNU');
INSERT INTO `travel_location` VALUES ('4052', '361', ',4,140,361,4052,', '4', '帕克斯堡', 'Parkersburg', 'pakesibao', 'PKB');
INSERT INTO `travel_location` VALUES ('4053', '362', ',4,140,362,4053,', '4', '凯卢阿', 'Kailua', 'kailua', 'KHH');
INSERT INTO `travel_location` VALUES ('4054', '362', ',4,140,362,4054,', '4', '檀香山', 'Honolulu', 'tanxiangshan', 'HNL');
INSERT INTO `travel_location` VALUES ('4055', '362', ',4,140,362,4055,', '4', '希洛', 'Hilo', 'xiluo', 'ITO');
INSERT INTO `travel_location` VALUES ('4056', '363', ',4,140,363,4056,', '4', '康科德', 'Concord', 'kangkede', 'CON');
INSERT INTO `travel_location` VALUES ('4057', '363', ',4,140,363,4057,', '4', '曼彻斯特', 'Manchester', 'manchesite', 'MHT');
INSERT INTO `travel_location` VALUES ('4058', '363', ',4,140,363,4058,', '4', '纳舒厄', 'Nashua', 'nashue', 'ASH');
INSERT INTO `travel_location` VALUES ('4059', '364', ',4,140,364,4059,', '4', '阿尔伯克基', 'Albuquerque', 'aerbokeji', 'ABQ');
INSERT INTO `travel_location` VALUES ('4060', '364', ',4,140,364,4060,', '4', '拉斯克鲁塞斯', 'Las Cruces', 'lasikelusaisi', 'LRU');
INSERT INTO `travel_location` VALUES ('4061', '364', ',4,140,364,4061,', '4', '罗斯韦尔', 'Roswell', 'luosiweier', 'ROW');
INSERT INTO `travel_location` VALUES ('4062', '364', ',4,140,364,4062,', '4', '圣菲', 'Santa Fe', 'shengfei', 'SAF');
INSERT INTO `travel_location` VALUES ('4063', '365', ',4,140,365,4063,', '4', '纽瓦克', 'Newark', 'niuwake', 'NRK');
INSERT INTO `travel_location` VALUES ('4064', '365', ',4,140,365,4064,', '4', '帕特森', 'Paterson', 'patesen', 'PAT');
INSERT INTO `travel_location` VALUES ('4065', '365', ',4,140,365,4065,', '4', '泽西城', 'Jersey City', 'zexicheng', 'JEC');
INSERT INTO `travel_location` VALUES ('4066', '366', ',4,140,366,4066,', '4', '凤凰城', 'Phoenix', 'fenghuangcheng', 'PHX');
INSERT INTO `travel_location` VALUES ('4067', '366', ',4,140,366,4067,', '4', '格兰代尔', 'Glendale', 'gelandaier', 'GDA');
INSERT INTO `travel_location` VALUES ('4068', '366', ',4,140,366,4068,', '4', '梅萨', 'Mesa', 'meisa', 'MQA');
INSERT INTO `travel_location` VALUES ('4069', '366', ',4,140,366,4069,', '4', '史卡兹代尔', 'Scottsdale', 'shikazidaier', 'STZ');
INSERT INTO `travel_location` VALUES ('4070', '366', ',4,140,366,4070,', '4', '坦普', 'Tempe', 'tanpu', 'TPE');
INSERT INTO `travel_location` VALUES ('4071', '366', ',4,140,366,4071,', '4', '图森', 'Tucson', 'tusen', 'TUC');
INSERT INTO `travel_location` VALUES ('4072', '366', ',4,140,366,4072,', '4', '优玛', 'Yuma', 'youma', 'YUM');
INSERT INTO `travel_location` VALUES ('4073', '367', ',4,140,367,4073,', '4', '奥尔顿', 'Alton', 'aoerdun', 'ALN');
INSERT INTO `travel_location` VALUES ('4074', '367', ',4,140,367,4074,', '4', '奥罗拉', 'Aurora', 'aoluola', 'AUZ');
INSERT INTO `travel_location` VALUES ('4075', '367', ',4,140,367,4075,', '4', '布卢明顿', 'Bloomington', 'bulumingdun', 'BLO');
INSERT INTO `travel_location` VALUES ('4076', '367', ',4,140,367,4076,', '4', '丹维尓', 'Danville', 'danwei', 'DVI');
INSERT INTO `travel_location` VALUES ('4077', '367', ',4,140,367,4077,', '4', '迪卡尔布', 'De Kalb', 'dikaerbu', 'DEK');
INSERT INTO `travel_location` VALUES ('4078', '367', ',4,140,367,4078,', '4', '迪凯持', 'Decatur', 'dikaichi', 'DEC');
INSERT INTO `travel_location` VALUES ('4079', '367', ',4,140,367,4079,', '4', '东圣路易斯', 'East St Louis', 'dongshengluyisi', 'ESL');
INSERT INTO `travel_location` VALUES ('4080', '367', ',4,140,367,4080,', '4', '厄巴纳-香槟', 'Champaign-Urbana', 'ebanaxiang', 'CMI');
INSERT INTO `travel_location` VALUES ('4081', '367', ',4,140,367,4081,', '4', '盖尔斯堡', 'Galesburg', 'gaiersibao', 'GSU');
INSERT INTO `travel_location` VALUES ('4082', '367', ',4,140,367,4082,', '4', '卡本代尔', 'Carbondale', 'kabendaier', 'MDH');
INSERT INTO `travel_location` VALUES ('4083', '367', ',4,140,367,4083,', '4', '罗克艾兰', 'Rock Island', 'luokeailan', 'RKI');
INSERT INTO `travel_location` VALUES ('4084', '367', ',4,140,367,4084,', '4', '罗克福德', 'Rockford', 'luokefude', 'RFD');
INSERT INTO `travel_location` VALUES ('4085', '367', ',4,140,367,4085,', '4', '诺黙尔', 'Normal', 'nuo', 'NOM');
INSERT INTO `travel_location` VALUES ('4086', '367', ',4,140,367,4086,', '4', '皮奥里亚', 'Peoria', 'piaoliya', 'PLA');
INSERT INTO `travel_location` VALUES ('4087', '367', ',4,140,367,4087,', '4', '森特勒利亚', 'Centralia', 'senteleliya', 'CRA');
INSERT INTO `travel_location` VALUES ('4088', '367', ',4,140,367,4088,', '4', '斯普林菲尔德', 'Springfield', 'sipulinfeierde', 'SPI');
INSERT INTO `travel_location` VALUES ('4089', '367', ',4,140,367,4089,', '4', '沃其根', 'Waukegan', 'woqigen', 'UGN');
INSERT INTO `travel_location` VALUES ('4090', '367', ',4,140,367,4090,', '4', '芝加哥', 'Chicago', 'zhijiage', 'CHI');
INSERT INTO `travel_location` VALUES ('4091', '368', ',4,140,368,4091,', '4', '埃文斯维尔', 'Evansville', 'aiwensiweier', 'EVV');
INSERT INTO `travel_location` VALUES ('4092', '368', ',4,140,368,4092,', '4', '韦恩堡', 'Fort Wayne', 'weienbao', 'FWA');
INSERT INTO `travel_location` VALUES ('4093', '368', ',4,140,368,4093,', '4', '印第安纳波利斯', 'Indianapolis', 'yindiannabolisi', 'IND');
INSERT INTO `travel_location` VALUES ('4094', '369', ',4,140,369,4094,', '4', '奥格登', 'Ogden', 'aogedeng', 'OGD');
INSERT INTO `travel_location` VALUES ('4095', '369', ',4,140,369,4095,', '4', '雷登', 'Layton', 'leideng', 'LTJ');
INSERT INTO `travel_location` VALUES ('4096', '369', ',4,140,369,4096,', '4', '欧仁', 'Orem', 'ouren', 'OEU');
INSERT INTO `travel_location` VALUES ('4097', '369', ',4,140,369,4097,', '4', '帕克城', 'Park City', 'pakecheng', 'PAC');
INSERT INTO `travel_location` VALUES ('4098', '369', ',4,140,369,4098,', '4', '普罗沃', 'Provo', 'puluowo', 'PVU');
INSERT INTO `travel_location` VALUES ('4099', '369', ',4,140,369,4099,', '4', '圣乔治', 'St.George', 'shengqiaozhi', 'SGU');
INSERT INTO `travel_location` VALUES ('4100', '369', ',4,140,369,4100,', '4', '西瓦利城', 'West Valley City', 'xiwalicheng', 'WVC');
INSERT INTO `travel_location` VALUES ('4101', '369', ',4,140,369,4101,', '4', '盐湖城', 'Salt Lake City', 'yanhucheng', 'SLC');
INSERT INTO `travel_location` VALUES ('4102', '370', ',4,140,370,4102,', '4', '奥古斯塔', 'Augusta', 'aogusita', 'AUT');
INSERT INTO `travel_location` VALUES ('4103', '370', ',4,140,370,4103,', '4', '哥伦布', 'Columbus', 'gelunbu', 'CZX');
INSERT INTO `travel_location` VALUES ('4104', '370', ',4,140,370,4104,', '4', '梅肯', 'Macon', 'meiken', 'MCN');
INSERT INTO `travel_location` VALUES ('4105', '370', ',4,140,370,4105,', '4', '沙瓦纳', 'Savannah', 'shawana', 'SAV');
INSERT INTO `travel_location` VALUES ('4106', '370', ',4,140,370,4106,', '4', '亚特兰大', 'Atlanta', 'yatelanda', 'TAT');
INSERT INTO `travel_location` VALUES ('4107', '371', ',2,237,371,4107,', '4', '贝尔法斯特', 'Belfast', 'beierfasite', 'BFS');
INSERT INTO `travel_location` VALUES ('4108', '371', ',2,237,371,4108,', '4', '德里', 'Derry', 'deli', 'DRY');
INSERT INTO `travel_location` VALUES ('4109', '371', ',2,237,371,4109,', '4', '利斯本', 'Lisburn', 'lisiben', 'LSB');
INSERT INTO `travel_location` VALUES ('4110', '371', ',2,237,371,4110,', '4', '纽里', 'Newry', 'niuli', 'NYM');
INSERT INTO `travel_location` VALUES ('4111', '372', ',2,237,372,4111,', '4', '阿伯丁', 'Aberdeen', 'aboding', 'ABD');
INSERT INTO `travel_location` VALUES ('4112', '372', ',2,237,372,4112,', '4', '爱丁堡', 'Edinburgh', 'aidingbao', 'EDH');
INSERT INTO `travel_location` VALUES ('4113', '372', ',2,237,372,4113,', '4', '丹迪', 'Dundee', 'dandi', 'DND');
INSERT INTO `travel_location` VALUES ('4114', '372', ',2,237,372,4114,', '4', '格拉斯哥', 'Glasgow', 'gelasige', 'GLG');
INSERT INTO `travel_location` VALUES ('4115', '372', ',2,237,372,4115,', '4', '斯特灵', 'Stirling', 'siteling', 'STG');
INSERT INTO `travel_location` VALUES ('4116', '372', ',2,237,372,4116,', '4', '因弗内斯', 'Inverness', 'yinfuneisi', 'INV');
INSERT INTO `travel_location` VALUES ('4117', '373', ',2,237,373,4117,', '4', '班戈', 'Bangor', 'bange', 'BAN');
INSERT INTO `travel_location` VALUES ('4118', '373', ',2,237,373,4118,', '4', '卡迪夫', 'Cardiff', 'kadifu', 'CDF');
INSERT INTO `travel_location` VALUES ('4119', '373', ',2,237,373,4119,', '4', '纽波特', 'Newport', 'niubote', 'NWP');
INSERT INTO `travel_location` VALUES ('4120', '373', ',2,237,373,4120,', '4', '斯旺西', 'Swansea', 'siwangxi', 'SWA');
INSERT INTO `travel_location` VALUES ('4121', '374', ',2,237,374,4121,', '4', '埃克塞特', 'Exeter', 'aikesaite', 'EXE');
INSERT INTO `travel_location` VALUES ('4122', '374', ',2,237,374,4122,', '4', '巴斯', 'Bath', 'basi', 'BAS');
INSERT INTO `travel_location` VALUES ('4123', '374', ',2,237,374,4123,', '4', '彼得伯勒', 'Peterborough', 'bidebole', 'PTE');
INSERT INTO `travel_location` VALUES ('4124', '374', ',2,237,374,4124,', '4', '伯明翰', 'Birmingham', 'bominghan', 'BIR');
INSERT INTO `travel_location` VALUES ('4125', '374', ',2,237,374,4125,', '4', '布拉德福德', 'Bradford', 'buladefude', 'BRD');
INSERT INTO `travel_location` VALUES ('4126', '374', ',2,237,374,4126,', '4', '布莱顿与赫福', 'Brighton & Hove', 'bulaidunyuhefu', 'BNH');
INSERT INTO `travel_location` VALUES ('4127', '374', ',2,237,374,4127,', '4', '布里斯托尔', 'Bristol', 'bulisituoer', 'BST');
INSERT INTO `travel_location` VALUES ('4128', '374', ',2,237,374,4128,', '4', '德比', 'Derby', 'debi', 'DER');
INSERT INTO `travel_location` VALUES ('4129', '374', ',2,237,374,4129,', '4', '德罕', 'Durham', 'dehan', 'DUR');
INSERT INTO `travel_location` VALUES ('4130', '374', ',2,237,374,4130,', '4', '格洛斯特', 'Gloucester', 'geluosite', 'GLO');
INSERT INTO `travel_location` VALUES ('4131', '374', ',2,237,374,4131,', '4', '赫尔河畔京斯敦', 'Kingston upon Hull', 'heerhepanjingsidun', 'KUH');
INSERT INTO `travel_location` VALUES ('4132', '374', ',2,237,374,4132,', '4', '赫里福德', 'Hereford', 'helifude', 'HAF');
INSERT INTO `travel_location` VALUES ('4133', '374', ',2,237,374,4133,', '4', '剑桥', 'Cambridge', 'jianqiao', 'CAM');
INSERT INTO `travel_location` VALUES ('4134', '374', ',2,237,374,4134,', '4', '卡莱尔', 'Carlisle', 'kalaier', 'CAX');
INSERT INTO `travel_location` VALUES ('4135', '374', ',2,237,374,4135,', '4', '坎特伯雷', 'Canterbury', 'kantebolei', 'CNG');
INSERT INTO `travel_location` VALUES ('4136', '374', ',2,237,374,4136,', '4', '考文垂', 'Coventry', 'kaowenchui', 'COV');
INSERT INTO `travel_location` VALUES ('4137', '374', ',2,237,374,4137,', '4', '兰开斯特', 'Lancaster', 'lankaisite', 'LAN');
INSERT INTO `travel_location` VALUES ('4138', '374', ',2,237,374,4138,', '4', '里彭', 'Ripon', 'lipeng', 'RIP');
INSERT INTO `travel_location` VALUES ('4139', '374', ',2,237,374,4139,', '4', '利奇菲尔德', 'Lichfield', 'liqifeierde', 'LHF');
INSERT INTO `travel_location` VALUES ('4140', '374', ',2,237,374,4140,', '4', '利物浦', 'Liverpool', 'liwupu', 'LIV');
INSERT INTO `travel_location` VALUES ('4141', '374', ',2,237,374,4141,', '4', '利茲', 'Leeds', 'li', 'LDS');
INSERT INTO `travel_location` VALUES ('4142', '374', ',2,237,374,4142,', '4', '列斯特', 'Leicester', 'liesite', 'LCE');
INSERT INTO `travel_location` VALUES ('4143', '374', ',2,237,374,4143,', '4', '林肯', 'Lincoln', 'linken', 'LCN');
INSERT INTO `travel_location` VALUES ('4144', '374', ',2,237,374,4144,', '4', '伦敦', 'London', 'lundun', 'LND');
INSERT INTO `travel_location` VALUES ('4145', '374', ',2,237,374,4145,', '4', '曼彻斯特', 'Manchester', 'manchesite', 'MAN');
INSERT INTO `travel_location` VALUES ('4146', '374', ',2,237,374,4146,', '4', '南安普敦', 'Southampton', 'nananpudun', 'STH');
INSERT INTO `travel_location` VALUES ('4147', '374', ',2,237,374,4147,', '4', '牛津', 'Oxford', 'niujin', 'OXF');
INSERT INTO `travel_location` VALUES ('4148', '374', ',2,237,374,4148,', '4', '纽卡斯尔', 'Newcastle', 'niukasier', 'NCL');
INSERT INTO `travel_location` VALUES ('4149', '374', ',2,237,374,4149,', '4', '诺丁汉', 'Nottingham', 'nuodinghan', 'NGM');
INSERT INTO `travel_location` VALUES ('4150', '374', ',2,237,374,4150,', '4', '诺里奇', 'Norwich', 'nuoliqi', 'NRW');
INSERT INTO `travel_location` VALUES ('4151', '374', ',2,237,374,4151,', '4', '朴茨茅斯', 'Portsmouth', 'pucimaosi', 'POR');
INSERT INTO `travel_location` VALUES ('4152', '374', ',2,237,374,4152,', '4', '普雷斯顿', 'Preston', 'puleisidun', 'PRE');
INSERT INTO `travel_location` VALUES ('4153', '374', ',2,237,374,4153,', '4', '普利茅斯', 'Plymouth', 'pulimaosi', 'PLY');
INSERT INTO `travel_location` VALUES ('4154', '374', ',2,237,374,4154,', '4', '奇切斯特', 'Chichester', 'qiqiesite', 'CST');
INSERT INTO `travel_location` VALUES ('4155', '374', ',2,237,374,4155,', '4', '切斯特', 'Chester', 'qiesite', 'CEG');
INSERT INTO `travel_location` VALUES ('4156', '374', ',2,237,374,4156,', '4', '桑德兰', 'Sunderland', 'sangdelan', 'SUN');
INSERT INTO `travel_location` VALUES ('4157', '374', ',2,237,374,4157,', '4', '圣阿本斯', 'Saint Albans', 'shengabensi', 'TBL');
INSERT INTO `travel_location` VALUES ('4158', '374', ',2,237,374,4158,', '4', '索尔斯堡', 'Salisbury', 'suoersibao', 'SLS');
INSERT INTO `travel_location` VALUES ('4159', '374', ',2,237,374,4159,', '4', '索福特', 'Salford', 'suofute', 'SLF');
INSERT INTO `travel_location` VALUES ('4160', '374', ',2,237,374,4160,', '4', '特鲁罗', 'Truro', 'teluluo', 'TRU');
INSERT INTO `travel_location` VALUES ('4161', '374', ',2,237,374,4161,', '4', '特伦特河畔斯多克', 'Stoke-on-Trent', 'teluntehepansiduoke', 'SOT');
INSERT INTO `travel_location` VALUES ('4162', '374', ',2,237,374,4162,', '4', '威尔斯', 'Wells', 'weiersi', 'WLS');
INSERT INTO `travel_location` VALUES ('4163', '374', ',2,237,374,4163,', '4', '韦克菲尔德', 'Wakefield', 'weikefeierde', 'WKF');
INSERT INTO `travel_location` VALUES ('4164', '374', ',2,237,374,4164,', '4', '温彻斯特', 'Winchester', 'wenchesite', 'WNE');
INSERT INTO `travel_location` VALUES ('4165', '374', ',2,237,374,4165,', '4', '伍尔弗汉普顿', 'Wolverhampton', 'wuerfuhanpudun', 'WOV');
INSERT INTO `travel_location` VALUES ('4166', '374', ',2,237,374,4166,', '4', '伍斯特', 'Worcester', 'wusite', 'WOR');
INSERT INTO `travel_location` VALUES ('4167', '374', ',2,237,374,4167,', '4', '谢菲尔德', 'Sheffield', 'xiefeierde', 'SHE');
INSERT INTO `travel_location` VALUES ('4168', '374', ',2,237,374,4168,', '4', '伊利', 'Ely', 'yili', 'ELY');
INSERT INTO `travel_location` VALUES ('4169', '374', ',2,237,374,4169,', '4', '约克', 'York', 'yueke', 'YOR');

-- ----------------------------
-- Table structure for users
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '2861166132@qq.com', '$2y$10$QmK9vxdd6.rItQCxA0sAcOu9j2/FL1JnbNNR8bH4gk3AtdO18m.Ta', '{\"attribute.attributes.index\":true,\"attribute.attributes.create\":true,\"attribute.attributes.edit\":true,\"attribute.attributes.destroy\":true,\"blog.posts.index\":true,\"blog.posts.create\":true,\"blog.posts.edit\":true,\"blog.posts.destroy\":true,\"blog.categories.index\":true,\"blog.categories.create\":true,\"blog.categories.edit\":true,\"blog.categories.destroy\":true,\"core.sidebar.group\":true,\"dashboard.index\":true,\"dashboard.update\":true,\"dashboard.reset\":true,\"media.medias.index\":true,\"media.medias.create\":true,\"media.medias.edit\":true,\"media.medias.destroy\":true,\"media.folders.index\":true,\"media.folders.create\":true,\"media.folders.edit\":true,\"media.folders.destroy\":true,\"menu.menus.index\":true,\"menu.menus.create\":true,\"menu.menus.edit\":true,\"menu.menus.destroy\":true,\"menu.menuitems.index\":true,\"menu.menuitems.create\":true,\"menu.menuitems.edit\":true,\"menu.menuitems.destroy\":true,\"page.pages.index\":true,\"page.pages.create\":true,\"page.pages.edit\":true,\"page.pages.destroy\":true,\"product.attrsets.index\":true,\"product.attrsets.create\":true,\"product.attrsets.edit\":true,\"product.attrsets.destroy\":true,\"product.products.index\":true,\"product.products.create\":true,\"product.products.edit\":true,\"product.products.destroy\":true,\"product.categories.index\":true,\"product.categories.create\":true,\"product.categories.edit\":true,\"product.categories.destroy\":true,\"product.images.index\":true,\"product.images.create\":true,\"product.images.edit\":true,\"product.images.destroy\":true,\"product.skus.index\":true,\"product.skus.create\":true,\"product.skus.edit\":true,\"product.skus.destroy\":true,\"product.attrs.index\":true,\"product.attrs.create\":true,\"product.attrs.edit\":true,\"product.attrs.destroy\":true,\"setting.settings.index\":true,\"setting.settings.edit\":true,\"tag.tags.index\":true,\"tag.tags.create\":true,\"tag.tags.edit\":true,\"tag.tags.destroy\":true,\"translation.translations.index\":true,\"translation.translations.edit\":true,\"translation.translations.import\":true,\"translation.translations.export\":true,\"user.users.index\":true,\"user.users.create\":true,\"user.users.edit\":true,\"user.users.destroy\":true,\"user.roles.index\":true,\"user.roles.create\":true,\"user.roles.edit\":true,\"user.roles.destroy\":true,\"account.api-keys.index\":true,\"account.api-keys.create\":true,\"account.api-keys.destroy\":true,\"workshop.sidebar.group\":true,\"workshop.modules.index\":true,\"workshop.modules.show\":true,\"workshop.modules.update\":true,\"workshop.modules.disable\":true,\"workshop.modules.enable\":true,\"workshop.modules.publish\":true,\"workshop.themes.index\":true,\"workshop.themes.show\":true,\"workshop.themes.publish\":true}', '2018-05-08 05:36:18', 'miya', 'yeh', '2018-02-05 10:08:17', '2018-05-08 05:36:18');
INSERT INTO `users` VALUES ('8', '1738956292@qq.com', '$2y$10$LA9wGms38rwy/r025jyGnu0ziD7/WKH7TUBCnt2STaObsCil6gUlO', '', '2018-02-22 10:06:04', 'sdf', 'sdf', '2018-02-22 09:39:27', '2018-02-22 10:06:04');

-- ----------------------------
-- Table structure for user_tokens
-- ----------------------------
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_tokens
-- ----------------------------
INSERT INTO `user_tokens` VALUES ('1', '1', '2d03ab9b-71a7-4dff-8a2a-64557c0af0fc', '2018-02-05 10:08:17', '2018-02-05 10:08:17');
INSERT INTO `user_tokens` VALUES ('2', '8', 'e46d0058-b9a3-43a1-81b5-08ce4bc762c1', '2018-02-22 09:39:33', '2018-02-22 09:39:33');