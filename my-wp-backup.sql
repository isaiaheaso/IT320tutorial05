-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: wordpress
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (2,23,'student','admin@ietutorial5ca-ieaso785287.codeanyapp.com','','73.74.159.155','2019-12-27 21:38:27','2019-12-27 21:38:27','I like this Red Squirrel picture. Where was it taken?',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:71.0) Gecko/20100101 Firefox/71.0','',0,1),(3,21,'student','admin@ietutorial5ca-ieaso785287.codeanyapp.com','','73.74.159.155','2019-12-27 21:39:20','2019-12-27 21:39:20','The bunny photo is nice, but the dragonfly image is blurry. Can you fix that?',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:71.0) Gecko/20100101 Firefox/71.0','',0,1),(4,21,'student','admin@ietutorial5ca-ieaso785287.codeanyapp.com','','73.74.159.155','2019-12-27 21:39:31','2019-12-27 21:39:31','Thanks I can try.',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:71.0) Gecko/20100101 Firefox/71.0','',0,1),(5,19,'student','admin@ietutorial5ca-ieaso785287.codeanyapp.com','','73.74.159.155','2019-12-27 21:40:03','2019-12-27 21:40:03','Nice squirrel photos.',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:71.0) Gecko/20100101 Firefox/71.0','',0,1),(6,23,'Bill','bv@x.com','','73.74.159.155','2019-12-27 21:41:33','2019-12-27 21:41:33','So where was this red squirrel photo taken?',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','',0,0),(7,23,'Michael Chase','mchase2@cdm.depaul.edu','','73.74.159.155','2019-12-27 21:41:56','2019-12-27 21:41:56','I took it in Maine in 2018.',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','',0,0),(8,10,'','','','73.74.159.155','2019-12-27 21:43:15','2019-12-27 21:43:15','The red squirrel is my fave photo. Do you have any more squirrel photos to share?',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','',0,0),(9,13,'','','','73.74.159.155','2019-12-27 21:43:30','2019-12-27 21:43:30','Nice bunny image.',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','',0,0),(10,16,'','','','73.74.159.155','2019-12-27 21:43:54','2019-12-27 21:43:54','Are those white pelicans? Where was this taken?',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','',0,0),(11,16,'','','','73.74.159.155','2019-12-27 21:44:19','2019-12-27 21:44:19','Is that a Rose Crested Grosbeak?',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','',0,0),(12,10,'','','','73.74.159.155','2019-12-27 21:44:39','2019-12-27 21:44:39','Where do I go to see red squirrels?',0,'1','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.88 Safari/537.36','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=829 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','https://ietutorial5ca-ieaso785287.codeanyapp.com','yes'),(2,'home','https://ietutorial5ca-ieaso785287.codeanyapp.com','yes'),(3,'blogname','Squirrel WP Site','yes'),(4,'blogdescription','Squirrels on WP CMS','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','admin@ietutorial5ca-ieaso785287.codeanyapp.com','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','closed','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','1','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/%year%/%monthnum%/%day%/%postname%/','yes'),(29,'rewrite_rules','a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','','no'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','45805','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','3','yes'),(92,'show_comments_cookies_opt_in','1','yes'),(93,'admin_email_lifespan','0','yes'),(94,'initial_db_version','45805','yes'),(95,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(96,'fresh_site','0','yes'),(97,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(101,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(102,'sidebars_widgets','a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes'),(103,'cron','a:5:{i:1581321083;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1581357081;a:4:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581357728;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1581359223;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(104,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(112,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'recovery_keys','a:0:{}','yes'),(114,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:6:\"mobile\";i:2;}}','yes'),(126,'siteground_optimizer_default_enable_cache','0','no'),(127,'siteground_optimizer_default_autoflush_cache','0','no'),(128,'siteground_optimizer_supercacher_permissions','1','no'),(129,'sg_cachepress','a:3:{s:12:\"enable_cache\";i:0;s:15:\"autoflush_cache\";i:1;s:16:\"enable_memcached\";i:0;}','yes'),(130,'siteground_optimizer_enable_cache','1','yes'),(131,'siteground_optimizer_autoflush_cache','1','yes'),(132,'siteground_optimizer_enable_memcached','0','yes'),(133,'siteground_optimizer_show_notice','0','yes'),(134,'siteground_optimizer_is_nginx','0','yes'),(135,'siteground_optimizer_checked_nginx','0','yes'),(136,'siteground_optimizer_first_run','0','yes'),(137,'siteground_optimizer_last_fail','0','yes'),(138,'siteground_optimizer_ssl_enabled','0','yes'),(139,'siteground_optimizer_optimize_html','0','yes'),(140,'siteground_optimizer_optimize_javascript','0','yes'),(141,'siteground_optimizer_optimize_javascript_async','0','yes'),(142,'siteground_optimizer_optimize_css','0','yes'),(143,'siteground_optimizer_combine_css','0','yes'),(144,'siteground_optimizer_remove_query_strings','0','yes'),(145,'siteground_optimizer_disable_emojis','0','yes'),(146,'siteground_optimizer_optimize_images','0','yes'),(148,'siteground_optimizer_version','5.3.10','yes'),(149,'siteground_optimizer_update_timestamp','1577037090','yes'),(150,'siteground_optimizer_phpcompat_status','1','yes'),(151,'siteground_optimizer_phpcompat_progress','0','yes'),(152,'siteground_optimizer_phpcompat_is_compatible','0','yes'),(153,'siteground_optimizer_phpcompat_result','a:0:{}','yes'),(154,'siteground_optimizer_image_optimization_completed','1','no'),(155,'siteground_optimizer_enable_gzip_compression','1','yes'),(156,'siteground_optimizer_enable_browser_caching','1','yes'),(157,'siteground_optimizer_lazyload_mobile','1','yes'),(158,'siteground_optimizer_async_javascript_exclude','a:2:{i:0;s:11:\"jquery-core\";i:1;s:14:\"jquery-migrate\";}','yes'),(294,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:1:{i:0;i:2;}}','yes'),(619,'recently_activated','a:2:{s:33:\"classic-editor/classic-editor.php\";i:1577482597;s:31:\"sg-cachepress/sg-cachepress.php\";i:1577298016;}','yes'),(665,'ai1wm_updater','a:0:{}','yes'),(669,'jetpack_active_modules','a:0:{}','yes'),(688,'siteground_optimizer_memcache_notice','1','yes'),(735,'WPLANG','','yes'),(736,'new_admin_email','admin@ietutorial5ca-ieaso785287.codeanyapp.com','yes'),(758,'category_children','a:0:{}','yes'),(802,'active_plugins','a:1:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";}','yes'),(803,'ai1wm_secret_key','4nqDy43isiNs','yes'),(804,'ai1wm_backups_labels','a:0:{}','yes'),(805,'ai1wm_sites_links','a:0:{}','yes'),(806,'nonce_key','IUt<}u#j5O#r]!r:Qr_%G>[X/=T:X?Y_,wi*HyTXICut=R7=,M~KO]Fyia_N;o#=','no'),(807,'nonce_salt','F}l`J-^i%1tU`EL2g[i]vcS38SR$QU_3/^n&|pcUO==O.TmCC)HRy]M#o8ho3k->','no'),(811,'_site_transient_update_plugins','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1581318020;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.16\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.16.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2202552\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2202552\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=2202552\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=2202552\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}s:21:\"hello-dolly/hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:21:\"hello-dolly/hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(812,'_site_transient_timeout_theme_roots','1581319623','no'),(813,'_site_transient_theme_roots','a:7:{s:5:\"camer\";s:7:\"/themes\";s:6:\"sporty\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}','no'),(814,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1581318020;s:7:\"checked\";a:7:{s:5:\"camer\";s:5:\"1.0.5\";s:6:\"sporty\";s:5:\"1.8.8\";s:13:\"twentyfifteen\";s:3:\"2.5\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";s:12:\"twentytwenty\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),(815,'ai1wm_status','a:3:{s:4:\"type\";s:4:\"done\";s:5:\"title\";s:41:\"Your site has been imported successfully!\";s:7:\"message\";s:419:\"Â» <a class=\"ai1wm-no-underline\" href=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-admin/options-permalink.php#submit\" target=\"_blank\">Save permalinks structure</a>.</strong> (opens a new window)<br />Â» <a class=\"ai1wm-no-underline\" href=\"https://wordpress.org/support/view/plugin-reviews/all-in-one-wp-migration?rate=5#postform\" target=\"_blank\">Optionally, review the plugin</a>.</strong> (opens a new window)\";}','yes'),(816,'template','twentytwenty','yes'),(817,'stylesheet','twentytwenty','yes'),(818,'db_upgraded','','yes'),(819,'secure_auth_key','w-7*r:r_H1.}+*x8>1[6>ea*-<>dUiP+eC^n|gCSgd-J^Pyjx10`d<8[gX*x7^A>','no'),(820,'secure_auth_salt','L4YVy)[/>}+X8du~s|jGemvM0#3gWPfN0*Mott1ma<[)H$]I]|f`d=r}^x3Yg7ZM','no'),(821,'logged_in_key','+{>DqP];B7Or3~lJb_&$Lr{Q._Ei5L^WBJ7:2P4hg~S/55lAr@>qM>e2B*!&9*<b','no'),(822,'logged_in_salt','q[]OSaH>@VhNnx}0ds1)q5hdGy)`(O19S^wEYb_G}9!6WWMwuFr*G`R^C_e9CA#:','no'),(827,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1581318020;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}','no'),(828,'can_compress_scripts','0','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(5,6,'_wp_attached_file','2019/12/BlackSquirrel001.png'),(6,6,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:623;s:6:\"height\";i:520;s:4:\"file\";s:28:\"2019/12/BlackSquirrel001.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"BlackSquirrel001-300x250.png\";s:5:\"width\";i:300;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"BlackSquirrel001-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(9,8,'_wp_attached_file','2019/12/GraySquirrel001.png'),(10,8,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:511;s:6:\"height\";i:404;s:4:\"file\";s:27:\"2019/12/GraySquirrel001.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"GraySquirrel001-300x237.png\";s:5:\"width\";i:300;s:6:\"height\";i:237;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"GraySquirrel001-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(11,9,'_wp_attached_file','2019/12/RedSquirrel001.png'),(12,9,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:792;s:6:\"height\";i:614;s:4:\"file\";s:26:\"2019/12/RedSquirrel001.png\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"RedSquirrel001-300x233.png\";s:5:\"width\";i:300;s:6:\"height\";i:233;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"RedSquirrel001-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"RedSquirrel001-768x595.png\";s:5:\"width\";i:768;s:6:\"height\";i:595;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(13,10,'_edit_lock','1577482471:1'),(14,9,'_wp_attachment_image_alt','red squirrel.'),(15,11,'_menu_item_type','post_type'),(16,11,'_menu_item_menu_item_parent','0'),(17,11,'_menu_item_object_id','10'),(18,11,'_menu_item_object','page'),(19,11,'_menu_item_target',''),(20,11,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(21,11,'_menu_item_xfn',''),(22,11,'_menu_item_url',''),(23,13,'_edit_lock','1577482482:1'),(24,6,'_wp_attachment_image_alt','black squirrel.'),(25,14,'_menu_item_type','post_type'),(26,14,'_menu_item_menu_item_parent','0'),(27,14,'_menu_item_object_id','13'),(28,14,'_menu_item_object','page'),(29,14,'_menu_item_target',''),(30,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(31,14,'_menu_item_xfn',''),(32,14,'_menu_item_url',''),(33,16,'_edit_lock','1577482492:1'),(35,17,'_menu_item_type','post_type'),(36,17,'_menu_item_menu_item_parent','0'),(37,17,'_menu_item_object_id','16'),(38,17,'_menu_item_object','page'),(39,17,'_menu_item_target',''),(40,17,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),(41,17,'_menu_item_xfn',''),(42,17,'_menu_item_url',''),(43,19,'_edit_lock','1577482648:1'),(46,21,'_edit_lock','1577482516:1'),(47,8,'_wp_attachment_image_alt','gray squirrel.'),(50,23,'_edit_lock','1577482795:1'),(62,30,'_wp_attached_file','2019/12/Bunny-Rabbit-02.png'),(63,30,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:182;s:6:\"height\";i:150;s:4:\"file\";s:27:\"2019/12/Bunny-Rabbit-02.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"Bunny-Rabbit-02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(64,31,'_wp_attached_file','2019/12/Dragonfly001.png'),(65,31,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:112;s:6:\"height\";i:100;s:4:\"file\";s:24:\"2019/12/Dragonfly001.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(66,32,'_wp_attached_file','2019/12/GrossBeak001.png'),(67,32,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:227;s:6:\"height\";i:150;s:4:\"file\";s:24:\"2019/12/GrossBeak001.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"GrossBeak001-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(68,33,'_wp_attached_file','2019/12/WhitePellicans001.png'),(69,33,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:227;s:6:\"height\";i:150;s:4:\"file\";s:29:\"2019/12/WhitePellicans001.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"WhitePellicans001-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),(70,30,'_wp_attachment_image_alt','a bunny.'),(71,32,'_wp_attachment_image_alt','a grossbeak.'),(72,33,'_wp_attachment_image_alt','white pelican.'),(84,31,'_wp_attachment_image_alt','a dragonfly.');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (6,1,'2019-12-22 18:02:40','2019-12-22 18:02:40','','BlackSquirrel001','','inherit','closed','closed','','blacksquirrel001','','','2019-12-22 18:07:19','2019-12-22 18:07:19','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png',0,'attachment','image/png',0),(8,1,'2019-12-22 18:02:42','2019-12-22 18:02:42','','GraySquirrel001','','inherit','closed','closed','','graysquirrel001','','','2019-12-22 18:18:54','2019-12-22 18:18:54','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/GraySquirrel001.png',0,'attachment','image/png',0),(9,1,'2019-12-22 18:02:44','2019-12-22 18:02:44','','RedSquirrel001','','inherit','closed','closed','','redsquirrel001','','','2019-12-22 18:06:44','2019-12-22 18:06:44','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png',0,'attachment','image/png',0),(10,1,'2019-12-22 18:06:54','2019-12-22 18:06:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel. \" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png\" alt=\"black squirrel.\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->','Squirrel Page 1','','publish','open','closed','','page-test-1','','','2019-12-27 21:36:53','2019-12-27 21:36:53','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/?page_id=10',0,'page','',2),(11,1,'2019-12-22 18:06:54','2019-12-22 18:06:54',' ','','','publish','closed','closed','','11','','','2019-12-22 18:06:54','2019-12-22 18:06:54','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/22/11/',0,'nav_menu_item','',0),(12,1,'2019-12-22 18:06:54','2019-12-22 18:06:54','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel. \" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->','Page Test 1','','inherit','closed','closed','','10-revision-v1','','','2019-12-22 18:06:54','2019-12-22 18:06:54','',10,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/22/10-revision-v1/',0,'revision','',0),(13,1,'2019-12-22 18:07:22','2019-12-22 18:07:22','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":30,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/Bunny-Rabbit-02.png\" alt=\"a bunny. \" class=\"wp-image-30\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->','Bunny Page','','publish','open','closed','','page-test-2','','','2019-12-27 21:37:05','2019-12-27 21:37:05','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/?page_id=13',0,'page','',1),(14,1,'2019-12-22 18:07:22','2019-12-22 18:07:22',' ','','','publish','closed','closed','','14','','','2019-12-22 18:07:22','2019-12-22 18:07:22','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/22/14/',2,'nav_menu_item','',0),(15,1,'2019-12-22 18:07:22','2019-12-22 18:07:22','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png\" alt=\"black squirrel. \" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->','Page Test 2','','inherit','closed','closed','','13-revision-v1','','','2019-12-22 18:07:22','2019-12-22 18:07:22','',13,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/22/13-revision-v1/',0,'revision','',0),(16,1,'2019-12-22 18:07:59','2019-12-22 18:07:59','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":32,\"width\":561,\"height\":371,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/GrossBeak001.png\" alt=\"a grossbeak. \" class=\"wp-image-32\" width=\"561\" height=\"371\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":33,\"width\":549,\"height\":363,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/WhitePellicans001.png\" alt=\"white pelican. \" class=\"wp-image-33\" width=\"549\" height=\"363\"/></figure>\n<!-- /wp:image -->','Bird Page','','publish','open','closed','','page-test-3','','','2019-12-27 21:37:14','2019-12-27 21:37:14','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/?page_id=16',0,'page','',2),(17,1,'2019-12-22 18:07:59','2019-12-22 18:07:59',' ','','','publish','closed','closed','','17','','','2019-12-22 18:07:59','2019-12-22 18:07:59','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/22/17/',3,'nav_menu_item','',0),(18,1,'2019-12-22 18:07:59','2019-12-22 18:07:59','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":7,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/FoxSquirrel001.png\" alt=\"fox squirrel. \" class=\"wp-image-7\"/></figure>\n<!-- /wp:image -->','Page Test 3','','inherit','closed','closed','','16-revision-v1','','','2019-12-22 18:07:59','2019-12-22 18:07:59','',16,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/22/16-revision-v1/',0,'revision','',0),(19,1,'2019-12-22 18:08:57','2019-12-22 18:08:57','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png\" alt=\"black squirrel.\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/GraySquirrel001.png\" alt=\"gray squirrel.\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel.\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->','Squirrel Post','','publish','open','open','','post-test-1','','','2019-12-27 21:37:25','2019-12-27 21:37:25','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/?p=19',0,'post','',1),(20,1,'2019-12-22 18:08:57','2019-12-22 18:08:57','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png\" alt=\"black squirrel.\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->','Post Test 1','','inherit','closed','closed','','19-revision-v1','','','2019-12-22 18:08:57','2019-12-22 18:08:57','',19,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/22/19-revision-v1/',0,'revision','',0),(21,1,'2019-12-22 18:09:41','2019-12-22 18:09:41','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":30,\"width\":524,\"height\":432,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/Bunny-Rabbit-02.png\" alt=\"a bunny.\" class=\"wp-image-30\" width=\"524\" height=\"432\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcini.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":31,\"width\":537,\"height\":479,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/Dragonfly001.png\" alt=\"a dragonfly. \" class=\"wp-image-31\" width=\"537\" height=\"479\"/></figure>\n<!-- /wp:image -->','Bunny Post','','publish','open','open','','post-test-2','','','2019-12-27 21:37:37','2019-12-27 21:37:37','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/?p=21',0,'post','',2),(22,1,'2019-12-22 18:09:41','2019-12-22 18:09:41','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/GraySquirrel001.png\" alt=\"gray squirrel\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->','Post Test 2','','inherit','closed','closed','','21-revision-v1','','','2019-12-22 18:09:41','2019-12-22 18:09:41','',21,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/22/21-revision-v1/',0,'revision','',0),(23,1,'2019-12-22 18:10:19','2019-12-22 18:10:19','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel.\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcini.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->','Red Squirrel Post','','publish','open','open','','post-test-3','','','2019-12-27 21:37:49','2019-12-27 21:37:49','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/?p=23',0,'post','',3),(24,1,'2019-12-22 18:10:19','2019-12-22 18:10:19','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel.\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->','Post Test 3','','inherit','closed','closed','','23-revision-v1','','','2019-12-22 18:10:19','2019-12-22 18:10:19','',23,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/22/23-revision-v1/',0,'revision','',0),(30,1,'2019-12-27 14:46:36','2019-12-27 14:46:36','','Bunny-Rabbit-02','','inherit','closed','closed','','bunny-rabbit-02','','','2019-12-27 14:48:23','2019-12-27 14:48:23','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/Bunny-Rabbit-02.png',0,'attachment','image/png',0),(31,1,'2019-12-27 14:46:43','2019-12-27 14:46:43','','Dragonfly001','','inherit','closed','closed','','dragonfly001','','','2019-12-27 14:53:06','2019-12-27 14:53:06','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/Dragonfly001.png',0,'attachment','image/png',0),(32,1,'2019-12-27 14:46:47','2019-12-27 14:46:47','','GrossBeak001','','inherit','closed','closed','','grossbeak001','','','2019-12-27 14:49:08','2019-12-27 14:49:08','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/GrossBeak001.png',0,'attachment','image/png',0),(33,1,'2019-12-27 14:46:50','2019-12-27 14:46:50','','WhitePellicans001','','inherit','closed','closed','','whitepellicans001','','','2019-12-27 14:49:41','2019-12-27 14:49:41','',0,'https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/WhitePellicans001.png',0,'attachment','image/png',0),(34,1,'2019-12-27 14:47:44','2019-12-27 14:47:44','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel. \" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png\" alt=\"black squirrel.\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->','Squirrel Page 1','','inherit','closed','closed','','10-revision-v1','','','2019-12-27 14:47:44','2019-12-27 14:47:44','',10,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/27/10-revision-v1/',0,'revision','',0),(35,1,'2019-12-27 14:48:33','2019-12-27 14:48:33','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":30,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/Bunny-Rabbit-02.png\" alt=\"a bunny. \" class=\"wp-image-30\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->','Bunny Page','','inherit','closed','closed','','13-revision-v1','','','2019-12-27 14:48:33','2019-12-27 14:48:33','',13,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/27/13-revision-v1/',0,'revision','',0),(36,1,'2019-12-27 14:49:53','2019-12-27 14:49:53','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":32,\"width\":561,\"height\":371,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/GrossBeak001.png\" alt=\"a grossbeak. \" class=\"wp-image-32\" width=\"561\" height=\"371\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcin</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":33,\"width\":549,\"height\":363,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/WhitePellicans001.png\" alt=\"white pelican. \" class=\"wp-image-33\" width=\"549\" height=\"363\"/></figure>\n<!-- /wp:image -->','Bird Page','','inherit','closed','closed','','16-revision-v1','','','2019-12-27 14:49:53','2019-12-27 14:49:53','',16,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/27/16-revision-v1/',0,'revision','',0),(37,1,'2019-12-27 14:51:10','2019-12-27 14:51:10','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png\" alt=\"black squirrel.\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/GraySquirrel001.png\" alt=\"gray squirrel.\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel.\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->','Squirrel Post','','inherit','closed','closed','','19-revision-v1','','','2019-12-27 14:51:10','2019-12-27 14:51:10','',19,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/27/19-revision-v1/',0,'revision','',0),(38,1,'2019-12-27 14:52:42','2019-12-27 14:52:42','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":30,\"width\":524,\"height\":432,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/Bunny-Rabbit-02.png\" alt=\"a bunny.\" class=\"wp-image-30\" width=\"524\" height=\"432\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcini.</p>\n<!-- /wp:paragraph -->','Bunny Post','','inherit','closed','closed','','21-revision-v1','','','2019-12-27 14:52:42','2019-12-27 14:52:42','',21,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/27/21-revision-v1/',0,'revision','',0),(39,1,'2019-12-27 14:53:15','2019-12-27 14:53:15','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":30,\"width\":524,\"height\":432,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/Bunny-Rabbit-02.png\" alt=\"a bunny.\" class=\"wp-image-30\" width=\"524\" height=\"432\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcini.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":31,\"width\":537,\"height\":479,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/Dragonfly001.png\" alt=\"a dragonfly. \" class=\"wp-image-31\" width=\"537\" height=\"479\"/></figure>\n<!-- /wp:image -->','Bunny Post','','inherit','closed','closed','','21-revision-v1','','','2019-12-27 14:53:15','2019-12-27 14:53:15','',21,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/27/21-revision-v1/',0,'revision','',0),(40,1,'2019-12-27 14:54:23','2019-12-27 14:54:23','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel.\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Cheese on toast pepper jack caerphilly. Who moved my cheese cheese slices swiss who moved my cheese cottage cheese mozzarella mozzarella boursin. Stinking bishop dolcelatte cheese on toast parmesan caerphilly cheesecake mascarpone cheese triangles. Cauliflower cheese roquefort cheesy feet cow dolcelatte smelly cheese bocconcini.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->','Red Squirrel Post','','inherit','closed','closed','','23-revision-v1','','','2019-12-27 14:54:23','2019-12-27 14:54:23','',23,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/27/23-revision-v1/',0,'revision','',0),(41,1,'2019-12-27 14:54:47','2019-12-27 14:54:47','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor amet vinyl cronut readymade, cardigan pabst subway tile chartreuse woke YOLO lyft tattooed. Green juice sriracha neutra, roof party glossier cornhole lo-fi fanny pack hexagon tumblr. Waistcoat retro kogi, pabst normcore readymade taxidermy. Vaporware bicycle rights succulents echo park helvetica vice, portland meh umami try-hard. Keytar food truck poke tumblr, coloring book snackwave blog ethical tumeric hashtag shabby chic. Keffiyeh ethical distillery marfa raclette.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":6,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/BlackSquirrel001.png\" alt=\"black squirrel.\" class=\"wp-image-6\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:more -->\n<!--more-->\n<!-- /wp:more -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":8,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/GraySquirrel001.png\" alt=\"gray squirrel.\" class=\"wp-image-8\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p>Queso edam cheese and biscuits. Monterey jack emmental cheese triangles camembert de normandie mozzarella airedale cheese strings cheesy feet. The big cheese who moved my cheese cheddar chalk and cheese pepper jack st. agur blue cheese stinking bishop croque monsieur. Babybel cheese and wine cheesy feet lancashire cauliflower cheese cheese strings cheese and wine cheesy feet. Mascarpone cheddar red leicester.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:image {\"id\":9,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://ietutorial5ca-ieaso785287.codeanyapp.com/wp-content/uploads/2019/12/RedSquirrel001.png\" alt=\"red squirrel.\" class=\"wp-image-9\"/></figure>\n<!-- /wp:image -->','Squirrel Post','','inherit','closed','closed','','19-revision-v1','','','2019-12-27 14:54:47','2019-12-27 14:54:47','',19,'https://ietutorial5ca-ieaso785287.codeanyapp.com/2019/12/27/19-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (11,2,0),(14,2,0),(17,2,0),(19,4,0),(19,5,0),(21,6,0),(21,9,0),(21,10,0),(23,4,0),(23,8,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0),(2,2,'nav_menu','',0,3),(3,3,'nav_menu','',0,0),(4,4,'category','',0,2),(5,5,'post_tag','',0,1),(6,6,'post_tag','',0,1),(7,7,'post_tag','',0,0),(8,8,'post_tag','',0,1),(9,9,'category','',0,1),(10,10,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0),(2,'My Meni','my-meni',0),(3,'My Menu','my-menu',0),(4,'Squirrel','squirrel',0),(5,'Black','black',0),(6,'Gray','gray',0),(7,'Fox','fox',0),(8,'Red','red',0),(9,'Dragonfly','dragonfly',0),(10,'Rabbit','rabbit',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','mxchase'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers',''),(15,1,'show_welcome_panel','1'),(16,1,'session_tokens','a:1:{s:64:\"5f0a9b6641972079571824e1a41c85e40d805fba05e62115494e046cf86da88d\";a:4:{s:10:\"expiration\";i:1581490800;s:2:\"ip\";s:12:\"38.91.106.40\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/79.0.3945.130 Safari/537.36\";s:5:\"login\";i:1581318000;}}'),(17,1,'wp_dashboard_quick_press_last_post_id','5'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:11:\"73.74.159.0\";}'),(19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}'),(21,1,'nav_menu_recently_edited','2'),(22,1,'wp_user-settings','libraryContent=browse&posts_list_mode=list'),(23,1,'wp_user-settings-time','1577297967'),(24,1,'wp_media_library_mode','list'),(25,1,'closedpostboxes_page','a:0:{}'),(26,1,'metaboxhidden_page','a:5:{i:0;s:12:\"revisionsdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),(27,2,'nickname','userIT320'),(28,2,'first_name',''),(29,2,'last_name',''),(30,2,'description',''),(31,2,'rich_editing','true'),(32,2,'syntax_highlighting','true'),(33,2,'comment_shortcuts','false'),(34,2,'admin_color','fresh'),(35,2,'use_ssl','0'),(36,2,'show_admin_bar_front','true'),(37,2,'locale',''),(38,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(39,2,'wp_user_level','10'),(40,2,'dismissed_wp_pointers','');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'student','$P$B2fC7lAiombTXEgFfRi7Rz965NyGX2.','student','admin@ietutorial5ca-ieaso785287.codeanyapp.com','','2019-12-22 17:51:21','',0,'student'),(2,'userIT320','$P$BKkOjAftmDnp27zmUXetWo.yRQk30E1','userit320','m@x.com','','2020-02-10 07:01:13','',0,'userIT320');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza`
--

DROP TABLE IF EXISTS `wp_wpgmza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `address` varchar(700) NOT NULL,
  `description` mediumtext NOT NULL,
  `pic` varchar(700) NOT NULL,
  `link` varchar(2083) NOT NULL,
  `icon` varchar(700) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `lng` varchar(100) NOT NULL,
  `anim` varchar(3) NOT NULL,
  `title` varchar(700) NOT NULL,
  `infoopen` varchar(3) NOT NULL,
  `category` varchar(500) NOT NULL,
  `approved` tinyint(1) DEFAULT '1',
  `retina` tinyint(1) DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `did` varchar(500) NOT NULL,
  `sticky` tinyint(1) DEFAULT '0',
  `other_data` longtext NOT NULL,
  `latlng` point DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza`
--

LOCK TABLES `wp_wpgmza` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza` DISABLE KEYS */;
INSERT INTO `wp_wpgmza` VALUES (1,1,'California','','','','','36.778261','-119.4179323999','0','','','',1,0,0,'',0,'',_binary '\0\0\0\0\0\0\0J`sžcB@˜`‰g¿\Ú]À');
/*!40000 ALTER TABLE `wp_wpgmza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_circles`
--

DROP TABLE IF EXISTS `wp_wpgmza_circles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_circles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text,
  `center` point DEFAULT NULL,
  `radius` float DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_circles`
--

LOCK TABLES `wp_wpgmza_circles` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_circles` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_circles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_maps`
--

DROP TABLE IF EXISTS `wp_wpgmza_maps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_maps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_title` varchar(256) NOT NULL,
  `map_width` varchar(6) NOT NULL,
  `map_height` varchar(6) NOT NULL,
  `map_start_lat` varchar(700) NOT NULL,
  `map_start_lng` varchar(700) NOT NULL,
  `map_start_location` varchar(700) NOT NULL,
  `map_start_zoom` int(10) NOT NULL,
  `default_marker` varchar(700) NOT NULL,
  `type` int(10) NOT NULL,
  `alignment` int(10) NOT NULL,
  `directions_enabled` int(10) NOT NULL,
  `styling_enabled` int(10) NOT NULL,
  `styling_json` mediumtext NOT NULL,
  `active` int(1) NOT NULL,
  `kml` varchar(700) NOT NULL,
  `bicycle` int(10) NOT NULL,
  `traffic` int(10) NOT NULL,
  `dbox` int(10) NOT NULL,
  `dbox_width` varchar(10) NOT NULL,
  `listmarkers` int(10) NOT NULL,
  `listmarkers_advanced` int(10) NOT NULL,
  `filterbycat` tinyint(1) NOT NULL,
  `ugm_enabled` int(10) NOT NULL,
  `ugm_category_enabled` tinyint(1) NOT NULL,
  `fusion` varchar(100) NOT NULL,
  `map_width_type` varchar(3) NOT NULL,
  `map_height_type` varchar(3) NOT NULL,
  `mass_marker_support` int(10) NOT NULL,
  `ugm_access` int(10) NOT NULL,
  `order_markers_by` int(10) NOT NULL,
  `order_markers_choice` int(10) NOT NULL,
  `show_user_location` int(3) NOT NULL,
  `default_to` varchar(700) NOT NULL,
  `other_settings` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_maps`
--

LOCK TABLES `wp_wpgmza_maps` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_maps` DISABLE KEYS */;
INSERT INTO `wp_wpgmza_maps` VALUES (1,'My first map','100','400','45.950464398418106','-109.81550500000003','45.950464398418106,-109.81550500000003',2,'0',1,4,1,0,'',0,'',2,2,1,'100',0,0,0,0,0,'','%','px',1,0,1,2,0,'','a:2:{s:19:\"store_locator_style\";s:6:\"modern\";s:33:\"wpgmza_store_locator_radius_style\";s:6:\"modern\";}');
/*!40000 ALTER TABLE `wp_wpgmza_maps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_polygon`
--

DROP TABLE IF EXISTS `wp_wpgmza_polygon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_polygon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `description` text NOT NULL,
  `innerpolydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `lineopacity` varchar(7) NOT NULL,
  `fillcolor` varchar(7) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `title` varchar(250) NOT NULL,
  `link` varchar(700) NOT NULL,
  `ohfillcolor` varchar(7) NOT NULL,
  `ohlinecolor` varchar(7) NOT NULL,
  `ohopacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_polygon`
--

LOCK TABLES `wp_wpgmza_polygon` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_polygon` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_polygon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_polylines`
--

DROP TABLE IF EXISTS `wp_wpgmza_polylines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_polylines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `polydata` longtext NOT NULL,
  `linecolor` varchar(7) NOT NULL,
  `linethickness` varchar(3) NOT NULL,
  `opacity` varchar(3) NOT NULL,
  `polyname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_polylines`
--

LOCK TABLES `wp_wpgmza_polylines` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_polylines` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_polylines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpgmza_rectangles`
--

DROP TABLE IF EXISTS `wp_wpgmza_rectangles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_wpgmza_rectangles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `map_id` int(11) NOT NULL,
  `name` text,
  `cornerA` point DEFAULT NULL,
  `cornerB` point DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  `opacity` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpgmza_rectangles`
--

LOCK TABLES `wp_wpgmza_rectangles` WRITE;
/*!40000 ALTER TABLE `wp_wpgmza_rectangles` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpgmza_rectangles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-10  2:16:46
