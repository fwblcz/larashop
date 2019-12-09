-- MySQL dump 10.17  Distrib 10.3.16-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: larashop
-- ------------------------------------------------------
-- Server version	5.7.14

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
-- Table structure for table `admin_menu`
--

DROP TABLE IF EXISTS `admin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_menu`
--

LOCK TABLES `admin_menu` WRITE;
/*!40000 ALTER TABLE `admin_menu` DISABLE KEYS */;
INSERT INTO `admin_menu` VALUES (1,0,1,'首页','fa-bar-chart','/',NULL,NULL,'2019-11-29 09:16:21'),(2,0,6,'系统管理','fa-tasks',NULL,NULL,NULL,'2019-12-09 03:39:48'),(3,2,7,'管理员','fa-users','auth/users',NULL,NULL,'2019-12-09 03:39:48'),(4,2,8,'角色','fa-user','auth/roles',NULL,NULL,'2019-12-09 03:39:48'),(5,2,9,'权限','fa-ban','auth/permissions',NULL,NULL,'2019-12-09 03:39:48'),(6,2,10,'菜单','fa-bars','auth/menu',NULL,NULL,'2019-12-09 03:39:49'),(7,2,11,'操作日志','fa-history','auth/logs',NULL,NULL,'2019-12-09 03:39:49'),(8,0,2,'用户管理','fa-users','/users',NULL,'2019-11-30 03:19:10','2019-11-30 03:19:45'),(9,0,3,'商品管理','fa-cubes','/products',NULL,'2019-11-30 06:22:46','2019-11-30 06:23:38'),(10,0,4,'订单管理','fa-rmb','/orders',NULL,'2019-12-04 02:25:10','2019-12-04 02:25:48'),(11,0,5,'优惠券管理','fa-tags','/coupon_codes',NULL,'2019-12-09 03:39:37','2019-12-09 03:39:48');
/*!40000 ALTER TABLE `admin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_operation_log`
--

DROP TABLE IF EXISTS `admin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_operation_log`
--

LOCK TABLES `admin_operation_log` WRITE;
/*!40000 ALTER TABLE `admin_operation_log` DISABLE KEYS */;
INSERT INTO `admin_operation_log` VALUES (1,1,'admin','GET','127.0.0.1','[]','2019-11-29 09:10:52','2019-11-29 09:10:52'),(2,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-29 09:15:35','2019-11-29 09:15:35'),(3,1,'admin/auth/menu/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-29 09:15:54','2019-11-29 09:15:54'),(4,1,'admin/auth/menu/1','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u9996\\u9875\",\"icon\":\"fa-bar-chart\",\"uri\":\"\\/\",\"roles\":[null],\"permission\":null,\"_token\":\"tbBLpRBWoxvdUTYBvApH79SgY49O0pePyjSXPNXs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/menu\"}','2019-11-29 09:16:21','2019-11-29 09:16:21'),(5,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-29 09:16:22','2019-11-29 09:16:22'),(6,1,'admin/auth/menu/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-29 09:16:40','2019-11-29 09:16:40'),(7,1,'admin/auth/menu/2','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7cfb\\u7edf\\u7ba1\\u7406\",\"icon\":\"fa-tasks\",\"uri\":null,\"roles\":[\"1\",null],\"permission\":null,\"_token\":\"tbBLpRBWoxvdUTYBvApH79SgY49O0pePyjSXPNXs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/menu\"}','2019-11-29 09:16:56','2019-11-29 09:16:56'),(8,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-29 09:16:56','2019-11-29 09:16:56'),(9,1,'admin/auth/menu/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-29 09:16:59','2019-11-29 09:16:59'),(10,1,'admin/auth/menu/3','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u7ba1\\u7406\\u5458\",\"icon\":\"fa-users\",\"uri\":\"auth\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"tbBLpRBWoxvdUTYBvApH79SgY49O0pePyjSXPNXs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/menu\"}','2019-11-29 09:17:10','2019-11-29 09:17:10'),(11,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-29 09:17:10','2019-11-29 09:17:10'),(12,1,'admin/auth/menu/4/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-29 09:17:14','2019-11-29 09:17:14'),(13,1,'admin/auth/menu/4','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u89d2\\u8272\",\"icon\":\"fa-user\",\"uri\":\"auth\\/roles\",\"roles\":[null],\"permission\":null,\"_token\":\"tbBLpRBWoxvdUTYBvApH79SgY49O0pePyjSXPNXs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/menu\"}','2019-11-29 09:17:23','2019-11-29 09:17:23'),(14,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-29 09:17:23','2019-11-29 09:17:23'),(15,1,'admin/auth/menu/5/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-29 09:17:26','2019-11-29 09:17:26'),(16,1,'admin/auth/menu/5','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u6743\\u9650\",\"icon\":\"fa-ban\",\"uri\":\"auth\\/permissions\",\"roles\":[null],\"permission\":null,\"_token\":\"tbBLpRBWoxvdUTYBvApH79SgY49O0pePyjSXPNXs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/menu\"}','2019-11-29 09:17:39','2019-11-29 09:17:39'),(17,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-29 09:17:40','2019-11-29 09:17:40'),(18,1,'admin/auth/menu/6/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-29 09:19:14','2019-11-29 09:19:14'),(19,1,'admin/auth/menu/6','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u83dc\\u5355\",\"icon\":\"fa-bars\",\"uri\":\"auth\\/menu\",\"roles\":[null],\"permission\":null,\"_token\":\"tbBLpRBWoxvdUTYBvApH79SgY49O0pePyjSXPNXs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/menu\"}','2019-11-29 09:19:19','2019-11-29 09:19:19'),(20,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-29 09:19:19','2019-11-29 09:19:19'),(21,1,'admin/auth/menu/7/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-29 09:19:28','2019-11-29 09:19:28'),(22,1,'admin/auth/menu/7','PUT','127.0.0.1','{\"parent_id\":\"2\",\"title\":\"\\u64cd\\u4f5c\\u65e5\\u5fd7\",\"icon\":\"fa-history\",\"uri\":\"auth\\/logs\",\"roles\":[null],\"permission\":null,\"_token\":\"tbBLpRBWoxvdUTYBvApH79SgY49O0pePyjSXPNXs\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/menu\"}','2019-11-29 09:19:33','2019-11-29 09:19:33'),(23,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-29 09:19:33','2019-11-29 09:19:33'),(24,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-29 09:19:37','2019-11-29 09:19:37'),(25,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-29 09:19:39','2019-11-29 09:19:39'),(26,1,'admin','GET','127.0.0.1','[]','2019-11-30 03:15:30','2019-11-30 03:15:30'),(27,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:16:38','2019-11-30 03:16:38'),(28,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"\\/users\",\"roles\":[null],\"permission\":null,\"_token\":\"PnMDfeT0DPsspTbLAVkHwrJoyPHGw3qzErlZv0nu\"}','2019-11-30 03:19:10','2019-11-30 03:19:10'),(29,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-30 03:19:10','2019-11-30 03:19:10'),(30,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-30 03:19:31','2019-11-30 03:19:31'),(31,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"PnMDfeT0DPsspTbLAVkHwrJoyPHGw3qzErlZv0nu\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}','2019-11-30 03:19:45','2019-11-30 03:19:45'),(32,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:19:46','2019-11-30 03:19:46'),(33,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-30 03:19:49','2019-11-30 03:19:49'),(34,1,'admin/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:20:42','2019-11-30 03:20:42'),(35,1,'admin/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:20:43','2019-11-30 03:20:43'),(36,1,'admin','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:21:00','2019-11-30 03:21:00'),(37,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:21:04','2019-11-30 03:21:04'),(38,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-30 03:23:25','2019-11-30 03:23:25'),(39,1,'admin/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:23:28','2019-11-30 03:23:28'),(40,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:24:22','2019-11-30 03:24:22'),(41,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:24:32','2019-11-30 03:24:32'),(42,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"users\",\"name\":\"\\u7528\\u6237\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/users*\",\"_token\":\"PnMDfeT0DPsspTbLAVkHwrJoyPHGw3qzErlZv0nu\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/permissions\"}','2019-11-30 03:25:33','2019-11-30 03:25:33'),(43,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-11-30 03:25:33','2019-11-30 03:25:33'),(44,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:25:44','2019-11-30 03:25:44'),(45,1,'admin/auth/roles/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:25:45','2019-11-30 03:25:45'),(46,1,'admin/auth/roles/create','GET','127.0.0.1','[]','2019-11-30 03:27:38','2019-11-30 03:27:38'),(47,1,'admin/auth/roles','POST','127.0.0.1','{\"slug\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",null],\"_token\":\"PnMDfeT0DPsspTbLAVkHwrJoyPHGw3qzErlZv0nu\"}','2019-11-30 03:27:56','2019-11-30 03:27:56'),(48,1,'admin/auth/roles','GET','127.0.0.1','[]','2019-11-30 03:27:56','2019-11-30 03:27:56'),(49,1,'admin/auth/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:28:25','2019-11-30 03:28:25'),(50,1,'admin/auth/users/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:28:28','2019-11-30 03:28:28'),(51,1,'admin/auth/users','POST','127.0.0.1','{\"username\":\"operator\",\"name\":\"\\u8fd0\\u8425\",\"password\":\"123456\",\"password_confirmation\":\"123456\",\"roles\":[\"2\",null],\"permissions\":[null],\"_token\":\"PnMDfeT0DPsspTbLAVkHwrJoyPHGw3qzErlZv0nu\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/users\"}','2019-11-30 03:29:46','2019-11-30 03:29:46'),(52,1,'admin/auth/users','GET','127.0.0.1','[]','2019-11-30 03:29:46','2019-11-30 03:29:46'),(53,1,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:30:02','2019-11-30 03:30:02'),(54,2,'admin','GET','127.0.0.1','[]','2019-11-30 03:30:16','2019-11-30 03:30:16'),(55,2,'admin/users','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 03:30:20','2019-11-30 03:30:20'),(56,2,'admin/auth/logout','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 06:21:53','2019-11-30 06:21:53'),(57,1,'admin','GET','127.0.0.1','[]','2019-11-30 06:22:00','2019-11-30 06:22:00'),(58,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 06:22:06','2019-11-30 06:22:06'),(59,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-cubes\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"d9v6PsTDcUCwFjJa19ma29WzwK23GvjGS0EJaOv4\"}','2019-11-30 06:22:46','2019-11-30 06:22:46'),(60,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-30 06:22:47','2019-11-30 06:22:47'),(61,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 06:22:58','2019-11-30 06:22:58'),(62,1,'admin/auth/menu/9/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 06:23:01','2019-11-30 06:23:01'),(63,1,'admin/auth/menu/9','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"icon\":\"fa-cubes\",\"uri\":\"\\/products\",\"roles\":[null],\"permission\":null,\"_token\":\"d9v6PsTDcUCwFjJa19ma29WzwK23GvjGS0EJaOv4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/menu\"}','2019-11-30 06:23:27','2019-11-30 06:23:27'),(64,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-30 06:23:27','2019-11-30 06:23:27'),(65,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"d9v6PsTDcUCwFjJa19ma29WzwK23GvjGS0EJaOv4\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}','2019-11-30 06:23:38','2019-11-30 06:23:38'),(66,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 06:23:39','2019-11-30 06:23:39'),(67,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-11-30 06:23:56','2019-11-30 06:23:56'),(68,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 06:23:59','2019-11-30 06:23:59'),(69,1,'admin/products','GET','127.0.0.1','[]','2019-11-30 06:26:57','2019-11-30 06:26:57'),(70,1,'admin/products/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 06:26:58','2019-11-30 06:26:58'),(71,1,'admin/products','POST','127.0.0.1','{\"title\":\"xss\\u9632\\u5fa1\\u6d4b\\u8bd5123\",\"description\":\"<p>eee&nbsp;<\\/p>\",\"on_sale\":\"0\",\"_token\":\"d9v6PsTDcUCwFjJa19ma29WzwK23GvjGS0EJaOv4\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/products\"}','2019-11-30 06:27:40','2019-11-30 06:27:40'),(72,1,'admin/products','GET','127.0.0.1','[]','2019-11-30 06:27:40','2019-11-30 06:27:40'),(73,1,'admin/products','GET','127.0.0.1','[]','2019-11-30 06:27:59','2019-11-30 06:27:59'),(74,1,'admin/products','GET','127.0.0.1','[]','2019-11-30 06:29:12','2019-11-30 06:29:12'),(75,1,'admin/products','GET','127.0.0.1','[]','2019-11-30 06:29:35','2019-11-30 06:29:35'),(76,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 06:29:37','2019-11-30 06:29:37'),(77,1,'admin/products/1/edit','GET','127.0.0.1','[]','2019-11-30 06:30:37','2019-11-30 06:30:37'),(78,1,'admin','GET','127.0.0.1','[]','2019-11-30 06:34:35','2019-11-30 06:34:35'),(79,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 06:34:39','2019-11-30 06:34:39'),(80,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 06:34:42','2019-11-30 06:34:42'),(81,1,'admin/products/1','PUT','127.0.0.1','{\"title\":\"xss\\u9632\\u5fa1\\u6d4b\\u8bd5123\",\"description\":\"<p>eee&nbsp;<\\/p>\",\"on_sale\":\"1\",\"_token\":\"d9v6PsTDcUCwFjJa19ma29WzwK23GvjGS0EJaOv4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/products\"}','2019-11-30 06:34:47','2019-11-30 06:34:47'),(82,1,'admin/products','GET','127.0.0.1','[]','2019-11-30 06:34:47','2019-11-30 06:34:47'),(83,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 06:35:01','2019-11-30 06:35:01'),(84,1,'admin/products/1','PUT','127.0.0.1','{\"title\":\"xss\\u9632\\u5fa1\\u6d4b\\u8bd5123\",\"description\":\"<p>eee&nbsp;<\\/p>\",\"on_sale\":\"1\",\"skus\":{\"new_1\":{\"title\":\"iphone x\",\"description\":\"haohuo\",\"price\":\"11\",\"stock\":\"11\",\"id\":null,\"_remove_\":\"0\"},\"new_2\":{\"title\":\"iphone\",\"description\":\"hhh\",\"price\":\"10\",\"stock\":\"9\",\"id\":null,\"_remove_\":\"0\"}},\"_token\":\"d9v6PsTDcUCwFjJa19ma29WzwK23GvjGS0EJaOv4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/products\"}','2019-11-30 06:46:04','2019-11-30 06:46:04'),(85,1,'admin/products','GET','127.0.0.1','[]','2019-11-30 06:46:05','2019-11-30 06:46:05'),(86,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 06:46:20','2019-11-30 06:46:20'),(87,1,'admin','GET','127.0.0.1','[]','2019-11-30 07:08:37','2019-11-30 07:08:37'),(88,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 07:18:36','2019-11-30 07:18:36'),(89,1,'admin/products/1/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-11-30 07:18:42','2019-11-30 07:18:42'),(90,1,'admin/products/1','PUT','127.0.0.1','{\"title\":\"xss\\u9632\\u5fa1\\u6d4b\\u8bd5123\",\"description\":\"<p>eee&nbsp;<\\/p>\",\"on_sale\":\"0\",\"skus\":{\"1\":{\"title\":\"iphone x\",\"description\":\"haohuo\",\"price\":\"11.00\",\"stock\":\"11\",\"id\":\"1\",\"_remove_\":\"0\"},\"2\":{\"title\":\"iphone\",\"description\":\"hhh\",\"price\":\"10.00\",\"stock\":\"9\",\"id\":\"2\",\"_remove_\":\"0\"}},\"_token\":\"d9v6PsTDcUCwFjJa19ma29WzwK23GvjGS0EJaOv4\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/products\"}','2019-11-30 07:18:47','2019-11-30 07:18:47'),(91,1,'admin/products','GET','127.0.0.1','[]','2019-11-30 07:18:48','2019-11-30 07:18:48'),(92,1,'admin','GET','127.0.0.1','[]','2019-12-02 08:29:16','2019-12-02 08:29:16'),(93,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-02 08:29:24','2019-12-02 08:29:24'),(94,1,'admin/products/3/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-02 08:29:33','2019-12-02 08:29:33'),(95,1,'admin/products/3','PUT','127.0.0.1','{\"title\":\"explicabo\",\"description\":\"<p>Incidunt ducimus earum facilis rem voluptas.<\\/p>\",\"on_sale\":\"0\",\"skus\":{\"6\":{\"title\":\"incidunt\",\"description\":\"Perspiciatis consequatur repellat qui est illo dolor.\",\"price\":\"5072.00\",\"stock\":\"58557\",\"id\":\"6\",\"_remove_\":\"0\"},\"7\":{\"title\":\"similique\",\"description\":\"Iusto sunt voluptatem numquam debitis.\",\"price\":\"8141.00\",\"stock\":\"3217\",\"id\":\"7\",\"_remove_\":\"0\"},\"8\":{\"title\":\"non\",\"description\":\"Quisquam nihil quibusdam rem similique omnis vero.\",\"price\":\"965.00\",\"stock\":\"73393\",\"id\":\"8\",\"_remove_\":\"0\"}},\"_token\":\"vxd6uHpWn43olkToAYRmKlWForQqwFrqlMWMniHR\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/products\"}','2019-12-02 08:29:39','2019-12-02 08:29:39'),(96,1,'admin/products','GET','127.0.0.1','[]','2019-12-02 08:29:40','2019-12-02 08:29:40'),(97,1,'admin','GET','127.0.0.1','[]','2019-12-04 02:21:56','2019-12-04 02:21:56'),(98,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-04 02:22:00','2019-12-04 02:22:00'),(99,1,'admin/products','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-04 02:22:20','2019-12-04 02:22:20'),(100,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-04 02:24:44','2019-12-04 02:24:44'),(101,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u8ba2\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-rmb\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"38eLewZFHHu45xomqK56QwZeiSl0ATgtO0WFA6zP\"}','2019-12-04 02:25:09','2019-12-04 02:25:09'),(102,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-12-04 02:25:10','2019-12-04 02:25:10'),(103,1,'admin/auth/menu/10/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-04 02:25:19','2019-12-04 02:25:19'),(104,1,'admin/auth/menu/10','PUT','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u8ba2\\u5355\\u7ba1\\u7406\",\"icon\":\"fa-rmb\",\"uri\":\"\\/orders\",\"roles\":[null],\"permission\":null,\"_token\":\"38eLewZFHHu45xomqK56QwZeiSl0ATgtO0WFA6zP\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/menu\"}','2019-12-04 02:25:42','2019-12-04 02:25:42'),(105,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-12-04 02:25:42','2019-12-04 02:25:42'),(106,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"38eLewZFHHu45xomqK56QwZeiSl0ATgtO0WFA6zP\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}','2019-12-04 02:25:48','2019-12-04 02:25:48'),(107,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-04 02:25:48','2019-12-04 02:25:48'),(108,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-04 02:25:49','2019-12-04 02:25:49'),(109,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-12-04 02:25:53','2019-12-04 02:25:53'),(110,1,'admin/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-04 02:25:57','2019-12-04 02:25:57'),(111,1,'admin/orders','GET','127.0.0.1','[]','2019-12-04 02:26:47','2019-12-04 02:26:47'),(112,1,'admin/orders','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-04 02:26:52','2019-12-04 02:26:52'),(113,1,'admin/orders','GET','127.0.0.1','[]','2019-12-04 02:30:58','2019-12-04 02:30:58'),(114,1,'admin/orders/1','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-04 02:31:01','2019-12-04 02:31:01'),(115,1,'admin/orders/1','GET','127.0.0.1','[]','2019-12-04 02:34:00','2019-12-04 02:34:00'),(116,1,'admin/orders/1/ship','POST','127.0.0.1','{\"_token\":\"a3IZgnioGLZaGO6LAJoMhN28HIgjRwgBAus0dm2u\",\"express_company\":null,\"express_no\":null}','2019-12-04 02:35:50','2019-12-04 02:35:50'),(117,1,'admin/orders/1','GET','127.0.0.1','[]','2019-12-04 02:35:50','2019-12-04 02:35:50'),(118,1,'admin/orders/1','GET','127.0.0.1','[]','2019-12-04 02:36:02','2019-12-04 02:36:02'),(119,1,'admin/orders/1','GET','127.0.0.1','[]','2019-12-04 02:36:04','2019-12-04 02:36:04'),(120,1,'admin/orders/1/ship','POST','127.0.0.1','{\"_token\":\"a3IZgnioGLZaGO6LAJoMhN28HIgjRwgBAus0dm2u\",\"express_company\":\"222\",\"express_no\":\"22222\"}','2019-12-04 02:36:23','2019-12-04 02:36:23'),(121,1,'admin/orders/1','GET','127.0.0.1','[]','2019-12-04 02:36:23','2019-12-04 02:36:23'),(122,1,'admin/orders/1','GET','127.0.0.1','[]','2019-12-04 06:13:29','2019-12-04 06:13:29'),(123,1,'admin/orders/1','GET','127.0.0.1','[]','2019-12-04 06:13:31','2019-12-04 06:13:31'),(124,1,'admin/orders/1','GET','127.0.0.1','[]','2019-12-04 06:13:32','2019-12-04 06:13:32'),(125,1,'admin','GET','127.0.0.1','[]','2019-12-09 03:37:12','2019-12-09 03:37:12'),(126,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-09 03:38:38','2019-12-09 03:38:38'),(127,1,'admin/auth/menu','POST','127.0.0.1','{\"parent_id\":\"0\",\"title\":\"\\u4f18\\u60e0\\u5238\\u7ba1\\u7406\",\"icon\":\"fa-tags\",\"uri\":\"\\/coupon_codes\",\"roles\":[null],\"permission\":null,\"_token\":\"aq8QO1KO6GRNx5xcSlrChi0tl6npZfOpy1ZlKtbK\"}','2019-12-09 03:39:37','2019-12-09 03:39:37'),(128,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-12-09 03:39:38','2019-12-09 03:39:38'),(129,1,'admin/auth/menu','POST','127.0.0.1','{\"_token\":\"aq8QO1KO6GRNx5xcSlrChi0tl6npZfOpy1ZlKtbK\",\"_order\":\"[{\\\"id\\\":1},{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":10},{\\\"id\\\":11},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}','2019-12-09 03:39:48','2019-12-09 03:39:48'),(130,1,'admin/auth/menu','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-09 03:39:49','2019-12-09 03:39:49'),(131,1,'admin/auth/menu','GET','127.0.0.1','[]','2019-12-09 03:39:52','2019-12-09 03:39:52'),(132,1,'admin/coupon_codes','GET','127.0.0.1','[]','2019-12-09 03:40:56','2019-12-09 03:40:56'),(133,1,'admin/coupon_codes','GET','127.0.0.1','[]','2019-12-09 03:42:57','2019-12-09 03:42:57'),(134,1,'admin/coupon_codes','GET','127.0.0.1','[]','2019-12-09 03:45:34','2019-12-09 03:45:34'),(135,1,'admin/coupon_codes','GET','127.0.0.1','[]','2019-12-09 03:46:32','2019-12-09 03:46:32'),(136,1,'admin/coupon_codes','GET','127.0.0.1','[]','2019-12-09 03:49:32','2019-12-09 03:49:32'),(137,1,'admin/coupon_codes/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-09 03:49:33','2019-12-09 03:49:33'),(138,1,'admin/coupon_codes','POST','127.0.0.1','{\"name\":null,\"code\":null,\"type\":\"fixed\",\"value\":null,\"total\":null,\"min_amount\":null,\"not_before\":null,\"not_after\":null,\"enabled\":\"0\",\"_token\":\"aq8QO1KO6GRNx5xcSlrChi0tl6npZfOpy1ZlKtbK\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/coupon_codes\"}','2019-12-09 03:49:48','2019-12-09 03:49:48'),(139,1,'admin/coupon_codes/create','GET','127.0.0.1','[]','2019-12-09 03:49:48','2019-12-09 03:49:48'),(140,1,'admin/coupon_codes','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-09 06:10:58','2019-12-09 06:10:58'),(141,1,'admin/coupon_codes','GET','127.0.0.1','[]','2019-12-09 06:32:00','2019-12-09 06:32:00'),(142,1,'admin/coupon_codes','GET','127.0.0.1','[]','2019-12-09 06:32:24','2019-12-09 06:32:24'),(143,1,'admin/auth/permissions','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-09 06:59:14','2019-12-09 06:59:14'),(144,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-09 06:59:18','2019-12-09 06:59:18'),(145,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"products\",\"name\":\"\\u5546\\u54c1\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/products*\",\"_token\":\"ZVek16NXDzMsGgthFHbjAAd4fKVt3lMlovWCOSnh\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/permissions\"}','2019-12-09 07:00:01','2019-12-09 07:00:01'),(146,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-12-09 07:00:01','2019-12-09 07:00:01'),(147,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-09 07:00:16','2019-12-09 07:00:16'),(148,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"coupon_codes\",\"name\":\"\\u4f18\\u60e0\\u5238\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/coupon_codes*\",\"_token\":\"ZVek16NXDzMsGgthFHbjAAd4fKVt3lMlovWCOSnh\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/permissions\"}','2019-12-09 07:00:53','2019-12-09 07:00:53'),(149,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-12-09 07:00:53','2019-12-09 07:00:53'),(150,1,'admin/auth/permissions/create','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-09 07:01:02','2019-12-09 07:01:02'),(151,1,'admin/auth/permissions','POST','127.0.0.1','{\"slug\":\"orders\",\"name\":\"\\u8ba2\\u5355\\u7ba1\\u7406\",\"http_method\":[null],\"http_path\":\"\\/orders*\",\"_token\":\"ZVek16NXDzMsGgthFHbjAAd4fKVt3lMlovWCOSnh\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/permissions\"}','2019-12-09 07:01:26','2019-12-09 07:01:26'),(152,1,'admin/auth/permissions','GET','127.0.0.1','[]','2019-12-09 07:01:27','2019-12-09 07:01:27'),(153,1,'admin/auth/roles','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-09 07:01:46','2019-12-09 07:01:46'),(154,1,'admin/auth/roles/2/edit','GET','127.0.0.1','{\"_pjax\":\"#pjax-container\"}','2019-12-09 07:01:50','2019-12-09 07:01:50'),(155,1,'admin/auth/roles/2','PUT','127.0.0.1','{\"slug\":\"operation\",\"name\":\"\\u8fd0\\u8425\",\"permissions\":[\"2\",\"3\",\"4\",\"6\",\"7\",\"8\",\"9\",null],\"_token\":\"ZVek16NXDzMsGgthFHbjAAd4fKVt3lMlovWCOSnh\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/larashop.test\\/admin\\/auth\\/roles\"}','2019-12-09 07:02:04','2019-12-09 07:02:04'),(156,1,'admin/auth/roles','GET','127.0.0.1','[]','2019-12-09 07:02:04','2019-12-09 07:02:04');
/*!40000 ALTER TABLE `admin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permissions`
--

DROP TABLE IF EXISTS `admin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permissions`
--

LOCK TABLES `admin_permissions` WRITE;
/*!40000 ALTER TABLE `admin_permissions` DISABLE KEYS */;
INSERT INTO `admin_permissions` VALUES (1,'All permission','*','','*',NULL,NULL),(2,'Dashboard','dashboard','GET','/',NULL,NULL),(3,'Login','auth.login','','/auth/login\r\n/auth/logout',NULL,NULL),(4,'User setting','auth.setting','GET,PUT','/auth/setting',NULL,NULL),(5,'Auth management','auth.management','','/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs',NULL,NULL),(6,'用户管理','users','','/users*','2019-11-30 03:25:33','2019-11-30 03:25:33'),(7,'商品管理','products','','/products*','2019-12-09 07:00:01','2019-12-09 07:00:01'),(8,'优惠券管理','coupon_codes','','/coupon_codes*','2019-12-09 07:00:53','2019-12-09 07:00:53'),(9,'订单管理','orders','','/orders*','2019-12-09 07:01:26','2019-12-09 07:01:26');
/*!40000 ALTER TABLE `admin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_menu`
--

DROP TABLE IF EXISTS `admin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_menu`
--

LOCK TABLES `admin_role_menu` WRITE;
/*!40000 ALTER TABLE `admin_role_menu` DISABLE KEYS */;
INSERT INTO `admin_role_menu` VALUES (1,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permissions`
--

DROP TABLE IF EXISTS `admin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permissions`
--

LOCK TABLES `admin_role_permissions` WRITE;
/*!40000 ALTER TABLE `admin_role_permissions` DISABLE KEYS */;
INSERT INTO `admin_role_permissions` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL),(2,3,NULL,NULL),(2,4,NULL,NULL),(2,6,NULL,NULL),(2,7,NULL,NULL),(2,8,NULL,NULL),(2,9,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_users`
--

DROP TABLE IF EXISTS `admin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_users`
--

LOCK TABLES `admin_role_users` WRITE;
/*!40000 ALTER TABLE `admin_role_users` DISABLE KEYS */;
INSERT INTO `admin_role_users` VALUES (1,1,NULL,NULL),(2,2,NULL,NULL);
/*!40000 ALTER TABLE `admin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Administrator','administrator','2019-11-29 09:09:15','2019-11-29 09:09:15'),(2,'运营','operation','2019-11-30 03:27:56','2019-11-30 03:27:56');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_user_permissions`
--

DROP TABLE IF EXISTS `admin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_user_permissions`
--

LOCK TABLES `admin_user_permissions` WRITE;
/*!40000 ALTER TABLE `admin_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin','$2y$10$fjKEzghoSMrXnfiwKkecLel62E1/DFzm.rVjpMEmCNoMCcYPuBIlm','Administrator',NULL,'L36RK2SGdkgZNWmJW3He2pc0Oi9GWbTNOA1zBCm0P1aoQxTzAtWv7S6TRVS7','2019-11-29 09:09:15','2019-11-29 09:09:15'),(2,'operator','$2y$10$JBMevS4yfnFW11HiNpucE.ZGNrvOp1TWDecZK4Xu0AQ.k9EboX6OW','运营',NULL,'kCqR0VBbyffgaYFgweybVT089gpgAi655eIlJz432acB8HkEq2rHWG3LfCG5','2019-11-30 03:29:46','2019-11-30 03:29:46');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cart_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_sku_id` bigint(20) unsigned NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_items_user_id_foreign` (`user_id`),
  KEY `cart_items_product_sku_id_foreign` (`product_sku_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
INSERT INTO `cart_items` VALUES (16,1,11,1),(15,1,9,1);
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupon_codes`
--

DROP TABLE IF EXISTS `coupon_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coupon_codes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `total` int(10) unsigned NOT NULL,
  `used` int(10) unsigned NOT NULL DEFAULT '0',
  `min_amount` decimal(10,2) NOT NULL,
  `not_before` datetime DEFAULT NULL,
  `not_after` datetime DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `coupon_codes_code_unique` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupon_codes`
--

LOCK TABLES `coupon_codes` WRITE;
/*!40000 ALTER TABLE `coupon_codes` DISABLE KEYS */;
INSERT INTO `coupon_codes` VALUES (1,'tenetur ipsum adipisci','YNSIJMISCOJ4BN9K','percent',50.00,1000,0,810.00,NULL,NULL,1,'2019-12-09 03:42:47','2019-12-09 03:42:47'),(2,'rem saepe labore','OSMYGDLTVZBIQD09','percent',14.00,1000,1,0.00,NULL,NULL,1,'2019-12-09 03:42:47','2019-12-09 06:32:18'),(3,'ad et cumque','BTXGLE3O3ZKSYHTY','percent',12.00,1000,0,0.00,NULL,NULL,1,'2019-12-09 03:42:47','2019-12-09 03:42:47'),(4,'in ut vitae','JWLOMXYPRW9V83VC','percent',43.00,1000,0,0.00,NULL,NULL,1,'2019-12-09 03:42:47','2019-12-09 03:42:47'),(5,'earum nesciunt iure','XPAU3X52TUVRUZAE','fixed',9.00,1000,0,9.01,NULL,NULL,1,'2019-12-09 03:42:47','2019-12-09 03:42:47'),(6,'velit corrupti pariatur','LP45AJH8KHI6STUG','fixed',38.00,1000,0,38.01,NULL,NULL,1,'2019-12-09 03:42:47','2019-12-09 03:42:47'),(7,'doloremque aliquid earum','W07BFTLAOASMVECS','fixed',21.00,1000,0,21.01,NULL,NULL,1,'2019-12-09 03:42:47','2019-12-09 03:42:47'),(8,'rerum neque asperiores','99P3TF0SRMZ3FM2P','percent',11.00,1000,0,681.00,NULL,NULL,1,'2019-12-09 03:42:47','2019-12-09 03:42:47'),(9,'vitae voluptatem ex','7QIDAXYFUWIRPP2E','percent',46.00,1000,0,567.00,NULL,NULL,1,'2019-12-09 03:42:47','2019-12-09 03:42:47'),(10,'sed modi excepturi','OPE7XZK4UNIJJPES','percent',32.00,1000,0,429.00,NULL,NULL,1,'2019-12-09 03:42:47','2019-12-09 03:42:47');
/*!40000 ALTER TABLE `coupon_codes` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_11_27_100421_create_orders_table',1),(4,'2019_11_29_152128_create_user_addresses_table',2),(5,'2016_01_04_173148_create_admin_tables',3),(6,'2019_11_30_114059_create_products_table',4),(7,'2019_11_30_114110_create_product_skus_table',4),(8,'2019_11_30_151934_create_user_favorite_products_table',5),(9,'2019_11_30_153542_create_cart_items_table',6),(10,'2019_12_02_163948_create_order_items_table',7),(11,'2019_12_02_172642_create_orders_table',8),(12,'2019_12_09_111627_create_coupon_codes_table',9),(13,'2019_12_09_111737_orders_add_coupon_code_id',10);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `product_sku_id` bigint(20) unsigned NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `rating` int(10) unsigned DEFAULT NULL,
  `review` text COLLATE utf8mb4_unicode_ci,
  `reviewed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_items_order_id_foreign` (`order_id`),
  KEY `order_items_product_id_foreign` (`product_id`),
  KEY `order_items_product_sku_id_foreign` (`product_sku_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,1,4,10,3,6844.00,5,'11112222','2019-12-09 02:02:09'),(2,1,2,4,1,7732.00,5,'8888','2019-12-09 02:02:09'),(3,2,5,13,1,4681.00,NULL,NULL,NULL),(4,3,5,13,1,4681.00,NULL,NULL,NULL),(5,4,5,12,1,1830.00,NULL,NULL,NULL),(6,5,6,15,1,8025.00,NULL,NULL,NULL),(7,6,4,9,1,2127.00,NULL,NULL,NULL),(8,7,2,5,1,2519.00,NULL,NULL,NULL),(9,8,10,29,1,105.00,NULL,NULL,NULL),(10,9,10,28,1,8235.00,NULL,NULL,NULL),(11,10,4,11,1,2083.00,NULL,NULL,NULL),(12,11,4,9,1,2127.00,NULL,NULL,NULL),(13,12,4,9,1,2127.00,NULL,NULL,NULL);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `remark` text COLLATE utf8mb4_unicode_ci,
  `paid_at` datetime DEFAULT NULL,
  `coupon_code_id` bigint(20) unsigned DEFAULT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `refund_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `refund_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `closed` tinyint(1) NOT NULL DEFAULT '0',
  `reviewed` tinyint(1) NOT NULL DEFAULT '0',
  `ship_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `ship_data` text COLLATE utf8mb4_unicode_ci,
  `extra` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `orders_no_unique` (`no`),
  UNIQUE KEY `orders_refund_no_unique` (`refund_no`),
  KEY `orders_user_id_foreign` (`user_id`),
  KEY `orders_coupon_code_id_foreign` (`coupon_code_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'20191202172842470469',1,'{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c670\\u53f7\",\"zip\":533500,\"contact_name\":\"\\u8521\\u5efa\\u5e73\",\"contact_phone\":\"13632152464\"}',28264.00,NULL,NULL,NULL,NULL,NULL,'pending',NULL,0,1,'received','{\"express_company\":\"222\",\"express_no\":\"22222\"}',NULL,'2019-12-02 09:28:42','2019-12-09 02:02:09'),(2,'20191203094513561671',1,'{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c670\\u53f7\",\"zip\":533500,\"contact_name\":\"\\u8521\\u5efa\\u5e73\",\"contact_phone\":\"13632152464\"}',4681.00,NULL,NULL,NULL,NULL,NULL,'pending',NULL,0,0,'received',NULL,NULL,'2019-12-03 01:45:13','2019-12-05 07:18:51'),(3,'20191203105620679505',1,'{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c670\\u53f7\",\"zip\":533500,\"contact_name\":\"\\u8521\\u5efa\\u5e73\",\"contact_phone\":\"13632152464\"}',4681.00,NULL,NULL,NULL,NULL,NULL,'pending',NULL,1,0,'pending',NULL,NULL,'2019-12-03 02:56:20','2019-12-03 02:56:20'),(4,'20191203105638072108',1,'{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c670\\u53f7\",\"zip\":533500,\"contact_name\":\"\\u8521\\u5efa\\u5e73\",\"contact_phone\":\"13632152464\"}',1830.00,NULL,NULL,NULL,NULL,NULL,'pending',NULL,1,0,'pending',NULL,NULL,'2019-12-03 02:56:38','2019-12-03 02:56:39'),(5,'20191203110134527202',1,'{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c670\\u53f7\",\"zip\":533500,\"contact_name\":\"\\u8521\\u5efa\\u5e73\",\"contact_phone\":\"13632152464\"}',8025.00,NULL,NULL,NULL,NULL,NULL,'pending',NULL,1,0,'pending',NULL,NULL,'2019-12-03 03:01:34','2019-12-03 03:01:34'),(6,'20191203112703314982',1,'{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c670\\u53f7\",\"zip\":533500,\"contact_name\":\"\\u8521\\u5efa\\u5e73\",\"contact_phone\":\"13632152464\"}',2127.00,NULL,NULL,NULL,NULL,NULL,'pending',NULL,1,0,'pending',NULL,NULL,'2019-12-03 03:27:03','2019-12-03 03:27:03'),(7,'20191203112719495934',1,'{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c670\\u53f7\",\"zip\":533500,\"contact_name\":\"\\u8521\\u5efa\\u5e73\",\"contact_phone\":\"13632152464\"}',2519.00,NULL,NULL,NULL,NULL,NULL,'pending',NULL,1,0,'pending',NULL,NULL,'2019-12-03 03:27:19','2019-12-03 03:27:19'),(8,'20191203113228154635',1,'{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c670\\u53f7\",\"zip\":533500,\"contact_name\":\"\\u8521\\u5efa\\u5e73\",\"contact_phone\":\"13632152464\"}',105.00,NULL,NULL,NULL,NULL,NULL,'pending',NULL,0,0,'pending',NULL,NULL,'2019-12-03 03:32:28','2019-12-03 03:32:28'),(9,'20191203145709220385',1,'{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c670\\u53f7\",\"zip\":533500,\"contact_name\":\"\\u8521\\u5efa\\u5e73\",\"contact_phone\":\"13632152464\"}',8235.00,NULL,NULL,NULL,NULL,NULL,'pending',NULL,0,0,'pending',NULL,NULL,'2019-12-03 06:57:09','2019-12-03 06:57:09'),(10,'20191204102642610611',1,'{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c670\\u53f7\",\"zip\":533500,\"contact_name\":\"\\u8521\\u5efa\\u5e73\",\"contact_phone\":\"13632152464\"}',2083.00,NULL,NULL,NULL,NULL,NULL,'pending',NULL,0,0,'pending',NULL,NULL,'2019-12-04 02:26:42','2019-12-04 02:26:42'),(11,'20191209143147578141',1,'{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c670\\u53f7\",\"zip\":533500,\"contact_name\":\"\\u8521\\u5efa\\u5e73\",\"contact_phone\":\"13632152464\"}',2127.00,NULL,NULL,NULL,NULL,NULL,'pending',NULL,0,0,'pending',NULL,NULL,'2019-12-09 06:31:47','2019-12-09 06:31:47'),(12,'20191209143218669285',1,'{\"address\":\"\\u5e7f\\u4e1c\\u7701\\u6df1\\u5733\\u5e02\\u798f\\u7530\\u533a\\u7b2c47\\u8857\\u9053\\u7b2c670\\u53f7\",\"zip\":533500,\"contact_name\":\"\\u8521\\u5efa\\u5e73\",\"contact_phone\":\"13632152464\"}',1829.22,NULL,NULL,2,NULL,NULL,'pending',NULL,0,0,'pending',NULL,NULL,'2019-12-09 06:32:18','2019-12-09 06:32:18');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
-- Table structure for table `product_skus`
--

DROP TABLE IF EXISTS `product_skus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_skus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `stock` int(10) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_skus_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_skus`
--

LOCK TABLES `product_skus` WRITE;
/*!40000 ALTER TABLE `product_skus` DISABLE KEYS */;
INSERT INTO `product_skus` VALUES (1,'iphone x','haohuo',11.00,11,1,'2019-11-30 06:46:05','2019-11-30 06:46:05'),(2,'iphone','hhh',10.00,9,1,'2019-11-30 06:46:05','2019-11-30 06:46:05'),(3,'consequuntur','Dignissimos aliquid accusantium sunt amet autem beatae corrupti inventore.',5217.00,36574,2,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(4,'atque','Ut beatae assumenda commodi voluptas nihil fuga atque.',7732.00,39307,2,'2019-11-30 06:53:37','2019-12-02 09:28:42'),(5,'sequi','Consequatur rerum excepturi ipsam ipsam.',2519.00,44094,2,'2019-11-30 06:53:37','2019-12-03 03:27:19'),(6,'incidunt','Perspiciatis consequatur repellat qui est illo dolor.',5072.00,58557,3,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(7,'similique','Iusto sunt voluptatem numquam debitis.',8141.00,3217,3,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(8,'non','Quisquam nihil quibusdam rem similique omnis vero.',965.00,73393,3,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(9,'odio','Quas aliquid est beatae voluptas.',2127.00,15435,4,'2019-11-30 06:53:37','2019-12-09 06:32:18'),(10,'deserunt','Praesentium et sint enim quibusdam quas quisquam.',6844.00,34998,4,'2019-11-30 06:53:37','2019-12-02 09:28:42'),(11,'quas','Quis aliquid neque ea.',2083.00,83134,4,'2019-11-30 06:53:37','2019-12-04 02:26:42'),(12,'iusto','Id ab maiores ipsam rerum quia.',1830.00,35607,5,'2019-11-30 06:53:37','2019-12-03 02:56:39'),(13,'laboriosam','Aut velit ratione necessitatibus consequuntur nam.',4681.00,36704,5,'2019-11-30 06:53:37','2019-12-03 02:56:20'),(14,'optio','Nisi qui et praesentium sit aut quia dolore.',7144.00,41523,5,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(15,'sed','Consequatur quam quis est repellat soluta.',8025.00,26584,6,'2019-11-30 06:53:37','2019-12-03 03:01:34'),(16,'beatae','Sint animi et ut voluptas tempore quas.',9587.00,38418,6,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(17,'saepe','Reprehenderit ut cumque et molestias.',5472.00,32261,6,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(18,'et','Non delectus voluptatem quisquam est aut impedit quasi aut.',5715.00,2993,7,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(19,'tenetur','Et dolorum id pariatur.',8443.00,17917,7,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(20,'cupiditate','Est commodi consectetur eum sapiente nam voluptas ab.',8766.00,51347,7,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(21,'eum','Quia modi reprehenderit aut natus cumque quia voluptatem.',3068.00,66944,8,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(22,'quaerat','Sit sint cum vel eaque.',9722.00,50351,8,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(23,'molestias','Eos necessitatibus inventore reprehenderit labore quas omnis.',3230.00,87978,8,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(24,'quibusdam','Fugit architecto sit aliquam ut deleniti similique qui.',8915.00,42018,9,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(25,'odio','Eaque suscipit asperiores quibusdam illum et ut suscipit similique.',7597.00,21246,9,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(26,'omnis','Dolor recusandae quibusdam consequatur.',3461.00,34352,9,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(27,'deserunt','Itaque laudantium consequatur nobis est rerum sit fugit.',1702.00,77366,10,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(28,'autem','Id aut voluptatem esse et ipsum assumenda temporibus accusantium.',8235.00,56652,10,'2019-11-30 06:53:37','2019-12-03 06:57:09'),(29,'sint','Nam aliquam mollitia voluptatem.',105.00,32524,10,'2019-11-30 06:53:37','2019-12-03 03:32:28'),(30,'facilis','Earum et saepe praesentium est.',1819.00,28250,11,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(31,'modi','Et minus quibusdam voluptas est aliquid rem soluta.',7150.00,86979,11,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(32,'fugit','Corporis odit ducimus aperiam omnis.',2079.00,50673,11,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(33,'provident','Accusantium ut consectetur et odit.',4196.00,75017,12,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(34,'aut','Animi omnis praesentium beatae eos deleniti aperiam.',5732.00,59862,12,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(35,'voluptatum','Vero occaecati veniam ea reprehenderit magnam esse iure.',2.00,96290,12,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(36,'saepe','Qui voluptas eos facere omnis fugiat qui reprehenderit aliquid.',4444.00,85950,13,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(37,'id','Eos odit aliquid rerum unde voluptas voluptatibus maiores.',1745.00,15188,13,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(38,'et','Ut qui dolor non provident consectetur.',3651.00,83433,13,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(39,'ut','Occaecati mollitia sit dolorem sint iure qui et in.',3827.00,18569,14,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(40,'omnis','Nesciunt qui nobis qui similique repudiandae nesciunt sit.',9717.00,74661,14,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(41,'quia','Libero suscipit officia deleniti molestias nemo.',6323.00,42098,14,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(42,'nemo','Consequuntur distinctio impedit consequatur illum est eos.',9020.00,6693,15,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(43,'similique','Id sequi quidem molestiae laudantium et exercitationem.',6183.00,22753,15,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(44,'ad','Quam reprehenderit ut aut.',12.00,42262,15,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(45,'pariatur','Id fugiat eaque harum ad odio.',2684.00,88518,16,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(46,'veritatis','Expedita velit incidunt dolores autem.',6747.00,99088,16,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(47,'ea','Est laborum amet veniam tempore vero.',5743.00,59652,16,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(48,'magnam','Quis ut reprehenderit ut rerum corrupti omnis.',5565.00,31926,17,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(49,'hic','Possimus totam fuga recusandae sunt error repudiandae ut dolor.',6411.00,34277,17,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(50,'explicabo','Aut dolores dolore pariatur expedita.',1067.00,72024,17,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(51,'voluptatem','Quidem sit qui possimus quos aut.',475.00,9143,18,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(52,'est','Eos aut sed consequatur laborum sed voluptatem.',2397.00,83330,18,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(53,'dolor','Et delectus impedit autem incidunt omnis laboriosam.',3864.00,98610,18,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(54,'enim','Cum quis voluptatum ut culpa.',8559.00,53078,19,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(55,'rerum','Consequatur sapiente qui alias nemo possimus molestiae.',2544.00,51447,19,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(56,'dolore','Consequatur aut magni consequatur odit laudantium quae.',6635.00,38421,19,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(57,'sed','Et ipsa eos quibusdam a.',6507.00,34470,20,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(58,'numquam','Distinctio sed repellendus minus quod.',1826.00,38556,20,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(59,'molestiae','Pariatur modi perferendis eum ea voluptatem illo temporibus.',7339.00,33308,20,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(60,'qui','Quam molestiae omnis illum consectetur hic non repellendus.',7736.00,41322,21,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(61,'veritatis','Soluta explicabo et et necessitatibus quisquam fugit aut.',6999.00,69595,21,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(62,'ipsa','Nemo repudiandae dolore quisquam.',1883.00,31052,21,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(63,'saepe','Et perspiciatis nisi ipsum temporibus laborum.',7970.00,29307,22,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(64,'doloribus','Non architecto temporibus quibusdam.',2219.00,72341,22,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(65,'deserunt','Fuga blanditiis est nesciunt tempora.',5250.00,59154,22,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(66,'repellat','Praesentium nihil accusantium et error consectetur et delectus.',4429.00,15108,23,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(67,'expedita','Sit enim qui cumque.',4348.00,38191,23,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(68,'ut','Fugit excepturi vel ab voluptas numquam tenetur.',1260.00,70031,23,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(69,'beatae','Est quisquam consequatur sit est facilis blanditiis enim.',647.00,91239,24,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(70,'nihil','Eos voluptatibus sunt omnis.',9953.00,38746,24,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(71,'est','Tenetur neque quia delectus qui.',8562.00,4081,24,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(72,'culpa','Voluptas consectetur ipsa ea facilis cum vero.',4062.00,51973,25,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(73,'ut','Atque eum veritatis commodi.',2785.00,99853,25,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(74,'amet','Natus alias aliquid cupiditate qui doloribus sunt et qui.',8888.00,83951,25,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(75,'nam','Aspernatur et ea in voluptas ratione blanditiis eum molestiae.',9315.00,16515,26,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(76,'ea','Commodi recusandae autem atque nihil possimus ex et.',5555.00,16024,26,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(77,'dolore','Laborum earum eos voluptatem quod voluptas.',1087.00,84554,26,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(78,'amet','Rem enim autem et sit illum et est.',6251.00,11600,27,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(79,'aliquid','Qui molestiae dolores molestiae et inventore nam repellat.',1923.00,41786,27,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(80,'sed','Aperiam eos doloremque blanditiis quo aspernatur qui.',5656.00,7710,27,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(81,'et','Ratione iure voluptas autem incidunt.',2510.00,32855,28,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(82,'maiores','Ratione laudantium esse maiores enim laborum.',3246.00,30885,28,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(83,'quas','Commodi molestias id sapiente ab rem.',6822.00,36411,28,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(84,'molestiae','Commodi earum accusamus laboriosam assumenda omnis iste voluptatem.',4885.00,20125,29,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(85,'quia','Cumque culpa et quis natus nulla est.',8457.00,17202,29,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(86,'ad','Quia asperiores rerum eligendi et.',4399.00,65377,29,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(87,'amet','Et eum harum sit vel consequuntur quaerat neque.',8871.00,10055,30,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(88,'eius','Voluptatem optio ut non architecto occaecati sint.',2124.00,83985,30,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(89,'quos','Temporibus expedita non doloribus ea repudiandae enim provident.',2616.00,96324,30,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(90,'nihil','Molestias quia assumenda vitae et veniam porro.',3797.00,63385,31,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(91,'odio','Et quasi placeat iste qui sunt eum.',2580.00,40677,31,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(92,'delectus','Praesentium vel ducimus illum.',5112.00,26444,31,'2019-11-30 06:53:37','2019-11-30 06:53:37');
/*!40000 ALTER TABLE `product_skus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `on_sale` tinyint(1) NOT NULL DEFAULT '1',
  `rating` double(8,2) NOT NULL DEFAULT '5.00',
  `sold_count` int(10) unsigned NOT NULL DEFAULT '0',
  `review_count` int(10) unsigned NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'xss防御测试123','<p>eee&nbsp;</p>','images/4y0yFaXNDN.jpeg',0,5.00,0,0,10.00,'2019-11-30 06:27:40','2019-11-30 07:18:47'),(2,'reprehenderit','Rem sint aut sint dolor incidunt id occaecati tempora.','https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg',1,5.00,0,1,2519.00,'2019-11-30 06:53:37','2019-12-09 02:02:09'),(3,'explicabo','<p>Incidunt ducimus earum facilis rem voluptas.</p>','https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg',0,2.00,0,0,965.00,'2019-11-30 06:53:37','2019-12-02 08:29:40'),(4,'pariatur','Et eos ut blanditiis sunt repellat.','https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg',1,5.00,0,1,2083.00,'2019-11-30 06:53:37','2019-12-09 02:02:09'),(5,'mollitia','Voluptas expedita distinctio repudiandae veritatis.','https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg',1,1.00,0,0,1830.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(6,'possimus','Numquam sint doloremque quidem mollitia nostrum suscipit id.','https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg',1,2.00,0,0,5472.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(7,'qui','Aut fugit ut et sit voluptatum voluptas.','https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg',1,0.00,0,0,5715.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(8,'dignissimos','Omnis nulla quis ut ducimus vel voluptatibus ut vel.','https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg',1,3.00,0,0,3068.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(9,'autem','Nostrum molestiae dicta sint exercitationem.','https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,2.00,0,0,3461.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(10,'nam','Praesentium eos minus earum.','https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg',1,3.00,0,0,105.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(11,'aut','Quia qui facere accusantium sit.','https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,2.00,0,0,1819.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(12,'ullam','Quos iure itaque fugit et temporibus.','https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg',1,1.00,0,0,2.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(13,'aut','Et numquam placeat maxime inventore quos magnam blanditiis.','https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg',1,3.00,0,0,1745.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(14,'quae','Quia odio saepe autem animi illo.','https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg',1,5.00,0,0,3827.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(15,'et','Ullam est corporis voluptas et molestiae fugit.','https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg',1,4.00,0,0,12.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(16,'magnam','Odit et debitis quia maxime.','https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg',1,2.00,0,0,2684.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(17,'aut','Ab possimus tenetur dolores natus quibusdam omnis.','https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg',1,1.00,0,0,1067.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(18,'molestias','Voluptas enim eos et voluptates.','https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,4.00,0,0,475.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(19,'repellendus','Maxime beatae odio velit.','https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,2.00,0,0,2544.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(20,'quaerat','Facere illo totam quibusdam voluptas asperiores aliquam.','https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg',1,2.00,0,0,1826.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(21,'veritatis','Quisquam quia sed accusantium velit.','https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg',1,4.00,0,0,1883.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(22,'eligendi','Enim pariatur tenetur voluptate deleniti.','https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,5.00,0,0,2219.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(23,'et','Nihil esse accusamus ab nam.','https://cdn.learnku.com/uploads/images/201806/01/5320/C0bVuKB2nt.jpg',1,5.00,0,0,1260.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(24,'neque','Et quia in aut omnis omnis.','https://cdn.learnku.com/uploads/images/201806/01/5320/r3BNRe4zXG.jpg',1,0.00,0,0,647.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(25,'dolore','Optio necessitatibus maxime natus illum ipsam.','https://cdn.learnku.com/uploads/images/201806/01/5320/1B3n0ATKrn.jpg',1,0.00,0,0,2785.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(26,'ullam','Quasi reiciendis ut error minima.','https://cdn.learnku.com/uploads/images/201806/01/5320/7kG1HekGK6.jpg',1,5.00,0,0,1087.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(27,'sit','Necessitatibus eaque quibusdam placeat quia.','https://cdn.learnku.com/uploads/images/201806/01/5320/82Wf2sg8gM.jpg',1,2.00,0,0,1923.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(28,'accusamus','Voluptas doloribus sint omnis est labore odio cum.','https://cdn.learnku.com/uploads/images/201806/01/5320/XrtIwzrxj7.jpg',1,4.00,0,0,2510.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(29,'voluptatibus','Nihil aperiam enim repudiandae quo aut.','https://cdn.learnku.com/uploads/images/201806/01/5320/pa7DrV43Mw.jpg',1,1.00,0,0,4399.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(30,'debitis','At culpa ut nostrum provident necessitatibus qui saepe.','https://cdn.learnku.com/uploads/images/201806/01/5320/2JMRaFwRpo.jpg',1,3.00,0,0,2124.00,'2019-11-30 06:53:37','2019-11-30 06:53:37'),(31,'rem','Quidem quae non et sequi velit reiciendis enim.','https://cdn.learnku.com/uploads/images/201806/01/5320/nIvBAQO5Pj.jpg',1,1.00,0,0,2580.00,'2019-11-30 06:53:37','2019-11-30 06:53:37');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_addresses`
--

DROP TABLE IF EXISTS `user_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_addresses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` int(10) unsigned NOT NULL,
  `contact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_used_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_addresses_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_addresses`
--

LOCK TABLES `user_addresses` WRITE;
/*!40000 ALTER TABLE `user_addresses` DISABLE KEYS */;
INSERT INTO `user_addresses` VALUES (1,1,'广东省','深圳市','福田区','第47街道第670号',533500,'蔡建平','13632152464','2019-12-09 14:32:18','2019-11-29 07:29:21','2019-12-09 06:32:18'),(2,1,'江苏省','南京市','浦口区','第63街道第991号',102300,'汤红霞','18350343571',NULL,'2019-11-29 07:29:21','2019-11-29 07:29:21');
/*!40000 ALTER TABLE `user_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_favorite_products`
--

DROP TABLE IF EXISTS `user_favorite_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_favorite_products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_favorite_products_user_id_foreign` (`user_id`),
  KEY `user_favorite_products_product_id_foreign` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_favorite_products`
--

LOCK TABLES `user_favorite_products` WRITE;
/*!40000 ALTER TABLE `user_favorite_products` DISABLE KEYS */;
INSERT INTO `user_favorite_products` VALUES (2,1,2,'2019-11-30 07:31:40','2019-11-30 07:31:40');
/*!40000 ALTER TABLE `user_favorite_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'fwblcz','1964855183@qq.com','2019-11-29 06:58:25','$2y$10$nt7nWW1A1T/Td/GY/9gVVOnb7tOdr46hiYEzhjIA4Dvyhlf0tntzC',NULL,'2019-11-28 06:55:50','2019-11-29 06:58:25'),(2,'fwblcz1','19648551832@qq.com','2019-11-29 07:11:06','$2y$10$RJCmf/o44M8URLTjmiVV0eJLlwFwst1JdzqAJesJPQ3TnF8uoTGtu',NULL,'2019-11-29 06:50:15','2019-11-29 07:11:06'),(3,'fwblcz5','19648551834@qq.com','2019-11-29 07:12:49','$2y$10$Ev2Q5poNm2n1GyZP9uqxS.VOD4gk9uLUqEPa88L4FWlPcZ4uR9oyi','E1g2CnMcMFWdc7t6LFta8jPaWHCs6Oi1j5rTfbyz9Iw329WKXiOYiBWUtd0G','2019-11-29 07:12:30','2019-11-29 07:18:07');
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

-- Dump completed on 2019-12-09 15:19:19
